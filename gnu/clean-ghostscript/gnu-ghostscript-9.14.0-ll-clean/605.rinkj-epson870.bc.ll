; ModuleID = './rinkj-epson870.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._RinkjDevice = type { i32 (%struct._RinkjDevice*, i8*)*, i32 (%struct._RinkjDevice*, %struct._RinkjDeviceParams*)*, i32 (%struct._RinkjDevice*, i8**)*, i32 }
%struct._RinkjDeviceParams = type { i32, i32, i32, i8* }
%struct._RinkjByteStream = type { i32 (%struct._RinkjByteStream*, i8*, i32)* }
%struct._RinkjEscp = type { %struct._RinkjDevice, %struct._RinkjByteStream*, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Resolution\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Manufacturer\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Model\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"BitsPerSample\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"NumChan\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"PrinterWeave\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Microdot\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Unidirectional\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"AutoCut\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"BlankSkip\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"\0C\1B@\00", align 1
@rinkj_escp_ytop.four = internal constant [4 x i32] [i32 0, i32 3, i32 1, i32 2], align 16
@rinkj_escp_ytop.six = internal constant [6 x i32] [i32 0, i32 3, i32 2, i32 5, i32 1, i32 4], align 16
@rinkj_escp_ytop.sixteen = internal constant [16 x i32] [i32 0, i32 3, i32 1, i32 0, i32 3, i32 1, i32 2, i32 3, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 3, i32 2], align 16
@rinkj_escp_flush.plane = internal constant [7 x i32] [i32 3, i32 1, i32 0, i32 2, i32 5, i32 4, i32 6], align 16
@rinkj_escp_flush.color = internal constant [7 x i32] [i32 0, i32 1, i32 2, i32 4, i32 17, i32 18, i32 16], align 16
@.str.11 = private unnamed_addr constant [12 x i8] c"\1B(V%c%c%c%c\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"\1B(v%c%c%c%c%c%c\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"\1B($\04%c%c%c%c%c\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"\1Bi%c%c%c%c%c%c%c\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Stylus Photo 870\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Stylus Photo 2200\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Stylus Photo 7600\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Stylus C80\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"%c%c%c\1B\01@EJL 1284.4\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"@EJL     \0A\1B@\1B@\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"\1B(G\01%c\01\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"\1B(U\05%c\02\02\02\A0\05\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"\1B(C\02%cx\1F\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"\1B(D\04%c@8x(\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"\1B(i\01%c%c\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"\1BU%c\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"\1B(e\02%c%c%c\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"\1B(R%c%c%cREMOTE1\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"PP\03%c%c\02%cPH\02%c%c\01SN\03%c%c\04k\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"\1B%c%c%c\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"\1B(C\02%c\80p\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"\1B(U\05%c%c%c%c%c%c\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"\1B(D\04%c%c%c%c%c\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"\1B@\1B@\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"SN%c%c%c%c%c\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"AC%c%c%c%c\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"DR%c%c%c%c%c%c\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"PH%c%c%c%c\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"FP%c%c%c%c%c\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"PP%c%c%c%c%c\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"IK%c%c%c%c\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"EX%c%c%c%c%c%c%c%c\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"\1B(S\08%c%c%c%c%c%c%c%c%c\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"\1B(c\08%c%c%c%c%c%c%c%c%c\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"\1B(c\08%c \FE\FF\FF\FE\1E%c%c\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"\1B(D\04%c@8P(\00", align 1

; Function Attrs: nounwind uwtable
define %struct._RinkjDevice* @rinkj_epson870_new(%struct._RinkjByteStream* %out) #0 {
entry:
  %out.addr = alloca %struct._RinkjByteStream*, align 8
  %result = alloca %struct._RinkjEscp*, align 8
  store %struct._RinkjByteStream* %out, %struct._RinkjByteStream** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjEscp** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 200) #6
  %1 = bitcast i8* %call to %struct._RinkjEscp*
  store %struct._RinkjEscp* %1, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %2 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %super = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %2, i32 0, i32 0
  %set = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %super, i32 0, i32 0
  store i32 (%struct._RinkjDevice*, i8*)* @rinkj_escp_set, i32 (%struct._RinkjDevice*, i8*)** %set, align 8, !tbaa !5
  %3 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %super1 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %3, i32 0, i32 0
  %write = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %super1, i32 0, i32 2
  store i32 (%struct._RinkjDevice*, i8**)* @rinkj_escp_write, i32 (%struct._RinkjDevice*, i8**)** %write, align 8, !tbaa !9
  %4 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %super2 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %4, i32 0, i32 0
  %init = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %super2, i32 0, i32 1
  store i32 (%struct._RinkjDevice*, %struct._RinkjDeviceParams*)* @rinkj_escp_init, i32 (%struct._RinkjDevice*, %struct._RinkjDeviceParams*)** %init, align 8, !tbaa !10
  %5 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %super3 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %5, i32 0, i32 0
  %init_happened = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %super3, i32 0, i32 3
  store i32 0, i32* %init_happened, align 4, !tbaa !11
  %6 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %6, i32 0, i32 2
  store i32 0, i32* %width, align 4, !tbaa !12
  %7 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out.addr, align 8, !tbaa !1
  %8 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %out4 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %8, i32 0, i32 1
  store %struct._RinkjByteStream* %7, %struct._RinkjByteStream** %out4, align 8, !tbaa !13
  %9 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %num_chan = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %9, i32 0, i32 7
  store i32 4, i32* %num_chan, align 4, !tbaa !14
  %10 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %10, i32 0, i32 8
  store i32 1, i32* %bps, align 4, !tbaa !15
  %11 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %manufacturer = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %11, i32 0, i32 5
  store i8* null, i8** %manufacturer, align 8, !tbaa !16
  %12 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %model = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %12, i32 0, i32 6
  store i8* null, i8** %model, align 8, !tbaa !17
  %13 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %autocut = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %13, i32 0, i32 26
  store i32 -1, i32* %autocut, align 4, !tbaa !18
  %14 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %microdot = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %14, i32 0, i32 28
  store i32 -1, i32* %microdot, align 4, !tbaa !19
  %15 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %unidir = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %15, i32 0, i32 29
  store i32 -1, i32* %unidir, align 4, !tbaa !20
  %16 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %printer_weave = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %16, i32 0, i32 30
  store i32 -1, i32* %printer_weave, align 4, !tbaa !21
  %17 = load %struct._RinkjEscp*, %struct._RinkjEscp** %result, align 8, !tbaa !1
  %super5 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %17, i32 0, i32 0
  %18 = bitcast %struct._RinkjEscp** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret %struct._RinkjDevice* %super5
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_escp_set(%struct._RinkjDevice* %self, i8* %config) #0 {
entry:
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %config.addr = alloca i8*, align 8
  %z = alloca %struct._RinkjEscp*, align 8
  %p = alloca i8*, align 8
  %next = alloca i8*, align 8
  %key = alloca i8*, align 8
  %val = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %p41 = alloca i8*, align 8
  %__s1_len53 = alloca i64, align 8
  %__s2_len55 = alloca i64, align 8
  %tmp56 = alloca i32, align 4
  %__s163 = alloca i8*, align 8
  %__result65 = alloca i32, align 4
  %tmp103 = alloca i32, align 4
  %__s1_len117 = alloca i64, align 8
  %__s2_len119 = alloca i64, align 8
  %tmp120 = alloca i32, align 4
  %__s1127 = alloca i8*, align 8
  %__result129 = alloca i32, align 4
  %tmp167 = alloca i32, align 4
  %__s1_len181 = alloca i64, align 8
  %__s2_len183 = alloca i64, align 8
  %tmp184 = alloca i32, align 4
  %__s1191 = alloca i8*, align 8
  %__result193 = alloca i32, align 4
  %tmp231 = alloca i32, align 4
  %__s1_len241 = alloca i64, align 8
  %__s2_len243 = alloca i64, align 8
  %tmp244 = alloca i32, align 4
  %__s1251 = alloca i8*, align 8
  %__result253 = alloca i32, align 4
  %tmp291 = alloca i32, align 4
  %__s1_len301 = alloca i64, align 8
  %__s2_len303 = alloca i64, align 8
  %tmp304 = alloca i32, align 4
  %__s1311 = alloca i8*, align 8
  %__result313 = alloca i32, align 4
  %tmp351 = alloca i32, align 4
  %__s1_len361 = alloca i64, align 8
  %__s2_len363 = alloca i64, align 8
  %tmp364 = alloca i32, align 4
  %__s1371 = alloca i8*, align 8
  %__result373 = alloca i32, align 4
  %tmp411 = alloca i32, align 4
  %__s1_len421 = alloca i64, align 8
  %__s2_len423 = alloca i64, align 8
  %tmp424 = alloca i32, align 4
  %__s1431 = alloca i8*, align 8
  %__result433 = alloca i32, align 4
  %tmp471 = alloca i32, align 4
  %__s1_len481 = alloca i64, align 8
  %__s2_len483 = alloca i64, align 8
  %tmp484 = alloca i32, align 4
  %__s1491 = alloca i8*, align 8
  %__result493 = alloca i32, align 4
  %tmp531 = alloca i32, align 4
  %__s1_len541 = alloca i64, align 8
  %__s2_len543 = alloca i64, align 8
  %tmp544 = alloca i32, align 4
  %__s1551 = alloca i8*, align 8
  %__result553 = alloca i32, align 4
  %tmp591 = alloca i32, align 4
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store i8* %config, i8** %config.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjEscp** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._RinkjDevice* %1 to %struct._RinkjEscp*
  store %struct._RinkjEscp* %2, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %config.addr, align 8, !tbaa !1
  store i8* %7, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %call = call i8* @rinkj_config_keyval(i8* %8, i8** %val, i8** %next) #7
  store i8* %call, i8** %key, align 8, !tbaa !1
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %call1 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #8
  store i64 %call1, i64* %__s2_len, align 8, !tbaa !22
  %11 = load i64, i64* %__s2_len, align 8, !tbaa !22
  %cmp = icmp ult i64 %11, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %12 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i8*, i8** %key, align 8, !tbaa !1
  store i8* %13, i8** %__s1, align 8, !tbaa !1
  %14 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv = zext i8 %16 to i32
  %17 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !24
  %conv4 = zext i8 %17 to i32
  %sub = sub nsw i32 %conv, %conv4
  store i32 %sub, i32* %__result, align 4, !tbaa !25
  %18 = load i64, i64* %__s2_len, align 8, !tbaa !22
  %cmp5 = icmp ugt i64 %18, 0
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.35

land.lhs.true.7:                                  ; preds = %cond.true
  %19 = load i32, i32* %__result, align 4, !tbaa !25
  %cmp8 = icmp eq i32 %19, 0
  br i1 %cmp8, label %if.then, label %if.end.35

if.then:                                          ; preds = %land.lhs.true.7
  %20 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx10, align 1, !tbaa !24
  %conv11 = zext i8 %21 to i32
  %22 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !24
  %conv12 = zext i8 %22 to i32
  %sub13 = sub nsw i32 %conv11, %conv12
  store i32 %sub13, i32* %__result, align 4, !tbaa !25
  %23 = load i64, i64* %__s2_len, align 8, !tbaa !22
  %cmp14 = icmp ugt i64 %23, 1
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.34

land.lhs.true.16:                                 ; preds = %if.then
  %24 = load i32, i32* %__result, align 4, !tbaa !25
  %cmp17 = icmp eq i32 %24, 0
  br i1 %cmp17, label %if.then.19, label %if.end.34

if.then.19:                                       ; preds = %land.lhs.true.16
  %25 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %25, i64 2
  %26 = load i8, i8* %arrayidx20, align 1, !tbaa !24
  %conv21 = zext i8 %26 to i32
  %27 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !24
  %conv22 = zext i8 %27 to i32
  %sub23 = sub nsw i32 %conv21, %conv22
  store i32 %sub23, i32* %__result, align 4, !tbaa !25
  %28 = load i64, i64* %__s2_len, align 8, !tbaa !22
  %cmp24 = icmp ugt i64 %28, 2
  br i1 %cmp24, label %land.lhs.true.26, label %if.end

land.lhs.true.26:                                 ; preds = %if.then.19
  %29 = load i32, i32* %__result, align 4, !tbaa !25
  %cmp27 = icmp eq i32 %29, 0
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %land.lhs.true.26
  %30 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %30, i64 3
  %31 = load i8, i8* %arrayidx30, align 1, !tbaa !24
  %conv31 = zext i8 %31 to i32
  %32 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !24
  %conv32 = zext i8 %32 to i32
  %sub33 = sub nsw i32 %conv31, %conv32
  store i32 %sub33, i32* %__result, align 4, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then.29, %land.lhs.true.26, %if.then.19
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %land.lhs.true.16, %if.then
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true.7, %cond.true
  %33 = load i32, i32* %__result, align 4, !tbaa !25
  store i32 %33, i32* %tmp36, !tbaa !25
  %34 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %tmp36, !tbaa !25
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %37 = load i8*, i8** %key, align 8, !tbaa !1
  %call37 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.35
  %cond = phi i32 [ %36, %if.end.35 ], [ %call37, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !25
  %38 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load i32, i32* %tmp, !tbaa !25
  %tobool38 = icmp ne i32 %40, 0
  br i1 %tobool38, label %if.else.51, label %if.then.39

if.then.39:                                       ; preds = %cond.end
  %41 = bitcast i8** %p41 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load i8*, i8** %val, align 8, !tbaa !1
  %call42 = call i32 @atoi(i8* %42) #8
  %43 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %xres = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %43, i32 0, i32 9
  store i32 %call42, i32* %xres, align 4, !tbaa !26
  %44 = load i8*, i8** %val, align 8, !tbaa !1
  %call43 = call i8* @strchr(i8* %44, i32 120) #6
  store i8* %call43, i8** %p41, align 8, !tbaa !1
  %45 = load i8*, i8** %p41, align 8, !tbaa !1
  %cmp44 = icmp ne i8* %45, null
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.then.39
  %46 = load i8*, i8** %p41, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 1
  %call47 = call i32 @atoi(i8* %add.ptr) #8
  %47 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %yres = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %47, i32 0, i32 10
  store i32 %call47, i32* %yres, align 4, !tbaa !27
  br label %if.end.50

if.else:                                          ; preds = %if.then.39
  %48 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %xres48 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %48, i32 0, i32 9
  %49 = load i32, i32* %xres48, align 4, !tbaa !26
  %50 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %yres49 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %50, i32 0, i32 10
  store i32 %49, i32* %yres49, align 4, !tbaa !27
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.46
  %51 = bitcast i8** %p41 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  br label %if.end.608

if.else.51:                                       ; preds = %cond.end
  %52 = bitcast i64* %__s1_len53 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = bitcast i64* %__s2_len55 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i64 1) to i64), i64 ptrtoint ([13 x i8]* @.str.1 to i64)), i64 1), label %land.lhs.true.57, label %cond.false.104

land.lhs.true.57:                                 ; preds = %if.else.51
  %call58 = call i64 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #8
  store i64 %call58, i64* %__s2_len55, align 8, !tbaa !22
  %54 = load i64, i64* %__s2_len55, align 8, !tbaa !22
  %cmp59 = icmp ult i64 %54, 4
  br i1 %cmp59, label %cond.true.61, label %cond.false.104

cond.true.61:                                     ; preds = %land.lhs.true.57
  %55 = bitcast i8** %__s163 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = load i8*, i8** %key, align 8, !tbaa !1
  store i8* %56, i8** %__s163, align 8, !tbaa !1
  %57 = bitcast i32* %__result65 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load i8*, i8** %__s163, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx66, align 1, !tbaa !24
  %conv67 = zext i8 %59 to i32
  %60 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), align 1, !tbaa !24
  %conv68 = zext i8 %60 to i32
  %sub69 = sub nsw i32 %conv67, %conv68
  store i32 %sub69, i32* %__result65, align 4, !tbaa !25
  %61 = load i64, i64* %__s2_len55, align 8, !tbaa !22
  %cmp70 = icmp ugt i64 %61, 0
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.102

land.lhs.true.72:                                 ; preds = %cond.true.61
  %62 = load i32, i32* %__result65, align 4, !tbaa !25
  %cmp73 = icmp eq i32 %62, 0
  br i1 %cmp73, label %if.then.75, label %if.end.102

if.then.75:                                       ; preds = %land.lhs.true.72
  %63 = load i8*, i8** %__s163, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx76, align 1, !tbaa !24
  %conv77 = zext i8 %64 to i32
  %65 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i64 1), align 1, !tbaa !24
  %conv78 = zext i8 %65 to i32
  %sub79 = sub nsw i32 %conv77, %conv78
  store i32 %sub79, i32* %__result65, align 4, !tbaa !25
  %66 = load i64, i64* %__s2_len55, align 8, !tbaa !22
  %cmp80 = icmp ugt i64 %66, 1
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.101

land.lhs.true.82:                                 ; preds = %if.then.75
  %67 = load i32, i32* %__result65, align 4, !tbaa !25
  %cmp83 = icmp eq i32 %67, 0
  br i1 %cmp83, label %if.then.85, label %if.end.101

if.then.85:                                       ; preds = %land.lhs.true.82
  %68 = load i8*, i8** %__s163, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i8, i8* %68, i64 2
  %69 = load i8, i8* %arrayidx86, align 1, !tbaa !24
  %conv87 = zext i8 %69 to i32
  %70 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i64 2), align 1, !tbaa !24
  %conv88 = zext i8 %70 to i32
  %sub89 = sub nsw i32 %conv87, %conv88
  store i32 %sub89, i32* %__result65, align 4, !tbaa !25
  %71 = load i64, i64* %__s2_len55, align 8, !tbaa !22
  %cmp90 = icmp ugt i64 %71, 2
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.100

land.lhs.true.92:                                 ; preds = %if.then.85
  %72 = load i32, i32* %__result65, align 4, !tbaa !25
  %cmp93 = icmp eq i32 %72, 0
  br i1 %cmp93, label %if.then.95, label %if.end.100

if.then.95:                                       ; preds = %land.lhs.true.92
  %73 = load i8*, i8** %__s163, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %73, i64 3
  %74 = load i8, i8* %arrayidx96, align 1, !tbaa !24
  %conv97 = zext i8 %74 to i32
  %75 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i64 3), align 1, !tbaa !24
  %conv98 = zext i8 %75 to i32
  %sub99 = sub nsw i32 %conv97, %conv98
  store i32 %sub99, i32* %__result65, align 4, !tbaa !25
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.95, %land.lhs.true.92, %if.then.85
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %land.lhs.true.82, %if.then.75
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %land.lhs.true.72, %cond.true.61
  %76 = load i32, i32* %__result65, align 4, !tbaa !25
  store i32 %76, i32* %tmp103, !tbaa !25
  %77 = bitcast i32* %__result65 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i8** %__s163 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = load i32, i32* %tmp103, !tbaa !25
  br label %cond.end.106

cond.false.104:                                   ; preds = %land.lhs.true.57, %if.else.51
  %80 = load i8*, i8** %key, align 8, !tbaa !1
  %call105 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #6
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.104, %if.end.102
  %cond107 = phi i32 [ %79, %if.end.102 ], [ %call105, %cond.false.104 ]
  store i32 %cond107, i32* %tmp56, !tbaa !25
  %81 = bitcast i64* %__s2_len55 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i64* %__s1_len53 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i32, i32* %tmp56, !tbaa !25
  %tobool108 = icmp ne i32 %83, 0
  br i1 %tobool108, label %if.else.115, label %if.then.109

if.then.109:                                      ; preds = %cond.end.106
  %84 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %manufacturer = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %84, i32 0, i32 5
  %85 = load i8*, i8** %manufacturer, align 8, !tbaa !16
  %tobool110 = icmp ne i8* %85, null
  br i1 %tobool110, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.then.109
  %86 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %manufacturer112 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %86, i32 0, i32 5
  %87 = load i8*, i8** %manufacturer112, align 8, !tbaa !16
  call void @free(i8* %87) #6
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.then.109
  %88 = load i8*, i8** %val, align 8, !tbaa !1
  %89 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %manufacturer114 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %89, i32 0, i32 5
  store i8* %88, i8** %manufacturer114, align 8, !tbaa !16
  store i8* null, i8** %val, align 8, !tbaa !1
  br label %if.end.607

if.else.115:                                      ; preds = %cond.end.106
  %90 = bitcast i64* %__s1_len117 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #1
  %91 = bitcast i64* %__s2_len119 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.2 to i64)), i64 1), label %land.lhs.true.121, label %cond.false.168

land.lhs.true.121:                                ; preds = %if.else.115
  %call122 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #8
  store i64 %call122, i64* %__s2_len119, align 8, !tbaa !22
  %92 = load i64, i64* %__s2_len119, align 8, !tbaa !22
  %cmp123 = icmp ult i64 %92, 4
  br i1 %cmp123, label %cond.true.125, label %cond.false.168

cond.true.125:                                    ; preds = %land.lhs.true.121
  %93 = bitcast i8** %__s1127 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  %94 = load i8*, i8** %key, align 8, !tbaa !1
  store i8* %94, i8** %__s1127, align 8, !tbaa !1
  %95 = bitcast i32* %__result129 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  %96 = load i8*, i8** %__s1127, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds i8, i8* %96, i64 0
  %97 = load i8, i8* %arrayidx130, align 1, !tbaa !24
  %conv131 = zext i8 %97 to i32
  %98 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), align 1, !tbaa !24
  %conv132 = zext i8 %98 to i32
  %sub133 = sub nsw i32 %conv131, %conv132
  store i32 %sub133, i32* %__result129, align 4, !tbaa !25
  %99 = load i64, i64* %__s2_len119, align 8, !tbaa !22
  %cmp134 = icmp ugt i64 %99, 0
  br i1 %cmp134, label %land.lhs.true.136, label %if.end.166

land.lhs.true.136:                                ; preds = %cond.true.125
  %100 = load i32, i32* %__result129, align 4, !tbaa !25
  %cmp137 = icmp eq i32 %100, 0
  br i1 %cmp137, label %if.then.139, label %if.end.166

if.then.139:                                      ; preds = %land.lhs.true.136
  %101 = load i8*, i8** %__s1127, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i8, i8* %101, i64 1
  %102 = load i8, i8* %arrayidx140, align 1, !tbaa !24
  %conv141 = zext i8 %102 to i32
  %103 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i64 1), align 1, !tbaa !24
  %conv142 = zext i8 %103 to i32
  %sub143 = sub nsw i32 %conv141, %conv142
  store i32 %sub143, i32* %__result129, align 4, !tbaa !25
  %104 = load i64, i64* %__s2_len119, align 8, !tbaa !22
  %cmp144 = icmp ugt i64 %104, 1
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.165

land.lhs.true.146:                                ; preds = %if.then.139
  %105 = load i32, i32* %__result129, align 4, !tbaa !25
  %cmp147 = icmp eq i32 %105, 0
  br i1 %cmp147, label %if.then.149, label %if.end.165

if.then.149:                                      ; preds = %land.lhs.true.146
  %106 = load i8*, i8** %__s1127, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i8, i8* %106, i64 2
  %107 = load i8, i8* %arrayidx150, align 1, !tbaa !24
  %conv151 = zext i8 %107 to i32
  %108 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i64 2), align 1, !tbaa !24
  %conv152 = zext i8 %108 to i32
  %sub153 = sub nsw i32 %conv151, %conv152
  store i32 %sub153, i32* %__result129, align 4, !tbaa !25
  %109 = load i64, i64* %__s2_len119, align 8, !tbaa !22
  %cmp154 = icmp ugt i64 %109, 2
  br i1 %cmp154, label %land.lhs.true.156, label %if.end.164

land.lhs.true.156:                                ; preds = %if.then.149
  %110 = load i32, i32* %__result129, align 4, !tbaa !25
  %cmp157 = icmp eq i32 %110, 0
  br i1 %cmp157, label %if.then.159, label %if.end.164

if.then.159:                                      ; preds = %land.lhs.true.156
  %111 = load i8*, i8** %__s1127, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i8, i8* %111, i64 3
  %112 = load i8, i8* %arrayidx160, align 1, !tbaa !24
  %conv161 = zext i8 %112 to i32
  %113 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i64 3), align 1, !tbaa !24
  %conv162 = zext i8 %113 to i32
  %sub163 = sub nsw i32 %conv161, %conv162
  store i32 %sub163, i32* %__result129, align 4, !tbaa !25
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.159, %land.lhs.true.156, %if.then.149
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %land.lhs.true.146, %if.then.139
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %land.lhs.true.136, %cond.true.125
  %114 = load i32, i32* %__result129, align 4, !tbaa !25
  store i32 %114, i32* %tmp167, !tbaa !25
  %115 = bitcast i32* %__result129 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i8** %__s1127 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = load i32, i32* %tmp167, !tbaa !25
  br label %cond.end.170

cond.false.168:                                   ; preds = %land.lhs.true.121, %if.else.115
  %118 = load i8*, i8** %key, align 8, !tbaa !1
  %call169 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #6
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.168, %if.end.166
  %cond171 = phi i32 [ %117, %if.end.166 ], [ %call169, %cond.false.168 ]
  store i32 %cond171, i32* %tmp120, !tbaa !25
  %119 = bitcast i64* %__s2_len119 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast i64* %__s1_len117 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = load i32, i32* %tmp120, !tbaa !25
  %tobool172 = icmp ne i32 %121, 0
  br i1 %tobool172, label %if.else.179, label %if.then.173

if.then.173:                                      ; preds = %cond.end.170
  %122 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %122, i32 0, i32 6
  %123 = load i8*, i8** %model, align 8, !tbaa !17
  %tobool174 = icmp ne i8* %123, null
  br i1 %tobool174, label %if.then.175, label %if.end.177

if.then.175:                                      ; preds = %if.then.173
  %124 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model176 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %124, i32 0, i32 6
  %125 = load i8*, i8** %model176, align 8, !tbaa !17
  call void @free(i8* %125) #6
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.175, %if.then.173
  %126 = load i8*, i8** %val, align 8, !tbaa !1
  %127 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model178 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %127, i32 0, i32 6
  store i8* %126, i8** %model178, align 8, !tbaa !17
  store i8* null, i8** %val, align 8, !tbaa !1
  br label %if.end.606

if.else.179:                                      ; preds = %cond.end.170
  %128 = bitcast i64* %__s1_len181 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %128) #1
  %129 = bitcast i64* %__s2_len183 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i64 1) to i64), i64 ptrtoint ([14 x i8]* @.str.3 to i64)), i64 1), label %land.lhs.true.185, label %cond.false.232

land.lhs.true.185:                                ; preds = %if.else.179
  %call186 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #8
  store i64 %call186, i64* %__s2_len183, align 8, !tbaa !22
  %130 = load i64, i64* %__s2_len183, align 8, !tbaa !22
  %cmp187 = icmp ult i64 %130, 4
  br i1 %cmp187, label %cond.true.189, label %cond.false.232

cond.true.189:                                    ; preds = %land.lhs.true.185
  %131 = bitcast i8** %__s1191 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  %132 = load i8*, i8** %key, align 8, !tbaa !1
  store i8* %132, i8** %__s1191, align 8, !tbaa !1
  %133 = bitcast i32* %__result193 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #1
  %134 = load i8*, i8** %__s1191, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds i8, i8* %134, i64 0
  %135 = load i8, i8* %arrayidx194, align 1, !tbaa !24
  %conv195 = zext i8 %135 to i32
  %136 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), align 1, !tbaa !24
  %conv196 = zext i8 %136 to i32
  %sub197 = sub nsw i32 %conv195, %conv196
  store i32 %sub197, i32* %__result193, align 4, !tbaa !25
  %137 = load i64, i64* %__s2_len183, align 8, !tbaa !22
  %cmp198 = icmp ugt i64 %137, 0
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.230

land.lhs.true.200:                                ; preds = %cond.true.189
  %138 = load i32, i32* %__result193, align 4, !tbaa !25
  %cmp201 = icmp eq i32 %138, 0
  br i1 %cmp201, label %if.then.203, label %if.end.230

if.then.203:                                      ; preds = %land.lhs.true.200
  %139 = load i8*, i8** %__s1191, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i8, i8* %139, i64 1
  %140 = load i8, i8* %arrayidx204, align 1, !tbaa !24
  %conv205 = zext i8 %140 to i32
  %141 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i64 1), align 1, !tbaa !24
  %conv206 = zext i8 %141 to i32
  %sub207 = sub nsw i32 %conv205, %conv206
  store i32 %sub207, i32* %__result193, align 4, !tbaa !25
  %142 = load i64, i64* %__s2_len183, align 8, !tbaa !22
  %cmp208 = icmp ugt i64 %142, 1
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.229

land.lhs.true.210:                                ; preds = %if.then.203
  %143 = load i32, i32* %__result193, align 4, !tbaa !25
  %cmp211 = icmp eq i32 %143, 0
  br i1 %cmp211, label %if.then.213, label %if.end.229

if.then.213:                                      ; preds = %land.lhs.true.210
  %144 = load i8*, i8** %__s1191, align 8, !tbaa !1
  %arrayidx214 = getelementptr inbounds i8, i8* %144, i64 2
  %145 = load i8, i8* %arrayidx214, align 1, !tbaa !24
  %conv215 = zext i8 %145 to i32
  %146 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i64 2), align 1, !tbaa !24
  %conv216 = zext i8 %146 to i32
  %sub217 = sub nsw i32 %conv215, %conv216
  store i32 %sub217, i32* %__result193, align 4, !tbaa !25
  %147 = load i64, i64* %__s2_len183, align 8, !tbaa !22
  %cmp218 = icmp ugt i64 %147, 2
  br i1 %cmp218, label %land.lhs.true.220, label %if.end.228

land.lhs.true.220:                                ; preds = %if.then.213
  %148 = load i32, i32* %__result193, align 4, !tbaa !25
  %cmp221 = icmp eq i32 %148, 0
  br i1 %cmp221, label %if.then.223, label %if.end.228

if.then.223:                                      ; preds = %land.lhs.true.220
  %149 = load i8*, i8** %__s1191, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds i8, i8* %149, i64 3
  %150 = load i8, i8* %arrayidx224, align 1, !tbaa !24
  %conv225 = zext i8 %150 to i32
  %151 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i64 3), align 1, !tbaa !24
  %conv226 = zext i8 %151 to i32
  %sub227 = sub nsw i32 %conv225, %conv226
  store i32 %sub227, i32* %__result193, align 4, !tbaa !25
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.223, %land.lhs.true.220, %if.then.213
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %land.lhs.true.210, %if.then.203
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %land.lhs.true.200, %cond.true.189
  %152 = load i32, i32* %__result193, align 4, !tbaa !25
  store i32 %152, i32* %tmp231, !tbaa !25
  %153 = bitcast i32* %__result193 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i8** %__s1191 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = load i32, i32* %tmp231, !tbaa !25
  br label %cond.end.234

cond.false.232:                                   ; preds = %land.lhs.true.185, %if.else.179
  %156 = load i8*, i8** %key, align 8, !tbaa !1
  %call233 = call i32 @strcmp(i8* %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #6
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.232, %if.end.230
  %cond235 = phi i32 [ %155, %if.end.230 ], [ %call233, %cond.false.232 ]
  store i32 %cond235, i32* %tmp184, !tbaa !25
  %157 = bitcast i64* %__s2_len183 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i64* %__s1_len181 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = load i32, i32* %tmp184, !tbaa !25
  %tobool236 = icmp ne i32 %159, 0
  br i1 %tobool236, label %if.else.239, label %if.then.237

if.then.237:                                      ; preds = %cond.end.234
  %160 = load i8*, i8** %val, align 8, !tbaa !1
  %call238 = call i32 @atoi(i8* %160) #8
  %161 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %161, i32 0, i32 8
  store i32 %call238, i32* %bps, align 4, !tbaa !15
  br label %if.end.605

if.else.239:                                      ; preds = %cond.end.234
  %162 = bitcast i64* %__s1_len241 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %162) #1
  %163 = bitcast i64* %__s2_len243 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %163) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.4 to i64)), i64 1), label %land.lhs.true.245, label %cond.false.292

land.lhs.true.245:                                ; preds = %if.else.239
  %call246 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)) #8
  store i64 %call246, i64* %__s2_len243, align 8, !tbaa !22
  %164 = load i64, i64* %__s2_len243, align 8, !tbaa !22
  %cmp247 = icmp ult i64 %164, 4
  br i1 %cmp247, label %cond.true.249, label %cond.false.292

cond.true.249:                                    ; preds = %land.lhs.true.245
  %165 = bitcast i8** %__s1251 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %165) #1
  %166 = load i8*, i8** %key, align 8, !tbaa !1
  store i8* %166, i8** %__s1251, align 8, !tbaa !1
  %167 = bitcast i32* %__result253 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %167) #1
  %168 = load i8*, i8** %__s1251, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds i8, i8* %168, i64 0
  %169 = load i8, i8* %arrayidx254, align 1, !tbaa !24
  %conv255 = zext i8 %169 to i32
  %170 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), align 1, !tbaa !24
  %conv256 = zext i8 %170 to i32
  %sub257 = sub nsw i32 %conv255, %conv256
  store i32 %sub257, i32* %__result253, align 4, !tbaa !25
  %171 = load i64, i64* %__s2_len243, align 8, !tbaa !22
  %cmp258 = icmp ugt i64 %171, 0
  br i1 %cmp258, label %land.lhs.true.260, label %if.end.290

land.lhs.true.260:                                ; preds = %cond.true.249
  %172 = load i32, i32* %__result253, align 4, !tbaa !25
  %cmp261 = icmp eq i32 %172, 0
  br i1 %cmp261, label %if.then.263, label %if.end.290

if.then.263:                                      ; preds = %land.lhs.true.260
  %173 = load i8*, i8** %__s1251, align 8, !tbaa !1
  %arrayidx264 = getelementptr inbounds i8, i8* %173, i64 1
  %174 = load i8, i8* %arrayidx264, align 1, !tbaa !24
  %conv265 = zext i8 %174 to i32
  %175 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i64 1), align 1, !tbaa !24
  %conv266 = zext i8 %175 to i32
  %sub267 = sub nsw i32 %conv265, %conv266
  store i32 %sub267, i32* %__result253, align 4, !tbaa !25
  %176 = load i64, i64* %__s2_len243, align 8, !tbaa !22
  %cmp268 = icmp ugt i64 %176, 1
  br i1 %cmp268, label %land.lhs.true.270, label %if.end.289

land.lhs.true.270:                                ; preds = %if.then.263
  %177 = load i32, i32* %__result253, align 4, !tbaa !25
  %cmp271 = icmp eq i32 %177, 0
  br i1 %cmp271, label %if.then.273, label %if.end.289

if.then.273:                                      ; preds = %land.lhs.true.270
  %178 = load i8*, i8** %__s1251, align 8, !tbaa !1
  %arrayidx274 = getelementptr inbounds i8, i8* %178, i64 2
  %179 = load i8, i8* %arrayidx274, align 1, !tbaa !24
  %conv275 = zext i8 %179 to i32
  %180 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i64 2), align 1, !tbaa !24
  %conv276 = zext i8 %180 to i32
  %sub277 = sub nsw i32 %conv275, %conv276
  store i32 %sub277, i32* %__result253, align 4, !tbaa !25
  %181 = load i64, i64* %__s2_len243, align 8, !tbaa !22
  %cmp278 = icmp ugt i64 %181, 2
  br i1 %cmp278, label %land.lhs.true.280, label %if.end.288

land.lhs.true.280:                                ; preds = %if.then.273
  %182 = load i32, i32* %__result253, align 4, !tbaa !25
  %cmp281 = icmp eq i32 %182, 0
  br i1 %cmp281, label %if.then.283, label %if.end.288

if.then.283:                                      ; preds = %land.lhs.true.280
  %183 = load i8*, i8** %__s1251, align 8, !tbaa !1
  %arrayidx284 = getelementptr inbounds i8, i8* %183, i64 3
  %184 = load i8, i8* %arrayidx284, align 1, !tbaa !24
  %conv285 = zext i8 %184 to i32
  %185 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i64 3), align 1, !tbaa !24
  %conv286 = zext i8 %185 to i32
  %sub287 = sub nsw i32 %conv285, %conv286
  store i32 %sub287, i32* %__result253, align 4, !tbaa !25
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.283, %land.lhs.true.280, %if.then.273
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %land.lhs.true.270, %if.then.263
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %land.lhs.true.260, %cond.true.249
  %186 = load i32, i32* %__result253, align 4, !tbaa !25
  store i32 %186, i32* %tmp291, !tbaa !25
  %187 = bitcast i32* %__result253 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i8** %__s1251 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = load i32, i32* %tmp291, !tbaa !25
  br label %cond.end.294

cond.false.292:                                   ; preds = %land.lhs.true.245, %if.else.239
  %190 = load i8*, i8** %key, align 8, !tbaa !1
  %call293 = call i32 @strcmp(i8* %190, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)) #6
  br label %cond.end.294

cond.end.294:                                     ; preds = %cond.false.292, %if.end.290
  %cond295 = phi i32 [ %189, %if.end.290 ], [ %call293, %cond.false.292 ]
  store i32 %cond295, i32* %tmp244, !tbaa !25
  %191 = bitcast i64* %__s2_len243 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast i64* %__s1_len241 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = load i32, i32* %tmp244, !tbaa !25
  %tobool296 = icmp ne i32 %193, 0
  br i1 %tobool296, label %if.else.299, label %if.then.297

if.then.297:                                      ; preds = %cond.end.294
  %194 = load i8*, i8** %val, align 8, !tbaa !1
  %call298 = call i32 @atoi(i8* %194) #8
  %195 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %num_chan = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %195, i32 0, i32 7
  store i32 %call298, i32* %num_chan, align 4, !tbaa !14
  br label %if.end.604

if.else.299:                                      ; preds = %cond.end.294
  %196 = bitcast i64* %__s1_len301 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %196) #1
  %197 = bitcast i64* %__s2_len303 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %197) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i64 1) to i64), i64 ptrtoint ([13 x i8]* @.str.5 to i64)), i64 1), label %land.lhs.true.305, label %cond.false.352

land.lhs.true.305:                                ; preds = %if.else.299
  %call306 = call i64 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)) #8
  store i64 %call306, i64* %__s2_len303, align 8, !tbaa !22
  %198 = load i64, i64* %__s2_len303, align 8, !tbaa !22
  %cmp307 = icmp ult i64 %198, 4
  br i1 %cmp307, label %cond.true.309, label %cond.false.352

cond.true.309:                                    ; preds = %land.lhs.true.305
  %199 = bitcast i8** %__s1311 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %199) #1
  %200 = load i8*, i8** %key, align 8, !tbaa !1
  store i8* %200, i8** %__s1311, align 8, !tbaa !1
  %201 = bitcast i32* %__result313 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %201) #1
  %202 = load i8*, i8** %__s1311, align 8, !tbaa !1
  %arrayidx314 = getelementptr inbounds i8, i8* %202, i64 0
  %203 = load i8, i8* %arrayidx314, align 1, !tbaa !24
  %conv315 = zext i8 %203 to i32
  %204 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), align 1, !tbaa !24
  %conv316 = zext i8 %204 to i32
  %sub317 = sub nsw i32 %conv315, %conv316
  store i32 %sub317, i32* %__result313, align 4, !tbaa !25
  %205 = load i64, i64* %__s2_len303, align 8, !tbaa !22
  %cmp318 = icmp ugt i64 %205, 0
  br i1 %cmp318, label %land.lhs.true.320, label %if.end.350

land.lhs.true.320:                                ; preds = %cond.true.309
  %206 = load i32, i32* %__result313, align 4, !tbaa !25
  %cmp321 = icmp eq i32 %206, 0
  br i1 %cmp321, label %if.then.323, label %if.end.350

if.then.323:                                      ; preds = %land.lhs.true.320
  %207 = load i8*, i8** %__s1311, align 8, !tbaa !1
  %arrayidx324 = getelementptr inbounds i8, i8* %207, i64 1
  %208 = load i8, i8* %arrayidx324, align 1, !tbaa !24
  %conv325 = zext i8 %208 to i32
  %209 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i64 1), align 1, !tbaa !24
  %conv326 = zext i8 %209 to i32
  %sub327 = sub nsw i32 %conv325, %conv326
  store i32 %sub327, i32* %__result313, align 4, !tbaa !25
  %210 = load i64, i64* %__s2_len303, align 8, !tbaa !22
  %cmp328 = icmp ugt i64 %210, 1
  br i1 %cmp328, label %land.lhs.true.330, label %if.end.349

land.lhs.true.330:                                ; preds = %if.then.323
  %211 = load i32, i32* %__result313, align 4, !tbaa !25
  %cmp331 = icmp eq i32 %211, 0
  br i1 %cmp331, label %if.then.333, label %if.end.349

if.then.333:                                      ; preds = %land.lhs.true.330
  %212 = load i8*, i8** %__s1311, align 8, !tbaa !1
  %arrayidx334 = getelementptr inbounds i8, i8* %212, i64 2
  %213 = load i8, i8* %arrayidx334, align 1, !tbaa !24
  %conv335 = zext i8 %213 to i32
  %214 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i64 2), align 1, !tbaa !24
  %conv336 = zext i8 %214 to i32
  %sub337 = sub nsw i32 %conv335, %conv336
  store i32 %sub337, i32* %__result313, align 4, !tbaa !25
  %215 = load i64, i64* %__s2_len303, align 8, !tbaa !22
  %cmp338 = icmp ugt i64 %215, 2
  br i1 %cmp338, label %land.lhs.true.340, label %if.end.348

land.lhs.true.340:                                ; preds = %if.then.333
  %216 = load i32, i32* %__result313, align 4, !tbaa !25
  %cmp341 = icmp eq i32 %216, 0
  br i1 %cmp341, label %if.then.343, label %if.end.348

if.then.343:                                      ; preds = %land.lhs.true.340
  %217 = load i8*, i8** %__s1311, align 8, !tbaa !1
  %arrayidx344 = getelementptr inbounds i8, i8* %217, i64 3
  %218 = load i8, i8* %arrayidx344, align 1, !tbaa !24
  %conv345 = zext i8 %218 to i32
  %219 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i64 3), align 1, !tbaa !24
  %conv346 = zext i8 %219 to i32
  %sub347 = sub nsw i32 %conv345, %conv346
  store i32 %sub347, i32* %__result313, align 4, !tbaa !25
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.343, %land.lhs.true.340, %if.then.333
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348, %land.lhs.true.330, %if.then.323
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %land.lhs.true.320, %cond.true.309
  %220 = load i32, i32* %__result313, align 4, !tbaa !25
  store i32 %220, i32* %tmp351, !tbaa !25
  %221 = bitcast i32* %__result313 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i8** %__s1311 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = load i32, i32* %tmp351, !tbaa !25
  br label %cond.end.354

cond.false.352:                                   ; preds = %land.lhs.true.305, %if.else.299
  %224 = load i8*, i8** %key, align 8, !tbaa !1
  %call353 = call i32 @strcmp(i8* %224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)) #6
  br label %cond.end.354

cond.end.354:                                     ; preds = %cond.false.352, %if.end.350
  %cond355 = phi i32 [ %223, %if.end.350 ], [ %call353, %cond.false.352 ]
  store i32 %cond355, i32* %tmp304, !tbaa !25
  %225 = bitcast i64* %__s2_len303 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast i64* %__s1_len301 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %227 = load i32, i32* %tmp304, !tbaa !25
  %tobool356 = icmp ne i32 %227, 0
  br i1 %tobool356, label %if.else.359, label %if.then.357

if.then.357:                                      ; preds = %cond.end.354
  %228 = load i8*, i8** %val, align 8, !tbaa !1
  %call358 = call i32 @atoi(i8* %228) #8
  %229 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %printer_weave = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %229, i32 0, i32 30
  store i32 %call358, i32* %printer_weave, align 4, !tbaa !21
  br label %if.end.603

if.else.359:                                      ; preds = %cond.end.354
  %230 = bitcast i64* %__s1_len361 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %230) #1
  %231 = bitcast i64* %__s2_len363 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %231) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i64 1) to i64), i64 ptrtoint ([9 x i8]* @.str.6 to i64)), i64 1), label %land.lhs.true.365, label %cond.false.412

land.lhs.true.365:                                ; preds = %if.else.359
  %call366 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #8
  store i64 %call366, i64* %__s2_len363, align 8, !tbaa !22
  %232 = load i64, i64* %__s2_len363, align 8, !tbaa !22
  %cmp367 = icmp ult i64 %232, 4
  br i1 %cmp367, label %cond.true.369, label %cond.false.412

cond.true.369:                                    ; preds = %land.lhs.true.365
  %233 = bitcast i8** %__s1371 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %233) #1
  %234 = load i8*, i8** %key, align 8, !tbaa !1
  store i8* %234, i8** %__s1371, align 8, !tbaa !1
  %235 = bitcast i32* %__result373 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %235) #1
  %236 = load i8*, i8** %__s1371, align 8, !tbaa !1
  %arrayidx374 = getelementptr inbounds i8, i8* %236, i64 0
  %237 = load i8, i8* %arrayidx374, align 1, !tbaa !24
  %conv375 = zext i8 %237 to i32
  %238 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), align 1, !tbaa !24
  %conv376 = zext i8 %238 to i32
  %sub377 = sub nsw i32 %conv375, %conv376
  store i32 %sub377, i32* %__result373, align 4, !tbaa !25
  %239 = load i64, i64* %__s2_len363, align 8, !tbaa !22
  %cmp378 = icmp ugt i64 %239, 0
  br i1 %cmp378, label %land.lhs.true.380, label %if.end.410

land.lhs.true.380:                                ; preds = %cond.true.369
  %240 = load i32, i32* %__result373, align 4, !tbaa !25
  %cmp381 = icmp eq i32 %240, 0
  br i1 %cmp381, label %if.then.383, label %if.end.410

if.then.383:                                      ; preds = %land.lhs.true.380
  %241 = load i8*, i8** %__s1371, align 8, !tbaa !1
  %arrayidx384 = getelementptr inbounds i8, i8* %241, i64 1
  %242 = load i8, i8* %arrayidx384, align 1, !tbaa !24
  %conv385 = zext i8 %242 to i32
  %243 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i64 1), align 1, !tbaa !24
  %conv386 = zext i8 %243 to i32
  %sub387 = sub nsw i32 %conv385, %conv386
  store i32 %sub387, i32* %__result373, align 4, !tbaa !25
  %244 = load i64, i64* %__s2_len363, align 8, !tbaa !22
  %cmp388 = icmp ugt i64 %244, 1
  br i1 %cmp388, label %land.lhs.true.390, label %if.end.409

land.lhs.true.390:                                ; preds = %if.then.383
  %245 = load i32, i32* %__result373, align 4, !tbaa !25
  %cmp391 = icmp eq i32 %245, 0
  br i1 %cmp391, label %if.then.393, label %if.end.409

if.then.393:                                      ; preds = %land.lhs.true.390
  %246 = load i8*, i8** %__s1371, align 8, !tbaa !1
  %arrayidx394 = getelementptr inbounds i8, i8* %246, i64 2
  %247 = load i8, i8* %arrayidx394, align 1, !tbaa !24
  %conv395 = zext i8 %247 to i32
  %248 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i64 2), align 1, !tbaa !24
  %conv396 = zext i8 %248 to i32
  %sub397 = sub nsw i32 %conv395, %conv396
  store i32 %sub397, i32* %__result373, align 4, !tbaa !25
  %249 = load i64, i64* %__s2_len363, align 8, !tbaa !22
  %cmp398 = icmp ugt i64 %249, 2
  br i1 %cmp398, label %land.lhs.true.400, label %if.end.408

land.lhs.true.400:                                ; preds = %if.then.393
  %250 = load i32, i32* %__result373, align 4, !tbaa !25
  %cmp401 = icmp eq i32 %250, 0
  br i1 %cmp401, label %if.then.403, label %if.end.408

if.then.403:                                      ; preds = %land.lhs.true.400
  %251 = load i8*, i8** %__s1371, align 8, !tbaa !1
  %arrayidx404 = getelementptr inbounds i8, i8* %251, i64 3
  %252 = load i8, i8* %arrayidx404, align 1, !tbaa !24
  %conv405 = zext i8 %252 to i32
  %253 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i64 3), align 1, !tbaa !24
  %conv406 = zext i8 %253 to i32
  %sub407 = sub nsw i32 %conv405, %conv406
  store i32 %sub407, i32* %__result373, align 4, !tbaa !25
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.403, %land.lhs.true.400, %if.then.393
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %land.lhs.true.390, %if.then.383
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %land.lhs.true.380, %cond.true.369
  %254 = load i32, i32* %__result373, align 4, !tbaa !25
  store i32 %254, i32* %tmp411, !tbaa !25
  %255 = bitcast i32* %__result373 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  %256 = bitcast i8** %__s1371 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %256) #1
  %257 = load i32, i32* %tmp411, !tbaa !25
  br label %cond.end.414

cond.false.412:                                   ; preds = %land.lhs.true.365, %if.else.359
  %258 = load i8*, i8** %key, align 8, !tbaa !1
  %call413 = call i32 @strcmp(i8* %258, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)) #6
  br label %cond.end.414

cond.end.414:                                     ; preds = %cond.false.412, %if.end.410
  %cond415 = phi i32 [ %257, %if.end.410 ], [ %call413, %cond.false.412 ]
  store i32 %cond415, i32* %tmp364, !tbaa !25
  %259 = bitcast i64* %__s2_len363 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast i64* %__s1_len361 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  %261 = load i32, i32* %tmp364, !tbaa !25
  %tobool416 = icmp ne i32 %261, 0
  br i1 %tobool416, label %if.else.419, label %if.then.417

if.then.417:                                      ; preds = %cond.end.414
  %262 = load i8*, i8** %val, align 8, !tbaa !1
  %call418 = call i32 @atoi(i8* %262) #8
  %263 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %microdot = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %263, i32 0, i32 28
  store i32 %call418, i32* %microdot, align 4, !tbaa !19
  br label %if.end.602

if.else.419:                                      ; preds = %cond.end.414
  %264 = bitcast i64* %__s1_len421 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %264) #1
  %265 = bitcast i64* %__s2_len423 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %265) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i64 1) to i64), i64 ptrtoint ([15 x i8]* @.str.7 to i64)), i64 1), label %land.lhs.true.425, label %cond.false.472

land.lhs.true.425:                                ; preds = %if.else.419
  %call426 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #8
  store i64 %call426, i64* %__s2_len423, align 8, !tbaa !22
  %266 = load i64, i64* %__s2_len423, align 8, !tbaa !22
  %cmp427 = icmp ult i64 %266, 4
  br i1 %cmp427, label %cond.true.429, label %cond.false.472

cond.true.429:                                    ; preds = %land.lhs.true.425
  %267 = bitcast i8** %__s1431 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %267) #1
  %268 = load i8*, i8** %key, align 8, !tbaa !1
  store i8* %268, i8** %__s1431, align 8, !tbaa !1
  %269 = bitcast i32* %__result433 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %269) #1
  %270 = load i8*, i8** %__s1431, align 8, !tbaa !1
  %arrayidx434 = getelementptr inbounds i8, i8* %270, i64 0
  %271 = load i8, i8* %arrayidx434, align 1, !tbaa !24
  %conv435 = zext i8 %271 to i32
  %272 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), align 1, !tbaa !24
  %conv436 = zext i8 %272 to i32
  %sub437 = sub nsw i32 %conv435, %conv436
  store i32 %sub437, i32* %__result433, align 4, !tbaa !25
  %273 = load i64, i64* %__s2_len423, align 8, !tbaa !22
  %cmp438 = icmp ugt i64 %273, 0
  br i1 %cmp438, label %land.lhs.true.440, label %if.end.470

land.lhs.true.440:                                ; preds = %cond.true.429
  %274 = load i32, i32* %__result433, align 4, !tbaa !25
  %cmp441 = icmp eq i32 %274, 0
  br i1 %cmp441, label %if.then.443, label %if.end.470

if.then.443:                                      ; preds = %land.lhs.true.440
  %275 = load i8*, i8** %__s1431, align 8, !tbaa !1
  %arrayidx444 = getelementptr inbounds i8, i8* %275, i64 1
  %276 = load i8, i8* %arrayidx444, align 1, !tbaa !24
  %conv445 = zext i8 %276 to i32
  %277 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i64 1), align 1, !tbaa !24
  %conv446 = zext i8 %277 to i32
  %sub447 = sub nsw i32 %conv445, %conv446
  store i32 %sub447, i32* %__result433, align 4, !tbaa !25
  %278 = load i64, i64* %__s2_len423, align 8, !tbaa !22
  %cmp448 = icmp ugt i64 %278, 1
  br i1 %cmp448, label %land.lhs.true.450, label %if.end.469

land.lhs.true.450:                                ; preds = %if.then.443
  %279 = load i32, i32* %__result433, align 4, !tbaa !25
  %cmp451 = icmp eq i32 %279, 0
  br i1 %cmp451, label %if.then.453, label %if.end.469

if.then.453:                                      ; preds = %land.lhs.true.450
  %280 = load i8*, i8** %__s1431, align 8, !tbaa !1
  %arrayidx454 = getelementptr inbounds i8, i8* %280, i64 2
  %281 = load i8, i8* %arrayidx454, align 1, !tbaa !24
  %conv455 = zext i8 %281 to i32
  %282 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i64 2), align 1, !tbaa !24
  %conv456 = zext i8 %282 to i32
  %sub457 = sub nsw i32 %conv455, %conv456
  store i32 %sub457, i32* %__result433, align 4, !tbaa !25
  %283 = load i64, i64* %__s2_len423, align 8, !tbaa !22
  %cmp458 = icmp ugt i64 %283, 2
  br i1 %cmp458, label %land.lhs.true.460, label %if.end.468

land.lhs.true.460:                                ; preds = %if.then.453
  %284 = load i32, i32* %__result433, align 4, !tbaa !25
  %cmp461 = icmp eq i32 %284, 0
  br i1 %cmp461, label %if.then.463, label %if.end.468

if.then.463:                                      ; preds = %land.lhs.true.460
  %285 = load i8*, i8** %__s1431, align 8, !tbaa !1
  %arrayidx464 = getelementptr inbounds i8, i8* %285, i64 3
  %286 = load i8, i8* %arrayidx464, align 1, !tbaa !24
  %conv465 = zext i8 %286 to i32
  %287 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i64 3), align 1, !tbaa !24
  %conv466 = zext i8 %287 to i32
  %sub467 = sub nsw i32 %conv465, %conv466
  store i32 %sub467, i32* %__result433, align 4, !tbaa !25
  br label %if.end.468

if.end.468:                                       ; preds = %if.then.463, %land.lhs.true.460, %if.then.453
  br label %if.end.469

if.end.469:                                       ; preds = %if.end.468, %land.lhs.true.450, %if.then.443
  br label %if.end.470

if.end.470:                                       ; preds = %if.end.469, %land.lhs.true.440, %cond.true.429
  %288 = load i32, i32* %__result433, align 4, !tbaa !25
  store i32 %288, i32* %tmp471, !tbaa !25
  %289 = bitcast i32* %__result433 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast i8** %__s1431 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %290) #1
  %291 = load i32, i32* %tmp471, !tbaa !25
  br label %cond.end.474

cond.false.472:                                   ; preds = %land.lhs.true.425, %if.else.419
  %292 = load i8*, i8** %key, align 8, !tbaa !1
  %call473 = call i32 @strcmp(i8* %292, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #6
  br label %cond.end.474

cond.end.474:                                     ; preds = %cond.false.472, %if.end.470
  %cond475 = phi i32 [ %291, %if.end.470 ], [ %call473, %cond.false.472 ]
  store i32 %cond475, i32* %tmp424, !tbaa !25
  %293 = bitcast i64* %__s2_len423 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %293) #1
  %294 = bitcast i64* %__s1_len421 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %294) #1
  %295 = load i32, i32* %tmp424, !tbaa !25
  %tobool476 = icmp ne i32 %295, 0
  br i1 %tobool476, label %if.else.479, label %if.then.477

if.then.477:                                      ; preds = %cond.end.474
  %296 = load i8*, i8** %val, align 8, !tbaa !1
  %call478 = call i32 @atoi(i8* %296) #8
  %297 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %unidir = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %297, i32 0, i32 29
  store i32 %call478, i32* %unidir, align 4, !tbaa !20
  br label %if.end.601

if.else.479:                                      ; preds = %cond.end.474
  %298 = bitcast i64* %__s1_len481 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %298) #1
  %299 = bitcast i64* %__s2_len483 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %299) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.8 to i64)), i64 1), label %land.lhs.true.485, label %cond.false.532

land.lhs.true.485:                                ; preds = %if.else.479
  %call486 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #8
  store i64 %call486, i64* %__s2_len483, align 8, !tbaa !22
  %300 = load i64, i64* %__s2_len483, align 8, !tbaa !22
  %cmp487 = icmp ult i64 %300, 4
  br i1 %cmp487, label %cond.true.489, label %cond.false.532

cond.true.489:                                    ; preds = %land.lhs.true.485
  %301 = bitcast i8** %__s1491 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %301) #1
  %302 = load i8*, i8** %key, align 8, !tbaa !1
  store i8* %302, i8** %__s1491, align 8, !tbaa !1
  %303 = bitcast i32* %__result493 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %303) #1
  %304 = load i8*, i8** %__s1491, align 8, !tbaa !1
  %arrayidx494 = getelementptr inbounds i8, i8* %304, i64 0
  %305 = load i8, i8* %arrayidx494, align 1, !tbaa !24
  %conv495 = zext i8 %305 to i32
  %306 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), align 1, !tbaa !24
  %conv496 = zext i8 %306 to i32
  %sub497 = sub nsw i32 %conv495, %conv496
  store i32 %sub497, i32* %__result493, align 4, !tbaa !25
  %307 = load i64, i64* %__s2_len483, align 8, !tbaa !22
  %cmp498 = icmp ugt i64 %307, 0
  br i1 %cmp498, label %land.lhs.true.500, label %if.end.530

land.lhs.true.500:                                ; preds = %cond.true.489
  %308 = load i32, i32* %__result493, align 4, !tbaa !25
  %cmp501 = icmp eq i32 %308, 0
  br i1 %cmp501, label %if.then.503, label %if.end.530

if.then.503:                                      ; preds = %land.lhs.true.500
  %309 = load i8*, i8** %__s1491, align 8, !tbaa !1
  %arrayidx504 = getelementptr inbounds i8, i8* %309, i64 1
  %310 = load i8, i8* %arrayidx504, align 1, !tbaa !24
  %conv505 = zext i8 %310 to i32
  %311 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i64 1), align 1, !tbaa !24
  %conv506 = zext i8 %311 to i32
  %sub507 = sub nsw i32 %conv505, %conv506
  store i32 %sub507, i32* %__result493, align 4, !tbaa !25
  %312 = load i64, i64* %__s2_len483, align 8, !tbaa !22
  %cmp508 = icmp ugt i64 %312, 1
  br i1 %cmp508, label %land.lhs.true.510, label %if.end.529

land.lhs.true.510:                                ; preds = %if.then.503
  %313 = load i32, i32* %__result493, align 4, !tbaa !25
  %cmp511 = icmp eq i32 %313, 0
  br i1 %cmp511, label %if.then.513, label %if.end.529

if.then.513:                                      ; preds = %land.lhs.true.510
  %314 = load i8*, i8** %__s1491, align 8, !tbaa !1
  %arrayidx514 = getelementptr inbounds i8, i8* %314, i64 2
  %315 = load i8, i8* %arrayidx514, align 1, !tbaa !24
  %conv515 = zext i8 %315 to i32
  %316 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i64 2), align 1, !tbaa !24
  %conv516 = zext i8 %316 to i32
  %sub517 = sub nsw i32 %conv515, %conv516
  store i32 %sub517, i32* %__result493, align 4, !tbaa !25
  %317 = load i64, i64* %__s2_len483, align 8, !tbaa !22
  %cmp518 = icmp ugt i64 %317, 2
  br i1 %cmp518, label %land.lhs.true.520, label %if.end.528

land.lhs.true.520:                                ; preds = %if.then.513
  %318 = load i32, i32* %__result493, align 4, !tbaa !25
  %cmp521 = icmp eq i32 %318, 0
  br i1 %cmp521, label %if.then.523, label %if.end.528

if.then.523:                                      ; preds = %land.lhs.true.520
  %319 = load i8*, i8** %__s1491, align 8, !tbaa !1
  %arrayidx524 = getelementptr inbounds i8, i8* %319, i64 3
  %320 = load i8, i8* %arrayidx524, align 1, !tbaa !24
  %conv525 = zext i8 %320 to i32
  %321 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i64 3), align 1, !tbaa !24
  %conv526 = zext i8 %321 to i32
  %sub527 = sub nsw i32 %conv525, %conv526
  store i32 %sub527, i32* %__result493, align 4, !tbaa !25
  br label %if.end.528

if.end.528:                                       ; preds = %if.then.523, %land.lhs.true.520, %if.then.513
  br label %if.end.529

if.end.529:                                       ; preds = %if.end.528, %land.lhs.true.510, %if.then.503
  br label %if.end.530

if.end.530:                                       ; preds = %if.end.529, %land.lhs.true.500, %cond.true.489
  %322 = load i32, i32* %__result493, align 4, !tbaa !25
  store i32 %322, i32* %tmp531, !tbaa !25
  %323 = bitcast i32* %__result493 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #1
  %324 = bitcast i8** %__s1491 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %324) #1
  %325 = load i32, i32* %tmp531, !tbaa !25
  br label %cond.end.534

cond.false.532:                                   ; preds = %land.lhs.true.485, %if.else.479
  %326 = load i8*, i8** %key, align 8, !tbaa !1
  %call533 = call i32 @strcmp(i8* %326, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #6
  br label %cond.end.534

cond.end.534:                                     ; preds = %cond.false.532, %if.end.530
  %cond535 = phi i32 [ %325, %if.end.530 ], [ %call533, %cond.false.532 ]
  store i32 %cond535, i32* %tmp484, !tbaa !25
  %327 = bitcast i64* %__s2_len483 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #1
  %328 = bitcast i64* %__s1_len481 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %328) #1
  %329 = load i32, i32* %tmp484, !tbaa !25
  %tobool536 = icmp ne i32 %329, 0
  br i1 %tobool536, label %if.else.539, label %if.then.537

if.then.537:                                      ; preds = %cond.end.534
  %330 = load i8*, i8** %val, align 8, !tbaa !1
  %call538 = call i32 @atoi(i8* %330) #8
  %331 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %autocut = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %331, i32 0, i32 26
  store i32 %call538, i32* %autocut, align 4, !tbaa !18
  br label %if.end.600

if.else.539:                                      ; preds = %cond.end.534
  %332 = bitcast i64* %__s1_len541 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %332) #1
  %333 = bitcast i64* %__s2_len543 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %333) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.9 to i64)), i64 1), label %land.lhs.true.545, label %cond.false.592

land.lhs.true.545:                                ; preds = %if.else.539
  %call546 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0)) #8
  store i64 %call546, i64* %__s2_len543, align 8, !tbaa !22
  %334 = load i64, i64* %__s2_len543, align 8, !tbaa !22
  %cmp547 = icmp ult i64 %334, 4
  br i1 %cmp547, label %cond.true.549, label %cond.false.592

cond.true.549:                                    ; preds = %land.lhs.true.545
  %335 = bitcast i8** %__s1551 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %335) #1
  %336 = load i8*, i8** %key, align 8, !tbaa !1
  store i8* %336, i8** %__s1551, align 8, !tbaa !1
  %337 = bitcast i32* %__result553 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %337) #1
  %338 = load i8*, i8** %__s1551, align 8, !tbaa !1
  %arrayidx554 = getelementptr inbounds i8, i8* %338, i64 0
  %339 = load i8, i8* %arrayidx554, align 1, !tbaa !24
  %conv555 = zext i8 %339 to i32
  %340 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), align 1, !tbaa !24
  %conv556 = zext i8 %340 to i32
  %sub557 = sub nsw i32 %conv555, %conv556
  store i32 %sub557, i32* %__result553, align 4, !tbaa !25
  %341 = load i64, i64* %__s2_len543, align 8, !tbaa !22
  %cmp558 = icmp ugt i64 %341, 0
  br i1 %cmp558, label %land.lhs.true.560, label %if.end.590

land.lhs.true.560:                                ; preds = %cond.true.549
  %342 = load i32, i32* %__result553, align 4, !tbaa !25
  %cmp561 = icmp eq i32 %342, 0
  br i1 %cmp561, label %if.then.563, label %if.end.590

if.then.563:                                      ; preds = %land.lhs.true.560
  %343 = load i8*, i8** %__s1551, align 8, !tbaa !1
  %arrayidx564 = getelementptr inbounds i8, i8* %343, i64 1
  %344 = load i8, i8* %arrayidx564, align 1, !tbaa !24
  %conv565 = zext i8 %344 to i32
  %345 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i64 1), align 1, !tbaa !24
  %conv566 = zext i8 %345 to i32
  %sub567 = sub nsw i32 %conv565, %conv566
  store i32 %sub567, i32* %__result553, align 4, !tbaa !25
  %346 = load i64, i64* %__s2_len543, align 8, !tbaa !22
  %cmp568 = icmp ugt i64 %346, 1
  br i1 %cmp568, label %land.lhs.true.570, label %if.end.589

land.lhs.true.570:                                ; preds = %if.then.563
  %347 = load i32, i32* %__result553, align 4, !tbaa !25
  %cmp571 = icmp eq i32 %347, 0
  br i1 %cmp571, label %if.then.573, label %if.end.589

if.then.573:                                      ; preds = %land.lhs.true.570
  %348 = load i8*, i8** %__s1551, align 8, !tbaa !1
  %arrayidx574 = getelementptr inbounds i8, i8* %348, i64 2
  %349 = load i8, i8* %arrayidx574, align 1, !tbaa !24
  %conv575 = zext i8 %349 to i32
  %350 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i64 2), align 1, !tbaa !24
  %conv576 = zext i8 %350 to i32
  %sub577 = sub nsw i32 %conv575, %conv576
  store i32 %sub577, i32* %__result553, align 4, !tbaa !25
  %351 = load i64, i64* %__s2_len543, align 8, !tbaa !22
  %cmp578 = icmp ugt i64 %351, 2
  br i1 %cmp578, label %land.lhs.true.580, label %if.end.588

land.lhs.true.580:                                ; preds = %if.then.573
  %352 = load i32, i32* %__result553, align 4, !tbaa !25
  %cmp581 = icmp eq i32 %352, 0
  br i1 %cmp581, label %if.then.583, label %if.end.588

if.then.583:                                      ; preds = %land.lhs.true.580
  %353 = load i8*, i8** %__s1551, align 8, !tbaa !1
  %arrayidx584 = getelementptr inbounds i8, i8* %353, i64 3
  %354 = load i8, i8* %arrayidx584, align 1, !tbaa !24
  %conv585 = zext i8 %354 to i32
  %355 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i64 3), align 1, !tbaa !24
  %conv586 = zext i8 %355 to i32
  %sub587 = sub nsw i32 %conv585, %conv586
  store i32 %sub587, i32* %__result553, align 4, !tbaa !25
  br label %if.end.588

if.end.588:                                       ; preds = %if.then.583, %land.lhs.true.580, %if.then.573
  br label %if.end.589

if.end.589:                                       ; preds = %if.end.588, %land.lhs.true.570, %if.then.563
  br label %if.end.590

if.end.590:                                       ; preds = %if.end.589, %land.lhs.true.560, %cond.true.549
  %356 = load i32, i32* %__result553, align 4, !tbaa !25
  store i32 %356, i32* %tmp591, !tbaa !25
  %357 = bitcast i32* %__result553 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %357) #1
  %358 = bitcast i8** %__s1551 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #1
  %359 = load i32, i32* %tmp591, !tbaa !25
  br label %cond.end.594

cond.false.592:                                   ; preds = %land.lhs.true.545, %if.else.539
  %360 = load i8*, i8** %key, align 8, !tbaa !1
  %call593 = call i32 @strcmp(i8* %360, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0)) #6
  br label %cond.end.594

cond.end.594:                                     ; preds = %cond.false.592, %if.end.590
  %cond595 = phi i32 [ %359, %if.end.590 ], [ %call593, %cond.false.592 ]
  store i32 %cond595, i32* %tmp544, !tbaa !25
  %361 = bitcast i64* %__s2_len543 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %361) #1
  %362 = bitcast i64* %__s1_len541 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %362) #1
  %363 = load i32, i32* %tmp544, !tbaa !25
  %tobool596 = icmp ne i32 %363, 0
  br i1 %tobool596, label %if.end.599, label %if.then.597

if.then.597:                                      ; preds = %cond.end.594
  %364 = load i8*, i8** %val, align 8, !tbaa !1
  %call598 = call i32 @atoi(i8* %364) #8
  %365 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %blankskip = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %365, i32 0, i32 27
  store i32 %call598, i32* %blankskip, align 4, !tbaa !28
  br label %if.end.599

if.end.599:                                       ; preds = %if.then.597, %cond.end.594
  br label %if.end.600

if.end.600:                                       ; preds = %if.end.599, %if.then.537
  br label %if.end.601

if.end.601:                                       ; preds = %if.end.600, %if.then.477
  br label %if.end.602

if.end.602:                                       ; preds = %if.end.601, %if.then.417
  br label %if.end.603

if.end.603:                                       ; preds = %if.end.602, %if.then.357
  br label %if.end.604

if.end.604:                                       ; preds = %if.end.603, %if.then.297
  br label %if.end.605

if.end.605:                                       ; preds = %if.end.604, %if.then.237
  br label %if.end.606

if.end.606:                                       ; preds = %if.end.605, %if.end.177
  br label %if.end.607

if.end.607:                                       ; preds = %if.end.606, %if.end.113
  br label %if.end.608

if.end.608:                                       ; preds = %if.end.607, %if.end.50
  %366 = load i8*, i8** %key, align 8, !tbaa !1
  call void @free(i8* %366) #6
  %367 = load i8*, i8** %val, align 8, !tbaa !1
  %tobool609 = icmp ne i8* %367, null
  br i1 %tobool609, label %if.then.610, label %if.end.611

if.then.610:                                      ; preds = %if.end.608
  %368 = load i8*, i8** %val, align 8, !tbaa !1
  call void @free(i8* %368) #6
  br label %if.end.611

if.end.611:                                       ; preds = %if.then.610, %if.end.608
  br label %for.inc

for.inc:                                          ; preds = %if.end.611
  %369 = load i8*, i8** %next, align 8, !tbaa !1
  store i8* %369, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %370 = bitcast i8** %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %370) #1
  %371 = bitcast i8** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %371) #1
  %372 = bitcast i8** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %372) #1
  %373 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %373) #1
  %374 = bitcast %struct._RinkjEscp** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %374) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_escp_write(%struct._RinkjDevice* %self, i8** %data) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %data.addr = alloca i8**, align 8
  %z = alloca %struct._RinkjEscp*, align 8
  %xsb = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %ytop = alloca i32, align 4
  %bufy = alloca i32, align 4
  %dblx_pass = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store i8** %data, i8*** %data.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjEscp** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._RinkjDevice* %1 to %struct._RinkjEscp*
  store %struct._RinkjEscp* %2, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %3 = bitcast i32* %xsb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %ytop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %bufy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %dblx_pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %cmp = icmp eq i8** %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %call = call i32 @rinkj_escp_flush_bottom(%struct._RinkjEscp* %10) #7
  store i32 %call, i32* %status, align 4, !tbaa !25
  %11 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %11, i32 0, i32 1
  %12 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out, align 8, !tbaa !13
  %call1 = call i32 @rinkj_byte_stream_puts(%struct._RinkjByteStream* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)) #7
  store i32 %call1, i32* %status, align 4, !tbaa !25
  %13 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out2 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %13, i32 0, i32 1
  %14 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out2, align 8, !tbaa !13
  %call3 = call i32 @rinkj_byte_stream_close(%struct._RinkjByteStream* %14) #7
  store i32 %call3, i32* %status, align 4, !tbaa !25
  %15 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  call void @rinkj_escp_free(%struct._RinkjEscp* %15) #7
  %16 = load i32, i32* %status, align 4, !tbaa !25
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %17, i32 0, i32 2
  %18 = load i32, i32* %width, align 4, !tbaa !12
  %19 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %19, i32 0, i32 8
  %20 = load i32, i32* %bps, align 4, !tbaa !15
  %mul = mul nsw i32 %18, %20
  %add = add nsw i32 %mul, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %xsb, align 4, !tbaa !25
  %21 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %y = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %21, i32 0, i32 4
  %22 = load i32, i32* %y, align 4, !tbaa !29
  %23 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %bufheight = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %23, i32 0, i32 21
  %24 = load i32, i32* %bufheight, align 4, !tbaa !30
  %rem = srem i32 %22, %24
  store i32 %rem, i32* %bufy, align 4, !tbaa !25
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, i32* %i, align 4, !tbaa !25
  %26 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %num_chan = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %26, i32 0, i32 7
  %27 = load i32, i32* %num_chan, align 4, !tbaa !14
  %cmp4 = icmp slt i32 %25, %27
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %28, i32 0, i32 19
  %29 = load i8*, i8** %buf, align 8, !tbaa !31
  %30 = load i32, i32* %bufy, align 4, !tbaa !25
  %31 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %rowstride = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %31, i32 0, i32 22
  %32 = load i32, i32* %rowstride, align 4, !tbaa !32
  %mul5 = mul nsw i32 %30, %32
  %idx.ext = sext i32 %mul5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  %33 = load i32, i32* %i, align 4, !tbaa !25
  %34 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %planestride = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %34, i32 0, i32 23
  %35 = load i32, i32* %planestride, align 4, !tbaa !33
  %mul6 = mul nsw i32 %33, %35
  %idx.ext7 = sext i32 %mul6 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext7
  %36 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom = sext i32 %36 to i64
  %37 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %37, i64 %idxprom
  %38 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %39 = load i32, i32* %xsb, align 4, !tbaa !25
  %conv = sext i32 %39 to i64
  %call9 = call i8* @memcpy(i8* %add.ptr8, i8* %38, i64 %conv) #6
  %40 = load i32, i32* %bufy, align 4, !tbaa !25
  %41 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %num_chan10 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %41, i32 0, i32 7
  %42 = load i32, i32* %num_chan10, align 4, !tbaa !14
  %mul11 = mul nsw i32 %40, %42
  %43 = load i32, i32* %i, align 4, !tbaa !25
  %add12 = add nsw i32 %mul11, %43
  %idxprom13 = sext i32 %add12 to i64
  %44 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %buf_linevalid = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %44, i32 0, i32 20
  %45 = load i8*, i8** %buf_linevalid, align 8, !tbaa !34
  %arrayidx14 = getelementptr inbounds i8, i8* %45, i64 %idxprom13
  store i8 -1, i8* %arrayidx14, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %y15 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %47, i32 0, i32 4
  %48 = load i32, i32* %y15, align 4, !tbaa !29
  %inc16 = add nsw i32 %48, 1
  store i32 %inc16, i32* %y15, align 4, !tbaa !29
  %49 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %50 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %pass = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %50, i32 0, i32 24
  %51 = load i32, i32* %pass, align 4, !tbaa !35
  %call17 = call i32 @rinkj_escp_ytop(%struct._RinkjEscp* %49, i32 %51, i32* %dblx_pass) #7
  store i32 %call17, i32* %ytop, align 4, !tbaa !25
  %52 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %y18 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %52, i32 0, i32 4
  %53 = load i32, i32* %y18, align 4, !tbaa !29
  %54 = load i32, i32* %ytop, align 4, !tbaa !25
  %55 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %n_pins = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %55, i32 0, i32 16
  %56 = load i32, i32* %n_pins, align 4, !tbaa !36
  %sub = sub nsw i32 %56, 1
  %57 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %spacing = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %57, i32 0, i32 15
  %58 = load i32, i32* %spacing, align 4, !tbaa !37
  %mul19 = mul nsw i32 %sub, %58
  %add20 = add nsw i32 %54, %mul19
  %add21 = add nsw i32 %add20, 1
  %59 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %max_offset = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %59, i32 0, i32 18
  %60 = load i32, i32* %max_offset, align 4, !tbaa !38
  %add22 = add nsw i32 %add21, %60
  %cmp23 = icmp slt i32 %53, %add22
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %for.end
  %61 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %call27 = call i32 @rinkj_escp_flush(%struct._RinkjEscp* %61) #7
  store i32 %call27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25, %if.then
  %62 = bitcast i32* %dblx_pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %bufy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %ytop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %xsb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast %struct._RinkjEscp** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_escp_init(%struct._RinkjDevice* %self, %struct._RinkjDeviceParams* %params) #0 {
entry:
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %params.addr = alloca %struct._RinkjDeviceParams*, align 8
  %z = alloca %struct._RinkjEscp*, align 8
  %resolution = alloca i32, align 4
  %uweave = alloca i32, align 4
  %height = alloca i32, align 4
  %top = alloca i32, align 4
  %bottom = alloca i32, align 4
  %i = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  %__s1_len62 = alloca i64, align 8
  %__s2_len64 = alloca i64, align 8
  %tmp65 = alloca i32, align 4
  %__s172 = alloca i8*, align 8
  %__result75 = alloca i32, align 4
  %tmp113 = alloca i32, align 4
  %__s1_len147 = alloca i64, align 8
  %__s2_len149 = alloca i64, align 8
  %tmp150 = alloca i32, align 4
  %__s1157 = alloca i8*, align 8
  %__result160 = alloca i32, align 4
  %tmp198 = alloca i32, align 4
  %__s1_len217 = alloca i64, align 8
  %__s2_len219 = alloca i64, align 8
  %tmp220 = alloca i32, align 4
  %__s1227 = alloca i8*, align 8
  %__result230 = alloca i32, align 4
  %tmp268 = alloca i32, align 4
  %__s1_len354 = alloca i64, align 8
  %__s2_len356 = alloca i64, align 8
  %tmp357 = alloca i32, align 4
  %__s1364 = alloca i8*, align 8
  %__result367 = alloca i32, align 4
  %tmp405 = alloca i32, align 4
  %__s1_len419 = alloca i64, align 8
  %__s2_len421 = alloca i64, align 8
  %tmp422 = alloca i32, align 4
  %__s1429 = alloca i8*, align 8
  %__result432 = alloca i32, align 4
  %tmp470 = alloca i32, align 4
  %__s1_len484 = alloca i64, align 8
  %__s2_len486 = alloca i64, align 8
  %tmp487 = alloca i32, align 4
  %__s1494 = alloca i8*, align 8
  %__result497 = alloca i32, align 4
  %tmp535 = alloca i32, align 4
  %__s1_len549 = alloca i64, align 8
  %__s2_len551 = alloca i64, align 8
  %tmp552 = alloca i32, align 4
  %__s1559 = alloca i8*, align 8
  %__result562 = alloca i32, align 4
  %tmp600 = alloca i32, align 4
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store %struct._RinkjDeviceParams* %params, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjEscp** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._RinkjDevice* %1 to %struct._RinkjEscp*
  store %struct._RinkjEscp* %2, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %3 = bitcast i32* %resolution to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 720, i32* %resolution, align 4, !tbaa !25
  %4 = bitcast i32* %uweave to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %top to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %9, i32 0, i32 0
  %10 = load i32, i32* %width, align 4, !tbaa !39
  %11 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %11, i32 0, i32 2
  store i32 %10, i32* %width1, align 4, !tbaa !12
  %12 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %12, i32 0, i32 1
  %13 = load i32, i32* %height2, align 4, !tbaa !41
  %14 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %height3 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %14, i32 0, i32 3
  store i32 %13, i32* %height3, align 4, !tbaa !42
  %15 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %n_planes = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %15, i32 0, i32 2
  %16 = load i32, i32* %n_planes, align 4, !tbaa !43
  %17 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %num_chan = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %17, i32 0, i32 7
  store i32 %16, i32* %num_chan, align 4, !tbaa !14
  %18 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %pass = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %18, i32 0, i32 24
  store i32 0, i32* %pass, align 4, !tbaa !35
  %19 = load i32, i32* %resolution, align 4, !tbaa !25
  %mul = mul nsw i32 0, %19
  store i32 %mul, i32* %top, align 4, !tbaa !25
  %20 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %height4 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %20, i32 0, i32 1
  %21 = load i32, i32* %height4, align 4, !tbaa !41
  %conv = sitofp i32 %21 to double
  %22 = load i32, i32* %resolution, align 4, !tbaa !25
  %conv5 = sitofp i32 %22 to double
  %mul6 = fmul double 5.000000e-01, %conv5
  %add = fadd double %conv, %mul6
  %conv7 = fptosi double %add to i32
  store i32 %conv7, i32* %bottom, align 4, !tbaa !25
  %23 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %height8 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %23, i32 0, i32 1
  %24 = load i32, i32* %height8, align 4, !tbaa !41
  %25 = load i32, i32* %resolution, align 4, !tbaa !25
  %mul9 = mul nsw i32 %24, %25
  %26 = load i32, i32* %resolution, align 4, !tbaa !25
  %add10 = add nsw i32 %mul9, %26
  store i32 %add10, i32* %height, align 4, !tbaa !25
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %27 = load i32, i32* %i, align 4, !tbaa !25
  %conv11 = sext i32 %27 to i64
  %cmp = icmp ult i64 %conv11, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom = sext i32 %28 to i64
  %29 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %plane_offsets = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %29, i32 0, i32 17
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %plane_offsets, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %31, i32 0, i32 6
  %32 = load i8*, i8** %model, align 8, !tbaa !17
  %tobool = icmp ne i8* %32, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %33 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 1) to i64), i64 ptrtoint ([17 x i8]* @.str.15 to i64)), i64 1), label %land.lhs.true.13, label %cond.false

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %call = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0)) #8
  store i64 %call, i64* %__s2_len, align 8, !tbaa !22
  %35 = load i64, i64* %__s2_len, align 8, !tbaa !22
  %cmp14 = icmp ult i64 %35, 4
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.13
  %36 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model17 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %37, i32 0, i32 6
  %38 = load i8*, i8** %model17, align 8, !tbaa !17
  store i8* %38, i8** %__s1, align 8, !tbaa !1
  %39 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %40, i64 0
  %41 = load i8, i8* %arrayidx19, align 1, !tbaa !24
  %conv20 = zext i8 %41 to i32
  %42 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), align 1, !tbaa !24
  %conv21 = zext i8 %42 to i32
  %sub = sub nsw i32 %conv20, %conv21
  store i32 %sub, i32* %__result, align 4, !tbaa !25
  %43 = load i64, i64* %__s2_len, align 8, !tbaa !22
  %cmp22 = icmp ugt i64 %43, 0
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.52

land.lhs.true.24:                                 ; preds = %cond.true
  %44 = load i32, i32* %__result, align 4, !tbaa !25
  %cmp25 = icmp eq i32 %44, 0
  br i1 %cmp25, label %if.then, label %if.end.52

if.then:                                          ; preds = %land.lhs.true.24
  %45 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx27, align 1, !tbaa !24
  %conv28 = zext i8 %46 to i32
  %47 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 1), align 1, !tbaa !24
  %conv29 = zext i8 %47 to i32
  %sub30 = sub nsw i32 %conv28, %conv29
  store i32 %sub30, i32* %__result, align 4, !tbaa !25
  %48 = load i64, i64* %__s2_len, align 8, !tbaa !22
  %cmp31 = icmp ugt i64 %48, 1
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.51

land.lhs.true.33:                                 ; preds = %if.then
  %49 = load i32, i32* %__result, align 4, !tbaa !25
  %cmp34 = icmp eq i32 %49, 0
  br i1 %cmp34, label %if.then.36, label %if.end.51

if.then.36:                                       ; preds = %land.lhs.true.33
  %50 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %50, i64 2
  %51 = load i8, i8* %arrayidx37, align 1, !tbaa !24
  %conv38 = zext i8 %51 to i32
  %52 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 2), align 1, !tbaa !24
  %conv39 = zext i8 %52 to i32
  %sub40 = sub nsw i32 %conv38, %conv39
  store i32 %sub40, i32* %__result, align 4, !tbaa !25
  %53 = load i64, i64* %__s2_len, align 8, !tbaa !22
  %cmp41 = icmp ugt i64 %53, 2
  br i1 %cmp41, label %land.lhs.true.43, label %if.end

land.lhs.true.43:                                 ; preds = %if.then.36
  %54 = load i32, i32* %__result, align 4, !tbaa !25
  %cmp44 = icmp eq i32 %54, 0
  br i1 %cmp44, label %if.then.46, label %if.end

if.then.46:                                       ; preds = %land.lhs.true.43
  %55 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %55, i64 3
  %56 = load i8, i8* %arrayidx47, align 1, !tbaa !24
  %conv48 = zext i8 %56 to i32
  %57 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 3), align 1, !tbaa !24
  %conv49 = zext i8 %57 to i32
  %sub50 = sub nsw i32 %conv48, %conv49
  store i32 %sub50, i32* %__result, align 4, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then.46, %land.lhs.true.43, %if.then.36
  br label %if.end.51

if.end.51:                                        ; preds = %if.end, %land.lhs.true.33, %if.then
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %land.lhs.true.24, %cond.true
  %58 = load i32, i32* %__result, align 4, !tbaa !25
  store i32 %58, i32* %tmp53, !tbaa !25
  %59 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = load i32, i32* %tmp53, !tbaa !25
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.13, %land.lhs.true
  %62 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model54 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %62, i32 0, i32 6
  %63 = load i8*, i8** %model54, align 8, !tbaa !17
  %call55 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0)) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.52
  %cond = phi i32 [ %61, %if.end.52 ], [ %call55, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !25
  %64 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = load i32, i32* %tmp, !tbaa !25
  %tobool56 = icmp ne i32 %66, 0
  br i1 %tobool56, label %if.else, label %if.then.57

if.then.57:                                       ; preds = %cond.end
  %67 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_xres = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %67, i32 0, i32 12
  store i32 360, i32* %head_xres, align 4, !tbaa !44
  %68 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_yres = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %68, i32 0, i32 13
  store i32 120, i32* %head_yres, align 4, !tbaa !45
  %69 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_bps = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %69, i32 0, i32 11
  store i32 2, i32* %head_bps, align 4, !tbaa !46
  %70 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %n_pins = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %70, i32 0, i32 16
  store i32 48, i32* %n_pins, align 4, !tbaa !36
  %71 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %printer_weave = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %71, i32 0, i32 30
  store i32 0, i32* %printer_weave, align 4, !tbaa !21
  br label %if.end.292

if.else:                                          ; preds = %cond.end, %for.end
  %72 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model58 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %72, i32 0, i32 6
  %73 = load i8*, i8** %model58, align 8, !tbaa !17
  %tobool59 = icmp ne i8* %73, null
  br i1 %tobool59, label %land.lhs.true.60, label %if.else.142

land.lhs.true.60:                                 ; preds = %if.else
  %74 = bitcast i64* %__s1_len62 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = bitcast i64* %__s2_len64 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i64 1) to i64), i64 ptrtoint ([18 x i8]* @.str.16 to i64)), i64 1), label %land.lhs.true.66, label %cond.false.114

land.lhs.true.66:                                 ; preds = %land.lhs.true.60
  %call67 = call i64 @strlen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0)) #8
  store i64 %call67, i64* %__s2_len64, align 8, !tbaa !22
  %76 = load i64, i64* %__s2_len64, align 8, !tbaa !22
  %cmp68 = icmp ult i64 %76, 4
  br i1 %cmp68, label %cond.true.70, label %cond.false.114

cond.true.70:                                     ; preds = %land.lhs.true.66
  %77 = bitcast i8** %__s172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model73 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %78, i32 0, i32 6
  %79 = load i8*, i8** %model73, align 8, !tbaa !17
  store i8* %79, i8** %__s172, align 8, !tbaa !1
  %80 = bitcast i32* %__result75 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = load i8*, i8** %__s172, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %81, i64 0
  %82 = load i8, i8* %arrayidx76, align 1, !tbaa !24
  %conv77 = zext i8 %82 to i32
  %83 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), align 1, !tbaa !24
  %conv78 = zext i8 %83 to i32
  %sub79 = sub nsw i32 %conv77, %conv78
  store i32 %sub79, i32* %__result75, align 4, !tbaa !25
  %84 = load i64, i64* %__s2_len64, align 8, !tbaa !22
  %cmp80 = icmp ugt i64 %84, 0
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.112

land.lhs.true.82:                                 ; preds = %cond.true.70
  %85 = load i32, i32* %__result75, align 4, !tbaa !25
  %cmp83 = icmp eq i32 %85, 0
  br i1 %cmp83, label %if.then.85, label %if.end.112

if.then.85:                                       ; preds = %land.lhs.true.82
  %86 = load i8*, i8** %__s172, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i8, i8* %86, i64 1
  %87 = load i8, i8* %arrayidx86, align 1, !tbaa !24
  %conv87 = zext i8 %87 to i32
  %88 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i64 1), align 1, !tbaa !24
  %conv88 = zext i8 %88 to i32
  %sub89 = sub nsw i32 %conv87, %conv88
  store i32 %sub89, i32* %__result75, align 4, !tbaa !25
  %89 = load i64, i64* %__s2_len64, align 8, !tbaa !22
  %cmp90 = icmp ugt i64 %89, 1
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.111

land.lhs.true.92:                                 ; preds = %if.then.85
  %90 = load i32, i32* %__result75, align 4, !tbaa !25
  %cmp93 = icmp eq i32 %90, 0
  br i1 %cmp93, label %if.then.95, label %if.end.111

if.then.95:                                       ; preds = %land.lhs.true.92
  %91 = load i8*, i8** %__s172, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %91, i64 2
  %92 = load i8, i8* %arrayidx96, align 1, !tbaa !24
  %conv97 = zext i8 %92 to i32
  %93 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i64 2), align 1, !tbaa !24
  %conv98 = zext i8 %93 to i32
  %sub99 = sub nsw i32 %conv97, %conv98
  store i32 %sub99, i32* %__result75, align 4, !tbaa !25
  %94 = load i64, i64* %__s2_len64, align 8, !tbaa !22
  %cmp100 = icmp ugt i64 %94, 2
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.110

land.lhs.true.102:                                ; preds = %if.then.95
  %95 = load i32, i32* %__result75, align 4, !tbaa !25
  %cmp103 = icmp eq i32 %95, 0
  br i1 %cmp103, label %if.then.105, label %if.end.110

if.then.105:                                      ; preds = %land.lhs.true.102
  %96 = load i8*, i8** %__s172, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i8, i8* %96, i64 3
  %97 = load i8, i8* %arrayidx106, align 1, !tbaa !24
  %conv107 = zext i8 %97 to i32
  %98 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i64 3), align 1, !tbaa !24
  %conv108 = zext i8 %98 to i32
  %sub109 = sub nsw i32 %conv107, %conv108
  store i32 %sub109, i32* %__result75, align 4, !tbaa !25
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.105, %land.lhs.true.102, %if.then.95
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %land.lhs.true.92, %if.then.85
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %land.lhs.true.82, %cond.true.70
  %99 = load i32, i32* %__result75, align 4, !tbaa !25
  store i32 %99, i32* %tmp113, !tbaa !25
  %100 = bitcast i32* %__result75 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i8** %__s172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = load i32, i32* %tmp113, !tbaa !25
  br label %cond.end.117

cond.false.114:                                   ; preds = %land.lhs.true.66, %land.lhs.true.60
  %103 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model115 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %103, i32 0, i32 6
  %104 = load i8*, i8** %model115, align 8, !tbaa !17
  %call116 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0)) #6
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.114, %if.end.112
  %cond118 = phi i32 [ %102, %if.end.112 ], [ %call116, %cond.false.114 ]
  store i32 %cond118, i32* %tmp65, !tbaa !25
  %105 = bitcast i64* %__s2_len64 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast i64* %__s1_len62 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = load i32, i32* %tmp65, !tbaa !25
  %tobool119 = icmp ne i32 %107, 0
  br i1 %tobool119, label %if.else.142, label %if.then.120

if.then.120:                                      ; preds = %cond.end.117
  %108 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_xres121 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %108, i32 0, i32 12
  store i32 360, i32* %head_xres121, align 4, !tbaa !44
  %109 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_yres122 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %109, i32 0, i32 13
  store i32 180, i32* %head_yres122, align 4, !tbaa !45
  %110 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_bps123 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %110, i32 0, i32 11
  store i32 2, i32* %head_bps123, align 4, !tbaa !46
  %111 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %xres = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %111, i32 0, i32 9
  %112 = load i32, i32* %xres, align 4, !tbaa !26
  %cmp124 = icmp eq i32 %112, 2880
  br i1 %cmp124, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %if.then.120
  %113 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_xres127 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %113, i32 0, i32 12
  store i32 720, i32* %head_xres127, align 4, !tbaa !44
  %114 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_bps128 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %114, i32 0, i32 11
  store i32 1, i32* %head_bps128, align 4, !tbaa !46
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %if.then.120
  %115 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %n_pins130 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %115, i32 0, i32 16
  store i32 96, i32* %n_pins130, align 4, !tbaa !36
  %116 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %printer_weave131 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %116, i32 0, i32 30
  store i32 0, i32* %printer_weave131, align 4, !tbaa !21
  %117 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %yres = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %117, i32 0, i32 10
  %118 = load i32, i32* %yres, align 4, !tbaa !27
  %div = sdiv i32 %118, 360
  %119 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %plane_offsets132 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %119, i32 0, i32 17
  %arrayidx133 = getelementptr inbounds [6 x i32], [6 x i32]* %plane_offsets132, i32 0, i64 3
  store i32 %div, i32* %arrayidx133, align 4, !tbaa !25
  %120 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %yres134 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %120, i32 0, i32 10
  %121 = load i32, i32* %yres134, align 4, !tbaa !27
  %div135 = sdiv i32 %121, 360
  %122 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %plane_offsets136 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %122, i32 0, i32 17
  %arrayidx137 = getelementptr inbounds [6 x i32], [6 x i32]* %plane_offsets136, i32 0, i64 4
  store i32 %div135, i32* %arrayidx137, align 4, !tbaa !25
  %123 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %yres138 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %123, i32 0, i32 10
  %124 = load i32, i32* %yres138, align 4, !tbaa !27
  %div139 = sdiv i32 %124, 360
  %125 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %plane_offsets140 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %125, i32 0, i32 17
  %arrayidx141 = getelementptr inbounds [6 x i32], [6 x i32]* %plane_offsets140, i32 0, i64 5
  store i32 %div139, i32* %arrayidx141, align 4, !tbaa !25
  br label %if.end.291

if.else.142:                                      ; preds = %cond.end.117, %if.else
  %126 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model143 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %126, i32 0, i32 6
  %127 = load i8*, i8** %model143, align 8, !tbaa !17
  %tobool144 = icmp ne i8* %127, null
  br i1 %tobool144, label %land.lhs.true.145, label %if.else.212

land.lhs.true.145:                                ; preds = %if.else.142
  %128 = bitcast i64* %__s1_len147 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %128) #1
  %129 = bitcast i64* %__s2_len149 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i64 1) to i64), i64 ptrtoint ([18 x i8]* @.str.17 to i64)), i64 1), label %land.lhs.true.151, label %cond.false.199

land.lhs.true.151:                                ; preds = %land.lhs.true.145
  %call152 = call i64 @strlen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #8
  store i64 %call152, i64* %__s2_len149, align 8, !tbaa !22
  %130 = load i64, i64* %__s2_len149, align 8, !tbaa !22
  %cmp153 = icmp ult i64 %130, 4
  br i1 %cmp153, label %cond.true.155, label %cond.false.199

cond.true.155:                                    ; preds = %land.lhs.true.151
  %131 = bitcast i8** %__s1157 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  %132 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model158 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %132, i32 0, i32 6
  %133 = load i8*, i8** %model158, align 8, !tbaa !17
  store i8* %133, i8** %__s1157, align 8, !tbaa !1
  %134 = bitcast i32* %__result160 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #1
  %135 = load i8*, i8** %__s1157, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds i8, i8* %135, i64 0
  %136 = load i8, i8* %arrayidx161, align 1, !tbaa !24
  %conv162 = zext i8 %136 to i32
  %137 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), align 1, !tbaa !24
  %conv163 = zext i8 %137 to i32
  %sub164 = sub nsw i32 %conv162, %conv163
  store i32 %sub164, i32* %__result160, align 4, !tbaa !25
  %138 = load i64, i64* %__s2_len149, align 8, !tbaa !22
  %cmp165 = icmp ugt i64 %138, 0
  br i1 %cmp165, label %land.lhs.true.167, label %if.end.197

land.lhs.true.167:                                ; preds = %cond.true.155
  %139 = load i32, i32* %__result160, align 4, !tbaa !25
  %cmp168 = icmp eq i32 %139, 0
  br i1 %cmp168, label %if.then.170, label %if.end.197

if.then.170:                                      ; preds = %land.lhs.true.167
  %140 = load i8*, i8** %__s1157, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds i8, i8* %140, i64 1
  %141 = load i8, i8* %arrayidx171, align 1, !tbaa !24
  %conv172 = zext i8 %141 to i32
  %142 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i64 1), align 1, !tbaa !24
  %conv173 = zext i8 %142 to i32
  %sub174 = sub nsw i32 %conv172, %conv173
  store i32 %sub174, i32* %__result160, align 4, !tbaa !25
  %143 = load i64, i64* %__s2_len149, align 8, !tbaa !22
  %cmp175 = icmp ugt i64 %143, 1
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.196

land.lhs.true.177:                                ; preds = %if.then.170
  %144 = load i32, i32* %__result160, align 4, !tbaa !25
  %cmp178 = icmp eq i32 %144, 0
  br i1 %cmp178, label %if.then.180, label %if.end.196

if.then.180:                                      ; preds = %land.lhs.true.177
  %145 = load i8*, i8** %__s1157, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i8, i8* %145, i64 2
  %146 = load i8, i8* %arrayidx181, align 1, !tbaa !24
  %conv182 = zext i8 %146 to i32
  %147 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i64 2), align 1, !tbaa !24
  %conv183 = zext i8 %147 to i32
  %sub184 = sub nsw i32 %conv182, %conv183
  store i32 %sub184, i32* %__result160, align 4, !tbaa !25
  %148 = load i64, i64* %__s2_len149, align 8, !tbaa !22
  %cmp185 = icmp ugt i64 %148, 2
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.195

land.lhs.true.187:                                ; preds = %if.then.180
  %149 = load i32, i32* %__result160, align 4, !tbaa !25
  %cmp188 = icmp eq i32 %149, 0
  br i1 %cmp188, label %if.then.190, label %if.end.195

if.then.190:                                      ; preds = %land.lhs.true.187
  %150 = load i8*, i8** %__s1157, align 8, !tbaa !1
  %arrayidx191 = getelementptr inbounds i8, i8* %150, i64 3
  %151 = load i8, i8* %arrayidx191, align 1, !tbaa !24
  %conv192 = zext i8 %151 to i32
  %152 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i64 3), align 1, !tbaa !24
  %conv193 = zext i8 %152 to i32
  %sub194 = sub nsw i32 %conv192, %conv193
  store i32 %sub194, i32* %__result160, align 4, !tbaa !25
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.190, %land.lhs.true.187, %if.then.180
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %land.lhs.true.177, %if.then.170
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %land.lhs.true.167, %cond.true.155
  %153 = load i32, i32* %__result160, align 4, !tbaa !25
  store i32 %153, i32* %tmp198, !tbaa !25
  %154 = bitcast i32* %__result160 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i8** %__s1157 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = load i32, i32* %tmp198, !tbaa !25
  br label %cond.end.202

cond.false.199:                                   ; preds = %land.lhs.true.151, %land.lhs.true.145
  %157 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model200 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %157, i32 0, i32 6
  %158 = load i8*, i8** %model200, align 8, !tbaa !17
  %call201 = call i32 @strcmp(i8* %158, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #6
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.199, %if.end.197
  %cond203 = phi i32 [ %156, %if.end.197 ], [ %call201, %cond.false.199 ]
  store i32 %cond203, i32* %tmp150, !tbaa !25
  %159 = bitcast i64* %__s2_len149 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i64* %__s1_len147 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = load i32, i32* %tmp150, !tbaa !25
  %tobool204 = icmp ne i32 %161, 0
  br i1 %tobool204, label %if.else.212, label %if.then.205

if.then.205:                                      ; preds = %cond.end.202
  %162 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %xres206 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %162, i32 0, i32 9
  %163 = load i32, i32* %xres206, align 4, !tbaa !26
  %164 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_xres207 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %164, i32 0, i32 12
  store i32 %163, i32* %head_xres207, align 4, !tbaa !44
  %165 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %yres208 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %165, i32 0, i32 10
  %166 = load i32, i32* %yres208, align 4, !tbaa !27
  %167 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_yres209 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %167, i32 0, i32 13
  store i32 %166, i32* %head_yres209, align 4, !tbaa !45
  %168 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %168, i32 0, i32 8
  %169 = load i32, i32* %bps, align 4, !tbaa !15
  %170 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_bps210 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %170, i32 0, i32 11
  store i32 %169, i32* %head_bps210, align 4, !tbaa !46
  %171 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %n_pins211 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %171, i32 0, i32 16
  store i32 1, i32* %n_pins211, align 4, !tbaa !36
  br label %if.end.290

if.else.212:                                      ; preds = %cond.end.202, %if.else.142
  %172 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model213 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %172, i32 0, i32 6
  %173 = load i8*, i8** %model213, align 8, !tbaa !17
  %tobool214 = icmp ne i8* %173, null
  br i1 %tobool214, label %land.lhs.true.215, label %if.else.287

land.lhs.true.215:                                ; preds = %if.else.212
  %174 = bitcast i64* %__s1_len217 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %174) #1
  %175 = bitcast i64* %__s2_len219 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.18 to i64)), i64 1), label %land.lhs.true.221, label %cond.false.269

land.lhs.true.221:                                ; preds = %land.lhs.true.215
  %call222 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #8
  store i64 %call222, i64* %__s2_len219, align 8, !tbaa !22
  %176 = load i64, i64* %__s2_len219, align 8, !tbaa !22
  %cmp223 = icmp ult i64 %176, 4
  br i1 %cmp223, label %cond.true.225, label %cond.false.269

cond.true.225:                                    ; preds = %land.lhs.true.221
  %177 = bitcast i8** %__s1227 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %177) #1
  %178 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model228 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %178, i32 0, i32 6
  %179 = load i8*, i8** %model228, align 8, !tbaa !17
  store i8* %179, i8** %__s1227, align 8, !tbaa !1
  %180 = bitcast i32* %__result230 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %180) #1
  %181 = load i8*, i8** %__s1227, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds i8, i8* %181, i64 0
  %182 = load i8, i8* %arrayidx231, align 1, !tbaa !24
  %conv232 = zext i8 %182 to i32
  %183 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), align 1, !tbaa !24
  %conv233 = zext i8 %183 to i32
  %sub234 = sub nsw i32 %conv232, %conv233
  store i32 %sub234, i32* %__result230, align 4, !tbaa !25
  %184 = load i64, i64* %__s2_len219, align 8, !tbaa !22
  %cmp235 = icmp ugt i64 %184, 0
  br i1 %cmp235, label %land.lhs.true.237, label %if.end.267

land.lhs.true.237:                                ; preds = %cond.true.225
  %185 = load i32, i32* %__result230, align 4, !tbaa !25
  %cmp238 = icmp eq i32 %185, 0
  br i1 %cmp238, label %if.then.240, label %if.end.267

if.then.240:                                      ; preds = %land.lhs.true.237
  %186 = load i8*, i8** %__s1227, align 8, !tbaa !1
  %arrayidx241 = getelementptr inbounds i8, i8* %186, i64 1
  %187 = load i8, i8* %arrayidx241, align 1, !tbaa !24
  %conv242 = zext i8 %187 to i32
  %188 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 1), align 1, !tbaa !24
  %conv243 = zext i8 %188 to i32
  %sub244 = sub nsw i32 %conv242, %conv243
  store i32 %sub244, i32* %__result230, align 4, !tbaa !25
  %189 = load i64, i64* %__s2_len219, align 8, !tbaa !22
  %cmp245 = icmp ugt i64 %189, 1
  br i1 %cmp245, label %land.lhs.true.247, label %if.end.266

land.lhs.true.247:                                ; preds = %if.then.240
  %190 = load i32, i32* %__result230, align 4, !tbaa !25
  %cmp248 = icmp eq i32 %190, 0
  br i1 %cmp248, label %if.then.250, label %if.end.266

if.then.250:                                      ; preds = %land.lhs.true.247
  %191 = load i8*, i8** %__s1227, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds i8, i8* %191, i64 2
  %192 = load i8, i8* %arrayidx251, align 1, !tbaa !24
  %conv252 = zext i8 %192 to i32
  %193 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 2), align 1, !tbaa !24
  %conv253 = zext i8 %193 to i32
  %sub254 = sub nsw i32 %conv252, %conv253
  store i32 %sub254, i32* %__result230, align 4, !tbaa !25
  %194 = load i64, i64* %__s2_len219, align 8, !tbaa !22
  %cmp255 = icmp ugt i64 %194, 2
  br i1 %cmp255, label %land.lhs.true.257, label %if.end.265

land.lhs.true.257:                                ; preds = %if.then.250
  %195 = load i32, i32* %__result230, align 4, !tbaa !25
  %cmp258 = icmp eq i32 %195, 0
  br i1 %cmp258, label %if.then.260, label %if.end.265

if.then.260:                                      ; preds = %land.lhs.true.257
  %196 = load i8*, i8** %__s1227, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds i8, i8* %196, i64 3
  %197 = load i8, i8* %arrayidx261, align 1, !tbaa !24
  %conv262 = zext i8 %197 to i32
  %198 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 3), align 1, !tbaa !24
  %conv263 = zext i8 %198 to i32
  %sub264 = sub nsw i32 %conv262, %conv263
  store i32 %sub264, i32* %__result230, align 4, !tbaa !25
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.260, %land.lhs.true.257, %if.then.250
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %land.lhs.true.247, %if.then.240
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %land.lhs.true.237, %cond.true.225
  %199 = load i32, i32* %__result230, align 4, !tbaa !25
  store i32 %199, i32* %tmp268, !tbaa !25
  %200 = bitcast i32* %__result230 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i8** %__s1227 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = load i32, i32* %tmp268, !tbaa !25
  br label %cond.end.272

cond.false.269:                                   ; preds = %land.lhs.true.221, %land.lhs.true.215
  %203 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model270 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %203, i32 0, i32 6
  %204 = load i8*, i8** %model270, align 8, !tbaa !17
  %call271 = call i32 @strcmp(i8* %204, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #6
  br label %cond.end.272

cond.end.272:                                     ; preds = %cond.false.269, %if.end.267
  %cond273 = phi i32 [ %202, %if.end.267 ], [ %call271, %cond.false.269 ]
  store i32 %cond273, i32* %tmp220, !tbaa !25
  %205 = bitcast i64* %__s2_len219 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i64* %__s1_len217 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = load i32, i32* %tmp220, !tbaa !25
  %tobool274 = icmp ne i32 %207, 0
  br i1 %tobool274, label %if.else.287, label %if.then.275

if.then.275:                                      ; preds = %cond.end.272
  %208 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_xres276 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %208, i32 0, i32 12
  store i32 360, i32* %head_xres276, align 4, !tbaa !44
  %209 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_yres277 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %209, i32 0, i32 13
  store i32 180, i32* %head_yres277, align 4, !tbaa !45
  %210 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_bps278 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %210, i32 0, i32 11
  store i32 2, i32* %head_bps278, align 4, !tbaa !46
  %211 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %n_pins279 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %211, i32 0, i32 16
  store i32 60, i32* %n_pins279, align 4, !tbaa !36
  %212 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %printer_weave280 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %212, i32 0, i32 30
  store i32 0, i32* %printer_weave280, align 4, !tbaa !21
  %213 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %plane_offsets281 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %213, i32 0, i32 17
  %arrayidx282 = getelementptr inbounds [6 x i32], [6 x i32]* %plane_offsets281, i32 0, i64 0
  store i32 480, i32* %arrayidx282, align 4, !tbaa !25
  %214 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %plane_offsets283 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %214, i32 0, i32 17
  %arrayidx284 = getelementptr inbounds [6 x i32], [6 x i32]* %plane_offsets283, i32 0, i64 1
  store i32 240, i32* %arrayidx284, align 4, !tbaa !25
  %215 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %plane_offsets285 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %215, i32 0, i32 17
  %arrayidx286 = getelementptr inbounds [6 x i32], [6 x i32]* %plane_offsets285, i32 0, i64 2
  store i32 480, i32* %arrayidx286, align 4, !tbaa !25
  br label %if.end.289

if.else.287:                                      ; preds = %cond.end.272, %if.else.212
  %216 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %spacing = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %216, i32 0, i32 15
  store i32 1, i32* %spacing, align 4, !tbaa !37
  %217 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %n_pins288 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %217, i32 0, i32 16
  store i32 1, i32* %n_pins288, align 4, !tbaa !36
  br label %if.end.289

if.end.289:                                       ; preds = %if.else.287, %if.then.275
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %if.then.205
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.end.129
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.291, %if.then.57
  %218 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %yres293 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %218, i32 0, i32 10
  %219 = load i32, i32* %yres293, align 4, !tbaa !27
  %220 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_yres294 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %220, i32 0, i32 13
  %221 = load i32, i32* %head_yres294, align 4, !tbaa !45
  %div295 = sdiv i32 %219, %221
  %222 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %spacing296 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %222, i32 0, i32 15
  store i32 %div295, i32* %spacing296, align 4, !tbaa !37
  %223 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %xres297 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %223, i32 0, i32 9
  %224 = load i32, i32* %xres297, align 4, !tbaa !26
  %225 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %head_xres298 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %225, i32 0, i32 12
  %226 = load i32, i32* %head_xres298, align 4, !tbaa !44
  %div299 = sdiv i32 %224, %226
  %227 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %passes_per_scan = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %227, i32 0, i32 14
  store i32 %div299, i32* %passes_per_scan, align 4, !tbaa !47
  %228 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %n_pins300 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %228, i32 0, i32 16
  %229 = load i32, i32* %n_pins300, align 4, !tbaa !36
  %cmp301 = icmp eq i32 %229, 1
  %conv302 = zext i1 %cmp301 to i32
  store i32 %conv302, i32* %uweave, align 4, !tbaa !25
  %230 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %max_offset = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %230, i32 0, i32 18
  store i32 0, i32* %max_offset, align 4, !tbaa !38
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond.303

for.cond.303:                                     ; preds = %for.inc.320, %if.end.292
  %231 = load i32, i32* %i, align 4, !tbaa !25
  %conv304 = sext i32 %231 to i64
  %cmp305 = icmp ult i64 %conv304, 6
  br i1 %cmp305, label %for.body.307, label %for.end.322

for.body.307:                                     ; preds = %for.cond.303
  %232 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom308 = sext i32 %232 to i64
  %233 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %plane_offsets309 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %233, i32 0, i32 17
  %arrayidx310 = getelementptr inbounds [6 x i32], [6 x i32]* %plane_offsets309, i32 0, i64 %idxprom308
  %234 = load i32, i32* %arrayidx310, align 4, !tbaa !25
  %235 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %max_offset311 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %235, i32 0, i32 18
  %236 = load i32, i32* %max_offset311, align 4, !tbaa !38
  %cmp312 = icmp sgt i32 %234, %236
  br i1 %cmp312, label %if.then.314, label %if.end.319

if.then.314:                                      ; preds = %for.body.307
  %237 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom315 = sext i32 %237 to i64
  %238 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %plane_offsets316 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %238, i32 0, i32 17
  %arrayidx317 = getelementptr inbounds [6 x i32], [6 x i32]* %plane_offsets316, i32 0, i64 %idxprom315
  %239 = load i32, i32* %arrayidx317, align 4, !tbaa !25
  %240 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %max_offset318 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %240, i32 0, i32 18
  store i32 %239, i32* %max_offset318, align 4, !tbaa !38
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.314, %for.body.307
  br label %for.inc.320

for.inc.320:                                      ; preds = %if.end.319
  %241 = load i32, i32* %i, align 4, !tbaa !25
  %inc321 = add nsw i32 %241, 1
  store i32 %inc321, i32* %i, align 4, !tbaa !25
  br label %for.cond.303

for.end.322:                                      ; preds = %for.cond.303
  %242 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %243 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %spacing323 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %243, i32 0, i32 15
  %244 = load i32, i32* %spacing323, align 4, !tbaa !37
  %245 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %passes_per_scan324 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %245, i32 0, i32 14
  %246 = load i32, i32* %passes_per_scan324, align 4, !tbaa !47
  %mul325 = mul nsw i32 %244, %246
  %sub326 = sub nsw i32 %mul325, 1
  %call327 = call i32 @rinkj_escp_ytop(%struct._RinkjEscp* %242, i32 %sub326, i32* null) #7
  %247 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %spacing328 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %247, i32 0, i32 15
  %248 = load i32, i32* %spacing328, align 4, !tbaa !37
  %sub329 = sub nsw i32 %248, 1
  %sub330 = sub nsw i32 %call327, %sub329
  %249 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %max_offset331 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %249, i32 0, i32 18
  %250 = load i32, i32* %max_offset331, align 4, !tbaa !38
  %add332 = add nsw i32 %sub330, %250
  %251 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %y = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %251, i32 0, i32 4
  store i32 %add332, i32* %y, align 4, !tbaa !29
  %252 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %width333 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %252, i32 0, i32 2
  %253 = load i32, i32* %width333, align 4, !tbaa !12
  %254 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %bps334 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %254, i32 0, i32 8
  %255 = load i32, i32* %bps334, align 4, !tbaa !15
  %mul335 = mul nsw i32 %253, %255
  %add336 = add nsw i32 %mul335, 7
  %shr = ashr i32 %add336, 3
  %256 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %planestride = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %256, i32 0, i32 23
  store i32 %shr, i32* %planestride, align 4, !tbaa !33
  %257 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %planestride337 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %257, i32 0, i32 23
  %258 = load i32, i32* %planestride337, align 4, !tbaa !33
  %259 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %num_chan338 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %259, i32 0, i32 7
  %260 = load i32, i32* %num_chan338, align 4, !tbaa !14
  %mul339 = mul nsw i32 %258, %260
  %261 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %rowstride = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %261, i32 0, i32 22
  store i32 %mul339, i32* %rowstride, align 4, !tbaa !32
  %262 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %bufheight = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %262, i32 0, i32 21
  store i32 2048, i32* %bufheight, align 4, !tbaa !30
  %263 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %rowstride340 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %263, i32 0, i32 22
  %264 = load i32, i32* %rowstride340, align 4, !tbaa !32
  %conv341 = sext i32 %264 to i64
  %265 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %bufheight342 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %265, i32 0, i32 21
  %266 = load i32, i32* %bufheight342, align 4, !tbaa !30
  %conv343 = sext i32 %266 to i64
  %call344 = call noalias i8* @calloc(i64 %conv341, i64 %conv343) #6
  %267 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %267, i32 0, i32 19
  store i8* %call344, i8** %buf, align 8, !tbaa !31
  %268 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %num_chan345 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %268, i32 0, i32 7
  %269 = load i32, i32* %num_chan345, align 4, !tbaa !14
  %conv346 = sext i32 %269 to i64
  %270 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %bufheight347 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %270, i32 0, i32 21
  %271 = load i32, i32* %bufheight347, align 4, !tbaa !30
  %conv348 = sext i32 %271 to i64
  %call349 = call noalias i8* @calloc(i64 %conv346, i64 %conv348) #6
  %272 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %buf_linevalid = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %272, i32 0, i32 20
  store i8* %call349, i8** %buf_linevalid, align 8, !tbaa !34
  %273 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %vertpos = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %273, i32 0, i32 25
  store i32 -1, i32* %vertpos, align 4, !tbaa !48
  %274 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model350 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %274, i32 0, i32 6
  %275 = load i8*, i8** %model350, align 8, !tbaa !17
  %tobool351 = icmp ne i8* %275, null
  br i1 %tobool351, label %land.lhs.true.352, label %if.else.414

land.lhs.true.352:                                ; preds = %for.end.322
  %276 = bitcast i64* %__s1_len354 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %276) #1
  %277 = bitcast i64* %__s2_len356 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %277) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 1) to i64), i64 ptrtoint ([17 x i8]* @.str.15 to i64)), i64 1), label %land.lhs.true.358, label %cond.false.406

land.lhs.true.358:                                ; preds = %land.lhs.true.352
  %call359 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0)) #8
  store i64 %call359, i64* %__s2_len356, align 8, !tbaa !22
  %278 = load i64, i64* %__s2_len356, align 8, !tbaa !22
  %cmp360 = icmp ult i64 %278, 4
  br i1 %cmp360, label %cond.true.362, label %cond.false.406

cond.true.362:                                    ; preds = %land.lhs.true.358
  %279 = bitcast i8** %__s1364 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %279) #1
  %280 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model365 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %280, i32 0, i32 6
  %281 = load i8*, i8** %model365, align 8, !tbaa !17
  store i8* %281, i8** %__s1364, align 8, !tbaa !1
  %282 = bitcast i32* %__result367 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %282) #1
  %283 = load i8*, i8** %__s1364, align 8, !tbaa !1
  %arrayidx368 = getelementptr inbounds i8, i8* %283, i64 0
  %284 = load i8, i8* %arrayidx368, align 1, !tbaa !24
  %conv369 = zext i8 %284 to i32
  %285 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), align 1, !tbaa !24
  %conv370 = zext i8 %285 to i32
  %sub371 = sub nsw i32 %conv369, %conv370
  store i32 %sub371, i32* %__result367, align 4, !tbaa !25
  %286 = load i64, i64* %__s2_len356, align 8, !tbaa !22
  %cmp372 = icmp ugt i64 %286, 0
  br i1 %cmp372, label %land.lhs.true.374, label %if.end.404

land.lhs.true.374:                                ; preds = %cond.true.362
  %287 = load i32, i32* %__result367, align 4, !tbaa !25
  %cmp375 = icmp eq i32 %287, 0
  br i1 %cmp375, label %if.then.377, label %if.end.404

if.then.377:                                      ; preds = %land.lhs.true.374
  %288 = load i8*, i8** %__s1364, align 8, !tbaa !1
  %arrayidx378 = getelementptr inbounds i8, i8* %288, i64 1
  %289 = load i8, i8* %arrayidx378, align 1, !tbaa !24
  %conv379 = zext i8 %289 to i32
  %290 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 1), align 1, !tbaa !24
  %conv380 = zext i8 %290 to i32
  %sub381 = sub nsw i32 %conv379, %conv380
  store i32 %sub381, i32* %__result367, align 4, !tbaa !25
  %291 = load i64, i64* %__s2_len356, align 8, !tbaa !22
  %cmp382 = icmp ugt i64 %291, 1
  br i1 %cmp382, label %land.lhs.true.384, label %if.end.403

land.lhs.true.384:                                ; preds = %if.then.377
  %292 = load i32, i32* %__result367, align 4, !tbaa !25
  %cmp385 = icmp eq i32 %292, 0
  br i1 %cmp385, label %if.then.387, label %if.end.403

if.then.387:                                      ; preds = %land.lhs.true.384
  %293 = load i8*, i8** %__s1364, align 8, !tbaa !1
  %arrayidx388 = getelementptr inbounds i8, i8* %293, i64 2
  %294 = load i8, i8* %arrayidx388, align 1, !tbaa !24
  %conv389 = zext i8 %294 to i32
  %295 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 2), align 1, !tbaa !24
  %conv390 = zext i8 %295 to i32
  %sub391 = sub nsw i32 %conv389, %conv390
  store i32 %sub391, i32* %__result367, align 4, !tbaa !25
  %296 = load i64, i64* %__s2_len356, align 8, !tbaa !22
  %cmp392 = icmp ugt i64 %296, 2
  br i1 %cmp392, label %land.lhs.true.394, label %if.end.402

land.lhs.true.394:                                ; preds = %if.then.387
  %297 = load i32, i32* %__result367, align 4, !tbaa !25
  %cmp395 = icmp eq i32 %297, 0
  br i1 %cmp395, label %if.then.397, label %if.end.402

if.then.397:                                      ; preds = %land.lhs.true.394
  %298 = load i8*, i8** %__s1364, align 8, !tbaa !1
  %arrayidx398 = getelementptr inbounds i8, i8* %298, i64 3
  %299 = load i8, i8* %arrayidx398, align 1, !tbaa !24
  %conv399 = zext i8 %299 to i32
  %300 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i64 3), align 1, !tbaa !24
  %conv400 = zext i8 %300 to i32
  %sub401 = sub nsw i32 %conv399, %conv400
  store i32 %sub401, i32* %__result367, align 4, !tbaa !25
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.397, %land.lhs.true.394, %if.then.387
  br label %if.end.403

if.end.403:                                       ; preds = %if.end.402, %land.lhs.true.384, %if.then.377
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.403, %land.lhs.true.374, %cond.true.362
  %301 = load i32, i32* %__result367, align 4, !tbaa !25
  store i32 %301, i32* %tmp405, !tbaa !25
  %302 = bitcast i32* %__result367 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast i8** %__s1364 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #1
  %304 = load i32, i32* %tmp405, !tbaa !25
  br label %cond.end.409

cond.false.406:                                   ; preds = %land.lhs.true.358, %land.lhs.true.352
  %305 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model407 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %305, i32 0, i32 6
  %306 = load i8*, i8** %model407, align 8, !tbaa !17
  %call408 = call i32 @strcmp(i8* %306, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0)) #6
  br label %cond.end.409

cond.end.409:                                     ; preds = %cond.false.406, %if.end.404
  %cond410 = phi i32 [ %304, %if.end.404 ], [ %call408, %cond.false.406 ]
  store i32 %cond410, i32* %tmp357, !tbaa !25
  %307 = bitcast i64* %__s2_len356 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %307) #1
  %308 = bitcast i64* %__s1_len354 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %308) #1
  %309 = load i32, i32* %tmp357, !tbaa !25
  %tobool411 = icmp ne i32 %309, 0
  br i1 %tobool411, label %if.else.414, label %if.then.412

if.then.412:                                      ; preds = %cond.end.409
  %310 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %311 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %call413 = call i32 @rinkj_epson870_init(%struct._RinkjDevice* %310, %struct._RinkjDeviceParams* %311) #7
  br label %if.end.612

if.else.414:                                      ; preds = %cond.end.409, %for.end.322
  %312 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model415 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %312, i32 0, i32 6
  %313 = load i8*, i8** %model415, align 8, !tbaa !17
  %tobool416 = icmp ne i8* %313, null
  br i1 %tobool416, label %land.lhs.true.417, label %if.else.479

land.lhs.true.417:                                ; preds = %if.else.414
  %314 = bitcast i64* %__s1_len419 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %314) #1
  %315 = bitcast i64* %__s2_len421 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %315) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i64 1) to i64), i64 ptrtoint ([18 x i8]* @.str.16 to i64)), i64 1), label %land.lhs.true.423, label %cond.false.471

land.lhs.true.423:                                ; preds = %land.lhs.true.417
  %call424 = call i64 @strlen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0)) #8
  store i64 %call424, i64* %__s2_len421, align 8, !tbaa !22
  %316 = load i64, i64* %__s2_len421, align 8, !tbaa !22
  %cmp425 = icmp ult i64 %316, 4
  br i1 %cmp425, label %cond.true.427, label %cond.false.471

cond.true.427:                                    ; preds = %land.lhs.true.423
  %317 = bitcast i8** %__s1429 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %317) #1
  %318 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model430 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %318, i32 0, i32 6
  %319 = load i8*, i8** %model430, align 8, !tbaa !17
  store i8* %319, i8** %__s1429, align 8, !tbaa !1
  %320 = bitcast i32* %__result432 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %320) #1
  %321 = load i8*, i8** %__s1429, align 8, !tbaa !1
  %arrayidx433 = getelementptr inbounds i8, i8* %321, i64 0
  %322 = load i8, i8* %arrayidx433, align 1, !tbaa !24
  %conv434 = zext i8 %322 to i32
  %323 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), align 1, !tbaa !24
  %conv435 = zext i8 %323 to i32
  %sub436 = sub nsw i32 %conv434, %conv435
  store i32 %sub436, i32* %__result432, align 4, !tbaa !25
  %324 = load i64, i64* %__s2_len421, align 8, !tbaa !22
  %cmp437 = icmp ugt i64 %324, 0
  br i1 %cmp437, label %land.lhs.true.439, label %if.end.469

land.lhs.true.439:                                ; preds = %cond.true.427
  %325 = load i32, i32* %__result432, align 4, !tbaa !25
  %cmp440 = icmp eq i32 %325, 0
  br i1 %cmp440, label %if.then.442, label %if.end.469

if.then.442:                                      ; preds = %land.lhs.true.439
  %326 = load i8*, i8** %__s1429, align 8, !tbaa !1
  %arrayidx443 = getelementptr inbounds i8, i8* %326, i64 1
  %327 = load i8, i8* %arrayidx443, align 1, !tbaa !24
  %conv444 = zext i8 %327 to i32
  %328 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i64 1), align 1, !tbaa !24
  %conv445 = zext i8 %328 to i32
  %sub446 = sub nsw i32 %conv444, %conv445
  store i32 %sub446, i32* %__result432, align 4, !tbaa !25
  %329 = load i64, i64* %__s2_len421, align 8, !tbaa !22
  %cmp447 = icmp ugt i64 %329, 1
  br i1 %cmp447, label %land.lhs.true.449, label %if.end.468

land.lhs.true.449:                                ; preds = %if.then.442
  %330 = load i32, i32* %__result432, align 4, !tbaa !25
  %cmp450 = icmp eq i32 %330, 0
  br i1 %cmp450, label %if.then.452, label %if.end.468

if.then.452:                                      ; preds = %land.lhs.true.449
  %331 = load i8*, i8** %__s1429, align 8, !tbaa !1
  %arrayidx453 = getelementptr inbounds i8, i8* %331, i64 2
  %332 = load i8, i8* %arrayidx453, align 1, !tbaa !24
  %conv454 = zext i8 %332 to i32
  %333 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i64 2), align 1, !tbaa !24
  %conv455 = zext i8 %333 to i32
  %sub456 = sub nsw i32 %conv454, %conv455
  store i32 %sub456, i32* %__result432, align 4, !tbaa !25
  %334 = load i64, i64* %__s2_len421, align 8, !tbaa !22
  %cmp457 = icmp ugt i64 %334, 2
  br i1 %cmp457, label %land.lhs.true.459, label %if.end.467

land.lhs.true.459:                                ; preds = %if.then.452
  %335 = load i32, i32* %__result432, align 4, !tbaa !25
  %cmp460 = icmp eq i32 %335, 0
  br i1 %cmp460, label %if.then.462, label %if.end.467

if.then.462:                                      ; preds = %land.lhs.true.459
  %336 = load i8*, i8** %__s1429, align 8, !tbaa !1
  %arrayidx463 = getelementptr inbounds i8, i8* %336, i64 3
  %337 = load i8, i8* %arrayidx463, align 1, !tbaa !24
  %conv464 = zext i8 %337 to i32
  %338 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i64 3), align 1, !tbaa !24
  %conv465 = zext i8 %338 to i32
  %sub466 = sub nsw i32 %conv464, %conv465
  store i32 %sub466, i32* %__result432, align 4, !tbaa !25
  br label %if.end.467

if.end.467:                                       ; preds = %if.then.462, %land.lhs.true.459, %if.then.452
  br label %if.end.468

if.end.468:                                       ; preds = %if.end.467, %land.lhs.true.449, %if.then.442
  br label %if.end.469

if.end.469:                                       ; preds = %if.end.468, %land.lhs.true.439, %cond.true.427
  %339 = load i32, i32* %__result432, align 4, !tbaa !25
  store i32 %339, i32* %tmp470, !tbaa !25
  %340 = bitcast i32* %__result432 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %340) #1
  %341 = bitcast i8** %__s1429 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %341) #1
  %342 = load i32, i32* %tmp470, !tbaa !25
  br label %cond.end.474

cond.false.471:                                   ; preds = %land.lhs.true.423, %land.lhs.true.417
  %343 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model472 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %343, i32 0, i32 6
  %344 = load i8*, i8** %model472, align 8, !tbaa !17
  %call473 = call i32 @strcmp(i8* %344, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0)) #6
  br label %cond.end.474

cond.end.474:                                     ; preds = %cond.false.471, %if.end.469
  %cond475 = phi i32 [ %342, %if.end.469 ], [ %call473, %cond.false.471 ]
  store i32 %cond475, i32* %tmp422, !tbaa !25
  %345 = bitcast i64* %__s2_len421 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #1
  %346 = bitcast i64* %__s1_len419 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #1
  %347 = load i32, i32* %tmp422, !tbaa !25
  %tobool476 = icmp ne i32 %347, 0
  br i1 %tobool476, label %if.else.479, label %if.then.477

if.then.477:                                      ; preds = %cond.end.474
  %348 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %349 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %call478 = call i32 @rinkj_epson2200_init(%struct._RinkjDevice* %348, %struct._RinkjDeviceParams* %349) #7
  br label %if.end.611

if.else.479:                                      ; preds = %cond.end.474, %if.else.414
  %350 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model480 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %350, i32 0, i32 6
  %351 = load i8*, i8** %model480, align 8, !tbaa !17
  %tobool481 = icmp ne i8* %351, null
  br i1 %tobool481, label %land.lhs.true.482, label %if.else.544

land.lhs.true.482:                                ; preds = %if.else.479
  %352 = bitcast i64* %__s1_len484 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %352) #1
  %353 = bitcast i64* %__s2_len486 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %353) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i64 1) to i64), i64 ptrtoint ([18 x i8]* @.str.17 to i64)), i64 1), label %land.lhs.true.488, label %cond.false.536

land.lhs.true.488:                                ; preds = %land.lhs.true.482
  %call489 = call i64 @strlen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #8
  store i64 %call489, i64* %__s2_len486, align 8, !tbaa !22
  %354 = load i64, i64* %__s2_len486, align 8, !tbaa !22
  %cmp490 = icmp ult i64 %354, 4
  br i1 %cmp490, label %cond.true.492, label %cond.false.536

cond.true.492:                                    ; preds = %land.lhs.true.488
  %355 = bitcast i8** %__s1494 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %355) #1
  %356 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model495 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %356, i32 0, i32 6
  %357 = load i8*, i8** %model495, align 8, !tbaa !17
  store i8* %357, i8** %__s1494, align 8, !tbaa !1
  %358 = bitcast i32* %__result497 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %358) #1
  %359 = load i8*, i8** %__s1494, align 8, !tbaa !1
  %arrayidx498 = getelementptr inbounds i8, i8* %359, i64 0
  %360 = load i8, i8* %arrayidx498, align 1, !tbaa !24
  %conv499 = zext i8 %360 to i32
  %361 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), align 1, !tbaa !24
  %conv500 = zext i8 %361 to i32
  %sub501 = sub nsw i32 %conv499, %conv500
  store i32 %sub501, i32* %__result497, align 4, !tbaa !25
  %362 = load i64, i64* %__s2_len486, align 8, !tbaa !22
  %cmp502 = icmp ugt i64 %362, 0
  br i1 %cmp502, label %land.lhs.true.504, label %if.end.534

land.lhs.true.504:                                ; preds = %cond.true.492
  %363 = load i32, i32* %__result497, align 4, !tbaa !25
  %cmp505 = icmp eq i32 %363, 0
  br i1 %cmp505, label %if.then.507, label %if.end.534

if.then.507:                                      ; preds = %land.lhs.true.504
  %364 = load i8*, i8** %__s1494, align 8, !tbaa !1
  %arrayidx508 = getelementptr inbounds i8, i8* %364, i64 1
  %365 = load i8, i8* %arrayidx508, align 1, !tbaa !24
  %conv509 = zext i8 %365 to i32
  %366 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i64 1), align 1, !tbaa !24
  %conv510 = zext i8 %366 to i32
  %sub511 = sub nsw i32 %conv509, %conv510
  store i32 %sub511, i32* %__result497, align 4, !tbaa !25
  %367 = load i64, i64* %__s2_len486, align 8, !tbaa !22
  %cmp512 = icmp ugt i64 %367, 1
  br i1 %cmp512, label %land.lhs.true.514, label %if.end.533

land.lhs.true.514:                                ; preds = %if.then.507
  %368 = load i32, i32* %__result497, align 4, !tbaa !25
  %cmp515 = icmp eq i32 %368, 0
  br i1 %cmp515, label %if.then.517, label %if.end.533

if.then.517:                                      ; preds = %land.lhs.true.514
  %369 = load i8*, i8** %__s1494, align 8, !tbaa !1
  %arrayidx518 = getelementptr inbounds i8, i8* %369, i64 2
  %370 = load i8, i8* %arrayidx518, align 1, !tbaa !24
  %conv519 = zext i8 %370 to i32
  %371 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i64 2), align 1, !tbaa !24
  %conv520 = zext i8 %371 to i32
  %sub521 = sub nsw i32 %conv519, %conv520
  store i32 %sub521, i32* %__result497, align 4, !tbaa !25
  %372 = load i64, i64* %__s2_len486, align 8, !tbaa !22
  %cmp522 = icmp ugt i64 %372, 2
  br i1 %cmp522, label %land.lhs.true.524, label %if.end.532

land.lhs.true.524:                                ; preds = %if.then.517
  %373 = load i32, i32* %__result497, align 4, !tbaa !25
  %cmp525 = icmp eq i32 %373, 0
  br i1 %cmp525, label %if.then.527, label %if.end.532

if.then.527:                                      ; preds = %land.lhs.true.524
  %374 = load i8*, i8** %__s1494, align 8, !tbaa !1
  %arrayidx528 = getelementptr inbounds i8, i8* %374, i64 3
  %375 = load i8, i8* %arrayidx528, align 1, !tbaa !24
  %conv529 = zext i8 %375 to i32
  %376 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i64 3), align 1, !tbaa !24
  %conv530 = zext i8 %376 to i32
  %sub531 = sub nsw i32 %conv529, %conv530
  store i32 %sub531, i32* %__result497, align 4, !tbaa !25
  br label %if.end.532

if.end.532:                                       ; preds = %if.then.527, %land.lhs.true.524, %if.then.517
  br label %if.end.533

if.end.533:                                       ; preds = %if.end.532, %land.lhs.true.514, %if.then.507
  br label %if.end.534

if.end.534:                                       ; preds = %if.end.533, %land.lhs.true.504, %cond.true.492
  %377 = load i32, i32* %__result497, align 4, !tbaa !25
  store i32 %377, i32* %tmp535, !tbaa !25
  %378 = bitcast i32* %__result497 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %378) #1
  %379 = bitcast i8** %__s1494 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %379) #1
  %380 = load i32, i32* %tmp535, !tbaa !25
  br label %cond.end.539

cond.false.536:                                   ; preds = %land.lhs.true.488, %land.lhs.true.482
  %381 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model537 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %381, i32 0, i32 6
  %382 = load i8*, i8** %model537, align 8, !tbaa !17
  %call538 = call i32 @strcmp(i8* %382, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #6
  br label %cond.end.539

cond.end.539:                                     ; preds = %cond.false.536, %if.end.534
  %cond540 = phi i32 [ %380, %if.end.534 ], [ %call538, %cond.false.536 ]
  store i32 %cond540, i32* %tmp487, !tbaa !25
  %383 = bitcast i64* %__s2_len486 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %383) #1
  %384 = bitcast i64* %__s1_len484 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %384) #1
  %385 = load i32, i32* %tmp487, !tbaa !25
  %tobool541 = icmp ne i32 %385, 0
  br i1 %tobool541, label %if.else.544, label %if.then.542

if.then.542:                                      ; preds = %cond.end.539
  %386 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %387 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %call543 = call i32 @rinkj_epson7600_init(%struct._RinkjDevice* %386, %struct._RinkjDeviceParams* %387) #7
  br label %if.end.610

if.else.544:                                      ; preds = %cond.end.539, %if.else.479
  %388 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model545 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %388, i32 0, i32 6
  %389 = load i8*, i8** %model545, align 8, !tbaa !17
  %tobool546 = icmp ne i8* %389, null
  br i1 %tobool546, label %land.lhs.true.547, label %if.end.609

land.lhs.true.547:                                ; preds = %if.else.544
  %390 = bitcast i64* %__s1_len549 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %390) #1
  %391 = bitcast i64* %__s2_len551 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %391) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.18 to i64)), i64 1), label %land.lhs.true.553, label %cond.false.601

land.lhs.true.553:                                ; preds = %land.lhs.true.547
  %call554 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #8
  store i64 %call554, i64* %__s2_len551, align 8, !tbaa !22
  %392 = load i64, i64* %__s2_len551, align 8, !tbaa !22
  %cmp555 = icmp ult i64 %392, 4
  br i1 %cmp555, label %cond.true.557, label %cond.false.601

cond.true.557:                                    ; preds = %land.lhs.true.553
  %393 = bitcast i8** %__s1559 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %393) #1
  %394 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model560 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %394, i32 0, i32 6
  %395 = load i8*, i8** %model560, align 8, !tbaa !17
  store i8* %395, i8** %__s1559, align 8, !tbaa !1
  %396 = bitcast i32* %__result562 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %396) #1
  %397 = load i8*, i8** %__s1559, align 8, !tbaa !1
  %arrayidx563 = getelementptr inbounds i8, i8* %397, i64 0
  %398 = load i8, i8* %arrayidx563, align 1, !tbaa !24
  %conv564 = zext i8 %398 to i32
  %399 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), align 1, !tbaa !24
  %conv565 = zext i8 %399 to i32
  %sub566 = sub nsw i32 %conv564, %conv565
  store i32 %sub566, i32* %__result562, align 4, !tbaa !25
  %400 = load i64, i64* %__s2_len551, align 8, !tbaa !22
  %cmp567 = icmp ugt i64 %400, 0
  br i1 %cmp567, label %land.lhs.true.569, label %if.end.599

land.lhs.true.569:                                ; preds = %cond.true.557
  %401 = load i32, i32* %__result562, align 4, !tbaa !25
  %cmp570 = icmp eq i32 %401, 0
  br i1 %cmp570, label %if.then.572, label %if.end.599

if.then.572:                                      ; preds = %land.lhs.true.569
  %402 = load i8*, i8** %__s1559, align 8, !tbaa !1
  %arrayidx573 = getelementptr inbounds i8, i8* %402, i64 1
  %403 = load i8, i8* %arrayidx573, align 1, !tbaa !24
  %conv574 = zext i8 %403 to i32
  %404 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 1), align 1, !tbaa !24
  %conv575 = zext i8 %404 to i32
  %sub576 = sub nsw i32 %conv574, %conv575
  store i32 %sub576, i32* %__result562, align 4, !tbaa !25
  %405 = load i64, i64* %__s2_len551, align 8, !tbaa !22
  %cmp577 = icmp ugt i64 %405, 1
  br i1 %cmp577, label %land.lhs.true.579, label %if.end.598

land.lhs.true.579:                                ; preds = %if.then.572
  %406 = load i32, i32* %__result562, align 4, !tbaa !25
  %cmp580 = icmp eq i32 %406, 0
  br i1 %cmp580, label %if.then.582, label %if.end.598

if.then.582:                                      ; preds = %land.lhs.true.579
  %407 = load i8*, i8** %__s1559, align 8, !tbaa !1
  %arrayidx583 = getelementptr inbounds i8, i8* %407, i64 2
  %408 = load i8, i8* %arrayidx583, align 1, !tbaa !24
  %conv584 = zext i8 %408 to i32
  %409 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 2), align 1, !tbaa !24
  %conv585 = zext i8 %409 to i32
  %sub586 = sub nsw i32 %conv584, %conv585
  store i32 %sub586, i32* %__result562, align 4, !tbaa !25
  %410 = load i64, i64* %__s2_len551, align 8, !tbaa !22
  %cmp587 = icmp ugt i64 %410, 2
  br i1 %cmp587, label %land.lhs.true.589, label %if.end.597

land.lhs.true.589:                                ; preds = %if.then.582
  %411 = load i32, i32* %__result562, align 4, !tbaa !25
  %cmp590 = icmp eq i32 %411, 0
  br i1 %cmp590, label %if.then.592, label %if.end.597

if.then.592:                                      ; preds = %land.lhs.true.589
  %412 = load i8*, i8** %__s1559, align 8, !tbaa !1
  %arrayidx593 = getelementptr inbounds i8, i8* %412, i64 3
  %413 = load i8, i8* %arrayidx593, align 1, !tbaa !24
  %conv594 = zext i8 %413 to i32
  %414 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i64 3), align 1, !tbaa !24
  %conv595 = zext i8 %414 to i32
  %sub596 = sub nsw i32 %conv594, %conv595
  store i32 %sub596, i32* %__result562, align 4, !tbaa !25
  br label %if.end.597

if.end.597:                                       ; preds = %if.then.592, %land.lhs.true.589, %if.then.582
  br label %if.end.598

if.end.598:                                       ; preds = %if.end.597, %land.lhs.true.579, %if.then.572
  br label %if.end.599

if.end.599:                                       ; preds = %if.end.598, %land.lhs.true.569, %cond.true.557
  %415 = load i32, i32* %__result562, align 4, !tbaa !25
  store i32 %415, i32* %tmp600, !tbaa !25
  %416 = bitcast i32* %__result562 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %416) #1
  %417 = bitcast i8** %__s1559 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %417) #1
  %418 = load i32, i32* %tmp600, !tbaa !25
  br label %cond.end.604

cond.false.601:                                   ; preds = %land.lhs.true.553, %land.lhs.true.547
  %419 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %model602 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %419, i32 0, i32 6
  %420 = load i8*, i8** %model602, align 8, !tbaa !17
  %call603 = call i32 @strcmp(i8* %420, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0)) #6
  br label %cond.end.604

cond.end.604:                                     ; preds = %cond.false.601, %if.end.599
  %cond605 = phi i32 [ %418, %if.end.599 ], [ %call603, %cond.false.601 ]
  store i32 %cond605, i32* %tmp552, !tbaa !25
  %421 = bitcast i64* %__s2_len551 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %421) #1
  %422 = bitcast i64* %__s1_len549 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %422) #1
  %423 = load i32, i32* %tmp552, !tbaa !25
  %tobool606 = icmp ne i32 %423, 0
  br i1 %tobool606, label %if.end.609, label %if.then.607

if.then.607:                                      ; preds = %cond.end.604
  %424 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %425 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %call608 = call i32 @rinkj_epsonc80_init(%struct._RinkjDevice* %424, %struct._RinkjDeviceParams* %425) #7
  br label %if.end.609

if.end.609:                                       ; preds = %if.then.607, %cond.end.604, %if.else.544
  br label %if.end.610

if.end.610:                                       ; preds = %if.end.609, %if.then.542
  br label %if.end.611

if.end.611:                                       ; preds = %if.end.610, %if.then.477
  br label %if.end.612

if.end.612:                                       ; preds = %if.end.611, %if.then.412
  %426 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %426) #1
  %427 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %427) #1
  %428 = bitcast i32* %top to i8*
  call void @llvm.lifetime.end(i64 4, i8* %428) #1
  %429 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %429) #1
  %430 = bitcast i32* %uweave to i8*
  call void @llvm.lifetime.end(i64 4, i8* %430) #1
  %431 = bitcast i32* %resolution to i8*
  call void @llvm.lifetime.end(i64 4, i8* %431) #1
  %432 = bitcast %struct._RinkjEscp** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %432) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i8* @rinkj_config_keyval(i8*, i8**, i8**) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #5 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #6
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_escp_flush_bottom(%struct._RinkjEscp* %z) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca %struct._RinkjEscp*, align 8
  %ytop = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._RinkjEscp* %z, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ytop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  br label %for.cond

for.cond:                                         ; preds = %if.end.4, %entry
  %2 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %3 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %pass = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %3, i32 0, i32 24
  %4 = load i32, i32* %pass, align 4, !tbaa !35
  %call = call i32 @rinkj_escp_ytop(%struct._RinkjEscp* %2, i32 %4, i32* null) #7
  store i32 %call, i32* %ytop, align 4, !tbaa !25
  %5 = load i32, i32* %ytop, align 4, !tbaa !25
  %6 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %6, i32 0, i32 4
  %7 = load i32, i32* %y, align 4, !tbaa !29
  %cmp = icmp sge i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %8 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %call1 = call i32 @rinkj_escp_flush(%struct._RinkjEscp* %8) #7
  store i32 %call1, i32* %status, align 4, !tbaa !25
  %9 = load i32, i32* %status, align 4, !tbaa !25
  %cmp2 = icmp ne i32 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %status, align 4, !tbaa !25
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.3
  %11 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast i32* %ytop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @rinkj_byte_stream_puts(%struct._RinkjByteStream*, i8*) #3

declare i32 @rinkj_byte_stream_close(%struct._RinkjByteStream*) #3

; Function Attrs: nounwind uwtable
define internal void @rinkj_escp_free(%struct._RinkjEscp* %z) #0 {
entry:
  %z.addr = alloca %struct._RinkjEscp*, align 8
  store %struct._RinkjEscp* %z, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %0 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %manufacturer = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %0, i32 0, i32 5
  %1 = load i8*, i8** %manufacturer, align 8, !tbaa !16
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %manufacturer1 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %2, i32 0, i32 5
  %3 = load i8*, i8** %manufacturer1, align 8, !tbaa !16
  call void @free(i8* %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %model = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %4, i32 0, i32 6
  %5 = load i8*, i8** %model, align 8, !tbaa !17
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %model4 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %6, i32 0, i32 6
  %7 = load i8*, i8** %model4, align 8, !tbaa !17
  call void @free(i8* %7) #6
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %8 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %8, i32 0, i32 19
  %9 = load i8*, i8** %buf, align 8, !tbaa !31
  call void @free(i8* %9) #6
  %10 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %buf_linevalid = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %10, i32 0, i32 20
  %11 = load i8*, i8** %buf_linevalid, align 8, !tbaa !34
  call void @free(i8* %11) #6
  %12 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %13 = bitcast %struct._RinkjEscp* %12 to i8*
  call void @free(i8* %13) #6
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_escp_ytop(%struct._RinkjEscp* %z, i32 %pass, i32* %p_x_pass) #0 {
entry:
  %z.addr = alloca %struct._RinkjEscp*, align 8
  %pass.addr = alloca i32, align 4
  %p_x_pass.addr = alloca i32*, align 8
  %ytop = alloca i32, align 4
  %x_pass = alloca i32, align 4
  %y_pass = alloca i32, align 4
  %passes_per_scan = alloca i32, align 4
  %spacing = alloca i32, align 4
  %n_cycle = alloca i32, align 4
  %mod_pass = alloca i32, align 4
  %y_modulo = alloca i32, align 4
  store %struct._RinkjEscp* %z, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  store i32 %pass, i32* %pass.addr, align 4, !tbaa !25
  store i32* %p_x_pass, i32** %p_x_pass.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ytop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %x_pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %y_pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %passes_per_scan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %passes_per_scan1 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %4, i32 0, i32 14
  %5 = load i32, i32* %passes_per_scan1, align 4, !tbaa !47
  store i32 %5, i32* %passes_per_scan, align 4, !tbaa !25
  %6 = bitcast i32* %spacing to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %spacing2 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %7, i32 0, i32 15
  %8 = load i32, i32* %spacing2, align 4, !tbaa !37
  store i32 %8, i32* %spacing, align 4, !tbaa !25
  %9 = bitcast i32* %n_cycle to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %spacing, align 4, !tbaa !25
  %11 = load i32, i32* %passes_per_scan, align 4, !tbaa !25
  %mul = mul nsw i32 %10, %11
  store i32 %mul, i32* %n_cycle, align 4, !tbaa !25
  %12 = bitcast i32* %mod_pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %14 = load i32, i32* %n_cycle, align 4, !tbaa !25
  %rem = srem i32 %13, %14
  store i32 %rem, i32* %mod_pass, align 4, !tbaa !25
  %15 = bitcast i32* %y_modulo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %mod_pass, align 4, !tbaa !25
  %17 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %n_pins = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %17, i32 0, i32 16
  %18 = load i32, i32* %n_pins, align 4, !tbaa !36
  %mul3 = mul nsw i32 %16, %18
  %19 = load i32, i32* %spacing, align 4, !tbaa !25
  %mul4 = mul nsw i32 %mul3, %19
  %20 = load i32, i32* %n_cycle, align 4, !tbaa !25
  %div = sdiv i32 %mul4, %20
  store i32 %div, i32* %ytop, align 4, !tbaa !25
  %21 = load i32, i32* %mod_pass, align 4, !tbaa !25
  %22 = load i32, i32* %spacing, align 4, !tbaa !25
  %div5 = sdiv i32 %21, %22
  store i32 %div5, i32* %x_pass, align 4, !tbaa !25
  %23 = load i32, i32* %mod_pass, align 4, !tbaa !25
  %24 = load i32, i32* %spacing, align 4, !tbaa !25
  %rem6 = srem i32 %23, %24
  store i32 %rem6, i32* %y_pass, align 4, !tbaa !25
  %25 = load i32, i32* %passes_per_scan, align 4, !tbaa !25
  %cmp = icmp eq i32 %25, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %26 = load i32, i32* %x_pass, align 4, !tbaa !25
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @rinkj_escp_ytop.four, i32 0, i64 %idxprom
  %27 = load i32, i32* %arrayidx, align 4, !tbaa !25
  store i32 %27, i32* %x_pass, align 4, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load i32, i32* %spacing, align 4, !tbaa !25
  switch i32 %28, label %sw.default [
    i32 4, label %sw.bb
    i32 6, label %sw.bb.9
    i32 8, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %if.end
  %29 = load i32, i32* %y_pass, align 4, !tbaa !25
  %idxprom7 = sext i32 %29 to i64
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* @rinkj_escp_ytop.four, i32 0, i64 %idxprom7
  %30 = load i32, i32* %arrayidx8, align 4, !tbaa !25
  store i32 %30, i32* %y_modulo, align 4, !tbaa !25
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  %31 = load i32, i32* %y_pass, align 4, !tbaa !25
  %idxprom10 = sext i32 %31 to i64
  %arrayidx11 = getelementptr inbounds [6 x i32], [6 x i32]* @rinkj_escp_ytop.six, i32 0, i64 %idxprom10
  %32 = load i32, i32* %arrayidx11, align 4, !tbaa !25
  store i32 %32, i32* %y_modulo, align 4, !tbaa !25
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  %33 = load i32, i32* %y_pass, align 4, !tbaa !25
  %mul13 = mul nsw i32 %33, 3
  store i32 %mul13, i32* %y_modulo, align 4, !tbaa !25
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %34 = load i32, i32* %y_pass, align 4, !tbaa !25
  store i32 %34, i32* %y_modulo, align 4, !tbaa !25
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.12, %sw.bb.9, %sw.bb
  %35 = load i32, i32* %spacing, align 4, !tbaa !25
  %36 = load i32, i32* %y_modulo, align 4, !tbaa !25
  %add = add nsw i32 %35, %36
  %37 = load i32, i32* %ytop, align 4, !tbaa !25
  %38 = load i32, i32* %spacing, align 4, !tbaa !25
  %rem14 = srem i32 %37, %38
  %sub = sub nsw i32 %add, %rem14
  %39 = load i32, i32* %spacing, align 4, !tbaa !25
  %rem15 = srem i32 %sub, %39
  %40 = load i32, i32* %ytop, align 4, !tbaa !25
  %add16 = add nsw i32 %40, %rem15
  store i32 %add16, i32* %ytop, align 4, !tbaa !25
  %41 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %42 = load i32, i32* %n_cycle, align 4, !tbaa !25
  %div17 = sdiv i32 %41, %42
  %43 = load i32, i32* %spacing, align 4, !tbaa !25
  %mul18 = mul nsw i32 %div17, %43
  %44 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %n_pins19 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %44, i32 0, i32 16
  %45 = load i32, i32* %n_pins19, align 4, !tbaa !36
  %mul20 = mul nsw i32 %mul18, %45
  %46 = load i32, i32* %ytop, align 4, !tbaa !25
  %add21 = add nsw i32 %46, %mul20
  store i32 %add21, i32* %ytop, align 4, !tbaa !25
  %47 = load i32, i32* %spacing, align 4, !tbaa !25
  %cmp22 = icmp eq i32 %47, 4
  br i1 %cmp22, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %sw.epilog
  %48 = load i32, i32* %passes_per_scan, align 4, !tbaa !25
  %cmp23 = icmp eq i32 %48, 4
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.31

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %49 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %n_pins25 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %49, i32 0, i32 16
  %50 = load i32, i32* %n_pins25, align 4, !tbaa !36
  %cmp26 = icmp eq i32 %50, 96
  br i1 %cmp26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %land.lhs.true.24
  %51 = load i32, i32* %mod_pass, align 4, !tbaa !25
  %and = and i32 %51, 15
  %idxprom28 = sext i32 %and to i64
  %arrayidx29 = getelementptr inbounds [16 x i32], [16 x i32]* @rinkj_escp_ytop.sixteen, i32 0, i64 %idxprom28
  %52 = load i32, i32* %arrayidx29, align 4, !tbaa !25
  store i32 %52, i32* %x_pass, align 4, !tbaa !25
  %53 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %mul30 = mul nsw i32 %53, 23
  store i32 %mul30, i32* %ytop, align 4, !tbaa !25
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %land.lhs.true.24, %land.lhs.true, %sw.epilog
  %54 = load i32*, i32** %p_x_pass.addr, align 8, !tbaa !1
  %tobool = icmp ne i32* %54, null
  br i1 %tobool, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.31
  %55 = load i32, i32* %x_pass, align 4, !tbaa !25
  %56 = load i32*, i32** %p_x_pass.addr, align 8, !tbaa !1
  store i32 %55, i32* %56, align 4, !tbaa !25
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.31
  %57 = load i32, i32* %ytop, align 4, !tbaa !25
  %58 = bitcast i32* %y_modulo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %mod_pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %n_cycle to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %spacing to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %passes_per_scan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %y_pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %x_pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %ytop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_escp_flush(%struct._RinkjEscp* %z) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca %struct._RinkjEscp*, align 8
  %xsb = alloca i32, align 4
  %xsb_out = alloca i32, align 4
  %xs_out = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ytop = alloca i32, align 4
  %ysc = alloca i32, align 4
  %bufy = alloca i32, align 4
  %thisbuf = alloca i8*, align 8
  %compress_buf = alloca i8*, align 8
  %rle = alloca i32, align 4
  %x_pass = alloca i32, align 4
  %pass_mask = alloca i8, align 1
  %m = alloca i32, align 4
  %yrel = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %plane_off = alloca i32, align 4
  %x = alloca i32, align 4
  %line = alloca i8*, align 8
  %nbytes = alloca i32, align 4
  store %struct._RinkjEscp* %z, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %0 = bitcast i32* %xsb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %xsb_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %xs_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %ytop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %ysc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %bufy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i8** %thisbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %compress_buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8* null, i8** %compress_buf, align 8, !tbaa !1
  %11 = bitcast i32* %rle to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 1, i32* %rle, align 4, !tbaa !25
  %12 = bitcast i32* %x_pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  call void @llvm.lifetime.start(i64 1, i8* %pass_mask) #1
  %13 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %15 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %pass = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %15, i32 0, i32 24
  %16 = load i32, i32* %pass, align 4, !tbaa !35
  %call = call i32 @rinkj_escp_ytop(%struct._RinkjEscp* %14, i32 %16, i32* %x_pass) #7
  store i32 %call, i32* %ytop, align 4, !tbaa !25
  %17 = load i32, i32* %x_pass, align 4, !tbaa !25
  %shl = shl i32 1, %17
  %conv = trunc i32 %shl to i8
  store i8 %conv, i8* %pass_mask, align 1, !tbaa !24
  %18 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %18, i32 0, i32 2
  %19 = load i32, i32* %width, align 4, !tbaa !12
  %20 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %20, i32 0, i32 8
  %21 = load i32, i32* %bps, align 4, !tbaa !15
  %mul = mul nsw i32 %19, %21
  %add = add nsw i32 %mul, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %xsb, align 4, !tbaa !25
  %22 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %22, i32 0, i32 2
  %23 = load i32, i32* %width1, align 4, !tbaa !12
  %24 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %passes_per_scan = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %24, i32 0, i32 14
  %25 = load i32, i32* %passes_per_scan, align 4, !tbaa !47
  %add2 = add nsw i32 %23, %25
  %sub = sub nsw i32 %add2, 1
  %26 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %passes_per_scan3 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %26, i32 0, i32 14
  %27 = load i32, i32* %passes_per_scan3, align 4, !tbaa !47
  %div = sdiv i32 %sub, %27
  store i32 %div, i32* %xs_out, align 4, !tbaa !25
  %28 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %width4 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %28, i32 0, i32 2
  %29 = load i32, i32* %width4, align 4, !tbaa !12
  %30 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %head_bps = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %30, i32 0, i32 11
  %31 = load i32, i32* %head_bps, align 4, !tbaa !46
  %mul5 = mul nsw i32 %29, %31
  %add6 = add nsw i32 %mul5, 7
  %shr7 = ashr i32 %add6, 3
  %32 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %passes_per_scan8 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %32, i32 0, i32 14
  %33 = load i32, i32* %passes_per_scan8, align 4, !tbaa !47
  %add9 = add nsw i32 %shr7, %33
  %sub10 = sub nsw i32 %add9, 1
  %34 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %passes_per_scan11 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %34, i32 0, i32 14
  %35 = load i32, i32* %passes_per_scan11, align 4, !tbaa !47
  %div12 = sdiv i32 %sub10, %35
  store i32 %div12, i32* %xsb_out, align 4, !tbaa !25
  %36 = load i32, i32* %xsb_out, align 4, !tbaa !25
  %conv13 = sext i32 %36 to i64
  %call14 = call noalias i8* @malloc(i64 %conv13) #6
  store i8* %call14, i8** %thisbuf, align 8, !tbaa !1
  %37 = load i32, i32* %rle, align 4, !tbaa !25
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %38 = load i32, i32* %xsb_out, align 4, !tbaa !25
  %39 = load i32, i32* %xsb_out, align 4, !tbaa !25
  %add15 = add nsw i32 %39, 127
  %shr16 = ashr i32 %add15, 7
  %add17 = add nsw i32 %38, %shr16
  %conv18 = sext i32 %add17 to i64
  %call19 = call noalias i8* @malloc(i64 %conv18) #6
  store i8* %call19, i8** %compress_buf, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %40 = load i32, i32* %ytop, align 4, !tbaa !25
  store i32 %40, i32* %ysc, align 4, !tbaa !25
  %41 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %vertpos = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %41, i32 0, i32 25
  %42 = load i32, i32* %vertpos, align 4, !tbaa !48
  %cmp = icmp eq i32 %42, -1
  br i1 %cmp, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end
  %43 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %out = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %43, i32 0, i32 1
  %44 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out, align 8, !tbaa !13
  %45 = load i32, i32* %ysc, align 4, !tbaa !25
  %and = and i32 %45, 255
  %46 = load i32, i32* %ysc, align 4, !tbaa !25
  %shr22 = ashr i32 %46, 8
  %and23 = and i32 %shr22, 255
  %call24 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 0, i32 %and, i32 %and23) #7
  store i32 %call24, i32* %status, align 4, !tbaa !25
  br label %if.end.36

if.else:                                          ; preds = %if.end
  %47 = bitcast i32* %yrel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %ysc, align 4, !tbaa !25
  %49 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %vertpos25 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %49, i32 0, i32 25
  %50 = load i32, i32* %vertpos25, align 4, !tbaa !48
  %sub26 = sub nsw i32 %48, %50
  store i32 %sub26, i32* %yrel, align 4, !tbaa !25
  %51 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %out27 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %51, i32 0, i32 1
  %52 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out27, align 8, !tbaa !13
  %53 = load i32, i32* %yrel, align 4, !tbaa !25
  %and28 = and i32 %53, 255
  %54 = load i32, i32* %yrel, align 4, !tbaa !25
  %shr29 = ashr i32 %54, 8
  %and30 = and i32 %shr29, 255
  %55 = load i32, i32* %yrel, align 4, !tbaa !25
  %shr31 = ashr i32 %55, 16
  %and32 = and i32 %shr31, 255
  %56 = load i32, i32* %yrel, align 4, !tbaa !25
  %shr33 = ashr i32 %56, 24
  %and34 = and i32 %shr33, 255
  %call35 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 4, i32 0, i32 %and28, i32 %and30, i32 %and32, i32 %and34) #7
  store i32 %call35, i32* %status, align 4, !tbaa !25
  %57 = bitcast i32* %yrel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.21
  %58 = load i32, i32* %ysc, align 4, !tbaa !25
  %59 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %vertpos37 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %59, i32 0, i32 25
  store i32 %58, i32* %vertpos37, align 4, !tbaa !48
  %60 = load i32, i32* %status, align 4, !tbaa !25
  %cmp38 = icmp slt i32 %60, 0
  br i1 %cmp38, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.end.36
  %61 = load i8*, i8** %thisbuf, align 8, !tbaa !1
  call void @free(i8* %61) #6
  %62 = load i32, i32* %rle, align 4, !tbaa !25
  %tobool41 = icmp ne i32 %62, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.40
  %63 = load i8*, i8** %compress_buf, align 8, !tbaa !1
  call void @free(i8* %63) #6
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.then.40
  %64 = load i32, i32* %status, align 4, !tbaa !25
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.161

if.end.44:                                        ; preds = %if.end.36
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc.153, %if.end.44
  %65 = load i32, i32* %i, align 4, !tbaa !25
  %66 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %num_chan = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %66, i32 0, i32 7
  %67 = load i32, i32* %num_chan, align 4, !tbaa !14
  %cmp45 = icmp slt i32 %65, %67
  br i1 %cmp45, label %for.body, label %for.end.155

for.body:                                         ; preds = %for.cond
  %68 = bitcast i32* %plane_off to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom = sext i32 %69 to i64
  %70 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %plane_offsets = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %70, i32 0, i32 17
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %plane_offsets, i32 0, i64 %idxprom
  %71 = load i32, i32* %arrayidx, align 4, !tbaa !25
  store i32 %71, i32* %plane_off, align 4, !tbaa !25
  %72 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %72, i32 0, i32 4
  %73 = load i32, i32* %y, align 4, !tbaa !29
  %74 = load i32, i32* %ytop, align 4, !tbaa !25
  %sub47 = sub nsw i32 %73, %74
  %75 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %spacing = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %75, i32 0, i32 15
  %76 = load i32, i32* %spacing, align 4, !tbaa !37
  %add48 = add nsw i32 %sub47, %76
  %sub49 = sub nsw i32 %add48, 1
  %77 = load i32, i32* %plane_off, align 4, !tbaa !25
  %sub50 = sub nsw i32 %sub49, %77
  %78 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %spacing51 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %78, i32 0, i32 15
  %79 = load i32, i32* %spacing51, align 4, !tbaa !37
  %div52 = sdiv i32 %sub50, %79
  store i32 %div52, i32* %m, align 4, !tbaa !25
  %80 = load i32, i32* %m, align 4, !tbaa !25
  %81 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %n_pins = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %81, i32 0, i32 16
  %82 = load i32, i32* %n_pins, align 4, !tbaa !36
  %cmp53 = icmp sgt i32 %80, %82
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %for.body
  %83 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %n_pins56 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %83, i32 0, i32 16
  %84 = load i32, i32* %n_pins56, align 4, !tbaa !36
  store i32 %84, i32* %m, align 4, !tbaa !25
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %for.body
  %85 = load i32, i32* %m, align 4, !tbaa !25
  %cmp58 = icmp sle i32 %85, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.57
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end.61:                                        ; preds = %if.end.57
  %86 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  %87 = load i32, i32* %x_pass, align 4, !tbaa !25
  %and62 = and i32 %87, 3
  store i32 %and62, i32* %x, align 4, !tbaa !25
  %88 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %out63 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %88, i32 0, i32 1
  %89 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out63, align 8, !tbaa !13
  %90 = load i32, i32* %x, align 4, !tbaa !25
  %and64 = and i32 %90, 255
  %91 = load i32, i32* %x, align 4, !tbaa !25
  %shr65 = ashr i32 %91, 8
  %and66 = and i32 %shr65, 255
  %92 = load i32, i32* %x, align 4, !tbaa !25
  %shr67 = ashr i32 %92, 16
  %and68 = and i32 %shr67, 255
  %93 = load i32, i32* %x, align 4, !tbaa !25
  %shr69 = ashr i32 %93, 24
  %and70 = and i32 %shr69, 255
  %call71 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 %and64, i32 %and66, i32 %and68, i32 %and70) #7
  store i32 %call71, i32* %status, align 4, !tbaa !25
  %94 = load i32, i32* %status, align 4, !tbaa !25
  %cmp72 = icmp slt i32 %94, 0
  br i1 %cmp72, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %if.end.61
  %95 = load i8*, i8** %thisbuf, align 8, !tbaa !1
  call void @free(i8* %95) #6
  %96 = load i32, i32* %rle, align 4, !tbaa !25
  %tobool75 = icmp ne i32 %96, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.74
  %97 = load i8*, i8** %compress_buf, align 8, !tbaa !1
  call void @free(i8* %97) #6
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.then.74
  %98 = load i32, i32* %status, align 4, !tbaa !25
  store i32 %98, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %if.end.61
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.78, %if.end.77
  %99 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.150 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %100 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %out79 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %100, i32 0, i32 1
  %101 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out79, align 8, !tbaa !13
  %102 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom80 = sext i32 %102 to i64
  %arrayidx81 = getelementptr inbounds [7 x i32], [7 x i32]* @rinkj_escp_flush.color, i32 0, i64 %idxprom80
  %103 = load i32, i32* %arrayidx81, align 4, !tbaa !25
  %104 = load i32, i32* %rle, align 4, !tbaa !25
  %105 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %head_bps82 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %105, i32 0, i32 11
  %106 = load i32, i32* %head_bps82, align 4, !tbaa !46
  %107 = load i32, i32* %xsb_out, align 4, !tbaa !25
  %and83 = and i32 %107, 255
  %108 = load i32, i32* %xsb_out, align 4, !tbaa !25
  %shr84 = ashr i32 %108, 8
  %and85 = and i32 %shr84, 255
  %109 = load i32, i32* %m, align 4, !tbaa !25
  %and86 = and i32 %109, 255
  %110 = load i32, i32* %m, align 4, !tbaa !25
  %shr87 = ashr i32 %110, 8
  %call88 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 %103, i32 %104, i32 %106, i32 %and83, i32 %and85, i32 %and86, i32 %shr87) #7
  store i32 %call88, i32* %status, align 4, !tbaa !25
  %111 = load i32, i32* %status, align 4, !tbaa !25
  %cmp89 = icmp slt i32 %111, 0
  br i1 %cmp89, label %if.then.91, label %if.end.95

if.then.91:                                       ; preds = %cleanup.cont
  %112 = load i8*, i8** %thisbuf, align 8, !tbaa !1
  call void @free(i8* %112) #6
  %113 = load i32, i32* %rle, align 4, !tbaa !25
  %tobool92 = icmp ne i32 %113, 0
  br i1 %tobool92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.then.91
  %114 = load i8*, i8** %compress_buf, align 8, !tbaa !1
  call void @free(i8* %114) #6
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.then.91
  %115 = load i32, i32* %status, align 4, !tbaa !25
  store i32 %115, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end.95:                                        ; preds = %cleanup.cont
  store i32 0, i32* %j, align 4, !tbaa !25
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc, %if.end.95
  %116 = load i32, i32* %j, align 4, !tbaa !25
  %117 = load i32, i32* %m, align 4, !tbaa !25
  %cmp97 = icmp slt i32 %116, %117
  br i1 %cmp97, label %for.body.99, label %for.end

for.body.99:                                      ; preds = %for.cond.96
  %118 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %118) #1
  %119 = load i32, i32* %ytop, align 4, !tbaa !25
  %120 = load i32, i32* %j, align 4, !tbaa !25
  %121 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %spacing100 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %121, i32 0, i32 15
  %122 = load i32, i32* %spacing100, align 4, !tbaa !37
  %mul101 = mul nsw i32 %120, %122
  %add102 = add nsw i32 %119, %mul101
  %123 = load i32, i32* %plane_off, align 4, !tbaa !25
  %add103 = add nsw i32 %add102, %123
  %124 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %bufheight = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %124, i32 0, i32 21
  %125 = load i32, i32* %bufheight, align 4, !tbaa !30
  %rem = srem i32 %add103, %125
  store i32 %rem, i32* %bufy, align 4, !tbaa !25
  %126 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %126, i32 0, i32 19
  %127 = load i8*, i8** %buf, align 8, !tbaa !31
  %128 = load i32, i32* %bufy, align 4, !tbaa !25
  %129 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %rowstride = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %129, i32 0, i32 22
  %130 = load i32, i32* %rowstride, align 4, !tbaa !32
  %mul104 = mul nsw i32 %128, %130
  %idx.ext = sext i32 %mul104 to i64
  %add.ptr = getelementptr inbounds i8, i8* %127, i64 %idx.ext
  %131 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom105 = sext i32 %131 to i64
  %arrayidx106 = getelementptr inbounds [7 x i32], [7 x i32]* @rinkj_escp_flush.plane, i32 0, i64 %idxprom105
  %132 = load i32, i32* %arrayidx106, align 4, !tbaa !25
  %133 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %planestride = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %133, i32 0, i32 23
  %134 = load i32, i32* %planestride, align 4, !tbaa !33
  %mul107 = mul nsw i32 %132, %134
  %idx.ext108 = sext i32 %mul107 to i64
  %add.ptr109 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext108
  store i8* %add.ptr109, i8** %line, align 8, !tbaa !1
  %135 = load i32, i32* %bufy, align 4, !tbaa !25
  %136 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %num_chan110 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %136, i32 0, i32 7
  %137 = load i32, i32* %num_chan110, align 4, !tbaa !14
  %mul111 = mul nsw i32 %135, %137
  %138 = load i32, i32* %i, align 4, !tbaa !25
  %add112 = add nsw i32 %mul111, %138
  %idxprom113 = sext i32 %add112 to i64
  %139 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %buf_linevalid = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %139, i32 0, i32 20
  %140 = load i8*, i8** %buf_linevalid, align 8, !tbaa !34
  %arrayidx114 = getelementptr inbounds i8, i8* %140, i64 %idxprom113
  %141 = load i8, i8* %arrayidx114, align 1, !tbaa !24
  %conv115 = zext i8 %141 to i32
  %142 = load i8, i8* %pass_mask, align 1, !tbaa !24
  %conv116 = sext i8 %142 to i32
  %and117 = and i32 %conv115, %conv116
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %if.then.119, label %if.else.123

if.then.119:                                      ; preds = %for.body.99
  %143 = load i8*, i8** %thisbuf, align 8, !tbaa !1
  %144 = load i8*, i8** %line, align 8, !tbaa !1
  %145 = load i32, i32* %x_pass, align 4, !tbaa !25
  %146 = load i32, i32* %xsb, align 4, !tbaa !25
  %147 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %passes_per_scan120 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %147, i32 0, i32 14
  %148 = load i32, i32* %passes_per_scan120, align 4, !tbaa !47
  %149 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %bps121 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %149, i32 0, i32 8
  %150 = load i32, i32* %bps121, align 4, !tbaa !15
  %151 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %head_bps122 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %151, i32 0, i32 11
  %152 = load i32, i32* %head_bps122, align 4, !tbaa !46
  call void @rinkj_escp_shuffle(i8* %143, i8* %144, i32 %145, i32 %146, i32 %148, i32 %150, i32 %152) #7
  br label %if.end.126

if.else.123:                                      ; preds = %for.body.99
  %153 = load i8*, i8** %thisbuf, align 8, !tbaa !1
  %154 = load i32, i32* %xsb_out, align 4, !tbaa !25
  %conv124 = sext i32 %154 to i64
  %call125 = call i8* @memset(i8* %153, i32 0, i64 %conv124) #6
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.then.119
  %155 = load i8, i8* %pass_mask, align 1, !tbaa !24
  %conv127 = sext i8 %155 to i32
  %neg = xor i32 %conv127, -1
  %156 = load i32, i32* %bufy, align 4, !tbaa !25
  %157 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %num_chan128 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %157, i32 0, i32 7
  %158 = load i32, i32* %num_chan128, align 4, !tbaa !14
  %mul129 = mul nsw i32 %156, %158
  %159 = load i32, i32* %i, align 4, !tbaa !25
  %add130 = add nsw i32 %mul129, %159
  %idxprom131 = sext i32 %add130 to i64
  %160 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %buf_linevalid132 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %160, i32 0, i32 20
  %161 = load i8*, i8** %buf_linevalid132, align 8, !tbaa !34
  %arrayidx133 = getelementptr inbounds i8, i8* %161, i64 %idxprom131
  %162 = load i8, i8* %arrayidx133, align 1, !tbaa !24
  %conv134 = zext i8 %162 to i32
  %and135 = and i32 %conv134, %neg
  %conv136 = trunc i32 %and135 to i8
  store i8 %conv136, i8* %arrayidx133, align 1, !tbaa !24
  %163 = load i32, i32* %rle, align 4, !tbaa !25
  %tobool137 = icmp ne i32 %163, 0
  br i1 %tobool137, label %if.then.138, label %if.else.142

if.then.138:                                      ; preds = %if.end.126
  %164 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %164) #1
  %165 = load i8*, i8** %compress_buf, align 8, !tbaa !1
  %166 = load i8*, i8** %thisbuf, align 8, !tbaa !1
  %167 = load i32, i32* %xsb_out, align 4, !tbaa !25
  %call139 = call i32 @rinkj_escp_compress_rle(i8* %165, i8* %166, i32 %167) #7
  store i32 %call139, i32* %nbytes, align 4, !tbaa !25
  %168 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %out140 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %168, i32 0, i32 1
  %169 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out140, align 8, !tbaa !13
  %170 = load i8*, i8** %compress_buf, align 8, !tbaa !1
  %171 = load i32, i32* %nbytes, align 4, !tbaa !25
  %call141 = call i32 @rinkj_byte_stream_write(%struct._RinkjByteStream* %169, i8* %170, i32 %171) #7
  store i32 %call141, i32* %status, align 4, !tbaa !25
  %172 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  br label %if.end.145

if.else.142:                                      ; preds = %if.end.126
  %173 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %out143 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %173, i32 0, i32 1
  %174 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out143, align 8, !tbaa !13
  %175 = load i8*, i8** %thisbuf, align 8, !tbaa !1
  %176 = load i32, i32* %xsb_out, align 4, !tbaa !25
  %call144 = call i32 @rinkj_byte_stream_write(%struct._RinkjByteStream* %174, i8* %175, i32 %176) #7
  store i32 %call144, i32* %status, align 4, !tbaa !25
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %if.then.138
  %177 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.145
  %178 = load i32, i32* %j, align 4, !tbaa !25
  %inc = add nsw i32 %178, 1
  store i32 %inc, i32* %j, align 4, !tbaa !25
  br label %for.cond.96

for.end:                                          ; preds = %for.cond.96
  %179 = load i32, i32* %status, align 4, !tbaa !25
  %cmp146 = icmp slt i32 %179, 0
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %for.end
  %180 = load i32, i32* %status, align 4, !tbaa !25
  store i32 %180, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end.149:                                       ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.150

cleanup.150:                                      ; preds = %if.end.149, %if.then.148, %if.end.94, %cleanup, %if.then.60
  %181 = bitcast i32* %plane_off to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %cleanup.dest.151 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.151, label %cleanup.161 [
    i32 0, label %cleanup.cont.152
    i32 4, label %for.inc.153
  ]

cleanup.cont.152:                                 ; preds = %cleanup.150
  br label %for.inc.153

for.inc.153:                                      ; preds = %cleanup.cont.152, %cleanup.150
  %182 = load i32, i32* %i, align 4, !tbaa !25
  %inc154 = add nsw i32 %182, 1
  store i32 %inc154, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end.155:                                      ; preds = %for.cond
  %183 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %pass156 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %183, i32 0, i32 24
  %184 = load i32, i32* %pass156, align 4, !tbaa !35
  %inc157 = add nsw i32 %184, 1
  store i32 %inc157, i32* %pass156, align 4, !tbaa !35
  %185 = load i32, i32* %rle, align 4, !tbaa !25
  %tobool158 = icmp ne i32 %185, 0
  br i1 %tobool158, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %for.end.155
  %186 = load i8*, i8** %compress_buf, align 8, !tbaa !1
  call void @free(i8* %186) #6
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %for.end.155
  %187 = load i8*, i8** %thisbuf, align 8, !tbaa !1
  call void @free(i8* %187) #6
  %188 = load i32, i32* %status, align 4, !tbaa !25
  store i32 %188, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.161

cleanup.161:                                      ; preds = %if.end.160, %cleanup.150, %if.end.43
  %189 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  call void @llvm.lifetime.end(i64 1, i8* %pass_mask) #1
  %190 = bitcast i32* %x_pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %rle to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i8** %compress_buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast i8** %thisbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast i32* %bufy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %ysc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %ytop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %xs_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %xsb_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %xsb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = load i32, i32* %retval
  ret i32 %203
}

declare i32 @rinkj_byte_stream_printf(%struct._RinkjByteStream*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @rinkj_escp_shuffle(i8* %dst, i8* %src, i32 %pass, i32 %n_bytes, i32 %passes_per_scan, i32 %bps, i32 %head_bps) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %pass.addr = alloca i32, align 4
  %n_bytes.addr = alloca i32, align 4
  %passes_per_scan.addr = alloca i32, align 4
  %bps.addr = alloca i32, align 4
  %head_bps.addr = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %pass, i32* %pass.addr, align 4, !tbaa !25
  store i32 %n_bytes, i32* %n_bytes.addr, align 4, !tbaa !25
  store i32 %passes_per_scan, i32* %passes_per_scan.addr, align 4, !tbaa !25
  store i32 %bps, i32* %bps.addr, align 4, !tbaa !25
  store i32 %head_bps, i32* %head_bps.addr, align 4, !tbaa !25
  %0 = load i32, i32* %bps.addr, align 4, !tbaa !25
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %head_bps.addr, align 4, !tbaa !25
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then, label %if.else.13

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %passes_per_scan.addr, align 4, !tbaa !25
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %3 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %5 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %conv = sext i32 %5 to i64
  %call = call i8* @memcpy(i8* %3, i8* %4, i64 %conv) #6
  br label %if.end.12

if.else:                                          ; preds = %if.then
  %6 = load i32, i32* %passes_per_scan.addr, align 4, !tbaa !25
  %cmp4 = icmp eq i32 %6, 2
  br i1 %cmp4, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  %7 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %9 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %10 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  call void @rinkj_escp_shuffle_2pass_2bit(i8* %7, i8* %8, i32 %9, i32 %10) #7
  br label %if.end.11

if.else.7:                                        ; preds = %if.else
  %11 = load i32, i32* %passes_per_scan.addr, align 4, !tbaa !25
  %cmp8 = icmp eq i32 %11, 4
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else.7
  %12 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %14 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %15 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  call void @rinkj_escp_shuffle_4pass_2bit(i8* %12, i8* %13, i32 %14, i32 %15) #7
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.3
  br label %if.end.58

if.else.13:                                       ; preds = %land.lhs.true, %entry
  %16 = load i32, i32* %bps.addr, align 4, !tbaa !25
  %cmp14 = icmp eq i32 %16, 1
  br i1 %cmp14, label %land.lhs.true.16, label %if.else.33

land.lhs.true.16:                                 ; preds = %if.else.13
  %17 = load i32, i32* %head_bps.addr, align 4, !tbaa !25
  %cmp17 = icmp eq i32 %17, 2
  br i1 %cmp17, label %if.then.19, label %if.else.33

if.then.19:                                       ; preds = %land.lhs.true.16
  %18 = load i32, i32* %passes_per_scan.addr, align 4, !tbaa !25
  %cmp20 = icmp eq i32 %18, 1
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  %19 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %21 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  call void @rinkj_escp_1pass_dblx(i8* %19, i8* %20, i32 %21) #7
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.19
  %22 = load i32, i32* %passes_per_scan.addr, align 4, !tbaa !25
  %cmp24 = icmp eq i32 %22, 2
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.end.23
  %23 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %25 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %26 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  call void @rinkj_escp_select_dblx(i8* %23, i8* %24, i32 %25, i32 %26) #7
  br label %if.end.32

if.else.27:                                       ; preds = %if.end.23
  %27 = load i32, i32* %passes_per_scan.addr, align 4, !tbaa !25
  %cmp28 = icmp eq i32 %27, 4
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.else.27
  %28 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %30 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %31 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  call void @rinkj_escp_sel_shuffle_dblx(i8* %28, i8* %29, i32 %30, i32 %31) #7
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.else.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.26
  br label %if.end.57

if.else.33:                                       ; preds = %land.lhs.true.16, %if.else.13
  %32 = load i32, i32* %bps.addr, align 4, !tbaa !25
  %cmp34 = icmp eq i32 %32, 1
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.56

land.lhs.true.36:                                 ; preds = %if.else.33
  %33 = load i32, i32* %head_bps.addr, align 4, !tbaa !25
  %cmp37 = icmp eq i32 %33, 1
  br i1 %cmp37, label %if.then.39, label %if.end.56

if.then.39:                                       ; preds = %land.lhs.true.36
  %34 = load i32, i32* %passes_per_scan.addr, align 4, !tbaa !25
  %cmp40 = icmp eq i32 %34, 1
  br i1 %cmp40, label %if.then.42, label %if.else.45

if.then.42:                                       ; preds = %if.then.39
  %35 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %36 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %37 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %conv43 = sext i32 %37 to i64
  %call44 = call i8* @memcpy(i8* %35, i8* %36, i64 %conv43) #6
  br label %if.end.55

if.else.45:                                       ; preds = %if.then.39
  %38 = load i32, i32* %passes_per_scan.addr, align 4, !tbaa !25
  %cmp46 = icmp eq i32 %38, 2
  br i1 %cmp46, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.else.45
  %39 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %40 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %41 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %42 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  call void @rinkj_escp_shuffle_dblx(i8* %39, i8* %40, i32 %41, i32 %42) #7
  br label %if.end.54

if.else.49:                                       ; preds = %if.else.45
  %43 = load i32, i32* %passes_per_scan.addr, align 4, !tbaa !25
  %cmp50 = icmp eq i32 %43, 4
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.else.49
  %44 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %45 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %46 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %47 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  call void @rinkj_escp_shuffle_4pass_1bit(i8* %44, i8* %45, i32 %46, i32 %47) #7
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.else.49
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.48
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.42
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true.36, %if.else.33
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.32
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.12
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_escp_compress_rle(i8* %dst, i8* %src, i32 %n) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  %run = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !25
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %run to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %j, align 4, !tbaa !25
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc.71, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !25
  %5 = load i32, i32* %n.addr, align 4, !tbaa !25
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.73

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv = sext i8 %8 to i32
  store i32 %conv, i32* %b, align 4, !tbaa !25
  store i32 1, i32* %run, align 4, !tbaa !25
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %run, align 4, !tbaa !25
  %cmp2 = icmp slt i32 %9, 129
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1
  %10 = load i32, i32* %i, align 4, !tbaa !25
  %11 = load i32, i32* %run, align 4, !tbaa !25
  %add = add nsw i32 %10, %11
  %12 = load i32, i32* %n.addr, align 4, !tbaa !25
  %cmp4 = icmp slt i32 %add, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %13 = phi i1 [ false, %for.cond.1 ], [ %cmp4, %land.rhs ]
  br i1 %13, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %land.end
  %14 = load i32, i32* %b, align 4, !tbaa !25
  %15 = load i32, i32* %i, align 4, !tbaa !25
  %16 = load i32, i32* %run, align 4, !tbaa !25
  %add7 = add nsw i32 %15, %16
  %idxprom8 = sext i32 %add7 to i64
  %17 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %17, i64 %idxprom8
  %18 = load i8, i8* %arrayidx9, align 1, !tbaa !24
  %conv10 = sext i8 %18 to i32
  %cmp11 = icmp ne i32 %14, %conv10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  br label %for.end

if.end:                                           ; preds = %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %run, align 4, !tbaa !25
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %run, align 4, !tbaa !25
  br label %for.cond.1

for.end:                                          ; preds = %if.then, %land.end
  %20 = load i32, i32* %run, align 4, !tbaa !25
  %cmp13 = icmp sgt i32 %20, 2
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.end
  %21 = load i32, i32* %run, align 4, !tbaa !25
  %sub = sub nsw i32 257, %21
  %conv16 = trunc i32 %sub to i8
  %22 = load i32, i32* %j, align 4, !tbaa !25
  %inc17 = add nsw i32 %22, 1
  store i32 %inc17, i32* %j, align 4, !tbaa !25
  %idxprom18 = sext i32 %22 to i64
  %23 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %23, i64 %idxprom18
  store i8 %conv16, i8* %arrayidx19, align 1, !tbaa !24
  %24 = load i32, i32* %b, align 4, !tbaa !25
  %conv20 = trunc i32 %24 to i8
  %25 = load i32, i32* %j, align 4, !tbaa !25
  %inc21 = add nsw i32 %25, 1
  store i32 %inc21, i32* %j, align 4, !tbaa !25
  %idxprom22 = sext i32 %25 to i64
  %26 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %26, i64 %idxprom22
  store i8 %conv20, i8* %arrayidx23, align 1, !tbaa !24
  br label %if.end.70

if.else:                                          ; preds = %for.end
  store i32 1, i32* %run, align 4, !tbaa !25
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.58, %if.else
  %27 = load i32, i32* %run, align 4, !tbaa !25
  %cmp25 = icmp slt i32 %27, 128
  br i1 %cmp25, label %land.rhs.27, label %land.end.31

land.rhs.27:                                      ; preds = %for.cond.24
  %28 = load i32, i32* %i, align 4, !tbaa !25
  %29 = load i32, i32* %run, align 4, !tbaa !25
  %add28 = add nsw i32 %28, %29
  %30 = load i32, i32* %n.addr, align 4, !tbaa !25
  %cmp29 = icmp slt i32 %add28, %30
  br label %land.end.31

land.end.31:                                      ; preds = %land.rhs.27, %for.cond.24
  %31 = phi i1 [ false, %for.cond.24 ], [ %cmp29, %land.rhs.27 ]
  br i1 %31, label %for.body.32, label %for.end.60

for.body.32:                                      ; preds = %land.end.31
  %32 = load i32, i32* %i, align 4, !tbaa !25
  %33 = load i32, i32* %run, align 4, !tbaa !25
  %add33 = add nsw i32 %32, %33
  %idxprom34 = sext i32 %add33 to i64
  %34 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %34, i64 %idxprom34
  %35 = load i8, i8* %arrayidx35, align 1, !tbaa !24
  %conv36 = sext i8 %35 to i32
  store i32 %conv36, i32* %b, align 4, !tbaa !25
  %36 = load i32, i32* %i, align 4, !tbaa !25
  %37 = load i32, i32* %run, align 4, !tbaa !25
  %add37 = add nsw i32 %36, %37
  %add38 = add nsw i32 %add37, 2
  %38 = load i32, i32* %n.addr, align 4, !tbaa !25
  %cmp39 = icmp slt i32 %add38, %38
  br i1 %cmp39, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %for.body.32
  %39 = load i32, i32* %b, align 4, !tbaa !25
  %40 = load i32, i32* %i, align 4, !tbaa !25
  %41 = load i32, i32* %run, align 4, !tbaa !25
  %add41 = add nsw i32 %40, %41
  %add42 = add nsw i32 %add41, 1
  %idxprom43 = sext i32 %add42 to i64
  %42 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %42, i64 %idxprom43
  %43 = load i8, i8* %arrayidx44, align 1, !tbaa !24
  %conv45 = sext i8 %43 to i32
  %cmp46 = icmp eq i32 %39, %conv45
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.57

land.lhs.true.48:                                 ; preds = %land.lhs.true
  %44 = load i32, i32* %b, align 4, !tbaa !25
  %45 = load i32, i32* %i, align 4, !tbaa !25
  %46 = load i32, i32* %run, align 4, !tbaa !25
  %add49 = add nsw i32 %45, %46
  %add50 = add nsw i32 %add49, 2
  %idxprom51 = sext i32 %add50 to i64
  %47 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %47, i64 %idxprom51
  %48 = load i8, i8* %arrayidx52, align 1, !tbaa !24
  %conv53 = sext i8 %48 to i32
  %cmp54 = icmp eq i32 %44, %conv53
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true.48
  br label %for.end.60

if.end.57:                                        ; preds = %land.lhs.true.48, %land.lhs.true, %for.body.32
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %49 = load i32, i32* %run, align 4, !tbaa !25
  %inc59 = add nsw i32 %49, 1
  store i32 %inc59, i32* %run, align 4, !tbaa !25
  br label %for.cond.24

for.end.60:                                       ; preds = %if.then.56, %land.end.31
  %50 = load i32, i32* %run, align 4, !tbaa !25
  %sub61 = sub nsw i32 %50, 1
  %conv62 = trunc i32 %sub61 to i8
  %51 = load i32, i32* %j, align 4, !tbaa !25
  %inc63 = add nsw i32 %51, 1
  store i32 %inc63, i32* %j, align 4, !tbaa !25
  %idxprom64 = sext i32 %51 to i64
  %52 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i8, i8* %52, i64 %idxprom64
  store i8 %conv62, i8* %arrayidx65, align 1, !tbaa !24
  %53 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %54 = load i32, i32* %j, align 4, !tbaa !25
  %idx.ext = sext i32 %54 to i64
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %idx.ext
  %55 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %56 = load i32, i32* %i, align 4, !tbaa !25
  %idx.ext66 = sext i32 %56 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %55, i64 %idx.ext66
  %57 = load i32, i32* %run, align 4, !tbaa !25
  %conv68 = sext i32 %57 to i64
  %call = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr67, i64 %conv68) #6
  %58 = load i32, i32* %run, align 4, !tbaa !25
  %59 = load i32, i32* %j, align 4, !tbaa !25
  %add69 = add nsw i32 %59, %58
  store i32 %add69, i32* %j, align 4, !tbaa !25
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.60, %if.then.15
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %60 = load i32, i32* %run, align 4, !tbaa !25
  %61 = load i32, i32* %i, align 4, !tbaa !25
  %add72 = add nsw i32 %61, %60
  store i32 %add72, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end.73:                                       ; preds = %for.cond
  %62 = load i32, i32* %j, align 4, !tbaa !25
  %63 = bitcast i32* %run to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  ret i32 %62
}

declare i32 @rinkj_byte_stream_write(%struct._RinkjByteStream*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @rinkj_escp_shuffle_2pass_2bit(i8* %dst, i8* %src, i32 %pass, i32 %n_bytes) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %pass.addr = alloca i32, align 4
  %n_bytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n_dst = alloca i32, align 4
  %s0 = alloca i8, align 1
  %s1 = alloca i8, align 1
  %shift = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %pass, i32* %pass.addr, align 4, !tbaa !25
  store i32 %n_bytes, i32* %n_bytes.addr, align 4, !tbaa !25
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %n_dst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  call void @llvm.lifetime.start(i64 1, i8* %s0) #1
  call void @llvm.lifetime.start(i64 1, i8* %s1) #1
  %2 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %shl = shl i32 %3, 1
  store i32 %shl, i32* %shift, align 4, !tbaa !25
  %4 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %shr = ashr i32 %4, 1
  store i32 %shr, i32* %n_dst, align 4, !tbaa !25
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !25
  %6 = load i32, i32* %n_dst, align 4, !tbaa !25
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !25
  %mul = mul nsw i32 %7, 2
  %idxprom = sext i32 %mul to i64
  %8 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv = sext i8 %9 to i32
  %10 = load i32, i32* %shift, align 4, !tbaa !25
  %shl1 = shl i32 %conv, %10
  %conv2 = trunc i32 %shl1 to i8
  store i8 %conv2, i8* %s0, align 1, !tbaa !24
  %11 = load i32, i32* %i, align 4, !tbaa !25
  %mul3 = mul nsw i32 %11, 2
  %add = add nsw i32 %mul3, 1
  %idxprom4 = sext i32 %add to i64
  %12 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 %idxprom4
  %13 = load i8, i8* %arrayidx5, align 1, !tbaa !24
  %conv6 = sext i8 %13 to i32
  %14 = load i32, i32* %shift, align 4, !tbaa !25
  %shl7 = shl i32 %conv6, %14
  %conv8 = trunc i32 %shl7 to i8
  store i8 %conv8, i8* %s1, align 1, !tbaa !24
  %15 = load i8, i8* %s0, align 1, !tbaa !24
  %conv9 = zext i8 %15 to i32
  %and = and i32 %conv9, 192
  %16 = load i8, i8* %s0, align 1, !tbaa !24
  %conv10 = zext i8 %16 to i32
  %and11 = and i32 %conv10, 12
  %shl12 = shl i32 %and11, 2
  %or = or i32 %and, %shl12
  %17 = load i8, i8* %s1, align 1, !tbaa !24
  %conv13 = zext i8 %17 to i32
  %and14 = and i32 %conv13, 192
  %shr15 = ashr i32 %and14, 4
  %or16 = or i32 %or, %shr15
  %18 = load i8, i8* %s1, align 1, !tbaa !24
  %conv17 = zext i8 %18 to i32
  %and18 = and i32 %conv17, 12
  %shr19 = ashr i32 %and18, 2
  %or20 = or i32 %or16, %shr19
  %conv21 = trunc i32 %or20 to i8
  %19 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom22 = sext i32 %19 to i64
  %20 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %20, i64 %idxprom22
  store i8 %conv21, i8* %arrayidx23, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %and24 = and i32 %22, 1
  %tobool = icmp ne i32 %and24, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %23 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %sub = sub nsw i32 %23, 1
  %idxprom25 = sext i32 %sub to i64
  %24 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %24, i64 %idxprom25
  %25 = load i8, i8* %arrayidx26, align 1, !tbaa !24
  %conv27 = sext i8 %25 to i32
  %26 = load i32, i32* %shift, align 4, !tbaa !25
  %shl28 = shl i32 %conv27, %26
  %conv29 = trunc i32 %shl28 to i8
  store i8 %conv29, i8* %s0, align 1, !tbaa !24
  %27 = load i8, i8* %s0, align 1, !tbaa !24
  %conv30 = zext i8 %27 to i32
  %and31 = and i32 %conv30, 192
  %28 = load i8, i8* %s0, align 1, !tbaa !24
  %conv32 = zext i8 %28 to i32
  %and33 = and i32 %conv32, 12
  %shl34 = shl i32 %and33, 2
  %or35 = or i32 %and31, %shl34
  %conv36 = trunc i32 %or35 to i8
  %29 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom37 = sext i32 %29 to i64
  %30 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %30, i64 %idxprom37
  store i8 %conv36, i8* %arrayidx38, align 1, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %31 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  call void @llvm.lifetime.end(i64 1, i8* %s1) #1
  call void @llvm.lifetime.end(i64 1, i8* %s0) #1
  %32 = bitcast i32* %n_dst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rinkj_escp_shuffle_4pass_2bit(i8* %dst, i8* %src, i32 %pass, i32 %n_bytes) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %pass.addr = alloca i32, align 4
  %n_bytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n_dst = alloca i32, align 4
  %s0 = alloca i8, align 1
  %s1 = alloca i8, align 1
  %s2 = alloca i8, align 1
  %s3 = alloca i8, align 1
  %shift = alloca i32, align 4
  %d = alloca i8, align 1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %pass, i32* %pass.addr, align 4, !tbaa !25
  store i32 %n_bytes, i32* %n_bytes.addr, align 4, !tbaa !25
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %n_dst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  call void @llvm.lifetime.start(i64 1, i8* %s0) #1
  call void @llvm.lifetime.start(i64 1, i8* %s1) #1
  call void @llvm.lifetime.start(i64 1, i8* %s2) #1
  call void @llvm.lifetime.start(i64 1, i8* %s3) #1
  %2 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %shl = shl i32 %3, 1
  store i32 %shl, i32* %shift, align 4, !tbaa !25
  %4 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %shr = ashr i32 %4, 2
  store i32 %shr, i32* %n_dst, align 4, !tbaa !25
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !25
  %6 = load i32, i32* %n_dst, align 4, !tbaa !25
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !25
  %mul = mul nsw i32 %7, 4
  %idxprom = sext i32 %mul to i64
  %8 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv = sext i8 %9 to i32
  %10 = load i32, i32* %shift, align 4, !tbaa !25
  %shl1 = shl i32 %conv, %10
  %conv2 = trunc i32 %shl1 to i8
  store i8 %conv2, i8* %s0, align 1, !tbaa !24
  %11 = load i32, i32* %i, align 4, !tbaa !25
  %mul3 = mul nsw i32 %11, 4
  %add = add nsw i32 %mul3, 1
  %idxprom4 = sext i32 %add to i64
  %12 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 %idxprom4
  %13 = load i8, i8* %arrayidx5, align 1, !tbaa !24
  %conv6 = sext i8 %13 to i32
  %14 = load i32, i32* %shift, align 4, !tbaa !25
  %shl7 = shl i32 %conv6, %14
  %conv8 = trunc i32 %shl7 to i8
  store i8 %conv8, i8* %s1, align 1, !tbaa !24
  %15 = load i32, i32* %i, align 4, !tbaa !25
  %mul9 = mul nsw i32 %15, 4
  %add10 = add nsw i32 %mul9, 2
  %idxprom11 = sext i32 %add10 to i64
  %16 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %16, i64 %idxprom11
  %17 = load i8, i8* %arrayidx12, align 1, !tbaa !24
  %conv13 = sext i8 %17 to i32
  %18 = load i32, i32* %shift, align 4, !tbaa !25
  %shl14 = shl i32 %conv13, %18
  %conv15 = trunc i32 %shl14 to i8
  store i8 %conv15, i8* %s2, align 1, !tbaa !24
  %19 = load i32, i32* %i, align 4, !tbaa !25
  %mul16 = mul nsw i32 %19, 4
  %add17 = add nsw i32 %mul16, 3
  %idxprom18 = sext i32 %add17 to i64
  %20 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %20, i64 %idxprom18
  %21 = load i8, i8* %arrayidx19, align 1, !tbaa !24
  %conv20 = sext i8 %21 to i32
  %22 = load i32, i32* %shift, align 4, !tbaa !25
  %shl21 = shl i32 %conv20, %22
  %conv22 = trunc i32 %shl21 to i8
  store i8 %conv22, i8* %s3, align 1, !tbaa !24
  %23 = load i8, i8* %s0, align 1, !tbaa !24
  %conv23 = zext i8 %23 to i32
  %and = and i32 %conv23, 192
  %24 = load i8, i8* %s1, align 1, !tbaa !24
  %conv24 = zext i8 %24 to i32
  %and25 = and i32 %conv24, 192
  %shr26 = ashr i32 %and25, 2
  %or = or i32 %and, %shr26
  %25 = load i8, i8* %s2, align 1, !tbaa !24
  %conv27 = zext i8 %25 to i32
  %and28 = and i32 %conv27, 192
  %shr29 = ashr i32 %and28, 4
  %or30 = or i32 %or, %shr29
  %26 = load i8, i8* %s3, align 1, !tbaa !24
  %conv31 = zext i8 %26 to i32
  %and32 = and i32 %conv31, 192
  %shr33 = ashr i32 %and32, 6
  %or34 = or i32 %or30, %shr33
  %conv35 = trunc i32 %or34 to i8
  %27 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom36 = sext i32 %27 to i64
  %28 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %28, i64 %idxprom36
  store i8 %conv35, i8* %arrayidx37, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %and38 = and i32 %30, 3
  %tobool = icmp ne i32 %and38, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start(i64 1, i8* %d) #1
  store i8 0, i8* %d, align 1, !tbaa !24
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.56, %if.then
  %31 = load i32, i32* %i, align 4, !tbaa !25
  %32 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %and40 = and i32 %32, 3
  %cmp41 = icmp slt i32 %31, %and40
  br i1 %cmp41, label %for.body.43, label %for.end.58

for.body.43:                                      ; preds = %for.cond.39
  %33 = load i32, i32* %n_dst, align 4, !tbaa !25
  %mul44 = mul nsw i32 %33, 4
  %34 = load i32, i32* %i, align 4, !tbaa !25
  %add45 = add nsw i32 %mul44, %34
  %idxprom46 = sext i32 %add45 to i64
  %35 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %35, i64 %idxprom46
  %36 = load i8, i8* %arrayidx47, align 1, !tbaa !24
  %conv48 = sext i8 %36 to i32
  %37 = load i32, i32* %shift, align 4, !tbaa !25
  %shl49 = shl i32 %conv48, %37
  %and50 = and i32 %shl49, 192
  %38 = load i32, i32* %i, align 4, !tbaa !25
  %shl51 = shl i32 %38, 1
  %shr52 = ashr i32 %and50, %shl51
  %39 = load i8, i8* %d, align 1, !tbaa !24
  %conv53 = sext i8 %39 to i32
  %or54 = or i32 %conv53, %shr52
  %conv55 = trunc i32 %or54 to i8
  store i8 %conv55, i8* %d, align 1, !tbaa !24
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.43
  %40 = load i32, i32* %i, align 4, !tbaa !25
  %inc57 = add nsw i32 %40, 1
  store i32 %inc57, i32* %i, align 4, !tbaa !25
  br label %for.cond.39

for.end.58:                                       ; preds = %for.cond.39
  %41 = load i8, i8* %d, align 1, !tbaa !24
  %42 = load i32, i32* %n_dst, align 4, !tbaa !25
  %idxprom59 = sext i32 %42 to i64
  %43 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %43, i64 %idxprom59
  store i8 %41, i8* %arrayidx60, align 1, !tbaa !24
  call void @llvm.lifetime.end(i64 1, i8* %d) #1
  br label %if.end

if.end:                                           ; preds = %for.end.58, %for.end
  %44 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  call void @llvm.lifetime.end(i64 1, i8* %s3) #1
  call void @llvm.lifetime.end(i64 1, i8* %s2) #1
  call void @llvm.lifetime.end(i64 1, i8* %s1) #1
  call void @llvm.lifetime.end(i64 1, i8* %s0) #1
  %45 = bitcast i32* %n_dst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rinkj_escp_1pass_dblx(i8* %dst, i8* %src, i32 %n_bytes) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n_bytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i8, align 1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %n_bytes, i32* %n_bytes.addr, align 4, !tbaa !25
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !25
  %2 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %s) #1
  %3 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !24
  store i8 %5, i8* %s, align 1, !tbaa !24
  %6 = load i8, i8* %s, align 1, !tbaa !24
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 128
  %shr = ashr i32 %and, 1
  %7 = load i8, i8* %s, align 1, !tbaa !24
  %conv1 = zext i8 %7 to i32
  %and2 = and i32 %conv1, 64
  %shr3 = ashr i32 %and2, 2
  %or = or i32 %shr, %shr3
  %8 = load i8, i8* %s, align 1, !tbaa !24
  %conv4 = zext i8 %8 to i32
  %and5 = and i32 %conv4, 32
  %shr6 = ashr i32 %and5, 3
  %or7 = or i32 %or, %shr6
  %9 = load i8, i8* %s, align 1, !tbaa !24
  %conv8 = zext i8 %9 to i32
  %and9 = and i32 %conv8, 16
  %shr10 = ashr i32 %and9, 4
  %or11 = or i32 %or7, %shr10
  %mul = mul nsw i32 %or11, 3
  %conv12 = trunc i32 %mul to i8
  %10 = load i32, i32* %i, align 4, !tbaa !25
  %mul13 = mul nsw i32 %10, 2
  %idxprom14 = sext i32 %mul13 to i64
  %11 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 %idxprom14
  store i8 %conv12, i8* %arrayidx15, align 1, !tbaa !24
  %12 = load i8, i8* %s, align 1, !tbaa !24
  %conv16 = zext i8 %12 to i32
  %and17 = and i32 %conv16, 8
  %shl = shl i32 %and17, 3
  %13 = load i8, i8* %s, align 1, !tbaa !24
  %conv18 = zext i8 %13 to i32
  %and19 = and i32 %conv18, 4
  %shl20 = shl i32 %and19, 2
  %or21 = or i32 %shl, %shl20
  %14 = load i8, i8* %s, align 1, !tbaa !24
  %conv22 = zext i8 %14 to i32
  %and23 = and i32 %conv22, 2
  %shl24 = shl i32 %and23, 1
  %or25 = or i32 %or21, %shl24
  %15 = load i8, i8* %s, align 1, !tbaa !24
  %conv26 = zext i8 %15 to i32
  %and27 = and i32 %conv26, 1
  %or28 = or i32 %or25, %and27
  %mul29 = mul nsw i32 %or28, 3
  %conv30 = trunc i32 %mul29 to i8
  %16 = load i32, i32* %i, align 4, !tbaa !25
  %mul31 = mul nsw i32 %16, 2
  %add = add nsw i32 %mul31, 1
  %idxprom32 = sext i32 %add to i64
  %17 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %17, i64 %idxprom32
  store i8 %conv30, i8* %arrayidx33, align 1, !tbaa !24
  call void @llvm.lifetime.end(i64 1, i8* %s) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rinkj_escp_select_dblx(i8* %dst, i8* %src, i32 %x_pass, i32 %n_bytes) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %x_pass.addr = alloca i32, align 4
  %n_bytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %x_pass, i32* %x_pass.addr, align 4, !tbaa !25
  store i32 %n_bytes, i32* %n_bytes.addr, align 4, !tbaa !25
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !25
  %2 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv = sext i8 %5 to i32
  %6 = load i32, i32* %x_pass.addr, align 4, !tbaa !25
  %sub = sub nsw i32 1, %6
  %shr = ashr i32 %conv, %sub
  %and = and i32 %shr, 85
  %mul = mul nsw i32 %and, 3
  %conv1 = trunc i32 %mul to i8
  %7 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom2 = sext i32 %7 to i64
  %8 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 %idxprom2
  store i8 %conv1, i8* %arrayidx3, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rinkj_escp_sel_shuffle_dblx(i8* %dst, i8* %src, i32 %pass, i32 %n_bytes) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %pass.addr = alloca i32, align 4
  %n_bytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n_dst = alloca i32, align 4
  %s0 = alloca i8, align 1
  %s1 = alloca i8, align 1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %pass, i32* %pass.addr, align 4, !tbaa !25
  store i32 %n_bytes, i32* %n_bytes.addr, align 4, !tbaa !25
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %n_dst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  call void @llvm.lifetime.start(i64 1, i8* %s0) #1
  call void @llvm.lifetime.start(i64 1, i8* %s1) #1
  %2 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %shr = ashr i32 %2, 1
  store i32 %shr, i32* %n_dst, align 4, !tbaa !25
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !25
  %4 = load i32, i32* %n_dst, align 4, !tbaa !25
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !25
  %mul = mul nsw i32 %5, 2
  %idxprom = sext i32 %mul to i64
  %6 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv = sext i8 %7 to i32
  %8 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %shl = shl i32 %conv, %8
  %conv1 = trunc i32 %shl to i8
  store i8 %conv1, i8* %s0, align 1, !tbaa !24
  %9 = load i32, i32* %i, align 4, !tbaa !25
  %mul2 = mul nsw i32 %9, 2
  %add = add nsw i32 %mul2, 1
  %idxprom3 = sext i32 %add to i64
  %10 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 %idxprom3
  %11 = load i8, i8* %arrayidx4, align 1, !tbaa !24
  %conv5 = sext i8 %11 to i32
  %12 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %shl6 = shl i32 %conv5, %12
  %conv7 = trunc i32 %shl6 to i8
  store i8 %conv7, i8* %s1, align 1, !tbaa !24
  %13 = load i8, i8* %s0, align 1, !tbaa !24
  %conv8 = zext i8 %13 to i32
  %and = and i32 %conv8, 128
  %shr9 = ashr i32 %and, 1
  %14 = load i8, i8* %s0, align 1, !tbaa !24
  %conv10 = zext i8 %14 to i32
  %and11 = and i32 %conv10, 8
  %shl12 = shl i32 %and11, 1
  %or = or i32 %shr9, %shl12
  %15 = load i8, i8* %s1, align 1, !tbaa !24
  %conv13 = zext i8 %15 to i32
  %and14 = and i32 %conv13, 128
  %shr15 = ashr i32 %and14, 5
  %or16 = or i32 %or, %shr15
  %16 = load i8, i8* %s1, align 1, !tbaa !24
  %conv17 = zext i8 %16 to i32
  %and18 = and i32 %conv17, 8
  %shr19 = ashr i32 %and18, 3
  %or20 = or i32 %or16, %shr19
  %mul21 = mul nsw i32 %or20, 3
  %conv22 = trunc i32 %mul21 to i8
  %17 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom23 = sext i32 %17 to i64
  %18 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %18, i64 %idxprom23
  store i8 %conv22, i8* %arrayidx24, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %and25 = and i32 %20, 1
  %tobool = icmp ne i32 %and25, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %21 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %sub = sub nsw i32 %21, 1
  %idxprom26 = sext i32 %sub to i64
  %22 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %22, i64 %idxprom26
  %23 = load i8, i8* %arrayidx27, align 1, !tbaa !24
  %conv28 = sext i8 %23 to i32
  %24 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %shl29 = shl i32 %conv28, %24
  %conv30 = trunc i32 %shl29 to i8
  store i8 %conv30, i8* %s0, align 1, !tbaa !24
  %25 = load i8, i8* %s0, align 1, !tbaa !24
  %conv31 = zext i8 %25 to i32
  %and32 = and i32 %conv31, 128
  %shr33 = ashr i32 %and32, 1
  %26 = load i8, i8* %s0, align 1, !tbaa !24
  %conv34 = zext i8 %26 to i32
  %and35 = and i32 %conv34, 8
  %shl36 = shl i32 %and35, 1
  %or37 = or i32 %shr33, %shl36
  %mul38 = mul nsw i32 %or37, 3
  %conv39 = trunc i32 %mul38 to i8
  %27 = load i32, i32* %n_dst, align 4, !tbaa !25
  %idxprom40 = sext i32 %27 to i64
  %28 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %28, i64 %idxprom40
  store i8 %conv39, i8* %arrayidx41, align 1, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void @llvm.lifetime.end(i64 1, i8* %s1) #1
  call void @llvm.lifetime.end(i64 1, i8* %s0) #1
  %29 = bitcast i32* %n_dst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rinkj_escp_shuffle_dblx(i8* %dst, i8* %src, i32 %pass, i32 %n_bytes) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %pass.addr = alloca i32, align 4
  %n_bytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n_dst = alloca i32, align 4
  %s0 = alloca i8, align 1
  %s1 = alloca i8, align 1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %pass, i32* %pass.addr, align 4, !tbaa !25
  store i32 %n_bytes, i32* %n_bytes.addr, align 4, !tbaa !25
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %n_dst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  call void @llvm.lifetime.start(i64 1, i8* %s0) #1
  call void @llvm.lifetime.start(i64 1, i8* %s1) #1
  %2 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %shr = ashr i32 %2, 1
  store i32 %shr, i32* %n_dst, align 4, !tbaa !25
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !25
  %4 = load i32, i32* %n_dst, align 4, !tbaa !25
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !25
  %mul = mul nsw i32 %5, 2
  %idxprom = sext i32 %mul to i64
  %6 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv = sext i8 %7 to i32
  %8 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %shl = shl i32 %conv, %8
  %conv1 = trunc i32 %shl to i8
  store i8 %conv1, i8* %s0, align 1, !tbaa !24
  %9 = load i32, i32* %i, align 4, !tbaa !25
  %mul2 = mul nsw i32 %9, 2
  %add = add nsw i32 %mul2, 1
  %idxprom3 = sext i32 %add to i64
  %10 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 %idxprom3
  %11 = load i8, i8* %arrayidx4, align 1, !tbaa !24
  %conv5 = sext i8 %11 to i32
  %12 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %shl6 = shl i32 %conv5, %12
  %conv7 = trunc i32 %shl6 to i8
  store i8 %conv7, i8* %s1, align 1, !tbaa !24
  %13 = load i8, i8* %s0, align 1, !tbaa !24
  %conv8 = zext i8 %13 to i32
  %and = and i32 %conv8, 128
  %14 = load i8, i8* %s0, align 1, !tbaa !24
  %conv9 = zext i8 %14 to i32
  %and10 = and i32 %conv9, 32
  %shl11 = shl i32 %and10, 1
  %or = or i32 %and, %shl11
  %15 = load i8, i8* %s0, align 1, !tbaa !24
  %conv12 = zext i8 %15 to i32
  %and13 = and i32 %conv12, 8
  %shl14 = shl i32 %and13, 2
  %or15 = or i32 %or, %shl14
  %16 = load i8, i8* %s0, align 1, !tbaa !24
  %conv16 = zext i8 %16 to i32
  %and17 = and i32 %conv16, 2
  %shl18 = shl i32 %and17, 3
  %or19 = or i32 %or15, %shl18
  %17 = load i8, i8* %s1, align 1, !tbaa !24
  %conv20 = zext i8 %17 to i32
  %and21 = and i32 %conv20, 128
  %shr22 = ashr i32 %and21, 4
  %or23 = or i32 %or19, %shr22
  %18 = load i8, i8* %s1, align 1, !tbaa !24
  %conv24 = zext i8 %18 to i32
  %and25 = and i32 %conv24, 32
  %shr26 = ashr i32 %and25, 3
  %or27 = or i32 %or23, %shr26
  %19 = load i8, i8* %s1, align 1, !tbaa !24
  %conv28 = zext i8 %19 to i32
  %and29 = and i32 %conv28, 8
  %shr30 = ashr i32 %and29, 2
  %or31 = or i32 %or27, %shr30
  %20 = load i8, i8* %s1, align 1, !tbaa !24
  %conv32 = zext i8 %20 to i32
  %and33 = and i32 %conv32, 2
  %shr34 = ashr i32 %and33, 1
  %or35 = or i32 %or31, %shr34
  %conv36 = trunc i32 %or35 to i8
  %21 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom37 = sext i32 %21 to i64
  %22 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %22, i64 %idxprom37
  store i8 %conv36, i8* %arrayidx38, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %and39 = and i32 %24, 1
  %tobool = icmp ne i32 %and39, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %25 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %sub = sub nsw i32 %25, 1
  %idxprom40 = sext i32 %sub to i64
  %26 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %26, i64 %idxprom40
  %27 = load i8, i8* %arrayidx41, align 1, !tbaa !24
  %conv42 = sext i8 %27 to i32
  %28 = load i32, i32* %pass.addr, align 4, !tbaa !25
  %shl43 = shl i32 %conv42, %28
  %conv44 = trunc i32 %shl43 to i8
  store i8 %conv44, i8* %s0, align 1, !tbaa !24
  %29 = load i8, i8* %s0, align 1, !tbaa !24
  %conv45 = zext i8 %29 to i32
  %and46 = and i32 %conv45, 128
  %30 = load i8, i8* %s0, align 1, !tbaa !24
  %conv47 = zext i8 %30 to i32
  %and48 = and i32 %conv47, 32
  %shl49 = shl i32 %and48, 1
  %or50 = or i32 %and46, %shl49
  %31 = load i8, i8* %s0, align 1, !tbaa !24
  %conv51 = zext i8 %31 to i32
  %and52 = and i32 %conv51, 8
  %shl53 = shl i32 %and52, 2
  %or54 = or i32 %or50, %shl53
  %32 = load i8, i8* %s0, align 1, !tbaa !24
  %conv55 = zext i8 %32 to i32
  %and56 = and i32 %conv55, 2
  %shl57 = shl i32 %and56, 3
  %or58 = or i32 %or54, %shl57
  %conv59 = trunc i32 %or58 to i8
  %33 = load i32, i32* %n_dst, align 4, !tbaa !25
  %idxprom60 = sext i32 %33 to i64
  %34 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %34, i64 %idxprom60
  store i8 %conv59, i8* %arrayidx61, align 1, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void @llvm.lifetime.end(i64 1, i8* %s1) #1
  call void @llvm.lifetime.end(i64 1, i8* %s0) #1
  %35 = bitcast i32* %n_dst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rinkj_escp_shuffle_4pass_1bit(i8* %dst, i8* %src, i32 %pass, i32 %n_bytes) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %pass.addr = alloca i32, align 4
  %n_bytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n_dst = alloca i32, align 4
  %s0 = alloca i8, align 1
  %s1 = alloca i8, align 1
  %s2 = alloca i8, align 1
  %s3 = alloca i8, align 1
  %shift = alloca i32, align 4
  %d = alloca i8, align 1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %pass, i32* %pass.addr, align 4, !tbaa !25
  store i32 %n_bytes, i32* %n_bytes.addr, align 4, !tbaa !25
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %n_dst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  call void @llvm.lifetime.start(i64 1, i8* %s0) #1
  call void @llvm.lifetime.start(i64 1, i8* %s1) #1
  call void @llvm.lifetime.start(i64 1, i8* %s2) #1
  call void @llvm.lifetime.start(i64 1, i8* %s3) #1
  %2 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %pass.addr, align 4, !tbaa !25
  store i32 %3, i32* %shift, align 4, !tbaa !25
  %4 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %shr = ashr i32 %4, 2
  store i32 %shr, i32* %n_dst, align 4, !tbaa !25
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !25
  %6 = load i32, i32* %n_dst, align 4, !tbaa !25
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !25
  %mul = mul nsw i32 %7, 4
  %idxprom = sext i32 %mul to i64
  %8 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv = sext i8 %9 to i32
  %10 = load i32, i32* %shift, align 4, !tbaa !25
  %shl = shl i32 %conv, %10
  %conv1 = trunc i32 %shl to i8
  store i8 %conv1, i8* %s0, align 1, !tbaa !24
  %11 = load i32, i32* %i, align 4, !tbaa !25
  %mul2 = mul nsw i32 %11, 4
  %add = add nsw i32 %mul2, 1
  %idxprom3 = sext i32 %add to i64
  %12 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %idxprom3
  %13 = load i8, i8* %arrayidx4, align 1, !tbaa !24
  %conv5 = sext i8 %13 to i32
  %14 = load i32, i32* %shift, align 4, !tbaa !25
  %shl6 = shl i32 %conv5, %14
  %conv7 = trunc i32 %shl6 to i8
  store i8 %conv7, i8* %s1, align 1, !tbaa !24
  %15 = load i32, i32* %i, align 4, !tbaa !25
  %mul8 = mul nsw i32 %15, 4
  %add9 = add nsw i32 %mul8, 2
  %idxprom10 = sext i32 %add9 to i64
  %16 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i64 %idxprom10
  %17 = load i8, i8* %arrayidx11, align 1, !tbaa !24
  %conv12 = sext i8 %17 to i32
  %18 = load i32, i32* %shift, align 4, !tbaa !25
  %shl13 = shl i32 %conv12, %18
  %conv14 = trunc i32 %shl13 to i8
  store i8 %conv14, i8* %s2, align 1, !tbaa !24
  %19 = load i32, i32* %i, align 4, !tbaa !25
  %mul15 = mul nsw i32 %19, 4
  %add16 = add nsw i32 %mul15, 3
  %idxprom17 = sext i32 %add16 to i64
  %20 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %20, i64 %idxprom17
  %21 = load i8, i8* %arrayidx18, align 1, !tbaa !24
  %conv19 = sext i8 %21 to i32
  %22 = load i32, i32* %shift, align 4, !tbaa !25
  %shl20 = shl i32 %conv19, %22
  %conv21 = trunc i32 %shl20 to i8
  store i8 %conv21, i8* %s3, align 1, !tbaa !24
  %23 = load i8, i8* %s0, align 1, !tbaa !24
  %conv22 = zext i8 %23 to i32
  %and = and i32 %conv22, 128
  %24 = load i8, i8* %s0, align 1, !tbaa !24
  %conv23 = zext i8 %24 to i32
  %and24 = and i32 %conv23, 8
  %shl25 = shl i32 %and24, 3
  %or = or i32 %and, %shl25
  %25 = load i8, i8* %s1, align 1, !tbaa !24
  %conv26 = zext i8 %25 to i32
  %and27 = and i32 %conv26, 128
  %shr28 = ashr i32 %and27, 2
  %or29 = or i32 %or, %shr28
  %26 = load i8, i8* %s1, align 1, !tbaa !24
  %conv30 = zext i8 %26 to i32
  %and31 = and i32 %conv30, 8
  %shl32 = shl i32 %and31, 1
  %or33 = or i32 %or29, %shl32
  %27 = load i8, i8* %s2, align 1, !tbaa !24
  %conv34 = zext i8 %27 to i32
  %and35 = and i32 %conv34, 128
  %shr36 = ashr i32 %and35, 4
  %or37 = or i32 %or33, %shr36
  %28 = load i8, i8* %s2, align 1, !tbaa !24
  %conv38 = zext i8 %28 to i32
  %and39 = and i32 %conv38, 8
  %shr40 = ashr i32 %and39, 1
  %or41 = or i32 %or37, %shr40
  %29 = load i8, i8* %s3, align 1, !tbaa !24
  %conv42 = zext i8 %29 to i32
  %and43 = and i32 %conv42, 128
  %shr44 = ashr i32 %and43, 6
  %or45 = or i32 %or41, %shr44
  %30 = load i8, i8* %s3, align 1, !tbaa !24
  %conv46 = zext i8 %30 to i32
  %and47 = and i32 %conv46, 8
  %shr48 = ashr i32 %and47, 3
  %or49 = or i32 %or45, %shr48
  %conv50 = trunc i32 %or49 to i8
  %31 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom51 = sext i32 %31 to i64
  %32 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %32, i64 %idxprom51
  store i8 %conv50, i8* %arrayidx52, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %and53 = and i32 %34, 3
  %tobool = icmp ne i32 %and53, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start(i64 1, i8* %d) #1
  store i8 0, i8* %d, align 1, !tbaa !24
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.77, %if.then
  %35 = load i32, i32* %i, align 4, !tbaa !25
  %36 = load i32, i32* %n_bytes.addr, align 4, !tbaa !25
  %and55 = and i32 %36, 3
  %cmp56 = icmp slt i32 %35, %and55
  br i1 %cmp56, label %for.body.58, label %for.end.79

for.body.58:                                      ; preds = %for.cond.54
  %37 = load i32, i32* %n_dst, align 4, !tbaa !25
  %mul59 = mul nsw i32 %37, 4
  %38 = load i32, i32* %i, align 4, !tbaa !25
  %add60 = add nsw i32 %mul59, %38
  %idxprom61 = sext i32 %add60 to i64
  %39 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %39, i64 %idxprom61
  %40 = load i8, i8* %arrayidx62, align 1, !tbaa !24
  %conv63 = sext i8 %40 to i32
  %41 = load i32, i32* %shift, align 4, !tbaa !25
  %shl64 = shl i32 %conv63, %41
  %conv65 = trunc i32 %shl64 to i8
  store i8 %conv65, i8* %s0, align 1, !tbaa !24
  %42 = load i8, i8* %s0, align 1, !tbaa !24
  %conv66 = zext i8 %42 to i32
  %and67 = and i32 %conv66, 128
  %43 = load i8, i8* %s0, align 1, !tbaa !24
  %conv68 = zext i8 %43 to i32
  %and69 = and i32 %conv68, 8
  %shl70 = shl i32 %and69, 3
  %or71 = or i32 %and67, %shl70
  %44 = load i32, i32* %i, align 4, !tbaa !25
  %shl72 = shl i32 %44, 1
  %shr73 = ashr i32 %or71, %shl72
  %45 = load i8, i8* %d, align 1, !tbaa !24
  %conv74 = sext i8 %45 to i32
  %or75 = or i32 %conv74, %shr73
  %conv76 = trunc i32 %or75 to i8
  store i8 %conv76, i8* %d, align 1, !tbaa !24
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.58
  %46 = load i32, i32* %i, align 4, !tbaa !25
  %inc78 = add nsw i32 %46, 1
  store i32 %inc78, i32* %i, align 4, !tbaa !25
  br label %for.cond.54

for.end.79:                                       ; preds = %for.cond.54
  %47 = load i8, i8* %d, align 1, !tbaa !24
  %48 = load i32, i32* %n_dst, align 4, !tbaa !25
  %idxprom80 = sext i32 %48 to i64
  %49 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %49, i64 %idxprom80
  store i8 %47, i8* %arrayidx81, align 1, !tbaa !24
  call void @llvm.lifetime.end(i64 1, i8* %d) #1
  br label %if.end

if.end:                                           ; preds = %for.end.79, %for.end
  %50 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  call void @llvm.lifetime.end(i64 1, i8* %s3) #1
  call void @llvm.lifetime.end(i64 1, i8* %s2) #1
  call void @llvm.lifetime.end(i64 1, i8* %s1) #1
  call void @llvm.lifetime.end(i64 1, i8* %s0) #1
  %51 = bitcast i32* %n_dst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_epson870_init(%struct._RinkjDevice* %self, %struct._RinkjDeviceParams* %params) #0 {
entry:
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %params.addr = alloca %struct._RinkjDeviceParams*, align 8
  %z = alloca %struct._RinkjEscp*, align 8
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store %struct._RinkjDeviceParams* %params, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjEscp** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._RinkjDevice* %1 to %struct._RinkjEscp*
  store %struct._RinkjEscp* %2, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %3 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %3, i32 0, i32 1
  %4 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out, align 8, !tbaa !13
  %call = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 0) #7
  %5 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out1 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %5, i32 0, i32 1
  %6 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out1, align 8, !tbaa !13
  %call2 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)) #7
  %7 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out3 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %7, i32 0, i32 1
  %8 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out3, align 8, !tbaa !13
  %call4 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i32 0) #7
  %9 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out5 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %9, i32 0, i32 1
  %10 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out5, align 8, !tbaa !13
  %call6 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 0) #7
  %11 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %call7 = call i32 @rinkj_epson_set_common(%struct._RinkjEscp* %11) #7
  %12 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out8 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %12, i32 0, i32 1
  %13 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out8, align 8, !tbaa !13
  %call9 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 0) #7
  %14 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out10 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %14, i32 0, i32 1
  %15 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out10, align 8, !tbaa !13
  %call11 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 0) #7
  %16 = bitcast %struct._RinkjEscp** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_epson2200_init(%struct._RinkjDevice* %self, %struct._RinkjDeviceParams* %params) #0 {
entry:
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %params.addr = alloca %struct._RinkjDeviceParams*, align 8
  %z = alloca %struct._RinkjEscp*, align 8
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store %struct._RinkjDeviceParams* %params, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjEscp** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._RinkjDevice* %1 to %struct._RinkjEscp*
  store %struct._RinkjEscp* %2, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %3 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %3, i32 0, i32 1
  %4 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out, align 8, !tbaa !13
  %call = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 0) #7
  %5 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out1 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %5, i32 0, i32 1
  %6 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out1, align 8, !tbaa !13
  %call2 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)) #7
  %7 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out3 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %7, i32 0, i32 1
  %8 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out3, align 8, !tbaa !13
  %call4 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i32 8, i32 0, i32 0) #7
  %9 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out5 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %9, i32 0, i32 1
  %10 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out5, align 8, !tbaa !13
  %call6 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #7
  %11 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out7 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %11, i32 0, i32 1
  %12 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out7, align 8, !tbaa !13
  %call8 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 0, i32 0) #7
  %13 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out9 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %13, i32 0, i32 1
  %14 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out9, align 8, !tbaa !13
  %call10 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i32 0) #7
  %15 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %16 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %xres = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %16, i32 0, i32 9
  %17 = load i32, i32* %xres, align 4, !tbaa !26
  %18 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %yres = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %18, i32 0, i32 10
  %19 = load i32, i32* %yres, align 4, !tbaa !27
  %call11 = call i32 @rinkj_epson_units(%struct._RinkjEscp* %15, i32 %17, i32 %19, i32 2880) #7
  %20 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %call12 = call i32 @rinkj_epson_set_common(%struct._RinkjEscp* %20) #7
  %21 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out13 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %21, i32 0, i32 1
  %22 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out13, align 8, !tbaa !13
  %call14 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 0) #7
  %23 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %call15 = call i32 @rinkj_epson_headres(%struct._RinkjEscp* %23, i32 2880) #7
  %24 = bitcast %struct._RinkjEscp** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_epson7600_init(%struct._RinkjDevice* %self, %struct._RinkjDeviceParams* %params) #0 {
entry:
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %params.addr = alloca %struct._RinkjDeviceParams*, align 8
  %z = alloca %struct._RinkjEscp*, align 8
  %pl = alloca i32, align 4
  %pw = alloca i32, align 4
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store %struct._RinkjDeviceParams* %params, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjEscp** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._RinkjDevice* %1 to %struct._RinkjEscp*
  store %struct._RinkjEscp* %2, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %3 = bitcast i32* %pl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %pw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 17280, i32* %pw, align 4, !tbaa !25
  %5 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %5, i32 0, i32 1
  %6 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out, align 8, !tbaa !13
  %call = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)) #7
  %7 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out1 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %7, i32 0, i32 1
  %8 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out1, align 8, !tbaa !13
  %call2 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i32 8, i32 0, i32 0) #7
  %9 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out3 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %9, i32 0, i32 1
  %10 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out3, align 8, !tbaa !13
  %call4 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 3, i32 0, i32 0, i32 1, i32 0) #7
  %11 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out5 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %11, i32 0, i32 1
  %12 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out5, align 8, !tbaa !13
  %call6 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 3, i32 0, i32 0, i32 2, i32 6) #7
  %13 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out7 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %13, i32 0, i32 1
  %14 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out7, align 8, !tbaa !13
  %call8 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 3, i32 0, i32 0, i32 3, i32 0) #7
  %15 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out9 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %15, i32 0, i32 1
  %16 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out9, align 8, !tbaa !13
  %call10 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 3, i32 0, i32 0, i32 4, i32 129) #7
  %17 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out11 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %17, i32 0, i32 1
  %18 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out11, align 8, !tbaa !13
  %call12 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 3, i32 0, i32 0, i32 5, i32 51) #7
  %19 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out13 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %19, i32 0, i32 1
  %20 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out13, align 8, !tbaa !13
  %call14 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 3, i32 0, i32 0, i32 8, i32 0) #7
  %21 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out15 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %21, i32 0, i32 1
  %22 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out15, align 8, !tbaa !13
  %call16 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 3, i32 0, i32 0, i32 9, i32 2) #7
  %23 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out17 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %23, i32 0, i32 1
  %24 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out17, align 8, !tbaa !13
  %call18 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 3, i32 0, i32 0, i32 10, i32 0) #7
  %25 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out19 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %25, i32 0, i32 1
  %26 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out19, align 8, !tbaa !13
  %call20 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 3, i32 0, i32 0, i32 128, i32 1) #7
  %27 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out21 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %27, i32 0, i32 1
  %28 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out21, align 8, !tbaa !13
  %call22 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 3, i32 0, i32 0, i32 129, i32 0) #7
  %29 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %autocut = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %29, i32 0, i32 26
  %30 = load i32, i32* %autocut, align 4, !tbaa !18
  %cmp = icmp sge i32 %30, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %31 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out23 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %31, i32 0, i32 1
  %32 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out23, align 8, !tbaa !13
  %33 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %autocut24 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %33, i32 0, i32 26
  %34 = load i32, i32* %autocut24, align 4, !tbaa !18
  %call25 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 2, i32 0, i32 0, i32 %34) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %35 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %blankskip = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %35, i32 0, i32 27
  %36 = load i32, i32* %blankskip, align 4, !tbaa !28
  %cmp26 = icmp sge i32 %36, 0
  br i1 %cmp26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.end
  %37 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out28 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %37, i32 0, i32 1
  %38 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out28, align 8, !tbaa !13
  %39 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %blankskip29 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %39, i32 0, i32 27
  %40 = load i32, i32* %blankskip29, align 4, !tbaa !28
  %add = add nsw i32 64, %40
  %call30 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 2, i32 0, i32 0, i32 %add) #7
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.end
  %41 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out32 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %41, i32 0, i32 1
  %42 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out32, align 8, !tbaa !13
  %call33 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i32 4, i32 0, i32 0, i32 1, i32 0, i32 0) #7
  %43 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out34 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %43, i32 0, i32 1
  %44 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out34, align 8, !tbaa !13
  %call35 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i32 4, i32 0, i32 0, i32 0, i32 0, i32 0) #7
  %45 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out36 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %45, i32 0, i32 1
  %46 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out36, align 8, !tbaa !13
  %call37 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 2, i32 0, i32 0, i32 0) #7
  %47 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out38 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %47, i32 0, i32 1
  %48 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out38, align 8, !tbaa !13
  %call39 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i32 3, i32 0, i32 0, i32 0, i32 0) #7
  %49 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out40 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %49, i32 0, i32 1
  %50 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out40, align 8, !tbaa !13
  %call41 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 2, i32 0, i32 0, i32 64) #7
  %51 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out42 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %51, i32 0, i32 1
  %52 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out42, align 8, !tbaa !13
  %call43 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 3, i32 0, i32 0, i32 132, i32 1) #7
  %53 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out44 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %53, i32 0, i32 1
  %54 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out44, align 8, !tbaa !13
  %call45 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i32 3, i32 0, i32 0, i32 3, i32 0) #7
  %55 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out46 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %55, i32 0, i32 1
  %56 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out46, align 8, !tbaa !13
  %call47 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i32 2, i32 0, i32 0, i32 1) #7
  %57 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out48 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %57, i32 0, i32 1
  %58 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out48, align 8, !tbaa !13
  %call49 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 0) #7
  %59 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out50 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %59, i32 0, i32 1
  %60 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out50, align 8, !tbaa !13
  %call51 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 0, i32 0) #7
  %61 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out52 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %61, i32 0, i32 1
  %62 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out52, align 8, !tbaa !13
  %call53 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i32 0) #7
  %63 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out54 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %63, i32 0, i32 1
  %64 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out54, align 8, !tbaa !13
  %call55 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 0) #7
  %65 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %call56 = call i32 @rinkj_epson_set_common(%struct._RinkjEscp* %65) #7
  %66 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %66, i32 0, i32 3
  %67 = load i32, i32* %height, align 4, !tbaa !42
  %mul = mul nsw i32 %67, 720
  %68 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %yres = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %68, i32 0, i32 10
  %69 = load i32, i32* %yres, align 4, !tbaa !27
  %div = sdiv i32 %mul, %69
  %add57 = add nsw i32 %div, 180
  store i32 %add57, i32* %pl, align 4, !tbaa !25
  %70 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out58 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %70, i32 0, i32 1
  %71 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out58, align 8, !tbaa !13
  %72 = load i32, i32* %pw, align 4, !tbaa !25
  %and = and i32 %72, 255
  %73 = load i32, i32* %pw, align 4, !tbaa !25
  %shr = ashr i32 %73, 8
  %and59 = and i32 %shr, 255
  %74 = load i32, i32* %pw, align 4, !tbaa !25
  %shr60 = ashr i32 %74, 16
  %and61 = and i32 %shr60, 255
  %75 = load i32, i32* %pw, align 4, !tbaa !25
  %shr62 = ashr i32 %75, 24
  %76 = load i32, i32* %pl, align 4, !tbaa !25
  %and63 = and i32 %76, 255
  %77 = load i32, i32* %pl, align 4, !tbaa !25
  %shr64 = ashr i32 %77, 8
  %and65 = and i32 %shr64, 255
  %78 = load i32, i32* %pl, align 4, !tbaa !25
  %shr66 = ashr i32 %78, 16
  %and67 = and i32 %shr66, 255
  %79 = load i32, i32* %pl, align 4, !tbaa !25
  %shr68 = ashr i32 %79, 24
  %call69 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 %and, i32 %and59, i32 %and61, i32 %shr62, i32 %and63, i32 %and65, i32 %and67, i32 %shr68) #7
  %80 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out70 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %80, i32 0, i32 1
  %81 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out70, align 8, !tbaa !13
  %82 = load i32, i32* %pl, align 4, !tbaa !25
  %and71 = and i32 %82, 255
  %83 = load i32, i32* %pl, align 4, !tbaa !25
  %shr72 = ashr i32 %83, 8
  %and73 = and i32 %shr72, 255
  %84 = load i32, i32* %pl, align 4, !tbaa !25
  %shr74 = ashr i32 %84, 16
  %and75 = and i32 %shr74, 255
  %85 = load i32, i32* %pl, align 4, !tbaa !25
  %shr76 = ashr i32 %85, 24
  %call77 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 %and71, i32 %and73, i32 %and75, i32 %shr76) #7
  %86 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %call78 = call i32 @rinkj_epson_headres(%struct._RinkjEscp* %86, i32 2880) #7
  %87 = bitcast i32* %pw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %pl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast %struct._RinkjEscp** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_epsonc80_init(%struct._RinkjDevice* %self, %struct._RinkjDeviceParams* %params) #0 {
entry:
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %params.addr = alloca %struct._RinkjDeviceParams*, align 8
  %z = alloca %struct._RinkjEscp*, align 8
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store %struct._RinkjDeviceParams* %params, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjEscp** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._RinkjDevice* %1 to %struct._RinkjEscp*
  store %struct._RinkjEscp* %2, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %3 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %3, i32 0, i32 1
  %4 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out, align 8, !tbaa !13
  %call = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 0) #7
  %5 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out1 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %5, i32 0, i32 1
  %6 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out1, align 8, !tbaa !13
  %call2 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)) #7
  %7 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out3 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %7, i32 0, i32 1
  %8 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out3, align 8, !tbaa !13
  %call4 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i32 0) #7
  %9 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out5 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %9, i32 0, i32 1
  %10 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out5, align 8, !tbaa !13
  %call6 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 0) #7
  %11 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %call7 = call i32 @rinkj_epson_set_common(%struct._RinkjEscp* %11) #7
  %12 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out8 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %12, i32 0, i32 1
  %13 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out8, align 8, !tbaa !13
  %call9 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 0) #7
  %14 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out10 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %14, i32 0, i32 1
  %15 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out10, align 8, !tbaa !13
  %call11 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i32 0, i32 0, i32 0) #7
  %16 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z, align 8, !tbaa !1
  %out12 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %16, i32 0, i32 1
  %17 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out12, align 8, !tbaa !13
  %call13 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 0) #7
  %18 = bitcast %struct._RinkjEscp** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_epson_set_common(%struct._RinkjEscp* %z) #0 {
entry:
  %z.addr = alloca %struct._RinkjEscp*, align 8
  %status = alloca i32, align 4
  store %struct._RinkjEscp* %z, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %status, align 4, !tbaa !25
  %1 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %printer_weave = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %1, i32 0, i32 30
  %2 = load i32, i32* %printer_weave, align 4, !tbaa !21
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %out = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %3, i32 0, i32 1
  %4 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out, align 8, !tbaa !13
  %5 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %printer_weave1 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %5, i32 0, i32 30
  %6 = load i32, i32* %printer_weave1, align 4, !tbaa !21
  %call = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 %6) #7
  store i32 %call, i32* %status, align 4, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %status, align 4, !tbaa !25
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %unidir = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %8, i32 0, i32 29
  %9 = load i32, i32* %unidir, align 4, !tbaa !20
  %cmp3 = icmp sge i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %land.lhs.true
  %10 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %out5 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %10, i32 0, i32 1
  %11 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out5, align 8, !tbaa !13
  %12 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %unidir6 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %12, i32 0, i32 29
  %13 = load i32, i32* %unidir6, align 4, !tbaa !20
  %call7 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 %13) #7
  store i32 %call7, i32* %status, align 4, !tbaa !25
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %14 = load i32, i32* %status, align 4, !tbaa !25
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.16

land.lhs.true.10:                                 ; preds = %if.end.8
  %15 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %microdot = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %15, i32 0, i32 28
  %16 = load i32, i32* %microdot, align 4, !tbaa !19
  %cmp11 = icmp sge i32 %16, 0
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %land.lhs.true.10
  %17 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %out13 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %17, i32 0, i32 1
  %18 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out13, align 8, !tbaa !13
  %19 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %microdot14 = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %19, i32 0, i32 28
  %20 = load i32, i32* %microdot14, align 4, !tbaa !19
  %call15 = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 0, i32 %20) #7
  store i32 %call15, i32* %status, align 4, !tbaa !25
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %land.lhs.true.10, %if.end.8
  %21 = load i32, i32* %status, align 4, !tbaa !25
  %22 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_epson_units(%struct._RinkjEscp* %z, i32 %xres, i32 %yres, i32 %baseres) #0 {
entry:
  %z.addr = alloca %struct._RinkjEscp*, align 8
  %xres.addr = alloca i32, align 4
  %yres.addr = alloca i32, align 4
  %baseres.addr = alloca i32, align 4
  store %struct._RinkjEscp* %z, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  store i32 %xres, i32* %xres.addr, align 4, !tbaa !25
  store i32 %yres, i32* %yres.addr, align 4, !tbaa !25
  store i32 %baseres, i32* %baseres.addr, align 4, !tbaa !25
  %0 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %out = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %0, i32 0, i32 1
  %1 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out, align 8, !tbaa !13
  %2 = load i32, i32* %baseres.addr, align 4, !tbaa !25
  %3 = load i32, i32* %yres.addr, align 4, !tbaa !25
  %div = sdiv i32 %2, %3
  %4 = load i32, i32* %baseres.addr, align 4, !tbaa !25
  %5 = load i32, i32* %yres.addr, align 4, !tbaa !25
  %div1 = sdiv i32 %4, %5
  %6 = load i32, i32* %baseres.addr, align 4, !tbaa !25
  %7 = load i32, i32* %xres.addr, align 4, !tbaa !25
  %div2 = sdiv i32 %6, %7
  %8 = load i32, i32* %baseres.addr, align 4, !tbaa !25
  %and = and i32 %8, 255
  %9 = load i32, i32* %baseres.addr, align 4, !tbaa !25
  %shr = ashr i32 %9, 8
  %call = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 %div, i32 %div1, i32 %div2, i32 %and, i32 %shr) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_epson_headres(%struct._RinkjEscp* %z, i32 %baseres) #0 {
entry:
  %z.addr = alloca %struct._RinkjEscp*, align 8
  %baseres.addr = alloca i32, align 4
  store %struct._RinkjEscp* %z, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  store i32 %baseres, i32* %baseres.addr, align 4, !tbaa !25
  %0 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %out = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %0, i32 0, i32 1
  %1 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %out, align 8, !tbaa !13
  %2 = load i32, i32* %baseres.addr, align 4, !tbaa !25
  %and = and i32 %2, 255
  %3 = load i32, i32* %baseres.addr, align 4, !tbaa !25
  %shr = ashr i32 %3, 8
  %4 = load i32, i32* %baseres.addr, align 4, !tbaa !25
  %5 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %head_yres = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %5, i32 0, i32 13
  %6 = load i32, i32* %head_yres, align 4, !tbaa !45
  %div = sdiv i32 %4, %6
  %7 = load i32, i32* %baseres.addr, align 4, !tbaa !25
  %8 = load %struct._RinkjEscp*, %struct._RinkjEscp** %z.addr, align 8, !tbaa !1
  %head_xres = getelementptr inbounds %struct._RinkjEscp, %struct._RinkjEscp* %8, i32 0, i32 12
  %9 = load i32, i32* %head_xres, align 4, !tbaa !44
  %div1 = sdiv i32 %7, %9
  %call = call i32 (%struct._RinkjByteStream*, i8*, ...) @rinkj_byte_stream_printf(%struct._RinkjByteStream* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 %and, i32 %shr, i32 %div, i32 %div1) #7
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"_RinkjEscp", !7, i64 0, !2, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !2, i64 56, !2, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !3, i64 112, !8, i64 136, !2, i64 144, !2, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196}
!7 = !{!"_RinkjDevice", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24}
!8 = !{!"int", !3, i64 0}
!9 = !{!6, !2, i64 16}
!10 = !{!6, !2, i64 8}
!11 = !{!6, !8, i64 24}
!12 = !{!6, !8, i64 40}
!13 = !{!6, !2, i64 32}
!14 = !{!6, !8, i64 72}
!15 = !{!6, !8, i64 76}
!16 = !{!6, !2, i64 56}
!17 = !{!6, !2, i64 64}
!18 = !{!6, !8, i64 180}
!19 = !{!6, !8, i64 188}
!20 = !{!6, !8, i64 192}
!21 = !{!6, !8, i64 196}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !3, i64 0}
!24 = !{!3, !3, i64 0}
!25 = !{!8, !8, i64 0}
!26 = !{!6, !8, i64 80}
!27 = !{!6, !8, i64 84}
!28 = !{!6, !8, i64 184}
!29 = !{!6, !8, i64 48}
!30 = !{!6, !8, i64 160}
!31 = !{!6, !2, i64 144}
!32 = !{!6, !8, i64 164}
!33 = !{!6, !8, i64 168}
!34 = !{!6, !2, i64 152}
!35 = !{!6, !8, i64 172}
!36 = !{!6, !8, i64 108}
!37 = !{!6, !8, i64 104}
!38 = !{!6, !8, i64 136}
!39 = !{!40, !8, i64 0}
!40 = !{!"_RinkjDeviceParams", !8, i64 0, !8, i64 4, !8, i64 8, !2, i64 16}
!41 = !{!40, !8, i64 4}
!42 = !{!6, !8, i64 44}
!43 = !{!40, !8, i64 8}
!44 = !{!6, !8, i64 92}
!45 = !{!6, !8, i64 96}
!46 = !{!6, !8, i64 88}
!47 = !{!6, !8, i64 100}
!48 = !{!6, !8, i64 176}
