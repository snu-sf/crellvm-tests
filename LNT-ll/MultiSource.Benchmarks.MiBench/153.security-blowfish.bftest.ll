; ModuleID = './MultiSource.Benchmarks.MiBench/153.security-blowfish.bftest.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@.str = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Who is John Galt?\00", align 1
@bf_key = global [2 x i8*] [i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)], align 16
@bf_plain = global [2 x [2 x i64]] [[2 x i64] [i64 1112297303, i64 1179210568], [2 x i64] [i64 4275878552, i64 1985229328]], align 16
@bf_cipher = global [2 x [2 x i64]] [[2 x i64] [i64 844026110, i64 4094927363], [2 x i64] [i64 3432084267, i64 2149774980]], align 16
@key_test = global [25 x i8] c"\F0\E1\D2\C3\B4\A5\96\87xiZK<-\1E\0F\00\11\223DUfw\88", align 16
@key_data = global [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
@key_out = global [25 x [8 x i8]] [[8 x i8] c"\F9\ADY|I\DB\00^", [8 x i8] c"\E9\1D!\C1\D9a\A6\D6", [8 x i8] c"\E9\C2\B7\0A\1B\C6\5C\F3", [8 x i8] c"\BE\1Ec\94\08d\0F\05", [8 x i8] c"\B3\9EDH\1B\DB\1En", [8 x i8] c"\94W\AA\83\B1\92\8C\0D", [8 x i8] c"\8B\B7p2\F9`b\9D", [8 x i8] c"\E8z$N,\C8^\82", [8 x i8] c"\15u\0EzON\C5w", [8 x i8] c"\12+\A7\0B:\B6J\E0", [8 x i8] c":\83<\9A\FF\C57\F6", [8 x i8] c"\94\09\DA\87\A9\0Fk\F2", [8 x i8] c"\88O\80bP`\B8\B4", [8 x i8] c"\1F\85\03\1C\19\E1\19h", [8 x i8] c"y\D97:qL\A3O", [8 x i8] c"\93\14(\87\EE;\E1\5C", [8 x i8] c"\03B\9E\83\8C\E2\D1K", [8 x i8] c"\A4)\9E'F\9F\F6{", [8 x i8] c"\AF\D5\AE\D1\C1\BC\96\A8", [8 x i8] c"\10\85\1C\0E8X\DA\9F", [8 x i8] c"\E6\F5\1E\D7\9B\9D\B2\1F", [8 x i8] c"d\A6\E1J\FD6\B4o", [8 x i8] c"\80\C7\D7\D4ZTy\AD", [8 x i8] c"\05\04Kb\FAR\D0\80", [8 x i8] zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [15 x i8] c"ecb test data\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"key bytes\09\09clear bytes\09\09cipher bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@ecb_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"0\00\00\00\00\00\00\00", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] zeroinitializer, [8 x i8] c"\FE\DC\BA\98vT2\10", [8 x i8] c"|\A1\10EJ\1AnW", [8 x i8] c"\011\D9a\9D\C17n", [8 x i8] c"\07\A1\13>J\0B&\86", [8 x i8] c"8IgL&\021\9E", [8 x i8] c"\04\B9\15\BAC\FE\B5\B6", [8 x i8] c"\01\13\B9p\FD4\F2\CE", [8 x i8] c"\01p\F1uF\8F\B5\E6", [8 x i8] c"C)\7F\AD8\E3s\FE", [8 x i8] c"\07\A7\13pE\DA*\16", [8 x i8] c"\04h\91\04\C2\FD;/", [8 x i8] c"7\D0k\B5\16\CBuF", [8 x i8] c"\1F\08&\0D\1A\C2F^", [8 x i8] c"X@#d\1A\BAav", [8 x i8] c"\02X\16\16F)\B0\07", [8 x i8] c"Iy>\BCy\B3%\8F", [8 x i8] c"O\B0^\15\15\ABs\A7", [8 x i8] c"I\E9]mL\A2)\BF", [8 x i8] c"\01\83\10\DC@\9B&\D6", [8 x i8] c"\1CX\7F\1C\13\92O\EF", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FE\DC\BA\98vT2\10"], align 16
@.str.5 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@plain_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\10\00\00\00\00\00\00\01", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] zeroinitializer, [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01\A1\D6\D09wgB", [8 x i8] c"\5C\D5L\A8=\EFW\DA", [8 x i8] c"\02H\D48\06\F6qr", [8 x i8] c"QEKX-\DFD\0A", [8 x i8] c"B\FDD0YW\7F\A2", [8 x i8] c"\05\9B^\08Q\CF\14:", [8 x i8] c"\07V\D8\E0wGa\D2", [8 x i8] c"v%\14\B8)\BFHj", [8 x i8] c";\DD\11\90I7(\02", [8 x i8] c"&\95_h5\AF`\9A", [8 x i8] c"\16M^@O'R2", [8 x i8] c"k\05n\18u\9F\5C\CA", [8 x i8] c"\00K\D6\EF\09\17`b", [8 x i8] c"H\0D9\00n\E7b\F2", [8 x i8] c"Cu@\C8i\8F<\FA", [8 x i8] c"\07-C\A0w\07R\92", [8 x i8] c"\02\FEUw\81\17\F1*", [8 x i8] c"\1D\9D\5CP\18\F7(\C2", [8 x i8] c"0U2(mo)Z", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] zeroinitializer, [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF"], align 16
@cipher_data = internal global [34 x [8 x i8]] [[8 x i8] c"N\F9\97Ea\98\DDx", [8 x i8] c"Q\86o\D5\B8^\CB\8A", [8 x i8] c"}\85o\9Aa0c\F2", [8 x i8] c"$f\DD\87\8B\96<\9D", [8 x i8] c"a\F9\C3\80\22\81\B0\96", [8 x i8] c"}\0C\C60\AF\DA\1E\C7", [8 x i8] c"N\F9\97Ea\98\DDx", [8 x i8] c"\0A\CE\AB\0F\C6\A0\A2\8D", [8 x i8] c"Y\C6\82E\EB\05(+", [8 x i8] c"\B1\B8\CC\0B%\0F\09\A0", [8 x i8] c"\170\E5w\8B\EA\1D\A4", [8 x i8] c"\A2^xV\CF&Q\EB", [8 x i8] c"58\82\B1\09\CE\8F\1A", [8 x i8] c"H\F4\D0\88L7\99\18", [8 x i8] c"C!\93\B7\89Q\FC\98", [8 x i8] c"\13\F0AT\D6\9D\1A\E5", [8 x i8] c".\ED\DA\93\FF\D3\9Cy", [8 x i8] c"\D8\87\E09<-\A6\E3", [8 x i8] c"_\99\D0O[\169i", [8 x i8] c"J\05z;$\D3\97{", [8 x i8] c"E 1\C1\E4\FA\DA\8E", [8 x i8] c"uU\AE9\F5\9B\87\BD", [8 x i8] c"S\C5_\9C\B4\9F\C0\19", [8 x i8] c"z\8E{\FA\93~\89\A3", [8 x i8] c"\CF\9C]zI\86\AD\B5", [8 x i8] c"\D1\AB\B2\90e\8B\C7x", [8 x i8] c"U\CB7t\D1>\F2\01", [8 x i8] c"\FA4\ECHG\B2h\B2", [8 x i8] c"\A7\90yQ\08\EA<\AE", [8 x i8] c"\C3\9E\07-\9F\ACc\1D", [8 x i8] c"\01I3\E0\CD\AF\F6\E4", [8 x i8] c"\F2\1E\9Aw\B7\1CI\BC", [8 x i8] c"$YF\88WT6\9A", [8 x i8] c"k\5CZ\9C]\9E\0AZ"], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"set_key test data\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"data[8]= \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"c=\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" k[%2d]=\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\0Achaining mode test data\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"key[16]   = \00", align 1
@cbc_key = internal global [16 x i8] c"\01#Eg\89\AB\CD\EF\F0\E1\D2\C3\B4\A5\96\87", align 16
@.str.13 = private unnamed_addr constant [14 x i8] c"\0Aiv[8]     = \00", align 1
@cbc_iv = internal global [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"\0Adata[%d]  = '%s'\00", align 1
@cbc_data = internal global [40 x i8] c"7654321 Now is the time for \00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.15 = private unnamed_addr constant [14 x i8] c"\0Adata[%d]  = \00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"cbc cipher text\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"cipher[%d]= \00", align 1
@cbc_ok = internal global [32 x i8] c"kw\B4\D60\06\DE\E6\05\B1V\E2t\03\97\93X\DE\B9\E7\15F\16\D9Y\F1e+\D5\FF\92\CC", align 16
@.str.18 = private unnamed_addr constant [19 x i8] c"cfb64 cipher text\0A\00", align 1
@cfb64_ok = internal global [29 x i8] c"\E72\14\A2\82!9\CA\F2n\CFm.\B9\E7n=\A3\DE\04\D1Qr\00Q\9DW\A6\C3", align 16
@.str.19 = private unnamed_addr constant [19 x i8] c"ofb64 cipher text\0A\00", align 1
@ofb64_ok = internal global [29 x i8] c"\E72\14\A2\82!9\CAb\B3C\CC[eXs\10\DD\90\8D\0C$\1B\22c\C2\CF\80\DA", align 16
@.str.20 = private unnamed_addr constant [34 x i8] c"testing blowfish in raw ecb mode\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"Set key.\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Encrypted.\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"BF_encrypt error encrypting\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"got     :\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"%08lX \00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"expected:\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"decrypted.\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"BF_encrypt error decrypting\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"testing blowfish in ecb mode\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"BF_ecb_encrypt blowfish error encrypting\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"BF_ecb_encrypt error decrypting\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"testing blowfish set_key\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"blowfish setkey error\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"testing blowfish in cbc mode\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"BF_cbc_encrypt encrypt error\0A\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"0x%02X,\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"BF_cbc_encrypt decrypt error\0A\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"testing blowfish in cfb64 mode\0A\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"BF_cfb64_encrypt encrypt error\0A\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"BF_cfb64_encrypt decrypt error\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"testing blowfish in ofb64\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"BF_ofb64_encrypt encrypt error\0A\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"BF_ofb64_encrypt decrypt error\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @print_test_data() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 34
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %1, 8
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %4 to i32
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.19, %for.end
  %6 = load i32, i32* %j, align 4
  %cmp10 = icmp slt i32 %6, 8
  br i1 %cmp10, label %for.body.12, label %for.end.21

for.body.12:                                      ; preds = %for.cond.9
  %7 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx15, i32 0, i64 %idxprom13
  %9 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %9 to i32
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %conv17)
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.12
  %10 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %10, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond.9

for.end.21:                                       ; preds = %for.cond.9
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.33, %for.end.21
  %11 = load i32, i32* %j, align 4
  %cmp24 = icmp slt i32 %11, 8
  br i1 %cmp24, label %for.body.26, label %for.end.35

for.body.26:                                      ; preds = %for.cond.23
  %12 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %13 to i64
  %arrayidx29 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i32 0, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx29, i32 0, i64 %idxprom27
  %14 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %14 to i32
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %conv31)
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.26
  %15 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %15, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond.23

for.end.35:                                       ; preds = %for.cond.23
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.35
  %16 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %16, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.50, %for.end.39
  %17 = load i32, i32* %j, align 4
  %cmp43 = icmp slt i32 %17, 8
  br i1 %cmp43, label %for.body.45, label %for.end.52

for.body.45:                                      ; preds = %for.cond.42
  %18 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %18 to i64
  %arrayidx47 = getelementptr inbounds [8 x i8], [8 x i8]* @key_data, i32 0, i64 %idxprom46
  %19 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %19 to i32
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %conv48)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.45
  %20 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %20, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond.42

for.end.52:                                       ; preds = %for.cond.42
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.86, %for.end.52
  %21 = load i32, i32* %i, align 4
  %cmp55 = icmp slt i32 %21, 24
  br i1 %cmp55, label %for.body.57, label %for.end.88

for.body.57:                                      ; preds = %for.cond.54
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.69, %for.body.57
  %22 = load i32, i32* %j, align 4
  %cmp60 = icmp slt i32 %22, 8
  br i1 %cmp60, label %for.body.62, label %for.end.71

for.body.62:                                      ; preds = %for.cond.59
  %23 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %23 to i64
  %24 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %24 to i64
  %arrayidx65 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i32 0, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx65, i32 0, i64 %idxprom63
  %25 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %25 to i32
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %conv67)
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.62
  %26 = load i32, i32* %j, align 4
  %inc70 = add nsw i32 %26, 1
  store i32 %inc70, i32* %j, align 4
  br label %for.cond.59

for.end.71:                                       ; preds = %for.cond.59
  %27 = load i32, i32* %i, align 4
  %add = add nsw i32 %27, 1
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %add)
  store i32 0, i32* %j, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.82, %for.end.71
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %i, align 4
  %add74 = add nsw i32 %29, 1
  %cmp75 = icmp slt i32 %28, %add74
  br i1 %cmp75, label %for.body.77, label %for.end.84

for.body.77:                                      ; preds = %for.cond.73
  %30 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %30 to i64
  %arrayidx79 = getelementptr inbounds [25 x i8], [25 x i8]* @key_test, i32 0, i64 %idxprom78
  %31 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %31 to i32
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %conv80)
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.77
  %32 = load i32, i32* %j, align 4
  %inc83 = add nsw i32 %32, 1
  store i32 %inc83, i32* %j, align 4
  br label %for.cond.73

for.end.84:                                       ; preds = %for.cond.73
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.end.84
  %33 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %33, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond.54

for.end.88:                                       ; preds = %for.cond.54
  %call89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  %call90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.99, %for.end.88
  %34 = load i32, i32* %j, align 4
  %cmp92 = icmp slt i32 %34, 16
  br i1 %cmp92, label %for.body.94, label %for.end.101

for.body.94:                                      ; preds = %for.cond.91
  %35 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %35 to i64
  %arrayidx96 = getelementptr inbounds [16 x i8], [16 x i8]* @cbc_key, i32 0, i64 %idxprom95
  %36 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %36 to i32
  %call98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %conv97)
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.94
  %37 = load i32, i32* %j, align 4
  %inc100 = add nsw i32 %37, 1
  store i32 %inc100, i32* %j, align 4
  br label %for.cond.91

for.end.101:                                      ; preds = %for.cond.91
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.111, %for.end.101
  %38 = load i32, i32* %j, align 4
  %cmp104 = icmp slt i32 %38, 8
  br i1 %cmp104, label %for.body.106, label %for.end.113

for.body.106:                                     ; preds = %for.cond.103
  %39 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %39 to i64
  %arrayidx108 = getelementptr inbounds [8 x i8], [8 x i8]* @cbc_iv, i32 0, i64 %idxprom107
  %40 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %40 to i32
  %call110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %conv109)
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.106
  %41 = load i32, i32* %j, align 4
  %inc112 = add nsw i32 %41, 1
  store i32 %inc112, i32* %j, align 4
  br label %for.cond.103

for.end.113:                                      ; preds = %for.cond.103
  %call114 = call i64 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0)) #5
  %add115 = add i64 %call114, 1
  %call116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i64 %add115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0))
  %call117 = call i64 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0)) #5
  %add118 = add i64 %call117, 1
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i64 %add118)
  store i32 0, i32* %j, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.131, %for.end.113
  %42 = load i32, i32* %j, align 4
  %conv121 = sext i32 %42 to i64
  %call122 = call i64 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0)) #5
  %add123 = add i64 %call122, 1
  %cmp124 = icmp ult i64 %conv121, %add123
  br i1 %cmp124, label %for.body.126, label %for.end.133

for.body.126:                                     ; preds = %for.cond.120
  %43 = load i32, i32* %j, align 4
  %idxprom127 = sext i32 %43 to i64
  %arrayidx128 = getelementptr inbounds [40 x i8], [40 x i8]* @cbc_data, i32 0, i64 %idxprom127
  %44 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %44 to i32
  %call130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %conv129)
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.126
  %45 = load i32, i32* %j, align 4
  %inc132 = add nsw i32 %45, 1
  store i32 %inc132, i32* %j, align 4
  br label %for.cond.120

for.end.133:                                      ; preds = %for.cond.120
  %call134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %call135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0))
  %call136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 32)
  store i32 0, i32* %j, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.145, %for.end.133
  %46 = load i32, i32* %j, align 4
  %cmp138 = icmp slt i32 %46, 32
  br i1 %cmp138, label %for.body.140, label %for.end.147

for.body.140:                                     ; preds = %for.cond.137
  %47 = load i32, i32* %j, align 4
  %idxprom141 = sext i32 %47 to i64
  %arrayidx142 = getelementptr inbounds [32 x i8], [32 x i8]* @cbc_ok, i32 0, i64 %idxprom141
  %48 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %48 to i32
  %call144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %conv143)
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.body.140
  %49 = load i32, i32* %j, align 4
  %inc146 = add nsw i32 %49, 1
  store i32 %inc146, i32* %j, align 4
  br label %for.cond.137

for.end.147:                                      ; preds = %for.cond.137
  %call148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %call149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0))
  %call150 = call i64 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0)) #5
  %add151 = add i64 %call150, 1
  %call152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i64 %add151)
  store i32 0, i32* %j, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.164, %for.end.147
  %50 = load i32, i32* %j, align 4
  %conv154 = sext i32 %50 to i64
  %call155 = call i64 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0)) #5
  %add156 = add i64 %call155, 1
  %cmp157 = icmp ult i64 %conv154, %add156
  br i1 %cmp157, label %for.body.159, label %for.end.166

for.body.159:                                     ; preds = %for.cond.153
  %51 = load i32, i32* %j, align 4
  %idxprom160 = sext i32 %51 to i64
  %arrayidx161 = getelementptr inbounds [29 x i8], [29 x i8]* @cfb64_ok, i32 0, i64 %idxprom160
  %52 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %52 to i32
  %call163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %conv162)
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.body.159
  %53 = load i32, i32* %j, align 4
  %inc165 = add nsw i32 %53, 1
  store i32 %inc165, i32* %j, align 4
  br label %for.cond.153

for.end.166:                                      ; preds = %for.cond.153
  %call167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %call168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0))
  %call169 = call i64 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0)) #5
  %add170 = add i64 %call169, 1
  %call171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i64 %add170)
  store i32 0, i32* %j, align 4
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.183, %for.end.166
  %54 = load i32, i32* %j, align 4
  %conv173 = sext i32 %54 to i64
  %call174 = call i64 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0)) #5
  %add175 = add i64 %call174, 1
  %cmp176 = icmp ult i64 %conv173, %add175
  br i1 %cmp176, label %for.body.178, label %for.end.185

for.body.178:                                     ; preds = %for.cond.172
  %55 = load i32, i32* %j, align 4
  %idxprom179 = sext i32 %55 to i64
  %arrayidx180 = getelementptr inbounds [29 x i8], [29 x i8]* @ofb64_ok, i32 0, i64 %idxprom179
  %56 = load i8, i8* %arrayidx180, align 1
  %conv181 = zext i8 %56 to i32
  %call182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %conv181)
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.body.178
  %57 = load i32, i32* %j, align 4
  %inc184 = add nsw i32 %57, 1
  store i32 %inc184, i32* %j, align 4
  br label %for.cond.172

for.end.185:                                      ; preds = %for.cond.172
  %call186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @print_test_data()
  store i32 %call, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i32 @test()
  store i32 %call1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %ret, align 4
  call void @exit(i32 %1) #6
  unreachable

return:                                           ; No predecessors!
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define i32 @test() #0 {
entry:
  %cbc_in = alloca [40 x i8], align 16
  %cbc_out = alloca [40 x i8], align 16
  %iv = alloca [8 x i8], align 1
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %err = alloca i32, align 4
  %key = alloca %struct.bf_key_st, align 8
  %data = alloca [2 x i64], align 16
  %out = alloca [8 x i8], align 1
  %len = alloca i64, align 8
  store i32 0, i32* %err, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.83, %entry
  %0 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end.85

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %n, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @bf_key, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %call1 = call i64 @strlen(i8* %2) #5
  %conv = trunc i64 %call1 to i32
  %3 = load i32, i32* %n, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [2 x i8*], [2 x i8*]* @bf_key, i32 0, i64 %idxprom2
  %4 = load i8*, i8** %arrayidx3, align 8
  call void @BF_set_key(%struct.bf_key_st* %key, i32 %conv, i8* %4)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0))
  %5 = load i32, i32* %n, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_plain, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx6, i32 0, i64 0
  %6 = load i64, i64* %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds [2 x i64], [2 x i64]* %data, i32 0, i64 0
  store i64 %6, i64* %arrayidx8, align 8
  %7 = load i32, i32* %n, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_plain, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx10, i32 0, i64 1
  %8 = load i64, i64* %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds [2 x i64], [2 x i64]* %data, i32 0, i64 1
  store i64 %8, i64* %arrayidx12, align 8
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %data, i32 0, i32 0
  call void @BF_encrypt(i64* %arraydecay, %struct.bf_key_st* %key, i32 1)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0))
  %9 = load i32, i32* %n, align 4
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_cipher, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx15, i32 0, i64 0
  %10 = bitcast i64* %arrayidx16 to i8*
  %arrayidx17 = getelementptr inbounds [2 x i64], [2 x i64]* %data, i32 0, i64 0
  %11 = bitcast i64* %arrayidx17 to i8*
  %call18 = call i32 @memcmp(i8* %10, i8* %11, i64 8) #5
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0))
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %if.then
  %12 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %12, 2
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.23
  %13 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %13 to i64
  %arrayidx28 = getelementptr inbounds [2 x i64], [2 x i64]* %data, i32 0, i64 %idxprom27
  %14 = load i64, i64* %arrayidx28, align 8
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i64 %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.41, %for.end
  %16 = load i32, i32* %i, align 4
  %cmp33 = icmp slt i32 %16, 2
  br i1 %cmp33, label %for.body.35, label %for.end.43

for.body.35:                                      ; preds = %for.cond.32
  %17 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %17 to i64
  %18 = load i32, i32* %n, align 4
  %idxprom37 = sext i32 %18 to i64
  %arrayidx38 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_cipher, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx38, i32 0, i64 %idxprom36
  %19 = load i64, i64* %arrayidx39, align 8
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i64 %19)
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.35
  %20 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %20, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.32

for.end.43:                                       ; preds = %for.cond.32
  store i32 1, i32* %err, align 4
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end.43, %for.body
  %arrayidx45 = getelementptr inbounds [2 x i64], [2 x i64]* %data, i32 0, i64 0
  call void @BF_encrypt(i64* %arrayidx45, %struct.bf_key_st* %key, i32 0)
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0))
  %21 = load i32, i32* %n, align 4
  %idxprom47 = sext i32 %21 to i64
  %arrayidx48 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_plain, i32 0, i64 %idxprom47
  %arrayidx49 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx48, i32 0, i64 0
  %22 = bitcast i64* %arrayidx49 to i8*
  %arrayidx50 = getelementptr inbounds [2 x i64], [2 x i64]* %data, i32 0, i64 0
  %23 = bitcast i64* %arrayidx50 to i8*
  %call51 = call i32 @memcmp(i8* %22, i8* %23, i64 8) #5
  %cmp52 = icmp ne i32 %call51, 0
  br i1 %cmp52, label %if.then.54, label %if.end.82

if.then.54:                                       ; preds = %if.end
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0))
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.64, %if.then.54
  %24 = load i32, i32* %i, align 4
  %cmp58 = icmp slt i32 %24, 2
  br i1 %cmp58, label %for.body.60, label %for.end.66

for.body.60:                                      ; preds = %for.cond.57
  %25 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %25 to i64
  %arrayidx62 = getelementptr inbounds [2 x i64], [2 x i64]* %data, i32 0, i64 %idxprom61
  %26 = load i64, i64* %arrayidx62, align 8
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i64 %26)
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.60
  %27 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %27, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.57

for.end.66:                                       ; preds = %for.cond.57
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.78, %for.end.66
  %28 = load i32, i32* %i, align 4
  %cmp70 = icmp slt i32 %28, 2
  br i1 %cmp70, label %for.body.72, label %for.end.80

for.body.72:                                      ; preds = %for.cond.69
  %29 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %29 to i64
  %30 = load i32, i32* %n, align 4
  %idxprom74 = sext i32 %30 to i64
  %arrayidx75 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_plain, i32 0, i64 %idxprom74
  %arrayidx76 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx75, i32 0, i64 %idxprom73
  %31 = load i64, i64* %arrayidx76, align 8
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i64 %31)
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.72
  %32 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %32, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond.69

for.end.80:                                       ; preds = %for.cond.69
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* %err, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %for.end.80, %if.end
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %33 = load i32, i32* %n, align 4
  %inc84 = add nsw i32 %33, 1
  store i32 %inc84, i32* %n, align 4
  br label %for.cond

for.end.85:                                       ; preds = %for.cond
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0))
  store i32 0, i32* %n, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.176, %for.end.85
  %34 = load i32, i32* %n, align 4
  %cmp88 = icmp slt i32 %34, 34
  br i1 %cmp88, label %for.body.90, label %for.end.178

for.body.90:                                      ; preds = %for.cond.87
  %35 = load i32, i32* %n, align 4
  %idxprom91 = sext i32 %35 to i64
  %arrayidx92 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i32 0, i64 %idxprom91
  %arraydecay93 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx92, i32 0, i32 0
  call void @BF_set_key(%struct.bf_key_st* %key, i32 8, i8* %arraydecay93)
  %36 = load i32, i32* %n, align 4
  %idxprom94 = sext i32 %36 to i64
  %arrayidx95 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i32 0, i64 %idxprom94
  %arrayidx96 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx95, i32 0, i64 0
  %arraydecay97 = getelementptr inbounds [8 x i8], [8 x i8]* %out, i32 0, i32 0
  call void @BF_ecb_encrypt(i8* %arrayidx96, i8* %arraydecay97, %struct.bf_key_st* %key, i32 1)
  %37 = load i32, i32* %n, align 4
  %idxprom98 = sext i32 %37 to i64
  %arrayidx99 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i32 0, i64 %idxprom98
  %arrayidx100 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx99, i32 0, i64 0
  %arraydecay101 = getelementptr inbounds [8 x i8], [8 x i8]* %out, i32 0, i32 0
  %call102 = call i32 @memcmp(i8* %arrayidx100, i8* %arraydecay101, i64 8) #5
  %cmp103 = icmp ne i32 %call102, 0
  br i1 %cmp103, label %if.then.105, label %if.end.135

if.then.105:                                      ; preds = %for.body.90
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0))
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.116, %if.then.105
  %38 = load i32, i32* %i, align 4
  %cmp109 = icmp slt i32 %38, 8
  br i1 %cmp109, label %for.body.111, label %for.end.118

for.body.111:                                     ; preds = %for.cond.108
  %39 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %39 to i64
  %arrayidx113 = getelementptr inbounds [8 x i8], [8 x i8]* %out, i32 0, i64 %idxprom112
  %40 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %40 to i32
  %call115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %conv114)
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body.111
  %41 = load i32, i32* %i, align 4
  %inc117 = add nsw i32 %41, 1
  store i32 %inc117, i32* %i, align 4
  br label %for.cond.108

for.end.118:                                      ; preds = %for.cond.108
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %call120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.131, %for.end.118
  %42 = load i32, i32* %i, align 4
  %cmp122 = icmp slt i32 %42, 8
  br i1 %cmp122, label %for.body.124, label %for.end.133

for.body.124:                                     ; preds = %for.cond.121
  %43 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %43 to i64
  %44 = load i32, i32* %n, align 4
  %idxprom126 = sext i32 %44 to i64
  %arrayidx127 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i32 0, i64 %idxprom126
  %arrayidx128 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx127, i32 0, i64 %idxprom125
  %45 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %45 to i32
  %call130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %conv129)
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.124
  %46 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %46, 1
  store i32 %inc132, i32* %i, align 4
  br label %for.cond.121

for.end.133:                                      ; preds = %for.cond.121
  store i32 1, i32* %err, align 4
  %call134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.135

if.end.135:                                       ; preds = %for.end.133, %for.body.90
  %arraydecay136 = getelementptr inbounds [8 x i8], [8 x i8]* %out, i32 0, i32 0
  %arraydecay137 = getelementptr inbounds [8 x i8], [8 x i8]* %out, i32 0, i32 0
  call void @BF_ecb_encrypt(i8* %arraydecay136, i8* %arraydecay137, %struct.bf_key_st* %key, i32 0)
  %47 = load i32, i32* %n, align 4
  %idxprom138 = sext i32 %47 to i64
  %arrayidx139 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i32 0, i64 %idxprom138
  %arrayidx140 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx139, i32 0, i64 0
  %arraydecay141 = getelementptr inbounds [8 x i8], [8 x i8]* %out, i32 0, i32 0
  %call142 = call i32 @memcmp(i8* %arrayidx140, i8* %arraydecay141, i64 8) #5
  %cmp143 = icmp ne i32 %call142, 0
  br i1 %cmp143, label %if.then.145, label %if.end.175

if.then.145:                                      ; preds = %if.end.135
  %call146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i32 0, i32 0))
  %call147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.156, %if.then.145
  %48 = load i32, i32* %i, align 4
  %cmp149 = icmp slt i32 %48, 8
  br i1 %cmp149, label %for.body.151, label %for.end.158

for.body.151:                                     ; preds = %for.cond.148
  %49 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %49 to i64
  %arrayidx153 = getelementptr inbounds [8 x i8], [8 x i8]* %out, i32 0, i64 %idxprom152
  %50 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %50 to i32
  %call155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %conv154)
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.body.151
  %51 = load i32, i32* %i, align 4
  %inc157 = add nsw i32 %51, 1
  store i32 %inc157, i32* %i, align 4
  br label %for.cond.148

for.end.158:                                      ; preds = %for.cond.148
  %call159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %call160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.171, %for.end.158
  %52 = load i32, i32* %i, align 4
  %cmp162 = icmp slt i32 %52, 8
  br i1 %cmp162, label %for.body.164, label %for.end.173

for.body.164:                                     ; preds = %for.cond.161
  %53 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %53 to i64
  %54 = load i32, i32* %n, align 4
  %idxprom166 = sext i32 %54 to i64
  %arrayidx167 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i32 0, i64 %idxprom166
  %arrayidx168 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx167, i32 0, i64 %idxprom165
  %55 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %55 to i32
  %call170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %conv169)
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.body.164
  %56 = load i32, i32* %i, align 4
  %inc172 = add nsw i32 %56, 1
  store i32 %inc172, i32* %i, align 4
  br label %for.cond.161

for.end.173:                                      ; preds = %for.cond.161
  %call174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* %err, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %for.end.173, %if.end.135
  br label %for.inc.176

for.inc.176:                                      ; preds = %if.end.175
  %57 = load i32, i32* %n, align 4
  %inc177 = add nsw i32 %57, 1
  store i32 %inc177, i32* %n, align 4
  br label %for.cond.87

for.end.178:                                      ; preds = %for.cond.87
  %call179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0))
  store i32 1, i32* %n, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.195, %for.end.178
  %58 = load i32, i32* %n, align 4
  %cmp181 = icmp slt i32 %58, 25
  br i1 %cmp181, label %for.body.183, label %for.end.197

for.body.183:                                     ; preds = %for.cond.180
  %59 = load i32, i32* %n, align 4
  call void @BF_set_key(%struct.bf_key_st* %key, i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @key_test, i32 0, i32 0))
  %arraydecay184 = getelementptr inbounds [8 x i8], [8 x i8]* %out, i32 0, i32 0
  call void @BF_ecb_encrypt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @key_data, i32 0, i32 0), i8* %arraydecay184, %struct.bf_key_st* %key, i32 1)
  %arraydecay185 = getelementptr inbounds [8 x i8], [8 x i8]* %out, i32 0, i32 0
  %60 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %60, 1
  %idxprom186 = sext i32 %sub to i64
  %arrayidx187 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i32 0, i64 %idxprom186
  %arrayidx188 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx187, i32 0, i64 0
  %call189 = call i32 @memcmp(i8* %arraydecay185, i8* %arrayidx188, i64 8) #5
  %cmp190 = icmp ne i32 %call189, 0
  br i1 %cmp190, label %if.then.192, label %if.end.194

if.then.192:                                      ; preds = %for.body.183
  %call193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0))
  store i32 1, i32* %err, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.192, %for.body.183
  br label %for.inc.195

for.inc.195:                                      ; preds = %if.end.194
  %61 = load i32, i32* %n, align 4
  %inc196 = add nsw i32 %61, 1
  store i32 %inc196, i32* %n, align 4
  br label %for.cond.180

for.end.197:                                      ; preds = %for.cond.180
  %call198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0))
  %call199 = call i64 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0)) #5
  %add = add i64 %call199, 1
  store i64 %add, i64* %len, align 8
  call void @BF_set_key(%struct.bf_key_st* %key, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i32 0, i32 0))
  %62 = bitcast [40 x i8]* %cbc_in to i8*
  call void @llvm.memset.p0i8.i64(i8* %62, i8 0, i64 40, i32 16, i1 false)
  %63 = bitcast [40 x i8]* %cbc_out to i8*
  call void @llvm.memset.p0i8.i64(i8* %63, i8 0, i64 40, i32 16, i1 false)
  %64 = bitcast [8 x i8]* %iv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i64 8, i32 1, i1 false)
  %arraydecay200 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i32 0
  %65 = load i64, i64* %len, align 8
  %arraydecay201 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i32 0, i32 0
  call void @BF_cbc_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i8* %arraydecay200, i64 %65, %struct.bf_key_st* %key, i8* %arraydecay201, i32 1)
  %arraydecay202 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i32 0
  %call203 = call i32 @memcmp(i8* %arraydecay202, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i32 0, i32 0), i64 32) #5
  %cmp204 = icmp ne i32 %call203, 0
  br i1 %cmp204, label %if.then.206, label %if.end.219

if.then.206:                                      ; preds = %for.end.197
  store i32 1, i32* %err, align 4
  %call207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.216, %if.then.206
  %66 = load i32, i32* %i, align 4
  %cmp209 = icmp slt i32 %66, 32
  br i1 %cmp209, label %for.body.211, label %for.end.218

for.body.211:                                     ; preds = %for.cond.208
  %67 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %67 to i64
  %arrayidx213 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i64 %idxprom212
  %68 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %68 to i32
  %call215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 %conv214)
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.body.211
  %69 = load i32, i32* %i, align 4
  %inc217 = add nsw i32 %69, 1
  store i32 %inc217, i32* %i, align 4
  br label %for.cond.208

for.end.218:                                      ; preds = %for.cond.208
  br label %if.end.219

if.end.219:                                       ; preds = %for.end.218, %for.end.197
  %70 = bitcast [8 x i8]* %iv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i64 8, i32 1, i1 false)
  %arraydecay220 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i32 0
  %arraydecay221 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i32 0, i32 0
  %71 = load i64, i64* %len, align 8
  %arraydecay222 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i32 0, i32 0
  call void @BF_cbc_encrypt(i8* %arraydecay220, i8* %arraydecay221, i64 %71, %struct.bf_key_st* %key, i8* %arraydecay222, i32 0)
  %arraydecay223 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i32 0, i32 0
  %call224 = call i64 @strlen(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0)) #5
  %add225 = add i64 %call224, 1
  %call226 = call i32 @memcmp(i8* %arraydecay223, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i64 %add225) #5
  %cmp227 = icmp ne i32 %call226, 0
  br i1 %cmp227, label %if.then.229, label %if.end.231

if.then.229:                                      ; preds = %if.end.219
  %call230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i32 0, i32 0))
  store i32 1, i32* %err, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.229, %if.end.219
  %call232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i32 0, i32 0))
  call void @BF_set_key(%struct.bf_key_st* %key, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i32 0, i32 0))
  %72 = bitcast [40 x i8]* %cbc_in to i8*
  call void @llvm.memset.p0i8.i64(i8* %72, i8 0, i64 40, i32 16, i1 false)
  %73 = bitcast [40 x i8]* %cbc_out to i8*
  call void @llvm.memset.p0i8.i64(i8* %73, i8 0, i64 40, i32 16, i1 false)
  %74 = bitcast [8 x i8]* %iv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i64 8, i32 1, i1 false)
  store i32 0, i32* %n, align 4
  %arraydecay233 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i32 0
  %arraydecay234 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i32 0, i32 0
  call void @BF_cfb64_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i8* %arraydecay233, i64 13, %struct.bf_key_st* %key, i8* %arraydecay234, i32* %n, i32 1)
  %arrayidx235 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i64 13
  %75 = load i64, i64* %len, align 8
  %sub236 = sub i64 %75, 13
  %arraydecay237 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i32 0, i32 0
  call void @BF_cfb64_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i64 13), i8* %arrayidx235, i64 %sub236, %struct.bf_key_st* %key, i8* %arraydecay237, i32* %n, i32 1)
  %arraydecay238 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i32 0
  %76 = load i64, i64* %len, align 8
  %conv239 = trunc i64 %76 to i32
  %conv240 = sext i32 %conv239 to i64
  %call241 = call i32 @memcmp(i8* %arraydecay238, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @cfb64_ok, i32 0, i32 0), i64 %conv240) #5
  %cmp242 = icmp ne i32 %call241, 0
  br i1 %cmp242, label %if.then.244, label %if.end.258

if.then.244:                                      ; preds = %if.end.231
  store i32 1, i32* %err, align 4
  %call245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.255, %if.then.244
  %77 = load i32, i32* %i, align 4
  %78 = load i64, i64* %len, align 8
  %conv247 = trunc i64 %78 to i32
  %cmp248 = icmp slt i32 %77, %conv247
  br i1 %cmp248, label %for.body.250, label %for.end.257

for.body.250:                                     ; preds = %for.cond.246
  %79 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %79 to i64
  %arrayidx252 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i64 %idxprom251
  %80 = load i8, i8* %arrayidx252, align 1
  %conv253 = zext i8 %80 to i32
  %call254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 %conv253)
  br label %for.inc.255

for.inc.255:                                      ; preds = %for.body.250
  %81 = load i32, i32* %i, align 4
  %inc256 = add nsw i32 %81, 1
  store i32 %inc256, i32* %i, align 4
  br label %for.cond.246

for.end.257:                                      ; preds = %for.cond.246
  br label %if.end.258

if.end.258:                                       ; preds = %for.end.257, %if.end.231
  store i32 0, i32* %n, align 4
  %82 = bitcast [8 x i8]* %iv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i64 8, i32 1, i1 false)
  %arraydecay259 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i32 0
  %arraydecay260 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i32 0, i32 0
  %arraydecay261 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i32 0, i32 0
  call void @BF_cfb64_encrypt(i8* %arraydecay259, i8* %arraydecay260, i64 17, %struct.bf_key_st* %key, i8* %arraydecay261, i32* %n, i32 0)
  %arrayidx262 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i64 17
  %arrayidx263 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i32 0, i64 17
  %83 = load i64, i64* %len, align 8
  %sub264 = sub i64 %83, 17
  %arraydecay265 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i32 0, i32 0
  call void @BF_cfb64_encrypt(i8* %arrayidx262, i8* %arrayidx263, i64 %sub264, %struct.bf_key_st* %key, i8* %arraydecay265, i32* %n, i32 0)
  %arraydecay266 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i32 0, i32 0
  %84 = load i64, i64* %len, align 8
  %conv267 = trunc i64 %84 to i32
  %conv268 = sext i32 %conv267 to i64
  %call269 = call i32 @memcmp(i8* %arraydecay266, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i64 %conv268) #5
  %cmp270 = icmp ne i32 %call269, 0
  br i1 %cmp270, label %if.then.272, label %if.end.274

if.then.272:                                      ; preds = %if.end.258
  %call273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i32 0, i32 0))
  store i32 1, i32* %err, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.272, %if.end.258
  %call275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i32 0, i32 0))
  call void @BF_set_key(%struct.bf_key_st* %key, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i32 0, i32 0))
  %85 = bitcast [40 x i8]* %cbc_in to i8*
  call void @llvm.memset.p0i8.i64(i8* %85, i8 0, i64 40, i32 16, i1 false)
  %86 = bitcast [40 x i8]* %cbc_out to i8*
  call void @llvm.memset.p0i8.i64(i8* %86, i8 0, i64 40, i32 16, i1 false)
  %87 = bitcast [8 x i8]* %iv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i64 8, i32 1, i1 false)
  store i32 0, i32* %n, align 4
  %arraydecay276 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i32 0
  %arraydecay277 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i32 0, i32 0
  call void @BF_ofb64_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i8* %arraydecay276, i64 13, %struct.bf_key_st* %key, i8* %arraydecay277, i32* %n)
  %arrayidx278 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i64 13
  %88 = load i64, i64* %len, align 8
  %sub279 = sub i64 %88, 13
  %arraydecay280 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i32 0, i32 0
  call void @BF_ofb64_encrypt(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i64 13), i8* %arrayidx278, i64 %sub279, %struct.bf_key_st* %key, i8* %arraydecay280, i32* %n)
  %arraydecay281 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i32 0
  %89 = load i64, i64* %len, align 8
  %conv282 = trunc i64 %89 to i32
  %conv283 = sext i32 %conv282 to i64
  %call284 = call i32 @memcmp(i8* %arraydecay281, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ofb64_ok, i32 0, i32 0), i64 %conv283) #5
  %cmp285 = icmp ne i32 %call284, 0
  br i1 %cmp285, label %if.then.287, label %if.end.301

if.then.287:                                      ; preds = %if.end.274
  store i32 1, i32* %err, align 4
  %call288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.289

for.cond.289:                                     ; preds = %for.inc.298, %if.then.287
  %90 = load i32, i32* %i, align 4
  %91 = load i64, i64* %len, align 8
  %conv290 = trunc i64 %91 to i32
  %cmp291 = icmp slt i32 %90, %conv290
  br i1 %cmp291, label %for.body.293, label %for.end.300

for.body.293:                                     ; preds = %for.cond.289
  %92 = load i32, i32* %i, align 4
  %idxprom294 = sext i32 %92 to i64
  %arrayidx295 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i64 %idxprom294
  %93 = load i8, i8* %arrayidx295, align 1
  %conv296 = zext i8 %93 to i32
  %call297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 %conv296)
  br label %for.inc.298

for.inc.298:                                      ; preds = %for.body.293
  %94 = load i32, i32* %i, align 4
  %inc299 = add nsw i32 %94, 1
  store i32 %inc299, i32* %i, align 4
  br label %for.cond.289

for.end.300:                                      ; preds = %for.cond.289
  br label %if.end.301

if.end.301:                                       ; preds = %for.end.300, %if.end.274
  store i32 0, i32* %n, align 4
  %95 = bitcast [8 x i8]* %iv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i32 0, i32 0), i64 8, i32 1, i1 false)
  %arraydecay302 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i32 0
  %arraydecay303 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i32 0, i32 0
  %arraydecay304 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i32 0, i32 0
  call void @BF_ofb64_encrypt(i8* %arraydecay302, i8* %arraydecay303, i64 17, %struct.bf_key_st* %key, i8* %arraydecay304, i32* %n)
  %arrayidx305 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_out, i32 0, i64 17
  %arrayidx306 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i32 0, i64 17
  %96 = load i64, i64* %len, align 8
  %sub307 = sub i64 %96, 17
  %arraydecay308 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i32 0, i32 0
  call void @BF_ofb64_encrypt(i8* %arrayidx305, i8* %arrayidx306, i64 %sub307, %struct.bf_key_st* %key, i8* %arraydecay308, i32* %n)
  %arraydecay309 = getelementptr inbounds [40 x i8], [40 x i8]* %cbc_in, i32 0, i32 0
  %97 = load i64, i64* %len, align 8
  %conv310 = trunc i64 %97 to i32
  %conv311 = sext i32 %conv310 to i64
  %call312 = call i32 @memcmp(i8* %arraydecay309, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i32 0, i32 0), i64 %conv311) #5
  %cmp313 = icmp ne i32 %call312, 0
  br i1 %cmp313, label %if.then.315, label %if.end.317

if.then.315:                                      ; preds = %if.end.301
  %call316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i32 0, i32 0))
  store i32 1, i32* %err, align 4
  br label %if.end.317

if.end.317:                                       ; preds = %if.then.315, %if.end.301
  %98 = load i32, i32* %err, align 4
  ret i32 %98
}

declare void @BF_set_key(%struct.bf_key_st*, i32, i8*) #1

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

declare void @BF_ecb_encrypt(i8*, i8*, %struct.bf_key_st*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @BF_cbc_encrypt(i8*, i8*, i64, %struct.bf_key_st*, i8*, i32) #1

declare void @BF_cfb64_encrypt(i8*, i8*, i64, %struct.bf_key_st*, i8*, i32*, i32) #1

declare void @BF_ofb64_encrypt(i8*, i8*, i64, %struct.bf_key_st*, i8*, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
