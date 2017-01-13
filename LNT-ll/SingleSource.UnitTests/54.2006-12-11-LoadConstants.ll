; ModuleID = './SingleSource.UnitTests/54.2006-12-11-LoadConstants.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%016llx\0A\00", align 1

; Function Attrs: nounwind uwtable
define i64 @zz() #0 {
entry:
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @zs() #0 {
entry:
  ret i64 65535
}

; Function Attrs: nounwind uwtable
define i64 @zu() #0 {
entry:
  ret i64 32767
}

; Function Attrs: nounwind uwtable
define i64 @sz() #0 {
entry:
  ret i64 4294901760
}

; Function Attrs: nounwind uwtable
define i64 @ss() #0 {
entry:
  ret i64 4294967295
}

; Function Attrs: nounwind uwtable
define i64 @su() #0 {
entry:
  ret i64 4294934527
}

; Function Attrs: nounwind uwtable
define i64 @uz() #0 {
entry:
  ret i64 2147418112
}

; Function Attrs: nounwind uwtable
define i64 @us() #0 {
entry:
  ret i64 2147483647
}

; Function Attrs: nounwind uwtable
define i64 @uu() #0 {
entry:
  ret i64 2147450879
}

; Function Attrs: nounwind uwtable
define i64 @zzzz() #0 {
entry:
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @zzzs() #0 {
entry:
  ret i64 65535
}

; Function Attrs: nounwind uwtable
define i64 @zzzu() #0 {
entry:
  ret i64 32767
}

; Function Attrs: nounwind uwtable
define i64 @zzsz() #0 {
entry:
  ret i64 4294901760
}

; Function Attrs: nounwind uwtable
define i64 @zzss() #0 {
entry:
  ret i64 4294967295
}

; Function Attrs: nounwind uwtable
define i64 @zzsu() #0 {
entry:
  ret i64 4294934527
}

; Function Attrs: nounwind uwtable
define i64 @zzuz() #0 {
entry:
  ret i64 2147418112
}

; Function Attrs: nounwind uwtable
define i64 @zzus() #0 {
entry:
  ret i64 2147483647
}

; Function Attrs: nounwind uwtable
define i64 @zzuu() #0 {
entry:
  ret i64 2147450879
}

; Function Attrs: nounwind uwtable
define i64 @zszz() #0 {
entry:
  ret i64 281470681743360
}

; Function Attrs: nounwind uwtable
define i64 @zszs() #0 {
entry:
  ret i64 281470681808895
}

; Function Attrs: nounwind uwtable
define i64 @zszu() #0 {
entry:
  ret i64 281470681776127
}

; Function Attrs: nounwind uwtable
define i64 @zssz() #0 {
entry:
  ret i64 281474976645120
}

; Function Attrs: nounwind uwtable
define i64 @zsss() #0 {
entry:
  ret i64 281474976710655
}

; Function Attrs: nounwind uwtable
define i64 @zssu() #0 {
entry:
  ret i64 281474976677887
}

; Function Attrs: nounwind uwtable
define i64 @zsuz() #0 {
entry:
  ret i64 281472829161472
}

; Function Attrs: nounwind uwtable
define i64 @zsus() #0 {
entry:
  ret i64 281472829227007
}

; Function Attrs: nounwind uwtable
define i64 @zsuu() #0 {
entry:
  ret i64 281472829194239
}

; Function Attrs: nounwind uwtable
define i64 @zuzz() #0 {
entry:
  ret i64 140733193388032
}

; Function Attrs: nounwind uwtable
define i64 @zuzs() #0 {
entry:
  ret i64 140733193453567
}

; Function Attrs: nounwind uwtable
define i64 @zuzu() #0 {
entry:
  ret i64 140733193420799
}

; Function Attrs: nounwind uwtable
define i64 @zusz() #0 {
entry:
  ret i64 140737488289792
}

; Function Attrs: nounwind uwtable
define i64 @zuss() #0 {
entry:
  ret i64 140737488355327
}

; Function Attrs: nounwind uwtable
define i64 @zusu() #0 {
entry:
  ret i64 140737488322559
}

; Function Attrs: nounwind uwtable
define i64 @zuuz() #0 {
entry:
  ret i64 140735340806144
}

; Function Attrs: nounwind uwtable
define i64 @zuus() #0 {
entry:
  ret i64 140735340871679
}

; Function Attrs: nounwind uwtable
define i64 @zuuu() #0 {
entry:
  ret i64 140735340838911
}

; Function Attrs: nounwind uwtable
define i64 @szzz() #0 {
entry:
  ret i64 -281474976710656
}

; Function Attrs: nounwind uwtable
define i64 @szzs() #0 {
entry:
  ret i64 -281474976645121
}

; Function Attrs: nounwind uwtable
define i64 @szzu() #0 {
entry:
  ret i64 -281474976677889
}

; Function Attrs: nounwind uwtable
define i64 @szsz() #0 {
entry:
  ret i64 -281470681808896
}

; Function Attrs: nounwind uwtable
define i64 @szss() #0 {
entry:
  ret i64 -281470681743361
}

; Function Attrs: nounwind uwtable
define i64 @szsu() #0 {
entry:
  ret i64 -281470681776129
}

; Function Attrs: nounwind uwtable
define i64 @szuz() #0 {
entry:
  ret i64 -281472829292544
}

; Function Attrs: nounwind uwtable
define i64 @szus() #0 {
entry:
  ret i64 -281472829227009
}

; Function Attrs: nounwind uwtable
define i64 @szuu() #0 {
entry:
  ret i64 -281472829259777
}

; Function Attrs: nounwind uwtable
define i64 @sszz() #0 {
entry:
  ret i64 -4294967296
}

; Function Attrs: nounwind uwtable
define i64 @sszs() #0 {
entry:
  ret i64 -4294901761
}

; Function Attrs: nounwind uwtable
define i64 @sszu() #0 {
entry:
  ret i64 -4294934529
}

; Function Attrs: nounwind uwtable
define i64 @sssz() #0 {
entry:
  ret i64 -65536
}

; Function Attrs: nounwind uwtable
define i64 @ssss() #0 {
entry:
  ret i64 -1
}

; Function Attrs: nounwind uwtable
define i64 @sssu() #0 {
entry:
  ret i64 -32769
}

; Function Attrs: nounwind uwtable
define i64 @ssuz() #0 {
entry:
  ret i64 -2147549184
}

; Function Attrs: nounwind uwtable
define i64 @ssus() #0 {
entry:
  ret i64 -2147483649
}

; Function Attrs: nounwind uwtable
define i64 @ssuu() #0 {
entry:
  ret i64 -2147516417
}

; Function Attrs: nounwind uwtable
define i64 @suzz() #0 {
entry:
  ret i64 -140741783322624
}

; Function Attrs: nounwind uwtable
define i64 @suzs() #0 {
entry:
  ret i64 -140741783257089
}

; Function Attrs: nounwind uwtable
define i64 @suzu() #0 {
entry:
  ret i64 -140741783289857
}

; Function Attrs: nounwind uwtable
define i64 @susz() #0 {
entry:
  ret i64 -140737488420864
}

; Function Attrs: nounwind uwtable
define i64 @suss() #0 {
entry:
  ret i64 -140737488355329
}

; Function Attrs: nounwind uwtable
define i64 @susu() #0 {
entry:
  ret i64 -140737488388097
}

; Function Attrs: nounwind uwtable
define i64 @suuz() #0 {
entry:
  ret i64 -140739635904512
}

; Function Attrs: nounwind uwtable
define i64 @suus() #0 {
entry:
  ret i64 -140739635838977
}

; Function Attrs: nounwind uwtable
define i64 @suuu() #0 {
entry:
  ret i64 -140739635871745
}

; Function Attrs: nounwind uwtable
define i64 @uzzz() #0 {
entry:
  ret i64 9223090561878065152
}

; Function Attrs: nounwind uwtable
define i64 @uzzs() #0 {
entry:
  ret i64 9223090561878130687
}

; Function Attrs: nounwind uwtable
define i64 @uzzu() #0 {
entry:
  ret i64 9223090561878097919
}

; Function Attrs: nounwind uwtable
define i64 @uzsz() #0 {
entry:
  ret i64 9223090566172966912
}

; Function Attrs: nounwind uwtable
define i64 @uzss() #0 {
entry:
  ret i64 9223090566173032447
}

; Function Attrs: nounwind uwtable
define i64 @uzsu() #0 {
entry:
  ret i64 9223090566172999679
}

; Function Attrs: nounwind uwtable
define i64 @uzuz() #0 {
entry:
  ret i64 9223090564025483264
}

; Function Attrs: nounwind uwtable
define i64 @uzus() #0 {
entry:
  ret i64 9223090564025548799
}

; Function Attrs: nounwind uwtable
define i64 @uzuu() #0 {
entry:
  ret i64 9223090564025516031
}

; Function Attrs: nounwind uwtable
define i64 @uszz() #0 {
entry:
  ret i64 9223372032559808512
}

; Function Attrs: nounwind uwtable
define i64 @uszs() #0 {
entry:
  ret i64 9223372032559874047
}

; Function Attrs: nounwind uwtable
define i64 @uszu() #0 {
entry:
  ret i64 9223372032559841279
}

; Function Attrs: nounwind uwtable
define i64 @ussz() #0 {
entry:
  ret i64 9223372036854710272
}

; Function Attrs: nounwind uwtable
define i64 @usss() #0 {
entry:
  ret i64 9223372036854775807
}

; Function Attrs: nounwind uwtable
define i64 @ussu() #0 {
entry:
  ret i64 9223372036854743039
}

; Function Attrs: nounwind uwtable
define i64 @usuz() #0 {
entry:
  ret i64 9223372034707226624
}

; Function Attrs: nounwind uwtable
define i64 @usus() #0 {
entry:
  ret i64 9223372034707292159
}

; Function Attrs: nounwind uwtable
define i64 @usuu() #0 {
entry:
  ret i64 9223372034707259391
}

; Function Attrs: nounwind uwtable
define i64 @uuzz() #0 {
entry:
  ret i64 9223231295071453184
}

; Function Attrs: nounwind uwtable
define i64 @uuzs() #0 {
entry:
  ret i64 9223231295071518719
}

; Function Attrs: nounwind uwtable
define i64 @uuzu() #0 {
entry:
  ret i64 9223231295071485951
}

; Function Attrs: nounwind uwtable
define i64 @uusz() #0 {
entry:
  ret i64 9223231299366354944
}

; Function Attrs: nounwind uwtable
define i64 @uuss() #0 {
entry:
  ret i64 9223231299366420479
}

; Function Attrs: nounwind uwtable
define i64 @uusu() #0 {
entry:
  ret i64 9223231299366387711
}

; Function Attrs: nounwind uwtable
define i64 @uuuz() #0 {
entry:
  ret i64 9223231297218871296
}

; Function Attrs: nounwind uwtable
define i64 @uuus() #0 {
entry:
  ret i64 9223231297218936831
}

; Function Attrs: nounwind uwtable
define i64 @uuuu() #0 {
entry:
  ret i64 9223231297218904063
}

; Function Attrs: nounwind uwtable
define i64 @bit00() #0 {
entry:
  ret i64 1
}

; Function Attrs: nounwind uwtable
define i64 @bit01() #0 {
entry:
  ret i64 2
}

; Function Attrs: nounwind uwtable
define i64 @bit02() #0 {
entry:
  ret i64 4
}

; Function Attrs: nounwind uwtable
define i64 @bit03() #0 {
entry:
  ret i64 8
}

; Function Attrs: nounwind uwtable
define i64 @bit04() #0 {
entry:
  ret i64 16
}

; Function Attrs: nounwind uwtable
define i64 @bit05() #0 {
entry:
  ret i64 32
}

; Function Attrs: nounwind uwtable
define i64 @bit06() #0 {
entry:
  ret i64 64
}

; Function Attrs: nounwind uwtable
define i64 @bit07() #0 {
entry:
  ret i64 128
}

; Function Attrs: nounwind uwtable
define i64 @bit08() #0 {
entry:
  ret i64 256
}

; Function Attrs: nounwind uwtable
define i64 @bit09() #0 {
entry:
  ret i64 512
}

; Function Attrs: nounwind uwtable
define i64 @bit10() #0 {
entry:
  ret i64 1024
}

; Function Attrs: nounwind uwtable
define i64 @bit11() #0 {
entry:
  ret i64 2048
}

; Function Attrs: nounwind uwtable
define i64 @bit12() #0 {
entry:
  ret i64 4096
}

; Function Attrs: nounwind uwtable
define i64 @bit13() #0 {
entry:
  ret i64 8192
}

; Function Attrs: nounwind uwtable
define i64 @bit14() #0 {
entry:
  ret i64 16384
}

; Function Attrs: nounwind uwtable
define i64 @bit15() #0 {
entry:
  ret i64 32768
}

; Function Attrs: nounwind uwtable
define i64 @bit16() #0 {
entry:
  ret i64 65536
}

; Function Attrs: nounwind uwtable
define i64 @bit17() #0 {
entry:
  ret i64 131072
}

; Function Attrs: nounwind uwtable
define i64 @bit18() #0 {
entry:
  ret i64 262144
}

; Function Attrs: nounwind uwtable
define i64 @bit19() #0 {
entry:
  ret i64 524288
}

; Function Attrs: nounwind uwtable
define i64 @bit20() #0 {
entry:
  ret i64 1048576
}

; Function Attrs: nounwind uwtable
define i64 @bit21() #0 {
entry:
  ret i64 2097152
}

; Function Attrs: nounwind uwtable
define i64 @bit22() #0 {
entry:
  ret i64 4194304
}

; Function Attrs: nounwind uwtable
define i64 @bit23() #0 {
entry:
  ret i64 8388608
}

; Function Attrs: nounwind uwtable
define i64 @bit24() #0 {
entry:
  ret i64 16777216
}

; Function Attrs: nounwind uwtable
define i64 @bit25() #0 {
entry:
  ret i64 33554432
}

; Function Attrs: nounwind uwtable
define i64 @bit26() #0 {
entry:
  ret i64 67108864
}

; Function Attrs: nounwind uwtable
define i64 @bit27() #0 {
entry:
  ret i64 134217728
}

; Function Attrs: nounwind uwtable
define i64 @bit28() #0 {
entry:
  ret i64 268435456
}

; Function Attrs: nounwind uwtable
define i64 @bit29() #0 {
entry:
  ret i64 536870912
}

; Function Attrs: nounwind uwtable
define i64 @bit30() #0 {
entry:
  ret i64 1073741824
}

; Function Attrs: nounwind uwtable
define i64 @bit31() #0 {
entry:
  ret i64 2147483648
}

; Function Attrs: nounwind uwtable
define i64 @bit32() #0 {
entry:
  ret i64 4294967296
}

; Function Attrs: nounwind uwtable
define i64 @bit33() #0 {
entry:
  ret i64 8589934592
}

; Function Attrs: nounwind uwtable
define i64 @bit34() #0 {
entry:
  ret i64 17179869184
}

; Function Attrs: nounwind uwtable
define i64 @bit35() #0 {
entry:
  ret i64 34359738368
}

; Function Attrs: nounwind uwtable
define i64 @bit36() #0 {
entry:
  ret i64 68719476736
}

; Function Attrs: nounwind uwtable
define i64 @bit37() #0 {
entry:
  ret i64 137438953472
}

; Function Attrs: nounwind uwtable
define i64 @bit38() #0 {
entry:
  ret i64 274877906944
}

; Function Attrs: nounwind uwtable
define i64 @bit39() #0 {
entry:
  ret i64 549755813888
}

; Function Attrs: nounwind uwtable
define i64 @bit40() #0 {
entry:
  ret i64 1099511627776
}

; Function Attrs: nounwind uwtable
define i64 @bit41() #0 {
entry:
  ret i64 2199023255552
}

; Function Attrs: nounwind uwtable
define i64 @bit42() #0 {
entry:
  ret i64 4398046511104
}

; Function Attrs: nounwind uwtable
define i64 @bit43() #0 {
entry:
  ret i64 8796093022208
}

; Function Attrs: nounwind uwtable
define i64 @bit44() #0 {
entry:
  ret i64 17592186044416
}

; Function Attrs: nounwind uwtable
define i64 @bit45() #0 {
entry:
  ret i64 35184372088832
}

; Function Attrs: nounwind uwtable
define i64 @bit46() #0 {
entry:
  ret i64 70368744177664
}

; Function Attrs: nounwind uwtable
define i64 @bit47() #0 {
entry:
  ret i64 140737488355328
}

; Function Attrs: nounwind uwtable
define i64 @bit48() #0 {
entry:
  ret i64 281474976710656
}

; Function Attrs: nounwind uwtable
define i64 @bit49() #0 {
entry:
  ret i64 562949953421312
}

; Function Attrs: nounwind uwtable
define i64 @bit50() #0 {
entry:
  ret i64 1125899906842624
}

; Function Attrs: nounwind uwtable
define i64 @bit51() #0 {
entry:
  ret i64 2251799813685248
}

; Function Attrs: nounwind uwtable
define i64 @bit52() #0 {
entry:
  ret i64 4503599627370496
}

; Function Attrs: nounwind uwtable
define i64 @bit53() #0 {
entry:
  ret i64 9007199254740992
}

; Function Attrs: nounwind uwtable
define i64 @bit54() #0 {
entry:
  ret i64 18014398509481984
}

; Function Attrs: nounwind uwtable
define i64 @bit55() #0 {
entry:
  ret i64 36028797018963968
}

; Function Attrs: nounwind uwtable
define i64 @bit56() #0 {
entry:
  ret i64 72057594037927936
}

; Function Attrs: nounwind uwtable
define i64 @bit57() #0 {
entry:
  ret i64 144115188075855872
}

; Function Attrs: nounwind uwtable
define i64 @bit58() #0 {
entry:
  ret i64 288230376151711744
}

; Function Attrs: nounwind uwtable
define i64 @bit59() #0 {
entry:
  ret i64 576460752303423488
}

; Function Attrs: nounwind uwtable
define i64 @bit60() #0 {
entry:
  ret i64 1152921504606846976
}

; Function Attrs: nounwind uwtable
define i64 @bit61() #0 {
entry:
  ret i64 2305843009213693952
}

; Function Attrs: nounwind uwtable
define i64 @bit62() #0 {
entry:
  ret i64 4611686018427387904
}

; Function Attrs: nounwind uwtable
define i64 @bit63() #0 {
entry:
  ret i64 -9223372036854775808
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i64 @zz()
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 %call)
  %call2 = call i64 @zs()
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 %call2)
  %call4 = call i64 @zu()
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 %call4)
  %call6 = call i64 @sz()
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 %call6)
  %call8 = call i64 @ss()
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 %call8)
  %call10 = call i64 @su()
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 %call10)
  %call12 = call i64 @uz()
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 %call12)
  %call14 = call i64 @us()
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 %call14)
  %call16 = call i64 @uu()
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 %call16)
  %call18 = call i64 @zzzz()
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call18)
  %call20 = call i64 @zzzs()
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call20)
  %call22 = call i64 @zzzu()
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call22)
  %call24 = call i64 @zzsz()
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call24)
  %call26 = call i64 @zzss()
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call26)
  %call28 = call i64 @zzsu()
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call28)
  %call30 = call i64 @zzuz()
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call30)
  %call32 = call i64 @zzus()
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call32)
  %call34 = call i64 @zzuu()
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call34)
  %call36 = call i64 @zszz()
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call36)
  %call38 = call i64 @zszs()
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call38)
  %call40 = call i64 @zszu()
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call40)
  %call42 = call i64 @zssz()
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call42)
  %call44 = call i64 @zsss()
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call44)
  %call46 = call i64 @zssu()
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call46)
  %call48 = call i64 @zsuz()
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call48)
  %call50 = call i64 @zsus()
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call50)
  %call52 = call i64 @zsuu()
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call52)
  %call54 = call i64 @zuzz()
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call54)
  %call56 = call i64 @zuzs()
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call56)
  %call58 = call i64 @zuzu()
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call58)
  %call60 = call i64 @zusz()
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call60)
  %call62 = call i64 @zuss()
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call62)
  %call64 = call i64 @zusu()
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call64)
  %call66 = call i64 @zuuz()
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call66)
  %call68 = call i64 @zuus()
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call68)
  %call70 = call i64 @zuuu()
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call70)
  %call72 = call i64 @szzz()
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call72)
  %call74 = call i64 @szzs()
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call74)
  %call76 = call i64 @szzu()
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call76)
  %call78 = call i64 @szsz()
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call78)
  %call80 = call i64 @szss()
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call80)
  %call82 = call i64 @szsu()
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call82)
  %call84 = call i64 @szuz()
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call84)
  %call86 = call i64 @szus()
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call86)
  %call88 = call i64 @szuu()
  %call89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call88)
  %call90 = call i64 @sszz()
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call90)
  %call92 = call i64 @sszs()
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call92)
  %call94 = call i64 @sszu()
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call94)
  %call96 = call i64 @sssz()
  %call97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call96)
  %call98 = call i64 @ssss()
  %call99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call98)
  %call100 = call i64 @sssu()
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call100)
  %call102 = call i64 @ssuz()
  %call103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call102)
  %call104 = call i64 @ssus()
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call104)
  %call106 = call i64 @ssuu()
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call106)
  %call108 = call i64 @suzz()
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call108)
  %call110 = call i64 @suzs()
  %call111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call110)
  %call112 = call i64 @suzu()
  %call113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call112)
  %call114 = call i64 @susz()
  %call115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call114)
  %call116 = call i64 @suss()
  %call117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call116)
  %call118 = call i64 @susu()
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call118)
  %call120 = call i64 @suuz()
  %call121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call120)
  %call122 = call i64 @suus()
  %call123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call122)
  %call124 = call i64 @suuu()
  %call125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call124)
  %call126 = call i64 @uzzz()
  %call127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call126)
  %call128 = call i64 @uzzs()
  %call129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call128)
  %call130 = call i64 @uzzu()
  %call131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call130)
  %call132 = call i64 @uzsz()
  %call133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call132)
  %call134 = call i64 @uzss()
  %call135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call134)
  %call136 = call i64 @uzsu()
  %call137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call136)
  %call138 = call i64 @uzuz()
  %call139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call138)
  %call140 = call i64 @uzus()
  %call141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call140)
  %call142 = call i64 @uzuu()
  %call143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call142)
  %call144 = call i64 @uszz()
  %call145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call144)
  %call146 = call i64 @uszs()
  %call147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call146)
  %call148 = call i64 @uszu()
  %call149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call148)
  %call150 = call i64 @ussz()
  %call151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call150)
  %call152 = call i64 @usss()
  %call153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call152)
  %call154 = call i64 @ussu()
  %call155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call154)
  %call156 = call i64 @usuz()
  %call157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call156)
  %call158 = call i64 @usus()
  %call159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call158)
  %call160 = call i64 @usuu()
  %call161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call160)
  %call162 = call i64 @uuzz()
  %call163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call162)
  %call164 = call i64 @uuzs()
  %call165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call164)
  %call166 = call i64 @uuzu()
  %call167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call166)
  %call168 = call i64 @uusz()
  %call169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call168)
  %call170 = call i64 @uuss()
  %call171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call170)
  %call172 = call i64 @uusu()
  %call173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call172)
  %call174 = call i64 @uuuz()
  %call175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call174)
  %call176 = call i64 @uuus()
  %call177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call176)
  %call178 = call i64 @uuuu()
  %call179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call178)
  %call180 = call i64 @bit00()
  %call181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call180)
  %call182 = call i64 @bit01()
  %call183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call182)
  %call184 = call i64 @bit02()
  %call185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call184)
  %call186 = call i64 @bit03()
  %call187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call186)
  %call188 = call i64 @bit04()
  %call189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call188)
  %call190 = call i64 @bit05()
  %call191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call190)
  %call192 = call i64 @bit06()
  %call193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call192)
  %call194 = call i64 @bit07()
  %call195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call194)
  %call196 = call i64 @bit08()
  %call197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call196)
  %call198 = call i64 @bit09()
  %call199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call198)
  %call200 = call i64 @bit10()
  %call201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call200)
  %call202 = call i64 @bit11()
  %call203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call202)
  %call204 = call i64 @bit12()
  %call205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call204)
  %call206 = call i64 @bit13()
  %call207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call206)
  %call208 = call i64 @bit14()
  %call209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call208)
  %call210 = call i64 @bit15()
  %call211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call210)
  %call212 = call i64 @bit16()
  %call213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call212)
  %call214 = call i64 @bit17()
  %call215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call214)
  %call216 = call i64 @bit18()
  %call217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call216)
  %call218 = call i64 @bit19()
  %call219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call218)
  %call220 = call i64 @bit20()
  %call221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call220)
  %call222 = call i64 @bit21()
  %call223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call222)
  %call224 = call i64 @bit22()
  %call225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call224)
  %call226 = call i64 @bit23()
  %call227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call226)
  %call228 = call i64 @bit24()
  %call229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call228)
  %call230 = call i64 @bit25()
  %call231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call230)
  %call232 = call i64 @bit26()
  %call233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call232)
  %call234 = call i64 @bit27()
  %call235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call234)
  %call236 = call i64 @bit28()
  %call237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call236)
  %call238 = call i64 @bit29()
  %call239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call238)
  %call240 = call i64 @bit30()
  %call241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call240)
  %call242 = call i64 @bit31()
  %call243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call242)
  %call244 = call i64 @bit32()
  %call245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call244)
  %call246 = call i64 @bit33()
  %call247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call246)
  %call248 = call i64 @bit34()
  %call249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call248)
  %call250 = call i64 @bit35()
  %call251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call250)
  %call252 = call i64 @bit36()
  %call253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call252)
  %call254 = call i64 @bit37()
  %call255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call254)
  %call256 = call i64 @bit38()
  %call257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call256)
  %call258 = call i64 @bit39()
  %call259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call258)
  %call260 = call i64 @bit40()
  %call261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call260)
  %call262 = call i64 @bit41()
  %call263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call262)
  %call264 = call i64 @bit42()
  %call265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call264)
  %call266 = call i64 @bit43()
  %call267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call266)
  %call268 = call i64 @bit44()
  %call269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call268)
  %call270 = call i64 @bit45()
  %call271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call270)
  %call272 = call i64 @bit46()
  %call273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call272)
  %call274 = call i64 @bit47()
  %call275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call274)
  %call276 = call i64 @bit48()
  %call277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call276)
  %call278 = call i64 @bit49()
  %call279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call278)
  %call280 = call i64 @bit50()
  %call281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call280)
  %call282 = call i64 @bit51()
  %call283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call282)
  %call284 = call i64 @bit52()
  %call285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call284)
  %call286 = call i64 @bit53()
  %call287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call286)
  %call288 = call i64 @bit54()
  %call289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call288)
  %call290 = call i64 @bit55()
  %call291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call290)
  %call292 = call i64 @bit56()
  %call293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call292)
  %call294 = call i64 @bit57()
  %call295 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call294)
  %call296 = call i64 @bit58()
  %call297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call296)
  %call298 = call i64 @bit59()
  %call299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call298)
  %call300 = call i64 @bit60()
  %call301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call300)
  %call302 = call i64 @bit61()
  %call303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call302)
  %call304 = call i64 @bit62()
  %call305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call304)
  %call306 = call i64 @bit63()
  %call307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 %call306)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
