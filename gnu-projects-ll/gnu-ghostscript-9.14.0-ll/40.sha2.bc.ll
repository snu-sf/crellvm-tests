; ModuleID = './sha2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._SHA256_CTX = type { [8 x i32], i64, [64 x i8] }
%struct._SHA512_CTX = type { [8 x i64], [2 x i64], [128 x i8] }

@sha256_initial_hash_value = internal constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16
@K256 = internal constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16
@sha2_hex_digits = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), align 8
@sha512_initial_hash_value = internal constant [8 x i64] [i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935, i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809], align 16
@K512 = internal constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 16
@sha384_initial_hash_value = internal constant [8 x i64] [i64 -3766243637369397544, i64 7105036623409894663, i64 -7973340178411365097, i64 1526699215303891257, i64 7436329637833083697, i64 -8163818279084223215, i64 -2662702644619276377, i64 5167115440072839076], align 16
@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: nounwind uwtable
define void @pSHA256_Init(%struct._SHA256_CTX* %context) #0 {
entry:
  %context.addr = alloca %struct._SHA256_CTX*, align 8
  store %struct._SHA256_CTX* %context, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %0 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._SHA256_CTX* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %state, i32 0, i32 0
  %2 = bitcast i32* %arraydecay to i8*
  %call = call i8* @memcpy(i8* %2, i8* bitcast ([8 x i32]* @sha256_initial_hash_value to i8*), i64 32) #3
  %3 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %3, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i32 0, i32 0
  %call2 = call i8* @memset(i8* %arraydecay1, i32 0, i64 64) #3
  %4 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %bitcount = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %4, i32 0, i32 1
  store i64 0, i64* %bitcount, align 8, !tbaa !5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define void @pSHA256_Transform(%struct._SHA256_CTX* %context, i32* %data) #0 {
entry:
  %context.addr = alloca %struct._SHA256_CTX*, align 8
  %data.addr = alloca i32*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  %s0 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %T1 = alloca i32, align 4
  %T2 = alloca i32, align 4
  %W256 = alloca i32*, align 8
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._SHA256_CTX* %context, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  store i32* %data, i32** %data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %s0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %s1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %T1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %T2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32** %W256 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %14, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i32 0, i32 0
  %15 = bitcast i8* %arraydecay to i32*
  store i32* %15, i32** %W256, align 8, !tbaa !1
  %16 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %16, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %state, i32 0, i64 0
  %17 = load i32, i32* %arrayidx, align 4, !tbaa !8
  store i32 %17, i32* %a, align 4, !tbaa !8
  %18 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state1 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %18, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %state1, i32 0, i64 1
  %19 = load i32, i32* %arrayidx2, align 4, !tbaa !8
  store i32 %19, i32* %b, align 4, !tbaa !8
  %20 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state3 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %20, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* %state3, i32 0, i64 2
  %21 = load i32, i32* %arrayidx4, align 4, !tbaa !8
  store i32 %21, i32* %c, align 4, !tbaa !8
  %22 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state5 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %22, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %state5, i32 0, i64 3
  %23 = load i32, i32* %arrayidx6, align 4, !tbaa !8
  store i32 %23, i32* %d, align 4, !tbaa !8
  %24 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state7 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %24, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %state7, i32 0, i64 4
  %25 = load i32, i32* %arrayidx8, align 4, !tbaa !8
  store i32 %25, i32* %e, align 4, !tbaa !8
  %26 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state9 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %26, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %state9, i32 0, i64 5
  %27 = load i32, i32* %arrayidx10, align 4, !tbaa !8
  store i32 %27, i32* %f, align 4, !tbaa !8
  %28 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state11 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %28, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* %state11, i32 0, i64 6
  %29 = load i32, i32* %arrayidx12, align 4, !tbaa !8
  store i32 %29, i32* %g, align 4, !tbaa !8
  %30 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state13 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %30, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %state13, i32 0, i64 7
  %31 = load i32, i32* %arrayidx14, align 4, !tbaa !8
  store i32 %31, i32* %h, align 4, !tbaa !8
  store i32 0, i32* %j, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %32 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load i32*, i32** %data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %incdec.ptr, i32** %data.addr, align 8, !tbaa !1
  %34 = load i32, i32* %33, align 4, !tbaa !8
  store i32 %34, i32* %tmp, align 4, !tbaa !8
  %35 = load i32, i32* %tmp, align 4, !tbaa !8
  %shr = lshr i32 %35, 16
  %36 = load i32, i32* %tmp, align 4, !tbaa !8
  %shl = shl i32 %36, 16
  %or = or i32 %shr, %shl
  store i32 %or, i32* %tmp, align 4, !tbaa !8
  %37 = load i32, i32* %tmp, align 4, !tbaa !8
  %conv = zext i32 %37 to i64
  %and = and i64 %conv, 4278255360
  %shr15 = lshr i64 %and, 8
  %38 = load i32, i32* %tmp, align 4, !tbaa !8
  %conv16 = zext i32 %38 to i64
  %and17 = and i64 %conv16, 16711935
  %shl18 = shl i64 %and17, 8
  %or19 = or i64 %shr15, %shl18
  %conv20 = trunc i64 %or19 to i32
  %39 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom = sext i32 %39 to i64
  %40 = load i32*, i32** %W256, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i32, i32* %40, i64 %idxprom
  store i32 %conv20, i32* %arrayidx21, align 4, !tbaa !8
  %41 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = load i32, i32* %h, align 4, !tbaa !8
  %43 = load i32, i32* %e, align 4, !tbaa !8
  %shr22 = lshr i32 %43, 6
  %44 = load i32, i32* %e, align 4, !tbaa !8
  %shl23 = shl i32 %44, 26
  %or24 = or i32 %shr22, %shl23
  %45 = load i32, i32* %e, align 4, !tbaa !8
  %shr25 = lshr i32 %45, 11
  %46 = load i32, i32* %e, align 4, !tbaa !8
  %shl26 = shl i32 %46, 21
  %or27 = or i32 %shr25, %shl26
  %xor = xor i32 %or24, %or27
  %47 = load i32, i32* %e, align 4, !tbaa !8
  %shr28 = lshr i32 %47, 25
  %48 = load i32, i32* %e, align 4, !tbaa !8
  %shl29 = shl i32 %48, 7
  %or30 = or i32 %shr28, %shl29
  %xor31 = xor i32 %xor, %or30
  %add = add i32 %42, %xor31
  %49 = load i32, i32* %e, align 4, !tbaa !8
  %50 = load i32, i32* %f, align 4, !tbaa !8
  %and32 = and i32 %49, %50
  %51 = load i32, i32* %e, align 4, !tbaa !8
  %neg = xor i32 %51, -1
  %52 = load i32, i32* %g, align 4, !tbaa !8
  %and33 = and i32 %neg, %52
  %xor34 = xor i32 %and32, %and33
  %add35 = add i32 %add, %xor34
  %53 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom36 = sext i32 %53 to i64
  %arrayidx37 = getelementptr inbounds [64 x i32], [64 x i32]* @K256, i32 0, i64 %idxprom36
  %54 = load i32, i32* %arrayidx37, align 4, !tbaa !8
  %add38 = add i32 %add35, %54
  %55 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom39 = sext i32 %55 to i64
  %56 = load i32*, i32** %W256, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i32, i32* %56, i64 %idxprom39
  %57 = load i32, i32* %arrayidx40, align 4, !tbaa !8
  %add41 = add i32 %add38, %57
  store i32 %add41, i32* %T1, align 4, !tbaa !8
  %58 = load i32, i32* %a, align 4, !tbaa !8
  %shr42 = lshr i32 %58, 2
  %59 = load i32, i32* %a, align 4, !tbaa !8
  %shl43 = shl i32 %59, 30
  %or44 = or i32 %shr42, %shl43
  %60 = load i32, i32* %a, align 4, !tbaa !8
  %shr45 = lshr i32 %60, 13
  %61 = load i32, i32* %a, align 4, !tbaa !8
  %shl46 = shl i32 %61, 19
  %or47 = or i32 %shr45, %shl46
  %xor48 = xor i32 %or44, %or47
  %62 = load i32, i32* %a, align 4, !tbaa !8
  %shr49 = lshr i32 %62, 22
  %63 = load i32, i32* %a, align 4, !tbaa !8
  %shl50 = shl i32 %63, 10
  %or51 = or i32 %shr49, %shl50
  %xor52 = xor i32 %xor48, %or51
  %64 = load i32, i32* %a, align 4, !tbaa !8
  %65 = load i32, i32* %b, align 4, !tbaa !8
  %and53 = and i32 %64, %65
  %66 = load i32, i32* %a, align 4, !tbaa !8
  %67 = load i32, i32* %c, align 4, !tbaa !8
  %and54 = and i32 %66, %67
  %xor55 = xor i32 %and53, %and54
  %68 = load i32, i32* %b, align 4, !tbaa !8
  %69 = load i32, i32* %c, align 4, !tbaa !8
  %and56 = and i32 %68, %69
  %xor57 = xor i32 %xor55, %and56
  %add58 = add i32 %xor52, %xor57
  store i32 %add58, i32* %T2, align 4, !tbaa !8
  %70 = load i32, i32* %g, align 4, !tbaa !8
  store i32 %70, i32* %h, align 4, !tbaa !8
  %71 = load i32, i32* %f, align 4, !tbaa !8
  store i32 %71, i32* %g, align 4, !tbaa !8
  %72 = load i32, i32* %e, align 4, !tbaa !8
  store i32 %72, i32* %f, align 4, !tbaa !8
  %73 = load i32, i32* %d, align 4, !tbaa !8
  %74 = load i32, i32* %T1, align 4, !tbaa !8
  %add59 = add i32 %73, %74
  store i32 %add59, i32* %e, align 4, !tbaa !8
  %75 = load i32, i32* %c, align 4, !tbaa !8
  store i32 %75, i32* %d, align 4, !tbaa !8
  %76 = load i32, i32* %b, align 4, !tbaa !8
  store i32 %76, i32* %c, align 4, !tbaa !8
  %77 = load i32, i32* %a, align 4, !tbaa !8
  store i32 %77, i32* %b, align 4, !tbaa !8
  %78 = load i32, i32* %T1, align 4, !tbaa !8
  %79 = load i32, i32* %T2, align 4, !tbaa !8
  %add60 = add i32 %78, %79
  store i32 %add60, i32* %a, align 4, !tbaa !8
  %80 = load i32, i32* %j, align 4, !tbaa !8
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %j, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %81 = load i32, i32* %j, align 4, !tbaa !8
  %cmp = icmp slt i32 %81, 16
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.62

do.body.62:                                       ; preds = %do.cond.140, %do.end
  %82 = load i32, i32* %j, align 4, !tbaa !8
  %add63 = add nsw i32 %82, 1
  %and64 = and i32 %add63, 15
  %idxprom65 = sext i32 %and64 to i64
  %83 = load i32*, i32** %W256, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i32, i32* %83, i64 %idxprom65
  %84 = load i32, i32* %arrayidx66, align 4, !tbaa !8
  store i32 %84, i32* %s0, align 4, !tbaa !8
  %85 = load i32, i32* %s0, align 4, !tbaa !8
  %shr67 = lshr i32 %85, 7
  %86 = load i32, i32* %s0, align 4, !tbaa !8
  %shl68 = shl i32 %86, 25
  %or69 = or i32 %shr67, %shl68
  %87 = load i32, i32* %s0, align 4, !tbaa !8
  %shr70 = lshr i32 %87, 18
  %88 = load i32, i32* %s0, align 4, !tbaa !8
  %shl71 = shl i32 %88, 14
  %or72 = or i32 %shr70, %shl71
  %xor73 = xor i32 %or69, %or72
  %89 = load i32, i32* %s0, align 4, !tbaa !8
  %shr74 = lshr i32 %89, 3
  %xor75 = xor i32 %xor73, %shr74
  store i32 %xor75, i32* %s0, align 4, !tbaa !8
  %90 = load i32, i32* %j, align 4, !tbaa !8
  %add76 = add nsw i32 %90, 14
  %and77 = and i32 %add76, 15
  %idxprom78 = sext i32 %and77 to i64
  %91 = load i32*, i32** %W256, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i32, i32* %91, i64 %idxprom78
  %92 = load i32, i32* %arrayidx79, align 4, !tbaa !8
  store i32 %92, i32* %s1, align 4, !tbaa !8
  %93 = load i32, i32* %s1, align 4, !tbaa !8
  %shr80 = lshr i32 %93, 17
  %94 = load i32, i32* %s1, align 4, !tbaa !8
  %shl81 = shl i32 %94, 15
  %or82 = or i32 %shr80, %shl81
  %95 = load i32, i32* %s1, align 4, !tbaa !8
  %shr83 = lshr i32 %95, 19
  %96 = load i32, i32* %s1, align 4, !tbaa !8
  %shl84 = shl i32 %96, 13
  %or85 = or i32 %shr83, %shl84
  %xor86 = xor i32 %or82, %or85
  %97 = load i32, i32* %s1, align 4, !tbaa !8
  %shr87 = lshr i32 %97, 10
  %xor88 = xor i32 %xor86, %shr87
  store i32 %xor88, i32* %s1, align 4, !tbaa !8
  %98 = load i32, i32* %h, align 4, !tbaa !8
  %99 = load i32, i32* %e, align 4, !tbaa !8
  %shr89 = lshr i32 %99, 6
  %100 = load i32, i32* %e, align 4, !tbaa !8
  %shl90 = shl i32 %100, 26
  %or91 = or i32 %shr89, %shl90
  %101 = load i32, i32* %e, align 4, !tbaa !8
  %shr92 = lshr i32 %101, 11
  %102 = load i32, i32* %e, align 4, !tbaa !8
  %shl93 = shl i32 %102, 21
  %or94 = or i32 %shr92, %shl93
  %xor95 = xor i32 %or91, %or94
  %103 = load i32, i32* %e, align 4, !tbaa !8
  %shr96 = lshr i32 %103, 25
  %104 = load i32, i32* %e, align 4, !tbaa !8
  %shl97 = shl i32 %104, 7
  %or98 = or i32 %shr96, %shl97
  %xor99 = xor i32 %xor95, %or98
  %add100 = add i32 %98, %xor99
  %105 = load i32, i32* %e, align 4, !tbaa !8
  %106 = load i32, i32* %f, align 4, !tbaa !8
  %and101 = and i32 %105, %106
  %107 = load i32, i32* %e, align 4, !tbaa !8
  %neg102 = xor i32 %107, -1
  %108 = load i32, i32* %g, align 4, !tbaa !8
  %and103 = and i32 %neg102, %108
  %xor104 = xor i32 %and101, %and103
  %add105 = add i32 %add100, %xor104
  %109 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom106 = sext i32 %109 to i64
  %arrayidx107 = getelementptr inbounds [64 x i32], [64 x i32]* @K256, i32 0, i64 %idxprom106
  %110 = load i32, i32* %arrayidx107, align 4, !tbaa !8
  %add108 = add i32 %add105, %110
  %111 = load i32, i32* %s1, align 4, !tbaa !8
  %112 = load i32, i32* %j, align 4, !tbaa !8
  %add109 = add nsw i32 %112, 9
  %and110 = and i32 %add109, 15
  %idxprom111 = sext i32 %and110 to i64
  %113 = load i32*, i32** %W256, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i32, i32* %113, i64 %idxprom111
  %114 = load i32, i32* %arrayidx112, align 4, !tbaa !8
  %add113 = add i32 %111, %114
  %115 = load i32, i32* %s0, align 4, !tbaa !8
  %add114 = add i32 %add113, %115
  %116 = load i32, i32* %j, align 4, !tbaa !8
  %and115 = and i32 %116, 15
  %idxprom116 = sext i32 %and115 to i64
  %117 = load i32*, i32** %W256, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i32, i32* %117, i64 %idxprom116
  %118 = load i32, i32* %arrayidx117, align 4, !tbaa !8
  %add118 = add i32 %118, %add114
  store i32 %add118, i32* %arrayidx117, align 4, !tbaa !8
  %add119 = add i32 %add108, %add118
  store i32 %add119, i32* %T1, align 4, !tbaa !8
  %119 = load i32, i32* %a, align 4, !tbaa !8
  %shr120 = lshr i32 %119, 2
  %120 = load i32, i32* %a, align 4, !tbaa !8
  %shl121 = shl i32 %120, 30
  %or122 = or i32 %shr120, %shl121
  %121 = load i32, i32* %a, align 4, !tbaa !8
  %shr123 = lshr i32 %121, 13
  %122 = load i32, i32* %a, align 4, !tbaa !8
  %shl124 = shl i32 %122, 19
  %or125 = or i32 %shr123, %shl124
  %xor126 = xor i32 %or122, %or125
  %123 = load i32, i32* %a, align 4, !tbaa !8
  %shr127 = lshr i32 %123, 22
  %124 = load i32, i32* %a, align 4, !tbaa !8
  %shl128 = shl i32 %124, 10
  %or129 = or i32 %shr127, %shl128
  %xor130 = xor i32 %xor126, %or129
  %125 = load i32, i32* %a, align 4, !tbaa !8
  %126 = load i32, i32* %b, align 4, !tbaa !8
  %and131 = and i32 %125, %126
  %127 = load i32, i32* %a, align 4, !tbaa !8
  %128 = load i32, i32* %c, align 4, !tbaa !8
  %and132 = and i32 %127, %128
  %xor133 = xor i32 %and131, %and132
  %129 = load i32, i32* %b, align 4, !tbaa !8
  %130 = load i32, i32* %c, align 4, !tbaa !8
  %and134 = and i32 %129, %130
  %xor135 = xor i32 %xor133, %and134
  %add136 = add i32 %xor130, %xor135
  store i32 %add136, i32* %T2, align 4, !tbaa !8
  %131 = load i32, i32* %g, align 4, !tbaa !8
  store i32 %131, i32* %h, align 4, !tbaa !8
  %132 = load i32, i32* %f, align 4, !tbaa !8
  store i32 %132, i32* %g, align 4, !tbaa !8
  %133 = load i32, i32* %e, align 4, !tbaa !8
  store i32 %133, i32* %f, align 4, !tbaa !8
  %134 = load i32, i32* %d, align 4, !tbaa !8
  %135 = load i32, i32* %T1, align 4, !tbaa !8
  %add137 = add i32 %134, %135
  store i32 %add137, i32* %e, align 4, !tbaa !8
  %136 = load i32, i32* %c, align 4, !tbaa !8
  store i32 %136, i32* %d, align 4, !tbaa !8
  %137 = load i32, i32* %b, align 4, !tbaa !8
  store i32 %137, i32* %c, align 4, !tbaa !8
  %138 = load i32, i32* %a, align 4, !tbaa !8
  store i32 %138, i32* %b, align 4, !tbaa !8
  %139 = load i32, i32* %T1, align 4, !tbaa !8
  %140 = load i32, i32* %T2, align 4, !tbaa !8
  %add138 = add i32 %139, %140
  store i32 %add138, i32* %a, align 4, !tbaa !8
  %141 = load i32, i32* %j, align 4, !tbaa !8
  %inc139 = add nsw i32 %141, 1
  store i32 %inc139, i32* %j, align 4, !tbaa !8
  br label %do.cond.140

do.cond.140:                                      ; preds = %do.body.62
  %142 = load i32, i32* %j, align 4, !tbaa !8
  %cmp141 = icmp slt i32 %142, 64
  br i1 %cmp141, label %do.body.62, label %do.end.143

do.end.143:                                       ; preds = %do.cond.140
  %143 = load i32, i32* %a, align 4, !tbaa !8
  %144 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state144 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %144, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [8 x i32], [8 x i32]* %state144, i32 0, i64 0
  %145 = load i32, i32* %arrayidx145, align 4, !tbaa !8
  %add146 = add i32 %145, %143
  store i32 %add146, i32* %arrayidx145, align 4, !tbaa !8
  %146 = load i32, i32* %b, align 4, !tbaa !8
  %147 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state147 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %147, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [8 x i32], [8 x i32]* %state147, i32 0, i64 1
  %148 = load i32, i32* %arrayidx148, align 4, !tbaa !8
  %add149 = add i32 %148, %146
  store i32 %add149, i32* %arrayidx148, align 4, !tbaa !8
  %149 = load i32, i32* %c, align 4, !tbaa !8
  %150 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state150 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %150, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [8 x i32], [8 x i32]* %state150, i32 0, i64 2
  %151 = load i32, i32* %arrayidx151, align 4, !tbaa !8
  %add152 = add i32 %151, %149
  store i32 %add152, i32* %arrayidx151, align 4, !tbaa !8
  %152 = load i32, i32* %d, align 4, !tbaa !8
  %153 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state153 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %153, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [8 x i32], [8 x i32]* %state153, i32 0, i64 3
  %154 = load i32, i32* %arrayidx154, align 4, !tbaa !8
  %add155 = add i32 %154, %152
  store i32 %add155, i32* %arrayidx154, align 4, !tbaa !8
  %155 = load i32, i32* %e, align 4, !tbaa !8
  %156 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state156 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %156, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [8 x i32], [8 x i32]* %state156, i32 0, i64 4
  %157 = load i32, i32* %arrayidx157, align 4, !tbaa !8
  %add158 = add i32 %157, %155
  store i32 %add158, i32* %arrayidx157, align 4, !tbaa !8
  %158 = load i32, i32* %f, align 4, !tbaa !8
  %159 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state159 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %159, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [8 x i32], [8 x i32]* %state159, i32 0, i64 5
  %160 = load i32, i32* %arrayidx160, align 4, !tbaa !8
  %add161 = add i32 %160, %158
  store i32 %add161, i32* %arrayidx160, align 4, !tbaa !8
  %161 = load i32, i32* %g, align 4, !tbaa !8
  %162 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state162 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %162, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [8 x i32], [8 x i32]* %state162, i32 0, i64 6
  %163 = load i32, i32* %arrayidx163, align 4, !tbaa !8
  %add164 = add i32 %163, %161
  store i32 %add164, i32* %arrayidx163, align 4, !tbaa !8
  %164 = load i32, i32* %h, align 4, !tbaa !8
  %165 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state165 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %165, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [8 x i32], [8 x i32]* %state165, i32 0, i64 7
  %166 = load i32, i32* %arrayidx166, align 4, !tbaa !8
  %add167 = add i32 %166, %164
  store i32 %add167, i32* %arrayidx166, align 4, !tbaa !8
  store i32 0, i32* %T2, align 4, !tbaa !8
  store i32 0, i32* %T1, align 4, !tbaa !8
  store i32 0, i32* %h, align 4, !tbaa !8
  store i32 0, i32* %g, align 4, !tbaa !8
  store i32 0, i32* %f, align 4, !tbaa !8
  store i32 0, i32* %e, align 4, !tbaa !8
  store i32 0, i32* %d, align 4, !tbaa !8
  store i32 0, i32* %c, align 4, !tbaa !8
  store i32 0, i32* %b, align 4, !tbaa !8
  store i32 0, i32* %a, align 4, !tbaa !8
  %167 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #2
  %168 = bitcast i32** %W256 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #2
  %169 = bitcast i32* %T2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast i32* %T1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #2
  %171 = bitcast i32* %s1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #2
  %172 = bitcast i32* %s0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  %173 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %174 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  %175 = bitcast i32* %f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  %176 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #2
  %178 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #2
  %179 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #2
  %180 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @pSHA256_Update(%struct._SHA256_CTX* %context, i8* %data, i64 %len) #0 {
entry:
  %context.addr = alloca %struct._SHA256_CTX*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %freespace = alloca i32, align 4
  %usedspace = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._SHA256_CTX* %context, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %len, i64* %len.addr, align 8, !tbaa !10
  %0 = bitcast i32* %freespace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %usedspace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i64, i64* %len.addr, align 8, !tbaa !10
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %bitcount = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %3, i32 0, i32 1
  %4 = load i64, i64* %bitcount, align 8, !tbaa !5
  %shr = lshr i64 %4, 3
  %rem = urem i64 %shr, 64
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %usedspace, align 4, !tbaa !8
  %5 = load i32, i32* %usedspace, align 4, !tbaa !8
  %cmp1 = icmp ugt i32 %5, 0
  br i1 %cmp1, label %if.then.3, label %if.end.22

if.then.3:                                        ; preds = %if.end
  %6 = load i32, i32* %usedspace, align 4, !tbaa !8
  %sub = sub i32 64, %6
  store i32 %sub, i32* %freespace, align 4, !tbaa !8
  %7 = load i64, i64* %len.addr, align 8, !tbaa !10
  %8 = load i32, i32* %freespace, align 4, !tbaa !8
  %conv4 = zext i32 %8 to i64
  %cmp5 = icmp uge i64 %7, %conv4
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.3
  %9 = load i32, i32* %usedspace, align 4, !tbaa !8
  %idxprom = zext i32 %9 to i64
  %10 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i32 0, i64 %idxprom
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %freespace, align 4, !tbaa !8
  %conv8 = zext i32 %12 to i64
  %call = call i8* @memcpy(i8* %arrayidx, i8* %11, i64 %conv8) #3
  %13 = load i32, i32* %freespace, align 4, !tbaa !8
  %shl = shl i32 %13, 3
  %conv9 = zext i32 %shl to i64
  %14 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %bitcount10 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %14, i32 0, i32 1
  %15 = load i64, i64* %bitcount10, align 8, !tbaa !5
  %add = add i64 %15, %conv9
  store i64 %add, i64* %bitcount10, align 8, !tbaa !5
  %16 = load i32, i32* %freespace, align 4, !tbaa !8
  %conv11 = zext i32 %16 to i64
  %17 = load i64, i64* %len.addr, align 8, !tbaa !10
  %sub12 = sub i64 %17, %conv11
  store i64 %sub12, i64* %len.addr, align 8, !tbaa !10
  %18 = load i32, i32* %freespace, align 4, !tbaa !8
  %19 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  %20 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %21 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer13 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %21, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buffer13, i32 0, i32 0
  %22 = bitcast i8* %arraydecay to i32*
  call void @pSHA256_Transform(%struct._SHA256_CTX* %20, i32* %22) #4
  br label %if.end.21

if.else:                                          ; preds = %if.then.3
  %23 = load i32, i32* %usedspace, align 4, !tbaa !8
  %idxprom14 = zext i32 %23 to i64
  %24 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer15 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %24, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer15, i32 0, i64 %idxprom14
  %25 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %26 = load i64, i64* %len.addr, align 8, !tbaa !10
  %call17 = call i8* @memcpy(i8* %arrayidx16, i8* %25, i64 %26) #3
  %27 = load i64, i64* %len.addr, align 8, !tbaa !10
  %shl18 = shl i64 %27, 3
  %28 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %bitcount19 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %28, i32 0, i32 1
  %29 = load i64, i64* %bitcount19, align 8, !tbaa !5
  %add20 = add i64 %29, %shl18
  store i64 %add20, i64* %bitcount19, align 8, !tbaa !5
  store i32 0, i32* %freespace, align 4, !tbaa !8
  store i32 0, i32* %usedspace, align 4, !tbaa !8
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.7
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.22
  %30 = load i64, i64* %len.addr, align 8, !tbaa !10
  %cmp23 = icmp uge i64 %30, 64
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %33 = bitcast i8* %32 to i32*
  call void @pSHA256_Transform(%struct._SHA256_CTX* %31, i32* %33) #4
  %34 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %bitcount25 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %34, i32 0, i32 1
  %35 = load i64, i64* %bitcount25, align 8, !tbaa !5
  %add26 = add i64 %35, 512
  store i64 %add26, i64* %bitcount25, align 8, !tbaa !5
  %36 = load i64, i64* %len.addr, align 8, !tbaa !10
  %sub27 = sub i64 %36, 64
  store i64 %sub27, i64* %len.addr, align 8, !tbaa !10
  %37 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds i8, i8* %37, i64 64
  store i8* %add.ptr28, i8** %data.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load i64, i64* %len.addr, align 8, !tbaa !10
  %cmp29 = icmp ugt i64 %38, 0
  br i1 %cmp29, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %while.end
  %39 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer32 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %39, i32 0, i32 2
  %arraydecay33 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer32, i32 0, i32 0
  %40 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %41 = load i64, i64* %len.addr, align 8, !tbaa !10
  %call34 = call i8* @memcpy(i8* %arraydecay33, i8* %40, i64 %41) #3
  %42 = load i64, i64* %len.addr, align 8, !tbaa !10
  %shl35 = shl i64 %42, 3
  %43 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %bitcount36 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %43, i32 0, i32 1
  %44 = load i64, i64* %bitcount36, align 8, !tbaa !5
  %add37 = add i64 %44, %shl35
  store i64 %add37, i64* %bitcount36, align 8, !tbaa !5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %while.end
  store i32 0, i32* %freespace, align 4, !tbaa !8
  store i32 0, i32* %usedspace, align 4, !tbaa !8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.else, %if.then
  %45 = bitcast i32* %usedspace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %freespace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @pSHA256_Final(i8* %digest, %struct._SHA256_CTX* %context) #0 {
entry:
  %digest.addr = alloca i8*, align 8
  %context.addr = alloca %struct._SHA256_CTX*, align 8
  %d = alloca i32*, align 8
  %usedspace = alloca i32, align 4
  %tmp = alloca i64, align 8
  %j = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  store i8* %digest, i8** %digest.addr, align 8, !tbaa !1
  store %struct._SHA256_CTX* %context, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %0 = bitcast i32** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i32*
  store i32* %2, i32** %d, align 8, !tbaa !1
  %3 = bitcast i32* %usedspace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then, label %if.end.74

if.then:                                          ; preds = %entry
  %5 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %bitcount = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %5, i32 0, i32 1
  %6 = load i64, i64* %bitcount, align 8, !tbaa !5
  %shr = lshr i64 %6, 3
  %rem = urem i64 %shr, 64
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %usedspace, align 4, !tbaa !8
  %7 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %bitcount1 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %8, i32 0, i32 1
  %9 = load i64, i64* %bitcount1, align 8, !tbaa !5
  store i64 %9, i64* %tmp, align 8, !tbaa !10
  %10 = load i64, i64* %tmp, align 8, !tbaa !10
  %shr2 = lshr i64 %10, 32
  %11 = load i64, i64* %tmp, align 8, !tbaa !10
  %shl = shl i64 %11, 32
  %or = or i64 %shr2, %shl
  store i64 %or, i64* %tmp, align 8, !tbaa !10
  %12 = load i64, i64* %tmp, align 8, !tbaa !10
  %and = and i64 %12, -71777214294589696
  %shr3 = lshr i64 %and, 8
  %13 = load i64, i64* %tmp, align 8, !tbaa !10
  %and4 = and i64 %13, 71777214294589695
  %shl5 = shl i64 %and4, 8
  %or6 = or i64 %shr3, %shl5
  store i64 %or6, i64* %tmp, align 8, !tbaa !10
  %14 = load i64, i64* %tmp, align 8, !tbaa !10
  %and7 = and i64 %14, -281470681808896
  %shr8 = lshr i64 %and7, 16
  %15 = load i64, i64* %tmp, align 8, !tbaa !10
  %and9 = and i64 %15, 281470681808895
  %shl10 = shl i64 %and9, 16
  %or11 = or i64 %shr8, %shl10
  %16 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %bitcount12 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %16, i32 0, i32 1
  store i64 %or11, i64* %bitcount12, align 8, !tbaa !5
  %17 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %usedspace, align 4, !tbaa !8
  %cmp13 = icmp ugt i32 %18, 0
  br i1 %cmp13, label %if.then.15, label %if.else.37

if.then.15:                                       ; preds = %if.then
  %19 = load i32, i32* %usedspace, align 4, !tbaa !8
  %inc = add i32 %19, 1
  store i32 %inc, i32* %usedspace, align 4, !tbaa !8
  %idxprom = zext i32 %19 to i64
  %20 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %20, i32 0, i32 2
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 -128, i8* %arrayidx, align 1, !tbaa !11
  %21 = load i32, i32* %usedspace, align 4, !tbaa !8
  %cmp16 = icmp ule i32 %21, 56
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.15
  %22 = load i32, i32* %usedspace, align 4, !tbaa !8
  %idxprom19 = zext i32 %22 to i64
  %23 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer20 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %23, i32 0, i32 2
  %arrayidx21 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer20, i32 0, i64 %idxprom19
  %24 = load i32, i32* %usedspace, align 4, !tbaa !8
  %sub = sub i32 56, %24
  %conv22 = zext i32 %sub to i64
  %call = call i8* @memset(i8* %arrayidx21, i32 0, i64 %conv22) #3
  br label %if.end.36

if.else:                                          ; preds = %if.then.15
  %25 = load i32, i32* %usedspace, align 4, !tbaa !8
  %cmp23 = icmp ult i32 %25, 64
  br i1 %cmp23, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.else
  %26 = load i32, i32* %usedspace, align 4, !tbaa !8
  %idxprom26 = zext i32 %26 to i64
  %27 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer27 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %27, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer27, i32 0, i64 %idxprom26
  %28 = load i32, i32* %usedspace, align 4, !tbaa !8
  %sub29 = sub i32 64, %28
  %conv30 = zext i32 %sub29 to i64
  %call31 = call i8* @memset(i8* %arrayidx28, i32 0, i64 %conv30) #3
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.else
  %29 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %30 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer32 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %30, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buffer32, i32 0, i32 0
  %31 = bitcast i8* %arraydecay to i32*
  call void @pSHA256_Transform(%struct._SHA256_CTX* %29, i32* %31) #4
  %32 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer33 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %32, i32 0, i32 2
  %arraydecay34 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer33, i32 0, i32 0
  %call35 = call i8* @memset(i8* %arraydecay34, i32 0, i64 56) #3
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %if.then.18
  br label %if.end.43

if.else.37:                                       ; preds = %if.then
  %33 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer38 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %33, i32 0, i32 2
  %arraydecay39 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer38, i32 0, i32 0
  %call40 = call i8* @memset(i8* %arraydecay39, i32 0, i64 56) #3
  %34 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer41 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %34, i32 0, i32 2
  %arraydecay42 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer41, i32 0, i32 0
  store i8 -128, i8* %arraydecay42, align 1, !tbaa !11
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.37, %if.end.36
  %35 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %bitcount44 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %35, i32 0, i32 1
  %36 = load i64, i64* %bitcount44, align 8, !tbaa !5
  %37 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer45 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %37, i32 0, i32 2
  %arrayidx46 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer45, i32 0, i64 56
  %38 = bitcast i8* %arrayidx46 to i64*
  store i64 %36, i64* %38, align 8, !tbaa !10
  %39 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %40 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %buffer47 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %40, i32 0, i32 2
  %arraydecay48 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer47, i32 0, i32 0
  %41 = bitcast i8* %arraydecay48 to i32*
  call void @pSHA256_Transform(%struct._SHA256_CTX* %39, i32* %41) #4
  %42 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  store i32 0, i32* %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.43
  %43 = load i32, i32* %j, align 4, !tbaa !8
  %cmp50 = icmp slt i32 %43, 8
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = bitcast i32* %tmp53 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  %45 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom54 = sext i32 %45 to i64
  %46 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %46, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [8 x i32], [8 x i32]* %state, i32 0, i64 %idxprom54
  %47 = load i32, i32* %arrayidx55, align 4, !tbaa !8
  store i32 %47, i32* %tmp53, align 4, !tbaa !8
  %48 = load i32, i32* %tmp53, align 4, !tbaa !8
  %shr56 = lshr i32 %48, 16
  %49 = load i32, i32* %tmp53, align 4, !tbaa !8
  %shl57 = shl i32 %49, 16
  %or58 = or i32 %shr56, %shl57
  store i32 %or58, i32* %tmp53, align 4, !tbaa !8
  %50 = load i32, i32* %tmp53, align 4, !tbaa !8
  %conv59 = zext i32 %50 to i64
  %and60 = and i64 %conv59, 4278255360
  %shr61 = lshr i64 %and60, 8
  %51 = load i32, i32* %tmp53, align 4, !tbaa !8
  %conv62 = zext i32 %51 to i64
  %and63 = and i64 %conv62, 16711935
  %shl64 = shl i64 %and63, 8
  %or65 = or i64 %shr61, %shl64
  %conv66 = trunc i64 %or65 to i32
  %52 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom67 = sext i32 %52 to i64
  %53 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state68 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %53, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [8 x i32], [8 x i32]* %state68, i32 0, i64 %idxprom67
  store i32 %conv66, i32* %arrayidx69, align 4, !tbaa !8
  %54 = bitcast i32* %tmp53 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom70 = sext i32 %55 to i64
  %56 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %state71 = getelementptr inbounds %struct._SHA256_CTX, %struct._SHA256_CTX* %56, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [8 x i32], [8 x i32]* %state71, i32 0, i64 %idxprom70
  %57 = load i32, i32* %arrayidx72, align 4, !tbaa !8
  %58 = load i32*, i32** %d, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %incdec.ptr, i32** %d, align 8, !tbaa !1
  store i32 %57, i32* %58, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i32, i32* %j, align 4, !tbaa !8
  %inc73 = add nsw i32 %59, 1
  store i32 %inc73, i32* %j, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  br label %if.end.74

if.end.74:                                        ; preds = %for.end, %entry
  %61 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %62 = bitcast %struct._SHA256_CTX* %61 to i8*
  %call75 = call i8* @memset(i8* %62, i32 0, i64 104) #3
  store i32 0, i32* %usedspace, align 4, !tbaa !8
  %63 = bitcast i32* %usedspace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @pSHA256_End(%struct._SHA256_CTX* %context, i8* %buffer) #0 {
entry:
  %context.addr = alloca %struct._SHA256_CTX*, align 8
  %buffer.addr = alloca i8*, align 8
  %digest = alloca [32 x i8], align 16
  %d = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._SHA256_CTX* %context, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  %0 = bitcast [32 x i8]* %digest to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #2
  %1 = bitcast i8** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %digest, i32 0, i32 0
  store i8* %arraydecay, i8** %d, align 8, !tbaa !1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %digest, i32 0, i32 0
  %4 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  call void @pSHA256_Final(i8* %arraydecay1, %struct._SHA256_CTX* %4) #4
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %5, 32
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %d, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !11
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 240
  %shr = ashr i32 %and, 4
  %idxprom = sext i32 %shr to i64
  %8 = load i8*, i8** @sha2_hex_digits, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %10 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %buffer.addr, align 8, !tbaa !1
  store i8 %9, i8* %10, align 1, !tbaa !11
  %11 = load i8*, i8** %d, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !11
  %conv3 = zext i8 %12 to i32
  %and4 = and i32 %conv3, 15
  %idxprom5 = sext i32 %and4 to i64
  %13 = load i8*, i8** @sha2_hex_digits, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 %idxprom5
  %14 = load i8, i8* %arrayidx6, align 1, !tbaa !11
  %15 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr7, i8** %buffer.addr, align 8, !tbaa !1
  store i8 %14, i8* %15, align 1, !tbaa !11
  %16 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr8, i8** %d, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8 0, i8* %18, align 1, !tbaa !11
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct._SHA256_CTX*, %struct._SHA256_CTX** %context.addr, align 8, !tbaa !1
  %20 = bitcast %struct._SHA256_CTX* %19 to i8*
  %call = call i8* @memset(i8* %20, i32 0, i64 104) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %arraydecay9 = getelementptr inbounds [32 x i8], [32 x i8]* %digest, i32 0, i32 0
  %call10 = call i8* @memset(i8* %arraydecay9, i32 0, i64 32) #3
  %21 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast i8** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast [32 x i8]* %digest to i8*
  call void @llvm.lifetime.end(i64 32, i8* %24) #2
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define i8* @pSHA256_Data(i8* %data, i64 %len, i8* %digest) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %digest.addr = alloca i8*, align 8
  %context = alloca %struct._SHA256_CTX, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %len, i64* %len.addr, align 8, !tbaa !10
  store i8* %digest, i8** %digest.addr, align 8, !tbaa !1
  %0 = bitcast %struct._SHA256_CTX* %context to i8*
  call void @llvm.lifetime.start(i64 104, i8* %0) #2
  call void @pSHA256_Init(%struct._SHA256_CTX* %context) #4
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i64, i64* %len.addr, align 8, !tbaa !10
  call void @pSHA256_Update(%struct._SHA256_CTX* %context, i8* %1, i64 %2) #4
  %3 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %call = call i8* @pSHA256_End(%struct._SHA256_CTX* %context, i8* %3) #4
  %4 = bitcast %struct._SHA256_CTX* %context to i8*
  call void @llvm.lifetime.end(i64 104, i8* %4) #2
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @pSHA512_Init(%struct._SHA512_CTX* %context) #0 {
entry:
  %context.addr = alloca %struct._SHA512_CTX*, align 8
  store %struct._SHA512_CTX* %context, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %0 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._SHA512_CTX* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %state, i32 0, i32 0
  %2 = bitcast i64* %arraydecay to i8*
  %call = call i8* @memcpy(i8* %2, i8* bitcast ([8 x i64]* @sha512_initial_hash_value to i8*), i64 64) #3
  %3 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %3, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i32 0, i32 0
  %call2 = call i8* @memset(i8* %arraydecay1, i32 0, i64 128) #3
  %4 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount, i32 0, i64 1
  store i64 0, i64* %arrayidx, align 8, !tbaa !10
  %5 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount3 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %5, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount3, i32 0, i64 0
  store i64 0, i64* %arrayidx4, align 8, !tbaa !10
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @pSHA512_Transform(%struct._SHA512_CTX* %context, i64* %data) #0 {
entry:
  %context.addr = alloca %struct._SHA512_CTX*, align 8
  %data.addr = alloca i64*, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %c = alloca i64, align 8
  %d = alloca i64, align 8
  %e = alloca i64, align 8
  %f = alloca i64, align 8
  %g = alloca i64, align 8
  %h = alloca i64, align 8
  %s0 = alloca i64, align 8
  %s1 = alloca i64, align 8
  %T1 = alloca i64, align 8
  %T2 = alloca i64, align 8
  %W512 = alloca i64*, align 8
  %j = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct._SHA512_CTX* %context, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  store i64* %data, i64** %data.addr, align 8, !tbaa !1
  %0 = bitcast i64* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i64* %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i64* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i64* %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i64* %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i64* %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i64* %g to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i64* %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i64* %s0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i64* %s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i64* %T1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i64* %T2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i64** %W512 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %13, i32 0, i32 2
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i32 0, i32 0
  %14 = bitcast i8* %arraydecay to i64*
  store i64* %14, i64** %W512, align 8, !tbaa !1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %16, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* %state, i32 0, i64 0
  %17 = load i64, i64* %arrayidx, align 8, !tbaa !10
  store i64 %17, i64* %a, align 8, !tbaa !10
  %18 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state1 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %18, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [8 x i64], [8 x i64]* %state1, i32 0, i64 1
  %19 = load i64, i64* %arrayidx2, align 8, !tbaa !10
  store i64 %19, i64* %b, align 8, !tbaa !10
  %20 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state3 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %20, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [8 x i64], [8 x i64]* %state3, i32 0, i64 2
  %21 = load i64, i64* %arrayidx4, align 8, !tbaa !10
  store i64 %21, i64* %c, align 8, !tbaa !10
  %22 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state5 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %22, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [8 x i64], [8 x i64]* %state5, i32 0, i64 3
  %23 = load i64, i64* %arrayidx6, align 8, !tbaa !10
  store i64 %23, i64* %d, align 8, !tbaa !10
  %24 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state7 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %24, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [8 x i64], [8 x i64]* %state7, i32 0, i64 4
  %25 = load i64, i64* %arrayidx8, align 8, !tbaa !10
  store i64 %25, i64* %e, align 8, !tbaa !10
  %26 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state9 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %26, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i64], [8 x i64]* %state9, i32 0, i64 5
  %27 = load i64, i64* %arrayidx10, align 8, !tbaa !10
  store i64 %27, i64* %f, align 8, !tbaa !10
  %28 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state11 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %28, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i64], [8 x i64]* %state11, i32 0, i64 6
  %29 = load i64, i64* %arrayidx12, align 8, !tbaa !10
  store i64 %29, i64* %g, align 8, !tbaa !10
  %30 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state13 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %30, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i64], [8 x i64]* %state13, i32 0, i64 7
  %31 = load i64, i64* %arrayidx14, align 8, !tbaa !10
  store i64 %31, i64* %h, align 8, !tbaa !10
  store i32 0, i32* %j, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %32 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = load i64*, i64** %data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %incdec.ptr, i64** %data.addr, align 8, !tbaa !1
  %34 = load i64, i64* %33, align 8, !tbaa !10
  store i64 %34, i64* %tmp, align 8, !tbaa !10
  %35 = load i64, i64* %tmp, align 8, !tbaa !10
  %shr = lshr i64 %35, 32
  %36 = load i64, i64* %tmp, align 8, !tbaa !10
  %shl = shl i64 %36, 32
  %or = or i64 %shr, %shl
  store i64 %or, i64* %tmp, align 8, !tbaa !10
  %37 = load i64, i64* %tmp, align 8, !tbaa !10
  %and = and i64 %37, -71777214294589696
  %shr15 = lshr i64 %and, 8
  %38 = load i64, i64* %tmp, align 8, !tbaa !10
  %and16 = and i64 %38, 71777214294589695
  %shl17 = shl i64 %and16, 8
  %or18 = or i64 %shr15, %shl17
  store i64 %or18, i64* %tmp, align 8, !tbaa !10
  %39 = load i64, i64* %tmp, align 8, !tbaa !10
  %and19 = and i64 %39, -281470681808896
  %shr20 = lshr i64 %and19, 16
  %40 = load i64, i64* %tmp, align 8, !tbaa !10
  %and21 = and i64 %40, 281470681808895
  %shl22 = shl i64 %and21, 16
  %or23 = or i64 %shr20, %shl22
  %41 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom = sext i32 %41 to i64
  %42 = load i64*, i64** %W512, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i64, i64* %42, i64 %idxprom
  store i64 %or23, i64* %arrayidx24, align 8, !tbaa !10
  %43 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = load i64, i64* %h, align 8, !tbaa !10
  %45 = load i64, i64* %e, align 8, !tbaa !10
  %shr25 = lshr i64 %45, 14
  %46 = load i64, i64* %e, align 8, !tbaa !10
  %shl26 = shl i64 %46, 50
  %or27 = or i64 %shr25, %shl26
  %47 = load i64, i64* %e, align 8, !tbaa !10
  %shr28 = lshr i64 %47, 18
  %48 = load i64, i64* %e, align 8, !tbaa !10
  %shl29 = shl i64 %48, 46
  %or30 = or i64 %shr28, %shl29
  %xor = xor i64 %or27, %or30
  %49 = load i64, i64* %e, align 8, !tbaa !10
  %shr31 = lshr i64 %49, 41
  %50 = load i64, i64* %e, align 8, !tbaa !10
  %shl32 = shl i64 %50, 23
  %or33 = or i64 %shr31, %shl32
  %xor34 = xor i64 %xor, %or33
  %add = add i64 %44, %xor34
  %51 = load i64, i64* %e, align 8, !tbaa !10
  %52 = load i64, i64* %f, align 8, !tbaa !10
  %and35 = and i64 %51, %52
  %53 = load i64, i64* %e, align 8, !tbaa !10
  %neg = xor i64 %53, -1
  %54 = load i64, i64* %g, align 8, !tbaa !10
  %and36 = and i64 %neg, %54
  %xor37 = xor i64 %and35, %and36
  %add38 = add i64 %add, %xor37
  %55 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom39 = sext i32 %55 to i64
  %arrayidx40 = getelementptr inbounds [80 x i64], [80 x i64]* @K512, i32 0, i64 %idxprom39
  %56 = load i64, i64* %arrayidx40, align 8, !tbaa !10
  %add41 = add i64 %add38, %56
  %57 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom42 = sext i32 %57 to i64
  %58 = load i64*, i64** %W512, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i64, i64* %58, i64 %idxprom42
  %59 = load i64, i64* %arrayidx43, align 8, !tbaa !10
  %add44 = add i64 %add41, %59
  store i64 %add44, i64* %T1, align 8, !tbaa !10
  %60 = load i64, i64* %a, align 8, !tbaa !10
  %shr45 = lshr i64 %60, 28
  %61 = load i64, i64* %a, align 8, !tbaa !10
  %shl46 = shl i64 %61, 36
  %or47 = or i64 %shr45, %shl46
  %62 = load i64, i64* %a, align 8, !tbaa !10
  %shr48 = lshr i64 %62, 34
  %63 = load i64, i64* %a, align 8, !tbaa !10
  %shl49 = shl i64 %63, 30
  %or50 = or i64 %shr48, %shl49
  %xor51 = xor i64 %or47, %or50
  %64 = load i64, i64* %a, align 8, !tbaa !10
  %shr52 = lshr i64 %64, 39
  %65 = load i64, i64* %a, align 8, !tbaa !10
  %shl53 = shl i64 %65, 25
  %or54 = or i64 %shr52, %shl53
  %xor55 = xor i64 %xor51, %or54
  %66 = load i64, i64* %a, align 8, !tbaa !10
  %67 = load i64, i64* %b, align 8, !tbaa !10
  %and56 = and i64 %66, %67
  %68 = load i64, i64* %a, align 8, !tbaa !10
  %69 = load i64, i64* %c, align 8, !tbaa !10
  %and57 = and i64 %68, %69
  %xor58 = xor i64 %and56, %and57
  %70 = load i64, i64* %b, align 8, !tbaa !10
  %71 = load i64, i64* %c, align 8, !tbaa !10
  %and59 = and i64 %70, %71
  %xor60 = xor i64 %xor58, %and59
  %add61 = add i64 %xor55, %xor60
  store i64 %add61, i64* %T2, align 8, !tbaa !10
  %72 = load i64, i64* %g, align 8, !tbaa !10
  store i64 %72, i64* %h, align 8, !tbaa !10
  %73 = load i64, i64* %f, align 8, !tbaa !10
  store i64 %73, i64* %g, align 8, !tbaa !10
  %74 = load i64, i64* %e, align 8, !tbaa !10
  store i64 %74, i64* %f, align 8, !tbaa !10
  %75 = load i64, i64* %d, align 8, !tbaa !10
  %76 = load i64, i64* %T1, align 8, !tbaa !10
  %add62 = add i64 %75, %76
  store i64 %add62, i64* %e, align 8, !tbaa !10
  %77 = load i64, i64* %c, align 8, !tbaa !10
  store i64 %77, i64* %d, align 8, !tbaa !10
  %78 = load i64, i64* %b, align 8, !tbaa !10
  store i64 %78, i64* %c, align 8, !tbaa !10
  %79 = load i64, i64* %a, align 8, !tbaa !10
  store i64 %79, i64* %b, align 8, !tbaa !10
  %80 = load i64, i64* %T1, align 8, !tbaa !10
  %81 = load i64, i64* %T2, align 8, !tbaa !10
  %add63 = add i64 %80, %81
  store i64 %add63, i64* %a, align 8, !tbaa !10
  %82 = load i32, i32* %j, align 4, !tbaa !8
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %j, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %83 = load i32, i32* %j, align 4, !tbaa !8
  %cmp = icmp slt i32 %83, 16
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.64

do.body.64:                                       ; preds = %do.cond.142, %do.end
  %84 = load i32, i32* %j, align 4, !tbaa !8
  %add65 = add nsw i32 %84, 1
  %and66 = and i32 %add65, 15
  %idxprom67 = sext i32 %and66 to i64
  %85 = load i64*, i64** %W512, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i64, i64* %85, i64 %idxprom67
  %86 = load i64, i64* %arrayidx68, align 8, !tbaa !10
  store i64 %86, i64* %s0, align 8, !tbaa !10
  %87 = load i64, i64* %s0, align 8, !tbaa !10
  %shr69 = lshr i64 %87, 1
  %88 = load i64, i64* %s0, align 8, !tbaa !10
  %shl70 = shl i64 %88, 63
  %or71 = or i64 %shr69, %shl70
  %89 = load i64, i64* %s0, align 8, !tbaa !10
  %shr72 = lshr i64 %89, 8
  %90 = load i64, i64* %s0, align 8, !tbaa !10
  %shl73 = shl i64 %90, 56
  %or74 = or i64 %shr72, %shl73
  %xor75 = xor i64 %or71, %or74
  %91 = load i64, i64* %s0, align 8, !tbaa !10
  %shr76 = lshr i64 %91, 7
  %xor77 = xor i64 %xor75, %shr76
  store i64 %xor77, i64* %s0, align 8, !tbaa !10
  %92 = load i32, i32* %j, align 4, !tbaa !8
  %add78 = add nsw i32 %92, 14
  %and79 = and i32 %add78, 15
  %idxprom80 = sext i32 %and79 to i64
  %93 = load i64*, i64** %W512, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i64, i64* %93, i64 %idxprom80
  %94 = load i64, i64* %arrayidx81, align 8, !tbaa !10
  store i64 %94, i64* %s1, align 8, !tbaa !10
  %95 = load i64, i64* %s1, align 8, !tbaa !10
  %shr82 = lshr i64 %95, 19
  %96 = load i64, i64* %s1, align 8, !tbaa !10
  %shl83 = shl i64 %96, 45
  %or84 = or i64 %shr82, %shl83
  %97 = load i64, i64* %s1, align 8, !tbaa !10
  %shr85 = lshr i64 %97, 61
  %98 = load i64, i64* %s1, align 8, !tbaa !10
  %shl86 = shl i64 %98, 3
  %or87 = or i64 %shr85, %shl86
  %xor88 = xor i64 %or84, %or87
  %99 = load i64, i64* %s1, align 8, !tbaa !10
  %shr89 = lshr i64 %99, 6
  %xor90 = xor i64 %xor88, %shr89
  store i64 %xor90, i64* %s1, align 8, !tbaa !10
  %100 = load i64, i64* %h, align 8, !tbaa !10
  %101 = load i64, i64* %e, align 8, !tbaa !10
  %shr91 = lshr i64 %101, 14
  %102 = load i64, i64* %e, align 8, !tbaa !10
  %shl92 = shl i64 %102, 50
  %or93 = or i64 %shr91, %shl92
  %103 = load i64, i64* %e, align 8, !tbaa !10
  %shr94 = lshr i64 %103, 18
  %104 = load i64, i64* %e, align 8, !tbaa !10
  %shl95 = shl i64 %104, 46
  %or96 = or i64 %shr94, %shl95
  %xor97 = xor i64 %or93, %or96
  %105 = load i64, i64* %e, align 8, !tbaa !10
  %shr98 = lshr i64 %105, 41
  %106 = load i64, i64* %e, align 8, !tbaa !10
  %shl99 = shl i64 %106, 23
  %or100 = or i64 %shr98, %shl99
  %xor101 = xor i64 %xor97, %or100
  %add102 = add i64 %100, %xor101
  %107 = load i64, i64* %e, align 8, !tbaa !10
  %108 = load i64, i64* %f, align 8, !tbaa !10
  %and103 = and i64 %107, %108
  %109 = load i64, i64* %e, align 8, !tbaa !10
  %neg104 = xor i64 %109, -1
  %110 = load i64, i64* %g, align 8, !tbaa !10
  %and105 = and i64 %neg104, %110
  %xor106 = xor i64 %and103, %and105
  %add107 = add i64 %add102, %xor106
  %111 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom108 = sext i32 %111 to i64
  %arrayidx109 = getelementptr inbounds [80 x i64], [80 x i64]* @K512, i32 0, i64 %idxprom108
  %112 = load i64, i64* %arrayidx109, align 8, !tbaa !10
  %add110 = add i64 %add107, %112
  %113 = load i64, i64* %s1, align 8, !tbaa !10
  %114 = load i32, i32* %j, align 4, !tbaa !8
  %add111 = add nsw i32 %114, 9
  %and112 = and i32 %add111, 15
  %idxprom113 = sext i32 %and112 to i64
  %115 = load i64*, i64** %W512, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i64, i64* %115, i64 %idxprom113
  %116 = load i64, i64* %arrayidx114, align 8, !tbaa !10
  %add115 = add i64 %113, %116
  %117 = load i64, i64* %s0, align 8, !tbaa !10
  %add116 = add i64 %add115, %117
  %118 = load i32, i32* %j, align 4, !tbaa !8
  %and117 = and i32 %118, 15
  %idxprom118 = sext i32 %and117 to i64
  %119 = load i64*, i64** %W512, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i64, i64* %119, i64 %idxprom118
  %120 = load i64, i64* %arrayidx119, align 8, !tbaa !10
  %add120 = add i64 %120, %add116
  store i64 %add120, i64* %arrayidx119, align 8, !tbaa !10
  %add121 = add i64 %add110, %add120
  store i64 %add121, i64* %T1, align 8, !tbaa !10
  %121 = load i64, i64* %a, align 8, !tbaa !10
  %shr122 = lshr i64 %121, 28
  %122 = load i64, i64* %a, align 8, !tbaa !10
  %shl123 = shl i64 %122, 36
  %or124 = or i64 %shr122, %shl123
  %123 = load i64, i64* %a, align 8, !tbaa !10
  %shr125 = lshr i64 %123, 34
  %124 = load i64, i64* %a, align 8, !tbaa !10
  %shl126 = shl i64 %124, 30
  %or127 = or i64 %shr125, %shl126
  %xor128 = xor i64 %or124, %or127
  %125 = load i64, i64* %a, align 8, !tbaa !10
  %shr129 = lshr i64 %125, 39
  %126 = load i64, i64* %a, align 8, !tbaa !10
  %shl130 = shl i64 %126, 25
  %or131 = or i64 %shr129, %shl130
  %xor132 = xor i64 %xor128, %or131
  %127 = load i64, i64* %a, align 8, !tbaa !10
  %128 = load i64, i64* %b, align 8, !tbaa !10
  %and133 = and i64 %127, %128
  %129 = load i64, i64* %a, align 8, !tbaa !10
  %130 = load i64, i64* %c, align 8, !tbaa !10
  %and134 = and i64 %129, %130
  %xor135 = xor i64 %and133, %and134
  %131 = load i64, i64* %b, align 8, !tbaa !10
  %132 = load i64, i64* %c, align 8, !tbaa !10
  %and136 = and i64 %131, %132
  %xor137 = xor i64 %xor135, %and136
  %add138 = add i64 %xor132, %xor137
  store i64 %add138, i64* %T2, align 8, !tbaa !10
  %133 = load i64, i64* %g, align 8, !tbaa !10
  store i64 %133, i64* %h, align 8, !tbaa !10
  %134 = load i64, i64* %f, align 8, !tbaa !10
  store i64 %134, i64* %g, align 8, !tbaa !10
  %135 = load i64, i64* %e, align 8, !tbaa !10
  store i64 %135, i64* %f, align 8, !tbaa !10
  %136 = load i64, i64* %d, align 8, !tbaa !10
  %137 = load i64, i64* %T1, align 8, !tbaa !10
  %add139 = add i64 %136, %137
  store i64 %add139, i64* %e, align 8, !tbaa !10
  %138 = load i64, i64* %c, align 8, !tbaa !10
  store i64 %138, i64* %d, align 8, !tbaa !10
  %139 = load i64, i64* %b, align 8, !tbaa !10
  store i64 %139, i64* %c, align 8, !tbaa !10
  %140 = load i64, i64* %a, align 8, !tbaa !10
  store i64 %140, i64* %b, align 8, !tbaa !10
  %141 = load i64, i64* %T1, align 8, !tbaa !10
  %142 = load i64, i64* %T2, align 8, !tbaa !10
  %add140 = add i64 %141, %142
  store i64 %add140, i64* %a, align 8, !tbaa !10
  %143 = load i32, i32* %j, align 4, !tbaa !8
  %inc141 = add nsw i32 %143, 1
  store i32 %inc141, i32* %j, align 4, !tbaa !8
  br label %do.cond.142

do.cond.142:                                      ; preds = %do.body.64
  %144 = load i32, i32* %j, align 4, !tbaa !8
  %cmp143 = icmp slt i32 %144, 80
  br i1 %cmp143, label %do.body.64, label %do.end.144

do.end.144:                                       ; preds = %do.cond.142
  %145 = load i64, i64* %a, align 8, !tbaa !10
  %146 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state145 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %146, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [8 x i64], [8 x i64]* %state145, i32 0, i64 0
  %147 = load i64, i64* %arrayidx146, align 8, !tbaa !10
  %add147 = add i64 %147, %145
  store i64 %add147, i64* %arrayidx146, align 8, !tbaa !10
  %148 = load i64, i64* %b, align 8, !tbaa !10
  %149 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state148 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %149, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [8 x i64], [8 x i64]* %state148, i32 0, i64 1
  %150 = load i64, i64* %arrayidx149, align 8, !tbaa !10
  %add150 = add i64 %150, %148
  store i64 %add150, i64* %arrayidx149, align 8, !tbaa !10
  %151 = load i64, i64* %c, align 8, !tbaa !10
  %152 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state151 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %152, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [8 x i64], [8 x i64]* %state151, i32 0, i64 2
  %153 = load i64, i64* %arrayidx152, align 8, !tbaa !10
  %add153 = add i64 %153, %151
  store i64 %add153, i64* %arrayidx152, align 8, !tbaa !10
  %154 = load i64, i64* %d, align 8, !tbaa !10
  %155 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state154 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %155, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [8 x i64], [8 x i64]* %state154, i32 0, i64 3
  %156 = load i64, i64* %arrayidx155, align 8, !tbaa !10
  %add156 = add i64 %156, %154
  store i64 %add156, i64* %arrayidx155, align 8, !tbaa !10
  %157 = load i64, i64* %e, align 8, !tbaa !10
  %158 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state157 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %158, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [8 x i64], [8 x i64]* %state157, i32 0, i64 4
  %159 = load i64, i64* %arrayidx158, align 8, !tbaa !10
  %add159 = add i64 %159, %157
  store i64 %add159, i64* %arrayidx158, align 8, !tbaa !10
  %160 = load i64, i64* %f, align 8, !tbaa !10
  %161 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state160 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %161, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [8 x i64], [8 x i64]* %state160, i32 0, i64 5
  %162 = load i64, i64* %arrayidx161, align 8, !tbaa !10
  %add162 = add i64 %162, %160
  store i64 %add162, i64* %arrayidx161, align 8, !tbaa !10
  %163 = load i64, i64* %g, align 8, !tbaa !10
  %164 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state163 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %164, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [8 x i64], [8 x i64]* %state163, i32 0, i64 6
  %165 = load i64, i64* %arrayidx164, align 8, !tbaa !10
  %add165 = add i64 %165, %163
  store i64 %add165, i64* %arrayidx164, align 8, !tbaa !10
  %166 = load i64, i64* %h, align 8, !tbaa !10
  %167 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state166 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %167, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [8 x i64], [8 x i64]* %state166, i32 0, i64 7
  %168 = load i64, i64* %arrayidx167, align 8, !tbaa !10
  %add168 = add i64 %168, %166
  store i64 %add168, i64* %arrayidx167, align 8, !tbaa !10
  store i64 0, i64* %T2, align 8, !tbaa !10
  store i64 0, i64* %T1, align 8, !tbaa !10
  store i64 0, i64* %h, align 8, !tbaa !10
  store i64 0, i64* %g, align 8, !tbaa !10
  store i64 0, i64* %f, align 8, !tbaa !10
  store i64 0, i64* %e, align 8, !tbaa !10
  store i64 0, i64* %d, align 8, !tbaa !10
  store i64 0, i64* %c, align 8, !tbaa !10
  store i64 0, i64* %b, align 8, !tbaa !10
  store i64 0, i64* %a, align 8, !tbaa !10
  %169 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast i64** %W512 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #2
  %171 = bitcast i64* %T2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #2
  %172 = bitcast i64* %T1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #2
  %173 = bitcast i64* %s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #2
  %174 = bitcast i64* %s0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #2
  %175 = bitcast i64* %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #2
  %176 = bitcast i64* %g to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #2
  %177 = bitcast i64* %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #2
  %178 = bitcast i64* %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #2
  %179 = bitcast i64* %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #2
  %180 = bitcast i64* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #2
  %181 = bitcast i64* %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #2
  %182 = bitcast i64* %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @pSHA512_Update(%struct._SHA512_CTX* %context, i8* %data, i64 %len) #0 {
entry:
  %context.addr = alloca %struct._SHA512_CTX*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %freespace = alloca i32, align 4
  %usedspace = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._SHA512_CTX* %context, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %len, i64* %len.addr, align 8, !tbaa !10
  %0 = bitcast i32* %freespace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %usedspace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i64, i64* %len.addr, align 8, !tbaa !10
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount, i32 0, i64 0
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !10
  %shr = lshr i64 %4, 3
  %rem = urem i64 %shr, 128
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %usedspace, align 4, !tbaa !8
  %5 = load i32, i32* %usedspace, align 4, !tbaa !8
  %cmp1 = icmp ugt i32 %5, 0
  br i1 %cmp1, label %if.then.3, label %if.end.45

if.then.3:                                        ; preds = %if.end
  %6 = load i32, i32* %usedspace, align 4, !tbaa !8
  %sub = sub i32 128, %6
  store i32 %sub, i32* %freespace, align 4, !tbaa !8
  %7 = load i64, i64* %len.addr, align 8, !tbaa !10
  %8 = load i32, i32* %freespace, align 4, !tbaa !8
  %conv4 = zext i32 %8 to i64
  %cmp5 = icmp uge i64 %7, %conv4
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.3
  %9 = load i32, i32* %usedspace, align 4, !tbaa !8
  %idxprom = zext i32 %9 to i64
  %10 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %10, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i32 0, i64 %idxprom
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %freespace, align 4, !tbaa !8
  %conv9 = zext i32 %12 to i64
  %call = call i8* @memcpy(i8* %arrayidx8, i8* %11, i64 %conv9) #3
  %13 = load i32, i32* %freespace, align 4, !tbaa !8
  %shl = shl i32 %13, 3
  %conv10 = zext i32 %shl to i64
  %14 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount11 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %14, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount11, i32 0, i64 0
  %15 = load i64, i64* %arrayidx12, align 8, !tbaa !10
  %add = add i64 %15, %conv10
  store i64 %add, i64* %arrayidx12, align 8, !tbaa !10
  %16 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount13 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %16, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount13, i32 0, i64 0
  %17 = load i64, i64* %arrayidx14, align 8, !tbaa !10
  %18 = load i32, i32* %freespace, align 4, !tbaa !8
  %shl15 = shl i32 %18, 3
  %conv16 = zext i32 %shl15 to i64
  %cmp17 = icmp ult i64 %17, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.7
  %19 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount20 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount20, i32 0, i64 1
  %20 = load i64, i64* %arrayidx21, align 8, !tbaa !10
  %inc = add i64 %20, 1
  store i64 %inc, i64* %arrayidx21, align 8, !tbaa !10
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.7
  %21 = load i32, i32* %freespace, align 4, !tbaa !8
  %conv23 = zext i32 %21 to i64
  %22 = load i64, i64* %len.addr, align 8, !tbaa !10
  %sub24 = sub i64 %22, %conv23
  store i64 %sub24, i64* %len.addr, align 8, !tbaa !10
  %23 = load i32, i32* %freespace, align 4, !tbaa !8
  %24 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  %25 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %26 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer25 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %26, i32 0, i32 2
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buffer25, i32 0, i32 0
  %27 = bitcast i8* %arraydecay to i64*
  call void @pSHA512_Transform(%struct._SHA512_CTX* %25, i64* %27) #4
  br label %if.end.44

if.else:                                          ; preds = %if.then.3
  %28 = load i32, i32* %usedspace, align 4, !tbaa !8
  %idxprom26 = zext i32 %28 to i64
  %29 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer27 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %29, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer27, i32 0, i64 %idxprom26
  %30 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %31 = load i64, i64* %len.addr, align 8, !tbaa !10
  %call29 = call i8* @memcpy(i8* %arrayidx28, i8* %30, i64 %31) #3
  %32 = load i64, i64* %len.addr, align 8, !tbaa !10
  %shl30 = shl i64 %32, 3
  %33 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount31 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %33, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount31, i32 0, i64 0
  %34 = load i64, i64* %arrayidx32, align 8, !tbaa !10
  %add33 = add i64 %34, %shl30
  store i64 %add33, i64* %arrayidx32, align 8, !tbaa !10
  %35 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount34 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %35, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount34, i32 0, i64 0
  %36 = load i64, i64* %arrayidx35, align 8, !tbaa !10
  %37 = load i64, i64* %len.addr, align 8, !tbaa !10
  %shl36 = shl i64 %37, 3
  %cmp37 = icmp ult i64 %36, %shl36
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.else
  %38 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount40 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %38, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount40, i32 0, i64 1
  %39 = load i64, i64* %arrayidx41, align 8, !tbaa !10
  %inc42 = add i64 %39, 1
  store i64 %inc42, i64* %arrayidx41, align 8, !tbaa !10
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.else
  store i32 0, i32* %freespace, align 4, !tbaa !8
  store i32 0, i32* %usedspace, align 4, !tbaa !8
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end.22
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.59, %if.end.45
  %40 = load i64, i64* %len.addr, align 8, !tbaa !10
  %cmp46 = icmp uge i64 %40, 128
  br i1 %cmp46, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %42 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %43 = bitcast i8* %42 to i64*
  call void @pSHA512_Transform(%struct._SHA512_CTX* %41, i64* %43) #4
  %44 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount48 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %44, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount48, i32 0, i64 0
  %45 = load i64, i64* %arrayidx49, align 8, !tbaa !10
  %add50 = add i64 %45, 1024
  store i64 %add50, i64* %arrayidx49, align 8, !tbaa !10
  %46 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount51 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %46, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount51, i32 0, i64 0
  %47 = load i64, i64* %arrayidx52, align 8, !tbaa !10
  %cmp53 = icmp ult i64 %47, 1024
  br i1 %cmp53, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %while.body
  %48 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount56 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %48, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount56, i32 0, i64 1
  %49 = load i64, i64* %arrayidx57, align 8, !tbaa !10
  %inc58 = add i64 %49, 1
  store i64 %inc58, i64* %arrayidx57, align 8, !tbaa !10
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.55, %while.body
  %50 = load i64, i64* %len.addr, align 8, !tbaa !10
  %sub60 = sub i64 %50, 128
  store i64 %sub60, i64* %len.addr, align 8, !tbaa !10
  %51 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr61 = getelementptr inbounds i8, i8* %51, i64 128
  store i8* %add.ptr61, i8** %data.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load i64, i64* %len.addr, align 8, !tbaa !10
  %cmp62 = icmp ugt i64 %52, 0
  br i1 %cmp62, label %if.then.64, label %if.end.82

if.then.64:                                       ; preds = %while.end
  %53 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer65 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %53, i32 0, i32 2
  %arraydecay66 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer65, i32 0, i32 0
  %54 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %55 = load i64, i64* %len.addr, align 8, !tbaa !10
  %call67 = call i8* @memcpy(i8* %arraydecay66, i8* %54, i64 %55) #3
  %56 = load i64, i64* %len.addr, align 8, !tbaa !10
  %shl68 = shl i64 %56, 3
  %57 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount69 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %57, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount69, i32 0, i64 0
  %58 = load i64, i64* %arrayidx70, align 8, !tbaa !10
  %add71 = add i64 %58, %shl68
  store i64 %add71, i64* %arrayidx70, align 8, !tbaa !10
  %59 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount72 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %59, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount72, i32 0, i64 0
  %60 = load i64, i64* %arrayidx73, align 8, !tbaa !10
  %61 = load i64, i64* %len.addr, align 8, !tbaa !10
  %shl74 = shl i64 %61, 3
  %cmp75 = icmp ult i64 %60, %shl74
  br i1 %cmp75, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %if.then.64
  %62 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount78 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %62, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount78, i32 0, i64 1
  %63 = load i64, i64* %arrayidx79, align 8, !tbaa !10
  %inc80 = add i64 %63, 1
  store i64 %inc80, i64* %arrayidx79, align 8, !tbaa !10
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.77, %if.then.64
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %while.end
  store i32 0, i32* %freespace, align 4, !tbaa !8
  store i32 0, i32* %usedspace, align 4, !tbaa !8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.82, %if.end.43, %if.then
  %64 = bitcast i32* %usedspace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast i32* %freespace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @pSHA512_Last(%struct._SHA512_CTX* %context) #0 {
entry:
  %context.addr = alloca %struct._SHA512_CTX*, align 8
  %usedspace = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp16 = alloca i64, align 8
  store %struct._SHA512_CTX* %context, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %0 = bitcast i32* %usedspace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount, i32 0, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !10
  %shr = lshr i64 %2, 3
  %rem = urem i64 %shr, 128
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %usedspace, align 4, !tbaa !8
  %3 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount1 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount1, i32 0, i64 0
  %5 = load i64, i64* %arrayidx2, align 8, !tbaa !10
  store i64 %5, i64* %tmp, align 8, !tbaa !10
  %6 = load i64, i64* %tmp, align 8, !tbaa !10
  %shr3 = lshr i64 %6, 32
  %7 = load i64, i64* %tmp, align 8, !tbaa !10
  %shl = shl i64 %7, 32
  %or = or i64 %shr3, %shl
  store i64 %or, i64* %tmp, align 8, !tbaa !10
  %8 = load i64, i64* %tmp, align 8, !tbaa !10
  %and = and i64 %8, -71777214294589696
  %shr4 = lshr i64 %and, 8
  %9 = load i64, i64* %tmp, align 8, !tbaa !10
  %and5 = and i64 %9, 71777214294589695
  %shl6 = shl i64 %and5, 8
  %or7 = or i64 %shr4, %shl6
  store i64 %or7, i64* %tmp, align 8, !tbaa !10
  %10 = load i64, i64* %tmp, align 8, !tbaa !10
  %and8 = and i64 %10, -281470681808896
  %shr9 = lshr i64 %and8, 16
  %11 = load i64, i64* %tmp, align 8, !tbaa !10
  %and10 = and i64 %11, 281470681808895
  %shl11 = shl i64 %and10, 16
  %or12 = or i64 %shr9, %shl11
  %12 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount13 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %12, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount13, i32 0, i64 0
  store i64 %or12, i64* %arrayidx14, align 8, !tbaa !10
  %13 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount17 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %15, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount17, i32 0, i64 1
  %16 = load i64, i64* %arrayidx18, align 8, !tbaa !10
  store i64 %16, i64* %tmp16, align 8, !tbaa !10
  %17 = load i64, i64* %tmp16, align 8, !tbaa !10
  %shr19 = lshr i64 %17, 32
  %18 = load i64, i64* %tmp16, align 8, !tbaa !10
  %shl20 = shl i64 %18, 32
  %or21 = or i64 %shr19, %shl20
  store i64 %or21, i64* %tmp16, align 8, !tbaa !10
  %19 = load i64, i64* %tmp16, align 8, !tbaa !10
  %and22 = and i64 %19, -71777214294589696
  %shr23 = lshr i64 %and22, 8
  %20 = load i64, i64* %tmp16, align 8, !tbaa !10
  %and24 = and i64 %20, 71777214294589695
  %shl25 = shl i64 %and24, 8
  %or26 = or i64 %shr23, %shl25
  store i64 %or26, i64* %tmp16, align 8, !tbaa !10
  %21 = load i64, i64* %tmp16, align 8, !tbaa !10
  %and27 = and i64 %21, -281470681808896
  %shr28 = lshr i64 %and27, 16
  %22 = load i64, i64* %tmp16, align 8, !tbaa !10
  %and29 = and i64 %22, 281470681808895
  %shl30 = shl i64 %and29, 16
  %or31 = or i64 %shr28, %shl30
  %23 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount32 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %23, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount32, i32 0, i64 1
  store i64 %or31, i64* %arrayidx33, align 8, !tbaa !10
  %24 = bitcast i64* %tmp16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = load i32, i32* %usedspace, align 4, !tbaa !8
  %cmp = icmp ugt i32 %25, 0
  br i1 %cmp, label %if.then, label %if.else.57

if.then:                                          ; preds = %entry
  %26 = load i32, i32* %usedspace, align 4, !tbaa !8
  %inc = add i32 %26, 1
  store i32 %inc, i32* %usedspace, align 4, !tbaa !8
  %idxprom = zext i32 %26 to i64
  %27 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %27, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 -128, i8* %arrayidx35, align 1, !tbaa !11
  %28 = load i32, i32* %usedspace, align 4, !tbaa !8
  %cmp36 = icmp ule i32 %28, 112
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.then
  %29 = load i32, i32* %usedspace, align 4, !tbaa !8
  %idxprom39 = zext i32 %29 to i64
  %30 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer40 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %30, i32 0, i32 2
  %arrayidx41 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer40, i32 0, i64 %idxprom39
  %31 = load i32, i32* %usedspace, align 4, !tbaa !8
  %sub = sub i32 112, %31
  %conv42 = zext i32 %sub to i64
  %call = call i8* @memset(i8* %arrayidx41, i32 0, i64 %conv42) #3
  br label %if.end.56

if.else:                                          ; preds = %if.then
  %32 = load i32, i32* %usedspace, align 4, !tbaa !8
  %cmp43 = icmp ult i32 %32, 128
  br i1 %cmp43, label %if.then.45, label %if.end

if.then.45:                                       ; preds = %if.else
  %33 = load i32, i32* %usedspace, align 4, !tbaa !8
  %idxprom46 = zext i32 %33 to i64
  %34 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer47 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %34, i32 0, i32 2
  %arrayidx48 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer47, i32 0, i64 %idxprom46
  %35 = load i32, i32* %usedspace, align 4, !tbaa !8
  %sub49 = sub i32 128, %35
  %conv50 = zext i32 %sub49 to i64
  %call51 = call i8* @memset(i8* %arrayidx48, i32 0, i64 %conv50) #3
  br label %if.end

if.end:                                           ; preds = %if.then.45, %if.else
  %36 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %37 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer52 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %37, i32 0, i32 2
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buffer52, i32 0, i32 0
  %38 = bitcast i8* %arraydecay to i64*
  call void @pSHA512_Transform(%struct._SHA512_CTX* %36, i64* %38) #4
  %39 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer53 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %39, i32 0, i32 2
  %arraydecay54 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer53, i32 0, i32 0
  %call55 = call i8* @memset(i8* %arraydecay54, i32 0, i64 126) #3
  br label %if.end.56

if.end.56:                                        ; preds = %if.end, %if.then.38
  br label %if.end.63

if.else.57:                                       ; preds = %entry
  %40 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer58 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %40, i32 0, i32 2
  %arraydecay59 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer58, i32 0, i32 0
  %call60 = call i8* @memset(i8* %arraydecay59, i32 0, i64 112) #3
  %41 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer61 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %41, i32 0, i32 2
  %arraydecay62 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer61, i32 0, i32 0
  store i8 -128, i8* %arraydecay62, align 1, !tbaa !11
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.57, %if.end.56
  %42 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount64 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %42, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount64, i32 0, i64 1
  %43 = load i64, i64* %arrayidx65, align 8, !tbaa !10
  %44 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer66 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %44, i32 0, i32 2
  %arrayidx67 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer66, i32 0, i64 112
  %45 = bitcast i8* %arrayidx67 to i64*
  store i64 %43, i64* %45, align 8, !tbaa !10
  %46 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount68 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %46, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount68, i32 0, i64 0
  %47 = load i64, i64* %arrayidx69, align 8, !tbaa !10
  %48 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer70 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %48, i32 0, i32 2
  %arrayidx71 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer70, i32 0, i64 120
  %49 = bitcast i8* %arrayidx71 to i64*
  store i64 %47, i64* %49, align 8, !tbaa !10
  %50 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %51 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer72 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %51, i32 0, i32 2
  %arraydecay73 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer72, i32 0, i32 0
  %52 = bitcast i8* %arraydecay73 to i64*
  call void @pSHA512_Transform(%struct._SHA512_CTX* %50, i64* %52) #4
  %53 = bitcast i32* %usedspace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @pSHA512_Final(i8* %digest, %struct._SHA512_CTX* %context) #0 {
entry:
  %digest.addr = alloca i8*, align 8
  %context.addr = alloca %struct._SHA512_CTX*, align 8
  %d = alloca i64*, align 8
  %j = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i8* %digest, i8** %digest.addr, align 8, !tbaa !1
  store %struct._SHA512_CTX* %context, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %0 = bitcast i64** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %d, align 8, !tbaa !1
  %3 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  call void @pSHA512_Last(%struct._SHA512_CTX* %4) #4
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %j, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %6, 8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %9, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* %state, i32 0, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8, !tbaa !10
  store i64 %10, i64* %tmp, align 8, !tbaa !10
  %11 = load i64, i64* %tmp, align 8, !tbaa !10
  %shr = lshr i64 %11, 32
  %12 = load i64, i64* %tmp, align 8, !tbaa !10
  %shl = shl i64 %12, 32
  %or = or i64 %shr, %shl
  store i64 %or, i64* %tmp, align 8, !tbaa !10
  %13 = load i64, i64* %tmp, align 8, !tbaa !10
  %and = and i64 %13, -71777214294589696
  %shr2 = lshr i64 %and, 8
  %14 = load i64, i64* %tmp, align 8, !tbaa !10
  %and3 = and i64 %14, 71777214294589695
  %shl4 = shl i64 %and3, 8
  %or5 = or i64 %shr2, %shl4
  store i64 %or5, i64* %tmp, align 8, !tbaa !10
  %15 = load i64, i64* %tmp, align 8, !tbaa !10
  %and6 = and i64 %15, -281470681808896
  %shr7 = lshr i64 %and6, 16
  %16 = load i64, i64* %tmp, align 8, !tbaa !10
  %and8 = and i64 %16, 281470681808895
  %shl9 = shl i64 %and8, 16
  %or10 = or i64 %shr7, %shl9
  %17 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state12 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %18, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [8 x i64], [8 x i64]* %state12, i32 0, i64 %idxprom11
  store i64 %or10, i64* %arrayidx13, align 8, !tbaa !10
  %19 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state15 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %21, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [8 x i64], [8 x i64]* %state15, i32 0, i64 %idxprom14
  %22 = load i64, i64* %arrayidx16, align 8, !tbaa !10
  %23 = load i64*, i64** %d, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %incdec.ptr, i64** %d, align 8, !tbaa !1
  store i64 %22, i64* %23, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %j, align 4, !tbaa !8
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %26 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %27 = bitcast %struct._SHA512_CTX* %26 to i8*
  %call = call i8* @memset(i8* %27, i32 0, i64 208) #3
  %28 = bitcast i64** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @pSHA512_End(%struct._SHA512_CTX* %context, i8* %buffer) #0 {
entry:
  %context.addr = alloca %struct._SHA512_CTX*, align 8
  %buffer.addr = alloca i8*, align 8
  %digest = alloca [64 x i8], align 16
  %d = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._SHA512_CTX* %context, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  %0 = bitcast [64 x i8]* %digest to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #2
  %1 = bitcast i8** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i32 0, i32 0
  store i8* %arraydecay, i8** %d, align 8, !tbaa !1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i32 0, i32 0
  %4 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  call void @pSHA512_Final(i8* %arraydecay1, %struct._SHA512_CTX* %4) #4
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %5, 64
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %d, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !11
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 240
  %shr = ashr i32 %and, 4
  %idxprom = sext i32 %shr to i64
  %8 = load i8*, i8** @sha2_hex_digits, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %10 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %buffer.addr, align 8, !tbaa !1
  store i8 %9, i8* %10, align 1, !tbaa !11
  %11 = load i8*, i8** %d, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !11
  %conv3 = zext i8 %12 to i32
  %and4 = and i32 %conv3, 15
  %idxprom5 = sext i32 %and4 to i64
  %13 = load i8*, i8** @sha2_hex_digits, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 %idxprom5
  %14 = load i8, i8* %arrayidx6, align 1, !tbaa !11
  %15 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr7, i8** %buffer.addr, align 8, !tbaa !1
  store i8 %14, i8* %15, align 1, !tbaa !11
  %16 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr8, i8** %d, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8 0, i8* %18, align 1, !tbaa !11
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %20 = bitcast %struct._SHA512_CTX* %19 to i8*
  %call = call i8* @memset(i8* %20, i32 0, i64 208) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %arraydecay9 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i32 0, i32 0
  %call10 = call i8* @memset(i8* %arraydecay9, i32 0, i64 64) #3
  %21 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast i8** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast [64 x i8]* %digest to i8*
  call void @llvm.lifetime.end(i64 64, i8* %24) #2
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define i8* @pSHA512_Data(i8* %data, i64 %len, i8* %digest) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %digest.addr = alloca i8*, align 8
  %context = alloca %struct._SHA512_CTX, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %len, i64* %len.addr, align 8, !tbaa !10
  store i8* %digest, i8** %digest.addr, align 8, !tbaa !1
  %0 = bitcast %struct._SHA512_CTX* %context to i8*
  call void @llvm.lifetime.start(i64 208, i8* %0) #2
  call void @pSHA512_Init(%struct._SHA512_CTX* %context) #4
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i64, i64* %len.addr, align 8, !tbaa !10
  call void @pSHA512_Update(%struct._SHA512_CTX* %context, i8* %1, i64 %2) #4
  %3 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %call = call i8* @pSHA512_End(%struct._SHA512_CTX* %context, i8* %3) #4
  %4 = bitcast %struct._SHA512_CTX* %context to i8*
  call void @llvm.lifetime.end(i64 208, i8* %4) #2
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @pSHA384_Init(%struct._SHA512_CTX* %context) #0 {
entry:
  %context.addr = alloca %struct._SHA512_CTX*, align 8
  store %struct._SHA512_CTX* %context, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %0 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._SHA512_CTX* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %state, i32 0, i32 0
  %2 = bitcast i64* %arraydecay to i8*
  %call = call i8* @memcpy(i8* %2, i8* bitcast ([8 x i64]* @sha384_initial_hash_value to i8*), i64 64) #3
  %3 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %3, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i32 0, i32 0
  %call2 = call i8* @memset(i8* %arraydecay1, i32 0, i64 128) #3
  %4 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount, i32 0, i64 1
  store i64 0, i64* %arrayidx, align 8, !tbaa !10
  %5 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %bitcount3 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %5, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %bitcount3, i32 0, i64 0
  store i64 0, i64* %arrayidx4, align 8, !tbaa !10
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @pSHA384_Update(%struct._SHA512_CTX* %context, i8* %data, i64 %len) #0 {
entry:
  %context.addr = alloca %struct._SHA512_CTX*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct._SHA512_CTX* %context, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %len, i64* %len.addr, align 8, !tbaa !10
  %0 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i64, i64* %len.addr, align 8, !tbaa !10
  call void @pSHA512_Update(%struct._SHA512_CTX* %0, i8* %1, i64 %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @pSHA384_Final(i8* %digest, %struct._SHA512_CTX* %context) #0 {
entry:
  %digest.addr = alloca i8*, align 8
  %context.addr = alloca %struct._SHA512_CTX*, align 8
  %d = alloca i64*, align 8
  %j = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i8* %digest, i8** %digest.addr, align 8, !tbaa !1
  store %struct._SHA512_CTX* %context, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %0 = bitcast i64** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %d, align 8, !tbaa !1
  %3 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  call void @pSHA512_Last(%struct._SHA512_CTX* %4) #4
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %j, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %6, 6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %9, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* %state, i32 0, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8, !tbaa !10
  store i64 %10, i64* %tmp, align 8, !tbaa !10
  %11 = load i64, i64* %tmp, align 8, !tbaa !10
  %shr = lshr i64 %11, 32
  %12 = load i64, i64* %tmp, align 8, !tbaa !10
  %shl = shl i64 %12, 32
  %or = or i64 %shr, %shl
  store i64 %or, i64* %tmp, align 8, !tbaa !10
  %13 = load i64, i64* %tmp, align 8, !tbaa !10
  %and = and i64 %13, -71777214294589696
  %shr2 = lshr i64 %and, 8
  %14 = load i64, i64* %tmp, align 8, !tbaa !10
  %and3 = and i64 %14, 71777214294589695
  %shl4 = shl i64 %and3, 8
  %or5 = or i64 %shr2, %shl4
  store i64 %or5, i64* %tmp, align 8, !tbaa !10
  %15 = load i64, i64* %tmp, align 8, !tbaa !10
  %and6 = and i64 %15, -281470681808896
  %shr7 = lshr i64 %and6, 16
  %16 = load i64, i64* %tmp, align 8, !tbaa !10
  %and8 = and i64 %16, 281470681808895
  %shl9 = shl i64 %and8, 16
  %or10 = or i64 %shr7, %shl9
  %17 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state12 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %18, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [8 x i64], [8 x i64]* %state12, i32 0, i64 %idxprom11
  store i64 %or10, i64* %arrayidx13, align 8, !tbaa !10
  %19 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load i32, i32* %j, align 4, !tbaa !8
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %state15 = getelementptr inbounds %struct._SHA512_CTX, %struct._SHA512_CTX* %21, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [8 x i64], [8 x i64]* %state15, i32 0, i64 %idxprom14
  %22 = load i64, i64* %arrayidx16, align 8, !tbaa !10
  %23 = load i64*, i64** %d, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %incdec.ptr, i64** %d, align 8, !tbaa !1
  store i64 %22, i64* %23, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %j, align 4, !tbaa !8
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %26 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %27 = bitcast %struct._SHA512_CTX* %26 to i8*
  %call = call i8* @memset(i8* %27, i32 0, i64 208) #3
  %28 = bitcast i64** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @pSHA384_End(%struct._SHA512_CTX* %context, i8* %buffer) #0 {
entry:
  %context.addr = alloca %struct._SHA512_CTX*, align 8
  %buffer.addr = alloca i8*, align 8
  %digest = alloca [48 x i8], align 16
  %d = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._SHA512_CTX* %context, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  %0 = bitcast [48 x i8]* %digest to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #2
  %1 = bitcast i8** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %digest, i32 0, i32 0
  store i8* %arraydecay, i8** %d, align 8, !tbaa !1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [48 x i8], [48 x i8]* %digest, i32 0, i32 0
  %4 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  call void @pSHA384_Final(i8* %arraydecay1, %struct._SHA512_CTX* %4) #4
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %5, 48
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %d, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !11
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 240
  %shr = ashr i32 %and, 4
  %idxprom = sext i32 %shr to i64
  %8 = load i8*, i8** @sha2_hex_digits, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %10 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %buffer.addr, align 8, !tbaa !1
  store i8 %9, i8* %10, align 1, !tbaa !11
  %11 = load i8*, i8** %d, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !11
  %conv3 = zext i8 %12 to i32
  %and4 = and i32 %conv3, 15
  %idxprom5 = sext i32 %and4 to i64
  %13 = load i8*, i8** @sha2_hex_digits, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 %idxprom5
  %14 = load i8, i8* %arrayidx6, align 1, !tbaa !11
  %15 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr7, i8** %buffer.addr, align 8, !tbaa !1
  store i8 %14, i8* %15, align 1, !tbaa !11
  %16 = load i8*, i8** %d, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr8, i8** %d, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8 0, i8* %18, align 1, !tbaa !11
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct._SHA512_CTX*, %struct._SHA512_CTX** %context.addr, align 8, !tbaa !1
  %20 = bitcast %struct._SHA512_CTX* %19 to i8*
  %call = call i8* @memset(i8* %20, i32 0, i64 208) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %arraydecay9 = getelementptr inbounds [48 x i8], [48 x i8]* %digest, i32 0, i32 0
  %call10 = call i8* @memset(i8* %arraydecay9, i32 0, i64 48) #3
  %21 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast i8** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast [48 x i8]* %digest to i8*
  call void @llvm.lifetime.end(i64 48, i8* %24) #2
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define i8* @pSHA384_Data(i8* %data, i64 %len, i8* %digest) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %digest.addr = alloca i8*, align 8
  %context = alloca %struct._SHA512_CTX, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %len, i64* %len.addr, align 8, !tbaa !10
  store i8* %digest, i8** %digest.addr, align 8, !tbaa !1
  %0 = bitcast %struct._SHA512_CTX* %context to i8*
  call void @llvm.lifetime.start(i64 208, i8* %0) #2
  call void @pSHA384_Init(%struct._SHA512_CTX* %context) #4
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i64, i64* %len.addr, align 8, !tbaa !10
  call void @pSHA384_Update(%struct._SHA512_CTX* %context, i8* %1, i64 %2) #4
  %3 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %call = call i8* @pSHA384_End(%struct._SHA512_CTX* %context, i8* %3) #4
  %4 = bitcast %struct._SHA512_CTX* %context to i8*
  call void @llvm.lifetime.end(i64 208, i8* %4) #2
  ret i8* %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin nounwind }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 32}
!6 = !{!"_SHA256_CTX", !3, i64 0, !7, i64 32, !3, i64 40}
!7 = !{!"long", !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!3, !3, i64 0}
