; ModuleID = 'prior.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p7prior_s = type { i32, i32, [200 x float], [200 x [7 x float]], i32, [200 x float], [200 x [20 x float]], i32, [200 x float], [200 x [20 x float]] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@.str = private unnamed_addr constant [8 x i8] c"prior.c\00", align 1
@Alphabet_size = external global i32, align 4
@Alphabet_type = external global i32, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Can't set prior; alphabet type not set yet\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to open HMMER prior file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"DIRICHLET\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"No such prior strategy %s; failed to parse file %s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"AMINO\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"HMM and/or sequences are DNA/RNA; can't use protein prior %s\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"NUCLEIC\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"HMM and/or sequences are protein; can't use DNA/RNA prior %s\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Alphabet \22%s\22 in prior file %s isn't valid.\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"%d is bad; need at least one state transition mixture component\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"%d is bad, too many transition components (MAXDCHLET = %d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"%d is bad; need at least one match emission mixture component\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"%d is bad; too many match components (MAXDCHLET = %d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"%d is bad; need at least one insert emission mixture component\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"%d is bad; too many insert components (MAXDCHLET = %d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"PAM prior is only valid for protein sequences\00", align 1
@.str.18 = private unnamed_addr constant [63 x i8] c"PAM prior may only be applied over an existing Dirichlet prior\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"PAM prior requires that the insert emissions be a single Dirichlet\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"BLASTMAT\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"Failed to open PAM scoring matrix file %s\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"Failed to parse PAM scoring matrix file %s\00", align 1
@Alphabet = external global [25 x i8], align 16
@aafq = external global [0 x float], align 4
@.str.24 = private unnamed_addr constant [35 x i8] c"Failed to open null model file %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [59 x i8] c"Alphabet type conflict; null model in %s is inappropriate\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"%s is not in HMMER null model file format\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"X-PRT annotation out of range\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"X-PRM annotation out of range\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"X-PRI annotation out of range\00", align 1
@default_amino_prior.defmq = internal global [9 x float] [float 0x3FC6CBAFA0000000, float 0x3FACF97EE0000000, float 0x3FB894B520000000, float 0x3FB3FFE380000000, float 0x3FB5601B00000000, float 0x3FB72542A0000000, float 0x3FBD4DC660000000, float 0x3FB1766BA0000000, float 0x3FCE06E1A0000000], align 16
@default_amino_prior.defm = internal global [9 x [20 x float]] [[20 x float] [float 0x3FD152AC80000000, float 0x3FA466F500000000, float 0x3F91FF7160000000, float 0x3F90CF1800000000, float 0x3F8D388A80000000, float 0x3FC0E29FA0000000, float 0x3F896073E0000000, float 0x3F97243140000000, float 0x3F94D8BA40000000, float 0x3F9F76E620000000, float 0x3F8F5D7880000000, float 0x3FA8BA8400000000, float 0x3FAB8C1120000000, float 0x3F95286B60000000, float 0x3F982DBE80000000, float 0x3FCBAAB480000000, float 0x3FC2D84D40000000, float 0x3FB0C08B80000000, float 0x3F6EC918E0000000, float 0x3F83B42CC0000000], [20 x float] [float 0x3F95FAEBC0000000, float 0x3F85182AA0000000, float 0x3F880BAA60000000, float 0x3F8649D380000000, float 0x3FD8AE8180000000, float 0x3F90CF5B20000000, float 0x3FB38194C0000000, float 0x3FA216A480000000, float 0x3F8C829D00000000, float 0x3FB7F0BAE0000000, float 0x3F969014C0000000, float 0x3F9D477BC0000000, float 0x3F8ACCD540000000, float 0x3F97903220000000, float 0x3F93519BE0000000, float 0x3F9DDB1200000000, float 0x3F9296B340000000, float 0x3FA27BB300000000, float 0x3FB25F84C0000000, float 0x3FDADB65E0000000], [20 x float] [float 0x3FE1F778E0000000, float 0x3FA744F5E0000000, float 0x3FDC0E3040000000, float 0x3FE8740E60000000, float 0x3FB65D7CC0000000, float 0x3FD09552E0000000, float 0x3FCB832760000000, float 0x3FC2ADC4C0000000, float 0x3FE863F9A0000000, float 0x3FCFA82E80000000, float 0x3FBE60A200000000, float 0x3FDC4295A0000000, float 0x3FC6609140000000, float 0x3FE0FCA420000000, float 0x3FDDCB3A20000000, float 0x3FE2AB3AA0000000, float 0x3FDC847B20000000, float 0x3FCD0FF980000000, float 0x3F9E37DEA0000000, float 0x3FBEFFC120000000], [20 x float] [float 0x3FB1F4E440000000, float 0x3F86D09180000000, float 0x3F93F24D80000000, float 0x3FB83B70E0000000, float 0x3F8AF4ADC0000000, float 0x3FA8986FC0000000, float 0x3FB3B645A0000000, float 0x3FA0DD6160000000, float 0x3FE273D3A0000000, float 0x3FB281CB40000000, float 0x3F9CEAF260000000, float 0x3FB4934260000000, float 0x3FA3484D80000000, float 0x3FC7AF4AE0000000, float 0x3FE0379100000000, float 0x3FB2E019C0000000, float 0x3FB2538680000000, float 0x3FA5C6C120000000, float 0x3F870C5640000000, float 0x3F9D698FE0000000], [20 x float] [float 0x3FA50B73E0000000, float 0x3F8E4C5120000000, float 0x3F76FA82E0000000, float 0x3F84EC2040000000, float 0x3FC3A93B00000000, float 0x3F7FEFBF40000000, float 0x3F7D638860000000, float 0x3FD32D3840000000, float 0x3F86380020000000, float 0x3FEFFB7620000000, float 0x3FCAE77920000000, float 0x3F7918A000000000, float 0x3F8AAAC100000000, float 0x3F9445ED40000000, float 0x3F8DB6E500000000, float 0x3F88AD2560000000, float 0x3FA2543F20000000, float 0x3FC70D0680000000, float 0x3F8A1986C0000000, float 0x3F9B19E740000000], [20 x float] [float 0x3FBD986BA0000000, float 0x3FA3239A40000000, float 0x3F896C82E0000000, float 0x3F929D8400000000, float 0x3FAA82A560000000, float 0x3F91AB4B80000000, float 0x3F741D8E80000000, float 0x3FE9800EA0000000, float 0x3F917BD8C0000000, float 0x3FD24B7F60000000, float 0x3FB3685980000000, float 0x3F8DCB5780000000, float 0x3F8EE88E00000000, float 0x3F874F7220000000, float 0x3F8A005C40000000, float 0x3F9C3222A0000000, float 0x3FB69CFDE0000000, float 0x3FEE380880000000, float 0x3F71E96C40000000, float 0x3F91248D80000000], [20 x float] [float 0x3FB7ED0F60000000, float 0x3F73671AC0000000, float 0x3FD8C8BCA0000000, float 0x3FD64306E0000000, float 0x3F8629D840000000, float 0x3FBB1AC140000000, float 0x3FA97C3D60000000, float 0x3F8EA4EBE0000000, float 0x3FB82278E0000000, float 0x3F9C6D6120000000, float 0x3F848FDA00000000, float 0x3FC80C1760000000, float 0x3FA99BF5A0000000, float 0x3FBC2B8420000000, float 0x3FA3CC4AC0000000, float 0x3FBE95A6C0000000, float 0x3FB0D86660000000, float 0x3F9A0A5260000000, float 0x3F6A565800000000, float 0x3F93311A60000000], [20 x float] [float 0x3FDCF05EA0000000, float 0x3FBD574700000000, float 0x3FAFFAC1E0000000, float 0x3FBD9EA580000000, float 0x3FD2311620000000, float 0x3FC1F23460000000, float 0x3FB9B10FE0000000, float 0x3FE19B7C00000000, float 0x3FC26E6DA0000000, float 0x3FE66BB780000000, float 0x3FD1B37CA0000000, float 0x3FBE5A89C0000000, float 0x3FB8F3CB40000000, float 0x3FC036D220000000, float 0x3FC2629960000000, float 0x3FD1DADB80000000, float 0x3FD6F15E80000000, float 0x3FE52D0E60000000, float 0x3FAF8140E0000000, float 0x3FC9850E00000000], [20 x float] [float 0x3F75454160000000, float 0x3F708B32C0000000, float 0x3F7B888720000000, float 0x3F79125560000000, float 0x3F6C68EC60000000, float 0x3F91565C20000000, float 0x3F6DE05040000000, float 0x3F61E42E20000000, float 0x3F748ECD80000000, float 0x3F7888F860000000, float 0x3F582235C0000000, float 0x3F7107FAA0000000, float 0x3F828B6D80000000, float 0x3F6DBCA960000000, float 0x3F7AF6C6A0000000, float 0x3F69FC2A80000000, float 0x3F6E3A7DA0000000, float 0x3F684E4000000000, float 0x3F66B54E20000000, float 0x3F6600F340000000]], align 16

; Function Attrs: nounwind uwtable
define %struct.p7prior_s* @P7AllocPrior() #0 {
entry:
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 37, i64 40016)
  %0 = bitcast i8* %call to %struct.p7prior_s*
  ret %struct.p7prior_s* %0
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define void @P7FreePrior(%struct.p7prior_s* %pri) #0 {
entry:
  %pri.addr = alloca %struct.p7prior_s*, align 8
  store %struct.p7prior_s* %pri, %struct.p7prior_s** %pri.addr, align 8
  %0 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %1 = bitcast %struct.p7prior_s* %0 to i8*
  call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.p7prior_s* @P7LaplacePrior() #0 {
entry:
  %pri = alloca %struct.p7prior_s*, align 8
  %call = call %struct.p7prior_s* @P7AllocPrior()
  store %struct.p7prior_s* %call, %struct.p7prior_s** %pri, align 8
  %0 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %strategy = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %0, i32 0, i32 0
  store i32 0, i32* %strategy, align 4
  %1 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %tnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %1, i32 0, i32 1
  store i32 1, i32* %tnum, align 4
  %2 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %tq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %tq, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx, align 4
  %3 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %3, i32 0, i32 3
  %arrayidx1 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t, i32 0, i64 0
  %arraydecay = getelementptr inbounds [7 x float], [7 x float]* %arrayidx1, i32 0, i32 0
  call void @FSet(float* %arraydecay, i32 8, float 1.000000e+00)
  %4 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %mnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %4, i32 0, i32 4
  store i32 1, i32* %mnum, align 4
  %5 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %mq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %5, i32 0, i32 5
  %arrayidx2 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx2, align 4
  %6 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %m = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %6, i32 0, i32 6
  %arrayidx3 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %m, i32 0, i64 0
  %arraydecay4 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx3, i32 0, i32 0
  %7 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %arraydecay4, i32 %7, float 1.000000e+00)
  %8 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %inum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %8, i32 0, i32 7
  store i32 1, i32* %inum, align 4
  %9 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %iq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %9, i32 0, i32 8
  %arrayidx5 = getelementptr inbounds [200 x float], [200 x float]* %iq, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx5, align 4
  %10 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %10, i32 0, i32 9
  %arrayidx6 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i, i32 0, i64 0
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx6, i32 0, i32 0
  %11 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %arraydecay7, i32 %11, float 1.000000e+00)
  %12 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  ret %struct.p7prior_s* %12
}

declare void @FSet(float*, i32, float) #1

; Function Attrs: nounwind uwtable
define %struct.p7prior_s* @P7DefaultPrior() #0 {
entry:
  %retval = alloca %struct.p7prior_s*, align 8
  %0 = load i32, i32* @Alphabet_type, align 4
  switch i32 %0, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.1
    i32 0, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %call = call %struct.p7prior_s* @default_amino_prior()
  store %struct.p7prior_s* %call, %struct.p7prior_s** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %call2 = call %struct.p7prior_s* @default_nucleic_prior()
  store %struct.p7prior_s* %call2, %struct.p7prior_s** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.3, %entry
  store %struct.p7prior_s* null, %struct.p7prior_s** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %1 = load %struct.p7prior_s*, %struct.p7prior_s** %retval
  ret %struct.p7prior_s* %1
}

; Function Attrs: nounwind uwtable
define internal %struct.p7prior_s* @default_amino_prior() #0 {
entry:
  %pri = alloca %struct.p7prior_s*, align 8
  %q = alloca i32, align 4
  %x = alloca i32, align 4
  %call = call %struct.p7prior_s* @P7AllocPrior()
  store %struct.p7prior_s* %call, %struct.p7prior_s** %pri, align 8
  %0 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %strategy = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %0, i32 0, i32 0
  store i32 0, i32* %strategy, align 4
  %1 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %tnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %1, i32 0, i32 1
  store i32 1, i32* %tnum, align 4
  %2 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %tq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %tq, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx, align 4
  %3 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %3, i32 0, i32 3
  %arrayidx1 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx1, i32 0, i64 0
  store float 0x3FE967A100000000, float* %arrayidx2, align 4
  %4 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t3 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %4, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t3, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx4, i32 0, i64 1
  store float 0x3F9C779A60000000, float* %arrayidx5, align 4
  %5 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t6 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %5, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t6, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx7, i32 0, i64 2
  store float 0x3F8BA5E360000000, float* %arrayidx8, align 4
  %6 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t9 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %6, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t9, i32 0, i64 0
  %arrayidx11 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx10, i32 0, i64 3
  store float 0x3FC3DA5120000000, float* %arrayidx11, align 4
  %7 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t12 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %7, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t12, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx13, i32 0, i64 4
  store float 0x3FC1096BC0000000, float* %arrayidx14, align 4
  %8 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t15 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %8, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t15, i32 0, i64 0
  %arrayidx17 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx16, i32 0, i64 5
  store float 0x3FECCE7040000000, float* %arrayidx17, align 4
  %9 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t18 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %9, i32 0, i32 3
  %arrayidx19 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t18, i32 0, i64 0
  %arrayidx20 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx19, i32 0, i64 6
  store float 0x3FE20418A0000000, float* %arrayidx20, align 4
  %10 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %mnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %10, i32 0, i32 4
  store i32 9, i32* %mnum, align 4
  store i32 0, i32* %q, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %entry
  %11 = load i32, i32* %q, align 4
  %12 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %mnum21 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %12, i32 0, i32 4
  %13 = load i32, i32* %mnum21, align 4
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %q, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [9 x float], [9 x float]* @default_amino_prior.defmq, i32 0, i64 %idxprom
  %15 = load float, float* %arrayidx22, align 4
  %16 = load i32, i32* %q, align 4
  %idxprom23 = sext i32 %16 to i64
  %17 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %mq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %17, i32 0, i32 5
  %arrayidx24 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i64 %idxprom23
  store float %15, float* %arrayidx24, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body
  %18 = load i32, i32* %x, align 4
  %cmp26 = icmp slt i32 %18, 20
  br i1 %cmp26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %19 = load i32, i32* %x, align 4
  %idxprom28 = sext i32 %19 to i64
  %20 = load i32, i32* %q, align 4
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [9 x [20 x float]], [9 x [20 x float]]* @default_amino_prior.defm, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i64 %idxprom28
  %21 = load float, float* %arrayidx31, align 4
  %22 = load i32, i32* %x, align 4
  %idxprom32 = sext i32 %22 to i64
  %23 = load i32, i32* %q, align 4
  %idxprom33 = sext i32 %23 to i64
  %24 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %m = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %24, i32 0, i32 6
  %arrayidx34 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %m, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx34, i32 0, i64 %idxprom32
  store float %21, float* %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.27
  %25 = load i32, i32* %x, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end
  %26 = load i32, i32* %q, align 4
  %inc37 = add nsw i32 %26, 1
  store i32 %inc37, i32* %q, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  %27 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %inum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %27, i32 0, i32 7
  store i32 1, i32* %inum, align 4
  %28 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %iq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %28, i32 0, i32 8
  %arrayidx39 = getelementptr inbounds [200 x float], [200 x float]* %iq, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx39, align 4
  %29 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %29, i32 0, i32 9
  %arrayidx40 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i, i32 0, i64 0
  %arrayidx41 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx40, i32 0, i64 0
  store float 6.810000e+02, float* %arrayidx41, align 4
  %30 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i42 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %30, i32 0, i32 9
  %arrayidx43 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i42, i32 0, i64 0
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx43, i32 0, i64 1
  store float 1.200000e+02, float* %arrayidx44, align 4
  %31 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i45 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %31, i32 0, i32 9
  %arrayidx46 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i45, i32 0, i64 0
  %arrayidx47 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx46, i32 0, i64 2
  store float 6.230000e+02, float* %arrayidx47, align 4
  %32 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i48 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %32, i32 0, i32 9
  %arrayidx49 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i48, i32 0, i64 0
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx49, i32 0, i64 3
  store float 6.510000e+02, float* %arrayidx50, align 4
  %33 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i51 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %33, i32 0, i32 9
  %arrayidx52 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i51, i32 0, i64 0
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i64 4
  store float 3.130000e+02, float* %arrayidx53, align 4
  %34 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i54 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %34, i32 0, i32 9
  %arrayidx55 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i54, i32 0, i64 0
  %arrayidx56 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx55, i32 0, i64 5
  store float 9.020000e+02, float* %arrayidx56, align 4
  %35 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i57 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %35, i32 0, i32 9
  %arrayidx58 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i57, i32 0, i64 0
  %arrayidx59 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx58, i32 0, i64 6
  store float 2.410000e+02, float* %arrayidx59, align 4
  %36 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i60 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %36, i32 0, i32 9
  %arrayidx61 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i60, i32 0, i64 0
  %arrayidx62 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx61, i32 0, i64 7
  store float 3.710000e+02, float* %arrayidx62, align 4
  %37 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i63 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %37, i32 0, i32 9
  %arrayidx64 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i63, i32 0, i64 0
  %arrayidx65 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx64, i32 0, i64 8
  store float 6.870000e+02, float* %arrayidx65, align 4
  %38 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i66 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %38, i32 0, i32 9
  %arrayidx67 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i66, i32 0, i64 0
  %arrayidx68 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx67, i32 0, i64 9
  store float 6.760000e+02, float* %arrayidx68, align 4
  %39 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i69 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %39, i32 0, i32 9
  %arrayidx70 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i69, i32 0, i64 0
  %arrayidx71 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx70, i32 0, i64 10
  store float 1.430000e+02, float* %arrayidx71, align 4
  %40 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i72 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %40, i32 0, i32 9
  %arrayidx73 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i72, i32 0, i64 0
  %arrayidx74 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx73, i32 0, i64 11
  store float 5.480000e+02, float* %arrayidx74, align 4
  %41 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i75 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %41, i32 0, i32 9
  %arrayidx76 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i75, i32 0, i64 0
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i64 12
  store float 6.470000e+02, float* %arrayidx77, align 4
  %42 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i78 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %42, i32 0, i32 9
  %arrayidx79 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i78, i32 0, i64 0
  %arrayidx80 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx79, i32 0, i64 13
  store float 4.150000e+02, float* %arrayidx80, align 4
  %43 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i81 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %43, i32 0, i32 9
  %arrayidx82 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i81, i32 0, i64 0
  %arrayidx83 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx82, i32 0, i64 14
  store float 5.510000e+02, float* %arrayidx83, align 4
  %44 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i84 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %44, i32 0, i32 9
  %arrayidx85 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i84, i32 0, i64 0
  %arrayidx86 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx85, i32 0, i64 15
  store float 9.260000e+02, float* %arrayidx86, align 4
  %45 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i87 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %45, i32 0, i32 9
  %arrayidx88 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i87, i32 0, i64 0
  %arrayidx89 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx88, i32 0, i64 16
  store float 6.230000e+02, float* %arrayidx89, align 4
  %46 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i90 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %46, i32 0, i32 9
  %arrayidx91 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i90, i32 0, i64 0
  %arrayidx92 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx91, i32 0, i64 17
  store float 5.050000e+02, float* %arrayidx92, align 4
  %47 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i93 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %47, i32 0, i32 9
  %arrayidx94 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i93, i32 0, i64 0
  %arrayidx95 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx94, i32 0, i64 18
  store float 1.020000e+02, float* %arrayidx95, align 4
  %48 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i96 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %48, i32 0, i32 9
  %arrayidx97 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i96, i32 0, i64 0
  %arrayidx98 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx97, i32 0, i64 19
  store float 2.690000e+02, float* %arrayidx98, align 4
  %49 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  ret %struct.p7prior_s* %49
}

; Function Attrs: nounwind uwtable
define internal %struct.p7prior_s* @default_nucleic_prior() #0 {
entry:
  %pri = alloca %struct.p7prior_s*, align 8
  %call = call %struct.p7prior_s* @P7AllocPrior()
  store %struct.p7prior_s* %call, %struct.p7prior_s** %pri, align 8
  %0 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %strategy = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %0, i32 0, i32 0
  store i32 0, i32* %strategy, align 4
  %1 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %tnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %1, i32 0, i32 1
  store i32 1, i32* %tnum, align 4
  %2 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %tq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %tq, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx, align 4
  %3 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %3, i32 0, i32 3
  %arrayidx1 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx1, i32 0, i64 0
  store float 0x3FE967A100000000, float* %arrayidx2, align 4
  %4 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t3 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %4, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t3, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx4, i32 0, i64 1
  store float 0x3F9C779A60000000, float* %arrayidx5, align 4
  %5 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t6 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %5, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t6, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx7, i32 0, i64 2
  store float 0x3F8BA5E360000000, float* %arrayidx8, align 4
  %6 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t9 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %6, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t9, i32 0, i64 0
  %arrayidx11 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx10, i32 0, i64 3
  store float 0x3FC3DA5120000000, float* %arrayidx11, align 4
  %7 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t12 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %7, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t12, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx13, i32 0, i64 4
  store float 0x3FC1096BC0000000, float* %arrayidx14, align 4
  %8 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t15 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %8, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t15, i32 0, i64 0
  %arrayidx17 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx16, i32 0, i64 5
  store float 0x3FECCE7040000000, float* %arrayidx17, align 4
  %9 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t18 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %9, i32 0, i32 3
  %arrayidx19 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t18, i32 0, i64 0
  %arrayidx20 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx19, i32 0, i64 6
  store float 0x3FE20418A0000000, float* %arrayidx20, align 4
  %10 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %mnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %10, i32 0, i32 4
  store i32 1, i32* %mnum, align 4
  %11 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %mq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %11, i32 0, i32 5
  %arrayidx21 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx21, align 4
  %12 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %m = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %12, i32 0, i32 6
  %arrayidx22 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %m, i32 0, i64 0
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %arrayidx22, i32 0, i32 0
  %13 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %arraydecay, i32 %13, float 1.000000e+00)
  %14 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %inum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %14, i32 0, i32 7
  store i32 1, i32* %inum, align 4
  %15 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %iq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %15, i32 0, i32 8
  %arrayidx23 = getelementptr inbounds [200 x float], [200 x float]* %iq, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx23, align 4
  %16 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %16, i32 0, i32 9
  %arrayidx24 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i, i32 0, i64 0
  %arraydecay25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx24, i32 0, i32 0
  %17 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %arraydecay25, i32 %17, float 1.000000e+00)
  %18 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  ret %struct.p7prior_s* %18
}

declare void @Die(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.p7prior_s* @P7ReadPrior(i8* %prifile) #0 {
entry:
  %prifile.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %pri = alloca %struct.p7prior_s*, align 8
  %sptr = alloca i8*, align 8
  %q = alloca i32, align 4
  %x = alloca i32, align 4
  store i8* %prifile, i8** %prifile.addr, align 8
  %0 = load i8*, i8** %prifile.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %prifile.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call %struct.p7prior_s* @P7AllocPrior()
  store %struct.p7prior_s* %call1, %struct.p7prior_s** %pri, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i8* @Getword(%struct._IO_FILE* %2, i32 4)
  store i8* %call2, i8** %sptr, align 8
  %3 = load i8*, i8** %sptr, align 8
  call void @s2upper(i8* %3)
  %4 = load i8*, i8** %sptr, align 8
  %call3 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)) #5
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %5 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %strategy = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %5, i32 0, i32 0
  store i32 0, i32* %strategy, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %6 = load i8*, i8** %sptr, align 8
  %7 = load i8*, i8** %prifile.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0), i8* %6, i8* %7)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i8* @Getword(%struct._IO_FILE* %8, i32 4)
  store i8* %call7, i8** %sptr, align 8
  %9 = load i8*, i8** %sptr, align 8
  call void @s2upper(i8* %9)
  %10 = load i8*, i8** %sptr, align 8
  %call8 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #5
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.else.14

if.then.10:                                       ; preds = %if.end.6
  %11 = load i32, i32* @Alphabet_type, align 4
  %cmp11 = icmp ne i32 %11, 3
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  %12 = load i8*, i8** %prifile.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i8* %12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  br label %if.end.23

if.else.14:                                       ; preds = %if.end.6
  %13 = load i8*, i8** %sptr, align 8
  %call15 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %if.else.14
  %14 = load i32, i32* @Alphabet_type, align 4
  %cmp18 = icmp ne i32 %14, 2
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.17
  %15 = load i8*, i8** %prifile.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i32 0, i32 0), i8* %15)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  br label %if.end.22

if.else.21:                                       ; preds = %if.else.14
  %16 = load i8*, i8** %sptr, align 8
  %17 = load i8*, i8** %prifile.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i8* %16, i8* %17)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.end.20
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call24 = call i8* @Getword(%struct._IO_FILE* %18, i32 1)
  %call25 = call i32 @atoi(i8* %call24) #5
  %19 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %tnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %19, i32 0, i32 1
  store i32 %call25, i32* %tnum, align 4
  %20 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %tnum26 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %20, i32 0, i32 1
  %21 = load i32, i32* %tnum26, align 4
  %cmp27 = icmp slt i32 %21, 0
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.23
  %22 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %tnum29 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %22, i32 0, i32 1
  %23 = load i32, i32* %tnum29, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i32 0, i32 0), i32 %23)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.23
  %24 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %tnum31 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %24, i32 0, i32 1
  %25 = load i32, i32* %tnum31, align 4
  %cmp32 = icmp sgt i32 %25, 200
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i32 0, i32 0), i32 200)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.30
  store i32 0, i32* %q, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %if.end.34
  %26 = load i32, i32* %q, align 4
  %27 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %tnum35 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %27, i32 0, i32 1
  %28 = load i32, i32* %tnum35, align 4
  %cmp36 = icmp slt i32 %26, %28
  br i1 %cmp36, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call37 = call i8* @Getword(%struct._IO_FILE* %29, i32 2)
  %call38 = call double @atof(i8* %call37) #5
  %conv = fptrunc double %call38 to float
  %30 = load i32, i32* %q, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %tq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %31, i32 0, i32 2
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %tq, i32 0, i64 %idxprom
  store float %conv, float* %arrayidx, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc, %for.body
  %32 = load i32, i32* %x, align 4
  %cmp40 = icmp slt i32 %32, 7
  br i1 %cmp40, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.39
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call43 = call i8* @Getword(%struct._IO_FILE* %33, i32 2)
  %call44 = call double @atof(i8* %call43) #5
  %conv45 = fptrunc double %call44 to float
  %34 = load i32, i32* %x, align 4
  %idxprom46 = sext i32 %34 to i64
  %35 = load i32, i32* %q, align 4
  %idxprom47 = sext i32 %35 to i64
  %36 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %t = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %36, i32 0, i32 3
  %arrayidx48 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t, i32 0, i64 %idxprom47
  %arrayidx49 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx48, i32 0, i64 %idxprom46
  store float %conv45, float* %arrayidx49, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.42
  %37 = load i32, i32* %x, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.39

for.end:                                          ; preds = %for.cond.39
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end
  %38 = load i32, i32* %q, align 4
  %inc51 = add nsw i32 %38, 1
  store i32 %inc51, i32* %q, align 4
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call53 = call i8* @Getword(%struct._IO_FILE* %39, i32 1)
  %call54 = call i32 @atoi(i8* %call53) #5
  %40 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %mnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %40, i32 0, i32 4
  store i32 %call54, i32* %mnum, align 4
  %41 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %mnum55 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %41, i32 0, i32 4
  %42 = load i32, i32* %mnum55, align 4
  %cmp56 = icmp slt i32 %42, 0
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %for.end.52
  %43 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %mnum59 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %43, i32 0, i32 4
  %44 = load i32, i32* %mnum59, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0), i32 %44)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %for.end.52
  %45 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %mnum61 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %45, i32 0, i32 4
  %46 = load i32, i32* %mnum61, align 4
  %cmp62 = icmp sgt i32 %46, 200
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.60
  %47 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %mnum65 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %47, i32 0, i32 4
  %48 = load i32, i32* %mnum65, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i32 0, i32 0), i32 %48, i32 200)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.end.60
  store i32 0, i32* %q, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.91, %if.end.66
  %49 = load i32, i32* %q, align 4
  %50 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %mnum68 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %50, i32 0, i32 4
  %51 = load i32, i32* %mnum68, align 4
  %cmp69 = icmp slt i32 %49, %51
  br i1 %cmp69, label %for.body.71, label %for.end.93

for.body.71:                                      ; preds = %for.cond.67
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call72 = call i8* @Getword(%struct._IO_FILE* %52, i32 2)
  %call73 = call double @atof(i8* %call72) #5
  %conv74 = fptrunc double %call73 to float
  %53 = load i32, i32* %q, align 4
  %idxprom75 = sext i32 %53 to i64
  %54 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %mq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %54, i32 0, i32 5
  %arrayidx76 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i64 %idxprom75
  store float %conv74, float* %arrayidx76, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.88, %for.body.71
  %55 = load i32, i32* %x, align 4
  %56 = load i32, i32* @Alphabet_size, align 4
  %cmp78 = icmp slt i32 %55, %56
  br i1 %cmp78, label %for.body.80, label %for.end.90

for.body.80:                                      ; preds = %for.cond.77
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call81 = call i8* @Getword(%struct._IO_FILE* %57, i32 2)
  %call82 = call double @atof(i8* %call81) #5
  %conv83 = fptrunc double %call82 to float
  %58 = load i32, i32* %x, align 4
  %idxprom84 = sext i32 %58 to i64
  %59 = load i32, i32* %q, align 4
  %idxprom85 = sext i32 %59 to i64
  %60 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %m = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %60, i32 0, i32 6
  %arrayidx86 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %m, i32 0, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx86, i32 0, i64 %idxprom84
  store float %conv83, float* %arrayidx87, align 4
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.80
  %61 = load i32, i32* %x, align 4
  %inc89 = add nsw i32 %61, 1
  store i32 %inc89, i32* %x, align 4
  br label %for.cond.77

for.end.90:                                       ; preds = %for.cond.77
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.end.90
  %62 = load i32, i32* %q, align 4
  %inc92 = add nsw i32 %62, 1
  store i32 %inc92, i32* %q, align 4
  br label %for.cond.67

for.end.93:                                       ; preds = %for.cond.67
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call94 = call i8* @Getword(%struct._IO_FILE* %63, i32 1)
  %call95 = call i32 @atoi(i8* %call94) #5
  %64 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %inum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %64, i32 0, i32 7
  store i32 %call95, i32* %inum, align 4
  %65 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %inum96 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %65, i32 0, i32 7
  %66 = load i32, i32* %inum96, align 4
  %cmp97 = icmp slt i32 %66, 0
  br i1 %cmp97, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %for.end.93
  %67 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %inum100 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %67, i32 0, i32 7
  %68 = load i32, i32* %inum100, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i32 0, i32 0), i32 %68)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %for.end.93
  %69 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %inum102 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %69, i32 0, i32 7
  %70 = load i32, i32* %inum102, align 4
  %cmp103 = icmp sgt i32 %70, 200
  br i1 %cmp103, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.end.101
  %71 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %inum106 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %71, i32 0, i32 7
  %72 = load i32, i32* %inum106, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i32 0, i32 0), i32 %72, i32 200)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.end.101
  store i32 0, i32* %q, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.132, %if.end.107
  %73 = load i32, i32* %q, align 4
  %74 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %inum109 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %74, i32 0, i32 7
  %75 = load i32, i32* %inum109, align 4
  %cmp110 = icmp slt i32 %73, %75
  br i1 %cmp110, label %for.body.112, label %for.end.134

for.body.112:                                     ; preds = %for.cond.108
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call113 = call i8* @Getword(%struct._IO_FILE* %76, i32 2)
  %call114 = call double @atof(i8* %call113) #5
  %conv115 = fptrunc double %call114 to float
  %77 = load i32, i32* %q, align 4
  %idxprom116 = sext i32 %77 to i64
  %78 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %iq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %78, i32 0, i32 8
  %arrayidx117 = getelementptr inbounds [200 x float], [200 x float]* %iq, i32 0, i64 %idxprom116
  store float %conv115, float* %arrayidx117, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.129, %for.body.112
  %79 = load i32, i32* %x, align 4
  %80 = load i32, i32* @Alphabet_size, align 4
  %cmp119 = icmp slt i32 %79, %80
  br i1 %cmp119, label %for.body.121, label %for.end.131

for.body.121:                                     ; preds = %for.cond.118
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call122 = call i8* @Getword(%struct._IO_FILE* %81, i32 2)
  %call123 = call double @atof(i8* %call122) #5
  %conv124 = fptrunc double %call123 to float
  %82 = load i32, i32* %x, align 4
  %idxprom125 = sext i32 %82 to i64
  %83 = load i32, i32* %q, align 4
  %idxprom126 = sext i32 %83 to i64
  %84 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  %i = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %84, i32 0, i32 9
  %arrayidx127 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i, i32 0, i64 %idxprom126
  %arrayidx128 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx127, i32 0, i64 %idxprom125
  store float %conv124, float* %arrayidx128, align 4
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.body.121
  %85 = load i32, i32* %x, align 4
  %inc130 = add nsw i32 %85, 1
  store i32 %inc130, i32* %x, align 4
  br label %for.cond.118

for.end.131:                                      ; preds = %for.cond.118
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.end.131
  %86 = load i32, i32* %q, align 4
  %inc133 = add nsw i32 %86, 1
  store i32 %inc133, i32* %q, align 4
  br label %for.cond.108

for.end.134:                                      ; preds = %for.cond.108
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call135 = call i32 @fclose(%struct._IO_FILE* %87)
  %88 = load %struct.p7prior_s*, %struct.p7prior_s** %pri, align 8
  ret %struct.p7prior_s* %88
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @Getword(%struct._IO_FILE*, i32) #1

declare void @s2upper(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @PAMPrior(i8* %pamfile, %struct.p7prior_s* %pri, float %wt) #0 {
entry:
  %pamfile.addr = alloca i8*, align 8
  %pri.addr = alloca %struct.p7prior_s*, align 8
  %wt.addr = alloca float, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %blastpamfile = alloca i8*, align 8
  %pam = alloca i32**, align 8
  %scale = alloca float, align 4
  %xi = alloca i32, align 4
  %xj = alloca i32, align 4
  %idx1 = alloca i32, align 4
  %idx2 = alloca i32, align 4
  store i8* %pamfile, i8** %pamfile.addr, align 8
  store %struct.p7prior_s* %pri, %struct.p7prior_s** %pri.addr, align 8
  store float %wt, float* %wt.addr, align 4
  %0 = load i32, i32* @Alphabet_type, align 4
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %strategy = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %1, i32 0, i32 0
  %2 = load i32, i32* %strategy, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %inum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %3, i32 0, i32 7
  %4 = load i32, i32* %inum, align 4
  %cmp4 = icmp ne i32 %4, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %5 = load i8*, i8** %pamfile.addr, align 8
  %call = call i8* @FileConcat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %5)
  store i8* %call, i8** %blastpamfile, align 8
  %6 = load i8*, i8** %pamfile.addr, align 8
  %call7 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %fp, align 8
  %cmp8 = icmp eq %struct._IO_FILE* %call7, null
  br i1 %cmp8, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.6
  %7 = load i8*, i8** %pamfile.addr, align 8
  %call9 = call %struct._IO_FILE* @EnvFileOpen(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8** null)
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %fp, align 8
  %cmp10 = icmp eq %struct._IO_FILE* %call9, null
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.15

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %8 = load i8*, i8** %blastpamfile, align 8
  %call12 = call %struct._IO_FILE* @EnvFileOpen(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8** null)
  store %struct._IO_FILE* %call12, %struct._IO_FILE** %fp, align 8
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.11
  %9 = load i8*, i8** %pamfile.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0), i8* %9)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true.11, %land.lhs.true, %if.end.6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call16 = call i32 @ParsePAMFile(%struct._IO_FILE* %10, i32*** %pam, float* %scale)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.15
  %11 = load i8*, i8** %pamfile.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i32 0, i32 0), i8* %11)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call19 = call i32 @fclose(%struct._IO_FILE* %12)
  %13 = load i8*, i8** %blastpamfile, align 8
  call void @free(i8* %13) #4
  %14 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %strategy20 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %14, i32 0, i32 0
  store i32 1, i32* %strategy20, align 4
  %15 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %15, i32 0, i32 4
  store i32 20, i32* %mnum, align 4
  store i32 0, i32* %xi, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %if.end.18
  %16 = load i32, i32* %xi, align 4
  %17 = load i32, i32* @Alphabet_size, align 4
  %cmp21 = icmp slt i32 %16, %17
  br i1 %cmp21, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %xj, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %for.body
  %18 = load i32, i32* %xj, align 4
  %19 = load i32, i32* @Alphabet_size, align 4
  %cmp23 = icmp slt i32 %18, %19
  br i1 %cmp23, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.22
  %20 = load i32, i32* %xi, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom
  %21 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %21 to i32
  %sub = sub nsw i32 %conv, 65
  store i32 %sub, i32* %idx1, align 4
  %22 = load i32, i32* %xj, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom25
  %23 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %23 to i32
  %sub28 = sub nsw i32 %conv27, 65
  store i32 %sub28, i32* %idx2, align 4
  %24 = load i32, i32* %xj, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [0 x float], [0 x float]* @aafq, i32 0, i64 %idxprom29
  %25 = load float, float* %arrayidx30, align 4
  %conv31 = fpext float %25 to double
  %26 = load i32, i32* %idx2, align 4
  %idxprom32 = sext i32 %26 to i64
  %27 = load i32, i32* %idx1, align 4
  %idxprom33 = sext i32 %27 to i64
  %28 = load i32**, i32*** %pam, align 8
  %arrayidx34 = getelementptr inbounds i32*, i32** %28, i64 %idxprom33
  %29 = load i32*, i32** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %29, i64 %idxprom32
  %30 = load i32, i32* %arrayidx35, align 4
  %conv36 = sitofp i32 %30 to float
  %31 = load float, float* %scale, align 4
  %mul = fmul float %conv36, %31
  %conv37 = fpext float %mul to double
  %call38 = call double @exp(double %conv37) #4
  %mul39 = fmul double %conv31, %call38
  %conv40 = fptrunc double %mul39 to float
  %32 = load i32, i32* %xj, align 4
  %idxprom41 = sext i32 %32 to i64
  %33 = load i32, i32* %xi, align 4
  %idxprom42 = sext i32 %33 to i64
  %34 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %m = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %34, i32 0, i32 6
  %arrayidx43 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %m, i32 0, i64 %idxprom42
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx43, i32 0, i64 %idxprom41
  store float %conv40, float* %arrayidx44, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.24
  %35 = load i32, i32* %xj, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %xj, align 4
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end
  %36 = load i32, i32* %xi, align 4
  %inc46 = add nsw i32 %36, 1
  store i32 %inc46, i32* %xi, align 4
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  store i32 0, i32* %xi, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.63, %for.end.47
  %37 = load i32, i32* %xi, align 4
  %38 = load i32, i32* @Alphabet_size, align 4
  %cmp49 = icmp slt i32 %37, %38
  br i1 %cmp49, label %for.body.51, label %for.end.65

for.body.51:                                      ; preds = %for.cond.48
  %39 = load i32, i32* @Alphabet_size, align 4
  %conv52 = sitofp i32 %39 to double
  %div = fdiv double 1.000000e+00, %conv52
  %conv53 = fptrunc double %div to float
  %40 = load i32, i32* %xi, align 4
  %idxprom54 = sext i32 %40 to i64
  %41 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %41, i32 0, i32 5
  %arrayidx55 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i64 %idxprom54
  store float %conv53, float* %arrayidx55, align 4
  %42 = load i32, i32* %xi, align 4
  %idxprom56 = sext i32 %42 to i64
  %43 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %m57 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %43, i32 0, i32 6
  %arrayidx58 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %m57, i32 0, i64 %idxprom56
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %arrayidx58, i32 0, i32 0
  %44 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %arraydecay, i32 %44)
  %45 = load i32, i32* %xi, align 4
  %idxprom59 = sext i32 %45 to i64
  %46 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %m60 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %46, i32 0, i32 6
  %arrayidx61 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %m60, i32 0, i64 %idxprom59
  %arraydecay62 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx61, i32 0, i32 0
  %47 = load i32, i32* @Alphabet_size, align 4
  %48 = load float, float* %wt.addr, align 4
  call void @FScale(float* %arraydecay62, i32 %47, float %48)
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.51
  %49 = load i32, i32* %xi, align 4
  %inc64 = add nsw i32 %49, 1
  store i32 %inc64, i32* %xi, align 4
  br label %for.cond.48

for.end.65:                                       ; preds = %for.cond.48
  %50 = load i32**, i32*** %pam, align 8
  %51 = bitcast i32** %50 to i8**
  call void @Free2DArray(i8** %51, i32 27)
  ret void
}

declare i8* @FileConcat(i8*, i8*) #1

declare %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #1

declare i32 @ParsePAMFile(%struct._IO_FILE*, i32***, float*) #1

; Function Attrs: nounwind
declare double @exp(double) #2

declare void @FNorm(float*, i32) #1

declare void @FScale(float*, i32, float) #1

declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind uwtable
define void @P7DefaultNullModel(float* %null, float* %ret_p1) #0 {
entry:
  %null.addr = alloca float*, align 8
  %ret_p1.addr = alloca float*, align 8
  %x = alloca i32, align 4
  store float* %null, float** %null.addr, align 8
  store float* %ret_p1, float** %ret_p1.addr, align 8
  %0 = load i32, i32* @Alphabet_type, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* @Alphabet_size, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x float], [0 x float]* @aafq, i32 0, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %x, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load float*, float** %null.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %6, i64 %idxprom2
  store float %4, float* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %x, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load float*, float** %ret_p1.addr, align 8
  store float 0x3FEFE8A940000000, float* %8, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.11, %if.else
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* @Alphabet_size, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body.6, label %for.end.13

for.body.6:                                       ; preds = %for.cond.4
  %11 = load i32, i32* @Alphabet_size, align 4
  %conv = sitofp i32 %11 to float
  %conv7 = fpext float %conv to double
  %div = fdiv double 1.000000e+00, %conv7
  %conv8 = fptrunc double %div to float
  %12 = load i32, i32* %x, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load float*, float** %null.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %13, i64 %idxprom9
  store float %conv8, float* %arrayidx10, align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.6
  %14 = load i32, i32* %x, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, i32* %x, align 4
  br label %for.cond.4

for.end.13:                                       ; preds = %for.cond.4
  %15 = load float*, float** %ret_p1.addr, align 8
  store float 0x3FEFF7D100000000, float* %15, align 4
  br label %if.end

if.end:                                           ; preds = %for.end.13, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @P7ReadNullModel(i8* %rndfile, float* %null, float* %ret_p1) #0 {
entry:
  %rndfile.addr = alloca i8*, align 8
  %null.addr = alloca float*, align 8
  %ret_p1.addr = alloca float*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %s = alloca i8*, align 8
  %x = alloca i32, align 4
  %type = alloca i32, align 4
  store i8* %rndfile, i8** %rndfile.addr, align 8
  store float* %null, float** %null.addr, align 8
  store float* %ret_p1, float** %ret_p1.addr, align 8
  store i32 0, i32* %type, align 4
  %0 = load i8*, i8** %rndfile.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %rndfile.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i8* @Getword(%struct._IO_FILE* %2, i32 4)
  store i8* %call1, i8** %s, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %FAILURE

if.end.4:                                         ; preds = %if.end
  %3 = load i8*, i8** %s, align 8
  call void @s2upper(i8* %3)
  %4 = load i8*, i8** %s, align 8
  %call5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.4
  store i32 2, i32* %type, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end.4
  %5 = load i8*, i8** %s, align 8
  %call8 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #5
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store i32 3, i32* %type, align 4
  br label %if.end.12

if.else.11:                                       ; preds = %if.else
  br label %FAILURE

if.end.12:                                        ; preds = %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.7
  %6 = load i32, i32* @Alphabet_type, align 4
  %cmp14 = icmp eq i32 %6, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.13
  %7 = load i32, i32* %type, align 4
  call void @SetAlphabet(i32 %7)
  br label %if.end.20

if.else.16:                                       ; preds = %if.end.13
  %8 = load i32, i32* @Alphabet_type, align 4
  %9 = load i32, i32* %type, align 4
  %cmp17 = icmp ne i32 %8, %9
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else.16
  %10 = load i8*, i8** %rndfile.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.25, i32 0, i32 0), i8* %10)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.else.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.15
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* @Alphabet_size, align 4
  %cmp21 = icmp slt i32 %11, %12
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call22 = call i8* @Getword(%struct._IO_FILE* %13, i32 2)
  store i8* %call22, i8** %s, align 8
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body
  br label %FAILURE

if.end.25:                                        ; preds = %for.body
  %14 = load i8*, i8** %s, align 8
  %call26 = call double @atof(i8* %14) #5
  %conv = fptrunc double %call26 to float
  %15 = load i32, i32* %x, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load float*, float** %null.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %16, i64 %idxprom
  store float %conv, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %17 = load i32, i32* %x, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call27 = call i8* @Getword(%struct._IO_FILE* %18, i32 2)
  store i8* %call27, i8** %s, align 8
  %cmp28 = icmp eq i8* %call27, null
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.end
  br label %FAILURE

if.end.31:                                        ; preds = %for.end
  %19 = load i8*, i8** %s, align 8
  %call32 = call double @atof(i8* %19) #5
  %conv33 = fptrunc double %call32 to float
  %20 = load float*, float** %ret_p1.addr, align 8
  store float %conv33, float* %20, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call34 = call i32 @fclose(%struct._IO_FILE* %21)
  br label %return

FAILURE:                                          ; preds = %if.then.30, %if.then.24, %if.else.11, %if.then.3
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call35 = call i32 @fclose(%struct._IO_FILE* %22)
  %23 = load i8*, i8** %rndfile.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i32 0, i32 0), i8* %23)
  br label %return

return:                                           ; preds = %FAILURE, %if.end.31
  ret void
}

declare void @SetAlphabet(i32) #1

; Function Attrs: nounwind uwtable
define void @P7PriorifyHMM(%struct.plan7_s* %hmm, %struct.p7prior_s* %pri) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %pri.addr = alloca %struct.p7prior_s*, align 8
  %k = alloca i32, align 4
  %d = alloca float, align 4
  %tq = alloca [200 x float], align 16
  %mq = alloca [200 x float], align 16
  %iq = alloca [200 x float], align 16
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.p7prior_s* %pri, %struct.p7prior_s** %pri.addr, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 26
  %1 = load float*, float** %begin, align 8
  %add.ptr = getelementptr inbounds float, float* %1, i64 2
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 20
  %3 = load i32, i32* %M, align 4
  %sub = sub nsw i32 %3, 1
  call void @FSet(float* %add.ptr, i32 %sub, float 0.000000e+00)
  %4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 27
  %5 = load float*, float** %end, align 8
  %add.ptr1 = getelementptr inbounds float, float* %5, i64 1
  %6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %6, i32 0, i32 20
  %7 = load i32, i32* %M2, align 4
  %sub3 = sub nsw i32 %7, 1
  call void @FSet(float* %add.ptr1, i32 %sub3, float 0.000000e+00)
  %8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %8, i32 0, i32 24
  %9 = load float, float* %tbd1, align 4
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 26
  %11 = load float*, float** %begin4, align 8
  %arrayidx = getelementptr inbounds float, float* %11, i64 1
  %12 = load float, float* %arrayidx, align 4
  %add = fadd float %9, %12
  %conv = fpext float %add to double
  %add5 = fadd double %conv, 2.000000e+00
  %conv6 = fptrunc double %add5 to float
  store float %conv6, float* %d, align 4
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 24
  %14 = load float, float* %tbd17, align 4
  %conv8 = fpext float %14 to double
  %add9 = fadd double %conv8, 1.000000e+00
  %15 = load float, float* %d, align 4
  %conv10 = fpext float %15 to double
  %div = fdiv double %add9, %conv10
  %conv11 = fptrunc double %div to float
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd112 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 24
  store float %conv11, float* %tbd112, align 4
  %17 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %17, i32 0, i32 26
  %18 = load float*, float** %begin13, align 8
  %arrayidx14 = getelementptr inbounds float, float* %18, i64 1
  %19 = load float, float* %arrayidx14, align 4
  %conv15 = fpext float %19 to double
  %add16 = fadd double %conv15, 1.000000e+00
  %20 = load float, float* %d, align 4
  %conv17 = fpext float %20 to double
  %div18 = fdiv double %add16, %conv17
  %conv19 = fptrunc double %div18 to float
  %21 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %21, i32 0, i32 26
  %22 = load float*, float** %begin20, align 8
  %arrayidx21 = getelementptr inbounds float, float* %22, i64 1
  store float %conv19, float* %arrayidx21, align 4
  %23 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M22 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 20
  %24 = load i32, i32* %M22, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end23 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %25, i32 0, i32 27
  %26 = load float*, float** %end23, align 8
  %arrayidx24 = getelementptr inbounds float, float* %26, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx24, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %27 = load i32, i32* %k, align 4
  %28 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M25 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %28, i32 0, i32 20
  %29 = load i32, i32* %M25, align 4
  %cmp = icmp slt i32 %27, %29
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tpri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 11
  %31 = load i32*, i32** %tpri, align 8
  %cmp27 = icmp ne i32* %31, null
  br i1 %cmp27, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %32 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tpri30 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %33, i32 0, i32 11
  %34 = load i32*, i32** %tpri30, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %34, i64 %idxprom29
  %35 = load i32, i32* %arrayidx31, align 4
  %cmp32 = icmp sge i32 %35, 0
  br i1 %cmp32, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %36 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %36 to i64
  %37 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tpri35 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %37, i32 0, i32 11
  %38 = load i32*, i32** %tpri35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %38, i64 %idxprom34
  %39 = load i32, i32* %arrayidx36, align 4
  %40 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %tnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %40, i32 0, i32 1
  %41 = load i32, i32* %tnum, align 4
  %cmp37 = icmp sge i32 %39, %41
  br i1 %cmp37, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %if.then
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.39, %if.then
  %arraydecay = getelementptr inbounds [200 x float], [200 x float]* %tq, i32 0, i32 0
  %42 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %tnum40 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %42, i32 0, i32 1
  %43 = load i32, i32* %tnum40, align 4
  call void @FSet(float* %arraydecay, i32 %43, float 0.000000e+00)
  %44 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %44 to i64
  %45 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tpri42 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %45, i32 0, i32 11
  %46 = load i32*, i32** %tpri42, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %46, i64 %idxprom41
  %47 = load i32, i32* %arrayidx43, align 4
  %idxprom44 = sext i32 %47 to i64
  %arrayidx45 = getelementptr inbounds [200 x float], [200 x float]* %tq, i32 0, i64 %idxprom44
  store float 1.000000e+00, float* %arrayidx45, align 4
  br label %if.end.50

if.else:                                          ; preds = %land.lhs.true, %for.body
  %arraydecay46 = getelementptr inbounds [200 x float], [200 x float]* %tq, i32 0, i32 0
  %48 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %tq47 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %48, i32 0, i32 2
  %arraydecay48 = getelementptr inbounds [200 x float], [200 x float]* %tq47, i32 0, i32 0
  %49 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %tnum49 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %49, i32 0, i32 1
  %50 = load i32, i32* %tnum49, align 4
  call void @FCopy(float* %arraydecay46, float* %arraydecay48, i32 %50)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.end
  %51 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %51, i32 0, i32 12
  %52 = load i32*, i32** %mpri, align 8
  %cmp51 = icmp ne i32* %52, null
  br i1 %cmp51, label %land.lhs.true.53, label %if.else.74

land.lhs.true.53:                                 ; preds = %if.end.50
  %53 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %53 to i64
  %54 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri55 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %54, i32 0, i32 12
  %55 = load i32*, i32** %mpri55, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %55, i64 %idxprom54
  %56 = load i32, i32* %arrayidx56, align 4
  %cmp57 = icmp sge i32 %56, 0
  br i1 %cmp57, label %if.then.59, label %if.else.74

if.then.59:                                       ; preds = %land.lhs.true.53
  %57 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %57 to i64
  %58 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri61 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %58, i32 0, i32 12
  %59 = load i32*, i32** %mpri61, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %59, i64 %idxprom60
  %60 = load i32, i32* %arrayidx62, align 4
  %61 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %61, i32 0, i32 4
  %62 = load i32, i32* %mnum, align 4
  %cmp63 = icmp sge i32 %60, %62
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.59
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.then.59
  %arraydecay67 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i32 0
  %63 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mnum68 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %63, i32 0, i32 4
  %64 = load i32, i32* %mnum68, align 4
  call void @FSet(float* %arraydecay67, i32 %64, float 0.000000e+00)
  %65 = load i32, i32* %k, align 4
  %idxprom69 = sext i32 %65 to i64
  %66 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri70 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %66, i32 0, i32 12
  %67 = load i32*, i32** %mpri70, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %67, i64 %idxprom69
  %68 = load i32, i32* %arrayidx71, align 4
  %idxprom72 = sext i32 %68 to i64
  %arrayidx73 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i64 %idxprom72
  store float 1.000000e+00, float* %arrayidx73, align 4
  br label %if.end.79

if.else.74:                                       ; preds = %land.lhs.true.53, %if.end.50
  %arraydecay75 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i32 0
  %69 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mq76 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %69, i32 0, i32 5
  %arraydecay77 = getelementptr inbounds [200 x float], [200 x float]* %mq76, i32 0, i32 0
  %70 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mnum78 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %70, i32 0, i32 4
  %71 = load i32, i32* %mnum78, align 4
  call void @FCopy(float* %arraydecay75, float* %arraydecay77, i32 %71)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.74, %if.end.66
  %72 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ipri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %72, i32 0, i32 13
  %73 = load i32*, i32** %ipri, align 8
  %cmp80 = icmp ne i32* %73, null
  br i1 %cmp80, label %land.lhs.true.82, label %if.else.103

land.lhs.true.82:                                 ; preds = %if.end.79
  %74 = load i32, i32* %k, align 4
  %idxprom83 = sext i32 %74 to i64
  %75 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ipri84 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %75, i32 0, i32 13
  %76 = load i32*, i32** %ipri84, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %76, i64 %idxprom83
  %77 = load i32, i32* %arrayidx85, align 4
  %cmp86 = icmp sge i32 %77, 0
  br i1 %cmp86, label %if.then.88, label %if.else.103

if.then.88:                                       ; preds = %land.lhs.true.82
  %78 = load i32, i32* %k, align 4
  %idxprom89 = sext i32 %78 to i64
  %79 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ipri90 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %79, i32 0, i32 13
  %80 = load i32*, i32** %ipri90, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %80, i64 %idxprom89
  %81 = load i32, i32* %arrayidx91, align 4
  %82 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %inum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %82, i32 0, i32 7
  %83 = load i32, i32* %inum, align 4
  %cmp92 = icmp sge i32 %81, %83
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.88
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.then.88
  %arraydecay96 = getelementptr inbounds [200 x float], [200 x float]* %iq, i32 0, i32 0
  %84 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %inum97 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %84, i32 0, i32 7
  %85 = load i32, i32* %inum97, align 4
  call void @FSet(float* %arraydecay96, i32 %85, float 0.000000e+00)
  %86 = load i32, i32* %k, align 4
  %idxprom98 = sext i32 %86 to i64
  %87 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ipri99 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %87, i32 0, i32 13
  %88 = load i32*, i32** %ipri99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %88, i64 %idxprom98
  %89 = load i32, i32* %arrayidx100, align 4
  %idxprom101 = sext i32 %89 to i64
  %arrayidx102 = getelementptr inbounds [200 x float], [200 x float]* %iq, i32 0, i64 %idxprom101
  store float 1.000000e+00, float* %arrayidx102, align 4
  br label %if.end.108

if.else.103:                                      ; preds = %land.lhs.true.82, %if.end.79
  %arraydecay104 = getelementptr inbounds [200 x float], [200 x float]* %iq, i32 0, i32 0
  %90 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %iq105 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %90, i32 0, i32 8
  %arraydecay106 = getelementptr inbounds [200 x float], [200 x float]* %iq105, i32 0, i32 0
  %91 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %inum107 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %91, i32 0, i32 7
  %92 = load i32, i32* %inum107, align 4
  call void @FCopy(float* %arraydecay104, float* %arraydecay106, i32 %92)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.103, %if.end.95
  %93 = load i32, i32* %k, align 4
  %idxprom109 = sext i32 %93 to i64
  %94 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %94, i32 0, i32 21
  %95 = load float**, float*** %t, align 8
  %arrayidx110 = getelementptr inbounds float*, float** %95, i64 %idxprom109
  %96 = load float*, float** %arrayidx110, align 8
  %97 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %arraydecay111 = getelementptr inbounds [200 x float], [200 x float]* %tq, i32 0, i32 0
  call void @P7PriorifyTransitionVector(float* %96, %struct.p7prior_s* %97, float* %arraydecay111)
  %98 = load i32, i32* %k, align 4
  %idxprom112 = sext i32 %98 to i64
  %99 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %99, i32 0, i32 22
  %100 = load float**, float*** %mat, align 8
  %arrayidx113 = getelementptr inbounds float*, float** %100, i64 %idxprom112
  %101 = load float*, float** %arrayidx113, align 8
  %102 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %103 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mnum114 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %103, i32 0, i32 4
  %104 = load i32, i32* %mnum114, align 4
  %arraydecay115 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i32 0
  %105 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %m = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %105, i32 0, i32 6
  %arraydecay116 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %m, i32 0, i32 0
  call void @P7PriorifyEmissionVector(float* %101, %struct.p7prior_s* %102, i32 %104, float* %arraydecay115, [20 x float]* %arraydecay116, float* null)
  %106 = load i32, i32* %k, align 4
  %idxprom117 = sext i32 %106 to i64
  %107 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %107, i32 0, i32 23
  %108 = load float**, float*** %ins, align 8
  %arrayidx118 = getelementptr inbounds float*, float** %108, i64 %idxprom117
  %109 = load float*, float** %arrayidx118, align 8
  %110 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %111 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %inum119 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %111, i32 0, i32 7
  %112 = load i32, i32* %inum119, align 4
  %arraydecay120 = getelementptr inbounds [200 x float], [200 x float]* %iq, i32 0, i32 0
  %113 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %i = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %113, i32 0, i32 9
  %arraydecay121 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i, i32 0, i32 0
  call void @P7PriorifyEmissionVector(float* %109, %struct.p7prior_s* %110, i32 %112, float* %arraydecay120, [20 x float]* %arraydecay121, float* null)
  br label %for.inc

for.inc:                                          ; preds = %if.end.108
  %114 = load i32, i32* %k, align 4
  %inc = add nsw i32 %114, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %115 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri122 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %115, i32 0, i32 12
  %116 = load i32*, i32** %mpri122, align 8
  %cmp123 = icmp ne i32* %116, null
  br i1 %cmp123, label %land.lhs.true.125, label %if.else.150

land.lhs.true.125:                                ; preds = %for.end
  %117 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M126 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %117, i32 0, i32 20
  %118 = load i32, i32* %M126, align 4
  %idxprom127 = sext i32 %118 to i64
  %119 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri128 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %119, i32 0, i32 12
  %120 = load i32*, i32** %mpri128, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %120, i64 %idxprom127
  %121 = load i32, i32* %arrayidx129, align 4
  %cmp130 = icmp sge i32 %121, 0
  br i1 %cmp130, label %if.then.132, label %if.else.150

if.then.132:                                      ; preds = %land.lhs.true.125
  %122 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M133 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %122, i32 0, i32 20
  %123 = load i32, i32* %M133, align 4
  %idxprom134 = sext i32 %123 to i64
  %124 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri135 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %124, i32 0, i32 12
  %125 = load i32*, i32** %mpri135, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %125, i64 %idxprom134
  %126 = load i32, i32* %arrayidx136, align 4
  %127 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mnum137 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %127, i32 0, i32 4
  %128 = load i32, i32* %mnum137, align 4
  %cmp138 = icmp sge i32 %126, %128
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.then.132
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.140, %if.then.132
  %arraydecay142 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i32 0
  %129 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mnum143 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %129, i32 0, i32 4
  %130 = load i32, i32* %mnum143, align 4
  call void @FSet(float* %arraydecay142, i32 %130, float 0.000000e+00)
  %131 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M144 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %131, i32 0, i32 20
  %132 = load i32, i32* %M144, align 4
  %idxprom145 = sext i32 %132 to i64
  %133 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri146 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %133, i32 0, i32 12
  %134 = load i32*, i32** %mpri146, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %134, i64 %idxprom145
  %135 = load i32, i32* %arrayidx147, align 4
  %idxprom148 = sext i32 %135 to i64
  %arrayidx149 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i64 %idxprom148
  store float 1.000000e+00, float* %arrayidx149, align 4
  br label %if.end.155

if.else.150:                                      ; preds = %land.lhs.true.125, %for.end
  %arraydecay151 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i32 0
  %136 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mq152 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %136, i32 0, i32 5
  %arraydecay153 = getelementptr inbounds [200 x float], [200 x float]* %mq152, i32 0, i32 0
  %137 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mnum154 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %137, i32 0, i32 4
  %138 = load i32, i32* %mnum154, align 4
  call void @FCopy(float* %arraydecay151, float* %arraydecay153, i32 %138)
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.150, %if.end.141
  %139 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M156 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %139, i32 0, i32 20
  %140 = load i32, i32* %M156, align 4
  %idxprom157 = sext i32 %140 to i64
  %141 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat158 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %141, i32 0, i32 22
  %142 = load float**, float*** %mat158, align 8
  %arrayidx159 = getelementptr inbounds float*, float** %142, i64 %idxprom157
  %143 = load float*, float** %arrayidx159, align 8
  %144 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %145 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mnum160 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %145, i32 0, i32 4
  %146 = load i32, i32* %mnum160, align 4
  %arraydecay161 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i32 0
  %147 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %m162 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %147, i32 0, i32 6
  %arraydecay163 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %m162, i32 0, i32 0
  call void @P7PriorifyEmissionVector(float* %143, %struct.p7prior_s* %144, i32 %146, float* %arraydecay161, [20 x float]* %arraydecay163, float* null)
  %148 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @Plan7Renormalize(%struct.plan7_s* %148)
  ret void
}

declare void @FCopy(float*, float*, i32) #1

; Function Attrs: nounwind uwtable
define void @P7PriorifyTransitionVector(float* %t, %struct.p7prior_s* %prior, float* %tq) #0 {
entry:
  %t.addr = alloca float*, align 8
  %prior.addr = alloca %struct.p7prior_s*, align 8
  %tq.addr = alloca float*, align 8
  %ts = alloca i32, align 4
  %q = alloca i32, align 4
  %mix = alloca [200 x float], align 16
  %totm = alloca float, align 4
  %totd = alloca float, align 4
  %toti = alloca float, align 4
  %xi = alloca float, align 4
  store float* %t, float** %t.addr, align 8
  store %struct.p7prior_s* %prior, %struct.p7prior_s** %prior.addr, align 8
  store float* %tq, float** %tq.addr, align 8
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx, align 4
  %0 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %strategy = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %0, i32 0, i32 0
  %1 = load i32, i32* %strategy, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %strategy1 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %2, i32 0, i32 0
  %3 = load i32, i32* %strategy1, align 4
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %mnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %4, i32 0, i32 4
  %5 = load i32, i32* %mnum, align 4
  %cmp3 = icmp sgt i32 %5, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %q, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %q, align 4
  %7 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %tnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %7, i32 0, i32 1
  %8 = load i32, i32* %tnum, align 4
  %cmp4 = icmp slt i32 %6, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %q, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load float*, float** %tq.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %10, i64 %idxprom
  %11 = load float, float* %arrayidx5, align 4
  %conv = fpext float %11 to double
  %cmp6 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %12 = load i32, i32* %q, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load float*, float** %tq.addr, align 8
  %arrayidx9 = getelementptr inbounds float, float* %13, i64 %idxprom8
  %14 = load float, float* %arrayidx9, align 4
  %conv10 = fpext float %14 to double
  %call = call double @log(double %conv10) #4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call, %cond.true ], [ -9.990000e+02, %cond.false ]
  %conv11 = fptrunc double %cond to float
  %15 = load i32, i32* %q, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i64 %idxprom12
  store float %conv11, float* %arrayidx13, align 4
  %16 = load float*, float** %t.addr, align 8
  %17 = load i32, i32* %q, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %t15 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %18, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t15, i32 0, i64 %idxprom14
  %arraydecay = getelementptr inbounds [7 x float], [7 x float]* %arrayidx16, i32 0, i32 0
  %call17 = call float @Logp_cvec(float* %16, i32 3, float* %arraydecay)
  %19 = load i32, i32* %q, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i64 %idxprom18
  %20 = load float, float* %arrayidx19, align 4
  %add = fadd float %20, %call17
  store float %add, float* %arrayidx19, align 4
  %21 = load float*, float** %t.addr, align 8
  %add.ptr = getelementptr inbounds float, float* %21, i64 3
  %22 = load i32, i32* %q, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %t21 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %23, i32 0, i32 3
  %arrayidx22 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t21, i32 0, i64 %idxprom20
  %arraydecay23 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx22, i32 0, i32 0
  %add.ptr24 = getelementptr inbounds float, float* %arraydecay23, i64 3
  %call25 = call float @Logp_cvec(float* %add.ptr, i32 2, float* %add.ptr24)
  %24 = load i32, i32* %q, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i64 %idxprom26
  %25 = load float, float* %arrayidx27, align 4
  %add28 = fadd float %25, %call25
  store float %add28, float* %arrayidx27, align 4
  %26 = load float*, float** %t.addr, align 8
  %add.ptr29 = getelementptr inbounds float, float* %26, i64 5
  %27 = load i32, i32* %q, align 4
  %idxprom30 = sext i32 %27 to i64
  %28 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %t31 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %28, i32 0, i32 3
  %arrayidx32 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t31, i32 0, i64 %idxprom30
  %arraydecay33 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx32, i32 0, i32 0
  %add.ptr34 = getelementptr inbounds float, float* %arraydecay33, i64 5
  %call35 = call float @Logp_cvec(float* %add.ptr29, i32 2, float* %add.ptr34)
  %29 = load i32, i32* %q, align 4
  %idxprom36 = sext i32 %29 to i64
  %arrayidx37 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i64 %idxprom36
  %30 = load float, float* %arrayidx37, align 4
  %add38 = fadd float %30, %call35
  store float %add38, float* %arrayidx37, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %31 = load i32, i32* %q, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %q, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay39 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i32 0
  %32 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %tnum40 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %32, i32 0, i32 1
  %33 = load i32, i32* %tnum40, align 4
  call void @LogNorm(float* %arraydecay39, i32 %33)
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %lor.lhs.false
  %34 = load float*, float** %t.addr, align 8
  %call41 = call float @FSum(float* %34, i32 3)
  store float %call41, float* %totm, align 4
  %35 = load float*, float** %t.addr, align 8
  %arrayidx42 = getelementptr inbounds float, float* %35, i64 3
  %36 = load float, float* %arrayidx42, align 4
  %37 = load float*, float** %t.addr, align 8
  %arrayidx43 = getelementptr inbounds float, float* %37, i64 4
  %38 = load float, float* %arrayidx43, align 4
  %add44 = fadd float %36, %38
  store float %add44, float* %toti, align 4
  %39 = load float*, float** %t.addr, align 8
  %arrayidx45 = getelementptr inbounds float, float* %39, i64 5
  %40 = load float, float* %arrayidx45, align 4
  %41 = load float*, float** %t.addr, align 8
  %arrayidx46 = getelementptr inbounds float, float* %41, i64 6
  %42 = load float, float* %arrayidx46, align 4
  %add47 = fadd float %40, %42
  store float %add47, float* %totd, align 4
  store i32 0, i32* %ts, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.127, %if.end
  %43 = load i32, i32* %ts, align 4
  %cmp49 = icmp slt i32 %43, 7
  br i1 %cmp49, label %for.body.51, label %for.end.129

for.body.51:                                      ; preds = %for.cond.48
  store float 0.000000e+00, float* %xi, align 4
  store i32 0, i32* %q, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.122, %for.body.51
  %44 = load i32, i32* %q, align 4
  %45 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %tnum53 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %45, i32 0, i32 1
  %46 = load i32, i32* %tnum53, align 4
  %cmp54 = icmp slt i32 %44, %46
  br i1 %cmp54, label %for.body.56, label %for.end.124

for.body.56:                                      ; preds = %for.cond.52
  %47 = load i32, i32* %ts, align 4
  switch i32 %47, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.74
    i32 4, label %sw.bb.74
    i32 5, label %sw.bb.98
    i32 6, label %sw.bb.98
  ]

sw.bb:                                            ; preds = %for.body.56, %for.body.56, %for.body.56
  %48 = load i32, i32* %q, align 4
  %idxprom57 = sext i32 %48 to i64
  %arrayidx58 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i64 %idxprom57
  %49 = load float, float* %arrayidx58, align 4
  %50 = load i32, i32* %ts, align 4
  %idxprom59 = sext i32 %50 to i64
  %51 = load float*, float** %t.addr, align 8
  %arrayidx60 = getelementptr inbounds float, float* %51, i64 %idxprom59
  %52 = load float, float* %arrayidx60, align 4
  %53 = load i32, i32* %ts, align 4
  %idxprom61 = sext i32 %53 to i64
  %54 = load i32, i32* %q, align 4
  %idxprom62 = sext i32 %54 to i64
  %55 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %t63 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %55, i32 0, i32 3
  %arrayidx64 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t63, i32 0, i64 %idxprom62
  %arrayidx65 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx64, i32 0, i64 %idxprom61
  %56 = load float, float* %arrayidx65, align 4
  %add66 = fadd float %52, %56
  %mul = fmul float %49, %add66
  %57 = load float, float* %totm, align 4
  %58 = load i32, i32* %q, align 4
  %idxprom67 = sext i32 %58 to i64
  %59 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %t68 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %59, i32 0, i32 3
  %arrayidx69 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t68, i32 0, i64 %idxprom67
  %arraydecay70 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx69, i32 0, i32 0
  %call71 = call float @FSum(float* %arraydecay70, i32 3)
  %add72 = fadd float %57, %call71
  %div = fdiv float %mul, %add72
  %60 = load float, float* %xi, align 4
  %add73 = fadd float %60, %div
  store float %add73, float* %xi, align 4
  br label %sw.epilog

sw.bb.74:                                         ; preds = %for.body.56, %for.body.56
  %61 = load i32, i32* %q, align 4
  %idxprom75 = sext i32 %61 to i64
  %arrayidx76 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i64 %idxprom75
  %62 = load float, float* %arrayidx76, align 4
  %63 = load i32, i32* %ts, align 4
  %idxprom77 = sext i32 %63 to i64
  %64 = load float*, float** %t.addr, align 8
  %arrayidx78 = getelementptr inbounds float, float* %64, i64 %idxprom77
  %65 = load float, float* %arrayidx78, align 4
  %66 = load i32, i32* %ts, align 4
  %idxprom79 = sext i32 %66 to i64
  %67 = load i32, i32* %q, align 4
  %idxprom80 = sext i32 %67 to i64
  %68 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %t81 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %68, i32 0, i32 3
  %arrayidx82 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t81, i32 0, i64 %idxprom80
  %arrayidx83 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx82, i32 0, i64 %idxprom79
  %69 = load float, float* %arrayidx83, align 4
  %add84 = fadd float %65, %69
  %mul85 = fmul float %62, %add84
  %70 = load float, float* %toti, align 4
  %71 = load i32, i32* %q, align 4
  %idxprom86 = sext i32 %71 to i64
  %72 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %t87 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %72, i32 0, i32 3
  %arrayidx88 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t87, i32 0, i64 %idxprom86
  %arrayidx89 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx88, i32 0, i64 3
  %73 = load float, float* %arrayidx89, align 4
  %add90 = fadd float %70, %73
  %74 = load i32, i32* %q, align 4
  %idxprom91 = sext i32 %74 to i64
  %75 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %t92 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %75, i32 0, i32 3
  %arrayidx93 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t92, i32 0, i64 %idxprom91
  %arrayidx94 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx93, i32 0, i64 4
  %76 = load float, float* %arrayidx94, align 4
  %add95 = fadd float %add90, %76
  %div96 = fdiv float %mul85, %add95
  %77 = load float, float* %xi, align 4
  %add97 = fadd float %77, %div96
  store float %add97, float* %xi, align 4
  br label %sw.epilog

sw.bb.98:                                         ; preds = %for.body.56, %for.body.56
  %78 = load i32, i32* %q, align 4
  %idxprom99 = sext i32 %78 to i64
  %arrayidx100 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i64 %idxprom99
  %79 = load float, float* %arrayidx100, align 4
  %80 = load i32, i32* %ts, align 4
  %idxprom101 = sext i32 %80 to i64
  %81 = load float*, float** %t.addr, align 8
  %arrayidx102 = getelementptr inbounds float, float* %81, i64 %idxprom101
  %82 = load float, float* %arrayidx102, align 4
  %83 = load i32, i32* %ts, align 4
  %idxprom103 = sext i32 %83 to i64
  %84 = load i32, i32* %q, align 4
  %idxprom104 = sext i32 %84 to i64
  %85 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %t105 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %85, i32 0, i32 3
  %arrayidx106 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t105, i32 0, i64 %idxprom104
  %arrayidx107 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx106, i32 0, i64 %idxprom103
  %86 = load float, float* %arrayidx107, align 4
  %add108 = fadd float %82, %86
  %mul109 = fmul float %79, %add108
  %87 = load float, float* %totd, align 4
  %88 = load i32, i32* %q, align 4
  %idxprom110 = sext i32 %88 to i64
  %89 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %t111 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %89, i32 0, i32 3
  %arrayidx112 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t111, i32 0, i64 %idxprom110
  %arrayidx113 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx112, i32 0, i64 5
  %90 = load float, float* %arrayidx113, align 4
  %add114 = fadd float %87, %90
  %91 = load i32, i32* %q, align 4
  %idxprom115 = sext i32 %91 to i64
  %92 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %t116 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %92, i32 0, i32 3
  %arrayidx117 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t116, i32 0, i64 %idxprom115
  %arrayidx118 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx117, i32 0, i64 6
  %93 = load float, float* %arrayidx118, align 4
  %add119 = fadd float %add114, %93
  %div120 = fdiv float %mul109, %add119
  %94 = load float, float* %xi, align 4
  %add121 = fadd float %94, %div120
  store float %add121, float* %xi, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.56, %sw.bb.98, %sw.bb.74, %sw.bb
  br label %for.inc.122

for.inc.122:                                      ; preds = %sw.epilog
  %95 = load i32, i32* %q, align 4
  %inc123 = add nsw i32 %95, 1
  store i32 %inc123, i32* %q, align 4
  br label %for.cond.52

for.end.124:                                      ; preds = %for.cond.52
  %96 = load float, float* %xi, align 4
  %97 = load i32, i32* %ts, align 4
  %idxprom125 = sext i32 %97 to i64
  %98 = load float*, float** %t.addr, align 8
  %arrayidx126 = getelementptr inbounds float, float* %98, i64 %idxprom125
  store float %96, float* %arrayidx126, align 4
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.end.124
  %99 = load i32, i32* %ts, align 4
  %inc128 = add nsw i32 %99, 1
  store i32 %inc128, i32* %ts, align 4
  br label %for.cond.48

for.end.129:                                      ; preds = %for.cond.48
  %100 = load float*, float** %t.addr, align 8
  call void @FNorm(float* %100, i32 3)
  %101 = load float*, float** %t.addr, align 8
  %add.ptr130 = getelementptr inbounds float, float* %101, i64 3
  call void @FNorm(float* %add.ptr130, i32 2)
  %102 = load float*, float** %t.addr, align 8
  %add.ptr131 = getelementptr inbounds float, float* %102, i64 5
  call void @FNorm(float* %add.ptr131, i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @P7PriorifyEmissionVector(float* %vec, %struct.p7prior_s* %pri, i32 %num, float* %eq, [20 x float]* %e, float* %ret_mix) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %pri.addr = alloca %struct.p7prior_s*, align 8
  %num.addr = alloca i32, align 4
  %eq.addr = alloca float*, align 8
  %e.addr = alloca [20 x float]*, align 8
  %ret_mix.addr = alloca float*, align 8
  %x = alloca i32, align 4
  %q = alloca i32, align 4
  %mix = alloca [200 x float], align 16
  %totc = alloca float, align 4
  %tota = alloca float, align 4
  %xi = alloca float, align 4
  store float* %vec, float** %vec.addr, align 8
  store %struct.p7prior_s* %pri, %struct.p7prior_s** %pri.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store float* %eq, float** %eq.addr, align 8
  store [20 x float]* %e, [20 x float]** %e.addr, align 8
  store float* %ret_mix, float** %ret_mix.addr, align 8
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx, align 4
  %0 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %strategy = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %0, i32 0, i32 0
  %1 = load i32, i32* %strategy, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %num.addr, align 4
  %cmp1 = icmp sgt i32 %2, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %q, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %q, align 4
  %4 = load i32, i32* %num.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %q, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load float*, float** %eq.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %6, i64 %idxprom
  %7 = load float, float* %arrayidx3, align 4
  %conv = fpext float %7 to double
  %cmp4 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %8 = load i32, i32* %q, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load float*, float** %eq.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %9, i64 %idxprom6
  %10 = load float, float* %arrayidx7, align 4
  %conv8 = fpext float %10 to double
  %call = call double @log(double %conv8) #4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call, %cond.true ], [ -9.990000e+02, %cond.false ]
  %conv9 = fptrunc double %cond to float
  %11 = load i32, i32* %q, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i64 %idxprom10
  store float %conv9, float* %arrayidx11, align 4
  %12 = load float*, float** %vec.addr, align 8
  %13 = load i32, i32* @Alphabet_size, align 4
  %14 = load i32, i32* %q, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load [20 x float]*, [20 x float]** %e.addr, align 8
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %15, i64 %idxprom12
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 0
  %call14 = call float @Logp_cvec(float* %12, i32 %13, float* %arraydecay)
  %16 = load i32, i32* %q, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i64 %idxprom15
  %17 = load float, float* %arrayidx16, align 4
  %add = fadd float %17, %call14
  store float %add, float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %18 = load i32, i32* %q, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %q, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay17 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i32 0
  %19 = load i32, i32* %num.addr, align 4
  call void @LogNorm(float* %arraydecay17, i32 %19)
  br label %if.end.37

if.else:                                          ; preds = %land.lhs.true, %entry
  %20 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %strategy18 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %20, i32 0, i32 0
  %21 = load i32, i32* %strategy18, align 4
  %cmp19 = icmp eq i32 %21, 1
  br i1 %cmp19, label %land.lhs.true.21, label %if.end

land.lhs.true.21:                                 ; preds = %if.else
  %22 = load i32, i32* %num.addr, align 4
  %cmp22 = icmp sgt i32 %22, 1
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %land.lhs.true.21
  store i32 0, i32* %q, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.33, %if.then.24
  %23 = load i32, i32* %q, align 4
  %24 = load i32, i32* @Alphabet_size, align 4
  %cmp26 = icmp slt i32 %23, %24
  br i1 %cmp26, label %for.body.28, label %for.end.35

for.body.28:                                      ; preds = %for.cond.25
  %25 = load i32, i32* %q, align 4
  %idxprom29 = sext i32 %25 to i64
  %26 = load float*, float** %vec.addr, align 8
  %arrayidx30 = getelementptr inbounds float, float* %26, i64 %idxprom29
  %27 = load float, float* %arrayidx30, align 4
  %28 = load i32, i32* %q, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i64 %idxprom31
  store float %27, float* %arrayidx32, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.28
  %29 = load i32, i32* %q, align 4
  %inc34 = add nsw i32 %29, 1
  store i32 %inc34, i32* %q, align 4
  br label %for.cond.25

for.end.35:                                       ; preds = %for.cond.25
  %arraydecay36 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i32 0
  %30 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %arraydecay36, i32 %30)
  br label %if.end

if.end:                                           ; preds = %for.end.35, %land.lhs.true.21, %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %for.end
  %31 = load float*, float** %vec.addr, align 8
  %32 = load i32, i32* @Alphabet_size, align 4
  %call38 = call float @FSum(float* %31, i32 %32)
  store float %call38, float* %totc, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.67, %if.end.37
  %33 = load i32, i32* %x, align 4
  %34 = load i32, i32* @Alphabet_size, align 4
  %cmp40 = icmp slt i32 %33, %34
  br i1 %cmp40, label %for.body.42, label %for.end.69

for.body.42:                                      ; preds = %for.cond.39
  store float 0.000000e+00, float* %xi, align 4
  store i32 0, i32* %q, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.62, %for.body.42
  %35 = load i32, i32* %q, align 4
  %36 = load i32, i32* %num.addr, align 4
  %cmp44 = icmp slt i32 %35, %36
  br i1 %cmp44, label %for.body.46, label %for.end.64

for.body.46:                                      ; preds = %for.cond.43
  %37 = load i32, i32* %q, align 4
  %idxprom47 = sext i32 %37 to i64
  %38 = load [20 x float]*, [20 x float]** %e.addr, align 8
  %arrayidx48 = getelementptr inbounds [20 x float], [20 x float]* %38, i64 %idxprom47
  %arraydecay49 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx48, i32 0, i32 0
  %39 = load i32, i32* @Alphabet_size, align 4
  %call50 = call float @FSum(float* %arraydecay49, i32 %39)
  store float %call50, float* %tota, align 4
  %40 = load i32, i32* %q, align 4
  %idxprom51 = sext i32 %40 to i64
  %arrayidx52 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i64 %idxprom51
  %41 = load float, float* %arrayidx52, align 4
  %42 = load i32, i32* %x, align 4
  %idxprom53 = sext i32 %42 to i64
  %43 = load float*, float** %vec.addr, align 8
  %arrayidx54 = getelementptr inbounds float, float* %43, i64 %idxprom53
  %44 = load float, float* %arrayidx54, align 4
  %45 = load i32, i32* %x, align 4
  %idxprom55 = sext i32 %45 to i64
  %46 = load i32, i32* %q, align 4
  %idxprom56 = sext i32 %46 to i64
  %47 = load [20 x float]*, [20 x float]** %e.addr, align 8
  %arrayidx57 = getelementptr inbounds [20 x float], [20 x float]* %47, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx57, i32 0, i64 %idxprom55
  %48 = load float, float* %arrayidx58, align 4
  %add59 = fadd float %44, %48
  %mul = fmul float %41, %add59
  %49 = load float, float* %totc, align 4
  %50 = load float, float* %tota, align 4
  %add60 = fadd float %49, %50
  %div = fdiv float %mul, %add60
  %51 = load float, float* %xi, align 4
  %add61 = fadd float %51, %div
  store float %add61, float* %xi, align 4
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.46
  %52 = load i32, i32* %q, align 4
  %inc63 = add nsw i32 %52, 1
  store i32 %inc63, i32* %q, align 4
  br label %for.cond.43

for.end.64:                                       ; preds = %for.cond.43
  %53 = load float, float* %xi, align 4
  %54 = load i32, i32* %x, align 4
  %idxprom65 = sext i32 %54 to i64
  %55 = load float*, float** %vec.addr, align 8
  %arrayidx66 = getelementptr inbounds float, float* %55, i64 %idxprom65
  store float %53, float* %arrayidx66, align 4
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.end.64
  %56 = load i32, i32* %x, align 4
  %inc68 = add nsw i32 %56, 1
  store i32 %inc68, i32* %x, align 4
  br label %for.cond.39

for.end.69:                                       ; preds = %for.cond.39
  %57 = load float*, float** %vec.addr, align 8
  %58 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %57, i32 %58)
  %59 = load float*, float** %ret_mix.addr, align 8
  %cmp70 = icmp ne float* %59, null
  br i1 %cmp70, label %if.then.72, label %if.end.84

if.then.72:                                       ; preds = %for.end.69
  store i32 0, i32* %q, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.81, %if.then.72
  %60 = load i32, i32* %q, align 4
  %61 = load i32, i32* %num.addr, align 4
  %cmp74 = icmp slt i32 %60, %61
  br i1 %cmp74, label %for.body.76, label %for.end.83

for.body.76:                                      ; preds = %for.cond.73
  %62 = load i32, i32* %q, align 4
  %idxprom77 = sext i32 %62 to i64
  %arrayidx78 = getelementptr inbounds [200 x float], [200 x float]* %mix, i32 0, i64 %idxprom77
  %63 = load float, float* %arrayidx78, align 4
  %64 = load i32, i32* %q, align 4
  %idxprom79 = sext i32 %64 to i64
  %65 = load float*, float** %ret_mix.addr, align 8
  %arrayidx80 = getelementptr inbounds float, float* %65, i64 %idxprom79
  store float %63, float* %arrayidx80, align 4
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.76
  %66 = load i32, i32* %q, align 4
  %inc82 = add nsw i32 %66, 1
  store i32 %inc82, i32* %q, align 4
  br label %for.cond.73

for.end.83:                                       ; preds = %for.cond.73
  br label %if.end.84

if.end.84:                                        ; preds = %for.end.83, %for.end.69
  ret void
}

declare void @Plan7Renormalize(%struct.plan7_s*) #1

; Function Attrs: nounwind
declare double @log(double) #2

declare float @Logp_cvec(float*, i32, float*) #1

declare void @LogNorm(float*, i32) #1

declare float @FSum(float*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
