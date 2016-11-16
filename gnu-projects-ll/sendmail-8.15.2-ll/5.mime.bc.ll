; ModuleID = '5.mime.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailer_con_info = type { i64, i16, i16, i16, i16, i32, i64, %struct.sm_file*, %struct.sm_file*, i32, i8*, %struct.mailer*, i8*, i8*, i8*, i64, %struct.sm_file*, i8*, i64, i32, i8*, %struct.SM_RPOOL_T*, i32, %struct.address*, %struct.MACROS_T }
%struct.mailer = type { i8*, i8*, i8*, i8*, i8*, [8 x i32], i16, i16, i8**, i16, i16, i16, i16, i8*, i64, i32, i32, i8*, i8*, i32, i32, i8*, i64, i32, i16 }
%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%struct.SM_RPOOL_T = type { i8*, void (i8*)**, i64, i64, i8*, i64, %struct.sm_poollink*, %struct.sm_resource*, i64, %struct.sm_rlist* }
%struct.sm_poollink = type { %struct.sm_poollink* }
%struct.sm_resource = type { void (i8*)*, i8* }
%struct.sm_rlist = type { [511 x %struct.sm_resource], %struct.sm_rlist* }
%struct.address = type { i8*, i8*, i8*, i8*, %struct.mailer*, i64, i32, i32, i8*, i8*, %struct.address*, %struct.address*, i8*, %struct.address*, %struct.address*, i8*, i8*, i8*, i8*, i64, i8*, i16, i8*, i32, i32, i8* }
%struct.MACROS_T = type { %struct.SM_RPOOL_T*, [8 x i32], [256 x i8*] }
%struct.header = type { i8*, i8*, %struct.header*, i8, i64, [8 x i32] }
%struct.envelope = type { %struct.header*, i64, i64, i8*, %struct.address, i8*, i8**, %struct.address*, %struct.address*, i64, i8*, i64, i32, i16, i16, i16, i16, i16, i16, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)*, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)*, %struct.envelope*, %struct.envelope*, i8*, %struct.sm_file*, i8*, i32, i32, i32, i32, i32, i32, %struct.sm_file*, %struct.sm_file*, i8*, i8*, i8*, i8, i8*, i8*, i8*, i8*, i64, i32, i64, i64, %struct.MACROS_T, %struct.mailer_con_info*, i8*, %struct.sm_timers, i64, i32, %struct.SM_RPOOL_T*, i32 }
%struct.sm_timers = type { %struct._timer }
%struct._timer = type { i64, i64, i64, i64 }
%struct.args = type { i8*, i8* }

@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str = private unnamed_addr constant [30 x i8] c"mime8to7: too deep, level=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"mime8to7: recursion level %d exceeded\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"mime8to7: flags = %x, boundaries =\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" <none>\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MapNLtoCRLF = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Content-Transfer-Encoding\00", align 1
@MimeTokenTab = external global [256 x i8], align 16
@.str.7 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"message/rfc822\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"pvp[%d] = \22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"mime8to7: Empty parameter in Content-Type header\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"-none-\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"%.100s/%.100s\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"multipart\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"boundary\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"mime8to7: Content-Type: \22%s\22: %s boundary\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"missing\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"bogus\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"mime8to7: multipart boundary \22%s\22 too long\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"mime8to7: multipart boundary \22%s\22\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"mime8to7: too deep, i=%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"mime8to7: multipart nesting boundary too deep\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"  ...%s\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"  ...%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"+++after collect\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"+++after putheader\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"\09\09\09mime8to7=>%s (multipart)\0A\00", align 1
@MimeBoundaryNames = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0)], align 16
@.str.35 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"MIME-Version\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"MIME-Version: 1.0\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"mime8to7: cannot sm_io_tell on %cf%s\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"mime8to7: cannot sm_io_fseek on %cf%s\00", align 1
@.str.40 = private unnamed_addr constant [62 x i8] c"mime8to7: %ld high bit(s) in %ld byte(s), cte=%s, type=%s/%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"[none]\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"Content-Transfer-Encoding: %.200s\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"  ...Content-Transfer-Encoding: base64\0A\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"Content-Transfer-Encoding: base64\00", align 1
@.str.46 = private unnamed_addr constant [54 x i8] c"X-MIME-Autoconverted: from 8bit to base64 by %s id %s\00", align 1
@MyHostName = external global i8*, align 8
@Base64Code = internal global [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@.str.47 = private unnamed_addr constant [15 x i8] c"!\22#$@[\5C]^`{|}~\00", align 1
@.str.48 = private unnamed_addr constant [50 x i8] c"  ...Content-Transfer-Encoding: quoted-printable\0A\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"Content-Transfer-Encoding: quoted-printable\00", align 1
@.str.50 = private unnamed_addr constant [64 x i8] c"X-MIME-Autoconverted: from 8bit to quoted-printable by %s id %s\00", align 1
@Base16Code = internal global [17 x i8] c"0123456789ABCDEF\00", align 16
@.str.51 = private unnamed_addr constant [5 x i8] c"From\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"\09\09\09mime8to7=>%s (basic)\0A\00", align 1
@DefaultCharSet = external global i8*, align 8
@.str.53 = private unnamed_addr constant [13 x i8] c"unknown-8bit\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"mime7to8: unparsable CTE %s\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"Content-Transfer-Encoding: %s\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"Content-Transfer-Encoding: 8bit\00", align 1
@.str.58 = private unnamed_addr constant [54 x i8] c"X-MIME-Autoconverted: from %.200s to 8bit by %s id %s\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@index_64 = internal global [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF", align 16
@.str.60 = private unnamed_addr constant [32 x i8] c"\09\09\09mime7to8 => %s to 8bit done\0A\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"SYNTAX\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"NOTSEP\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"INTERMED\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"FINAL\00", align 1
@mime_getchar.bp = internal global i8* null, align 8
@mime_getchar.buflen = internal global i32 0, align 4
@mime_getchar.atbol = internal global i32 1, align 4
@mime_getchar.bt = internal global i32 0, align 4
@mime_getchar.buf = internal global [128 x i8] zeroinitializer, align 16
@mime_getchar_crlf.sendlf = internal global i32 0, align 4
@.str.65 = private unnamed_addr constant [28 x i8] c"mimeboundary: line=\22%s\22... \00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@index_hex = internal global [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16

; Function Attrs: nounwind uwtable
define i32 @mime8to7(%struct.mailer_con_info* %mci, %struct.header* %header, %struct.envelope* %e, i8** %boundaries, i32 %flags, i32 %level) #0 {
entry:
  %retval = alloca i32, align 4
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %header.addr = alloca %struct.header*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %boundaries.addr = alloca i8**, align 8
  %flags.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %linelen = alloca i32, align 4
  %blen = alloca i32, align 4
  %bt = alloca i32, align 4
  %offset = alloca i64, align 8
  %sectionsize = alloca i64, align 8
  %sectionhighbits = alloca i64, align 8
  %i = alloca i32, align 4
  %type = alloca i8*, align 8
  %subtype = alloca i8*, align 8
  %cte = alloca i8*, align 8
  %pvp = alloca i8**, align 8
  %argc = alloca i32, align 4
  %bp = alloca i8*, align 8
  %use_qp = alloca i32, align 4
  %argv = alloca [20 x %struct.args], align 16
  %bbuf = alloca [128 x i8], align 16
  %buf = alloca [2048 x i8], align 16
  %pvpbuf = alloca [2048 x i8], align 16
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp125 = alloca i32, align 4
  %__s1_len145 = alloca i64, align 8
  %__s2_len147 = alloca i64, align 8
  %tmp148 = alloca i32, align 4
  %__s1154 = alloca i8*, align 8
  %__result156 = alloca i32, align 4
  %tmp194 = alloca i32, align 4
  %__s1_len213 = alloca i64, align 8
  %__s2_len215 = alloca i64, align 8
  %tmp216 = alloca i32, align 4
  %__s1222 = alloca i8*, align 8
  %__result224 = alloca i32, align 4
  %tmp262 = alloca i32, align 4
  %__s1_len280 = alloca i64, align 8
  %__s2_len282 = alloca i64, align 8
  %tmp283 = alloca i32, align 4
  %__s1289 = alloca i8*, align 8
  %__result291 = alloca i32, align 4
  %tmp329 = alloca i32, align 4
  %__s1_len342 = alloca i64, align 8
  %__s2_len344 = alloca i64, align 8
  %tmp345 = alloca i32, align 4
  %__s1351 = alloca i8*, align 8
  %__result353 = alloca i32, align 4
  %tmp391 = alloca i32, align 4
  %hdr = alloca %struct.header*, align 8
  %cleanup.dest.slot = alloca i32
  %hdr716 = alloca %struct.header*, align 8
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c11034 = alloca i32, align 4
  %c21036 = alloca i32, align 4
  %fromstate = alloca i32, align 4
  %badchars = alloca [8 x i32], align 16
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.header* %header, %struct.header** %header.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8** %boundaries, i8*** %boundaries.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store i32 %level, i32* %level.addr, align 4, !tbaa !5
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %linelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %blen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %bt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %sectionsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %sectionhighbits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i8** %type to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i8** %subtype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %cte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %argc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %argc, align 4, !tbaa !5
  %13 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %use_qp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %use_qp, align 4, !tbaa !5
  %15 = bitcast [20 x %struct.args]* %argv to i8*
  call void @llvm.lifetime.start(i64 320, i8* %15) #1
  %16 = bitcast [128 x i8]* %bbuf to i8*
  call void @llvm.lifetime.start(i64 128, i8* %16) #1
  %17 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %17) #1
  %18 = bitcast [2048 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %18) #1
  %19 = load i32, i32* %level.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %19, 20
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %20 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %20, i32 0, i32 11
  %21 = load i64, i64* %e_flags, align 8, !tbaa !7
  %and = and i64 %21, 268435456
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end.7, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %22 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv = zext i8 %22 to i32
  %cmp3 = icmp sge i32 %conv, 4
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.2
  %23 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  %24 = load i32, i32* %level.addr, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 %24)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then.2
  %25 = load i32, i32* %level.addr, align 4, !tbaa !5
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i32 %25)
  %26 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags6 = getelementptr inbounds %struct.envelope, %struct.envelope* %26, i32 0, i32 11
  %27 = load i64, i64* %e_flags6, align 8, !tbaa !7
  %or = or i64 %27, 276824064
  store i64 %or, i64* %e_flags6, align 8, !tbaa !7
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  %28 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv9 = zext i8 %28 to i32
  %cmp10 = icmp sge i32 %conv9, 1
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.24

land.lhs.true.12:                                 ; preds = %if.end.8
  %29 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool13 = icmp ne i32 %29, 0
  br i1 %tobool13, label %if.end.24, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.12
  %30 = load i32, i32* %flags.addr, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 %30)
  %31 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %31, i64 0
  %32 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp15 = icmp eq i8* %32, null
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.14
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.23

if.else:                                          ; preds = %if.then.14
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %33 to i64
  %34 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8*, i8** %34, i64 %idxprom
  %35 = load i8*, i8** %arrayidx18, align 8, !tbaa !1
  %cmp19 = icmp ne i8* %35, null
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %36 to i64
  %37 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8*, i8** %37, i64 %idxprom21
  %38 = load i8*, i8** %arrayidx22, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %38)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.23

if.end.23:                                        ; preds = %for.end, %if.then.17
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %land.lhs.true.12, %if.end.8
  store i32 1, i32* @MapNLtoCRLF, align 4, !tbaa !5
  %40 = load %struct.header*, %struct.header** %header.addr, align 8, !tbaa !1
  %call = call i8* @hvalue(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), %struct.header* %40)
  store i8* %call, i8** %p, align 8, !tbaa !1
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp25 = icmp eq i8* %41, null
  br i1 %cmp25, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %pvpbuf, i32 0, i32 0
  %call27 = call i8** @prescan(i8* %42, i32 0, i8* %arraydecay, i32 2048, i8** null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @MimeTokenTab, i32 0, i32 0), i32 0)
  store i8** %call27, i8*** %pvp, align 8, !tbaa !1
  %cmp28 = icmp eq i8** %call27, null
  br i1 %cmp28, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false
  %43 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8*, i8** %43, i64 0
  %44 = load i8*, i8** %arrayidx31, align 8, !tbaa !1
  %cmp32 = icmp eq i8* %44, null
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %lor.lhs.false.30, %lor.lhs.false, %if.end.24
  store i8* null, i8** %cte, align 8, !tbaa !1
  br label %if.end.39

if.else.35:                                       ; preds = %lor.lhs.false.30
  %45 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arraydecay36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void @cataddr(i8** %45, i8** null, i8* %arraydecay36, i32 2048, i32 0, i32 0)
  %46 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %46, i32 0, i32 52
  %47 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !16
  %arraydecay37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call38 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %47, i8* %arraydecay37)
  store i8* %call38, i8** %cte, align 8, !tbaa !1
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.35, %if.then.34
  store i8* null, i8** %subtype, align 8, !tbaa !1
  store i8* null, i8** %type, align 8, !tbaa !1
  %48 = load %struct.header*, %struct.header** %header.addr, align 8, !tbaa !1
  %call40 = call i8* @hvalue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), %struct.header* %48)
  store i8* %call40, i8** %p, align 8, !tbaa !1
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp41 = icmp eq i8* %49, null
  br i1 %cmp41, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %if.end.39
  %50 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and44 = and i32 %50, 2
  %cmp45 = icmp ne i32 %and44, 0
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.then.43
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.49

if.else.48:                                       ; preds = %if.then.43
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.48, %if.then.47
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.39
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp51 = icmp ne i8* %51, null
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.404

land.lhs.true.53:                                 ; preds = %if.end.50
  %52 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay54 = getelementptr inbounds [2048 x i8], [2048 x i8]* %pvpbuf, i32 0, i32 0
  %call55 = call i8** @prescan(i8* %52, i32 0, i8* %arraydecay54, i32 2048, i8** null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @MimeTokenTab, i32 0, i32 0), i32 0)
  store i8** %call55, i8*** %pvp, align 8, !tbaa !1
  %cmp56 = icmp ne i8** %call55, null
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.404

land.lhs.true.58:                                 ; preds = %land.lhs.true.53
  %53 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8*, i8** %53, i64 0
  %54 = load i8*, i8** %arrayidx59, align 8, !tbaa !1
  %cmp60 = icmp ne i8* %54, null
  br i1 %cmp60, label %if.then.62, label %if.end.404

if.then.62:                                       ; preds = %land.lhs.true.58
  %55 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv63 = zext i8 %55 to i32
  %cmp64 = icmp sge i32 %conv63, 40
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.80

land.lhs.true.66:                                 ; preds = %if.then.62
  %56 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool67 = icmp ne i32 %56, 0
  br i1 %tobool67, label %if.end.80, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.66
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.77, %if.then.68
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom70 = sext i32 %57 to i64
  %58 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i8*, i8** %58, i64 %idxprom70
  %59 = load i8*, i8** %arrayidx71, align 8, !tbaa !1
  %cmp72 = icmp ne i8* %59, null
  br i1 %cmp72, label %for.body.74, label %for.end.79

for.body.74:                                      ; preds = %for.cond.69
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom75 = sext i32 %61 to i64
  %62 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8*, i8** %62, i64 %idxprom75
  %63 = load i8*, i8** %arrayidx76, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 %60, i8* %63)
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.74
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %inc78 = add nsw i32 %64, 1
  store i32 %inc78, i32* %i, align 4, !tbaa !5
  br label %for.cond.69

for.end.79:                                       ; preds = %for.cond.69
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.79, %land.lhs.true.66, %if.then.62
  %65 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %incdec.ptr, i8*** %pvp, align 8, !tbaa !1
  %66 = load i8*, i8** %65, align 8, !tbaa !1
  store i8* %66, i8** %type, align 8, !tbaa !1
  %67 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %68 = load i8*, i8** %67, align 8, !tbaa !1
  %cmp81 = icmp ne i8* %68, null
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.135

land.lhs.true.83:                                 ; preds = %if.end.80
  %69 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #1
  %70 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.11 to i64)), i64 1), label %land.lhs.true.84, label %cond.false

land.lhs.true.84:                                 ; preds = %land.lhs.true.83
  store i64 1, i64* %__s2_len, align 8, !tbaa !17
  %71 = load i64, i64* %__s2_len, align 8, !tbaa !17
  %cmp85 = icmp ult i64 %71, 4
  br i1 %cmp85, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.84
  %72 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %74 = load i8*, i8** %73, align 8, !tbaa !1
  store i8* %74, i8** %__s1, align 8, !tbaa !1
  %75 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %76, i64 0
  %77 = load i8, i8* %arrayidx89, align 1, !tbaa !15
  %conv90 = zext i8 %77 to i32
  %78 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), align 1, !tbaa !15
  %conv91 = zext i8 %78 to i32
  %sub = sub nsw i32 %conv90, %conv91
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %79 = load i64, i64* %__s2_len, align 8, !tbaa !17
  %cmp92 = icmp ugt i64 %79, 0
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.124

land.lhs.true.94:                                 ; preds = %cond.true
  %80 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp95 = icmp eq i32 %80, 0
  br i1 %cmp95, label %if.then.97, label %if.end.124

if.then.97:                                       ; preds = %land.lhs.true.94
  %81 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i8, i8* %81, i64 1
  %82 = load i8, i8* %arrayidx98, align 1, !tbaa !15
  %conv99 = zext i8 %82 to i32
  %83 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i64 1), align 1, !tbaa !15
  %conv100 = zext i8 %83 to i32
  %sub101 = sub nsw i32 %conv99, %conv100
  store i32 %sub101, i32* %__result, align 4, !tbaa !5
  %84 = load i64, i64* %__s2_len, align 8, !tbaa !17
  %cmp102 = icmp ugt i64 %84, 1
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.123

land.lhs.true.104:                                ; preds = %if.then.97
  %85 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp105 = icmp eq i32 %85, 0
  br i1 %cmp105, label %if.then.107, label %if.end.123

if.then.107:                                      ; preds = %land.lhs.true.104
  %86 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds i8, i8* %86, i64 2
  %87 = load i8, i8* %arrayidx108, align 1, !tbaa !15
  %conv109 = zext i8 %87 to i32
  %88 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i64 2), align 1, !tbaa !15
  %conv110 = zext i8 %88 to i32
  %sub111 = sub nsw i32 %conv109, %conv110
  store i32 %sub111, i32* %__result, align 4, !tbaa !5
  %89 = load i64, i64* %__s2_len, align 8, !tbaa !17
  %cmp112 = icmp ugt i64 %89, 2
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.122

land.lhs.true.114:                                ; preds = %if.then.107
  %90 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp115 = icmp eq i32 %90, 0
  br i1 %cmp115, label %if.then.117, label %if.end.122

if.then.117:                                      ; preds = %land.lhs.true.114
  %91 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i8, i8* %91, i64 3
  %92 = load i8, i8* %arrayidx118, align 1, !tbaa !15
  %conv119 = zext i8 %92 to i32
  %93 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i64 3), align 1, !tbaa !15
  %conv120 = zext i8 %93 to i32
  %sub121 = sub nsw i32 %conv119, %conv120
  store i32 %sub121, i32* %__result, align 4, !tbaa !5
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.117, %land.lhs.true.114, %if.then.107
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %land.lhs.true.104, %if.then.97
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %land.lhs.true.94, %cond.true
  %94 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %94, i32* %tmp125, !tbaa !5
  %95 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = load i32, i32* %tmp125, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.84, %land.lhs.true.83
  %98 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %99 = load i8*, i8** %98, align 8, !tbaa !1
  %call126 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.124
  %cond = phi i32 [ %97, %if.end.124 ], [ %call126, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %100 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = load i32, i32* %tmp, !tbaa !5
  %cmp127 = icmp eq i32 %102, 0
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.135

land.lhs.true.129:                                ; preds = %cond.end
  %103 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr130 = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %incdec.ptr130, i8*** %pvp, align 8, !tbaa !1
  %104 = load i8*, i8** %incdec.ptr130, align 8, !tbaa !1
  %cmp131 = icmp ne i8* %104, null
  br i1 %cmp131, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %land.lhs.true.129
  %105 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr134 = getelementptr inbounds i8*, i8** %105, i32 1
  store i8** %incdec.ptr134, i8*** %pvp, align 8, !tbaa !1
  %106 = load i8*, i8** %105, align 8, !tbaa !1
  store i8* %106, i8** %subtype, align 8, !tbaa !1
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %land.lhs.true.129, %cond.end, %if.end.80
  br label %while.cond

while.cond:                                       ; preds = %if.end.402, %if.then.269, %if.end.135
  %107 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %108 = load i8*, i8** %107, align 8, !tbaa !1
  %cmp136 = icmp ne i8* %108, null
  br i1 %cmp136, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %109 = load i32, i32* %argc, align 4, !tbaa !5
  %cmp138 = icmp slt i32 %109, 20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %110 = phi i1 [ false, %while.cond ], [ %cmp138, %land.rhs ]
  br i1 %110, label %while.body, label %while.end.403

while.body:                                       ; preds = %land.end
  br label %while.cond.140

while.cond.140:                                   ; preds = %while.body.202, %while.body
  %111 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %112 = load i8*, i8** %111, align 8, !tbaa !1
  %cmp141 = icmp ne i8* %112, null
  br i1 %cmp141, label %land.rhs.143, label %land.end.201

land.rhs.143:                                     ; preds = %while.cond.140
  %113 = bitcast i64* %__s1_len145 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #1
  %114 = bitcast i64* %__s2_len147 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %114) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.12 to i64)), i64 1), label %land.lhs.true.149, label %cond.false.195

land.lhs.true.149:                                ; preds = %land.rhs.143
  store i64 1, i64* %__s2_len147, align 8, !tbaa !17
  %115 = load i64, i64* %__s2_len147, align 8, !tbaa !17
  %cmp150 = icmp ult i64 %115, 4
  br i1 %cmp150, label %cond.true.152, label %cond.false.195

cond.true.152:                                    ; preds = %land.lhs.true.149
  %116 = bitcast i8** %__s1154 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %116) #1
  %117 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %118 = load i8*, i8** %117, align 8, !tbaa !1
  store i8* %118, i8** %__s1154, align 8, !tbaa !1
  %119 = bitcast i32* %__result156 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #1
  %120 = load i8*, i8** %__s1154, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i8, i8* %120, i64 0
  %121 = load i8, i8* %arrayidx157, align 1, !tbaa !15
  %conv158 = zext i8 %121 to i32
  %122 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), align 1, !tbaa !15
  %conv159 = zext i8 %122 to i32
  %sub160 = sub nsw i32 %conv158, %conv159
  store i32 %sub160, i32* %__result156, align 4, !tbaa !5
  %123 = load i64, i64* %__s2_len147, align 8, !tbaa !17
  %cmp161 = icmp ugt i64 %123, 0
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.193

land.lhs.true.163:                                ; preds = %cond.true.152
  %124 = load i32, i32* %__result156, align 4, !tbaa !5
  %cmp164 = icmp eq i32 %124, 0
  br i1 %cmp164, label %if.then.166, label %if.end.193

if.then.166:                                      ; preds = %land.lhs.true.163
  %125 = load i8*, i8** %__s1154, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i8, i8* %125, i64 1
  %126 = load i8, i8* %arrayidx167, align 1, !tbaa !15
  %conv168 = zext i8 %126 to i32
  %127 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i64 1), align 1, !tbaa !15
  %conv169 = zext i8 %127 to i32
  %sub170 = sub nsw i32 %conv168, %conv169
  store i32 %sub170, i32* %__result156, align 4, !tbaa !5
  %128 = load i64, i64* %__s2_len147, align 8, !tbaa !17
  %cmp171 = icmp ugt i64 %128, 1
  br i1 %cmp171, label %land.lhs.true.173, label %if.end.192

land.lhs.true.173:                                ; preds = %if.then.166
  %129 = load i32, i32* %__result156, align 4, !tbaa !5
  %cmp174 = icmp eq i32 %129, 0
  br i1 %cmp174, label %if.then.176, label %if.end.192

if.then.176:                                      ; preds = %land.lhs.true.173
  %130 = load i8*, i8** %__s1154, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i8, i8* %130, i64 2
  %131 = load i8, i8* %arrayidx177, align 1, !tbaa !15
  %conv178 = zext i8 %131 to i32
  %132 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i64 2), align 1, !tbaa !15
  %conv179 = zext i8 %132 to i32
  %sub180 = sub nsw i32 %conv178, %conv179
  store i32 %sub180, i32* %__result156, align 4, !tbaa !5
  %133 = load i64, i64* %__s2_len147, align 8, !tbaa !17
  %cmp181 = icmp ugt i64 %133, 2
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.191

land.lhs.true.183:                                ; preds = %if.then.176
  %134 = load i32, i32* %__result156, align 4, !tbaa !5
  %cmp184 = icmp eq i32 %134, 0
  br i1 %cmp184, label %if.then.186, label %if.end.191

if.then.186:                                      ; preds = %land.lhs.true.183
  %135 = load i8*, i8** %__s1154, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds i8, i8* %135, i64 3
  %136 = load i8, i8* %arrayidx187, align 1, !tbaa !15
  %conv188 = zext i8 %136 to i32
  %137 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i64 3), align 1, !tbaa !15
  %conv189 = zext i8 %137 to i32
  %sub190 = sub nsw i32 %conv188, %conv189
  store i32 %sub190, i32* %__result156, align 4, !tbaa !5
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.186, %land.lhs.true.183, %if.then.176
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %land.lhs.true.173, %if.then.166
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %land.lhs.true.163, %cond.true.152
  %138 = load i32, i32* %__result156, align 4, !tbaa !5
  store i32 %138, i32* %tmp194, !tbaa !5
  %139 = bitcast i32* %__result156 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i8** %__s1154 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = load i32, i32* %tmp194, !tbaa !5
  br label %cond.end.197

cond.false.195:                                   ; preds = %land.lhs.true.149, %land.rhs.143
  %142 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %143 = load i8*, i8** %142, align 8, !tbaa !1
  %call196 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #1
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.195, %if.end.193
  %cond198 = phi i32 [ %141, %if.end.193 ], [ %call196, %cond.false.195 ]
  store i32 %cond198, i32* %tmp148, !tbaa !5
  %144 = bitcast i64* %__s2_len147 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast i64* %__s1_len145 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = load i32, i32* %tmp148, !tbaa !5
  %cmp199 = icmp ne i32 %146, 0
  br label %land.end.201

land.end.201:                                     ; preds = %cond.end.197, %while.cond.140
  %147 = phi i1 [ false, %while.cond.140 ], [ %cmp199, %cond.end.197 ]
  br i1 %147, label %while.body.202, label %while.end

while.body.202:                                   ; preds = %land.end.201
  %148 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr203 = getelementptr inbounds i8*, i8** %148, i32 1
  store i8** %incdec.ptr203, i8*** %pvp, align 8, !tbaa !1
  br label %while.cond.140

while.end:                                        ; preds = %land.end.201
  %149 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr204 = getelementptr inbounds i8*, i8** %149, i32 1
  store i8** %incdec.ptr204, i8*** %pvp, align 8, !tbaa !1
  %150 = load i8*, i8** %149, align 8, !tbaa !1
  %cmp205 = icmp eq i8* %150, null
  br i1 %cmp205, label %if.then.210, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %while.end
  %151 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %152 = load i8*, i8** %151, align 8, !tbaa !1
  %cmp208 = icmp eq i8* %152, null
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %lor.lhs.false.207, %while.end
  br label %while.end.403

if.end.211:                                       ; preds = %lor.lhs.false.207
  %153 = bitcast i64* %__s1_len213 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #1
  %154 = bitcast i64* %__s2_len215 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %154) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.12 to i64)), i64 1), label %land.lhs.true.217, label %cond.false.263

land.lhs.true.217:                                ; preds = %if.end.211
  store i64 1, i64* %__s2_len215, align 8, !tbaa !17
  %155 = load i64, i64* %__s2_len215, align 8, !tbaa !17
  %cmp218 = icmp ult i64 %155, 4
  br i1 %cmp218, label %cond.true.220, label %cond.false.263

cond.true.220:                                    ; preds = %land.lhs.true.217
  %156 = bitcast i8** %__s1222 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %156) #1
  %157 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %158 = load i8*, i8** %157, align 8, !tbaa !1
  store i8* %158, i8** %__s1222, align 8, !tbaa !1
  %159 = bitcast i32* %__result224 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  %160 = load i8*, i8** %__s1222, align 8, !tbaa !1
  %arrayidx225 = getelementptr inbounds i8, i8* %160, i64 0
  %161 = load i8, i8* %arrayidx225, align 1, !tbaa !15
  %conv226 = zext i8 %161 to i32
  %162 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), align 1, !tbaa !15
  %conv227 = zext i8 %162 to i32
  %sub228 = sub nsw i32 %conv226, %conv227
  store i32 %sub228, i32* %__result224, align 4, !tbaa !5
  %163 = load i64, i64* %__s2_len215, align 8, !tbaa !17
  %cmp229 = icmp ugt i64 %163, 0
  br i1 %cmp229, label %land.lhs.true.231, label %if.end.261

land.lhs.true.231:                                ; preds = %cond.true.220
  %164 = load i32, i32* %__result224, align 4, !tbaa !5
  %cmp232 = icmp eq i32 %164, 0
  br i1 %cmp232, label %if.then.234, label %if.end.261

if.then.234:                                      ; preds = %land.lhs.true.231
  %165 = load i8*, i8** %__s1222, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i8, i8* %165, i64 1
  %166 = load i8, i8* %arrayidx235, align 1, !tbaa !15
  %conv236 = zext i8 %166 to i32
  %167 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i64 1), align 1, !tbaa !15
  %conv237 = zext i8 %167 to i32
  %sub238 = sub nsw i32 %conv236, %conv237
  store i32 %sub238, i32* %__result224, align 4, !tbaa !5
  %168 = load i64, i64* %__s2_len215, align 8, !tbaa !17
  %cmp239 = icmp ugt i64 %168, 1
  br i1 %cmp239, label %land.lhs.true.241, label %if.end.260

land.lhs.true.241:                                ; preds = %if.then.234
  %169 = load i32, i32* %__result224, align 4, !tbaa !5
  %cmp242 = icmp eq i32 %169, 0
  br i1 %cmp242, label %if.then.244, label %if.end.260

if.then.244:                                      ; preds = %land.lhs.true.241
  %170 = load i8*, i8** %__s1222, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds i8, i8* %170, i64 2
  %171 = load i8, i8* %arrayidx245, align 1, !tbaa !15
  %conv246 = zext i8 %171 to i32
  %172 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i64 2), align 1, !tbaa !15
  %conv247 = zext i8 %172 to i32
  %sub248 = sub nsw i32 %conv246, %conv247
  store i32 %sub248, i32* %__result224, align 4, !tbaa !5
  %173 = load i64, i64* %__s2_len215, align 8, !tbaa !17
  %cmp249 = icmp ugt i64 %173, 2
  br i1 %cmp249, label %land.lhs.true.251, label %if.end.259

land.lhs.true.251:                                ; preds = %if.then.244
  %174 = load i32, i32* %__result224, align 4, !tbaa !5
  %cmp252 = icmp eq i32 %174, 0
  br i1 %cmp252, label %if.then.254, label %if.end.259

if.then.254:                                      ; preds = %land.lhs.true.251
  %175 = load i8*, i8** %__s1222, align 8, !tbaa !1
  %arrayidx255 = getelementptr inbounds i8, i8* %175, i64 3
  %176 = load i8, i8* %arrayidx255, align 1, !tbaa !15
  %conv256 = zext i8 %176 to i32
  %177 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i64 3), align 1, !tbaa !15
  %conv257 = zext i8 %177 to i32
  %sub258 = sub nsw i32 %conv256, %conv257
  store i32 %sub258, i32* %__result224, align 4, !tbaa !5
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.254, %land.lhs.true.251, %if.then.244
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %land.lhs.true.241, %if.then.234
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %land.lhs.true.231, %cond.true.220
  %178 = load i32, i32* %__result224, align 4, !tbaa !5
  store i32 %178, i32* %tmp262, !tbaa !5
  %179 = bitcast i32* %__result224 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i8** %__s1222 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = load i32, i32* %tmp262, !tbaa !5
  br label %cond.end.265

cond.false.263:                                   ; preds = %land.lhs.true.217, %if.end.211
  %182 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %183 = load i8*, i8** %182, align 8, !tbaa !1
  %call264 = call i32 @strcmp(i8* %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #1
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.263, %if.end.261
  %cond266 = phi i32 [ %181, %if.end.261 ], [ %call264, %cond.false.263 ]
  store i32 %cond266, i32* %tmp216, !tbaa !5
  %184 = bitcast i64* %__s2_len215 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = bitcast i64* %__s1_len213 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = load i32, i32* %tmp216, !tbaa !5
  %cmp267 = icmp eq i32 %186, 0
  br i1 %cmp267, label %if.then.269, label %if.end.272

if.then.269:                                      ; preds = %cond.end.265
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i32 0, i32 0))
  %187 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags270 = getelementptr inbounds %struct.envelope, %struct.envelope* %187, i32 0, i32 11
  %188 = load i64, i64* %e_flags270, align 8, !tbaa !7
  %or271 = or i64 %188, 8388608
  store i64 %or271, i64* %e_flags270, align 8, !tbaa !7
  br label %while.cond

if.end.272:                                       ; preds = %cond.end.265
  %189 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr273 = getelementptr inbounds i8*, i8** %189, i32 1
  store i8** %incdec.ptr273, i8*** %pvp, align 8, !tbaa !1
  %190 = load i8*, i8** %189, align 8, !tbaa !1
  %191 = load i32, i32* %argc, align 4, !tbaa !5
  %idxprom274 = sext i32 %191 to i64
  %arrayidx275 = getelementptr inbounds [20 x %struct.args], [20 x %struct.args]* %argv, i32 0, i64 %idxprom274
  %a_field = getelementptr inbounds %struct.args, %struct.args* %arrayidx275, i32 0, i32 0
  store i8* %190, i8** %a_field, align 8, !tbaa !18
  %192 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %193 = load i8*, i8** %192, align 8, !tbaa !1
  %cmp276 = icmp ne i8* %193, null
  br i1 %cmp276, label %land.lhs.true.278, label %if.end.402

land.lhs.true.278:                                ; preds = %if.end.272
  %194 = bitcast i64* %__s1_len280 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %194) #1
  %195 = bitcast i64* %__s2_len282 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %195) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.14 to i64)), i64 1), label %land.lhs.true.284, label %cond.false.330

land.lhs.true.284:                                ; preds = %land.lhs.true.278
  store i64 1, i64* %__s2_len282, align 8, !tbaa !17
  %196 = load i64, i64* %__s2_len282, align 8, !tbaa !17
  %cmp285 = icmp ult i64 %196, 4
  br i1 %cmp285, label %cond.true.287, label %cond.false.330

cond.true.287:                                    ; preds = %land.lhs.true.284
  %197 = bitcast i8** %__s1289 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %197) #1
  %198 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %199 = load i8*, i8** %198, align 8, !tbaa !1
  store i8* %199, i8** %__s1289, align 8, !tbaa !1
  %200 = bitcast i32* %__result291 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %200) #1
  %201 = load i8*, i8** %__s1289, align 8, !tbaa !1
  %arrayidx292 = getelementptr inbounds i8, i8* %201, i64 0
  %202 = load i8, i8* %arrayidx292, align 1, !tbaa !15
  %conv293 = zext i8 %202 to i32
  %203 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), align 1, !tbaa !15
  %conv294 = zext i8 %203 to i32
  %sub295 = sub nsw i32 %conv293, %conv294
  store i32 %sub295, i32* %__result291, align 4, !tbaa !5
  %204 = load i64, i64* %__s2_len282, align 8, !tbaa !17
  %cmp296 = icmp ugt i64 %204, 0
  br i1 %cmp296, label %land.lhs.true.298, label %if.end.328

land.lhs.true.298:                                ; preds = %cond.true.287
  %205 = load i32, i32* %__result291, align 4, !tbaa !5
  %cmp299 = icmp eq i32 %205, 0
  br i1 %cmp299, label %if.then.301, label %if.end.328

if.then.301:                                      ; preds = %land.lhs.true.298
  %206 = load i8*, i8** %__s1289, align 8, !tbaa !1
  %arrayidx302 = getelementptr inbounds i8, i8* %206, i64 1
  %207 = load i8, i8* %arrayidx302, align 1, !tbaa !15
  %conv303 = zext i8 %207 to i32
  %208 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i64 1), align 1, !tbaa !15
  %conv304 = zext i8 %208 to i32
  %sub305 = sub nsw i32 %conv303, %conv304
  store i32 %sub305, i32* %__result291, align 4, !tbaa !5
  %209 = load i64, i64* %__s2_len282, align 8, !tbaa !17
  %cmp306 = icmp ugt i64 %209, 1
  br i1 %cmp306, label %land.lhs.true.308, label %if.end.327

land.lhs.true.308:                                ; preds = %if.then.301
  %210 = load i32, i32* %__result291, align 4, !tbaa !5
  %cmp309 = icmp eq i32 %210, 0
  br i1 %cmp309, label %if.then.311, label %if.end.327

if.then.311:                                      ; preds = %land.lhs.true.308
  %211 = load i8*, i8** %__s1289, align 8, !tbaa !1
  %arrayidx312 = getelementptr inbounds i8, i8* %211, i64 2
  %212 = load i8, i8* %arrayidx312, align 1, !tbaa !15
  %conv313 = zext i8 %212 to i32
  %213 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i64 2), align 1, !tbaa !15
  %conv314 = zext i8 %213 to i32
  %sub315 = sub nsw i32 %conv313, %conv314
  store i32 %sub315, i32* %__result291, align 4, !tbaa !5
  %214 = load i64, i64* %__s2_len282, align 8, !tbaa !17
  %cmp316 = icmp ugt i64 %214, 2
  br i1 %cmp316, label %land.lhs.true.318, label %if.end.326

land.lhs.true.318:                                ; preds = %if.then.311
  %215 = load i32, i32* %__result291, align 4, !tbaa !5
  %cmp319 = icmp eq i32 %215, 0
  br i1 %cmp319, label %if.then.321, label %if.end.326

if.then.321:                                      ; preds = %land.lhs.true.318
  %216 = load i8*, i8** %__s1289, align 8, !tbaa !1
  %arrayidx322 = getelementptr inbounds i8, i8* %216, i64 3
  %217 = load i8, i8* %arrayidx322, align 1, !tbaa !15
  %conv323 = zext i8 %217 to i32
  %218 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i64 3), align 1, !tbaa !15
  %conv324 = zext i8 %218 to i32
  %sub325 = sub nsw i32 %conv323, %conv324
  store i32 %sub325, i32* %__result291, align 4, !tbaa !5
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.321, %land.lhs.true.318, %if.then.311
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %land.lhs.true.308, %if.then.301
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %land.lhs.true.298, %cond.true.287
  %219 = load i32, i32* %__result291, align 4, !tbaa !5
  store i32 %219, i32* %tmp329, !tbaa !5
  %220 = bitcast i32* %__result291 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast i8** %__s1289 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = load i32, i32* %tmp329, !tbaa !5
  br label %cond.end.332

cond.false.330:                                   ; preds = %land.lhs.true.284, %land.lhs.true.278
  %223 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %224 = load i8*, i8** %223, align 8, !tbaa !1
  %call331 = call i32 @strcmp(i8* %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #1
  br label %cond.end.332

cond.end.332:                                     ; preds = %cond.false.330, %if.end.328
  %cond333 = phi i32 [ %222, %if.end.328 ], [ %call331, %cond.false.330 ]
  store i32 %cond333, i32* %tmp283, !tbaa !5
  %225 = bitcast i64* %__s2_len282 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast i64* %__s1_len280 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %227 = load i32, i32* %tmp283, !tbaa !5
  %cmp334 = icmp eq i32 %227, 0
  br i1 %cmp334, label %land.lhs.true.336, label %if.end.402

land.lhs.true.336:                                ; preds = %cond.end.332
  %228 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr337 = getelementptr inbounds i8*, i8** %228, i32 1
  store i8** %incdec.ptr337, i8*** %pvp, align 8, !tbaa !1
  %229 = load i8*, i8** %incdec.ptr337, align 8, !tbaa !1
  %cmp338 = icmp eq i8* %229, null
  br i1 %cmp338, label %if.then.398, label %lor.lhs.false.340

lor.lhs.false.340:                                ; preds = %land.lhs.true.336
  %230 = bitcast i64* %__s1_len342 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %230) #1
  %231 = bitcast i64* %__s2_len344 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %231) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.12 to i64)), i64 1), label %land.lhs.true.346, label %cond.false.392

land.lhs.true.346:                                ; preds = %lor.lhs.false.340
  store i64 1, i64* %__s2_len344, align 8, !tbaa !17
  %232 = load i64, i64* %__s2_len344, align 8, !tbaa !17
  %cmp347 = icmp ult i64 %232, 4
  br i1 %cmp347, label %cond.true.349, label %cond.false.392

cond.true.349:                                    ; preds = %land.lhs.true.346
  %233 = bitcast i8** %__s1351 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %233) #1
  %234 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %235 = load i8*, i8** %234, align 8, !tbaa !1
  store i8* %235, i8** %__s1351, align 8, !tbaa !1
  %236 = bitcast i32* %__result353 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %236) #1
  %237 = load i8*, i8** %__s1351, align 8, !tbaa !1
  %arrayidx354 = getelementptr inbounds i8, i8* %237, i64 0
  %238 = load i8, i8* %arrayidx354, align 1, !tbaa !15
  %conv355 = zext i8 %238 to i32
  %239 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), align 1, !tbaa !15
  %conv356 = zext i8 %239 to i32
  %sub357 = sub nsw i32 %conv355, %conv356
  store i32 %sub357, i32* %__result353, align 4, !tbaa !5
  %240 = load i64, i64* %__s2_len344, align 8, !tbaa !17
  %cmp358 = icmp ugt i64 %240, 0
  br i1 %cmp358, label %land.lhs.true.360, label %if.end.390

land.lhs.true.360:                                ; preds = %cond.true.349
  %241 = load i32, i32* %__result353, align 4, !tbaa !5
  %cmp361 = icmp eq i32 %241, 0
  br i1 %cmp361, label %if.then.363, label %if.end.390

if.then.363:                                      ; preds = %land.lhs.true.360
  %242 = load i8*, i8** %__s1351, align 8, !tbaa !1
  %arrayidx364 = getelementptr inbounds i8, i8* %242, i64 1
  %243 = load i8, i8* %arrayidx364, align 1, !tbaa !15
  %conv365 = zext i8 %243 to i32
  %244 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i64 1), align 1, !tbaa !15
  %conv366 = zext i8 %244 to i32
  %sub367 = sub nsw i32 %conv365, %conv366
  store i32 %sub367, i32* %__result353, align 4, !tbaa !5
  %245 = load i64, i64* %__s2_len344, align 8, !tbaa !17
  %cmp368 = icmp ugt i64 %245, 1
  br i1 %cmp368, label %land.lhs.true.370, label %if.end.389

land.lhs.true.370:                                ; preds = %if.then.363
  %246 = load i32, i32* %__result353, align 4, !tbaa !5
  %cmp371 = icmp eq i32 %246, 0
  br i1 %cmp371, label %if.then.373, label %if.end.389

if.then.373:                                      ; preds = %land.lhs.true.370
  %247 = load i8*, i8** %__s1351, align 8, !tbaa !1
  %arrayidx374 = getelementptr inbounds i8, i8* %247, i64 2
  %248 = load i8, i8* %arrayidx374, align 1, !tbaa !15
  %conv375 = zext i8 %248 to i32
  %249 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i64 2), align 1, !tbaa !15
  %conv376 = zext i8 %249 to i32
  %sub377 = sub nsw i32 %conv375, %conv376
  store i32 %sub377, i32* %__result353, align 4, !tbaa !5
  %250 = load i64, i64* %__s2_len344, align 8, !tbaa !17
  %cmp378 = icmp ugt i64 %250, 2
  br i1 %cmp378, label %land.lhs.true.380, label %if.end.388

land.lhs.true.380:                                ; preds = %if.then.373
  %251 = load i32, i32* %__result353, align 4, !tbaa !5
  %cmp381 = icmp eq i32 %251, 0
  br i1 %cmp381, label %if.then.383, label %if.end.388

if.then.383:                                      ; preds = %land.lhs.true.380
  %252 = load i8*, i8** %__s1351, align 8, !tbaa !1
  %arrayidx384 = getelementptr inbounds i8, i8* %252, i64 3
  %253 = load i8, i8* %arrayidx384, align 1, !tbaa !15
  %conv385 = zext i8 %253 to i32
  %254 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i64 3), align 1, !tbaa !15
  %conv386 = zext i8 %254 to i32
  %sub387 = sub nsw i32 %conv385, %conv386
  store i32 %sub387, i32* %__result353, align 4, !tbaa !5
  br label %if.end.388

if.end.388:                                       ; preds = %if.then.383, %land.lhs.true.380, %if.then.373
  br label %if.end.389

if.end.389:                                       ; preds = %if.end.388, %land.lhs.true.370, %if.then.363
  br label %if.end.390

if.end.390:                                       ; preds = %if.end.389, %land.lhs.true.360, %cond.true.349
  %255 = load i32, i32* %__result353, align 4, !tbaa !5
  store i32 %255, i32* %tmp391, !tbaa !5
  %256 = bitcast i32* %__result353 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  %257 = bitcast i8** %__s1351 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #1
  %258 = load i32, i32* %tmp391, !tbaa !5
  br label %cond.end.394

cond.false.392:                                   ; preds = %land.lhs.true.346, %lor.lhs.false.340
  %259 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %260 = load i8*, i8** %259, align 8, !tbaa !1
  %call393 = call i32 @strcmp(i8* %260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #1
  br label %cond.end.394

cond.end.394:                                     ; preds = %cond.false.392, %if.end.390
  %cond395 = phi i32 [ %258, %if.end.390 ], [ %call393, %cond.false.392 ]
  store i32 %cond395, i32* %tmp345, !tbaa !5
  %261 = bitcast i64* %__s2_len344 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #1
  %262 = bitcast i64* %__s1_len342 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  %263 = load i32, i32* %tmp345, !tbaa !5
  %cmp396 = icmp ne i32 %263, 0
  br i1 %cmp396, label %if.then.398, label %if.end.402

if.then.398:                                      ; preds = %cond.end.394, %land.lhs.true.336
  %264 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %265 = load i8*, i8** %264, align 8, !tbaa !1
  %266 = load i32, i32* %argc, align 4, !tbaa !5
  %idxprom399 = sext i32 %266 to i64
  %arrayidx400 = getelementptr inbounds [20 x %struct.args], [20 x %struct.args]* %argv, i32 0, i64 %idxprom399
  %a_value = getelementptr inbounds %struct.args, %struct.args* %arrayidx400, i32 0, i32 1
  store i8* %265, i8** %a_value, align 8, !tbaa !20
  %267 = load i32, i32* %argc, align 4, !tbaa !5
  %inc401 = add nsw i32 %267, 1
  store i32 %inc401, i32* %argc, align 4, !tbaa !5
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.398, %cond.end.394, %cond.end.332, %if.end.272
  br label %while.cond

while.end.403:                                    ; preds = %if.then.210, %land.end
  br label %if.end.404

if.end.404:                                       ; preds = %while.end.403, %land.lhs.true.58, %land.lhs.true.53, %if.end.50
  %268 = load i8*, i8** %type, align 8, !tbaa !1
  %cmp405 = icmp eq i8* %268, null
  br i1 %cmp405, label %if.then.407, label %if.end.408

if.then.407:                                      ; preds = %if.end.404
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8** %type, align 8, !tbaa !1
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.407, %if.end.404
  %269 = load i8*, i8** %subtype, align 8, !tbaa !1
  %cmp409 = icmp eq i8* %269, null
  br i1 %cmp409, label %if.then.411, label %if.end.412

if.then.411:                                      ; preds = %if.end.408
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8** %subtype, align 8, !tbaa !1
  br label %if.end.412

if.end.412:                                       ; preds = %if.then.411, %if.end.408
  %270 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and413 = and i32 %270, -3
  store i32 %and413, i32* %flags.addr, align 4, !tbaa !5
  %arraydecay414 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %271 = load i8*, i8** %type, align 8, !tbaa !1
  %272 = load i8*, i8** %subtype, align 8, !tbaa !1
  %call415 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay414, i64 2048, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* %271, i8* %272)
  %arraydecay416 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call417 = call i32 @wordinclass(i8* %arraydecay416, i32 110)
  %tobool418 = icmp ne i32 %call417, 0
  br i1 %tobool418, label %if.then.425, label %lor.lhs.false.419

lor.lhs.false.419:                                ; preds = %if.end.412
  %273 = load i8*, i8** %cte, align 8, !tbaa !1
  %cmp420 = icmp ne i8* %273, null
  br i1 %cmp420, label %land.lhs.true.422, label %if.end.427

land.lhs.true.422:                                ; preds = %lor.lhs.false.419
  %274 = load i8*, i8** %cte, align 8, !tbaa !1
  %call423 = call i32 @wordinclass(i8* %274, i32 101)
  %tobool424 = icmp ne i32 %call423, 0
  br i1 %tobool424, label %if.end.427, label %if.then.425

if.then.425:                                      ; preds = %land.lhs.true.422, %if.end.412
  %275 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %or426 = or i32 %275, 1
  store i32 %or426, i32* %flags.addr, align 4, !tbaa !5
  br label %if.end.427

if.end.427:                                       ; preds = %if.then.425, %land.lhs.true.422, %lor.lhs.false.419
  %arraydecay428 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call429 = call i32 @wordinclass(i8* %arraydecay428, i32 113)
  %tobool430 = icmp ne i32 %call429, 0
  br i1 %tobool430, label %if.then.434, label %lor.lhs.false.431

lor.lhs.false.431:                                ; preds = %if.end.427
  %276 = load i8*, i8** %type, align 8, !tbaa !1
  %call432 = call i32 @wordinclass(i8* %276, i32 113)
  %tobool433 = icmp ne i32 %call432, 0
  br i1 %tobool433, label %if.then.434, label %if.end.435

if.then.434:                                      ; preds = %lor.lhs.false.431, %if.end.427
  store i32 1, i32* %use_qp, align 4, !tbaa !5
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.434, %lor.lhs.false.431
  %277 = load i8*, i8** %type, align 8, !tbaa !1
  %call436 = call i32 @sm_strcasecmp(i8* %277, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0))
  %cmp437 = icmp eq i32 %call436, 0
  br i1 %cmp437, label %land.lhs.true.439, label %if.end.700

land.lhs.true.439:                                ; preds = %if.end.435
  %278 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and440 = and i32 %278, 1
  %cmp441 = icmp ne i32 %and440, 0
  br i1 %cmp441, label %lor.lhs.false.443, label %land.lhs.true.447

lor.lhs.false.443:                                ; preds = %land.lhs.true.439
  %279 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and444 = and i32 %279, 4
  %cmp445 = icmp ne i32 %and444, 0
  br i1 %cmp445, label %land.lhs.true.447, label %if.end.700

land.lhs.true.447:                                ; preds = %lor.lhs.false.443, %land.lhs.true.439
  %280 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags448 = getelementptr inbounds %struct.envelope, %struct.envelope* %280, i32 0, i32 11
  %281 = load i64, i64* %e_flags448, align 8, !tbaa !7
  %and449 = and i64 %281, 268435456
  %cmp450 = icmp ne i64 %and449, 0
  br i1 %cmp450, label %if.end.700, label %if.then.452

if.then.452:                                      ; preds = %land.lhs.true.447
  %282 = load i8*, i8** %subtype, align 8, !tbaa !1
  %call453 = call i32 @sm_strcasecmp(i8* %282, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0))
  %cmp454 = icmp eq i32 %call453, 0
  br i1 %cmp454, label %if.then.456, label %if.end.458

if.then.456:                                      ; preds = %if.then.452
  %283 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %or457 = or i32 %283, 2
  store i32 %or457, i32* %flags.addr, align 4, !tbaa !5
  br label %if.end.458

if.end.458:                                       ; preds = %if.then.456, %if.then.452
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.459

for.cond.459:                                     ; preds = %for.inc.471, %if.end.458
  %284 = load i32, i32* %i, align 4, !tbaa !5
  %285 = load i32, i32* %argc, align 4, !tbaa !5
  %cmp460 = icmp slt i32 %284, %285
  br i1 %cmp460, label %for.body.462, label %for.end.473

for.body.462:                                     ; preds = %for.cond.459
  %286 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom463 = sext i32 %286 to i64
  %arrayidx464 = getelementptr inbounds [20 x %struct.args], [20 x %struct.args]* %argv, i32 0, i64 %idxprom463
  %a_field465 = getelementptr inbounds %struct.args, %struct.args* %arrayidx464, i32 0, i32 0
  %287 = load i8*, i8** %a_field465, align 8, !tbaa !18
  %call466 = call i32 @sm_strcasecmp(i8* %287, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0))
  %cmp467 = icmp eq i32 %call466, 0
  br i1 %cmp467, label %if.then.469, label %if.end.470

if.then.469:                                      ; preds = %for.body.462
  br label %for.end.473

if.end.470:                                       ; preds = %for.body.462
  br label %for.inc.471

for.inc.471:                                      ; preds = %if.end.470
  %288 = load i32, i32* %i, align 4, !tbaa !5
  %inc472 = add nsw i32 %288, 1
  store i32 %inc472, i32* %i, align 4, !tbaa !5
  br label %for.cond.459

for.end.473:                                      ; preds = %if.then.469, %for.cond.459
  %289 = load i32, i32* %i, align 4, !tbaa !5
  %290 = load i32, i32* %argc, align 4, !tbaa !5
  %cmp474 = icmp sge i32 %289, %290
  br i1 %cmp474, label %if.then.482, label %lor.lhs.false.476

lor.lhs.false.476:                                ; preds = %for.end.473
  %291 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom477 = sext i32 %291 to i64
  %arrayidx478 = getelementptr inbounds [20 x %struct.args], [20 x %struct.args]* %argv, i32 0, i64 %idxprom477
  %a_value479 = getelementptr inbounds %struct.args, %struct.args* %arrayidx478, i32 0, i32 1
  %292 = load i8*, i8** %a_value479, align 8, !tbaa !20
  %cmp480 = icmp eq i8* %292, null
  br i1 %cmp480, label %if.then.482, label %if.else.488

if.then.482:                                      ; preds = %lor.lhs.false.476, %for.end.473
  %293 = load i32, i32* %i, align 4, !tbaa !5
  %294 = load i32, i32* %argc, align 4, !tbaa !5
  %cmp483 = icmp sge i32 %293, %294
  %cond485 = select i1 %cmp483, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)
  %295 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i8* %cond485, i8* %295)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  %296 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags486 = getelementptr inbounds %struct.envelope, %struct.envelope* %296, i32 0, i32 11
  %297 = load i64, i64* %e_flags486, align 8, !tbaa !7
  %or487 = or i64 %297, 8388608
  store i64 %or487, i64* %e_flags486, align 8, !tbaa !7
  br label %if.end.492

if.else.488:                                      ; preds = %lor.lhs.false.476
  %298 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom489 = sext i32 %298 to i64
  %arrayidx490 = getelementptr inbounds [20 x %struct.args], [20 x %struct.args]* %argv, i32 0, i64 %idxprom489
  %a_value491 = getelementptr inbounds %struct.args, %struct.args* %arrayidx490, i32 0, i32 1
  %299 = load i8*, i8** %a_value491, align 8, !tbaa !20
  store i8* %299, i8** %p, align 8, !tbaa !1
  %300 = load i8*, i8** %p, align 8, !tbaa !1
  call void @stripquotes(i8* %300)
  br label %if.end.492

if.end.492:                                       ; preds = %if.else.488, %if.then.482
  %arraydecay493 = getelementptr inbounds [128 x i8], [128 x i8]* %bbuf, i32 0, i32 0
  %301 = load i8*, i8** %p, align 8, !tbaa !1
  %call494 = call i64 @sm_strlcpy(i8* %arraydecay493, i8* %301, i64 128)
  %cmp495 = icmp uge i64 %call494, 128
  br i1 %cmp495, label %if.then.497, label %if.end.500

if.then.497:                                      ; preds = %if.end.492
  %302 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i32 0, i32 0), i8* %302)
  %303 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags498 = getelementptr inbounds %struct.envelope, %struct.envelope* %303, i32 0, i32 11
  %304 = load i64, i64* %e_flags498, align 8, !tbaa !7
  %or499 = or i64 %304, 8388608
  store i64 %or499, i64* %e_flags498, align 8, !tbaa !7
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.497, %if.end.492
  %305 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv501 = zext i8 %305 to i32
  %cmp502 = icmp sge i32 %conv501, 1
  br i1 %cmp502, label %land.lhs.true.504, label %if.end.508

land.lhs.true.504:                                ; preds = %if.end.500
  %306 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool505 = icmp ne i32 %306, 0
  br i1 %tobool505, label %if.end.508, label %if.then.506

if.then.506:                                      ; preds = %land.lhs.true.504
  %arraydecay507 = getelementptr inbounds [128 x i8], [128 x i8]* %bbuf, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i32 0, i32 0), i8* %arraydecay507)
  br label %if.end.508

if.end.508:                                       ; preds = %if.then.506, %land.lhs.true.504, %if.end.500
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.509

for.cond.509:                                     ; preds = %for.inc.519, %if.end.508
  %307 = load i32, i32* %i, align 4, !tbaa !5
  %cmp510 = icmp slt i32 %307, 20
  br i1 %cmp510, label %for.body.512, label %for.end.521

for.body.512:                                     ; preds = %for.cond.509
  %308 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom513 = sext i32 %308 to i64
  %309 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %arrayidx514 = getelementptr inbounds i8*, i8** %309, i64 %idxprom513
  %310 = load i8*, i8** %arrayidx514, align 8, !tbaa !1
  %cmp515 = icmp eq i8* %310, null
  br i1 %cmp515, label %if.then.517, label %if.end.518

if.then.517:                                      ; preds = %for.body.512
  br label %for.end.521

if.end.518:                                       ; preds = %for.body.512
  br label %for.inc.519

for.inc.519:                                      ; preds = %if.end.518
  %311 = load i32, i32* %i, align 4, !tbaa !5
  %inc520 = add nsw i32 %311, 1
  store i32 %inc520, i32* %i, align 4, !tbaa !5
  br label %for.cond.509

for.end.521:                                      ; preds = %if.then.517, %for.cond.509
  %312 = load i32, i32* %i, align 4, !tbaa !5
  %cmp522 = icmp sge i32 %312, 20
  br i1 %cmp522, label %if.then.524, label %if.else.540

if.then.524:                                      ; preds = %for.end.521
  %313 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv525 = zext i8 %313 to i32
  %cmp526 = icmp sge i32 %conv525, 4
  br i1 %cmp526, label %land.lhs.true.528, label %if.end.531

land.lhs.true.528:                                ; preds = %if.then.524
  %314 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool529 = icmp ne i32 %314, 0
  br i1 %tobool529, label %if.end.531, label %if.then.530

if.then.530:                                      ; preds = %land.lhs.true.528
  %315 = load i32, i32* %i, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i32 %315)
  br label %if.end.531

if.end.531:                                       ; preds = %if.then.530, %land.lhs.true.528, %if.then.524
  %316 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags532 = getelementptr inbounds %struct.envelope, %struct.envelope* %316, i32 0, i32 11
  %317 = load i64, i64* %e_flags532, align 8, !tbaa !7
  %and533 = and i64 %317, 268435456
  %cmp534 = icmp ne i64 %and533, 0
  br i1 %cmp534, label %if.end.537, label %if.then.536

if.then.536:                                      ; preds = %if.end.531
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.537

if.end.537:                                       ; preds = %if.then.536, %if.end.531
  %318 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags538 = getelementptr inbounds %struct.envelope, %struct.envelope* %318, i32 0, i32 11
  %319 = load i64, i64* %e_flags538, align 8, !tbaa !7
  %or539 = or i64 %319, 276824064
  store i64 %or539, i64* %e_flags538, align 8, !tbaa !7
  br label %if.end.546

if.else.540:                                      ; preds = %for.end.521
  %arraydecay541 = getelementptr inbounds [128 x i8], [128 x i8]* %bbuf, i32 0, i32 0
  %320 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom542 = sext i32 %320 to i64
  %321 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %arrayidx543 = getelementptr inbounds i8*, i8** %321, i64 %idxprom542
  store i8* %arraydecay541, i8** %arrayidx543, align 8, !tbaa !1
  %322 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %322, 1
  %idxprom544 = sext i32 %add to i64
  %323 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %arrayidx545 = getelementptr inbounds i8*, i8** %323, i64 %idxprom544
  store i8* null, i8** %arrayidx545, align 8, !tbaa !1
  br label %if.end.546

if.end.546:                                       ; preds = %if.else.540, %if.end.537
  %324 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %324, i32 0, i32 0
  %325 = load i64, i64* %mci_flags, align 8, !tbaa !21
  %or547 = or i64 %325, 16384
  store i64 %or547, i64* %mci_flags, align 8, !tbaa !21
  %326 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call548 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), %struct.mailer_con_info* %326)
  %tobool549 = icmp ne i32 %call548, 0
  br i1 %tobool549, label %if.end.551, label %if.then.550

if.then.550:                                      ; preds = %if.end.546
  br label %writeerr

if.end.551:                                       ; preds = %if.end.546
  %327 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags552 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %327, i32 0, i32 0
  %328 = load i64, i64* %mci_flags552, align 8, !tbaa !21
  %and553 = and i64 %328, -513
  store i64 %and553, i64* %mci_flags552, align 8, !tbaa !21
  store i32 3, i32* %bt, align 4, !tbaa !5
  br label %while.cond.554

while.cond.554:                                   ; preds = %if.end.579, %if.end.551
  %329 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp = getelementptr inbounds %struct.envelope, %struct.envelope* %329, i32 0, i32 24
  %330 = load %struct.sm_file*, %struct.sm_file** %e_dfp, align 8, !tbaa !23
  %arraydecay555 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call556 = call i32 @sm_io_fgets(%struct.sm_file* %330, i32 -2, i8* %arraydecay555, i32 2048)
  store i32 %call556, i32* %blen, align 4, !tbaa !5
  %cmp557 = icmp sge i32 %call556, 0
  br i1 %cmp557, label %while.body.559, label %while.end.580

while.body.559:                                   ; preds = %while.cond.554
  %arraydecay560 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %331 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %call561 = call i32 @mimeboundary(i8* %arraydecay560, i8** %331)
  store i32 %call561, i32* %bt, align 4, !tbaa !5
  %332 = load i32, i32* %bt, align 4, !tbaa !5
  %cmp562 = icmp ne i32 %332, 1
  br i1 %cmp562, label %if.then.564, label %if.end.565

if.then.564:                                      ; preds = %while.body.559
  br label %while.end.580

if.end.565:                                       ; preds = %while.body.559
  %arraydecay566 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %333 = load i32, i32* %blen, align 4, !tbaa !5
  %conv567 = sext i32 %333 to i64
  %334 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call568 = call i32 @putxline(i8* %arraydecay566, i64 %conv567, %struct.mailer_con_info* %334, i32 3)
  %tobool569 = icmp ne i32 %call568, 0
  br i1 %tobool569, label %if.end.571, label %if.then.570

if.then.570:                                      ; preds = %if.end.565
  br label %writeerr

if.end.571:                                       ; preds = %if.end.565
  %335 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv572 = zext i8 %335 to i32
  %cmp573 = icmp sge i32 %conv572, 99
  br i1 %cmp573, label %land.lhs.true.575, label %if.end.579

land.lhs.true.575:                                ; preds = %if.end.571
  %336 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool576 = icmp ne i32 %336, 0
  br i1 %tobool576, label %if.end.579, label %if.then.577

if.then.577:                                      ; preds = %land.lhs.true.575
  %arraydecay578 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* %arraydecay578)
  br label %if.end.579

if.end.579:                                       ; preds = %if.then.577, %land.lhs.true.575, %if.end.571
  br label %while.cond.554

while.end.580:                                    ; preds = %if.then.564, %while.cond.554
  %337 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp581 = getelementptr inbounds %struct.envelope, %struct.envelope* %337, i32 0, i32 24
  %338 = load %struct.sm_file*, %struct.sm_file** %e_dfp581, align 8, !tbaa !23
  %f_flags = getelementptr inbounds %struct.sm_file, %struct.sm_file* %338, i32 0, i32 4
  %339 = load i64, i64* %f_flags, align 8, !tbaa !24
  %and582 = and i64 %339, 128
  %cmp583 = icmp ne i64 %and582, 0
  br i1 %cmp583, label %if.then.585, label %if.end.586

if.then.585:                                      ; preds = %while.end.580
  store i32 3, i32* %bt, align 4, !tbaa !5
  br label %if.end.586

if.end.586:                                       ; preds = %if.then.585, %while.end.580
  br label %while.cond.587

while.cond.587:                                   ; preds = %cleanup.cont, %if.end.586
  %340 = load i32, i32* %bt, align 4, !tbaa !5
  %cmp588 = icmp ne i32 %340, 3
  br i1 %cmp588, label %while.body.590, label %while.end.635

while.body.590:                                   ; preds = %while.cond.587
  %341 = bitcast %struct.header** %hdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %341) #1
  store %struct.header* null, %struct.header** %hdr, align 8, !tbaa !1
  %arraydecay592 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %arraydecay593 = getelementptr inbounds [128 x i8], [128 x i8]* %bbuf, i32 0, i32 0
  %call594 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay592, i64 2048, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %arraydecay593)
  %arraydecay595 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %342 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call596 = call i32 @putline(i8* %arraydecay595, %struct.mailer_con_info* %342)
  %tobool597 = icmp ne i32 %call596, 0
  br i1 %tobool597, label %if.end.599, label %if.then.598

if.then.598:                                      ; preds = %while.body.590
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup

if.end.599:                                       ; preds = %while.body.590
  %343 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv600 = zext i8 %343 to i32
  %cmp601 = icmp sge i32 %conv600, 35
  br i1 %cmp601, label %land.lhs.true.603, label %if.end.607

land.lhs.true.603:                                ; preds = %if.end.599
  %344 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool604 = icmp ne i32 %344, 0
  br i1 %tobool604, label %if.end.607, label %if.then.605

if.then.605:                                      ; preds = %land.lhs.true.603
  %arraydecay606 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8* %arraydecay606)
  br label %if.end.607

if.end.607:                                       ; preds = %if.then.605, %land.lhs.true.603, %if.end.599
  %345 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp608 = getelementptr inbounds %struct.envelope, %struct.envelope* %345, i32 0, i32 24
  %346 = load %struct.sm_file*, %struct.sm_file** %e_dfp608, align 8, !tbaa !23
  %347 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @collect(%struct.sm_file* %346, i32 0, %struct.header** %hdr, %struct.envelope* %347, i32 0)
  %348 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv609 = zext i8 %348 to i32
  %cmp610 = icmp sge i32 %conv609, 101
  br i1 %cmp610, label %land.lhs.true.612, label %if.end.616

land.lhs.true.612:                                ; preds = %if.end.607
  %349 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool613 = icmp ne i32 %349, 0
  br i1 %tobool613, label %if.end.616, label %if.then.614

if.then.614:                                      ; preds = %land.lhs.true.612
  %350 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call615 = call i32 @putline(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), %struct.mailer_con_info* %350)
  br label %if.end.616

if.end.616:                                       ; preds = %if.then.614, %land.lhs.true.612, %if.end.607
  %351 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %352 = load %struct.header*, %struct.header** %hdr, align 8, !tbaa !1
  %353 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %354 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %call617 = call i32 @putheader(%struct.mailer_con_info* %351, %struct.header* %352, %struct.envelope* %353, i32 %354)
  %tobool618 = icmp ne i32 %call617, 0
  br i1 %tobool618, label %if.end.620, label %if.then.619

if.then.619:                                      ; preds = %if.end.616
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup

if.end.620:                                       ; preds = %if.end.616
  %355 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv621 = zext i8 %355 to i32
  %cmp622 = icmp sge i32 %conv621, 101
  br i1 %cmp622, label %land.lhs.true.624, label %if.end.628

land.lhs.true.624:                                ; preds = %if.end.620
  %356 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool625 = icmp ne i32 %356, 0
  br i1 %tobool625, label %if.end.628, label %if.then.626

if.then.626:                                      ; preds = %land.lhs.true.624
  %357 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call627 = call i32 @putline(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct.mailer_con_info* %357)
  br label %if.end.628

if.end.628:                                       ; preds = %if.then.626, %land.lhs.true.624, %if.end.620
  %358 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %359 = load %struct.header*, %struct.header** %hdr, align 8, !tbaa !1
  %360 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %361 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %362 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %363 = load i32, i32* %level.addr, align 4, !tbaa !5
  %add629 = add nsw i32 %363, 1
  %call630 = call i32 @mime8to7(%struct.mailer_con_info* %358, %struct.header* %359, %struct.envelope* %360, i8** %361, i32 %362, i32 %add629)
  store i32 %call630, i32* %bt, align 4, !tbaa !5
  %364 = load i32, i32* %bt, align 4, !tbaa !5
  %cmp631 = icmp eq i32 %364, -1
  br i1 %cmp631, label %if.then.633, label %if.end.634

if.then.633:                                      ; preds = %if.end.628
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup

if.end.634:                                       ; preds = %if.end.628
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.633, %if.then.619, %if.then.598, %if.end.634
  %365 = bitcast %struct.header** %hdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %365) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1338 [
    i32 0, label %cleanup.cont
    i32 18, label %writeerr
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond.587

while.end.635:                                    ; preds = %while.cond.587
  %arraydecay636 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %arraydecay637 = getelementptr inbounds [128 x i8], [128 x i8]* %bbuf, i32 0, i32 0
  %call638 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay636, i64 2048, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %arraydecay637, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  %arraydecay639 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %366 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call640 = call i32 @putline(i8* %arraydecay639, %struct.mailer_con_info* %366)
  %tobool641 = icmp ne i32 %call640, 0
  br i1 %tobool641, label %if.end.643, label %if.then.642

if.then.642:                                      ; preds = %while.end.635
  br label %writeerr

if.end.643:                                       ; preds = %while.end.635
  %367 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv644 = zext i8 %367 to i32
  %cmp645 = icmp sge i32 %conv644, 35
  br i1 %cmp645, label %land.lhs.true.647, label %if.end.651

land.lhs.true.647:                                ; preds = %if.end.643
  %368 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool648 = icmp ne i32 %368, 0
  br i1 %tobool648, label %if.end.651, label %if.then.649

if.then.649:                                      ; preds = %land.lhs.true.647
  %arraydecay650 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8* %arraydecay650)
  br label %if.end.651

if.end.651:                                       ; preds = %if.then.649, %land.lhs.true.647, %if.end.643
  %369 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom652 = sext i32 %369 to i64
  %370 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %arrayidx653 = getelementptr inbounds i8*, i8** %370, i64 %idxprom652
  store i8* null, i8** %arrayidx653, align 8, !tbaa !1
  %371 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags654 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %371, i32 0, i32 0
  %372 = load i64, i64* %mci_flags654, align 8, !tbaa !21
  %and655 = and i64 %372, -16385
  store i64 %and655, i64* %mci_flags654, align 8, !tbaa !21
  br label %while.cond.656

while.cond.656:                                   ; preds = %if.end.682, %if.end.651
  %373 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp657 = getelementptr inbounds %struct.envelope, %struct.envelope* %373, i32 0, i32 24
  %374 = load %struct.sm_file*, %struct.sm_file** %e_dfp657, align 8, !tbaa !23
  %arraydecay658 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call659 = call i32 @sm_io_fgets(%struct.sm_file* %374, i32 -2, i8* %arraydecay658, i32 2048)
  store i32 %call659, i32* %blen, align 4, !tbaa !5
  %cmp660 = icmp sge i32 %call659, 0
  br i1 %cmp660, label %while.body.662, label %while.end.683

while.body.662:                                   ; preds = %while.cond.656
  %arraydecay663 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %375 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %call664 = call i32 @mimeboundary(i8* %arraydecay663, i8** %375)
  store i32 %call664, i32* %bt, align 4, !tbaa !5
  %376 = load i32, i32* %bt, align 4, !tbaa !5
  %cmp665 = icmp ne i32 %376, 1
  br i1 %cmp665, label %if.then.667, label %if.end.668

if.then.667:                                      ; preds = %while.body.662
  br label %while.end.683

if.end.668:                                       ; preds = %while.body.662
  %arraydecay669 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %377 = load i32, i32* %blen, align 4, !tbaa !5
  %conv670 = sext i32 %377 to i64
  %378 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call671 = call i32 @putxline(i8* %arraydecay669, i64 %conv670, %struct.mailer_con_info* %378, i32 3)
  %tobool672 = icmp ne i32 %call671, 0
  br i1 %tobool672, label %if.end.674, label %if.then.673

if.then.673:                                      ; preds = %if.end.668
  br label %writeerr

if.end.674:                                       ; preds = %if.end.668
  %379 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv675 = zext i8 %379 to i32
  %cmp676 = icmp sge i32 %conv675, 99
  br i1 %cmp676, label %land.lhs.true.678, label %if.end.682

land.lhs.true.678:                                ; preds = %if.end.674
  %380 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool679 = icmp ne i32 %380, 0
  br i1 %tobool679, label %if.end.682, label %if.then.680

if.then.680:                                      ; preds = %land.lhs.true.678
  %arraydecay681 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* %arraydecay681)
  br label %if.end.682

if.end.682:                                       ; preds = %if.then.680, %land.lhs.true.678, %if.end.674
  br label %while.cond.656

while.end.683:                                    ; preds = %if.then.667, %while.cond.656
  %381 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp684 = getelementptr inbounds %struct.envelope, %struct.envelope* %381, i32 0, i32 24
  %382 = load %struct.sm_file*, %struct.sm_file** %e_dfp684, align 8, !tbaa !23
  %f_flags685 = getelementptr inbounds %struct.sm_file, %struct.sm_file* %382, i32 0, i32 4
  %383 = load i64, i64* %f_flags685, align 8, !tbaa !24
  %and686 = and i64 %383, 128
  %cmp687 = icmp ne i64 %and686, 0
  br i1 %cmp687, label %if.then.689, label %if.end.690

if.then.689:                                      ; preds = %while.end.683
  store i32 3, i32* %bt, align 4, !tbaa !5
  br label %if.end.690

if.end.690:                                       ; preds = %if.then.689, %while.end.683
  %384 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv691 = zext i8 %384 to i32
  %cmp692 = icmp sge i32 %conv691, 3
  br i1 %cmp692, label %land.lhs.true.694, label %if.end.699

land.lhs.true.694:                                ; preds = %if.end.690
  %385 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool695 = icmp ne i32 %385, 0
  br i1 %tobool695, label %if.end.699, label %if.then.696

if.then.696:                                      ; preds = %land.lhs.true.694
  %386 = load i32, i32* %bt, align 4, !tbaa !5
  %idxprom697 = sext i32 %386 to i64
  %arrayidx698 = getelementptr inbounds [4 x i8*], [4 x i8*]* @MimeBoundaryNames, i32 0, i64 %idxprom697
  %387 = load i8*, i8** %arrayidx698, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i8* %387)
  br label %if.end.699

if.end.699:                                       ; preds = %if.then.696, %land.lhs.true.694, %if.end.690
  %388 = load i32, i32* %bt, align 4, !tbaa !5
  store i32 %388, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1338

if.end.700:                                       ; preds = %land.lhs.true.447, %lor.lhs.false.443, %if.end.435
  %389 = load i8*, i8** %type, align 8, !tbaa !1
  %call701 = call i32 @sm_strcasecmp(i8* %389, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0))
  %cmp702 = icmp eq i32 %call701, 0
  br i1 %cmp702, label %if.then.704, label %if.end.762

if.then.704:                                      ; preds = %if.end.700
  %390 = load i8*, i8** %subtype, align 8, !tbaa !1
  %call705 = call i32 @wordinclass(i8* %390, i32 115)
  %tobool706 = icmp ne i32 %call705, 0
  br i1 %tobool706, label %lor.lhs.false.707, label %if.then.712

lor.lhs.false.707:                                ; preds = %if.then.704
  %391 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags708 = getelementptr inbounds %struct.envelope, %struct.envelope* %391, i32 0, i32 11
  %392 = load i64, i64* %e_flags708, align 8, !tbaa !7
  %and709 = and i64 %392, 268435456
  %cmp710 = icmp ne i64 %and709, 0
  br i1 %cmp710, label %if.then.712, label %if.else.714

if.then.712:                                      ; preds = %lor.lhs.false.707, %if.then.704
  %393 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %or713 = or i32 %393, 1
  store i32 %or713, i32* %flags.addr, align 4, !tbaa !5
  br label %if.end.761

if.else.714:                                      ; preds = %lor.lhs.false.707
  %394 = bitcast %struct.header** %hdr716 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %394) #1
  store %struct.header* null, %struct.header** %hdr716, align 8, !tbaa !1
  %395 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call717 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), %struct.mailer_con_info* %395)
  %tobool718 = icmp ne i32 %call717, 0
  br i1 %tobool718, label %if.end.720, label %if.then.719

if.then.719:                                      ; preds = %if.else.714
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.760

if.end.720:                                       ; preds = %if.else.714
  %396 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags721 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %396, i32 0, i32 0
  %397 = load i64, i64* %mci_flags721, align 8, !tbaa !21
  %or722 = or i64 %397, 16384
  store i64 %or722, i64* %mci_flags721, align 8, !tbaa !21
  %398 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp723 = getelementptr inbounds %struct.envelope, %struct.envelope* %398, i32 0, i32 24
  %399 = load %struct.sm_file*, %struct.sm_file** %e_dfp723, align 8, !tbaa !23
  %400 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @collect(%struct.sm_file* %399, i32 0, %struct.header** %hdr716, %struct.envelope* %400, i32 0)
  %401 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv724 = zext i8 %401 to i32
  %cmp725 = icmp sge i32 %conv724, 101
  br i1 %cmp725, label %land.lhs.true.727, label %if.end.731

land.lhs.true.727:                                ; preds = %if.end.720
  %402 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool728 = icmp ne i32 %402, 0
  br i1 %tobool728, label %if.end.731, label %if.then.729

if.then.729:                                      ; preds = %land.lhs.true.727
  %403 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call730 = call i32 @putline(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), %struct.mailer_con_info* %403)
  br label %if.end.731

if.end.731:                                       ; preds = %if.then.729, %land.lhs.true.727, %if.end.720
  %404 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %405 = load %struct.header*, %struct.header** %hdr716, align 8, !tbaa !1
  %406 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %407 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %call732 = call i32 @putheader(%struct.mailer_con_info* %404, %struct.header* %405, %struct.envelope* %406, i32 %407)
  %tobool733 = icmp ne i32 %call732, 0
  br i1 %tobool733, label %if.end.735, label %if.then.734

if.then.734:                                      ; preds = %if.end.731
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.760

if.end.735:                                       ; preds = %if.end.731
  %408 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv736 = zext i8 %408 to i32
  %cmp737 = icmp sge i32 %conv736, 101
  br i1 %cmp737, label %land.lhs.true.739, label %if.end.743

land.lhs.true.739:                                ; preds = %if.end.735
  %409 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool740 = icmp ne i32 %409, 0
  br i1 %tobool740, label %if.end.743, label %if.then.741

if.then.741:                                      ; preds = %land.lhs.true.739
  %410 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call742 = call i32 @putline(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct.mailer_con_info* %410)
  br label %if.end.743

if.end.743:                                       ; preds = %if.then.741, %land.lhs.true.739, %if.end.735
  %411 = load %struct.header*, %struct.header** %hdr716, align 8, !tbaa !1
  %call744 = call i8* @hvalue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), %struct.header* %411)
  %cmp745 = icmp eq i8* %call744, null
  br i1 %cmp745, label %land.lhs.true.747, label %if.end.755

land.lhs.true.747:                                ; preds = %if.end.743
  %412 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and748 = and i32 %412, 4
  %cmp749 = icmp ne i32 %and748, 0
  br i1 %cmp749, label %if.end.755, label %land.lhs.true.751

land.lhs.true.751:                                ; preds = %land.lhs.true.747
  %413 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call752 = call i32 @putline(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), %struct.mailer_con_info* %413)
  %tobool753 = icmp ne i32 %call752, 0
  br i1 %tobool753, label %if.end.755, label %if.then.754

if.then.754:                                      ; preds = %land.lhs.true.751
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.760

if.end.755:                                       ; preds = %land.lhs.true.751, %land.lhs.true.747, %if.end.743
  %414 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %415 = load %struct.header*, %struct.header** %hdr716, align 8, !tbaa !1
  %416 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %417 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %418 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %419 = load i32, i32* %level.addr, align 4, !tbaa !5
  %add756 = add nsw i32 %419, 1
  %call757 = call i32 @mime8to7(%struct.mailer_con_info* %414, %struct.header* %415, %struct.envelope* %416, i8** %417, i32 %418, i32 %add756)
  store i32 %call757, i32* %bt, align 4, !tbaa !5
  %420 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags758 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %420, i32 0, i32 0
  %421 = load i64, i64* %mci_flags758, align 8, !tbaa !21
  %and759 = and i64 %421, -16385
  store i64 %and759, i64* %mci_flags758, align 8, !tbaa !21
  %422 = load i32, i32* %bt, align 4, !tbaa !5
  store i32 %422, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.760

cleanup.760:                                      ; preds = %if.then.754, %if.then.734, %if.then.719, %if.end.755
  %423 = bitcast %struct.header** %hdr716 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %423) #1
  %cleanup.dest1337 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest1337, label %cleanup.1338 [
    i32 18, label %writeerr
  ]

if.end.761:                                       ; preds = %if.then.712
  br label %if.end.762

if.end.762:                                       ; preds = %if.end.761, %if.end.700
  store i64 0, i64* %sectionhighbits, align 8, !tbaa !17
  store i64 0, i64* %sectionsize, align 8, !tbaa !17
  %424 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and763 = and i32 %424, 5
  %cmp764 = icmp ne i32 %and763, 0
  br i1 %cmp764, label %if.end.822, label %if.then.766

if.then.766:                                      ; preds = %if.end.762
  %425 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp767 = getelementptr inbounds %struct.envelope, %struct.envelope* %425, i32 0, i32 24
  %426 = load %struct.sm_file*, %struct.sm_file** %e_dfp767, align 8, !tbaa !23
  %call768 = call i64 @sm_io_tell(%struct.sm_file* %426, i32 -2)
  store i64 %call768, i64* %offset, align 8, !tbaa !17
  %427 = load i64, i64* %offset, align 8, !tbaa !17
  %cmp769 = icmp eq i64 %427, -1
  br i1 %cmp769, label %if.then.771, label %if.end.772

if.then.771:                                      ; preds = %if.then.766
  %428 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %428, i32 0, i32 25
  %429 = load i8*, i8** %e_id, align 8, !tbaa !27
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i32 0, i32 0), i32 100, i8* %429)
  br label %if.end.772

if.end.772:                                       ; preds = %if.then.771, %if.then.766
  br label %while.cond.773

while.cond.773:                                   ; preds = %if.end.809, %if.end.772
  %430 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp774 = getelementptr inbounds %struct.envelope, %struct.envelope* %430, i32 0, i32 24
  %431 = load %struct.sm_file*, %struct.sm_file** %e_dfp774, align 8, !tbaa !23
  %arraydecay775 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call776 = call i32 @sm_io_fgets(%struct.sm_file* %431, i32 -2, i8* %arraydecay775, i32 2048)
  store i32 %call776, i32* %blen, align 4, !tbaa !5
  %cmp777 = icmp sge i32 %call776, 0
  br i1 %cmp777, label %while.body.779, label %while.end.810

while.body.779:                                   ; preds = %while.cond.773
  %arraydecay780 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %432 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %call781 = call i32 @mimeboundary(i8* %arraydecay780, i8** %432)
  %cmp782 = icmp ne i32 %call781, 1
  br i1 %cmp782, label %if.then.784, label %if.end.785

if.then.784:                                      ; preds = %while.body.779
  br label %while.end.810

if.end.785:                                       ; preds = %while.body.779
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.786

for.cond.786:                                     ; preds = %for.inc.800, %if.end.785
  %433 = load i32, i32* %i, align 4, !tbaa !5
  %434 = load i32, i32* %blen, align 4, !tbaa !5
  %cmp787 = icmp slt i32 %433, %434
  br i1 %cmp787, label %for.body.789, label %for.end.802

for.body.789:                                     ; preds = %for.cond.786
  %435 = load i64, i64* %sectionsize, align 8, !tbaa !17
  %inc790 = add i64 %435, 1
  store i64 %inc790, i64* %sectionsize, align 8, !tbaa !17
  %436 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom791 = sext i32 %436 to i64
  %arrayidx792 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 %idxprom791
  %437 = load i8, i8* %arrayidx792, align 1, !tbaa !15
  %conv793 = sext i8 %437 to i32
  %and794 = and i32 %conv793, 128
  %cmp795 = icmp ne i32 %and794, 0
  br i1 %cmp795, label %if.then.797, label %if.end.799

if.then.797:                                      ; preds = %for.body.789
  %438 = load i64, i64* %sectionhighbits, align 8, !tbaa !17
  %inc798 = add i64 %438, 1
  store i64 %inc798, i64* %sectionhighbits, align 8, !tbaa !17
  br label %if.end.799

if.end.799:                                       ; preds = %if.then.797, %for.body.789
  br label %for.inc.800

for.inc.800:                                      ; preds = %if.end.799
  %439 = load i32, i32* %i, align 4, !tbaa !5
  %inc801 = add nsw i32 %439, 1
  store i32 %inc801, i32* %i, align 4, !tbaa !5
  br label %for.cond.786

for.end.802:                                      ; preds = %for.cond.786
  %440 = load i64, i64* %sectionsize, align 8, !tbaa !17
  %cmp803 = icmp uge i64 %440, 4096
  br i1 %cmp803, label %land.lhs.true.805, label %if.end.809

land.lhs.true.805:                                ; preds = %for.end.802
  %441 = load i64, i64* %sectionhighbits, align 8, !tbaa !17
  %442 = load i64, i64* %sectionsize, align 8, !tbaa !17
  %div = udiv i64 %442, 4
  %cmp806 = icmp ugt i64 %441, %div
  br i1 %cmp806, label %if.then.808, label %if.end.809

if.then.808:                                      ; preds = %land.lhs.true.805
  br label %while.end.810

if.end.809:                                       ; preds = %land.lhs.true.805, %for.end.802
  br label %while.cond.773

while.end.810:                                    ; preds = %if.then.808, %if.then.784, %while.cond.773
  %443 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp811 = getelementptr inbounds %struct.envelope, %struct.envelope* %443, i32 0, i32 24
  %444 = load %struct.sm_file*, %struct.sm_file** %e_dfp811, align 8, !tbaa !23
  %445 = load i64, i64* %offset, align 8, !tbaa !17
  %call812 = call i32 @sm_io_seek(%struct.sm_file* %444, i32 -2, i64 %445, i32 0)
  %cmp813 = icmp slt i32 %call812, 0
  br i1 %cmp813, label %if.then.815, label %if.else.817

if.then.815:                                      ; preds = %while.end.810
  %446 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id816 = getelementptr inbounds %struct.envelope, %struct.envelope* %446, i32 0, i32 25
  %447 = load i8*, i8** %e_id816, align 8, !tbaa !27
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.39, i32 0, i32 0), i32 100, i8* %447)
  br label %if.end.821

if.else.817:                                      ; preds = %while.end.810
  %448 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp818 = getelementptr inbounds %struct.envelope, %struct.envelope* %448, i32 0, i32 24
  %449 = load %struct.sm_file*, %struct.sm_file** %e_dfp818, align 8, !tbaa !23
  %f_flags819 = getelementptr inbounds %struct.sm_file, %struct.sm_file* %449, i32 0, i32 4
  %450 = load i64, i64* %f_flags819, align 8, !tbaa !24
  %and820 = and i64 %450, -385
  store i64 %and820, i64* %f_flags819, align 8, !tbaa !24
  br label %if.end.821

if.end.821:                                       ; preds = %if.else.817, %if.then.815
  br label %if.end.822

if.end.822:                                       ; preds = %if.end.821, %if.end.762
  %451 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv823 = zext i8 %451 to i32
  %cmp824 = icmp sge i32 %conv823, 8
  br i1 %cmp824, label %land.lhs.true.826, label %if.end.847

land.lhs.true.826:                                ; preds = %if.end.822
  %452 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool827 = icmp ne i32 %452, 0
  br i1 %tobool827, label %if.end.847, label %if.then.828

if.then.828:                                      ; preds = %land.lhs.true.826
  %453 = load i64, i64* %sectionhighbits, align 8, !tbaa !17
  %454 = load i64, i64* %sectionsize, align 8, !tbaa !17
  %455 = load i8*, i8** %cte, align 8, !tbaa !1
  %cmp829 = icmp eq i8* %455, null
  br i1 %cmp829, label %cond.true.831, label %cond.false.832

cond.true.831:                                    ; preds = %if.then.828
  br label %cond.end.833

cond.false.832:                                   ; preds = %if.then.828
  %456 = load i8*, i8** %cte, align 8, !tbaa !1
  br label %cond.end.833

cond.end.833:                                     ; preds = %cond.false.832, %cond.true.831
  %cond834 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), %cond.true.831 ], [ %456, %cond.false.832 ]
  %457 = load i8*, i8** %type, align 8, !tbaa !1
  %cmp835 = icmp eq i8* %457, null
  br i1 %cmp835, label %cond.true.837, label %cond.false.838

cond.true.837:                                    ; preds = %cond.end.833
  br label %cond.end.839

cond.false.838:                                   ; preds = %cond.end.833
  %458 = load i8*, i8** %type, align 8, !tbaa !1
  br label %cond.end.839

cond.end.839:                                     ; preds = %cond.false.838, %cond.true.837
  %cond840 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), %cond.true.837 ], [ %458, %cond.false.838 ]
  %459 = load i8*, i8** %subtype, align 8, !tbaa !1
  %cmp841 = icmp eq i8* %459, null
  br i1 %cmp841, label %cond.true.843, label %cond.false.844

cond.true.843:                                    ; preds = %cond.end.839
  br label %cond.end.845

cond.false.844:                                   ; preds = %cond.end.839
  %460 = load i8*, i8** %subtype, align 8, !tbaa !1
  br label %cond.end.845

cond.end.845:                                     ; preds = %cond.false.844, %cond.true.843
  %cond846 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), %cond.true.843 ], [ %460, %cond.false.844 ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.40, i32 0, i32 0), i64 %453, i64 %454, i8* %cond834, i8* %cond840, i8* %cond846)
  br label %if.end.847

if.end.847:                                       ; preds = %cond.end.845, %land.lhs.true.826, %if.end.822
  %461 = load i8*, i8** %cte, align 8, !tbaa !1
  %cmp848 = icmp ne i8* %461, null
  br i1 %cmp848, label %land.lhs.true.850, label %if.end.855

land.lhs.true.850:                                ; preds = %if.end.847
  %462 = load i8*, i8** %cte, align 8, !tbaa !1
  %call851 = call i32 @sm_strcasecmp(i8* %462, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0))
  %cmp852 = icmp eq i32 %call851, 0
  br i1 %cmp852, label %if.then.854, label %if.end.855

if.then.854:                                      ; preds = %land.lhs.true.850
  %463 = load i64, i64* %sectionhighbits, align 8, !tbaa !17
  store i64 %463, i64* %sectionsize, align 8, !tbaa !17
  br label %if.end.855

if.end.855:                                       ; preds = %if.then.854, %land.lhs.true.850, %if.end.847
  store i32 0, i32* %linelen, align 4, !tbaa !5
  %arraydecay856 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay856, i8** %bp, align 8, !tbaa !1
  %464 = load i64, i64* %sectionhighbits, align 8, !tbaa !17
  %cmp857 = icmp eq i64 %464, 0
  br i1 %cmp857, label %if.then.859, label %if.else.927

if.then.859:                                      ; preds = %if.end.855
  %465 = load i8*, i8** %cte, align 8, !tbaa !1
  %cmp860 = icmp ne i8* %465, null
  br i1 %cmp860, label %land.lhs.true.862, label %if.end.887

land.lhs.true.862:                                ; preds = %if.then.859
  %466 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags863 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %466, i32 0, i32 0
  %467 = load i64, i64* %mci_flags863, align 8, !tbaa !21
  %and864 = and i64 %467, 25600
  %cmp865 = icmp ne i64 %and864, 0
  br i1 %cmp865, label %land.lhs.true.867, label %if.end.887

land.lhs.true.867:                                ; preds = %land.lhs.true.862
  %468 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and868 = and i32 %468, 4
  %cmp869 = icmp ne i32 %and868, 0
  br i1 %cmp869, label %if.end.887, label %if.then.871

if.then.871:                                      ; preds = %land.lhs.true.867
  %arraydecay872 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %469 = load i8*, i8** %cte, align 8, !tbaa !1
  %call873 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay872, i64 2048, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0), i8* %469)
  %arraydecay874 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %470 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call875 = call i32 @putline(i8* %arraydecay874, %struct.mailer_con_info* %470)
  %tobool876 = icmp ne i32 %call875, 0
  br i1 %tobool876, label %if.end.878, label %if.then.877

if.then.877:                                      ; preds = %if.then.871
  br label %writeerr

if.end.878:                                       ; preds = %if.then.871
  %471 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv879 = zext i8 %471 to i32
  %cmp880 = icmp sge i32 %conv879, 36
  br i1 %cmp880, label %land.lhs.true.882, label %if.end.886

land.lhs.true.882:                                ; preds = %if.end.878
  %472 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool883 = icmp ne i32 %472, 0
  br i1 %tobool883, label %if.end.886, label %if.then.884

if.then.884:                                      ; preds = %land.lhs.true.882
  %arraydecay885 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8* %arraydecay885)
  br label %if.end.886

if.end.886:                                       ; preds = %if.then.884, %land.lhs.true.882, %if.end.878
  br label %if.end.887

if.end.887:                                       ; preds = %if.end.886, %land.lhs.true.867, %land.lhs.true.862, %if.then.859
  %473 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call888 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), %struct.mailer_con_info* %473)
  %tobool889 = icmp ne i32 %call888, 0
  br i1 %tobool889, label %if.end.891, label %if.then.890

if.then.890:                                      ; preds = %if.end.887
  br label %writeerr

if.end.891:                                       ; preds = %if.end.887
  %474 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags892 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %474, i32 0, i32 0
  %475 = load i64, i64* %mci_flags892, align 8, !tbaa !21
  %and893 = and i64 %475, -513
  store i64 %and893, i64* %mci_flags892, align 8, !tbaa !21
  br label %while.cond.894

while.cond.894:                                   ; preds = %if.end.918, %if.end.891
  %476 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp895 = getelementptr inbounds %struct.envelope, %struct.envelope* %476, i32 0, i32 24
  %477 = load %struct.sm_file*, %struct.sm_file** %e_dfp895, align 8, !tbaa !23
  %arraydecay896 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call897 = call i32 @sm_io_fgets(%struct.sm_file* %477, i32 -2, i8* %arraydecay896, i32 2048)
  store i32 %call897, i32* %blen, align 4, !tbaa !5
  %cmp898 = icmp sge i32 %call897, 0
  br i1 %cmp898, label %while.body.900, label %while.end.919

while.body.900:                                   ; preds = %while.cond.894
  %478 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags901 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %478, i32 0, i32 0
  %479 = load i64, i64* %mci_flags901, align 8, !tbaa !21
  %and902 = and i64 %479, 16777216
  %cmp903 = icmp ne i64 %and902, 0
  br i1 %cmp903, label %if.end.912, label %if.then.905

if.then.905:                                      ; preds = %while.body.900
  %arraydecay906 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %480 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %call907 = call i32 @mimeboundary(i8* %arraydecay906, i8** %480)
  store i32 %call907, i32* %bt, align 4, !tbaa !5
  %481 = load i32, i32* %bt, align 4, !tbaa !5
  %cmp908 = icmp ne i32 %481, 1
  br i1 %cmp908, label %if.then.910, label %if.end.911

if.then.910:                                      ; preds = %if.then.905
  br label %while.end.919

if.end.911:                                       ; preds = %if.then.905
  br label %if.end.912

if.end.912:                                       ; preds = %if.end.911, %while.body.900
  %arraydecay913 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %482 = load i32, i32* %blen, align 4, !tbaa !5
  %conv914 = sext i32 %482 to i64
  %483 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call915 = call i32 @putxline(i8* %arraydecay913, i64 %conv914, %struct.mailer_con_info* %483, i32 9)
  %tobool916 = icmp ne i32 %call915, 0
  br i1 %tobool916, label %if.end.918, label %if.then.917

if.then.917:                                      ; preds = %if.end.912
  br label %writeerr

if.end.918:                                       ; preds = %if.end.912
  br label %while.cond.894

while.end.919:                                    ; preds = %if.then.910, %while.cond.894
  %484 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp920 = getelementptr inbounds %struct.envelope, %struct.envelope* %484, i32 0, i32 24
  %485 = load %struct.sm_file*, %struct.sm_file** %e_dfp920, align 8, !tbaa !23
  %f_flags921 = getelementptr inbounds %struct.sm_file, %struct.sm_file* %485, i32 0, i32 4
  %486 = load i64, i64* %f_flags921, align 8, !tbaa !24
  %and922 = and i64 %486, 128
  %cmp923 = icmp ne i64 %and922, 0
  br i1 %cmp923, label %if.then.925, label %if.end.926

if.then.925:                                      ; preds = %while.end.919
  store i32 3, i32* %bt, align 4, !tbaa !5
  br label %if.end.926

if.end.926:                                       ; preds = %if.then.925, %while.end.919
  br label %if.end.1327

if.else.927:                                      ; preds = %if.end.855
  %487 = load i32, i32* @MapNLtoCRLF, align 4, !tbaa !5
  %tobool928 = icmp ne i32 %487, 0
  br i1 %tobool928, label %lor.lhs.false.929, label %if.then.935

lor.lhs.false.929:                                ; preds = %if.else.927
  %488 = load i64, i64* %sectionsize, align 8, !tbaa !17
  %div930 = udiv i64 %488, 8
  %489 = load i64, i64* %sectionhighbits, align 8, !tbaa !17
  %cmp931 = icmp ult i64 %div930, %489
  br i1 %cmp931, label %land.lhs.true.933, label %if.else.1032

land.lhs.true.933:                                ; preds = %lor.lhs.false.929
  %490 = load i32, i32* %use_qp, align 4, !tbaa !5
  %tobool934 = icmp ne i32 %490, 0
  br i1 %tobool934, label %if.else.1032, label %if.then.935

if.then.935:                                      ; preds = %land.lhs.true.933, %if.else.927
  %491 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %491) #1
  %492 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %492) #1
  %493 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv938 = zext i8 %493 to i32
  %cmp939 = icmp sge i32 %conv938, 36
  br i1 %cmp939, label %land.lhs.true.941, label %if.end.944

land.lhs.true.941:                                ; preds = %if.then.935
  %494 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool942 = icmp ne i32 %494, 0
  br i1 %tobool942, label %if.end.944, label %if.then.943

if.then.943:                                      ; preds = %land.lhs.true.941
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.944

if.end.944:                                       ; preds = %if.then.943, %land.lhs.true.941, %if.then.935
  %495 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call945 = call i32 @putline(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0), %struct.mailer_con_info* %495)
  %tobool946 = icmp ne i32 %call945, 0
  br i1 %tobool946, label %if.end.948, label %if.then.947

if.then.947:                                      ; preds = %if.end.944
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.1028

if.end.948:                                       ; preds = %if.end.944
  %arraydecay949 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %496 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  %497 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id950 = getelementptr inbounds %struct.envelope, %struct.envelope* %497, i32 0, i32 25
  %498 = load i8*, i8** %e_id950, align 8, !tbaa !27
  %call951 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay949, i64 2048, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.46, i32 0, i32 0), i8* %496, i8* %498)
  %arraydecay952 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %499 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call953 = call i32 @putline(i8* %arraydecay952, %struct.mailer_con_info* %499)
  %tobool954 = icmp ne i32 %call953, 0
  br i1 %tobool954, label %lor.lhs.false.955, label %if.then.958

lor.lhs.false.955:                                ; preds = %if.end.948
  %500 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call956 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), %struct.mailer_con_info* %500)
  %tobool957 = icmp ne i32 %call956, 0
  br i1 %tobool957, label %if.end.959, label %if.then.958

if.then.958:                                      ; preds = %lor.lhs.false.955, %if.end.948
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.1028

if.end.959:                                       ; preds = %lor.lhs.false.955
  %501 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags960 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %501, i32 0, i32 0
  %502 = load i64, i64* %mci_flags960, align 8, !tbaa !21
  %and961 = and i64 %502, -513
  store i64 %and961, i64* %mci_flags960, align 8, !tbaa !21
  br label %while.cond.962

while.cond.962:                                   ; preds = %if.end.1011, %if.end.959
  %503 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp963 = getelementptr inbounds %struct.envelope, %struct.envelope* %503, i32 0, i32 24
  %504 = load %struct.sm_file*, %struct.sm_file** %e_dfp963, align 8, !tbaa !23
  %505 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %call964 = call i32 @mime_getchar_crlf(%struct.sm_file* %504, i8** %505, i32* %bt)
  store i32 %call964, i32* %c1, align 4, !tbaa !5
  %cmp965 = icmp ne i32 %call964, -1
  br i1 %cmp965, label %while.body.967, label %while.end.1022

while.body.967:                                   ; preds = %while.cond.962
  %506 = load i32, i32* %linelen, align 4, !tbaa !5
  %cmp968 = icmp sgt i32 %506, 71
  br i1 %cmp968, label %if.then.970, label %if.end.977

if.then.970:                                      ; preds = %while.body.967
  %507 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8 0, i8* %507, align 1, !tbaa !15
  %arraydecay971 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %508 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call972 = call i32 @putline(i8* %arraydecay971, %struct.mailer_con_info* %508)
  %tobool973 = icmp ne i32 %call972, 0
  br i1 %tobool973, label %if.end.975, label %if.then.974

if.then.974:                                      ; preds = %if.then.970
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.1028

if.end.975:                                       ; preds = %if.then.970
  store i32 0, i32* %linelen, align 4, !tbaa !5
  %arraydecay976 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay976, i8** %bp, align 8, !tbaa !1
  br label %if.end.977

if.end.977:                                       ; preds = %if.end.975, %while.body.967
  %509 = load i32, i32* %linelen, align 4, !tbaa !5
  %add978 = add nsw i32 %509, 4
  store i32 %add978, i32* %linelen, align 4, !tbaa !5
  %510 = load i32, i32* %c1, align 4, !tbaa !5
  %shr = ashr i32 %510, 2
  %idxprom979 = sext i32 %shr to i64
  %arrayidx980 = getelementptr inbounds [65 x i8], [65 x i8]* @Base64Code, i32 0, i64 %idxprom979
  %511 = load i8, i8* %arrayidx980, align 1, !tbaa !15
  %512 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr981 = getelementptr inbounds i8, i8* %512, i32 1
  store i8* %incdec.ptr981, i8** %bp, align 8, !tbaa !1
  store i8 %511, i8* %512, align 1, !tbaa !15
  %513 = load i32, i32* %c1, align 4, !tbaa !5
  %and982 = and i32 %513, 3
  %shl = shl i32 %and982, 4
  store i32 %shl, i32* %c1, align 4, !tbaa !5
  %514 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp983 = getelementptr inbounds %struct.envelope, %struct.envelope* %514, i32 0, i32 24
  %515 = load %struct.sm_file*, %struct.sm_file** %e_dfp983, align 8, !tbaa !23
  %516 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %call984 = call i32 @mime_getchar_crlf(%struct.sm_file* %515, i8** %516, i32* %bt)
  store i32 %call984, i32* %c2, align 4, !tbaa !5
  %517 = load i32, i32* %c2, align 4, !tbaa !5
  %cmp985 = icmp eq i32 %517, -1
  br i1 %cmp985, label %if.then.987, label %if.end.993

if.then.987:                                      ; preds = %if.end.977
  %518 = load i32, i32* %c1, align 4, !tbaa !5
  %idxprom988 = sext i32 %518 to i64
  %arrayidx989 = getelementptr inbounds [65 x i8], [65 x i8]* @Base64Code, i32 0, i64 %idxprom988
  %519 = load i8, i8* %arrayidx989, align 1, !tbaa !15
  %520 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr990 = getelementptr inbounds i8, i8* %520, i32 1
  store i8* %incdec.ptr990, i8** %bp, align 8, !tbaa !1
  store i8 %519, i8* %520, align 1, !tbaa !15
  %521 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr991 = getelementptr inbounds i8, i8* %521, i32 1
  store i8* %incdec.ptr991, i8** %bp, align 8, !tbaa !1
  store i8 61, i8* %521, align 1, !tbaa !15
  %522 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr992 = getelementptr inbounds i8, i8* %522, i32 1
  store i8* %incdec.ptr992, i8** %bp, align 8, !tbaa !1
  store i8 61, i8* %522, align 1, !tbaa !15
  br label %while.end.1022

if.end.993:                                       ; preds = %if.end.977
  %523 = load i32, i32* %c2, align 4, !tbaa !5
  %shr994 = ashr i32 %523, 4
  %and995 = and i32 %shr994, 15
  %524 = load i32, i32* %c1, align 4, !tbaa !5
  %or996 = or i32 %524, %and995
  store i32 %or996, i32* %c1, align 4, !tbaa !5
  %525 = load i32, i32* %c1, align 4, !tbaa !5
  %idxprom997 = sext i32 %525 to i64
  %arrayidx998 = getelementptr inbounds [65 x i8], [65 x i8]* @Base64Code, i32 0, i64 %idxprom997
  %526 = load i8, i8* %arrayidx998, align 1, !tbaa !15
  %527 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr999 = getelementptr inbounds i8, i8* %527, i32 1
  store i8* %incdec.ptr999, i8** %bp, align 8, !tbaa !1
  store i8 %526, i8* %527, align 1, !tbaa !15
  %528 = load i32, i32* %c2, align 4, !tbaa !5
  %and1000 = and i32 %528, 15
  %shl1001 = shl i32 %and1000, 2
  store i32 %shl1001, i32* %c1, align 4, !tbaa !5
  %529 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp1002 = getelementptr inbounds %struct.envelope, %struct.envelope* %529, i32 0, i32 24
  %530 = load %struct.sm_file*, %struct.sm_file** %e_dfp1002, align 8, !tbaa !23
  %531 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %call1003 = call i32 @mime_getchar_crlf(%struct.sm_file* %530, i8** %531, i32* %bt)
  store i32 %call1003, i32* %c2, align 4, !tbaa !5
  %532 = load i32, i32* %c2, align 4, !tbaa !5
  %cmp1004 = icmp eq i32 %532, -1
  br i1 %cmp1004, label %if.then.1006, label %if.end.1011

if.then.1006:                                     ; preds = %if.end.993
  %533 = load i32, i32* %c1, align 4, !tbaa !5
  %idxprom1007 = sext i32 %533 to i64
  %arrayidx1008 = getelementptr inbounds [65 x i8], [65 x i8]* @Base64Code, i32 0, i64 %idxprom1007
  %534 = load i8, i8* %arrayidx1008, align 1, !tbaa !15
  %535 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1009 = getelementptr inbounds i8, i8* %535, i32 1
  store i8* %incdec.ptr1009, i8** %bp, align 8, !tbaa !1
  store i8 %534, i8* %535, align 1, !tbaa !15
  %536 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1010 = getelementptr inbounds i8, i8* %536, i32 1
  store i8* %incdec.ptr1010, i8** %bp, align 8, !tbaa !1
  store i8 61, i8* %536, align 1, !tbaa !15
  br label %while.end.1022

if.end.1011:                                      ; preds = %if.end.993
  %537 = load i32, i32* %c2, align 4, !tbaa !5
  %shr1012 = ashr i32 %537, 6
  %and1013 = and i32 %shr1012, 3
  %538 = load i32, i32* %c1, align 4, !tbaa !5
  %or1014 = or i32 %538, %and1013
  store i32 %or1014, i32* %c1, align 4, !tbaa !5
  %539 = load i32, i32* %c1, align 4, !tbaa !5
  %idxprom1015 = sext i32 %539 to i64
  %arrayidx1016 = getelementptr inbounds [65 x i8], [65 x i8]* @Base64Code, i32 0, i64 %idxprom1015
  %540 = load i8, i8* %arrayidx1016, align 1, !tbaa !15
  %541 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1017 = getelementptr inbounds i8, i8* %541, i32 1
  store i8* %incdec.ptr1017, i8** %bp, align 8, !tbaa !1
  store i8 %540, i8* %541, align 1, !tbaa !15
  %542 = load i32, i32* %c2, align 4, !tbaa !5
  %and1018 = and i32 %542, 63
  %idxprom1019 = sext i32 %and1018 to i64
  %arrayidx1020 = getelementptr inbounds [65 x i8], [65 x i8]* @Base64Code, i32 0, i64 %idxprom1019
  %543 = load i8, i8* %arrayidx1020, align 1, !tbaa !15
  %544 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1021 = getelementptr inbounds i8, i8* %544, i32 1
  store i8* %incdec.ptr1021, i8** %bp, align 8, !tbaa !1
  store i8 %543, i8* %544, align 1, !tbaa !15
  br label %while.cond.962

while.end.1022:                                   ; preds = %if.then.1006, %if.then.987, %while.cond.962
  %545 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8 0, i8* %545, align 1, !tbaa !15
  %arraydecay1023 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %546 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call1024 = call i32 @putline(i8* %arraydecay1023, %struct.mailer_con_info* %546)
  %tobool1025 = icmp ne i32 %call1024, 0
  br i1 %tobool1025, label %if.end.1027, label %if.then.1026

if.then.1026:                                     ; preds = %while.end.1022
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.1028

if.end.1027:                                      ; preds = %while.end.1022
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1028

cleanup.1028:                                     ; preds = %if.then.1026, %if.then.974, %if.then.958, %if.then.947, %if.end.1027
  %547 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %547) #1
  %548 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %548) #1
  %cleanup.dest.1030 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1030, label %cleanup.1338 [
    i32 0, label %cleanup.cont.1031
    i32 18, label %writeerr
  ]

cleanup.cont.1031:                                ; preds = %cleanup.1028
  br label %if.end.1326

if.else.1032:                                     ; preds = %land.lhs.true.933, %lor.lhs.false.929
  %549 = bitcast i32* %c11034 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %549) #1
  %550 = bitcast i32* %c21036 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %550) #1
  %551 = bitcast i32* %fromstate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %551) #1
  %552 = bitcast [8 x i32]* %badchars to i8*
  call void @llvm.lifetime.start(i64 32, i8* %552) #1
  %arraydecay1039 = getelementptr inbounds [8 x i32], [8 x i32]* %badchars, i32 0, i32 0
  %553 = bitcast i32* %arraydecay1039 to i8*
  call void @llvm.memset.p0i8.i64(i8* %553, i8 0, i64 32, i32 1, i1 false)
  store i32 0, i32* %c11034, align 4, !tbaa !5
  br label %for.cond.1040

for.cond.1040:                                    ; preds = %for.inc.1053, %if.else.1032
  %554 = load i32, i32* %c11034, align 4, !tbaa !5
  %cmp1041 = icmp slt i32 %554, 32
  br i1 %cmp1041, label %for.body.1043, label %for.end.1055

for.body.1043:                                    ; preds = %for.cond.1040
  %555 = load i32, i32* %c11034, align 4, !tbaa !5
  %conv1044 = trunc i32 %555 to i8
  %conv1045 = zext i8 %conv1044 to i64
  %rem = urem i64 %conv1045, 32
  %sh_prom = trunc i64 %rem to i32
  %shl1046 = shl i32 1, %sh_prom
  %556 = load i32, i32* %c11034, align 4, !tbaa !5
  %conv1047 = trunc i32 %556 to i8
  %conv1048 = zext i8 %conv1047 to i64
  %div1049 = udiv i64 %conv1048, 32
  %and1050 = and i64 %div1049, 7
  %arrayidx1051 = getelementptr inbounds [8 x i32], [8 x i32]* %badchars, i32 0, i64 %and1050
  %557 = load i32, i32* %arrayidx1051, align 4, !tbaa !5
  %or1052 = or i32 %557, %shl1046
  store i32 %or1052, i32* %arrayidx1051, align 4, !tbaa !5
  br label %for.inc.1053

for.inc.1053:                                     ; preds = %for.body.1043
  %558 = load i32, i32* %c11034, align 4, !tbaa !5
  %inc1054 = add nsw i32 %558, 1
  store i32 %inc1054, i32* %c11034, align 4, !tbaa !5
  br label %for.cond.1040

for.end.1055:                                     ; preds = %for.cond.1040
  %arrayidx1056 = getelementptr inbounds [8 x i32], [8 x i32]* %badchars, i32 0, i64 0
  %559 = load i32, i32* %arrayidx1056, align 4, !tbaa !5
  %and1057 = and i32 %559, -513
  store i32 %and1057, i32* %arrayidx1056, align 4, !tbaa !5
  store i32 127, i32* %c11034, align 4, !tbaa !5
  br label %for.cond.1058

for.cond.1058:                                    ; preds = %for.inc.1073, %for.end.1055
  %560 = load i32, i32* %c11034, align 4, !tbaa !5
  %cmp1059 = icmp slt i32 %560, 256
  br i1 %cmp1059, label %for.body.1061, label %for.end.1075

for.body.1061:                                    ; preds = %for.cond.1058
  %561 = load i32, i32* %c11034, align 4, !tbaa !5
  %conv1062 = trunc i32 %561 to i8
  %conv1063 = zext i8 %conv1062 to i64
  %rem1064 = urem i64 %conv1063, 32
  %sh_prom1065 = trunc i64 %rem1064 to i32
  %shl1066 = shl i32 1, %sh_prom1065
  %562 = load i32, i32* %c11034, align 4, !tbaa !5
  %conv1067 = trunc i32 %562 to i8
  %conv1068 = zext i8 %conv1067 to i64
  %div1069 = udiv i64 %conv1068, 32
  %and1070 = and i64 %div1069, 7
  %arrayidx1071 = getelementptr inbounds [8 x i32], [8 x i32]* %badchars, i32 0, i64 %and1070
  %563 = load i32, i32* %arrayidx1071, align 4, !tbaa !5
  %or1072 = or i32 %563, %shl1066
  store i32 %or1072, i32* %arrayidx1071, align 4, !tbaa !5
  br label %for.inc.1073

for.inc.1073:                                     ; preds = %for.body.1061
  %564 = load i32, i32* %c11034, align 4, !tbaa !5
  %inc1074 = add nsw i32 %564, 1
  store i32 %inc1074, i32* %c11034, align 4, !tbaa !5
  br label %for.cond.1058

for.end.1075:                                     ; preds = %for.cond.1058
  %arrayidx1076 = getelementptr inbounds [8 x i32], [8 x i32]* %badchars, i32 0, i64 1
  %565 = load i32, i32* %arrayidx1076, align 4, !tbaa !5
  %or1077 = or i32 %565, 536870912
  store i32 %or1077, i32* %arrayidx1076, align 4, !tbaa !5
  %566 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %566, i32 0, i32 11
  %567 = load %struct.mailer*, %struct.mailer** %mci_mailer, align 8, !tbaa !28
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %567, i32 0, i32 5
  %arrayidx1078 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 1
  %568 = load i32, i32* %arrayidx1078, align 4, !tbaa !5
  %and1079 = and i32 %568, 524288
  %tobool1080 = icmp ne i32 %and1079, 0
  br i1 %tobool1080, label %if.then.1081, label %if.end.1099

if.then.1081:                                     ; preds = %for.end.1075
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  br label %for.cond.1082

for.cond.1082:                                    ; preds = %for.inc.1096, %if.then.1081
  %569 = load i8*, i8** %p, align 8, !tbaa !1
  %570 = load i8, i8* %569, align 1, !tbaa !15
  %conv1083 = sext i8 %570 to i32
  %cmp1084 = icmp ne i32 %conv1083, 0
  br i1 %cmp1084, label %for.body.1086, label %for.end.1098

for.body.1086:                                    ; preds = %for.cond.1082
  %571 = load i8*, i8** %p, align 8, !tbaa !1
  %572 = load i8, i8* %571, align 1, !tbaa !15
  %conv1087 = zext i8 %572 to i64
  %rem1088 = urem i64 %conv1087, 32
  %sh_prom1089 = trunc i64 %rem1088 to i32
  %shl1090 = shl i32 1, %sh_prom1089
  %573 = load i8*, i8** %p, align 8, !tbaa !1
  %574 = load i8, i8* %573, align 1, !tbaa !15
  %conv1091 = zext i8 %574 to i64
  %div1092 = udiv i64 %conv1091, 32
  %and1093 = and i64 %div1092, 7
  %arrayidx1094 = getelementptr inbounds [8 x i32], [8 x i32]* %badchars, i32 0, i64 %and1093
  %575 = load i32, i32* %arrayidx1094, align 4, !tbaa !5
  %or1095 = or i32 %575, %shl1090
  store i32 %or1095, i32* %arrayidx1094, align 4, !tbaa !5
  br label %for.inc.1096

for.inc.1096:                                     ; preds = %for.body.1086
  %576 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1097 = getelementptr inbounds i8, i8* %576, i32 1
  store i8* %incdec.ptr1097, i8** %p, align 8, !tbaa !1
  br label %for.cond.1082

for.end.1098:                                     ; preds = %for.cond.1082
  br label %if.end.1099

if.end.1099:                                      ; preds = %for.end.1098, %for.end.1075
  %577 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv1100 = zext i8 %577 to i32
  %cmp1101 = icmp sge i32 %conv1100, 36
  br i1 %cmp1101, label %land.lhs.true.1103, label %if.end.1106

land.lhs.true.1103:                               ; preds = %if.end.1099
  %578 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool1104 = icmp ne i32 %578, 0
  br i1 %tobool1104, label %if.end.1106, label %if.then.1105

if.then.1105:                                     ; preds = %land.lhs.true.1103
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.1106

if.end.1106:                                      ; preds = %if.then.1105, %land.lhs.true.1103, %if.end.1099
  %579 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call1107 = call i32 @putline(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.49, i32 0, i32 0), %struct.mailer_con_info* %579)
  %tobool1108 = icmp ne i32 %call1107, 0
  br i1 %tobool1108, label %if.end.1110, label %if.then.1109

if.then.1109:                                     ; preds = %if.end.1106
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.1320

if.end.1110:                                      ; preds = %if.end.1106
  %arraydecay1111 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %580 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  %581 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1112 = getelementptr inbounds %struct.envelope, %struct.envelope* %581, i32 0, i32 25
  %582 = load i8*, i8** %e_id1112, align 8, !tbaa !27
  %call1113 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay1111, i64 2048, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.50, i32 0, i32 0), i8* %580, i8* %582)
  %arraydecay1114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %583 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call1115 = call i32 @putline(i8* %arraydecay1114, %struct.mailer_con_info* %583)
  %tobool1116 = icmp ne i32 %call1115, 0
  br i1 %tobool1116, label %lor.lhs.false.1117, label %if.then.1120

lor.lhs.false.1117:                               ; preds = %if.end.1110
  %584 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call1118 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), %struct.mailer_con_info* %584)
  %tobool1119 = icmp ne i32 %call1118, 0
  br i1 %tobool1119, label %if.end.1121, label %if.then.1120

if.then.1120:                                     ; preds = %lor.lhs.false.1117, %if.end.1110
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.1320

if.end.1121:                                      ; preds = %lor.lhs.false.1117
  %585 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags1122 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %585, i32 0, i32 0
  %586 = load i64, i64* %mci_flags1122, align 8, !tbaa !21
  %and1123 = and i64 %586, -513
  store i64 %and1123, i64* %mci_flags1122, align 8, !tbaa !21
  store i32 0, i32* %fromstate, align 4, !tbaa !5
  store i32 10, i32* %c21036, align 4, !tbaa !5
  br label %while.cond.1124

while.cond.1124:                                  ; preds = %if.end.1287, %if.end.1167, %if.end.1121
  %587 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp1125 = getelementptr inbounds %struct.envelope, %struct.envelope* %587, i32 0, i32 24
  %588 = load %struct.sm_file*, %struct.sm_file** %e_dfp1125, align 8, !tbaa !23
  %589 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %call1126 = call i32 @mime_getchar(%struct.sm_file* %588, i8** %589, i32* %bt)
  store i32 %call1126, i32* %c11034, align 4, !tbaa !5
  %cmp1127 = icmp ne i32 %call1126, -1
  br i1 %cmp1127, label %while.body.1129, label %while.end.1288

while.body.1129:                                  ; preds = %while.cond.1124
  %590 = load i32, i32* %c11034, align 4, !tbaa !5
  %cmp1130 = icmp eq i32 %590, 10
  br i1 %cmp1130, label %if.then.1132, label %if.end.1169

if.then.1132:                                     ; preds = %while.body.1129
  %591 = load i32, i32* %c21036, align 4, !tbaa !5
  %cmp1133 = icmp eq i32 %591, 32
  br i1 %cmp1133, label %if.then.1138, label %lor.lhs.false.1135

lor.lhs.false.1135:                               ; preds = %if.then.1132
  %592 = load i32, i32* %c21036, align 4, !tbaa !5
  %cmp1136 = icmp eq i32 %592, 9
  br i1 %cmp1136, label %if.then.1138, label %if.end.1149

if.then.1138:                                     ; preds = %lor.lhs.false.1135, %if.then.1132
  %593 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1139 = getelementptr inbounds i8, i8* %593, i32 1
  store i8* %incdec.ptr1139, i8** %bp, align 8, !tbaa !1
  store i8 61, i8* %593, align 1, !tbaa !15
  %594 = load i32, i32* %c21036, align 4, !tbaa !5
  %shr1140 = ashr i32 %594, 4
  %and1141 = and i32 %shr1140, 15
  %idxprom1142 = sext i32 %and1141 to i64
  %arrayidx1143 = getelementptr inbounds [17 x i8], [17 x i8]* @Base16Code, i32 0, i64 %idxprom1142
  %595 = load i8, i8* %arrayidx1143, align 1, !tbaa !15
  %596 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1144 = getelementptr inbounds i8, i8* %596, i32 1
  store i8* %incdec.ptr1144, i8** %bp, align 8, !tbaa !1
  store i8 %595, i8* %596, align 1, !tbaa !15
  %597 = load i32, i32* %c21036, align 4, !tbaa !5
  %and1145 = and i32 %597, 15
  %idxprom1146 = sext i32 %and1145 to i64
  %arrayidx1147 = getelementptr inbounds [17 x i8], [17 x i8]* @Base16Code, i32 0, i64 %idxprom1146
  %598 = load i8, i8* %arrayidx1147, align 1, !tbaa !15
  %599 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1148 = getelementptr inbounds i8, i8* %599, i32 1
  store i8* %incdec.ptr1148, i8** %bp, align 8, !tbaa !1
  store i8 %598, i8* %599, align 1, !tbaa !15
  br label %if.end.1149

if.end.1149:                                      ; preds = %if.then.1138, %lor.lhs.false.1135
  %arrayidx1150 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 0
  %600 = load i8, i8* %arrayidx1150, align 1, !tbaa !15
  %conv1151 = sext i8 %600 to i32
  %cmp1152 = icmp eq i32 %conv1151, 46
  br i1 %cmp1152, label %land.lhs.true.1154, label %if.end.1162

land.lhs.true.1154:                               ; preds = %if.end.1149
  %601 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx1155 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 1
  %cmp1156 = icmp eq i8* %601, %arrayidx1155
  br i1 %cmp1156, label %if.then.1158, label %if.end.1162

if.then.1158:                                     ; preds = %land.lhs.true.1154
  %arrayidx1159 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 0
  store i8 61, i8* %arrayidx1159, align 1, !tbaa !15
  %602 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @Base16Code, i32 0, i64 2), align 1, !tbaa !15
  %603 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1160 = getelementptr inbounds i8, i8* %603, i32 1
  store i8* %incdec.ptr1160, i8** %bp, align 8, !tbaa !1
  store i8 %602, i8* %603, align 1, !tbaa !15
  %604 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @Base16Code, i32 0, i64 14), align 1, !tbaa !15
  %605 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1161 = getelementptr inbounds i8, i8* %605, i32 1
  store i8* %incdec.ptr1161, i8** %bp, align 8, !tbaa !1
  store i8 %604, i8* %605, align 1, !tbaa !15
  br label %if.end.1162

if.end.1162:                                      ; preds = %if.then.1158, %land.lhs.true.1154, %if.end.1149
  %606 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8 0, i8* %606, align 1, !tbaa !15
  %arraydecay1163 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %607 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call1164 = call i32 @putline(i8* %arraydecay1163, %struct.mailer_con_info* %607)
  %tobool1165 = icmp ne i32 %call1164, 0
  br i1 %tobool1165, label %if.end.1167, label %if.then.1166

if.then.1166:                                     ; preds = %if.end.1162
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.1320

if.end.1167:                                      ; preds = %if.end.1162
  store i32 0, i32* %fromstate, align 4, !tbaa !5
  store i32 0, i32* %linelen, align 4, !tbaa !5
  %arraydecay1168 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay1168, i8** %bp, align 8, !tbaa !1
  %608 = load i32, i32* %c11034, align 4, !tbaa !5
  store i32 %608, i32* %c21036, align 4, !tbaa !5
  br label %while.cond.1124

if.end.1169:                                      ; preds = %while.body.1129
  %609 = load i32, i32* %c21036, align 4, !tbaa !5
  %cmp1170 = icmp eq i32 %609, 32
  br i1 %cmp1170, label %land.lhs.true.1172, label %if.else.1189

land.lhs.true.1172:                               ; preds = %if.end.1169
  %610 = load i32, i32* %linelen, align 4, !tbaa !5
  %cmp1173 = icmp eq i32 %610, 4
  br i1 %cmp1173, label %land.lhs.true.1175, label %if.else.1189

land.lhs.true.1175:                               ; preds = %land.lhs.true.1172
  %611 = load i32, i32* %fromstate, align 4, !tbaa !5
  %cmp1176 = icmp eq i32 %611, 4
  br i1 %cmp1176, label %land.lhs.true.1178, label %if.else.1189

land.lhs.true.1178:                               ; preds = %land.lhs.true.1175
  %612 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer1179 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %612, i32 0, i32 11
  %613 = load %struct.mailer*, %struct.mailer** %mci_mailer1179, align 8, !tbaa !28
  %m_flags1180 = getelementptr inbounds %struct.mailer, %struct.mailer* %613, i32 0, i32 5
  %arrayidx1181 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags1180, i32 0, i64 2
  %614 = load i32, i32* %arrayidx1181, align 4, !tbaa !5
  %and1182 = and i32 %614, 32
  %tobool1183 = icmp ne i32 %and1182, 0
  br i1 %tobool1183, label %if.then.1184, label %if.else.1189

if.then.1184:                                     ; preds = %land.lhs.true.1178
  %615 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1185 = getelementptr inbounds i8, i8* %615, i32 1
  store i8* %incdec.ptr1185, i8** %bp, align 8, !tbaa !1
  store i8 61, i8* %615, align 1, !tbaa !15
  %616 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1186 = getelementptr inbounds i8, i8* %616, i32 1
  store i8* %incdec.ptr1186, i8** %bp, align 8, !tbaa !1
  store i8 50, i8* %616, align 1, !tbaa !15
  %617 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1187 = getelementptr inbounds i8, i8* %617, i32 1
  store i8* %incdec.ptr1187, i8** %bp, align 8, !tbaa !1
  store i8 48, i8* %617, align 1, !tbaa !15
  %618 = load i32, i32* %linelen, align 4, !tbaa !5
  %add1188 = add nsw i32 %618, 3
  store i32 %add1188, i32* %linelen, align 4, !tbaa !5
  br label %if.end.1200

if.else.1189:                                     ; preds = %land.lhs.true.1178, %land.lhs.true.1175, %land.lhs.true.1172, %if.end.1169
  %619 = load i32, i32* %c21036, align 4, !tbaa !5
  %cmp1190 = icmp eq i32 %619, 32
  br i1 %cmp1190, label %if.then.1195, label %lor.lhs.false.1192

lor.lhs.false.1192:                               ; preds = %if.else.1189
  %620 = load i32, i32* %c21036, align 4, !tbaa !5
  %cmp1193 = icmp eq i32 %620, 9
  br i1 %cmp1193, label %if.then.1195, label %if.end.1199

if.then.1195:                                     ; preds = %lor.lhs.false.1192, %if.else.1189
  %621 = load i32, i32* %c21036, align 4, !tbaa !5
  %conv1196 = trunc i32 %621 to i8
  %622 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1197 = getelementptr inbounds i8, i8* %622, i32 1
  store i8* %incdec.ptr1197, i8** %bp, align 8, !tbaa !1
  store i8 %conv1196, i8* %622, align 1, !tbaa !15
  %623 = load i32, i32* %linelen, align 4, !tbaa !5
  %inc1198 = add nsw i32 %623, 1
  store i32 %inc1198, i32* %linelen, align 4, !tbaa !5
  br label %if.end.1199

if.end.1199:                                      ; preds = %if.then.1195, %lor.lhs.false.1192
  br label %if.end.1200

if.end.1200:                                      ; preds = %if.end.1199, %if.then.1184
  %624 = load i32, i32* %linelen, align 4, !tbaa !5
  %cmp1201 = icmp sgt i32 %624, 72
  br i1 %cmp1201, label %land.lhs.true.1203, label %if.end.1238

land.lhs.true.1203:                               ; preds = %if.end.1200
  %625 = load i32, i32* %linelen, align 4, !tbaa !5
  %cmp1204 = icmp sgt i32 %625, 75
  br i1 %cmp1204, label %if.then.1215, label %lor.lhs.false.1206

lor.lhs.false.1206:                               ; preds = %land.lhs.true.1203
  %626 = load i32, i32* %c11034, align 4, !tbaa !5
  %cmp1207 = icmp ne i32 %626, 46
  br i1 %cmp1207, label %if.then.1215, label %lor.lhs.false.1209

lor.lhs.false.1209:                               ; preds = %lor.lhs.false.1206
  %627 = load i32, i32* %linelen, align 4, !tbaa !5
  %cmp1210 = icmp sgt i32 %627, 73
  br i1 %cmp1210, label %land.lhs.true.1212, label %if.end.1238

land.lhs.true.1212:                               ; preds = %lor.lhs.false.1209
  %628 = load i32, i32* %c21036, align 4, !tbaa !5
  %cmp1213 = icmp eq i32 %628, 46
  br i1 %cmp1213, label %if.then.1215, label %if.end.1238

if.then.1215:                                     ; preds = %land.lhs.true.1212, %lor.lhs.false.1206, %land.lhs.true.1203
  %629 = load i32, i32* %linelen, align 4, !tbaa !5
  %cmp1216 = icmp sgt i32 %629, 73
  br i1 %cmp1216, label %land.lhs.true.1218, label %if.else.1223

land.lhs.true.1218:                               ; preds = %if.then.1215
  %630 = load i32, i32* %c21036, align 4, !tbaa !5
  %cmp1219 = icmp eq i32 %630, 46
  br i1 %cmp1219, label %if.then.1221, label %if.else.1223

if.then.1221:                                     ; preds = %land.lhs.true.1218
  %631 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1222 = getelementptr inbounds i8, i8* %631, i32 -1
  store i8* %incdec.ptr1222, i8** %bp, align 8, !tbaa !1
  br label %if.end.1224

if.else.1223:                                     ; preds = %land.lhs.true.1218, %if.then.1215
  store i32 10, i32* %c21036, align 4, !tbaa !5
  br label %if.end.1224

if.end.1224:                                      ; preds = %if.else.1223, %if.then.1221
  %632 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1225 = getelementptr inbounds i8, i8* %632, i32 1
  store i8* %incdec.ptr1225, i8** %bp, align 8, !tbaa !1
  store i8 61, i8* %632, align 1, !tbaa !15
  %633 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8 0, i8* %633, align 1, !tbaa !15
  %arraydecay1226 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %634 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call1227 = call i32 @putline(i8* %arraydecay1226, %struct.mailer_con_info* %634)
  %tobool1228 = icmp ne i32 %call1227, 0
  br i1 %tobool1228, label %if.end.1230, label %if.then.1229

if.then.1229:                                     ; preds = %if.end.1224
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.1320

if.end.1230:                                      ; preds = %if.end.1224
  store i32 0, i32* %fromstate, align 4, !tbaa !5
  store i32 0, i32* %linelen, align 4, !tbaa !5
  %arraydecay1231 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay1231, i8** %bp, align 8, !tbaa !1
  %635 = load i32, i32* %c21036, align 4, !tbaa !5
  %cmp1232 = icmp eq i32 %635, 46
  br i1 %cmp1232, label %if.then.1234, label %if.end.1237

if.then.1234:                                     ; preds = %if.end.1230
  %636 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1235 = getelementptr inbounds i8, i8* %636, i32 1
  store i8* %incdec.ptr1235, i8** %bp, align 8, !tbaa !1
  store i8 46, i8* %636, align 1, !tbaa !15
  %637 = load i32, i32* %linelen, align 4, !tbaa !5
  %inc1236 = add nsw i32 %637, 1
  store i32 %inc1236, i32* %linelen, align 4, !tbaa !5
  br label %if.end.1237

if.end.1237:                                      ; preds = %if.then.1234, %if.end.1230
  br label %if.end.1238

if.end.1238:                                      ; preds = %if.end.1237, %land.lhs.true.1212, %lor.lhs.false.1209, %if.end.1200
  %638 = load i32, i32* %c11034, align 4, !tbaa !5
  %and1239 = and i32 %638, 255
  %conv1240 = trunc i32 %and1239 to i8
  %conv1241 = zext i8 %conv1240 to i64
  %div1242 = udiv i64 %conv1241, 32
  %and1243 = and i64 %div1242, 7
  %arrayidx1244 = getelementptr inbounds [8 x i32], [8 x i32]* %badchars, i32 0, i64 %and1243
  %639 = load i32, i32* %arrayidx1244, align 4, !tbaa !5
  %640 = load i32, i32* %c11034, align 4, !tbaa !5
  %and1245 = and i32 %640, 255
  %conv1246 = trunc i32 %and1245 to i8
  %conv1247 = zext i8 %conv1246 to i64
  %rem1248 = urem i64 %conv1247, 32
  %sh_prom1249 = trunc i64 %rem1248 to i32
  %shl1250 = shl i32 1, %sh_prom1249
  %and1251 = and i32 %639, %shl1250
  %tobool1252 = icmp ne i32 %and1251, 0
  br i1 %tobool1252, label %if.then.1253, label %if.else.1265

if.then.1253:                                     ; preds = %if.end.1238
  %641 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1254 = getelementptr inbounds i8, i8* %641, i32 1
  store i8* %incdec.ptr1254, i8** %bp, align 8, !tbaa !1
  store i8 61, i8* %641, align 1, !tbaa !15
  %642 = load i32, i32* %c11034, align 4, !tbaa !5
  %shr1255 = ashr i32 %642, 4
  %and1256 = and i32 %shr1255, 15
  %idxprom1257 = sext i32 %and1256 to i64
  %arrayidx1258 = getelementptr inbounds [17 x i8], [17 x i8]* @Base16Code, i32 0, i64 %idxprom1257
  %643 = load i8, i8* %arrayidx1258, align 1, !tbaa !15
  %644 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1259 = getelementptr inbounds i8, i8* %644, i32 1
  store i8* %incdec.ptr1259, i8** %bp, align 8, !tbaa !1
  store i8 %643, i8* %644, align 1, !tbaa !15
  %645 = load i32, i32* %c11034, align 4, !tbaa !5
  %and1260 = and i32 %645, 15
  %idxprom1261 = sext i32 %and1260 to i64
  %arrayidx1262 = getelementptr inbounds [17 x i8], [17 x i8]* @Base16Code, i32 0, i64 %idxprom1261
  %646 = load i8, i8* %arrayidx1262, align 1, !tbaa !15
  %647 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1263 = getelementptr inbounds i8, i8* %647, i32 1
  store i8* %incdec.ptr1263, i8** %bp, align 8, !tbaa !1
  store i8 %646, i8* %647, align 1, !tbaa !15
  %648 = load i32, i32* %linelen, align 4, !tbaa !5
  %add1264 = add nsw i32 %648, 3
  store i32 %add1264, i32* %linelen, align 4, !tbaa !5
  br label %if.end.1287

if.else.1265:                                     ; preds = %if.end.1238
  %649 = load i32, i32* %c11034, align 4, !tbaa !5
  %cmp1266 = icmp ne i32 %649, 32
  br i1 %cmp1266, label %land.lhs.true.1268, label %if.end.1286

land.lhs.true.1268:                               ; preds = %if.else.1265
  %650 = load i32, i32* %c11034, align 4, !tbaa !5
  %cmp1269 = icmp ne i32 %650, 9
  br i1 %cmp1269, label %if.then.1271, label %if.end.1286

if.then.1271:                                     ; preds = %land.lhs.true.1268
  %651 = load i32, i32* %linelen, align 4, !tbaa !5
  %cmp1272 = icmp slt i32 %651, 4
  br i1 %cmp1272, label %land.lhs.true.1274, label %if.end.1282

land.lhs.true.1274:                               ; preds = %if.then.1271
  %652 = load i32, i32* %c11034, align 4, !tbaa !5
  %653 = load i32, i32* %linelen, align 4, !tbaa !5
  %idxprom1275 = sext i32 %653 to i64
  %arrayidx1276 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.51, i32 0, i64 %idxprom1275
  %654 = load i8, i8* %arrayidx1276, align 1, !tbaa !15
  %conv1277 = sext i8 %654 to i32
  %cmp1278 = icmp eq i32 %652, %conv1277
  br i1 %cmp1278, label %if.then.1280, label %if.end.1282

if.then.1280:                                     ; preds = %land.lhs.true.1274
  %655 = load i32, i32* %fromstate, align 4, !tbaa !5
  %inc1281 = add nsw i32 %655, 1
  store i32 %inc1281, i32* %fromstate, align 4, !tbaa !5
  br label %if.end.1282

if.end.1282:                                      ; preds = %if.then.1280, %land.lhs.true.1274, %if.then.1271
  %656 = load i32, i32* %c11034, align 4, !tbaa !5
  %conv1283 = trunc i32 %656 to i8
  %657 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1284 = getelementptr inbounds i8, i8* %657, i32 1
  store i8* %incdec.ptr1284, i8** %bp, align 8, !tbaa !1
  store i8 %conv1283, i8* %657, align 1, !tbaa !15
  %658 = load i32, i32* %linelen, align 4, !tbaa !5
  %inc1285 = add nsw i32 %658, 1
  store i32 %inc1285, i32* %linelen, align 4, !tbaa !5
  br label %if.end.1286

if.end.1286:                                      ; preds = %if.end.1282, %land.lhs.true.1268, %if.else.1265
  br label %if.end.1287

if.end.1287:                                      ; preds = %if.end.1286, %if.then.1253
  %659 = load i32, i32* %c11034, align 4, !tbaa !5
  store i32 %659, i32* %c21036, align 4, !tbaa !5
  br label %while.cond.1124

while.end.1288:                                   ; preds = %while.cond.1124
  %660 = load i32, i32* %c21036, align 4, !tbaa !5
  %cmp1289 = icmp eq i32 %660, 32
  br i1 %cmp1289, label %if.then.1294, label %lor.lhs.false.1291

lor.lhs.false.1291:                               ; preds = %while.end.1288
  %661 = load i32, i32* %c21036, align 4, !tbaa !5
  %cmp1292 = icmp eq i32 %661, 9
  br i1 %cmp1292, label %if.then.1294, label %if.end.1306

if.then.1294:                                     ; preds = %lor.lhs.false.1291, %while.end.1288
  %662 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1295 = getelementptr inbounds i8, i8* %662, i32 1
  store i8* %incdec.ptr1295, i8** %bp, align 8, !tbaa !1
  store i8 61, i8* %662, align 1, !tbaa !15
  %663 = load i32, i32* %c21036, align 4, !tbaa !5
  %shr1296 = ashr i32 %663, 4
  %and1297 = and i32 %shr1296, 15
  %idxprom1298 = sext i32 %and1297 to i64
  %arrayidx1299 = getelementptr inbounds [17 x i8], [17 x i8]* @Base16Code, i32 0, i64 %idxprom1298
  %664 = load i8, i8* %arrayidx1299, align 1, !tbaa !15
  %665 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1300 = getelementptr inbounds i8, i8* %665, i32 1
  store i8* %incdec.ptr1300, i8** %bp, align 8, !tbaa !1
  store i8 %664, i8* %665, align 1, !tbaa !15
  %666 = load i32, i32* %c21036, align 4, !tbaa !5
  %and1301 = and i32 %666, 15
  %idxprom1302 = sext i32 %and1301 to i64
  %arrayidx1303 = getelementptr inbounds [17 x i8], [17 x i8]* @Base16Code, i32 0, i64 %idxprom1302
  %667 = load i8, i8* %arrayidx1303, align 1, !tbaa !15
  %668 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr1304 = getelementptr inbounds i8, i8* %668, i32 1
  store i8* %incdec.ptr1304, i8** %bp, align 8, !tbaa !1
  store i8 %667, i8* %668, align 1, !tbaa !15
  %669 = load i32, i32* %linelen, align 4, !tbaa !5
  %add1305 = add nsw i32 %669, 3
  store i32 %add1305, i32* %linelen, align 4, !tbaa !5
  br label %if.end.1306

if.end.1306:                                      ; preds = %if.then.1294, %lor.lhs.false.1291
  %670 = load i32, i32* %linelen, align 4, !tbaa !5
  %cmp1307 = icmp sgt i32 %670, 0
  br i1 %cmp1307, label %if.then.1313, label %lor.lhs.false.1309

lor.lhs.false.1309:                               ; preds = %if.end.1306
  %671 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %arrayidx1310 = getelementptr inbounds i8*, i8** %671, i64 0
  %672 = load i8*, i8** %arrayidx1310, align 8, !tbaa !1
  %cmp1311 = icmp ne i8* %672, null
  br i1 %cmp1311, label %if.then.1313, label %if.end.1319

if.then.1313:                                     ; preds = %lor.lhs.false.1309, %if.end.1306
  %673 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8 0, i8* %673, align 1, !tbaa !15
  %arraydecay1314 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %674 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call1315 = call i32 @putline(i8* %arraydecay1314, %struct.mailer_con_info* %674)
  %tobool1316 = icmp ne i32 %call1315, 0
  br i1 %tobool1316, label %if.end.1318, label %if.then.1317

if.then.1317:                                     ; preds = %if.then.1313
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.1320

if.end.1318:                                      ; preds = %if.then.1313
  br label %if.end.1319

if.end.1319:                                      ; preds = %if.end.1318, %lor.lhs.false.1309
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1320

cleanup.1320:                                     ; preds = %if.then.1317, %if.then.1229, %if.then.1166, %if.then.1120, %if.then.1109, %if.end.1319
  %675 = bitcast [8 x i32]* %badchars to i8*
  call void @llvm.lifetime.end(i64 32, i8* %675) #1
  %676 = bitcast i32* %fromstate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %676) #1
  %677 = bitcast i32* %c21036 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %677) #1
  %678 = bitcast i32* %c11034 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %678) #1
  %cleanup.dest.1324 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1324, label %cleanup.1338 [
    i32 0, label %cleanup.cont.1325
    i32 18, label %writeerr
  ]

cleanup.cont.1325:                                ; preds = %cleanup.1320
  br label %if.end.1326

if.end.1326:                                      ; preds = %cleanup.cont.1325, %cleanup.cont.1031
  br label %if.end.1327

if.end.1327:                                      ; preds = %if.end.1326, %if.end.926
  %679 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv1328 = zext i8 %679 to i32
  %cmp1329 = icmp sge i32 %conv1328, 3
  br i1 %cmp1329, label %land.lhs.true.1331, label %if.end.1336

land.lhs.true.1331:                               ; preds = %if.end.1327
  %680 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool1332 = icmp ne i32 %680, 0
  br i1 %tobool1332, label %if.end.1336, label %if.then.1333

if.then.1333:                                     ; preds = %land.lhs.true.1331
  %681 = load i32, i32* %bt, align 4, !tbaa !5
  %idxprom1334 = sext i32 %681 to i64
  %arrayidx1335 = getelementptr inbounds [4 x i8*], [4 x i8*]* @MimeBoundaryNames, i32 0, i64 %idxprom1334
  %682 = load i8*, i8** %arrayidx1335, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i32 0, i32 0), i8* %682)
  br label %if.end.1336

if.end.1336:                                      ; preds = %if.then.1333, %land.lhs.true.1331, %if.end.1327
  %683 = load i32, i32* %bt, align 4, !tbaa !5
  store i32 %683, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1338

writeerr:                                         ; preds = %cleanup.1320, %cleanup.1028, %cleanup.760, %cleanup, %if.then.917, %if.then.890, %if.then.877, %if.then.673, %if.then.642, %if.then.570, %if.then.550
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1338

cleanup.1338:                                     ; preds = %writeerr, %cleanup.760, %if.end.1336, %cleanup.1320, %cleanup.1028, %if.end.699, %cleanup
  %684 = bitcast [2048 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %684) #1
  %685 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %685) #1
  %686 = bitcast [128 x i8]* %bbuf to i8*
  call void @llvm.lifetime.end(i64 128, i8* %686) #1
  %687 = bitcast [20 x %struct.args]* %argv to i8*
  call void @llvm.lifetime.end(i64 320, i8* %687) #1
  %688 = bitcast i32* %use_qp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %688) #1
  %689 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %689) #1
  %690 = bitcast i32* %argc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %690) #1
  %691 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %691) #1
  %692 = bitcast i8** %cte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %692) #1
  %693 = bitcast i8** %subtype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %693) #1
  %694 = bitcast i8** %type to i8*
  call void @llvm.lifetime.end(i64 8, i8* %694) #1
  %695 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %695) #1
  %696 = bitcast i64* %sectionhighbits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %696) #1
  %697 = bitcast i64* %sectionsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %697) #1
  %698 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %698) #1
  %699 = bitcast i32* %bt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %699) #1
  %700 = bitcast i32* %blen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %700) #1
  %701 = bitcast i32* %linelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %701) #1
  %702 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %702) #1
  %703 = load i32, i32* %retval
  ret i32 %703
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @sm_dprintf(i8*, ...) #2

declare void @usrerr(i8*, ...) #2

declare i8* @hvalue(i8*, %struct.header*) #2

declare i8** @prescan(i8*, i32, i8*, i32, i8**, i8*, i32) #2

declare void @cataddr(i8**, i8**, i8*, i32, i32, i32) #2

declare i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #2

declare i32 @wordinclass(i8*, i32) #2

declare i32 @sm_strcasecmp(i8*, i8*) #2

declare void @stripquotes(i8*) #2

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

declare i32 @putline(i8*, %struct.mailer_con_info*) #2

declare i32 @sm_io_fgets(%struct.sm_file*, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @mimeboundary(i8* %line, i8** %boundaries) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %boundaries.addr = alloca i8**, align 8
  %type = alloca i32, align 4
  %i = alloca i32, align 4
  %savec = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i8** %boundaries, i8*** %boundaries.addr, align 8, !tbaa !1
  %0 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %type, align 4, !tbaa !5
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %savec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 45
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx2, align 1, !tbaa !15
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv3, 45
  br i1 %cmp4, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %7 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %cmp7 = icmp eq i8** %7, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false, %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.6
  %8 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %8) #6
  %conv9 = trunc i64 %call to i32
  store i32 %conv9, i32* %i, align 4, !tbaa !5
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %9, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %11 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx12, align 1, !tbaa !15
  %conv13 = sext i8 %12 to i32
  %cmp14 = icmp eq i32 %conv13, 10
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %land.lhs.true, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.17
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %14, 0
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %sub20 = sub nsw i32 %15, 1
  %idxprom21 = sext i32 %sub20 to i64
  %16 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %16, i64 %idxprom21
  %17 = load i8, i8* %arrayidx22, align 1, !tbaa !15
  %conv23 = sext i8 %17 to i32
  %cmp24 = icmp eq i32 %conv23, 32
  br i1 %cmp24, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %sub26 = sub nsw i32 %18, 1
  %idxprom27 = sext i32 %sub26 to i64
  %19 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %19, i64 %idxprom27
  %20 = load i8, i8* %arrayidx28, align 1, !tbaa !15
  %conv29 = sext i8 %20 to i32
  %cmp30 = icmp eq i32 %conv29, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %21 = phi i1 [ true, %land.rhs ], [ %cmp30, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %21, %lor.end ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %dec32 = add nsw i32 %23, -1
  store i32 %dec32, i32* %i, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %24 to i64
  %25 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %25, i64 %idxprom33
  %26 = load i8, i8* %arrayidx34, align 1, !tbaa !15
  %conv35 = sext i8 %26 to i32
  store i32 %conv35, i32* %savec, align 4, !tbaa !5
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %27 to i64
  %28 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %28, i64 %idxprom36
  store i8 0, i8* %arrayidx37, align 1, !tbaa !15
  %29 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv38 = zext i8 %29 to i32
  %cmp39 = icmp sge i32 %conv38, 5
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.43

land.lhs.true.41:                                 ; preds = %while.end
  %30 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %land.lhs.true.41
  %31 = load i8*, i8** %line.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i32 0, i32 0), i8* %31)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %land.lhs.true.41, %while.end
  %32 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %call45 = call i32 @isboundary(i8* %arrayidx44, i8** %33)
  %cmp46 = icmp sge i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.end.43
  store i32 2, i32* %type, align 4, !tbaa !5
  br label %if.end.72

if.else:                                          ; preds = %if.end.43
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %cmp49 = icmp sgt i32 %34, 2
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.71

land.lhs.true.51:                                 ; preds = %if.else
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %sub52 = sub nsw i32 %35, 2
  %idxprom53 = sext i32 %sub52 to i64
  %36 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %36, i64 %idxprom53
  %call55 = call i32 @strncmp(i8* %arrayidx54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i64 2) #6
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.71

if.then.58:                                       ; preds = %land.lhs.true.51
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %sub59 = sub nsw i32 %37, 2
  %idxprom60 = sext i32 %sub59 to i64
  %38 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %38, i64 %idxprom60
  store i8 0, i8* %arrayidx61, align 1, !tbaa !15
  %39 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %39, i64 2
  %40 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %call63 = call i32 @isboundary(i8* %arrayidx62, i8** %40)
  %cmp64 = icmp sge i32 %call63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.58
  store i32 3, i32* %type, align 4, !tbaa !5
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.then.58
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %sub68 = sub nsw i32 %41, 2
  %idxprom69 = sext i32 %sub68 to i64
  %42 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i8, i8* %42, i64 %idxprom69
  store i8 45, i8* %arrayidx70, align 1, !tbaa !15
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.67, %land.lhs.true.51, %if.else
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.48
  %43 = load i32, i32* %savec, align 4, !tbaa !5
  %conv73 = trunc i32 %43 to i8
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom74 = sext i32 %44 to i64
  %45 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i8, i8* %45, i64 %idxprom74
  store i8 %conv73, i8* %arrayidx75, align 1, !tbaa !15
  %46 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv76 = zext i8 %46 to i32
  %cmp77 = icmp sge i32 %conv76, 5
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.84

land.lhs.true.79:                                 ; preds = %if.end.72
  %47 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool80 = icmp ne i32 %47, 0
  br i1 %tobool80, label %if.end.84, label %if.then.81

if.then.81:                                       ; preds = %land.lhs.true.79
  %48 = load i32, i32* %type, align 4, !tbaa !5
  %idxprom82 = sext i32 %48 to i64
  %arrayidx83 = getelementptr inbounds [4 x i8*], [4 x i8*]* @MimeBoundaryNames, i32 0, i64 %idxprom82
  %49 = load i8*, i8** %arrayidx83, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i8* %49)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %land.lhs.true.79, %if.end.72
  %50 = load i32, i32* %type, align 4, !tbaa !5
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.84, %if.then
  %51 = bitcast i32* %savec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare i32 @putxline(i8*, i64, %struct.mailer_con_info*, i32) #2

declare i64 @sm_strlcpyn(i8*, i64, i32, ...) #2

declare void @collect(%struct.sm_file*, i32, %struct.header**, %struct.envelope*, i32) #2

declare i32 @putheader(%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32) #2

declare i64 @sm_io_tell(%struct.sm_file*, i32) #2

declare void @syserr(i8*, ...) #2

declare i32 @sm_io_seek(%struct.sm_file*, i32, i64, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @mime_getchar_crlf(%struct.sm_file* %fp, i8** %boundaries, i32* %btp) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct.sm_file*, align 8
  %boundaries.addr = alloca i8**, align 8
  %btp.addr = alloca i32*, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.sm_file* %fp, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  store i8** %boundaries, i8*** %boundaries.addr, align 8, !tbaa !1
  store i32* %btp, i32** %btp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* @mime_getchar_crlf.sendlf, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @mime_getchar_crlf.sendlf, align 4, !tbaa !5
  store i32 10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %3 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %4 = load i32*, i32** %btp.addr, align 8, !tbaa !1
  %call = call i32 @mime_getchar(%struct.sm_file* %2, i8** %3, i32* %4)
  store i32 %call, i32* %c, align 4, !tbaa !5
  %5 = load i32, i32* %c, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, 10
  br i1 %cmp, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* @MapNLtoCRLF, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  store i32 1, i32* @mime_getchar_crlf.sendlf, align 4, !tbaa !5
  store i32 13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %7 = load i32, i32* %c, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %8 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @mime_getchar(%struct.sm_file* %fp, i8** %boundaries, i32* %btp) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct.sm_file*, align 8
  %boundaries.addr = alloca i8**, align 8
  %btp.addr = alloca i32*, align 8
  %c = alloca i32, align 4
  %start = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.sm_file* %fp, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  store i8** %boundaries, i8*** %boundaries.addr, align 8, !tbaa !1
  store i32* %btp, i32** %btp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %start, align 4, !tbaa !5
  %2 = load i32, i32* @mime_getchar.buflen, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !15
  %conv = zext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 10
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !15
  %conv3 = zext i8 %6 to i32
  store i32 %conv3, i32* %c, align 4, !tbaa !5
  br label %if.end.9

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* @mime_getchar.buflen, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %7, 0
  br i1 %cmp4, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %8 = load i32, i32* @mime_getchar.buflen, align 4, !tbaa !5
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* @mime_getchar.buflen, align 4, !tbaa !5
  %9 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** @mime_getchar.bp, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !15
  %conv7 = zext i8 %10 to i32
  store i32 %conv7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.8:                                        ; preds = %if.else
  %11 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call = call i32 @sm_io_getc(%struct.sm_file* %11, i32 -2)
  store i32 %call, i32* %c, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else.8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @mime_getchar.buf, i32 0, i32 0), i8** @mime_getchar.bp, align 8, !tbaa !1
  store i32 0, i32* @mime_getchar.buflen, align 4, !tbaa !5
  %12 = load i32, i32* %c, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %12, 10
  br i1 %cmp10, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %if.end.9
  %13 = load i32, i32* %c, align 4, !tbaa !5
  %conv13 = trunc i32 %13 to i8
  %14 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr14, i8** @mime_getchar.bp, align 8, !tbaa !1
  store i8 %conv13, i8* %14, align 1, !tbaa !15
  store i32 1, i32* @mime_getchar.atbol, align 4, !tbaa !5
  %15 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call15 = call i32 @sm_io_getc(%struct.sm_file* %15, i32 -2)
  store i32 %call15, i32* %c, align 4, !tbaa !5
  %16 = load i32, i32* %c, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %16, 10
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.12
  %17 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %18 = load i32, i32* %c, align 4, !tbaa !5
  %call19 = call i32 @sm_io_ungetc(%struct.sm_file* %17, i32 -2, i32 %18)
  %19 = load i32, i32* %c, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.then.12
  store i32 1, i32* %start, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.9
  %20 = load i32, i32* %c, align 4, !tbaa !5
  %cmp22 = icmp ne i32 %20, -1
  br i1 %cmp22, label %if.then.24, label %if.else.27

if.then.24:                                       ; preds = %if.end.21
  %21 = load i32, i32* %c, align 4, !tbaa !5
  %conv25 = trunc i32 %21 to i8
  %22 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr26, i8** @mime_getchar.bp, align 8, !tbaa !1
  store i8 %conv25, i8* %22, align 1, !tbaa !15
  br label %if.end.28

if.else.27:                                       ; preds = %if.end.21
  store i32 3, i32* @mime_getchar.bt, align 4, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.24
  %23 = load i32, i32* @mime_getchar.atbol, align 4, !tbaa !5
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %land.lhs.true.29, label %if.end.69

land.lhs.true.29:                                 ; preds = %if.end.28
  %24 = load i32, i32* %c, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %24, 45
  br i1 %cmp30, label %if.then.32, label %if.end.69

if.then.32:                                       ; preds = %land.lhs.true.29
  %25 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call33 = call i32 @sm_io_getc(%struct.sm_file* %25, i32 -2)
  store i32 %call33, i32* %c, align 4, !tbaa !5
  %26 = load i32, i32* %c, align 4, !tbaa !5
  %cmp34 = icmp ne i32 %26, 45
  br i1 %cmp34, label %if.then.36, label %if.end.47

if.then.36:                                       ; preds = %if.then.32
  %27 = load i32, i32* %c, align 4, !tbaa !5
  %cmp37 = icmp ne i32 %27, -1
  br i1 %cmp37, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %if.then.36
  %28 = load i32, i32* %c, align 4, !tbaa !5
  %conv40 = trunc i32 %28 to i8
  %29 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %incdec.ptr41 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr41, i8** @mime_getchar.bp, align 8, !tbaa !1
  store i8 %conv40, i8* %29, align 1, !tbaa !15
  br label %if.end.43

if.else.42:                                       ; preds = %if.then.36
  store i32 3, i32* @mime_getchar.bt, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.39
  %30 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([128 x i8]* @mime_getchar.buf to i64)
  %sub = sub nsw i64 %sub.ptr.sub, 1
  %conv44 = trunc i64 %sub to i32
  store i32 %conv44, i32* @mime_getchar.buflen, align 4, !tbaa !5
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @mime_getchar.buf, i32 0, i32 0), i8** @mime_getchar.bp, align 8, !tbaa !1
  %31 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr45, i8** @mime_getchar.bp, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !15
  %conv46 = zext i8 %32 to i32
  store i32 %conv46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.then.32
  %33 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %incdec.ptr48 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr48, i8** @mime_getchar.bp, align 8, !tbaa !1
  store i8 45, i8* %33, align 1, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.47
  %34 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %cmp49 = icmp ult i8* %34, getelementptr inbounds ([128 x i8], [128 x i8]* @mime_getchar.buf, i32 0, i64 126)
  br i1 %cmp49, label %land.lhs.true.51, label %land.end

land.lhs.true.51:                                 ; preds = %while.cond
  %35 = load %struct.sm_file*, %struct.sm_file** %fp.addr, align 8, !tbaa !1
  %call52 = call i32 @sm_io_getc(%struct.sm_file* %35, i32 -2)
  store i32 %call52, i32* %c, align 4, !tbaa !5
  %cmp53 = icmp ne i32 %call52, -1
  br i1 %cmp53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.51
  %36 = load i32, i32* %c, align 4, !tbaa !5
  %cmp55 = icmp ne i32 %36, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.51, %while.cond
  %37 = phi i1 [ false, %land.lhs.true.51 ], [ false, %while.cond ], [ %cmp55, %land.rhs ]
  br i1 %37, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %38 = load i32, i32* %c, align 4, !tbaa !5
  %conv57 = trunc i32 %38 to i8
  %39 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %incdec.ptr58 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr58, i8** @mime_getchar.bp, align 8, !tbaa !1
  store i8 %conv57, i8* %39, align 1, !tbaa !15
  br label %while.cond

while.end:                                        ; preds = %land.end
  %40 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  store i8 0, i8* %40, align 1, !tbaa !15
  %41 = load i32, i32* %start, align 4, !tbaa !5
  %idxprom = sext i32 %41 to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* @mime_getchar.buf, i32 0, i64 %idxprom
  %42 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %call59 = call i32 @mimeboundary(i8* %arrayidx, i8** %42)
  store i32 %call59, i32* @mime_getchar.bt, align 4, !tbaa !5
  %43 = load i32, i32* @mime_getchar.bt, align 4, !tbaa !5
  switch i32 %43, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.end, %while.end
  store i32 0, i32* @mime_getchar.buflen, align 4, !tbaa !5
  %44 = load i32, i32* @mime_getchar.bt, align 4, !tbaa !5
  %45 = load i32*, i32** %btp.addr, align 8, !tbaa !1
  store i32 %44, i32* %45, align 4, !tbaa !5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %while.end
  %46 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %cmp60 = icmp ult i8* %46, getelementptr inbounds ([128 x i8], [128 x i8]* @mime_getchar.buf, i32 0, i64 126)
  br i1 %cmp60, label %land.lhs.true.62, label %if.end.68

land.lhs.true.62:                                 ; preds = %sw.epilog
  %47 = load i32, i32* %c, align 4, !tbaa !5
  %cmp63 = icmp ne i32 %47, -1
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %land.lhs.true.62
  %48 = load i32, i32* %c, align 4, !tbaa !5
  %conv66 = trunc i32 %48 to i8
  %49 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %incdec.ptr67 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr67, i8** @mime_getchar.bp, align 8, !tbaa !1
  store i8 %conv66, i8* %49, align 1, !tbaa !15
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %land.lhs.true.62, %sw.epilog
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %land.lhs.true.29, %if.end.28
  %50 = load i32, i32* %c, align 4, !tbaa !5
  %cmp70 = icmp eq i32 %50, 10
  %conv71 = zext i1 %cmp70 to i32
  store i32 %conv71, i32* @mime_getchar.atbol, align 4, !tbaa !5
  %51 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast72 = ptrtoint i8* %51 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast72, ptrtoint ([128 x i8]* @mime_getchar.buf to i64)
  %sub74 = sub nsw i64 %sub.ptr.sub73, 1
  %conv75 = trunc i64 %sub74 to i32
  store i32 %conv75, i32* @mime_getchar.buflen, align 4, !tbaa !5
  %52 = load i32, i32* @mime_getchar.buflen, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %52, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.69
  %53 = load i32, i32* @mime_getchar.bt, align 4, !tbaa !5
  %54 = load i32*, i32** %btp.addr, align 8, !tbaa !1
  store i32 %53, i32* %54, align 4, !tbaa !5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %if.end.69
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @mime_getchar.buf, i32 0, i32 0), i8** @mime_getchar.bp, align 8, !tbaa !1
  %55 = load i8*, i8** @mime_getchar.bp, align 8, !tbaa !1
  %incdec.ptr80 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr80, i8** @mime_getchar.bp, align 8, !tbaa !1
  %56 = load i8, i8* %55, align 1, !tbaa !15
  %conv81 = zext i8 %56 to i32
  store i32 %conv81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.79, %if.then.78, %sw.bb, %if.end.43, %if.then.18, %if.then.6
  %57 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i8* @defcharset(%struct.envelope* %e) #0 {
entry:
  %retval = alloca i8*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.envelope* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from = getelementptr inbounds %struct.envelope, %struct.envelope* %1, i32 0, i32 4
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %e_from, i32 0, i32 4
  %2 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !29
  %cmp1 = icmp ne %struct.mailer* %2, null
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from3 = getelementptr inbounds %struct.envelope, %struct.envelope* %3, i32 0, i32 4
  %q_mailer4 = getelementptr inbounds %struct.address, %struct.address* %e_from3, i32 0, i32 4
  %4 = load %struct.mailer*, %struct.mailer** %q_mailer4, align 8, !tbaa !29
  %m_defcharset = getelementptr inbounds %struct.mailer, %struct.mailer* %4, i32 0, i32 21
  %5 = load i8*, i8** %m_defcharset, align 8, !tbaa !30
  %cmp5 = icmp ne i8* %5, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %6 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from6 = getelementptr inbounds %struct.envelope, %struct.envelope* %6, i32 0, i32 4
  %q_mailer7 = getelementptr inbounds %struct.address, %struct.address* %e_from6, i32 0, i32 4
  %7 = load %struct.mailer*, %struct.mailer** %q_mailer7, align 8, !tbaa !29
  %m_defcharset8 = getelementptr inbounds %struct.mailer, %struct.mailer* %7, i32 0, i32 21
  %8 = load i8*, i8** %m_defcharset8, align 8, !tbaa !30
  store i8* %8, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %9 = load i8*, i8** @DefaultCharSet, align 8, !tbaa !1
  %cmp9 = icmp ne i8* %9, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %10 = load i8*, i8** @DefaultCharSet, align 8, !tbaa !1
  store i8* %10, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define i32 @mime7to8(%struct.mailer_con_info* %mci, %struct.header* %header, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %header.addr = alloca %struct.header*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %pxflags = alloca i32, align 4
  %blen = alloca i32, align 4
  %p = alloca i8*, align 8
  %cte = alloca i8*, align 8
  %pvp = alloca i8**, align 8
  %fbufp = alloca i8*, align 8
  %buf = alloca [2048 x i8], align 16
  %fbuf = alloca [2049 x i8], align 16
  %pvpbuf = alloca [2048 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c3 = alloca i32, align 4
  %c4 = alloca i32, align 4
  %off = alloca i32, align 4
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.header* %header, %struct.header** %header.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %pxflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %blen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %cte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %fbufp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %6) #1
  %7 = bitcast [2049 x i8]* %fbuf to i8*
  call void @llvm.lifetime.start(i64 2049, i8* %7) #1
  %8 = bitcast [2048 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %8) #1
  %9 = load %struct.header*, %struct.header** %header.addr, align 8, !tbaa !1
  %call = call i8* @hvalue(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), %struct.header* %9)
  store i8* %call, i8** %p, align 8, !tbaa !1
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %pvpbuf, i32 0, i32 0
  %call1 = call i8** @prescan(i8* %11, i32 0, i8* %arraydecay, i32 2048, i8** null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @MimeTokenTab, i32 0, i32 0), i32 0)
  store i8** %call1, i8*** %pvp, align 8, !tbaa !1
  %cmp2 = icmp eq i8** %call1, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %12 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 0
  %13 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %13, null
  br i1 %cmp4, label %if.then, label %if.end.26

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %14, null
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), %cond.true ], [ %15, %cond.false ]
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i32 0, i32 0), i8* %cond)
  %16 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %16, i32 0, i32 11
  %17 = load i64, i64* %e_flags, align 8, !tbaa !7
  %or = or i64 %17, 8388608
  store i64 %or, i64* %e_flags, align 8, !tbaa !7
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp6 = icmp ne i8* %18, null
  br i1 %cmp6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %cond.end
  %arraydecay8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %call9 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay8, i64 2048, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.56, i32 0, i32 0), i8* %19)
  %arraydecay10 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %20 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call11 = call i32 @putline(i8* %arraydecay10, %struct.mailer_con_info* %20)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end, label %if.then.12

if.then.12:                                       ; preds = %if.then.7
  br label %writeerr

if.end:                                           ; preds = %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %cond.end
  %21 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call14 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), %struct.mailer_con_info* %21)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  br label %writeerr

if.end.17:                                        ; preds = %if.end.13
  %22 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %22, i32 0, i32 0
  %23 = load i64, i64* %mci_flags, align 8, !tbaa !21
  %and = and i64 %23, -513
  store i64 %and, i64* %mci_flags, align 8, !tbaa !21
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %if.end.17
  %24 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 24
  %25 = load %struct.sm_file*, %struct.sm_file** %e_dfp, align 8, !tbaa !23
  %arraydecay18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call19 = call i32 @sm_io_fgets(%struct.sm_file* %25, i32 -2, i8* %arraydecay18, i32 2048)
  store i32 %call19, i32* %blen, align 4, !tbaa !5
  %cmp20 = icmp sge i32 %call19, 0
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %26 = load i32, i32* %blen, align 4, !tbaa !5
  %conv = sext i32 %26 to i64
  %27 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call22 = call i32 @putxline(i8* %arraydecay21, i64 %conv, %struct.mailer_con_info* %27, i32 1)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %while.body
  br label %writeerr

if.end.25:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.405

if.end.26:                                        ; preds = %lor.lhs.false.3
  %28 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arraydecay27 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  call void @cataddr(i8** %28, i8** null, i8* %arraydecay27, i32 2048, i32 0, i32 0)
  %29 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %29, i32 0, i32 52
  %30 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !16
  %arraydecay28 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call29 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %30, i8* %arraydecay28)
  store i8* %call29, i8** %cte, align 8, !tbaa !1
  %31 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags30 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %31, i32 0, i32 0
  %32 = load i64, i64* %mci_flags30, align 8, !tbaa !21
  %or31 = or i64 %32, 512
  store i64 %or31, i64* %mci_flags30, align 8, !tbaa !21
  %33 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call32 = call i32 @putline(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0), %struct.mailer_con_info* %33)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.end.26
  br label %writeerr

if.end.35:                                        ; preds = %if.end.26
  %arraydecay36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %34 = load i8*, i8** %cte, align 8, !tbaa !1
  %35 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  %36 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %36, i32 0, i32 25
  %37 = load i8*, i8** %e_id, align 8, !tbaa !27
  %call37 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay36, i64 2048, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.58, i32 0, i32 0), i8* %34, i8* %35, i8* %37)
  %arraydecay38 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %38 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call39 = call i32 @putline(i8* %arraydecay38, %struct.mailer_con_info* %38)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %lor.lhs.false.41, label %if.then.44

lor.lhs.false.41:                                 ; preds = %if.end.35
  %39 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call42 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), %struct.mailer_con_info* %39)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %lor.lhs.false.41, %if.end.35
  br label %writeerr

if.end.45:                                        ; preds = %lor.lhs.false.41
  %40 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags46 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %40, i32 0, i32 0
  %41 = load i64, i64* %mci_flags46, align 8, !tbaa !21
  %and47 = and i64 %41, -513
  store i64 %and47, i64* %mci_flags46, align 8, !tbaa !21
  store i32 1, i32* %pxflags, align 4, !tbaa !5
  %42 = load i8*, i8** %cte, align 8, !tbaa !1
  %call48 = call i32 @sm_strcasecmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0))
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.end.45
  %43 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = bitcast i32* %c3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast i32* %c4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %arraydecay52 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  store i8* %arraydecay52, i8** %fbufp, align 8, !tbaa !1
  br label %while.cond.53

while.cond.53:                                    ; preds = %do.end.315, %if.then.258, %if.then.196, %if.then.129, %if.then.67, %if.then.51
  %47 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp54 = getelementptr inbounds %struct.envelope, %struct.envelope* %47, i32 0, i32 24
  %48 = load %struct.sm_file*, %struct.sm_file** %e_dfp54, align 8, !tbaa !23
  %call55 = call i32 @sm_io_getc(%struct.sm_file* %48, i32 -2)
  store i32 %call55, i32* %c1, align 4, !tbaa !5
  %cmp56 = icmp ne i32 %call55, -1
  br i1 %cmp56, label %while.body.58, label %while.end.316

while.body.58:                                    ; preds = %while.cond.53
  %49 = load i32, i32* %c1, align 4, !tbaa !5
  %and59 = and i32 %49, -128
  %cmp60 = icmp eq i32 %and59, 0
  br i1 %cmp60, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %while.body.58
  %50 = load i32, i32* %c1, align 4, !tbaa !5
  %idxprom = sext i32 %50 to i64
  %call62 = call i16** @__ctype_b_loc() #7
  %51 = load i16*, i16** %call62, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i16, i16* %51, i64 %idxprom
  %52 = load i16, i16* %arrayidx63, align 2, !tbaa !32
  %conv64 = zext i16 %52 to i32
  %and65 = and i32 %conv64, 8192
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true
  br label %while.cond.53

if.end.68:                                        ; preds = %land.lhs.true, %while.body.58
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.68
  %53 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp69 = getelementptr inbounds %struct.envelope, %struct.envelope* %53, i32 0, i32 24
  %54 = load %struct.sm_file*, %struct.sm_file** %e_dfp69, align 8, !tbaa !23
  %call70 = call i32 @sm_io_getc(%struct.sm_file* %54, i32 -2)
  store i32 %call70, i32* %c2, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %55 = load i32, i32* %c2, align 4, !tbaa !5
  %and71 = and i32 %55, -128
  %cmp72 = icmp eq i32 %and71, 0
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %56 = load i32, i32* %c2, align 4, !tbaa !5
  %idxprom74 = sext i32 %56 to i64
  %call75 = call i16** @__ctype_b_loc() #7
  %57 = load i16*, i16** %call75, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i16, i16* %57, i64 %idxprom74
  %58 = load i16, i16* %arrayidx76, align 2, !tbaa !32
  %conv77 = zext i16 %58 to i32
  %and78 = and i32 %conv77, 8192
  %tobool79 = icmp ne i32 %and78, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %59 = phi i1 [ false, %do.cond ], [ %tobool79, %land.rhs ]
  br i1 %59, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %60 = load i32, i32* %c2, align 4, !tbaa !5
  %cmp80 = icmp eq i32 %60, -1
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %do.end
  br label %while.end.316

if.end.83:                                        ; preds = %do.end
  br label %do.body.84

do.body.84:                                       ; preds = %land.end.98, %if.end.83
  %61 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp85 = getelementptr inbounds %struct.envelope, %struct.envelope* %61, i32 0, i32 24
  %62 = load %struct.sm_file*, %struct.sm_file** %e_dfp85, align 8, !tbaa !23
  %call86 = call i32 @sm_io_getc(%struct.sm_file* %62, i32 -2)
  store i32 %call86, i32* %c3, align 4, !tbaa !5
  br label %do.cond.87

do.cond.87:                                       ; preds = %do.body.84
  %63 = load i32, i32* %c3, align 4, !tbaa !5
  %and88 = and i32 %63, -128
  %cmp89 = icmp eq i32 %and88, 0
  br i1 %cmp89, label %land.rhs.91, label %land.end.98

land.rhs.91:                                      ; preds = %do.cond.87
  %64 = load i32, i32* %c3, align 4, !tbaa !5
  %idxprom92 = sext i32 %64 to i64
  %call93 = call i16** @__ctype_b_loc() #7
  %65 = load i16*, i16** %call93, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i16, i16* %65, i64 %idxprom92
  %66 = load i16, i16* %arrayidx94, align 2, !tbaa !32
  %conv95 = zext i16 %66 to i32
  %and96 = and i32 %conv95, 8192
  %tobool97 = icmp ne i32 %and96, 0
  br label %land.end.98

land.end.98:                                      ; preds = %land.rhs.91, %do.cond.87
  %67 = phi i1 [ false, %do.cond.87 ], [ %tobool97, %land.rhs.91 ]
  br i1 %67, label %do.body.84, label %do.end.99

do.end.99:                                        ; preds = %land.end.98
  %68 = load i32, i32* %c3, align 4, !tbaa !5
  %cmp100 = icmp eq i32 %68, -1
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %do.end.99
  br label %while.end.316

if.end.103:                                       ; preds = %do.end.99
  br label %do.body.104

do.body.104:                                      ; preds = %land.end.118, %if.end.103
  %69 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp105 = getelementptr inbounds %struct.envelope, %struct.envelope* %69, i32 0, i32 24
  %70 = load %struct.sm_file*, %struct.sm_file** %e_dfp105, align 8, !tbaa !23
  %call106 = call i32 @sm_io_getc(%struct.sm_file* %70, i32 -2)
  store i32 %call106, i32* %c4, align 4, !tbaa !5
  br label %do.cond.107

do.cond.107:                                      ; preds = %do.body.104
  %71 = load i32, i32* %c4, align 4, !tbaa !5
  %and108 = and i32 %71, -128
  %cmp109 = icmp eq i32 %and108, 0
  br i1 %cmp109, label %land.rhs.111, label %land.end.118

land.rhs.111:                                     ; preds = %do.cond.107
  %72 = load i32, i32* %c4, align 4, !tbaa !5
  %idxprom112 = sext i32 %72 to i64
  %call113 = call i16** @__ctype_b_loc() #7
  %73 = load i16*, i16** %call113, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i16, i16* %73, i64 %idxprom112
  %74 = load i16, i16* %arrayidx114, align 2, !tbaa !32
  %conv115 = zext i16 %74 to i32
  %and116 = and i32 %conv115, 8192
  %tobool117 = icmp ne i32 %and116, 0
  br label %land.end.118

land.end.118:                                     ; preds = %land.rhs.111, %do.cond.107
  %75 = phi i1 [ false, %do.cond.107 ], [ %tobool117, %land.rhs.111 ]
  br i1 %75, label %do.body.104, label %do.end.119

do.end.119:                                       ; preds = %land.end.118
  %76 = load i32, i32* %c4, align 4, !tbaa !5
  %cmp120 = icmp eq i32 %76, -1
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %do.end.119
  br label %while.end.316

if.end.123:                                       ; preds = %do.end.119
  %77 = load i32, i32* %c1, align 4, !tbaa !5
  %cmp124 = icmp eq i32 %77, 61
  br i1 %cmp124, label %if.then.129, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %if.end.123
  %78 = load i32, i32* %c2, align 4, !tbaa !5
  %cmp127 = icmp eq i32 %78, 61
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %lor.lhs.false.126, %if.end.123
  br label %while.cond.53

if.end.130:                                       ; preds = %lor.lhs.false.126
  %79 = load i32, i32* %c1, align 4, !tbaa !5
  %cmp131 = icmp slt i32 %79, 0
  br i1 %cmp131, label %cond.true.136, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %if.end.130
  %80 = load i32, i32* %c1, align 4, !tbaa !5
  %cmp134 = icmp sgt i32 %80, 127
  br i1 %cmp134, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %lor.lhs.false.133, %if.end.130
  br label %cond.end.141

cond.false.137:                                   ; preds = %lor.lhs.false.133
  %81 = load i32, i32* %c1, align 4, !tbaa !5
  %idxprom138 = sext i32 %81 to i64
  %arrayidx139 = getelementptr inbounds [128 x i8], [128 x i8]* @index_64, i32 0, i64 %idxprom138
  %82 = load i8, i8* %arrayidx139, align 1, !tbaa !15
  %conv140 = sext i8 %82 to i32
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.137, %cond.true.136
  %cond142 = phi i32 [ -1, %cond.true.136 ], [ %conv140, %cond.false.137 ]
  store i32 %cond142, i32* %c1, align 4, !tbaa !5
  %83 = load i32, i32* %c2, align 4, !tbaa !5
  %cmp143 = icmp slt i32 %83, 0
  br i1 %cmp143, label %cond.true.148, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %cond.end.141
  %84 = load i32, i32* %c2, align 4, !tbaa !5
  %cmp146 = icmp sgt i32 %84, 127
  br i1 %cmp146, label %cond.true.148, label %cond.false.149

cond.true.148:                                    ; preds = %lor.lhs.false.145, %cond.end.141
  br label %cond.end.153

cond.false.149:                                   ; preds = %lor.lhs.false.145
  %85 = load i32, i32* %c2, align 4, !tbaa !5
  %idxprom150 = sext i32 %85 to i64
  %arrayidx151 = getelementptr inbounds [128 x i8], [128 x i8]* @index_64, i32 0, i64 %idxprom150
  %86 = load i8, i8* %arrayidx151, align 1, !tbaa !15
  %conv152 = sext i8 %86 to i32
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.149, %cond.true.148
  %cond154 = phi i32 [ -1, %cond.true.148 ], [ %conv152, %cond.false.149 ]
  store i32 %cond154, i32* %c2, align 4, !tbaa !5
  %87 = load i32, i32* %c1, align 4, !tbaa !5
  %shl = shl i32 %87, 2
  %88 = load i32, i32* %c2, align 4, !tbaa !5
  %and155 = and i32 %88, 48
  %shr = ashr i32 %and155, 4
  %or156 = or i32 %shl, %shr
  %conv157 = trunc i32 %or156 to i8
  %89 = load i8*, i8** %fbufp, align 8, !tbaa !1
  store i8 %conv157, i8* %89, align 1, !tbaa !15
  br label %do.body.158

do.body.158:                                      ; preds = %cond.end.153
  %90 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr, i8** %fbufp, align 8, !tbaa !1
  %91 = load i8, i8* %90, align 1, !tbaa !15
  %conv159 = zext i8 %91 to i32
  %cmp160 = icmp eq i32 %conv159, 10
  br i1 %cmp160, label %if.then.166, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %do.body.158
  %92 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i64 2048
  %cmp164 = icmp uge i8* %92, %arrayidx163
  br i1 %cmp164, label %if.then.166, label %if.end.191

if.then.166:                                      ; preds = %lor.lhs.false.162, %do.body.158
  %93 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %incdec.ptr167 = getelementptr inbounds i8, i8* %93, i32 -1
  store i8* %incdec.ptr167, i8** %fbufp, align 8, !tbaa !1
  %94 = load i8, i8* %incdec.ptr167, align 1, !tbaa !15
  %conv168 = zext i8 %94 to i32
  %cmp169 = icmp ne i32 %conv168, 10
  br i1 %cmp169, label %if.then.180, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %if.then.166
  %95 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %arraydecay172 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %cmp173 = icmp ugt i8* %95, %arraydecay172
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.182

land.lhs.true.175:                                ; preds = %lor.lhs.false.171
  %96 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %incdec.ptr176 = getelementptr inbounds i8, i8* %96, i32 -1
  store i8* %incdec.ptr176, i8** %fbufp, align 8, !tbaa !1
  %97 = load i8, i8* %incdec.ptr176, align 1, !tbaa !15
  %conv177 = zext i8 %97 to i32
  %cmp178 = icmp ne i32 %conv177, 13
  br i1 %cmp178, label %if.then.180, label %if.end.182

if.then.180:                                      ; preds = %land.lhs.true.175, %if.then.166
  %98 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %incdec.ptr181 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr181, i8** %fbufp, align 8, !tbaa !1
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.180, %land.lhs.true.175, %lor.lhs.false.171
  %arraydecay183 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %99 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %arraydecay184 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %99 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay184 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %100 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %101 = load i32, i32* %pxflags, align 4, !tbaa !5
  %call185 = call i32 @putxline(i8* %arraydecay183, i64 %sub.ptr.sub, %struct.mailer_con_info* %100, i32 %101)
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.end.188, label %if.then.187

if.then.187:                                      ; preds = %if.end.182
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.188:                                       ; preds = %if.end.182
  %102 = load i32, i32* %pxflags, align 4, !tbaa !5
  %and189 = and i32 %102, -9
  store i32 %and189, i32* %pxflags, align 4, !tbaa !5
  %arraydecay190 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  store i8* %arraydecay190, i8** %fbufp, align 8, !tbaa !1
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.188, %lor.lhs.false.162
  br label %do.cond.192

do.cond.192:                                      ; preds = %if.end.191
  br label %do.end.193

do.end.193:                                       ; preds = %do.cond.192
  %103 = load i32, i32* %c3, align 4, !tbaa !5
  %cmp194 = icmp eq i32 %103, 61
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %do.end.193
  br label %while.cond.53

if.end.197:                                       ; preds = %do.end.193
  %104 = load i32, i32* %c3, align 4, !tbaa !5
  %cmp198 = icmp slt i32 %104, 0
  br i1 %cmp198, label %cond.true.203, label %lor.lhs.false.200

lor.lhs.false.200:                                ; preds = %if.end.197
  %105 = load i32, i32* %c3, align 4, !tbaa !5
  %cmp201 = icmp sgt i32 %105, 127
  br i1 %cmp201, label %cond.true.203, label %cond.false.204

cond.true.203:                                    ; preds = %lor.lhs.false.200, %if.end.197
  br label %cond.end.208

cond.false.204:                                   ; preds = %lor.lhs.false.200
  %106 = load i32, i32* %c3, align 4, !tbaa !5
  %idxprom205 = sext i32 %106 to i64
  %arrayidx206 = getelementptr inbounds [128 x i8], [128 x i8]* @index_64, i32 0, i64 %idxprom205
  %107 = load i8, i8* %arrayidx206, align 1, !tbaa !15
  %conv207 = sext i8 %107 to i32
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.204, %cond.true.203
  %cond209 = phi i32 [ -1, %cond.true.203 ], [ %conv207, %cond.false.204 ]
  store i32 %cond209, i32* %c3, align 4, !tbaa !5
  %108 = load i32, i32* %c2, align 4, !tbaa !5
  %and210 = and i32 %108, 15
  %shl211 = shl i32 %and210, 4
  %109 = load i32, i32* %c3, align 4, !tbaa !5
  %and212 = and i32 %109, 60
  %shr213 = ashr i32 %and212, 2
  %or214 = or i32 %shl211, %shr213
  %conv215 = trunc i32 %or214 to i8
  %110 = load i8*, i8** %fbufp, align 8, !tbaa !1
  store i8 %conv215, i8* %110, align 1, !tbaa !15
  br label %do.body.216

do.body.216:                                      ; preds = %cond.end.208
  %111 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %incdec.ptr217 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr217, i8** %fbufp, align 8, !tbaa !1
  %112 = load i8, i8* %111, align 1, !tbaa !15
  %conv218 = zext i8 %112 to i32
  %cmp219 = icmp eq i32 %conv218, 10
  br i1 %cmp219, label %if.then.225, label %lor.lhs.false.221

lor.lhs.false.221:                                ; preds = %do.body.216
  %113 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i64 2048
  %cmp223 = icmp uge i8* %113, %arrayidx222
  br i1 %cmp223, label %if.then.225, label %if.end.253

if.then.225:                                      ; preds = %lor.lhs.false.221, %do.body.216
  %114 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %incdec.ptr226 = getelementptr inbounds i8, i8* %114, i32 -1
  store i8* %incdec.ptr226, i8** %fbufp, align 8, !tbaa !1
  %115 = load i8, i8* %incdec.ptr226, align 1, !tbaa !15
  %conv227 = zext i8 %115 to i32
  %cmp228 = icmp ne i32 %conv227, 10
  br i1 %cmp228, label %if.then.239, label %lor.lhs.false.230

lor.lhs.false.230:                                ; preds = %if.then.225
  %116 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %arraydecay231 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %cmp232 = icmp ugt i8* %116, %arraydecay231
  br i1 %cmp232, label %land.lhs.true.234, label %if.end.241

land.lhs.true.234:                                ; preds = %lor.lhs.false.230
  %117 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %incdec.ptr235 = getelementptr inbounds i8, i8* %117, i32 -1
  store i8* %incdec.ptr235, i8** %fbufp, align 8, !tbaa !1
  %118 = load i8, i8* %incdec.ptr235, align 1, !tbaa !15
  %conv236 = zext i8 %118 to i32
  %cmp237 = icmp ne i32 %conv236, 13
  br i1 %cmp237, label %if.then.239, label %if.end.241

if.then.239:                                      ; preds = %land.lhs.true.234, %if.then.225
  %119 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %incdec.ptr240 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr240, i8** %fbufp, align 8, !tbaa !1
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.239, %land.lhs.true.234, %lor.lhs.false.230
  %arraydecay242 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %120 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %arraydecay243 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %sub.ptr.lhs.cast244 = ptrtoint i8* %120 to i64
  %sub.ptr.rhs.cast245 = ptrtoint i8* %arraydecay243 to i64
  %sub.ptr.sub246 = sub i64 %sub.ptr.lhs.cast244, %sub.ptr.rhs.cast245
  %121 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %122 = load i32, i32* %pxflags, align 4, !tbaa !5
  %call247 = call i32 @putxline(i8* %arraydecay242, i64 %sub.ptr.sub246, %struct.mailer_con_info* %121, i32 %122)
  %tobool248 = icmp ne i32 %call247, 0
  br i1 %tobool248, label %if.end.250, label %if.then.249

if.then.249:                                      ; preds = %if.end.241
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.250:                                       ; preds = %if.end.241
  %123 = load i32, i32* %pxflags, align 4, !tbaa !5
  %and251 = and i32 %123, -9
  store i32 %and251, i32* %pxflags, align 4, !tbaa !5
  %arraydecay252 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  store i8* %arraydecay252, i8** %fbufp, align 8, !tbaa !1
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.250, %lor.lhs.false.221
  br label %do.cond.254

do.cond.254:                                      ; preds = %if.end.253
  br label %do.end.255

do.end.255:                                       ; preds = %do.cond.254
  %124 = load i32, i32* %c4, align 4, !tbaa !5
  %cmp256 = icmp eq i32 %124, 61
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %do.end.255
  br label %while.cond.53

if.end.259:                                       ; preds = %do.end.255
  %125 = load i32, i32* %c4, align 4, !tbaa !5
  %cmp260 = icmp slt i32 %125, 0
  br i1 %cmp260, label %cond.true.265, label %lor.lhs.false.262

lor.lhs.false.262:                                ; preds = %if.end.259
  %126 = load i32, i32* %c4, align 4, !tbaa !5
  %cmp263 = icmp sgt i32 %126, 127
  br i1 %cmp263, label %cond.true.265, label %cond.false.266

cond.true.265:                                    ; preds = %lor.lhs.false.262, %if.end.259
  br label %cond.end.270

cond.false.266:                                   ; preds = %lor.lhs.false.262
  %127 = load i32, i32* %c4, align 4, !tbaa !5
  %idxprom267 = sext i32 %127 to i64
  %arrayidx268 = getelementptr inbounds [128 x i8], [128 x i8]* @index_64, i32 0, i64 %idxprom267
  %128 = load i8, i8* %arrayidx268, align 1, !tbaa !15
  %conv269 = sext i8 %128 to i32
  br label %cond.end.270

cond.end.270:                                     ; preds = %cond.false.266, %cond.true.265
  %cond271 = phi i32 [ -1, %cond.true.265 ], [ %conv269, %cond.false.266 ]
  store i32 %cond271, i32* %c4, align 4, !tbaa !5
  %129 = load i32, i32* %c3, align 4, !tbaa !5
  %and272 = and i32 %129, 3
  %shl273 = shl i32 %and272, 6
  %130 = load i32, i32* %c4, align 4, !tbaa !5
  %or274 = or i32 %shl273, %130
  %conv275 = trunc i32 %or274 to i8
  %131 = load i8*, i8** %fbufp, align 8, !tbaa !1
  store i8 %conv275, i8* %131, align 1, !tbaa !15
  br label %do.body.276

do.body.276:                                      ; preds = %cond.end.270
  %132 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %incdec.ptr277 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr277, i8** %fbufp, align 8, !tbaa !1
  %133 = load i8, i8* %132, align 1, !tbaa !15
  %conv278 = zext i8 %133 to i32
  %cmp279 = icmp eq i32 %conv278, 10
  br i1 %cmp279, label %if.then.285, label %lor.lhs.false.281

lor.lhs.false.281:                                ; preds = %do.body.276
  %134 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %arrayidx282 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i64 2048
  %cmp283 = icmp uge i8* %134, %arrayidx282
  br i1 %cmp283, label %if.then.285, label %if.end.313

if.then.285:                                      ; preds = %lor.lhs.false.281, %do.body.276
  %135 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %incdec.ptr286 = getelementptr inbounds i8, i8* %135, i32 -1
  store i8* %incdec.ptr286, i8** %fbufp, align 8, !tbaa !1
  %136 = load i8, i8* %incdec.ptr286, align 1, !tbaa !15
  %conv287 = zext i8 %136 to i32
  %cmp288 = icmp ne i32 %conv287, 10
  br i1 %cmp288, label %if.then.299, label %lor.lhs.false.290

lor.lhs.false.290:                                ; preds = %if.then.285
  %137 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %arraydecay291 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %cmp292 = icmp ugt i8* %137, %arraydecay291
  br i1 %cmp292, label %land.lhs.true.294, label %if.end.301

land.lhs.true.294:                                ; preds = %lor.lhs.false.290
  %138 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %incdec.ptr295 = getelementptr inbounds i8, i8* %138, i32 -1
  store i8* %incdec.ptr295, i8** %fbufp, align 8, !tbaa !1
  %139 = load i8, i8* %incdec.ptr295, align 1, !tbaa !15
  %conv296 = zext i8 %139 to i32
  %cmp297 = icmp ne i32 %conv296, 13
  br i1 %cmp297, label %if.then.299, label %if.end.301

if.then.299:                                      ; preds = %land.lhs.true.294, %if.then.285
  %140 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %incdec.ptr300 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr300, i8** %fbufp, align 8, !tbaa !1
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.299, %land.lhs.true.294, %lor.lhs.false.290
  %arraydecay302 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %141 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %arraydecay303 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %sub.ptr.lhs.cast304 = ptrtoint i8* %141 to i64
  %sub.ptr.rhs.cast305 = ptrtoint i8* %arraydecay303 to i64
  %sub.ptr.sub306 = sub i64 %sub.ptr.lhs.cast304, %sub.ptr.rhs.cast305
  %142 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %143 = load i32, i32* %pxflags, align 4, !tbaa !5
  %call307 = call i32 @putxline(i8* %arraydecay302, i64 %sub.ptr.sub306, %struct.mailer_con_info* %142, i32 %143)
  %tobool308 = icmp ne i32 %call307, 0
  br i1 %tobool308, label %if.end.310, label %if.then.309

if.then.309:                                      ; preds = %if.end.301
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.310:                                       ; preds = %if.end.301
  %144 = load i32, i32* %pxflags, align 4, !tbaa !5
  %and311 = and i32 %144, -9
  store i32 %and311, i32* %pxflags, align 4, !tbaa !5
  %arraydecay312 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  store i8* %arraydecay312, i8** %fbufp, align 8, !tbaa !1
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.310, %lor.lhs.false.281
  br label %do.cond.314

do.cond.314:                                      ; preds = %if.end.313
  br label %do.end.315

do.end.315:                                       ; preds = %do.cond.314
  br label %while.cond.53

while.end.316:                                    ; preds = %if.then.122, %if.then.102, %if.then.82, %while.cond.53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.309, %if.then.249, %if.then.187, %while.end.316
  %145 = bitcast i32* %c4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %c3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.405 [
    i32 0, label %cleanup.cont
    i32 2, label %writeerr
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.379

if.else:                                          ; preds = %if.end.45
  %149 = bitcast i32* %off to i8*
  call void @llvm.lifetime.start(i64 4, i8* %149) #1
  %150 = load i32, i32* %pxflags, align 4, !tbaa !5
  %or320 = or i32 %150, 8
  store i32 %or320, i32* %pxflags, align 4, !tbaa !5
  %arraydecay321 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  store i8* %arraydecay321, i8** %fbufp, align 8, !tbaa !1
  br label %while.cond.322

while.cond.322:                                   ; preds = %if.end.374, %if.then.338, %if.else
  %151 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp323 = getelementptr inbounds %struct.envelope, %struct.envelope* %151, i32 0, i32 24
  %152 = load %struct.sm_file*, %struct.sm_file** %e_dfp323, align 8, !tbaa !23
  %arraydecay324 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call325 = call i32 @sm_io_fgets(%struct.sm_file* %152, i32 -2, i8* %arraydecay324, i32 2048)
  %cmp326 = icmp sge i32 %call325, 0
  br i1 %cmp326, label %while.body.328, label %while.end.375

while.body.328:                                   ; preds = %while.cond.322
  %arraydecay329 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i64 2048
  %153 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %sub.ptr.lhs.cast331 = ptrtoint i8* %arrayidx330 to i64
  %sub.ptr.rhs.cast332 = ptrtoint i8* %153 to i64
  %sub.ptr.sub333 = sub i64 %sub.ptr.lhs.cast331, %sub.ptr.rhs.cast332
  %conv334 = trunc i64 %sub.ptr.sub333 to i32
  %call335 = call i32 @mime_fromqp(i8* %arraydecay329, i8** %fbufp, i32 %conv334)
  store i32 %call335, i32* %off, align 4, !tbaa !5
  br label %again

again:                                            ; preds = %if.then.366, %while.body.328
  %154 = load i32, i32* %off, align 4, !tbaa !5
  %cmp336 = icmp slt i32 %154, -1
  br i1 %cmp336, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %again
  br label %while.cond.322

if.end.339:                                       ; preds = %again
  %155 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %arraydecay340 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %sub.ptr.lhs.cast341 = ptrtoint i8* %155 to i64
  %sub.ptr.rhs.cast342 = ptrtoint i8* %arraydecay340 to i64
  %sub.ptr.sub343 = sub i64 %sub.ptr.lhs.cast341, %sub.ptr.rhs.cast342
  %cmp344 = icmp sgt i64 %sub.ptr.sub343, 0
  br i1 %cmp344, label %if.then.346, label %if.end.356

if.then.346:                                      ; preds = %if.end.339
  %arraydecay347 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %156 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %arraydecay348 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %sub.ptr.lhs.cast349 = ptrtoint i8* %156 to i64
  %sub.ptr.rhs.cast350 = ptrtoint i8* %arraydecay348 to i64
  %sub.ptr.sub351 = sub i64 %sub.ptr.lhs.cast349, %sub.ptr.rhs.cast350
  %sub = sub nsw i64 %sub.ptr.sub351, 1
  %157 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %158 = load i32, i32* %pxflags, align 4, !tbaa !5
  %call352 = call i32 @putxline(i8* %arraydecay347, i64 %sub, %struct.mailer_con_info* %157, i32 %158)
  %tobool353 = icmp ne i32 %call352, 0
  br i1 %tobool353, label %if.end.355, label %if.then.354

if.then.354:                                      ; preds = %if.then.346
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.376

if.end.355:                                       ; preds = %if.then.346
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %if.end.339
  %arraydecay357 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  store i8* %arraydecay357, i8** %fbufp, align 8, !tbaa !1
  %159 = load i32, i32* %off, align 4, !tbaa !5
  %cmp358 = icmp sge i32 %159, 0
  br i1 %cmp358, label %land.lhs.true.360, label %if.end.374

land.lhs.true.360:                                ; preds = %if.end.356
  %160 = load i32, i32* %off, align 4, !tbaa !5
  %idxprom361 = sext i32 %160 to i64
  %arrayidx362 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 %idxprom361
  %161 = load i8, i8* %arrayidx362, align 1, !tbaa !15
  %conv363 = sext i8 %161 to i32
  %cmp364 = icmp ne i32 %conv363, 0
  br i1 %cmp364, label %if.then.366, label %if.end.374

if.then.366:                                      ; preds = %land.lhs.true.360
  %arraydecay367 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %162 = load i32, i32* %off, align 4, !tbaa !5
  %idx.ext = sext i32 %162 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay367, i64 %idx.ext
  %arrayidx368 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i64 2048
  %163 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %sub.ptr.lhs.cast369 = ptrtoint i8* %arrayidx368 to i64
  %sub.ptr.rhs.cast370 = ptrtoint i8* %163 to i64
  %sub.ptr.sub371 = sub i64 %sub.ptr.lhs.cast369, %sub.ptr.rhs.cast370
  %conv372 = trunc i64 %sub.ptr.sub371 to i32
  %call373 = call i32 @mime_fromqp(i8* %add.ptr, i8** %fbufp, i32 %conv372)
  store i32 %call373, i32* %off, align 4, !tbaa !5
  br label %again

if.end.374:                                       ; preds = %land.lhs.true.360, %if.end.356
  br label %while.cond.322

while.end.375:                                    ; preds = %while.cond.322
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.376

cleanup.376:                                      ; preds = %if.then.354, %while.end.375
  %164 = bitcast i32* %off to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %cleanup.dest.377 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.377, label %cleanup.405 [
    i32 0, label %cleanup.cont.378
    i32 2, label %writeerr
  ]

cleanup.cont.378:                                 ; preds = %cleanup.376
  br label %if.end.379

if.end.379:                                       ; preds = %cleanup.cont.378, %cleanup.cont
  %165 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %arraydecay380 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %cmp381 = icmp ugt i8* %165, %arraydecay380
  br i1 %cmp381, label %if.then.383, label %if.end.393

if.then.383:                                      ; preds = %if.end.379
  %166 = load i8*, i8** %fbufp, align 8, !tbaa !1
  store i8 0, i8* %166, align 1, !tbaa !15
  %arraydecay384 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %167 = load i8*, i8** %fbufp, align 8, !tbaa !1
  %arraydecay385 = getelementptr inbounds [2049 x i8], [2049 x i8]* %fbuf, i32 0, i32 0
  %sub.ptr.lhs.cast386 = ptrtoint i8* %167 to i64
  %sub.ptr.rhs.cast387 = ptrtoint i8* %arraydecay385 to i64
  %sub.ptr.sub388 = sub i64 %sub.ptr.lhs.cast386, %sub.ptr.rhs.cast387
  %168 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %169 = load i32, i32* %pxflags, align 4, !tbaa !5
  %call389 = call i32 @putxline(i8* %arraydecay384, i64 %sub.ptr.sub388, %struct.mailer_con_info* %168, i32 %169)
  %tobool390 = icmp ne i32 %call389, 0
  br i1 %tobool390, label %if.end.392, label %if.then.391

if.then.391:                                      ; preds = %if.then.383
  br label %writeerr

if.end.392:                                       ; preds = %if.then.383
  br label %if.end.393

if.end.393:                                       ; preds = %if.end.392, %if.end.379
  %170 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call394 = call i32 @putline(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), %struct.mailer_con_info* %170)
  %tobool395 = icmp ne i32 %call394, 0
  br i1 %tobool395, label %if.end.397, label %if.then.396

if.then.396:                                      ; preds = %if.end.393
  br label %writeerr

if.end.397:                                       ; preds = %if.end.393
  %171 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 43), align 1, !tbaa !15
  %conv398 = zext i8 %171 to i32
  %cmp399 = icmp sge i32 %conv398, 3
  br i1 %cmp399, label %land.lhs.true.401, label %if.end.404

land.lhs.true.401:                                ; preds = %if.end.397
  %172 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool402 = icmp ne i32 %172, 0
  br i1 %tobool402, label %if.end.404, label %if.then.403

if.then.403:                                      ; preds = %land.lhs.true.401
  %173 = load i8*, i8** %cte, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i32 0, i32 0), i8* %173)
  br label %if.end.404

if.end.404:                                       ; preds = %if.then.403, %land.lhs.true.401, %if.end.397
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.405

writeerr:                                         ; preds = %cleanup.376, %cleanup, %if.then.396, %if.then.391, %if.then.44, %if.then.34, %if.then.24, %if.then.16, %if.then.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.405

cleanup.405:                                      ; preds = %writeerr, %if.end.404, %cleanup.376, %cleanup, %while.end
  %174 = bitcast [2048 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %174) #1
  %175 = bitcast [2049 x i8]* %fbuf to i8*
  call void @llvm.lifetime.end(i64 2049, i8* %175) #1
  %176 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %176) #1
  %177 = bitcast i8** %fbufp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast i8** %cte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast i32* %blen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %pxflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = load i32, i32* %retval
  ret i32 %183
}

declare i32 @sm_io_getc(%struct.sm_file*, i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define internal i32 @mime_fromqp(i8* %infile, i8** %outfile, i32 %maxlen) #0 {
entry:
  %retval = alloca i32, align 4
  %infile.addr = alloca i8*, align 8
  %outfile.addr = alloca i8**, align 8
  %maxlen.addr = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %nchar = alloca i32, align 4
  %b = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %infile, i8** %infile.addr, align 8, !tbaa !1
  store i8** %outfile, i8*** %outfile.addr, align 8, !tbaa !1
  store i32 %maxlen, i32* %maxlen.addr, align 4, !tbaa !5
  %0 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %nchar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %nchar, align 4, !tbaa !5
  %3 = bitcast i8** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %maxlen.addr, align 4, !tbaa !5
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %maxlen.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %dec, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %infile.addr, align 8, !tbaa !1
  store i8* %5, i8** %b, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.60, %if.end
  %6 = load i8*, i8** %infile.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %infile.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !15
  %conv = zext i8 %7 to i32
  store i32 %conv, i32* %c1, align 4, !tbaa !5
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, i32* %nchar, align 4, !tbaa !5
  %9 = load i32, i32* %maxlen.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %c1, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %11, 61
  br i1 %cmp5, label %if.then.7, label %if.else.52

if.then.7:                                        ; preds = %while.body
  %12 = load i8*, i8** %infile.addr, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr8, i8** %infile.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !15
  %conv9 = zext i8 %13 to i32
  store i32 %conv9, i32* %c1, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  br label %while.end

if.end.13:                                        ; preds = %if.then.7
  %14 = load i32, i32* %c1, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %14, 10
  br i1 %cmp14, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %15 = load i32, i32* %c1, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %15, 0
  br i1 %cmp16, label %cond.true, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %c1, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %16, 127
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.18, %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.18
  %17 = load i32, i32* %c1, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* @index_hex, i32 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv21 = sext i8 %18 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv21, %cond.false ]
  store i32 %cond, i32* %c1, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %cond, -1
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %cond.end, %if.end.13
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %cond.end.41, %if.else
  %19 = load i8*, i8** %infile.addr, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr25, i8** %infile.addr, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !15
  %conv26 = zext i8 %20 to i32
  store i32 %conv26, i32* %c2, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %do.body
  store i32 -1, i32* %c2, align 4, !tbaa !5
  br label %do.end

if.end.30:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.30
  %21 = load i32, i32* %c2, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %21, 0
  br i1 %cmp31, label %cond.true.36, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %do.cond
  %22 = load i32, i32* %c2, align 4, !tbaa !5
  %cmp34 = icmp sgt i32 %22, 127
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %lor.lhs.false.33, %do.cond
  br label %cond.end.41

cond.false.37:                                    ; preds = %lor.lhs.false.33
  %23 = load i32, i32* %c2, align 4, !tbaa !5
  %idxprom38 = sext i32 %23 to i64
  %arrayidx39 = getelementptr inbounds [128 x i8], [128 x i8]* @index_hex, i32 0, i64 %idxprom38
  %24 = load i8, i8* %arrayidx39, align 1, !tbaa !15
  %conv40 = sext i8 %24 to i32
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.37, %cond.true.36
  %cond42 = phi i32 [ -1, %cond.true.36 ], [ %conv40, %cond.false.37 ]
  store i32 %cond42, i32* %c2, align 4, !tbaa !5
  %cmp43 = icmp eq i32 %cond42, -1
  br i1 %cmp43, label %do.body, label %do.end

do.end:                                           ; preds = %cond.end.41, %if.then.29
  %25 = load i32, i32* %c2, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %25, -1
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %do.end
  br label %while.end

if.end.48:                                        ; preds = %do.end
  %26 = load i32, i32* %nchar, align 4, !tbaa !5
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %nchar, align 4, !tbaa !5
  %27 = load i32, i32* %c1, align 4, !tbaa !5
  %shl = shl i32 %27, 4
  %28 = load i32, i32* %c2, align 4, !tbaa !5
  %or = or i32 %shl, %28
  %conv49 = trunc i32 %or to i8
  %29 = load i8**, i8*** %outfile.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %29, align 8, !tbaa !1
  %incdec.ptr50 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr50, i8** %29, align 8, !tbaa !1
  store i8 %conv49, i8* %30, align 1, !tbaa !15
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.48
  br label %if.end.60

if.else.52:                                       ; preds = %while.body
  %31 = load i32, i32* %nchar, align 4, !tbaa !5
  %inc53 = add nsw i32 %31, 1
  store i32 %inc53, i32* %nchar, align 4, !tbaa !5
  %32 = load i32, i32* %c1, align 4, !tbaa !5
  %conv54 = trunc i32 %32 to i8
  %33 = load i8**, i8*** %outfile.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %33, align 8, !tbaa !1
  %incdec.ptr55 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr55, i8** %33, align 8, !tbaa !1
  store i8 %conv54, i8* %34, align 1, !tbaa !15
  %35 = load i32, i32* %c1, align 4, !tbaa !5
  %cmp56 = icmp eq i32 %35, 10
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.else.52
  br label %while.end

if.end.59:                                        ; preds = %if.else.52
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.51
  br label %while.cond

while.end:                                        ; preds = %if.then.58, %if.then.47, %if.then.12, %land.end
  %36 = load i8**, i8*** %outfile.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %36, align 8, !tbaa !1
  %incdec.ptr61 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr61, i8** %36, align 8, !tbaa !1
  store i8 0, i8* %37, align 1, !tbaa !15
  %38 = load i32, i32* %nchar, align 4, !tbaa !5
  %39 = load i32, i32* %maxlen.addr, align 4, !tbaa !5
  %cmp62 = icmp sge i32 %38, %39
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %while.end
  %40 = load i8*, i8** %infile.addr, align 8, !tbaa !1
  %41 = load i8*, i8** %b, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 1
  %conv65 = trunc i64 %sub to i32
  store i32 %conv65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %while.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.66, %if.then.64, %if.then.24, %if.then
  %42 = bitcast i8** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %nchar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare i32 @sm_io_ungetc(%struct.sm_file*, i32, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @isboundary(i8* %line, i8** %boundaries) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %boundaries.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i8** %boundaries, i8*** %boundaries.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sle i32 %1, 20
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %9 to i64
  %10 = load i8**, i8*** %boundaries.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8*, i8** %10, i64 %idxprom2
  %11 = load i8*, i8** %arrayidx3, align 8, !tbaa !1
  %call = call i32 @strcmp(i8* %8, i8* %11) #1
  store i32 %call, i32* %tmp, !tbaa !5
  %12 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %tmp, !tbaa !5
  %cmp4 = icmp eq i32 %14, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !9, i64 272}
!8 = !{!"envelope", !2, i64 0, !9, i64 8, !9, i64 16, !2, i64 24, !10, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !9, i64 256, !2, i64 264, !9, i64 272, !6, i64 280, !11, i64 284, !11, i64 286, !11, i64 288, !11, i64 290, !11, i64 292, !11, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !9, i64 456, !6, i64 464, !9, i64 472, !9, i64 480, !12, i64 488, !2, i64 2576, !2, i64 2584, !13, i64 2592, !9, i64 2624, !6, i64 2632, !2, i64 2640, !6, i64 2648}
!9 = !{!"long", !3, i64 0}
!10 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !9, i64 144, !2, i64 152, !11, i64 160, !2, i64 168, !6, i64 176, !6, i64 180, !2, i64 184}
!11 = !{!"short", !3, i64 0}
!12 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!13 = !{!"sm_timers", !14, i64 0}
!14 = !{!"_timer", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!15 = !{!3, !3, i64 0}
!16 = !{!8, !2, i64 2640}
!17 = !{!9, !9, i64 0}
!18 = !{!19, !2, i64 0}
!19 = !{!"args", !2, i64 0, !2, i64 8}
!20 = !{!19, !2, i64 8}
!21 = !{!22, !9, i64 0}
!22 = !{!"mailer_con_info", !9, i64 0, !11, i64 8, !11, i64 10, !11, i64 12, !11, i64 14, !6, i64 16, !9, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !9, i64 96, !2, i64 104, !2, i64 112, !9, i64 120, !6, i64 128, !2, i64 136, !2, i64 144, !6, i64 152, !2, i64 160, !12, i64 168}
!23 = !{!8, !2, i64 336}
!24 = !{!25, !9, i64 24}
!25 = !{!"sm_file", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !9, i64 24, !11, i64 32, !26, i64 40, !6, i64 56, !2, i64 64, !6, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !6, i64 136, !6, i64 140, !2, i64 144, !2, i64 152, !2, i64 160, !26, i64 168, !2, i64 184, !6, i64 192, !3, i64 196, !3, i64 199, !6, i64 200, !9, i64 208, !6, i64 216}
!26 = !{!"smbuf", !2, i64 0, !6, i64 8}
!27 = !{!8, !2, i64 344}
!28 = !{!22, !2, i64 64}
!29 = !{!8, !2, i64 64}
!30 = !{!31, !2, i64 144}
!31 = !{!"mailer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !3, i64 40, !11, i64 72, !11, i64 74, !2, i64 80, !11, i64 88, !11, i64 90, !11, i64 92, !11, i64 94, !2, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !2, i64 120, !2, i64 128, !6, i64 136, !6, i64 140, !2, i64 144, !9, i64 152, !6, i64 160, !11, i64 164}
!32 = !{!11, !11, i64 0}
