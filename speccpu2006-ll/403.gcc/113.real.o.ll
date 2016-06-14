; ModuleID = 'real.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.realvaluetype = type { [3 x i64] }

@ezero = constant [6 x i16] zeroinitializer, align 2
@.str = private unnamed_addr constant [27 x i8] c"conversion from NaN to int\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"conversion from NaN to unsigned int\00", align 1
@mode_class = external constant [59 x i32], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"real.c\00", align 1
@__FUNCTION__.ereal_from_int = private unnamed_addr constant [15 x i8] c"ereal_from_int\00", align 1
@eone = constant [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -32768, i16 16383], align 2
@mode_bitsize = external constant [59 x i16], align 16
@__FUNCTION__.ereal_from_uint = private unnamed_addr constant [16 x i8] c"ereal_from_uint\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ehalf = constant [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -32768, i16 16382], align 2
@etwo = constant [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -32768, i16 16384], align 2
@e32 = constant [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -32768, i16 16388], align 2
@elog2 = constant [6 x i16] [i16 -13852, i16 31147, i16 -11825, i16 6135, i16 -20110, i16 16382], align 2
@esqrt2 = constant [6 x i16] [i16 22910, i16 25732, i16 -1570, i16 -3277, i16 -19196, i16 16383], align 2
@epi = constant [6 x i16] [i16 -15162, i16 -15820, i16 8552, i16 -9566, i16 -14065, i16 16384], align 2
@rndprc = global i32 80, align 4
@merror = global i32 0, align 4
@__FUNCTION__.significand_size = private unnamed_addr constant [17 x i8] c"significand_size\00", align 1
@__FUNCTION__.endian = private unnamed_addr constant [7 x i8] c"endian\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"esub\00", align 1
@subflg = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"subtraction\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ediv\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"division\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"emul\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"multiplication\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"enormlz\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"normalization\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"etoasc\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"conversion to text\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"asctoe\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"parsing\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"eremain\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"modulus\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"esqrt\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"square root\00", align 1
@extra_warnings = external global i32, align 4
@.str.20 = private unnamed_addr constant [26 x i8] c"%s: argument domain error\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"%s: function singularity\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"%s: overflow range error\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"%s: underflow range error\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"%s: total loss of precision\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"%s: partial loss of precision\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"%s: NaN - producing operation\00", align 1
@__FUNCTION__.mtherr = private unnamed_addr constant [7 x i8] c"mtherr\00", align 1
@rlast = internal global i32 -1, align 4
@rbit = internal global [9 x i16] zeroinitializer, align 16
@rw = internal global i32 0, align 4
@rmsk = internal global i16 0, align 2
@rmbit = internal global i16 0, align 2
@re = internal global i32 0, align 4
@rebit = internal global i16 0, align 2
@.str.27 = private unnamed_addr constant [24 x i8] c"floating point overflow\00", align 1
@equot = internal global [9 x i16] zeroinitializer, align 16
@XFlittlenan = internal constant [6 x i16] [i16 0, i16 0, i16 0, i16 -16384, i16 -1, i16 0], align 2
@DFlittlenan = internal constant [4 x i16] [i16 0, i16 0, i16 0, i16 -8], align 2
@SFlittlenan = internal constant [2 x i16] [i16 0, i16 -64], align 2
@__FUNCTION__.make_nan = private unnamed_addr constant [9 x i8] c"make_nan\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"overflow on truncation to integer\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"overflow on truncation to unsigned integer\00", align 1
@wstring = internal global [80 x i8] zeroinitializer, align 16
@.str.30 = private unnamed_addr constant [6 x i8] c" NaN \00", align 1
@etens = internal constant [13 x [6 x i16]] [[6 x i16] [i16 -14004, i16 -26726, i16 -30176, i16 20994, i16 -15264, i16 29989], [6 x i16] [i16 -22707, i16 24036, i16 -15043, i16 15197, i16 -24949, i16 23186], [6 x i16] [i16 25869, i16 3095, i16 -32395, i16 30086, i16 -13962, i16 19784], [6 x i16] [i16 -13211, i16 -28218, i16 -23026, i16 -24402, i16 -7399, i16 18083], [6 x i16] [i16 -8772, i16 -8563, i16 -25095, i16 -5125, i16 -21890, i16 17233], [6 x i16] [i16 -14737, i16 -29473, i16 -32535, i16 18377, i16 -27718, i16 16808], [6 x i16] [i16 15551, i16 -22827, i16 -49, i16 8009, i16 -15752, i16 16595], [6 x i16] [i16 -4064, i16 -19043, i16 11120, i16 -21080, i16 -25147, i16 16489], [6 x i16] [i16 0, i16 0, i16 1024, i16 -13889, i16 -29157, i16 16436], [6 x i16] [i16 0, i16 0, i16 0, i16 8192, i16 -16708, i16 16409], [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -25536, i16 16396], [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -14336, i16 16389], [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -24576, i16 16386]], align 16
@.str.31 = private unnamed_addr constant [12 x i8] c" -Infinity \00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c" Infinity \00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@emtens = internal constant [13 x [6 x i16]] [[6 x i16] [i16 11748, i16 -24610, i16 -11570, i16 1224, i16 -22819, i16 2776], [6 x i16] [i16 18725, i16 11748, i16 13366, i16 21327, i16 -12626, i16 9579], [6 x i16] [i16 -30810, i16 -16195, i16 -9641, i16 -32091, i16 -23898, i16 12981], [6 x i16] [i16 28979, i16 -11748, i16 -9437, i16 -4558, i16 -28599, i16 14682], [6 x i16] [i16 -1391, i16 6457, i16 25466, i16 17189, i16 -16335, i16 15532], [6 x i16] [i16 -21379, i16 -7008, i16 25788, i16 18044, i16 -8752, i16 15957], [6 x i16] [i16 16164, i16 -5723, i16 -23239, i16 -5593, i16 -22401, i16 16170], [6 x i16] [i16 26590, i16 -27462, i16 17721, i16 7853, i16 -12367, i16 16276], [6 x i16] [i16 19503, i16 -7845, i16 -15283, i16 -27458, i16 -6507, i16 16329], [6 x i16] [i16 -574, i16 -12548, i16 -31647, i16 30481, i16 -21556, i16 16356], [6 x i16] [i16 -11325, i16 25899, i16 -7655, i16 5976, i16 -11849, i16 16369], [6 x i16] [i16 15729, i16 -10486, i16 28835, i16 2621, i16 -23593, i16 16376], [6 x i16] [i16 -13107, i16 -13108, i16 -13108, i16 -13108, i16 -13108, i16 16379]], align 16
@.str.34 = private unnamed_addr constant [4 x i8] c"e%d\00", align 1
@bmask = internal constant [17 x i16] [i16 -1, i16 -2, i16 -4, i16 -8, i16 -16, i16 -32, i16 -64, i16 -128, i16 -256, i16 -512, i16 -1024, i16 -2048, i16 -4096, i16 -8192, i16 -16384, i16 -32768, i16 0], align 16
@_hex_value = external constant [256 x i8], align 16
@_sch_istable = external constant [256 x i16], align 16

; Function Attrs: nounwind uwtable
define void @earith(%struct.realvaluetype* %value, i32 %icode, %struct.realvaluetype* %r1, %struct.realvaluetype* %r2) #0 {
entry:
  %value.addr = alloca %struct.realvaluetype*, align 8
  %icode.addr = alloca i32, align 4
  %r1.addr = alloca %struct.realvaluetype*, align 8
  %r2.addr = alloca %struct.realvaluetype*, align 8
  %d1 = alloca [6 x i16], align 2
  %d2 = alloca [6 x i16], align 2
  %v = alloca [6 x i16], align 2
  %code = alloca i32, align 4
  store %struct.realvaluetype* %value, %struct.realvaluetype** %value.addr, align 8
  store i32 %icode, i32* %icode.addr, align 4
  store %struct.realvaluetype* %r1, %struct.realvaluetype** %r1.addr, align 8
  store %struct.realvaluetype* %r2, %struct.realvaluetype** %r2.addr, align 8
  %0 = bitcast [6 x i16]* %d1 to i8*
  %1 = load %struct.realvaluetype*, %struct.realvaluetype** %r1.addr, align 8
  %2 = bitcast %struct.realvaluetype* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %2, i64 12, i32 2, i1 false)
  %3 = bitcast [6 x i16]* %d2 to i8*
  %4 = load %struct.realvaluetype*, %struct.realvaluetype** %r2.addr, align 8
  %5 = bitcast %struct.realvaluetype* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %5, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %d1, i32 0, i32 0
  %call = call i32 @eisnan(i16* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load %struct.realvaluetype*, %struct.realvaluetype** %value.addr, align 8
  %7 = bitcast %struct.realvaluetype* %6 to i8*
  %8 = bitcast [6 x i16]* %d1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 12, i32 2, i1 false)
  %9 = load %struct.realvaluetype*, %struct.realvaluetype** %value.addr, align 8
  %10 = bitcast %struct.realvaluetype* %9 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 12, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.end.49

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %d2, i32 0, i32 0
  %call2 = call i32 @eisnan(i16* %arraydecay1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %11 = load %struct.realvaluetype*, %struct.realvaluetype** %value.addr, align 8
  %12 = bitcast %struct.realvaluetype* %11 to i8*
  %13 = bitcast [6 x i16]* %d2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 12, i32 2, i1 false)
  %14 = load %struct.realvaluetype*, %struct.realvaluetype** %value.addr, align 8
  %15 = bitcast %struct.realvaluetype* %14 to i8*
  %add.ptr6 = getelementptr inbounds i8, i8* %15, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr6, i8 0, i64 12, i32 1, i1 false)
  br label %do.end.7

do.end.7:                                         ; preds = %do.body.5
  br label %do.end.49

if.end.8:                                         ; preds = %if.end
  %16 = load i32, i32* %icode.addr, align 4
  store i32 %16, i32* %code, align 4
  %17 = load i32, i32* %code, align 4
  switch i32 %17, label %sw.default [
    i32 59, label %sw.bb
    i32 60, label %sw.bb.12
    i32 61, label %sw.bb.16
    i32 70, label %sw.bb.20
    i32 78, label %sw.bb.24
    i32 79, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.end.8
  %arraydecay9 = getelementptr inbounds [6 x i16], [6 x i16]* %d2, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [6 x i16], [6 x i16]* %d1, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [6 x i16], [6 x i16]* %v, i32 0, i32 0
  call void @eadd(i16* %arraydecay9, i16* %arraydecay10, i16* %arraydecay11)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end.8
  %arraydecay13 = getelementptr inbounds [6 x i16], [6 x i16]* %d2, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [6 x i16], [6 x i16]* %d1, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [6 x i16], [6 x i16]* %v, i32 0, i32 0
  call void @esub(i16* %arraydecay13, i16* %arraydecay14, i16* %arraydecay15)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end.8
  %arraydecay17 = getelementptr inbounds [6 x i16], [6 x i16]* %d2, i32 0, i32 0
  %arraydecay18 = getelementptr inbounds [6 x i16], [6 x i16]* %d1, i32 0, i32 0
  %arraydecay19 = getelementptr inbounds [6 x i16], [6 x i16]* %v, i32 0, i32 0
  call void @emul(i16* %arraydecay17, i16* %arraydecay18, i16* %arraydecay19)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end.8
  %arraydecay21 = getelementptr inbounds [6 x i16], [6 x i16]* %d2, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [6 x i16], [6 x i16]* %d1, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [6 x i16], [6 x i16]* %v, i32 0, i32 0
  call void @ediv(i16* %arraydecay21, i16* %arraydecay22, i16* %arraydecay23)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end.8
  %arraydecay25 = getelementptr inbounds [6 x i16], [6 x i16]* %d1, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [6 x i16], [6 x i16]* %d2, i32 0, i32 0
  %call27 = call i32 @ecmp(i16* %arraydecay25, i16* %arraydecay26)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %sw.bb.24
  %arraydecay29 = getelementptr inbounds [6 x i16], [6 x i16]* %d1, i32 0, i32 0
  %arraydecay30 = getelementptr inbounds [6 x i16], [6 x i16]* %v, i32 0, i32 0
  call void @emov(i16* %arraydecay29, i16* %arraydecay30)
  br label %if.end.33

if.else:                                          ; preds = %sw.bb.24
  %arraydecay31 = getelementptr inbounds [6 x i16], [6 x i16]* %d2, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [6 x i16], [6 x i16]* %v, i32 0, i32 0
  call void @emov(i16* %arraydecay31, i16* %arraydecay32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.28
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.8
  %arraydecay35 = getelementptr inbounds [6 x i16], [6 x i16]* %d1, i32 0, i32 0
  %arraydecay36 = getelementptr inbounds [6 x i16], [6 x i16]* %d2, i32 0, i32 0
  %call37 = call i32 @ecmp(i16* %arraydecay35, i16* %arraydecay36)
  %cmp38 = icmp sgt i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %sw.bb.34
  %arraydecay40 = getelementptr inbounds [6 x i16], [6 x i16]* %d1, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [6 x i16], [6 x i16]* %v, i32 0, i32 0
  call void @emov(i16* %arraydecay40, i16* %arraydecay41)
  br label %if.end.45

if.else.42:                                       ; preds = %sw.bb.34
  %arraydecay43 = getelementptr inbounds [6 x i16], [6 x i16]* %d2, i32 0, i32 0
  %arraydecay44 = getelementptr inbounds [6 x i16], [6 x i16]* %v, i32 0, i32 0
  call void @emov(i16* %arraydecay43, i16* %arraydecay44)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.39
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.8
  %arraydecay46 = getelementptr inbounds [6 x i16], [6 x i16]* %v, i32 0, i32 0
  call void @emov(i16* getelementptr inbounds ([6 x i16], [6 x i16]* @ezero, i32 0, i32 0), i16* %arraydecay46)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.45, %if.end.33, %sw.bb.20, %sw.bb.16, %sw.bb.12, %sw.bb
  br label %do.body.47

do.body.47:                                       ; preds = %sw.epilog
  %18 = load %struct.realvaluetype*, %struct.realvaluetype** %value.addr, align 8
  %19 = bitcast %struct.realvaluetype* %18 to i8*
  %20 = bitcast [6 x i16]* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 12, i32 2, i1 false)
  %21 = load %struct.realvaluetype*, %struct.realvaluetype** %value.addr, align 8
  %22 = bitcast %struct.realvaluetype* %21 to i8*
  %add.ptr48 = getelementptr inbounds i8, i8* %22, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr48, i8 0, i64 12, i32 1, i1 false)
  br label %do.end.49

do.end.49:                                        ; preds = %do.end, %do.end.7, %do.body.47
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @eisnan(i16* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 5
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 32767
  %cmp = icmp ne i32 %and, 32767
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %x.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr, i16** %x.addr, align 8
  %4 = load i16, i16* %3, align 2
  %conv4 = zext i16 %4 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @eadd(i16* %a, i16* %b, i16* %c) #0 {
entry:
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %c.addr = alloca i16*, align 8
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  store i16* %c, i16** %c.addr, align 8
  %0 = load i16*, i16** %a.addr, align 8
  %call = call i32 @eisnan(i16* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16*, i16** %a.addr, align 8
  %2 = load i16*, i16** %c.addr, align 8
  call void @emov(i16* %1, i16* %2)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i16*, i16** %b.addr, align 8
  %call1 = call i32 @eisnan(i16* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load i16*, i16** %b.addr, align 8
  %5 = load i16*, i16** %c.addr, align 8
  call void @emov(i16* %4, i16* %5)
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i16*, i16** %a.addr, align 8
  %call5 = call i32 @eisinf(i16* %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.4
  %7 = load i16*, i16** %b.addr, align 8
  %call7 = call i32 @eisinf(i16* %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.13

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %8 = load i16*, i16** %a.addr, align 8
  %call10 = call i32 @eisneg(i16* %8)
  %9 = load i16*, i16** %b.addr, align 8
  %call11 = call i32 @eisneg(i16* %9)
  %xor = xor i32 %call10, %call11
  %cmp = icmp ne i32 %xor, 0
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.9
  call void @mtherr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 7)
  %10 = load i16*, i16** %c.addr, align 8
  call void @enan(i16* %10, i32 0)
  br label %return

if.end.13:                                        ; preds = %land.lhs.true.9, %land.lhs.true, %if.end.4
  store i32 0, i32* @subflg, align 4
  %11 = load i16*, i16** %a.addr, align 8
  %12 = load i16*, i16** %b.addr, align 8
  %13 = load i16*, i16** %c.addr, align 8
  call void @eadd1(i16* %11, i16* %12, i16* %13)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @esub(i16* %a, i16* %b, i16* %c) #0 {
entry:
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %c.addr = alloca i16*, align 8
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  store i16* %c, i16** %c.addr, align 8
  %0 = load i16*, i16** %a.addr, align 8
  %call = call i32 @eisnan(i16* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16*, i16** %a.addr, align 8
  %2 = load i16*, i16** %c.addr, align 8
  call void @emov(i16* %1, i16* %2)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i16*, i16** %b.addr, align 8
  %call1 = call i32 @eisnan(i16* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load i16*, i16** %b.addr, align 8
  %5 = load i16*, i16** %c.addr, align 8
  call void @emov(i16* %4, i16* %5)
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i16*, i16** %a.addr, align 8
  %call5 = call i32 @eisinf(i16* %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.4
  %7 = load i16*, i16** %b.addr, align 8
  %call7 = call i32 @eisinf(i16* %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.13

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %8 = load i16*, i16** %a.addr, align 8
  %call10 = call i32 @eisneg(i16* %8)
  %9 = load i16*, i16** %b.addr, align 8
  %call11 = call i32 @eisneg(i16* %9)
  %xor = xor i32 %call10, %call11
  %cmp = icmp eq i32 %xor, 0
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.9
  call void @mtherr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 7)
  %10 = load i16*, i16** %c.addr, align 8
  call void @enan(i16* %10, i32 0)
  br label %return

if.end.13:                                        ; preds = %land.lhs.true.9, %land.lhs.true, %if.end.4
  store i32 1, i32* @subflg, align 4
  %11 = load i16*, i16** %a.addr, align 8
  %12 = load i16*, i16** %b.addr, align 8
  %13 = load i16*, i16** %c.addr, align 8
  call void @eadd1(i16* %11, i16* %12, i16* %13)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emul(i16* %a, i16* %b, i16* %c) #0 {
entry:
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %c.addr = alloca i16*, align 8
  %ai = alloca [9 x i16], align 16
  %bi = alloca [9 x i16], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sign = alloca i32, align 4
  %lt = alloca i32, align 4
  %lta = alloca i32, align 4
  %ltb = alloca i32, align 4
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  store i16* %c, i16** %c.addr, align 8
  %0 = load i16*, i16** %a.addr, align 8
  %call = call i32 @eisneg(i16* %0)
  %1 = load i16*, i16** %b.addr, align 8
  %call1 = call i32 @eisneg(i16* %1)
  %xor = xor i32 %call, %call1
  store i32 %xor, i32* %sign, align 4
  %2 = load i16*, i16** %a.addr, align 8
  %call2 = call i32 @eisnan(i16* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i16*, i16** %a.addr, align 8
  %4 = load i16*, i16** %c.addr, align 8
  call void @emov(i16* %3, i16* %4)
  br label %if.end.79

if.end:                                           ; preds = %entry
  %5 = load i16*, i16** %b.addr, align 8
  %call3 = call i32 @eisnan(i16* %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %6 = load i16*, i16** %b.addr, align 8
  %7 = load i16*, i16** %c.addr, align 8
  call void @emov(i16* %6, i16* %7)
  br label %if.end.79

if.end.6:                                         ; preds = %if.end
  %8 = load i16*, i16** %a.addr, align 8
  %call7 = call i32 @eisinf(i16* %8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.6
  %9 = load i16*, i16** %b.addr, align 8
  %call9 = call i32 @ecmp(i16* %9, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @ezero, i32 0, i32 0))
  %cmp = icmp eq i32 %call9, 0
  br i1 %cmp, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.6
  %10 = load i16*, i16** %b.addr, align 8
  %call10 = call i32 @eisinf(i16* %10)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.16

land.lhs.true.12:                                 ; preds = %lor.lhs.false
  %11 = load i16*, i16** %a.addr, align 8
  %call13 = call i32 @ecmp(i16* %11, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @ezero, i32 0, i32 0))
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.12, %land.lhs.true
  call void @mtherr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 7)
  %12 = load i16*, i16** %c.addr, align 8
  %13 = load i32, i32* %sign, align 4
  call void @enan(i16* %12, i32 %13)
  br label %if.end.79

if.end.16:                                        ; preds = %land.lhs.true.12, %lor.lhs.false
  %14 = load i16*, i16** %a.addr, align 8
  %call17 = call i32 @eisinf(i16* %14)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.22, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.end.16
  %15 = load i16*, i16** %b.addr, align 8
  %call20 = call i32 @eisinf(i16* %15)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false.19, %if.end.16
  %16 = load i16*, i16** %c.addr, align 8
  call void @einfin(i16* %16)
  br label %mulsign

if.end.23:                                        ; preds = %lor.lhs.false.19
  %17 = load i16*, i16** %a.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  call void @emovi(i16* %17, i16* %arraydecay)
  %18 = load i16*, i16** %b.addr, align 8
  %arraydecay24 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  call void @emovi(i16* %18, i16* %arraydecay24)
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i64 1
  %19 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %19 to i32
  store i32 %conv, i32* %lta, align 4
  %arrayidx25 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 1
  %20 = load i16, i16* %arrayidx25, align 2
  %conv26 = zext i16 %20 to i32
  store i32 %conv26, i32* %ltb, align 4
  %arrayidx27 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i64 1
  %21 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %21 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.42

if.then.31:                                       ; preds = %if.end.23
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.31
  %22 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %22, 8
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx34 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i64 %idxprom
  %24 = load i16, i16* %arrayidx34, align 2
  %conv35 = zext i16 %24 to i32
  %cmp36 = icmp ne i32 %conv35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %for.body
  %arraydecay39 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  %call40 = call i32 @enormlz(i16* %arraydecay39)
  %25 = load i32, i32* %lta, align 4
  %sub = sub nsw i32 %25, %call40
  store i32 %sub, i32* %lta, align 4
  br label %mnzer1

if.end.41:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i16*, i16** %c.addr, align 8
  call void @eclear(i16* %27)
  br label %mulsign

if.end.42:                                        ; preds = %if.end.23
  br label %mnzer1

mnzer1:                                           ; preds = %if.end.42, %if.then.38
  %arrayidx43 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 1
  %28 = load i16, i16* %arrayidx43, align 2
  %conv44 = zext i16 %28 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.65

if.then.47:                                       ; preds = %mnzer1
  store i32 1, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.62, %if.then.47
  %29 = load i32, i32* %i, align 4
  %cmp49 = icmp slt i32 %29, 8
  br i1 %cmp49, label %for.body.51, label %for.end.64

for.body.51:                                      ; preds = %for.cond.48
  %30 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %30 to i64
  %arrayidx53 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 %idxprom52
  %31 = load i16, i16* %arrayidx53, align 2
  %conv54 = zext i16 %31 to i32
  %cmp55 = icmp ne i32 %conv54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %for.body.51
  %arraydecay58 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  %call59 = call i32 @enormlz(i16* %arraydecay58)
  %32 = load i32, i32* %ltb, align 4
  %sub60 = sub nsw i32 %32, %call59
  store i32 %sub60, i32* %ltb, align 4
  br label %mnzer2

if.end.61:                                        ; preds = %for.body.51
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %33 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %33, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.48

for.end.64:                                       ; preds = %for.cond.48
  %34 = load i16*, i16** %c.addr, align 8
  call void @eclear(i16* %34)
  br label %mulsign

if.end.65:                                        ; preds = %mnzer1
  br label %mnzer2

mnzer2:                                           ; preds = %if.end.65, %if.then.57
  %arraydecay66 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  %arraydecay67 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  %call68 = call i32 @emulm(i16* %arraydecay66, i16* %arraydecay67)
  store i32 %call68, i32* %j, align 4
  %35 = load i32, i32* %lta, align 4
  %36 = load i32, i32* %ltb, align 4
  %add = add nsw i32 %35, %36
  %sub69 = sub nsw i32 %add, 16382
  store i32 %sub69, i32* %lt, align 4
  %arraydecay70 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %lt, align 4
  call void @emdnorm(i16* %arraydecay70, i32 %37, i32 0, i32 %38, i32 64)
  %arraydecay71 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  %39 = load i16*, i16** %c.addr, align 8
  call void @emovo(i16* %arraydecay71, i16* %39)
  br label %mulsign

mulsign:                                          ; preds = %mnzer2, %for.end.64, %for.end, %if.then.22
  %40 = load i32, i32* %sign, align 4
  %tobool72 = icmp ne i32 %40, 0
  br i1 %tobool72, label %if.then.73, label %if.else

if.then.73:                                       ; preds = %mulsign
  %41 = load i16*, i16** %c.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %41, i64 5
  %42 = load i16, i16* %add.ptr, align 2
  %conv74 = zext i16 %42 to i32
  %or = or i32 %conv74, 32768
  %conv75 = trunc i32 %or to i16
  store i16 %conv75, i16* %add.ptr, align 2
  br label %if.end.79

if.else:                                          ; preds = %mulsign
  %43 = load i16*, i16** %c.addr, align 8
  %add.ptr76 = getelementptr inbounds i16, i16* %43, i64 5
  %44 = load i16, i16* %add.ptr76, align 2
  %conv77 = zext i16 %44 to i32
  %and = and i32 %conv77, -32769
  %conv78 = trunc i32 %and to i16
  store i16 %conv78, i16* %add.ptr76, align 2
  br label %if.end.79

if.end.79:                                        ; preds = %if.then, %if.then.5, %if.then.15, %if.else, %if.then.73
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ediv(i16* %a, i16* %b, i16* %c) #0 {
entry:
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %c.addr = alloca i16*, align 8
  %ai = alloca [9 x i16], align 16
  %bi = alloca [9 x i16], align 16
  %i = alloca i32, align 4
  %sign = alloca i32, align 4
  %lt = alloca i32, align 4
  %lta = alloca i32, align 4
  %ltb = alloca i32, align 4
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  store i16* %c, i16** %c.addr, align 8
  %0 = load i16*, i16** %a.addr, align 8
  %call = call i32 @eisneg(i16* %0)
  %1 = load i16*, i16** %b.addr, align 8
  %call1 = call i32 @eisneg(i16* %1)
  %xor = xor i32 %call, %call1
  store i32 %xor, i32* %sign, align 4
  %2 = load i16*, i16** %a.addr, align 8
  %call2 = call i32 @eisnan(i16* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i16*, i16** %a.addr, align 8
  %4 = load i16*, i16** %c.addr, align 8
  call void @emov(i16* %3, i16* %4)
  br label %if.end.80

if.end:                                           ; preds = %entry
  %5 = load i16*, i16** %b.addr, align 8
  %call3 = call i32 @eisnan(i16* %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %6 = load i16*, i16** %b.addr, align 8
  %7 = load i16*, i16** %c.addr, align 8
  call void @emov(i16* %6, i16* %7)
  br label %if.end.80

if.end.6:                                         ; preds = %if.end
  %8 = load i16*, i16** %a.addr, align 8
  %call7 = call i32 @ecmp(i16* %8, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @ezero, i32 0, i32 0))
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.6
  %9 = load i16*, i16** %b.addr, align 8
  %call8 = call i32 @ecmp(i16* %9, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @ezero, i32 0, i32 0))
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.6
  %10 = load i16*, i16** %a.addr, align 8
  %call10 = call i32 @eisinf(i16* %10)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.16

land.lhs.true.12:                                 ; preds = %lor.lhs.false
  %11 = load i16*, i16** %b.addr, align 8
  %call13 = call i32 @eisinf(i16* %11)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.12, %land.lhs.true
  call void @mtherr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 7)
  %12 = load i16*, i16** %c.addr, align 8
  %13 = load i32, i32* %sign, align 4
  call void @enan(i16* %12, i32 %13)
  br label %if.end.80

if.end.16:                                        ; preds = %land.lhs.true.12, %lor.lhs.false
  %14 = load i16*, i16** %b.addr, align 8
  %call17 = call i32 @eisinf(i16* %14)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %15 = load i16*, i16** %c.addr, align 8
  call void @einfin(i16* %15)
  br label %divsign

if.end.20:                                        ; preds = %if.end.16
  %16 = load i16*, i16** %a.addr, align 8
  %call21 = call i32 @eisinf(i16* %16)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  %17 = load i16*, i16** %c.addr, align 8
  call void @eclear(i16* %17)
  br label %divsign

if.end.24:                                        ; preds = %if.end.20
  %18 = load i16*, i16** %a.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  call void @emovi(i16* %18, i16* %arraydecay)
  %19 = load i16*, i16** %b.addr, align 8
  %arraydecay25 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  call void @emovi(i16* %19, i16* %arraydecay25)
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i64 1
  %20 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %20 to i32
  store i32 %conv, i32* %lta, align 4
  %arrayidx26 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 1
  %21 = load i16, i16* %arrayidx26, align 2
  %conv27 = zext i16 %21 to i32
  store i32 %conv27, i32* %ltb, align 4
  %arrayidx28 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 1
  %22 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %22 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.43

if.then.32:                                       ; preds = %if.end.24
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.32
  %23 = load i32, i32* %i, align 4
  %cmp33 = icmp slt i32 %23, 8
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx35 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 %idxprom
  %25 = load i16, i16* %arrayidx35, align 2
  %conv36 = zext i16 %25 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %for.body
  %arraydecay40 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  %call41 = call i32 @enormlz(i16* %arraydecay40)
  %26 = load i32, i32* %ltb, align 4
  %sub = sub nsw i32 %26, %call41
  store i32 %sub, i32* %ltb, align 4
  br label %dnzro1

if.end.42:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i16*, i16** %c.addr, align 8
  call void @eclear(i16* %28)
  br label %divsign

if.end.43:                                        ; preds = %if.end.24
  br label %dnzro1

dnzro1:                                           ; preds = %if.end.43, %if.then.39
  %arrayidx44 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i64 1
  %29 = load i16, i16* %arrayidx44, align 2
  %conv45 = zext i16 %29 to i32
  %cmp46 = icmp eq i32 %conv45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.66

if.then.48:                                       ; preds = %dnzro1
  store i32 1, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.63, %if.then.48
  %30 = load i32, i32* %i, align 4
  %cmp50 = icmp slt i32 %30, 8
  br i1 %cmp50, label %for.body.52, label %for.end.65

for.body.52:                                      ; preds = %for.cond.49
  %31 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %31 to i64
  %arrayidx54 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i64 %idxprom53
  %32 = load i16, i16* %arrayidx54, align 2
  %conv55 = zext i16 %32 to i32
  %cmp56 = icmp ne i32 %conv55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %for.body.52
  %arraydecay59 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  %call60 = call i32 @enormlz(i16* %arraydecay59)
  %33 = load i32, i32* %lta, align 4
  %sub61 = sub nsw i32 %33, %call60
  store i32 %sub61, i32* %lta, align 4
  br label %dnzro2

if.end.62:                                        ; preds = %for.body.52
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %34 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %34, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.49

for.end.65:                                       ; preds = %for.cond.49
  %35 = load i16*, i16** %c.addr, align 8
  call void @einfin(i16* %35)
  call void @mtherr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 2)
  br label %divsign

if.end.66:                                        ; preds = %dnzro1
  br label %dnzro2

dnzro2:                                           ; preds = %if.end.66, %if.then.58
  %arraydecay67 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  %arraydecay68 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  %call69 = call i32 @edivm(i16* %arraydecay67, i16* %arraydecay68)
  store i32 %call69, i32* %i, align 4
  %36 = load i32, i32* %ltb, align 4
  %37 = load i32, i32* %lta, align 4
  %sub70 = sub nsw i32 %36, %37
  %add = add nsw i32 %sub70, 16383
  store i32 %add, i32* %lt, align 4
  %arraydecay71 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %lt, align 4
  call void @emdnorm(i16* %arraydecay71, i32 %38, i32 0, i32 %39, i32 64)
  %arraydecay72 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  %40 = load i16*, i16** %c.addr, align 8
  call void @emovo(i16* %arraydecay72, i16* %40)
  br label %divsign

divsign:                                          ; preds = %dnzro2, %for.end.65, %for.end, %if.then.23, %if.then.19
  %41 = load i32, i32* %sign, align 4
  %tobool73 = icmp ne i32 %41, 0
  br i1 %tobool73, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %divsign
  %42 = load i16*, i16** %c.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %42, i64 5
  %43 = load i16, i16* %add.ptr, align 2
  %conv75 = zext i16 %43 to i32
  %or = or i32 %conv75, 32768
  %conv76 = trunc i32 %or to i16
  store i16 %conv76, i16* %add.ptr, align 2
  br label %if.end.80

if.else:                                          ; preds = %divsign
  %44 = load i16*, i16** %c.addr, align 8
  %add.ptr77 = getelementptr inbounds i16, i16* %44, i64 5
  %45 = load i16, i16* %add.ptr77, align 2
  %conv78 = zext i16 %45 to i32
  %and = and i32 %conv78, -32769
  %conv79 = trunc i32 %and to i16
  store i16 %conv79, i16* %add.ptr77, align 2
  br label %if.end.80

if.end.80:                                        ; preds = %if.then, %if.then.5, %if.then.15, %if.else, %if.then.74
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ecmp(i16* %a, i16* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %ai = alloca [9 x i16], align 16
  %bi = alloca [9 x i16], align 16
  %p = alloca i16*, align 8
  %q = alloca i16*, align 8
  %i = alloca i32, align 4
  %msign = alloca i32, align 4
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  %0 = load i16*, i16** %a.addr, align 8
  %call = call i32 @eisnan(i16* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16*, i16** %b.addr, align 8
  %call1 = call i32 @eisnan(i16* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i16*, i16** %a.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  call void @emovi(i16* %2, i16* %arraydecay)
  %arraydecay3 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  store i16* %arraydecay3, i16** %p, align 8
  %3 = load i16*, i16** %b.addr, align 8
  %arraydecay4 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  call void @emovi(i16* %3, i16* %arraydecay4)
  %arraydecay5 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  store i16* %arraydecay5, i16** %q, align 8
  %4 = load i16*, i16** %p, align 8
  %5 = load i16, i16* %4, align 2
  %conv = zext i16 %5 to i32
  %6 = load i16*, i16** %q, align 8
  %7 = load i16, i16* %6, align 2
  %conv6 = zext i16 %7 to i32
  %cmp = icmp ne i32 %conv, %conv6
  br i1 %cmp, label %if.then.8, label %if.end.27

if.then.8:                                        ; preds = %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %8 = load i32, i32* %i, align 4
  %cmp9 = icmp slt i32 %8, 8
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %conv11 = zext i16 %10 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  br label %nzro

if.end.15:                                        ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 %idxprom16
  %12 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %12 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  br label %nzro

if.end.22:                                        ; preds = %if.end.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

nzro:                                             ; preds = %if.then.21, %if.then.14
  %14 = load i16*, i16** %p, align 8
  %15 = load i16, i16* %14, align 2
  %conv23 = zext i16 %15 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %nzro
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %nzro
  store i32 -1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end
  %16 = load i16*, i16** %p, align 8
  %17 = load i16, i16* %16, align 2
  %conv28 = zext i16 %17 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.27
  store i32 1, i32* %msign, align 4
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.27
  store i32 -1, i32* %msign, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.31
  store i32 8, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.33
  %18 = load i16*, i16** %p, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %incdec.ptr, i16** %p, align 8
  %19 = load i16, i16* %18, align 2
  %conv34 = zext i16 %19 to i32
  %20 = load i16*, i16** %q, align 8
  %incdec.ptr35 = getelementptr inbounds i16, i16* %20, i32 1
  store i16* %incdec.ptr35, i16** %q, align 8
  %21 = load i16, i16* %20, align 2
  %conv36 = zext i16 %21 to i32
  %cmp37 = icmp ne i32 %conv34, %conv36
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %do.body
  br label %diff

if.end.40:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.40
  %22 = load i32, i32* %i, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %i, align 4
  %cmp41 = icmp sgt i32 %dec, 0
  br i1 %cmp41, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

diff:                                             ; preds = %if.then.39
  %23 = load i16*, i16** %p, align 8
  %incdec.ptr43 = getelementptr inbounds i16, i16* %23, i32 -1
  store i16* %incdec.ptr43, i16** %p, align 8
  %24 = load i16, i16* %incdec.ptr43, align 2
  %conv44 = zext i16 %24 to i32
  %25 = load i16*, i16** %q, align 8
  %incdec.ptr45 = getelementptr inbounds i16, i16* %25, i32 -1
  store i16* %incdec.ptr45, i16** %q, align 8
  %26 = load i16, i16* %incdec.ptr45, align 2
  %conv46 = zext i16 %26 to i32
  %cmp47 = icmp sgt i32 %conv44, %conv46
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %diff
  %27 = load i32, i32* %msign, align 4
  store i32 %27, i32* %retval
  br label %return

if.else.50:                                       ; preds = %diff
  %28 = load i32, i32* %msign, align 4
  %sub = sub nsw i32 0, %28
  store i32 %sub, i32* %retval
  br label %return

return:                                           ; preds = %if.else.50, %if.then.49, %do.end, %if.else, %if.then.26, %for.end, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal void @emov(i16* %a, i16* %b) #0 {
entry:
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %a.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %1, i32 1
  store i16* %incdec.ptr, i16** %a.addr, align 8
  %2 = load i16, i16* %1, align 2
  %3 = load i16*, i16** %b.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr1, i16** %b.addr, align 8
  store i16 %2, i16* %3, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @etrunci(%struct.realvaluetype* noalias sret %agg.result, %struct.realvaluetype* byval align 8 %x) #0 {
entry:
  %f = alloca [6 x i16], align 2
  %g = alloca [6 x i16], align 2
  %r = alloca %struct.realvaluetype, align 8
  %l = alloca i64, align 8
  %0 = bitcast [6 x i16]* %g to i8*
  %1 = bitcast %struct.realvaluetype* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %g, i32 0, i32 0
  %call = call i32 @eisnan(i16* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.realvaluetype* %agg.result to i8*
  %3 = bitcast %struct.realvaluetype* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %g, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [6 x i16], [6 x i16]* %f, i32 0, i32 0
  call void @eifrac(i16* %arraydecay1, i64* %l, i16* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [6 x i16], [6 x i16]* %g, i32 0, i32 0
  call void @ltoe(i64* %l, i16* %arraydecay3)
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct.realvaluetype* %r to i8*
  %5 = bitcast [6 x i16]* %g to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 12, i32 2, i1 false)
  %6 = bitcast %struct.realvaluetype* %r to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 12, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %7 = bitcast %struct.realvaluetype* %agg.result to i8*
  %8 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eifrac(i16* %x, i64* %i, i16* %frac) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %i.addr = alloca i64*, align 8
  %frac.addr = alloca i16*, align 8
  %xi = alloca [9 x i16], align 16
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ll = alloca i64, align 8
  store i16* %x, i16** %x.addr, align 8
  store i64* %i, i64** %i.addr, align 8
  store i16* %frac, i16** %frac.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  call void @emovi(i16* %0, i16* %arraydecay)
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 1
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %sub = sub nsw i32 %conv, 16382
  store i32 %sub, i32* %k, align 4
  %2 = load i32, i32* %k, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %i.addr, align 8
  store i64 0, i64* %3, align 8
  %arraydecay2 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %4 = load i16*, i16** %frac.addr, align 8
  call void @emovo(i16* %arraydecay2, i16* %4)
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %k, align 4
  %cmp3 = icmp sgt i32 %5, 63
  br i1 %cmp3, label %if.then.5, label %if.else.13

if.then.5:                                        ; preds = %if.end
  %arrayidx6 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 0
  %6 = load i16, i16* %arrayidx6, align 2
  %tobool = icmp ne i16 %6, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  %7 = load i64*, i64** %i.addr, align 8
  store i64 -9223372036854775808, i64* %7, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.then.5
  %8 = load i64*, i64** %i.addr, align 8
  store i64 9223372036854775807, i64* %8, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %arraydecay9 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %9 = load i32, i32* %k, align 4
  %call = call i32 @eshift(i16* %arraydecay9, i32 %9)
  %10 = load i32, i32* @extra_warnings, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.8
  br label %if.end.46

if.else.13:                                       ; preds = %if.end
  %11 = load i32, i32* %k, align 4
  %cmp14 = icmp sgt i32 %11, 16
  br i1 %cmp14, label %if.then.16, label %if.else.35

if.then.16:                                       ; preds = %if.else.13
  %12 = load i32, i32* %k, align 4
  %13 = load i32, i32* %k, align 4
  %shr = ashr i32 %13, 4
  %shl = shl i32 %shr, 4
  %sub17 = sub nsw i32 %12, %shl
  store i32 %sub17, i32* %j, align 4
  %arraydecay18 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %14 = load i32, i32* %j, align 4
  %call19 = call i32 @eshift(i16* %arraydecay18, i32 %14)
  %arrayidx20 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 2
  %15 = load i16, i16* %arrayidx20, align 2
  %conv21 = zext i16 %15 to i64
  store i64 %conv21, i64* %ll, align 8
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %k, align 4
  %sub22 = sub nsw i32 %17, %16
  store i32 %sub22, i32* %k, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.16
  %arraydecay23 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  call void @eshup6(i16* %arraydecay23)
  %18 = load i64, i64* %ll, align 8
  %shl24 = shl i64 %18, 16
  %arrayidx25 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 2
  %19 = load i16, i16* %arrayidx25, align 2
  %conv26 = zext i16 %19 to i64
  %or = or i64 %shl24, %conv26
  store i64 %or, i64* %ll, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %20 = load i32, i32* %k, align 4
  %sub27 = sub nsw i32 %20, 16
  store i32 %sub27, i32* %k, align 4
  %cmp28 = icmp sgt i32 %sub27, 0
  br i1 %cmp28, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load i64, i64* %ll, align 8
  %22 = load i64*, i64** %i.addr, align 8
  store i64 %21, i64* %22, align 8
  %arrayidx30 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 0
  %23 = load i16, i16* %arrayidx30, align 2
  %tobool31 = icmp ne i16 %23, 0
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %do.end
  %24 = load i64*, i64** %i.addr, align 8
  %25 = load i64, i64* %24, align 8
  %sub33 = sub nsw i64 0, %25
  %26 = load i64*, i64** %i.addr, align 8
  store i64 %sub33, i64* %26, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %do.end
  br label %if.end.45

if.else.35:                                       ; preds = %if.else.13
  %arraydecay36 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %27 = load i32, i32* %k, align 4
  %call37 = call i32 @eshift(i16* %arraydecay36, i32 %27)
  %arrayidx38 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 2
  %28 = load i16, i16* %arrayidx38, align 2
  %conv39 = zext i16 %28 to i64
  %and = and i64 %conv39, 65535
  %29 = load i64*, i64** %i.addr, align 8
  store i64 %and, i64* %29, align 8
  %arrayidx40 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 0
  %30 = load i16, i16* %arrayidx40, align 2
  %tobool41 = icmp ne i16 %30, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.else.35
  %31 = load i64*, i64** %i.addr, align 8
  %32 = load i64, i64* %31, align 8
  %sub43 = sub nsw i64 0, %32
  %33 = load i64*, i64** %i.addr, align 8
  store i64 %sub43, i64* %33, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.else.35
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.34
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.12
  %arrayidx47 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 0
  store i16 0, i16* %arrayidx47, align 2
  %arrayidx48 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 1
  store i16 16382, i16* %arrayidx48, align 2
  %arrayidx49 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 2
  store i16 0, i16* %arrayidx49, align 2
  %arraydecay50 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %call51 = call i32 @enormlz(i16* %arraydecay50)
  store i32 %call51, i32* %k, align 4
  %cmp52 = icmp sgt i32 %call51, 80
  br i1 %cmp52, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %if.end.46
  %arraydecay55 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  call void @ecleaz(i16* %arraydecay55)
  br label %if.end.63

if.else.56:                                       ; preds = %if.end.46
  %34 = load i32, i32* %k, align 4
  %conv57 = trunc i32 %34 to i16
  %conv58 = zext i16 %conv57 to i32
  %arrayidx59 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 1
  %35 = load i16, i16* %arrayidx59, align 2
  %conv60 = zext i16 %35 to i32
  %sub61 = sub nsw i32 %conv60, %conv58
  %conv62 = trunc i32 %sub61 to i16
  store i16 %conv62, i16* %arrayidx59, align 2
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.56, %if.then.54
  %arraydecay64 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %36 = load i16*, i16** %frac.addr, align 8
  call void @emovo(i16* %arraydecay64, i16* %36)
  br label %return

return:                                           ; preds = %if.end.63, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ltoe(i64* %lp, i16* %y) #0 {
entry:
  %lp.addr = alloca i64*, align 8
  %y.addr = alloca i16*, align 8
  %yi = alloca [9 x i16], align 16
  %ll = alloca i64, align 8
  %k = alloca i32, align 4
  store i64* %lp, i64** %lp.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i32 0
  call void @ecleaz(i16* %arraydecay)
  %0 = load i64*, i64** %lp.addr, align 8
  %1 = load i64, i64* %0, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** %lp.addr, align 8
  %3 = load i64, i64* %2, align 8
  %sub = sub nsw i64 0, %3
  store i64 %sub, i64* %ll, align 8
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i64 0
  store i16 -1, i16* %arrayidx, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i64*, i64** %lp.addr, align 8
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %ll, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i64, i64* %ll, align 8
  %shr = lshr i64 %6, 48
  %conv = trunc i64 %shr to i16
  %arrayidx1 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i64 2
  store i16 %conv, i16* %arrayidx1, align 2
  %7 = load i64, i64* %ll, align 8
  %shr2 = lshr i64 %7, 32
  %conv3 = trunc i64 %shr2 to i16
  %arrayidx4 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i64 3
  store i16 %conv3, i16* %arrayidx4, align 2
  %8 = load i64, i64* %ll, align 8
  %shr5 = lshr i64 %8, 16
  %conv6 = trunc i64 %shr5 to i16
  %arrayidx7 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i64 4
  store i16 %conv6, i16* %arrayidx7, align 2
  %9 = load i64, i64* %ll, align 8
  %conv8 = trunc i64 %9 to i16
  %arrayidx9 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i64 5
  store i16 %conv8, i16* %arrayidx9, align 2
  %arrayidx10 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i64 1
  store i16 16430, i16* %arrayidx10, align 2
  %arraydecay11 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i32 0
  %call = call i32 @enormlz(i16* %arraydecay11)
  store i32 %call, i32* %k, align 4
  %cmp12 = icmp sgt i32 %call, 80
  br i1 %cmp12, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.end
  %arraydecay15 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i32 0
  call void @ecleaz(i16* %arraydecay15)
  br label %if.end.23

if.else.16:                                       ; preds = %if.end
  %10 = load i32, i32* %k, align 4
  %conv17 = trunc i32 %10 to i16
  %conv18 = zext i16 %conv17 to i32
  %arrayidx19 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i64 1
  %11 = load i16, i16* %arrayidx19, align 2
  %conv20 = zext i16 %11 to i32
  %sub21 = sub nsw i32 %conv20, %conv18
  %conv22 = trunc i32 %sub21 to i16
  store i16 %conv22, i16* %arrayidx19, align 2
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.16, %if.then.14
  %arraydecay24 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i32 0
  %12 = load i16*, i16** %y.addr, align 8
  call void @emovo(i16* %arraydecay24, i16* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define void @etruncui(%struct.realvaluetype* noalias sret %agg.result, %struct.realvaluetype* byval align 8 %x) #0 {
entry:
  %f = alloca [6 x i16], align 2
  %g = alloca [6 x i16], align 2
  %r = alloca %struct.realvaluetype, align 8
  %l = alloca i64, align 8
  %0 = bitcast [6 x i16]* %g to i8*
  %1 = bitcast %struct.realvaluetype* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %g, i32 0, i32 0
  %call = call i32 @eisnan(i16* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.realvaluetype* %agg.result to i8*
  %3 = bitcast %struct.realvaluetype* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %g, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [6 x i16], [6 x i16]* %f, i32 0, i32 0
  call void @euifrac(i16* %arraydecay1, i64* %l, i16* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [6 x i16], [6 x i16]* %g, i32 0, i32 0
  call void @ultoe(i64* %l, i16* %arraydecay3)
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct.realvaluetype* %r to i8*
  %5 = bitcast [6 x i16]* %g to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 12, i32 2, i1 false)
  %6 = bitcast %struct.realvaluetype* %r to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 12, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %7 = bitcast %struct.realvaluetype* %agg.result to i8*
  %8 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @euifrac(i16* %x, i64* %i, i16* %frac) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %i.addr = alloca i64*, align 8
  %frac.addr = alloca i16*, align 8
  %ll = alloca i64, align 8
  %xi = alloca [9 x i16], align 16
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  store i64* %i, i64** %i.addr, align 8
  store i16* %frac, i16** %frac.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  call void @emovi(i16* %0, i16* %arraydecay)
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 1
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %sub = sub nsw i32 %conv, 16382
  store i32 %sub, i32* %k, align 4
  %2 = load i32, i32* %k, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %i.addr, align 8
  store i64 0, i64* %3, align 8
  %arraydecay2 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %4 = load i16*, i16** %frac.addr, align 8
  call void @emovo(i16* %arraydecay2, i16* %4)
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %k, align 4
  %cmp3 = icmp sgt i32 %5, 64
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %6 = load i64*, i64** %i.addr, align 8
  store i64 -1, i64* %6, align 8
  %arraydecay6 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %7 = load i32, i32* %k, align 4
  %call = call i32 @eshift(i16* %arraydecay6, i32 %7)
  %8 = load i32, i32* @extra_warnings, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.31

if.else:                                          ; preds = %if.end
  %9 = load i32, i32* %k, align 4
  %cmp9 = icmp sgt i32 %9, 16
  br i1 %cmp9, label %if.then.11, label %if.else.25

if.then.11:                                       ; preds = %if.else
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %k, align 4
  %shr = ashr i32 %11, 4
  %shl = shl i32 %shr, 4
  %sub12 = sub nsw i32 %10, %shl
  store i32 %sub12, i32* %j, align 4
  %arraydecay13 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %12 = load i32, i32* %j, align 4
  %call14 = call i32 @eshift(i16* %arraydecay13, i32 %12)
  %arrayidx15 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 2
  %13 = load i16, i16* %arrayidx15, align 2
  %conv16 = zext i16 %13 to i64
  store i64 %conv16, i64* %ll, align 8
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %k, align 4
  %sub17 = sub nsw i32 %15, %14
  store i32 %sub17, i32* %k, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.11
  %arraydecay18 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  call void @eshup6(i16* %arraydecay18)
  %16 = load i64, i64* %ll, align 8
  %shl19 = shl i64 %16, 16
  %arrayidx20 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 2
  %17 = load i16, i16* %arrayidx20, align 2
  %conv21 = zext i16 %17 to i64
  %or = or i64 %shl19, %conv21
  store i64 %or, i64* %ll, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %18 = load i32, i32* %k, align 4
  %sub22 = sub nsw i32 %18, 16
  store i32 %sub22, i32* %k, align 4
  %cmp23 = icmp sgt i32 %sub22, 0
  br i1 %cmp23, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load i64, i64* %ll, align 8
  %20 = load i64*, i64** %i.addr, align 8
  store i64 %19, i64* %20, align 8
  br label %if.end.30

if.else.25:                                       ; preds = %if.else
  %arraydecay26 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %21 = load i32, i32* %k, align 4
  %call27 = call i32 @eshift(i16* %arraydecay26, i32 %21)
  %arrayidx28 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 2
  %22 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %22 to i64
  %and = and i64 %conv29, 65535
  %23 = load i64*, i64** %i.addr, align 8
  store i64 %and, i64* %23, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.25, %do.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.8
  %arrayidx32 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 0
  %24 = load i16, i16* %arrayidx32, align 2
  %tobool33 = icmp ne i16 %24, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  %25 = load i64*, i64** %i.addr, align 8
  store i64 0, i64* %25, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.31
  %arrayidx36 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 0
  store i16 0, i16* %arrayidx36, align 2
  %arrayidx37 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 1
  store i16 16382, i16* %arrayidx37, align 2
  %arrayidx38 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 2
  store i16 0, i16* %arrayidx38, align 2
  %arraydecay39 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %call40 = call i32 @enormlz(i16* %arraydecay39)
  store i32 %call40, i32* %k, align 4
  %cmp41 = icmp sgt i32 %call40, 80
  br i1 %cmp41, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.end.35
  %arraydecay44 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  call void @ecleaz(i16* %arraydecay44)
  br label %if.end.52

if.else.45:                                       ; preds = %if.end.35
  %26 = load i32, i32* %k, align 4
  %conv46 = trunc i32 %26 to i16
  %conv47 = zext i16 %conv46 to i32
  %arrayidx48 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 1
  %27 = load i16, i16* %arrayidx48, align 2
  %conv49 = zext i16 %27 to i32
  %sub50 = sub nsw i32 %conv49, %conv47
  %conv51 = trunc i32 %sub50 to i16
  store i16 %conv51, i16* %arrayidx48, align 2
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.45, %if.then.43
  %arraydecay53 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %28 = load i16*, i16** %frac.addr, align 8
  call void @emovo(i16* %arraydecay53, i16* %28)
  br label %return

return:                                           ; preds = %if.end.52, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ultoe(i64* %lp, i16* %y) #0 {
entry:
  %lp.addr = alloca i64*, align 8
  %y.addr = alloca i16*, align 8
  %yi = alloca [9 x i16], align 16
  %ll = alloca i64, align 8
  %k = alloca i32, align 4
  store i64* %lp, i64** %lp.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i32 0
  call void @ecleaz(i16* %arraydecay)
  %0 = load i64*, i64** %lp.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %ll, align 8
  %2 = load i64, i64* %ll, align 8
  %shr = lshr i64 %2, 48
  %conv = trunc i64 %shr to i16
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i64 2
  store i16 %conv, i16* %arrayidx, align 2
  %3 = load i64, i64* %ll, align 8
  %shr1 = lshr i64 %3, 32
  %conv2 = trunc i64 %shr1 to i16
  %arrayidx3 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i64 3
  store i16 %conv2, i16* %arrayidx3, align 2
  %4 = load i64, i64* %ll, align 8
  %shr4 = lshr i64 %4, 16
  %conv5 = trunc i64 %shr4 to i16
  %arrayidx6 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i64 4
  store i16 %conv5, i16* %arrayidx6, align 2
  %5 = load i64, i64* %ll, align 8
  %conv7 = trunc i64 %5 to i16
  %arrayidx8 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i64 5
  store i16 %conv7, i16* %arrayidx8, align 2
  %arrayidx9 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i64 1
  store i16 16430, i16* %arrayidx9, align 2
  %arraydecay10 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i32 0
  %call = call i32 @enormlz(i16* %arraydecay10)
  store i32 %call, i32* %k, align 4
  %cmp = icmp sgt i32 %call, 80
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay12 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i32 0
  call void @ecleaz(i16* %arraydecay12)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %k, align 4
  %conv13 = trunc i32 %6 to i16
  %conv14 = zext i16 %conv13 to i32
  %arrayidx15 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i64 1
  %7 = load i16, i16* %arrayidx15, align 2
  %conv16 = zext i16 %7 to i32
  %sub = sub nsw i32 %conv16, %conv14
  %conv17 = trunc i32 %sub to i16
  store i16 %conv17, i16* %arrayidx15, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay18 = getelementptr inbounds [9 x i16], [9 x i16]* %yi, i32 0, i32 0
  %8 = load i16*, i16** %y.addr, align 8
  call void @emovo(i16* %arraydecay18, i16* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ereal_atof(%struct.realvaluetype* noalias sret %agg.result, i8* %s, i32 %t) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %t.addr = alloca i32, align 4
  %tem = alloca [6 x i16], align 2
  %e = alloca [6 x i16], align 2
  %r = alloca %struct.realvaluetype, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %t.addr, align 4
  switch i32 %0, label %sw.default [
    i32 13, label %sw.bb
    i32 15, label %sw.bb
    i32 16, label %sw.bb.3
    i32 18, label %sw.bb.7
    i32 17, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i8*, i8** %s.addr, align 8
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %tem, i32 0, i32 0
  call void @asctoe24(i8* %1, i16* %arraydecay)
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %tem, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  call void @e24toe(i16* %arraydecay1, i16* %arraydecay2)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %arraydecay4 = getelementptr inbounds [6 x i16], [6 x i16]* %tem, i32 0, i32 0
  call void @asctoe53(i8* %2, i16* %arraydecay4)
  %arraydecay5 = getelementptr inbounds [6 x i16], [6 x i16]* %tem, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  call void @e53toe(i16* %arraydecay5, i16* %arraydecay6)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry, %entry
  %3 = load i8*, i8** %s.addr, align 8
  %arraydecay8 = getelementptr inbounds [6 x i16], [6 x i16]* %tem, i32 0, i32 0
  call void @asctoe64(i8* %3, i16* %arraydecay8)
  %arraydecay9 = getelementptr inbounds [6 x i16], [6 x i16]* %tem, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  call void @e64toe(i16* %arraydecay9, i16* %arraydecay10)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8
  %arraydecay11 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  call void @asctoe(i8* %4, i16* %arraydecay11)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.3, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %5 = bitcast %struct.realvaluetype* %r to i8*
  %6 = bitcast [6 x i16]* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 12, i32 2, i1 false)
  %7 = bitcast %struct.realvaluetype* %r to i8*
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 12, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %8 = bitcast %struct.realvaluetype* %agg.result to i8*
  %9 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @asctoe24(i8* %s, i16* %y) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %y.addr = alloca i16*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i16*, i16** %y.addr, align 8
  call void @asctoeg(i8* %0, i16* %1, i32 24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @e24toe(i16* %pe, i16* %y) #0 {
entry:
  %pe.addr = alloca i16*, align 8
  %y.addr = alloca i16*, align 8
  %r = alloca i16, align 2
  %e = alloca i16*, align 8
  %p = alloca i16*, align 8
  %yy = alloca [9 x i16], align 16
  %denorm = alloca i32, align 4
  %k = alloca i32, align 4
  store i16* %pe, i16** %pe.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  %0 = load i16*, i16** %pe.addr, align 8
  store i16* %0, i16** %e, align 8
  store i32 0, i32* %denorm, align 4
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @ecleaz(i16* %arraydecay)
  %1 = load i16*, i16** %e, align 8
  %add.ptr = getelementptr inbounds i16, i16* %1, i64 1
  store i16* %add.ptr, i16** %e, align 8
  %2 = load i16*, i16** %e, align 8
  %3 = load i16, i16* %2, align 2
  store i16 %3, i16* %r, align 2
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 0
  store i16 0, i16* %arrayidx, align 2
  %4 = load i16, i16* %r, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 0
  store i16 -1, i16* %arrayidx1, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i16, i16* %r, align 2
  %conv2 = zext i16 %5 to i32
  %and3 = and i32 %conv2, 127
  %or = or i32 %and3, 128
  %conv4 = trunc i32 %or to i16
  %arrayidx5 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 2
  store i16 %conv4, i16* %arrayidx5, align 2
  %6 = load i16, i16* %r, align 2
  %conv6 = zext i16 %6 to i32
  %and7 = and i32 %conv6, -32896
  %conv8 = trunc i32 %and7 to i16
  store i16 %conv8, i16* %r, align 2
  %7 = load i16, i16* %r, align 2
  %conv9 = zext i16 %7 to i32
  %cmp = icmp eq i32 %conv9, 32640
  br i1 %cmp, label %if.then.11, label %if.end.31

if.then.11:                                       ; preds = %if.end
  %8 = load i16*, i16** %pe.addr, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %8, i64 1
  %9 = load i16, i16* %arrayidx12, align 2
  %conv13 = zext i16 %9 to i32
  %and14 = and i32 %conv13, 127
  %cmp15 = icmp ne i32 %and14, 0
  br i1 %cmp15, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.11
  %10 = load i16*, i16** %pe.addr, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %10, i64 0
  %11 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %11 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %lor.lhs.false, %if.then.11
  %12 = load i16*, i16** %y.addr, align 8
  %arrayidx22 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 0
  %13 = load i16, i16* %arrayidx22, align 2
  %conv23 = zext i16 %13 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  %conv25 = zext i1 %cmp24 to i32
  call void @enan(i16* %12, i32 %conv25)
  br label %return

if.end.26:                                        ; preds = %lor.lhs.false
  %14 = load i16*, i16** %y.addr, align 8
  call void @eclear(i16* %14)
  %15 = load i16*, i16** %y.addr, align 8
  call void @einfin(i16* %15)
  %arrayidx27 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 0
  %16 = load i16, i16* %arrayidx27, align 2
  %tobool28 = icmp ne i16 %16, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %17 = load i16*, i16** %y.addr, align 8
  call void @eneg(i16* %17)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  br label %return

if.end.31:                                        ; preds = %if.end
  %18 = load i16, i16* %r, align 2
  %conv32 = zext i16 %18 to i32
  %shr = ashr i32 %conv32, 7
  %conv33 = trunc i32 %shr to i16
  store i16 %conv33, i16* %r, align 2
  %19 = load i16, i16* %r, align 2
  %conv34 = zext i16 %19 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %if.end.31
  store i32 1, i32* %denorm, align 4
  %arrayidx38 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 2
  %20 = load i16, i16* %arrayidx38, align 2
  %conv39 = zext i16 %20 to i32
  %and40 = and i32 %conv39, -129
  %conv41 = trunc i32 %and40 to i16
  store i16 %conv41, i16* %arrayidx38, align 2
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %if.end.31
  %21 = load i16, i16* %r, align 2
  %conv43 = zext i16 %21 to i32
  %add = add nsw i32 %conv43, 16256
  %conv44 = trunc i32 %add to i16
  store i16 %conv44, i16* %r, align 2
  %22 = load i16, i16* %r, align 2
  %arrayidx45 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 1
  store i16 %22, i16* %arrayidx45, align 2
  %arrayidx46 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 3
  store i16* %arrayidx46, i16** %p, align 8
  %23 = load i16*, i16** %e, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %23, i32 -1
  store i16* %incdec.ptr, i16** %e, align 8
  %24 = load i16, i16* %incdec.ptr, align 2
  %25 = load i16*, i16** %p, align 8
  %incdec.ptr47 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %incdec.ptr47, i16** %p, align 8
  store i16 %24, i16* %25, align 2
  %arraydecay48 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %call = call i32 @eshift(i16* %arraydecay48, i32 -8)
  %26 = load i32, i32* %denorm, align 4
  %tobool49 = icmp ne i32 %26, 0
  br i1 %tobool49, label %if.then.50, label %if.end.64

if.then.50:                                       ; preds = %if.end.42
  %arraydecay51 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %call52 = call i32 @enormlz(i16* %arraydecay51)
  store i32 %call52, i32* %k, align 4
  %cmp53 = icmp sgt i32 %call52, 80
  br i1 %cmp53, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %if.then.50
  %arraydecay56 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @ecleazs(i16* %arraydecay56)
  br label %if.end.63

if.else:                                          ; preds = %if.then.50
  %27 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %27, 1
  %conv57 = trunc i32 %sub to i16
  %conv58 = zext i16 %conv57 to i32
  %arrayidx59 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 1
  %28 = load i16, i16* %arrayidx59, align 2
  %conv60 = zext i16 %28 to i32
  %sub61 = sub nsw i32 %conv60, %conv58
  %conv62 = trunc i32 %sub61 to i16
  store i16 %conv62, i16* %arrayidx59, align 2
  br label %if.end.63

if.end.63:                                        ; preds = %if.else, %if.then.55
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.42
  %arraydecay65 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %29 = load i16*, i16** %y.addr, align 8
  call void @emovo(i16* %arraydecay65, i16* %29)
  br label %return

return:                                           ; preds = %if.end.64, %if.end.30, %if.then.21
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @asctoe53(i8* %s, i16* %y) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %y.addr = alloca i16*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i16*, i16** %y.addr, align 8
  call void @asctoeg(i8* %0, i16* %1, i32 53)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @e53toe(i16* %pe, i16* %y) #0 {
entry:
  %pe.addr = alloca i16*, align 8
  %y.addr = alloca i16*, align 8
  %r = alloca i16, align 2
  %e = alloca i16*, align 8
  %p = alloca i16*, align 8
  %yy = alloca [9 x i16], align 16
  %denorm = alloca i32, align 4
  %k = alloca i32, align 4
  store i16* %pe, i16** %pe.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  %0 = load i16*, i16** %pe.addr, align 8
  store i16* %0, i16** %e, align 8
  store i32 0, i32* %denorm, align 4
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @ecleaz(i16* %arraydecay)
  %1 = load i16*, i16** %e, align 8
  %add.ptr = getelementptr inbounds i16, i16* %1, i64 3
  store i16* %add.ptr, i16** %e, align 8
  %2 = load i16*, i16** %e, align 8
  %3 = load i16, i16* %2, align 2
  store i16 %3, i16* %r, align 2
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 0
  store i16 0, i16* %arrayidx, align 2
  %4 = load i16, i16* %r, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 0
  store i16 -1, i16* %arrayidx1, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i16, i16* %r, align 2
  %conv2 = zext i16 %5 to i32
  %and3 = and i32 %conv2, 15
  %or = or i32 %and3, 16
  %conv4 = trunc i32 %or to i16
  %arrayidx5 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 2
  store i16 %conv4, i16* %arrayidx5, align 2
  %6 = load i16, i16* %r, align 2
  %conv6 = zext i16 %6 to i32
  %and7 = and i32 %conv6, -32784
  %conv8 = trunc i32 %and7 to i16
  store i16 %conv8, i16* %r, align 2
  %7 = load i16, i16* %r, align 2
  %conv9 = zext i16 %7 to i32
  %cmp = icmp eq i32 %conv9, 32752
  br i1 %cmp, label %if.then.11, label %if.end.41

if.then.11:                                       ; preds = %if.end
  %8 = load i16*, i16** %pe.addr, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %8, i64 3
  %9 = load i16, i16* %arrayidx12, align 2
  %conv13 = zext i16 %9 to i32
  %and14 = and i32 %conv13, 15
  %cmp15 = icmp ne i32 %and14, 0
  br i1 %cmp15, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.11
  %10 = load i16*, i16** %pe.addr, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %10, i64 2
  %11 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %11 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %if.then.31, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %12 = load i16*, i16** %pe.addr, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %12, i64 1
  %13 = load i16, i16* %arrayidx22, align 2
  %conv23 = zext i16 %13 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %if.then.31, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.21
  %14 = load i16*, i16** %pe.addr, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %14, i64 0
  %15 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %15 to i32
  %cmp29 = icmp ne i32 %conv28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %lor.lhs.false.26, %lor.lhs.false.21, %lor.lhs.false, %if.then.11
  %16 = load i16*, i16** %y.addr, align 8
  %arrayidx32 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 0
  %17 = load i16, i16* %arrayidx32, align 2
  %conv33 = zext i16 %17 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  %conv35 = zext i1 %cmp34 to i32
  call void @enan(i16* %16, i32 %conv35)
  br label %return

if.end.36:                                        ; preds = %lor.lhs.false.26
  %18 = load i16*, i16** %y.addr, align 8
  call void @eclear(i16* %18)
  %19 = load i16*, i16** %y.addr, align 8
  call void @einfin(i16* %19)
  %arrayidx37 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 0
  %20 = load i16, i16* %arrayidx37, align 2
  %tobool38 = icmp ne i16 %20, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %21 = load i16*, i16** %y.addr, align 8
  call void @eneg(i16* %21)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.36
  br label %return

if.end.41:                                        ; preds = %if.end
  %22 = load i16, i16* %r, align 2
  %conv42 = zext i16 %22 to i32
  %shr = ashr i32 %conv42, 4
  %conv43 = trunc i32 %shr to i16
  store i16 %conv43, i16* %r, align 2
  %23 = load i16, i16* %r, align 2
  %conv44 = zext i16 %23 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.52

if.then.47:                                       ; preds = %if.end.41
  store i32 1, i32* %denorm, align 4
  %arrayidx48 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 2
  %24 = load i16, i16* %arrayidx48, align 2
  %conv49 = zext i16 %24 to i32
  %and50 = and i32 %conv49, -17
  %conv51 = trunc i32 %and50 to i16
  store i16 %conv51, i16* %arrayidx48, align 2
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.47, %if.end.41
  %25 = load i16, i16* %r, align 2
  %conv53 = zext i16 %25 to i32
  %add = add nsw i32 %conv53, 15360
  %conv54 = trunc i32 %add to i16
  store i16 %conv54, i16* %r, align 2
  %26 = load i16, i16* %r, align 2
  %arrayidx55 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 1
  store i16 %26, i16* %arrayidx55, align 2
  %arrayidx56 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 3
  store i16* %arrayidx56, i16** %p, align 8
  %27 = load i16*, i16** %e, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %27, i32 -1
  store i16* %incdec.ptr, i16** %e, align 8
  %28 = load i16, i16* %incdec.ptr, align 2
  %29 = load i16*, i16** %p, align 8
  %incdec.ptr57 = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr57, i16** %p, align 8
  store i16 %28, i16* %29, align 2
  %30 = load i16*, i16** %e, align 8
  %incdec.ptr58 = getelementptr inbounds i16, i16* %30, i32 -1
  store i16* %incdec.ptr58, i16** %e, align 8
  %31 = load i16, i16* %incdec.ptr58, align 2
  %32 = load i16*, i16** %p, align 8
  %incdec.ptr59 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %incdec.ptr59, i16** %p, align 8
  store i16 %31, i16* %32, align 2
  %33 = load i16*, i16** %e, align 8
  %incdec.ptr60 = getelementptr inbounds i16, i16* %33, i32 -1
  store i16* %incdec.ptr60, i16** %e, align 8
  %34 = load i16, i16* %incdec.ptr60, align 2
  %35 = load i16*, i16** %p, align 8
  %incdec.ptr61 = getelementptr inbounds i16, i16* %35, i32 1
  store i16* %incdec.ptr61, i16** %p, align 8
  store i16 %34, i16* %35, align 2
  %arraydecay62 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %call = call i32 @eshift(i16* %arraydecay62, i32 -5)
  %36 = load i32, i32* %denorm, align 4
  %tobool63 = icmp ne i32 %36, 0
  br i1 %tobool63, label %if.then.64, label %if.end.78

if.then.64:                                       ; preds = %if.end.52
  %arraydecay65 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %call66 = call i32 @enormlz(i16* %arraydecay65)
  store i32 %call66, i32* %k, align 4
  %cmp67 = icmp sgt i32 %call66, 80
  br i1 %cmp67, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %if.then.64
  %arraydecay70 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @ecleazs(i16* %arraydecay70)
  br label %if.end.77

if.else:                                          ; preds = %if.then.64
  %37 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %37, 1
  %conv71 = trunc i32 %sub to i16
  %conv72 = zext i16 %conv71 to i32
  %arrayidx73 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 1
  %38 = load i16, i16* %arrayidx73, align 2
  %conv74 = zext i16 %38 to i32
  %sub75 = sub nsw i32 %conv74, %conv72
  %conv76 = trunc i32 %sub75 to i16
  store i16 %conv76, i16* %arrayidx73, align 2
  br label %if.end.77

if.end.77:                                        ; preds = %if.else, %if.then.69
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.52
  %arraydecay79 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %39 = load i16*, i16** %y.addr, align 8
  call void @emovo(i16* %arraydecay79, i16* %39)
  br label %return

return:                                           ; preds = %if.end.78, %if.end.40, %if.then.31
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @asctoe64(i8* %s, i16* %y) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %y.addr = alloca i16*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i16*, i16** %y.addr, align 8
  call void @asctoeg(i8* %0, i16* %1, i32 64)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @e64toe(i16* %pe, i16* %y) #0 {
entry:
  %pe.addr = alloca i16*, align 8
  %y.addr = alloca i16*, align 8
  %yy = alloca [9 x i16], align 16
  %e = alloca i16*, align 8
  %p = alloca i16*, align 8
  %q = alloca i16*, align 8
  %i = alloca i32, align 4
  %temp = alloca [9 x i16], align 16
  store i16* %pe, i16** %pe.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  %0 = load i16*, i16** %pe.addr, align 8
  store i16* %0, i16** %e, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  store i16* %arraydecay, i16** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %p, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %2, i32 1
  store i16* %incdec.ptr, i16** %p, align 8
  store i16 0, i16* %2, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 5
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i16*, i16** %e, align 8
  %incdec.ptr4 = getelementptr inbounds i16, i16* %5, i32 1
  store i16* %incdec.ptr4, i16** %e, align 8
  %6 = load i16, i16* %5, align 2
  %7 = load i16*, i16** %p, align 8
  %incdec.ptr5 = getelementptr inbounds i16, i16* %7, i32 1
  store i16* %incdec.ptr5, i16** %p, align 8
  store i16 %6, i16* %7, align 2
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %8 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 5
  %9 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 32767
  %cmp9 = icmp eq i32 %and, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end.8
  %arrayidx11 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 4
  %10 = load i16, i16* %arrayidx11, align 2
  %conv12 = zext i16 %10 to i32
  %and13 = and i32 %conv12, 32768
  %cmp14 = icmp eq i32 %and13, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %arraydecay16 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [9 x i16], [9 x i16]* %temp, i32 0, i32 0
  call void @emovi(i16* %arraydecay16, i16* %arraydecay17)
  %arraydecay18 = getelementptr inbounds [9 x i16], [9 x i16]* %temp, i32 0, i32 0
  call void @eshup1(i16* %arraydecay18)
  %arraydecay19 = getelementptr inbounds [9 x i16], [9 x i16]* %temp, i32 0, i32 0
  %11 = load i16*, i16** %y.addr, align 8
  call void @emovo(i16* %arraydecay19, i16* %11)
  br label %for.end.95

if.end:                                           ; preds = %land.lhs.true, %for.end.8
  %arrayidx20 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 5
  store i16* %arrayidx20, i16** %p, align 8
  %12 = load i16*, i16** %p, align 8
  %13 = load i16, i16* %12, align 2
  %conv21 = zext i16 %13 to i32
  %and22 = and i32 %conv21, 32767
  %cmp23 = icmp eq i32 %and22, 32767
  br i1 %cmp23, label %if.then.25, label %if.end.85

if.then.25:                                       ; preds = %if.end
  br i1 false, label %if.else, label %if.then.26

if.then.26:                                       ; preds = %if.then.25
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.52, %if.then.26
  %14 = load i32, i32* %i, align 4
  %cmp28 = icmp slt i32 %14, 4
  br i1 %cmp28, label %for.body.30, label %for.end.54

for.body.30:                                      ; preds = %for.cond.27
  %15 = load i32, i32* %i, align 4
  %cmp31 = icmp ne i32 %15, 3
  br i1 %cmp31, label %land.lhs.true.33, label %lor.lhs.false

land.lhs.true.33:                                 ; preds = %for.body.30
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i16*, i16** %pe.addr, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %17, i64 %idxprom
  %18 = load i16, i16* %arrayidx34, align 2
  %conv35 = zext i16 %18 to i32
  %cmp36 = icmp ne i32 %conv35, 0
  br i1 %cmp36, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.33, %for.body.30
  %19 = load i32, i32* %i, align 4
  %cmp38 = icmp eq i32 %19, 3
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.51

land.lhs.true.40:                                 ; preds = %lor.lhs.false
  %20 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %20 to i64
  %21 = load i16*, i16** %pe.addr, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %21, i64 %idxprom41
  %22 = load i16, i16* %arrayidx42, align 2
  %conv43 = zext i16 %22 to i32
  %cmp44 = icmp ne i32 %conv43, 32768
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %land.lhs.true.40, %land.lhs.true.33
  %23 = load i16*, i16** %y.addr, align 8
  %24 = load i16*, i16** %p, align 8
  %25 = load i16, i16* %24, align 2
  %conv47 = zext i16 %25 to i32
  %and48 = and i32 %conv47, 32768
  %cmp49 = icmp ne i32 %and48, 0
  %conv50 = zext i1 %cmp49 to i32
  call void @enan(i16* %23, i32 %conv50)
  br label %for.end.95

if.end.51:                                        ; preds = %land.lhs.true.40, %lor.lhs.false
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %26 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %26, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.27

for.end.54:                                       ; preds = %for.cond.27
  br label %if.end.80

if.else:                                          ; preds = %if.then.25
  %27 = load i16*, i16** %pe.addr, align 8
  %arrayidx55 = getelementptr inbounds i16, i16* %27, i64 2
  %28 = load i16, i16* %arrayidx55, align 2
  %conv56 = zext i16 %28 to i32
  %and57 = and i32 %conv56, 32767
  %cmp58 = icmp ne i32 %and57, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.else
  br label %bigend_nan

if.end.61:                                        ; preds = %if.else
  store i32 3, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.77, %if.end.61
  %29 = load i32, i32* %i, align 4
  %cmp63 = icmp sle i32 %29, 5
  br i1 %cmp63, label %for.body.65, label %for.end.79

for.body.65:                                      ; preds = %for.cond.62
  %30 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %30 to i64
  %31 = load i16*, i16** %pe.addr, align 8
  %arrayidx67 = getelementptr inbounds i16, i16* %31, i64 %idxprom66
  %32 = load i16, i16* %arrayidx67, align 2
  %conv68 = zext i16 %32 to i32
  %cmp69 = icmp ne i32 %conv68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.76

if.then.71:                                       ; preds = %for.body.65
  br label %bigend_nan

bigend_nan:                                       ; preds = %if.then.71, %if.then.60
  %33 = load i16*, i16** %y.addr, align 8
  %34 = load i16*, i16** %p, align 8
  %35 = load i16, i16* %34, align 2
  %conv72 = zext i16 %35 to i32
  %and73 = and i32 %conv72, 32768
  %cmp74 = icmp ne i32 %and73, 0
  %conv75 = zext i1 %cmp74 to i32
  call void @enan(i16* %33, i32 %conv75)
  br label %for.end.95

if.end.76:                                        ; preds = %for.body.65
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %36 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %36, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.62

for.end.79:                                       ; preds = %for.cond.62
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.79, %for.end.54
  %37 = load i16*, i16** %y.addr, align 8
  call void @eclear(i16* %37)
  %38 = load i16*, i16** %y.addr, align 8
  call void @einfin(i16* %38)
  %39 = load i16*, i16** %p, align 8
  %40 = load i16, i16* %39, align 2
  %conv81 = zext i16 %40 to i32
  %and82 = and i32 %conv81, 32768
  %tobool = icmp ne i32 %and82, 0
  br i1 %tobool, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.80
  %41 = load i16*, i16** %y.addr, align 8
  call void @eneg(i16* %41)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.end.80
  br label %for.end.95

if.end.85:                                        ; preds = %if.end
  %arraydecay86 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  store i16* %arraydecay86, i16** %p, align 8
  %42 = load i16*, i16** %y.addr, align 8
  store i16* %42, i16** %q, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.93, %if.end.85
  %43 = load i32, i32* %i, align 4
  %cmp88 = icmp slt i32 %43, 6
  br i1 %cmp88, label %for.body.90, label %for.end.95

for.body.90:                                      ; preds = %for.cond.87
  %44 = load i16*, i16** %p, align 8
  %incdec.ptr91 = getelementptr inbounds i16, i16* %44, i32 1
  store i16* %incdec.ptr91, i16** %p, align 8
  %45 = load i16, i16* %44, align 2
  %46 = load i16*, i16** %q, align 8
  %incdec.ptr92 = getelementptr inbounds i16, i16* %46, i32 1
  store i16* %incdec.ptr92, i16** %q, align 8
  store i16 %45, i16* %46, align 2
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.90
  %47 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %47, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.87

for.end.95:                                       ; preds = %if.then, %if.then.46, %bigend_nan, %if.end.84, %for.cond.87
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @asctoe(i8* %s, i16* %y) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %y.addr = alloca i16*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i16*, i16** %y.addr, align 8
  call void @asctoeg(i8* %0, i16* %1, i32 80)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ereal_negate(%struct.realvaluetype* noalias sret %agg.result, %struct.realvaluetype* byval align 8 %x) #0 {
entry:
  %e = alloca [6 x i16], align 2
  %r = alloca %struct.realvaluetype, align 8
  %0 = bitcast [6 x i16]* %e to i8*
  %1 = bitcast %struct.realvaluetype* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  call void @eneg(i16* %arraydecay)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = bitcast %struct.realvaluetype* %r to i8*
  %3 = bitcast [6 x i16]* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 12, i32 2, i1 false)
  %4 = bitcast %struct.realvaluetype* %r to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 12, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = bitcast %struct.realvaluetype* %agg.result to i8*
  %6 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eneg(i16* %x) #0 {
entry:
  %x.addr = alloca i16*, align 8
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 5
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %xor = xor i32 %conv, 32768
  %conv1 = trunc i32 %xor to i16
  store i16 %conv1, i16* %arrayidx, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @efixi(%struct.realvaluetype* byval align 8 %x) #0 {
entry:
  %retval = alloca i64, align 8
  %f = alloca [6 x i16], align 2
  %g = alloca [6 x i16], align 2
  %l = alloca i64, align 8
  %0 = bitcast [6 x i16]* %f to i8*
  %1 = bitcast %struct.realvaluetype* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %f, i32 0, i32 0
  %call = call i32 @eisnan(i16* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %f, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [6 x i16], [6 x i16]* %g, i32 0, i32 0
  call void @eifrac(i16* %arraydecay1, i64* %l, i16* %arraydecay2)
  %2 = load i64, i64* %l, align 8
  store i64 %2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

declare void @warning(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i64 @efixui(%struct.realvaluetype* byval align 8 %x) #0 {
entry:
  %retval = alloca i64, align 8
  %f = alloca [6 x i16], align 2
  %g = alloca [6 x i16], align 2
  %l = alloca i64, align 8
  %0 = bitcast [6 x i16]* %f to i8*
  %1 = bitcast %struct.realvaluetype* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %f, i32 0, i32 0
  %call = call i32 @eisnan(i16* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %f, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [6 x i16], [6 x i16]* %g, i32 0, i32 0
  call void @euifrac(i16* %arraydecay1, i64* %l, i16* %arraydecay2)
  %2 = load i64, i64* %l, align 8
  store i64 %2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define void @ereal_from_int(%struct.realvaluetype* %d, i64 %i, i64 %j, i32 %mode) #0 {
entry:
  %d.addr = alloca %struct.realvaluetype*, align 8
  %i.addr = alloca i64, align 8
  %j.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %df = alloca [6 x i16], align 2
  %dg = alloca [6 x i16], align 2
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  %sign = alloca i32, align 4
  store %struct.realvaluetype* %d, %struct.realvaluetype** %d.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store i64 %j, i64* %j.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 869, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.ereal_from_int, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %sign, align 4
  %2 = load i64, i64* %i.addr, align 8
  store i64 %2, i64* %low, align 8
  %3 = load i64, i64* %j.addr, align 8
  store i64 %3, i64* %high, align 8
  %cmp1 = icmp slt i64 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %sign, align 4
  %4 = load i64, i64* %high, align 8
  %neg = xor i64 %4, -1
  store i64 %neg, i64* %high, align 8
  %5 = load i64, i64* %low, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.2
  %6 = load i64, i64* %low, align 8
  %sub = sub nsw i64 0, %6
  store i64 %sub, i64* %low, align 8
  br label %if.end.4

if.else:                                          ; preds = %if.then.2
  %7 = load i64, i64* %high, align 8
  %add = add nsw i64 %7, 1
  store i64 %add, i64* %high, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end.4, %if.end
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  call void @eldexp(i16* getelementptr inbounds ([6 x i16], [6 x i16]* @eone, i32 0, i32 0), i32 64, i16* %arraydecay)
  %arraydecay6 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @ultoe(i64* %high, i16* %arraydecay6)
  %arraydecay7 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @emul(i16* %arraydecay7, i16* %arraydecay8, i16* %arraydecay9)
  %arraydecay10 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  call void @ultoe(i64* %low, i16* %arraydecay10)
  %arraydecay11 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @eadd(i16* %arraydecay11, i16* %arraydecay12, i16* %arraydecay13)
  %8 = load i32, i32* %sign, align 4
  %tobool14 = icmp ne i32 %8, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.5
  %arraydecay16 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @eneg(i16* %arraydecay16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.5
  %9 = load i32, i32* %mode.addr, align 4
  %idxprom18 = sext i32 %9 to i64
  %arrayidx19 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom18
  %10 = load i16, i16* %arrayidx19, align 2
  %conv = zext i16 %10 to i32
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.bb
    i32 64, label %sw.bb.24
    i32 96, label %sw.bb.29
    i32 128, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.end.17
  %arraydecay20 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  call void @etoe24(i16* %arraydecay20, i16* %arraydecay21)
  %arraydecay22 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @e24toe(i16* %arraydecay22, i16* %arraydecay23)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end.17
  %arraydecay25 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  call void @etoe53(i16* %arraydecay25, i16* %arraydecay26)
  %arraydecay27 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @e53toe(i16* %arraydecay27, i16* %arraydecay28)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end.17
  %arraydecay30 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  call void @etoe64(i16* %arraydecay30, i16* %arraydecay31)
  %arraydecay32 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  %arraydecay33 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @e64toe(i16* %arraydecay32, i16* %arraydecay33)
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.17
  %arraydecay35 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  %arraydecay36 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  call void @etoe64(i16* %arraydecay35, i16* %arraydecay36)
  %arraydecay37 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @e64toe(i16* %arraydecay37, i16* %arraydecay38)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.17
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 921, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.ereal_from_int, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.34, %sw.bb.29, %sw.bb.24, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %11 = load %struct.realvaluetype*, %struct.realvaluetype** %d.addr, align 8
  %12 = bitcast %struct.realvaluetype* %11 to i8*
  %13 = bitcast [6 x i16]* %dg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 12, i32 2, i1 false)
  %14 = load %struct.realvaluetype*, %struct.realvaluetype** %d.addr, align 8
  %15 = bitcast %struct.realvaluetype* %14 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 12, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @eldexp(i16* %x, i32 %pwr2, i16* %y) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %pwr2.addr = alloca i32, align 4
  %y.addr = alloca i16*, align 8
  %xi = alloca [9 x i16], align 16
  %li = alloca i32, align 4
  %i = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  store i32 %pwr2, i32* %pwr2.addr, align 4
  store i16* %y, i16** %y.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  call void @emovi(i16* %0, i16* %arraydecay)
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 1
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, i32* %li, align 4
  %2 = load i32, i32* %pwr2.addr, align 4
  %3 = load i32, i32* %li, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* %li, align 4
  store i32 0, i32* %i, align 4
  %arraydecay1 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %li, align 4
  call void @emdnorm(i16* %arraydecay1, i32 %4, i32 %5, i32 %6, i32 64)
  %arraydecay2 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %7 = load i16*, i16** %y.addr, align 8
  call void @emovo(i16* %arraydecay2, i16* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @etoe24(i16* %x, i16* %e) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %e.addr = alloca i16*, align 8
  %exp = alloca i32, align 4
  %xi = alloca [9 x i16], align 16
  %rndsav = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  store i16* %e, i16** %e.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %call = call i32 @eisnan(i16* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16*, i16** %e.addr, align 8
  %2 = load i16*, i16** %x.addr, align 8
  %call1 = call i32 @eisneg(i16* %2)
  call void @make_nan(i16* %1, i32 %call1, i32 15)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i16*, i16** %x.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  call void @emovi(i16* %3, i16* %arraydecay)
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 1
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %sub = sub nsw i32 %conv, 16256
  store i32 %sub, i32* %exp, align 4
  %5 = load i16*, i16** %x.addr, align 8
  %call2 = call i32 @eisinf(i16* %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %nonorm

if.end.5:                                         ; preds = %if.end
  %6 = load i32, i32* @rndprc, align 4
  store i32 %6, i32* %rndsav, align 4
  store i32 24, i32* @rndprc, align 4
  %arraydecay6 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %7 = load i32, i32* %exp, align 4
  call void @emdnorm(i16* %arraydecay6, i32 0, i32 0, i32 %7, i32 64)
  %8 = load i32, i32* %rndsav, align 4
  store i32 %8, i32* @rndprc, align 4
  br label %nonorm

nonorm:                                           ; preds = %if.end.5, %if.then.4
  %arraydecay7 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %9 = load i16*, i16** %e.addr, align 8
  call void @toe24(i16* %arraydecay7, i16* %9)
  br label %return

return:                                           ; preds = %nonorm, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @etoe53(i16* %x, i16* %e) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %e.addr = alloca i16*, align 8
  %xi = alloca [9 x i16], align 16
  %exp = alloca i32, align 4
  %rndsav = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  store i16* %e, i16** %e.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %call = call i32 @eisnan(i16* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16*, i16** %e.addr, align 8
  %2 = load i16*, i16** %x.addr, align 8
  %call1 = call i32 @eisneg(i16* %2)
  call void @make_nan(i16* %1, i32 %call1, i32 16)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i16*, i16** %x.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  call void @emovi(i16* %3, i16* %arraydecay)
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 1
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %sub = sub nsw i32 %conv, 15360
  store i32 %sub, i32* %exp, align 4
  %5 = load i16*, i16** %x.addr, align 8
  %call2 = call i32 @eisinf(i16* %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %nonorm

if.end.5:                                         ; preds = %if.end
  %6 = load i32, i32* @rndprc, align 4
  store i32 %6, i32* %rndsav, align 4
  store i32 53, i32* @rndprc, align 4
  %arraydecay6 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %7 = load i32, i32* %exp, align 4
  call void @emdnorm(i16* %arraydecay6, i32 0, i32 0, i32 %7, i32 64)
  %8 = load i32, i32* %rndsav, align 4
  store i32 %8, i32* @rndprc, align 4
  br label %nonorm

nonorm:                                           ; preds = %if.end.5, %if.then.4
  %arraydecay7 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %9 = load i16*, i16** %e.addr, align 8
  call void @toe53(i16* %arraydecay7, i16* %9)
  br label %return

return:                                           ; preds = %nonorm, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @etoe64(i16* %x, i16* %e) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %e.addr = alloca i16*, align 8
  %xi = alloca [9 x i16], align 16
  %exp = alloca i32, align 4
  %rndsav = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  store i16* %e, i16** %e.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %call = call i32 @eisnan(i16* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16*, i16** %e.addr, align 8
  %2 = load i16*, i16** %x.addr, align 8
  %call1 = call i32 @eisneg(i16* %2)
  call void @make_nan(i16* %1, i32 %call1, i32 17)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i16*, i16** %x.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  call void @emovi(i16* %3, i16* %arraydecay)
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i64 1
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i32
  store i32 %conv, i32* %exp, align 4
  %5 = load i16*, i16** %x.addr, align 8
  %call2 = call i32 @eisinf(i16* %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %nonorm

if.end.5:                                         ; preds = %if.end
  %6 = load i32, i32* @rndprc, align 4
  store i32 %6, i32* %rndsav, align 4
  store i32 64, i32* @rndprc, align 4
  %arraydecay6 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %7 = load i32, i32* %exp, align 4
  call void @emdnorm(i16* %arraydecay6, i32 0, i32 0, i32 %7, i32 64)
  %8 = load i32, i32* %rndsav, align 4
  store i32 %8, i32* @rndprc, align 4
  br label %nonorm

nonorm:                                           ; preds = %if.end.5, %if.then.4
  %arraydecay7 = getelementptr inbounds [9 x i16], [9 x i16]* %xi, i32 0, i32 0
  %9 = load i16*, i16** %e.addr, align 8
  call void @toe64(i16* %arraydecay7, i16* %9)
  br label %return

return:                                           ; preds = %nonorm, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @ereal_from_uint(%struct.realvaluetype* %d, i64 %i, i64 %j, i32 %mode) #0 {
entry:
  %d.addr = alloca %struct.realvaluetype*, align 8
  %i.addr = alloca i64, align 8
  %j.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %df = alloca [6 x i16], align 2
  %dg = alloca [6 x i16], align 2
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store %struct.realvaluetype* %d, %struct.realvaluetype** %d.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store i64 %j, i64* %j.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 940, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.ereal_from_uint, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %i.addr, align 8
  store i64 %2, i64* %low, align 8
  %3 = load i64, i64* %j.addr, align 8
  store i64 %3, i64* %high, align 8
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  call void @eldexp(i16* getelementptr inbounds ([6 x i16], [6 x i16]* @eone, i32 0, i32 0), i32 64, i16* %arraydecay)
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @ultoe(i64* %high, i16* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @emul(i16* %arraydecay2, i16* %arraydecay3, i16* %arraydecay4)
  %arraydecay5 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  call void @ultoe(i64* %low, i16* %arraydecay5)
  %arraydecay6 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @eadd(i16* %arraydecay6, i16* %arraydecay7, i16* %arraydecay8)
  %4 = load i32, i32* %mode.addr, align 4
  %idxprom9 = sext i32 %4 to i64
  %arrayidx10 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom9
  %5 = load i16, i16* %arrayidx10, align 2
  %conv = zext i16 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.bb
    i32 64, label %sw.bb.15
    i32 96, label %sw.bb.20
    i32 128, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.end
  %arraydecay11 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  call void @etoe24(i16* %arraydecay11, i16* %arraydecay12)
  %arraydecay13 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @e24toe(i16* %arraydecay13, i16* %arraydecay14)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  %arraydecay16 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  call void @etoe53(i16* %arraydecay16, i16* %arraydecay17)
  %arraydecay18 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  %arraydecay19 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @e53toe(i16* %arraydecay18, i16* %arraydecay19)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end
  %arraydecay21 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  call void @etoe64(i16* %arraydecay21, i16* %arraydecay22)
  %arraydecay23 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @e64toe(i16* %arraydecay23, i16* %arraydecay24)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end
  %arraydecay26 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  %arraydecay27 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  call void @etoe64(i16* %arraydecay26, i16* %arraydecay27)
  %arraydecay28 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @e64toe(i16* %arraydecay28, i16* %arraydecay29)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 980, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.ereal_from_uint, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.25, %sw.bb.20, %sw.bb.15, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %6 = load %struct.realvaluetype*, %struct.realvaluetype** %d.addr, align 8
  %7 = bitcast %struct.realvaluetype* %6 to i8*
  %8 = bitcast [6 x i16]* %dg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 12, i32 2, i1 false)
  %9 = load %struct.realvaluetype*, %struct.realvaluetype** %d.addr, align 8
  %10 = bitcast %struct.realvaluetype* %9 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 12, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define void @ereal_to_int(i64* %low, i64* %high, %struct.realvaluetype* byval align 8 %rr) #0 {
entry:
  %low.addr = alloca i64*, align 8
  %high.addr = alloca i64*, align 8
  %d = alloca [6 x i16], align 2
  %df = alloca [6 x i16], align 2
  %dg = alloca [6 x i16], align 2
  %dh = alloca [6 x i16], align 2
  %s = alloca i32, align 4
  store i64* %low, i64** %low.addr, align 8
  store i64* %high, i64** %high.addr, align 8
  %0 = bitcast [6 x i16]* %d to i8*
  %1 = bitcast %struct.realvaluetype* %rr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %d, i32 0, i32 0
  %call = call i32 @eisnan(i16* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  %2 = load i64*, i64** %low.addr, align 8
  store i64 -1, i64* %2, align 8
  %3 = load i64*, i64** %high.addr, align 8
  store i64 -1, i64* %3, align 8
  br label %if.end.23

if.end:                                           ; preds = %entry
  store i32 0, i32* %s, align 4
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %d, i32 0, i32 0
  %call2 = call i32 @eisneg(i16* %arraydecay1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %arraydecay5 = getelementptr inbounds [6 x i16], [6 x i16]* %d, i32 0, i32 0
  call void @eneg(i16* %arraydecay5)
  store i32 1, i32* %s, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %arraydecay7 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  call void @eldexp(i16* getelementptr inbounds ([6 x i16], [6 x i16]* @eone, i32 0, i32 0), i32 64, i16* %arraydecay7)
  %arraydecay8 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [6 x i16], [6 x i16]* %d, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @ediv(i16* %arraydecay8, i16* %arraydecay9, i16* %arraydecay10)
  %arraydecay11 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  %4 = load i64*, i64** %high.addr, align 8
  %arraydecay12 = getelementptr inbounds [6 x i16], [6 x i16]* %dh, i32 0, i32 0
  call void @euifrac(i16* %arraydecay11, i64* %4, i16* %arraydecay12)
  %arraydecay13 = getelementptr inbounds [6 x i16], [6 x i16]* %df, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [6 x i16], [6 x i16]* %dh, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  call void @emul(i16* %arraydecay13, i16* %arraydecay14, i16* %arraydecay15)
  %arraydecay16 = getelementptr inbounds [6 x i16], [6 x i16]* %dg, i32 0, i32 0
  %5 = load i64*, i64** %low.addr, align 8
  %arraydecay17 = getelementptr inbounds [6 x i16], [6 x i16]* %dh, i32 0, i32 0
  call void @euifrac(i16* %arraydecay16, i64* %5, i16* %arraydecay17)
  %6 = load i32, i32* %s, align 4
  %tobool18 = icmp ne i32 %6, 0
  br i1 %tobool18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.6
  %7 = load i64*, i64** %high.addr, align 8
  %8 = load i64, i64* %7, align 8
  %neg = xor i64 %8, -1
  %9 = load i64*, i64** %high.addr, align 8
  store i64 %neg, i64* %9, align 8
  %10 = load i64*, i64** %low.addr, align 8
  %11 = load i64, i64* %10, align 8
  %tobool20 = icmp ne i64 %11, 0
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.19
  %12 = load i64*, i64** %low.addr, align 8
  %13 = load i64, i64* %12, align 8
  %sub = sub nsw i64 0, %13
  %14 = load i64*, i64** %low.addr, align 8
  store i64 %sub, i64* %14, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.then.19
  %15 = load i64*, i64** %high.addr, align 8
  %16 = load i64, i64* %15, align 8
  %add = add nsw i64 %16, 1
  store i64 %add, i64* %15, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  br label %if.end.23

if.end.23:                                        ; preds = %if.then, %if.end.22, %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @eisneg(i16* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i16*, align 8
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 5
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define void @ereal_ldexp(%struct.realvaluetype* noalias sret %agg.result, %struct.realvaluetype* byval align 8 %x, i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %e = alloca [6 x i16], align 2
  %y = alloca [6 x i16], align 2
  %r = alloca %struct.realvaluetype, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = bitcast [6 x i16]* %e to i8*
  %1 = bitcast %struct.realvaluetype* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %call = call i32 @eisnan(i16* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.realvaluetype* %agg.result to i8*
  %3 = bitcast %struct.realvaluetype* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %4 = load i32, i32* %n.addr, align 4
  %arraydecay2 = getelementptr inbounds [6 x i16], [6 x i16]* %y, i32 0, i32 0
  call void @eldexp(i16* %arraydecay1, i32 %4, i16* %arraydecay2)
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = bitcast %struct.realvaluetype* %r to i8*
  %6 = bitcast [6 x i16]* %y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 12, i32 2, i1 false)
  %7 = bitcast %struct.realvaluetype* %r to i8*
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 12, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %8 = bitcast %struct.realvaluetype* %agg.result to i8*
  %9 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 24, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @target_isinf(%struct.realvaluetype* byval align 8 %x) #0 {
entry:
  %e = alloca [6 x i16], align 2
  %0 = bitcast [6 x i16]* %e to i8*
  %1 = bitcast %struct.realvaluetype* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %call = call i32 @eisinf(i16* %arraydecay)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @eisinf(i16* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i16*, align 8
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %call = call i32 @eisnan(i16* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i16*, i16** %x.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 5
  %2 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 32767
  %cmp = icmp eq i32 %and, 32767
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.2, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @target_isnan(%struct.realvaluetype* byval align 8 %x) #0 {
entry:
  %e = alloca [6 x i16], align 2
  %0 = bitcast [6 x i16]* %e to i8*
  %1 = bitcast %struct.realvaluetype* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %call = call i32 @eisnan(i16* %arraydecay)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @target_negative(%struct.realvaluetype* byval align 8 %x) #0 {
entry:
  %call = call i32 @ereal_isneg(%struct.realvaluetype* byval align 8 %x)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @ereal_isneg(%struct.realvaluetype* byval align 8 %x) #0 {
entry:
  %ex = alloca [6 x i16], align 2
  %0 = bitcast [6 x i16]* %ex to i8*
  %1 = bitcast %struct.realvaluetype* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %ex, i32 0, i32 0
  %call = call i32 @eisneg(i16* %arraydecay)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @real_value_truncate(%struct.realvaluetype* noalias sret %agg.result, i32 %mode, %struct.realvaluetype* byval align 8 %arg) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %e = alloca [6 x i16], align 2
  %t = alloca [6 x i16], align 2
  %r = alloca %struct.realvaluetype, align 8
  %tmp = alloca %struct.realvaluetype, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = bitcast [6 x i16]* %e to i8*
  %1 = bitcast %struct.realvaluetype* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %call = call i32 @eisnan(i16* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.realvaluetype* %agg.result to i8*
  %3 = bitcast %struct.realvaluetype* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %t, i32 0, i32 0
  call void @eclear(i16* %arraydecay1)
  %4 = load i32, i32* %mode.addr, align 4
  switch i32 %4, label %sw.default [
    i32 18, label %sw.bb
    i32 17, label %sw.bb
    i32 16, label %sw.bb.6
    i32 15, label %sw.bb.11
    i32 13, label %sw.bb.11
    i32 4, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %arraydecay2 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [6 x i16], [6 x i16]* %t, i32 0, i32 0
  call void @etoe64(i16* %arraydecay2, i16* %arraydecay3)
  %arraydecay4 = getelementptr inbounds [6 x i16], [6 x i16]* %t, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [6 x i16], [6 x i16]* %t, i32 0, i32 0
  call void @e64toe(i16* %arraydecay4, i16* %arraydecay5)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %arraydecay7 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [6 x i16], [6 x i16]* %t, i32 0, i32 0
  call void @etoe53(i16* %arraydecay7, i16* %arraydecay8)
  %arraydecay9 = getelementptr inbounds [6 x i16], [6 x i16]* %t, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [6 x i16], [6 x i16]* %t, i32 0, i32 0
  call void @e53toe(i16* %arraydecay9, i16* %arraydecay10)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end, %if.end
  %arraydecay12 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [6 x i16], [6 x i16]* %t, i32 0, i32 0
  call void @etoe24(i16* %arraydecay12, i16* %arraydecay13)
  %arraydecay14 = getelementptr inbounds [6 x i16], [6 x i16]* %t, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [6 x i16], [6 x i16]* %t, i32 0, i32 0
  call void @e24toe(i16* %arraydecay14, i16* %arraydecay15)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  call void @etrunci(%struct.realvaluetype* sret %tmp, %struct.realvaluetype* byval align 8 %arg)
  %5 = bitcast %struct.realvaluetype* %r to i8*
  %6 = bitcast %struct.realvaluetype* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 24, i32 8, i1 false)
  %7 = bitcast %struct.realvaluetype* %agg.result to i8*
  %8 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false)
  br label %return

sw.default:                                       ; preds = %if.end
  %9 = bitcast %struct.realvaluetype* %agg.result to i8*
  %10 = bitcast %struct.realvaluetype* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 24, i32 8, i1 false)
  br label %return

sw.epilog:                                        ; preds = %sw.bb.11, %sw.bb.6, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %11 = bitcast %struct.realvaluetype* %r to i8*
  %12 = bitcast [6 x i16]* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 12, i32 2, i1 false)
  %13 = bitcast %struct.realvaluetype* %r to i8*
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 12, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %14 = bitcast %struct.realvaluetype* %agg.result to i8*
  %15 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 24, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end, %sw.default, %sw.bb.16, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eclear(i16* %x) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %x.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %1, i32 1
  store i16* %incdec.ptr, i16** %x.addr, align 8
  store i16 0, i16* %1, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @exact_real_inverse(i32 %mode, %struct.realvaluetype* %r) #0 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %r.addr = alloca %struct.realvaluetype*, align 8
  %e = alloca [6 x i16], align 2
  %einv = alloca [6 x i16], align 2
  %rinv = alloca %struct.realvaluetype, align 8
  %i = alloca i32, align 4
  %tmp = alloca %struct.realvaluetype, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.realvaluetype* %r, %struct.realvaluetype** %r.addr, align 8
  %0 = bitcast [6 x i16]* %e to i8*
  %1 = load %struct.realvaluetype*, %struct.realvaluetype** %r.addr, align 8
  %2 = bitcast %struct.realvaluetype* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %2, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %call = call i32 @eisinf(i16* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %call2 = call i32 @eisnan(i16* %arraydecay1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %arraydecay5 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %call6 = call i32 @ecmp(i16* %arraydecay5, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @ezero, i32 0, i32 0))
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  %arrayidx = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i64 4
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %cmp7 = icmp ne i32 %conv, 32768
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %4 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %4, 4
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx13 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i64 %idxprom
  %6 = load i16, i16* %arrayidx13, align 2
  %conv14 = zext i16 %6 to i32
  %cmp15 = icmp ne i32 %conv14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay19 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [6 x i16], [6 x i16]* %einv, i32 0, i32 0
  call void @ediv(i16* %arraydecay19, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @eone, i32 0, i32 0), i16* %arraydecay20)
  br label %do.body

do.body:                                          ; preds = %for.end
  %8 = bitcast %struct.realvaluetype* %rinv to i8*
  %9 = bitcast [6 x i16]* %einv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 12, i32 2, i1 false)
  %10 = bitcast %struct.realvaluetype* %rinv to i8*
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 12, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %11 = load i32, i32* %mode.addr, align 4
  call void @real_value_truncate(%struct.realvaluetype* sret %tmp, i32 %11, %struct.realvaluetype* byval align 8 %rinv)
  %12 = bitcast %struct.realvaluetype* %rinv to i8*
  %13 = bitcast %struct.realvaluetype* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 24, i32 8, i1 false)
  %14 = bitcast [6 x i16]* %einv to i8*
  %15 = bitcast %struct.realvaluetype* %rinv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 12, i32 2, i1 false)
  %arrayidx21 = getelementptr inbounds [6 x i16], [6 x i16]* %einv, i32 0, i64 4
  %16 = load i16, i16* %arrayidx21, align 2
  %conv22 = zext i16 %16 to i32
  %cmp23 = icmp ne i32 %conv22, 32768
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.38, %if.end.26
  %17 = load i32, i32* %i, align 4
  %cmp28 = icmp slt i32 %17, 4
  br i1 %cmp28, label %for.body.30, label %for.end.40

for.body.30:                                      ; preds = %for.cond.27
  %18 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %18 to i64
  %arrayidx32 = getelementptr inbounds [6 x i16], [6 x i16]* %einv, i32 0, i64 %idxprom31
  %19 = load i16, i16* %arrayidx32, align 2
  %conv33 = zext i16 %19 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.body.30
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %for.body.30
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %20 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %20, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.27

for.end.40:                                       ; preds = %for.cond.27
  %arraydecay41 = getelementptr inbounds [6 x i16], [6 x i16]* %einv, i32 0, i32 0
  %call42 = call i32 @eisinf(i16* %arraydecay41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.53, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %for.end.40
  %arraydecay45 = getelementptr inbounds [6 x i16], [6 x i16]* %einv, i32 0, i32 0
  %call46 = call i32 @eisnan(i16* %arraydecay45)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.53, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.44
  %arraydecay49 = getelementptr inbounds [6 x i16], [6 x i16]* %einv, i32 0, i32 0
  %call50 = call i32 @ecmp(i16* %arraydecay49, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @ezero, i32 0, i32 0))
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %lor.lhs.false.48, %lor.lhs.false.44, %for.end.40
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %lor.lhs.false.48
  br label %do.body.55

do.body.55:                                       ; preds = %if.end.54
  %21 = load %struct.realvaluetype*, %struct.realvaluetype** %r.addr, align 8
  %22 = bitcast %struct.realvaluetype* %21 to i8*
  %23 = bitcast [6 x i16]* %einv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 12, i32 2, i1 false)
  %24 = load %struct.realvaluetype*, %struct.realvaluetype** %r.addr, align 8
  %25 = bitcast %struct.realvaluetype* %24 to i8*
  %add.ptr56 = getelementptr inbounds i8, i8* %25, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr56, i8 0, i64 12, i32 1, i1 false)
  br label %do.end.57

do.end.57:                                        ; preds = %do.body.55
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.57, %if.then.53, %if.then.36, %if.then.25, %if.then.17, %if.then.9, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define void @debug_real(%struct.realvaluetype* byval align 8 %r) #0 {
entry:
  %dstr = alloca [30 x i8], align 16
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %dstr, i32 0, i32 0
  call void @ereal_to_decimal(%struct.realvaluetype* byval align 8 %r, i8* %arraydecay)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay1 = getelementptr inbounds [30 x i8], [30 x i8]* %dstr, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ereal_to_decimal(%struct.realvaluetype* byval align 8 %x, i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %e = alloca [6 x i16], align 2
  store i8* %s, i8** %s.addr, align 8
  %0 = bitcast [6 x i16]* %e to i8*
  %1 = bitcast %struct.realvaluetype* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %2 = load i8*, i8** %s.addr, align 8
  call void @etoasc(i16* %arraydecay, i8* %2, i32 20)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @etartdouble(%struct.realvaluetype* byval align 8 %r, i64* %l) #0 {
entry:
  %l.addr = alloca i64*, align 8
  %e = alloca [6 x i16], align 2
  store i64* %l, i64** %l.addr, align 8
  %0 = bitcast [6 x i16]* %e to i8*
  %1 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  call void @etoe64(i16* %arraydecay, i16* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %2 = load i64*, i64** %l.addr, align 8
  call void @endian(i16* %arraydecay2, i64* %2, i32 18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @endian(i16* %e, i64* %x, i32 %mode) #0 {
entry:
  %e.addr = alloca i16*, align 8
  %x.addr = alloca i64*, align 8
  %mode.addr = alloca i32, align 4
  %th = alloca i64, align 8
  %t = alloca i64, align 8
  store i16* %e, i16** %e.addr, align 8
  store i64* %x, i64** %x.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  switch i32 %0, label %sw.default [
    i32 18, label %sw.bb
    i32 17, label %sw.bb.1
    i32 16, label %sw.bb.7
    i32 15, label %sw.bb.17
    i32 13, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i64*, i64** %x.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 3
  store i64 0, i64* %arrayidx, align 8
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %sw.bb
  %2 = load i16*, i16** %e.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %2, i64 5
  %3 = load i16, i16* %arrayidx2, align 2
  %conv = zext i16 %3 to i64
  %and = and i64 %conv, 65535
  store i64 %and, i64* %th, align 8
  %4 = load i16*, i16** %e.addr, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %4, i64 4
  %5 = load i16, i16* %arrayidx3, align 2
  %conv4 = zext i16 %5 to i64
  %and5 = and i64 %conv4, 65535
  store i64 %and5, i64* %t, align 8
  %6 = load i64, i64* %th, align 8
  %shl = shl i64 %6, 16
  %7 = load i64, i64* %t, align 8
  %or = or i64 %7, %shl
  store i64 %or, i64* %t, align 8
  %8 = load i64, i64* %t, align 8
  %9 = load i64*, i64** %x.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %9, i64 2
  store i64 %8, i64* %arrayidx6, align 8
  br label %sw.bb.7

sw.bb.7:                                          ; preds = %entry, %sw.bb.1
  %10 = load i16*, i16** %e.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %10, i64 3
  %11 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %11 to i64
  %and10 = and i64 %conv9, 65535
  store i64 %and10, i64* %th, align 8
  %12 = load i16*, i16** %e.addr, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %12, i64 2
  %13 = load i16, i16* %arrayidx11, align 2
  %conv12 = zext i16 %13 to i64
  %and13 = and i64 %conv12, 65535
  store i64 %and13, i64* %t, align 8
  %14 = load i64, i64* %th, align 8
  %shl14 = shl i64 %14, 16
  %15 = load i64, i64* %t, align 8
  %or15 = or i64 %15, %shl14
  store i64 %or15, i64* %t, align 8
  %16 = load i64, i64* %t, align 8
  %17 = load i64*, i64** %x.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %17, i64 1
  store i64 %16, i64* %arrayidx16, align 8
  br label %sw.bb.17

sw.bb.17:                                         ; preds = %entry, %entry, %sw.bb.7
  %18 = load i16*, i16** %e.addr, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %18, i64 1
  %19 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %19 to i64
  %and20 = and i64 %conv19, 65535
  store i64 %and20, i64* %th, align 8
  %20 = load i16*, i16** %e.addr, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %20, i64 0
  %21 = load i16, i16* %arrayidx21, align 2
  %conv22 = zext i16 %21 to i64
  %and23 = and i64 %conv22, 65535
  store i64 %and23, i64* %t, align 8
  %22 = load i64, i64* %th, align 8
  %shl24 = shl i64 %22, 16
  %23 = load i64, i64* %t, align 8
  %or25 = or i64 %23, %shl24
  store i64 %or25, i64* %t, align 8
  %24 = load i64, i64* %t, align 8
  %25 = load i64*, i64** %x.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %24, i64* %arrayidx26, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 609, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__FUNCTION__.endian, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.17
  ret void
}

; Function Attrs: nounwind uwtable
define void @etarldouble(%struct.realvaluetype* byval align 8 %r, i64* %l) #0 {
entry:
  %l.addr = alloca i64*, align 8
  %e = alloca [6 x i16], align 2
  store i64* %l, i64** %l.addr, align 8
  %0 = bitcast [6 x i16]* %e to i8*
  %1 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  call void @etoe64(i16* %arraydecay, i16* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %2 = load i64*, i64** %l.addr, align 8
  call void @endian(i16* %arraydecay2, i64* %2, i32 17)
  ret void
}

; Function Attrs: nounwind uwtable
define void @etardouble(%struct.realvaluetype* byval align 8 %r, i64* %l) #0 {
entry:
  %l.addr = alloca i64*, align 8
  %e = alloca [6 x i16], align 2
  store i64* %l, i64** %l.addr, align 8
  %0 = bitcast [6 x i16]* %e to i8*
  %1 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  call void @etoe53(i16* %arraydecay, i16* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %2 = load i64*, i64** %l.addr, align 8
  call void @endian(i16* %arraydecay2, i64* %2, i32 16)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @etarsingle(%struct.realvaluetype* byval align 8 %r) #0 {
entry:
  %e = alloca [6 x i16], align 2
  %l = alloca i64, align 8
  %0 = bitcast [6 x i16]* %e to i8*
  %1 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  call void @etoe24(i16* %arraydecay, i16* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  call void @endian(i16* %arraydecay2, i64* %l, i32 15)
  %2 = load i64, i64* %l, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal void @etoasc(i16* %x, i8* %string, i32 %ndigs) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %string.addr = alloca i8*, align 8
  %ndigs.addr = alloca i32, align 4
  %digit = alloca i16, align 2
  %y = alloca [9 x i16], align 16
  %t = alloca [9 x i16], align 16
  %u = alloca [9 x i16], align 16
  %w = alloca [9 x i16], align 16
  %p = alloca i16*, align 8
  %r = alloca i16*, align 8
  %ten = alloca i16*, align 8
  %sign = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %expon = alloca i32, align 4
  %rndsav = alloca i32, align 4
  %s = alloca i8*, align 8
  %ss = alloca i8*, align 8
  %m = alloca i16, align 2
  store i16* %x, i16** %x.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %ndigs, i32* %ndigs.addr, align 4
  %0 = load i32, i32* @rndprc, align 4
  store i32 %0, i32* %rndsav, align 4
  %1 = load i8*, i8** %string.addr, align 8
  store i8* %1, i8** %ss, align 8
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @wstring, i32 0, i32 0), i8** %s, align 8
  %2 = load i8*, i8** %ss, align 8
  store i8 0, i8* %2, align 1
  %3 = load i8*, i8** %s, align 8
  store i8 0, i8* %3, align 1
  %4 = load i16*, i16** %x.addr, align 8
  %call = call i32 @eisnan(i16* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @wstring, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0)) #1
  br label %bxit

if.end:                                           ; preds = %entry
  store i32 80, i32* @rndprc, align 4
  %5 = load i16*, i16** %x.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  call void @emov(i16* %5, i16* %arraydecay)
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i64 5
  %6 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 32768
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i16 -1, i16* %sign, align 2
  %arrayidx4 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i64 5
  %7 = load i16, i16* %arrayidx4, align 2
  %conv5 = zext i16 %7 to i32
  %and6 = and i32 %conv5, 32767
  %conv7 = trunc i32 %and6 to i16
  store i16 %conv7, i16* %arrayidx4, align 2
  br label %if.end.8

if.else:                                          ; preds = %if.end
  store i16 0, i16* %sign, align 2
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.3
  store i32 0, i32* %expon, align 4
  store i16* getelementptr inbounds ([13 x [6 x i16]], [13 x [6 x i16]]* @etens, i32 0, i64 12, i64 0), i16** %ten, align 8
  %arraydecay9 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  call void @emov(i16* getelementptr inbounds ([6 x i16], [6 x i16]* @eone, i32 0, i32 0), i16* %arraydecay9)
  %arrayidx10 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i64 5
  %8 = load i16, i16* %arrayidx10, align 2
  %conv11 = zext i16 %8 to i32
  %cmp = icmp eq i32 %conv11, 0
  br i1 %cmp, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %if.end.8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %9 = load i32, i32* %k, align 4
  %cmp14 = icmp slt i32 %9, 5
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %k, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i64 %idxprom
  %11 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %11 to i32
  %cmp18 = icmp ne i32 %conv17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.body
  br label %tnzro

if.end.21:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %12 = load i32, i32* %k, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %isone

if.end.22:                                        ; preds = %if.end.8
  br label %tnzro

tnzro:                                            ; preds = %if.end.22, %if.then.20
  %arrayidx23 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i64 5
  %13 = load i16, i16* %arrayidx23, align 2
  %conv24 = zext i16 %13 to i32
  %cmp25 = icmp eq i32 %conv24, 32767
  br i1 %cmp25, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %tnzro
  %14 = load i16, i16* %sign, align 2
  %tobool28 = icmp ne i16 %14, 0
  br i1 %tobool28, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %if.then.27
  %call30 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @wstring, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0)) #1
  br label %if.end.33

if.else.31:                                       ; preds = %if.then.27
  %call32 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @wstring, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #1
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.29
  br label %bxit

if.end.34:                                        ; preds = %tnzro
  %arrayidx35 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i64 5
  %15 = load i16, i16* %arrayidx35, align 2
  %conv36 = zext i16 %15 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %if.end.34
  %arrayidx39 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i64 4
  %16 = load i16, i16* %arrayidx39, align 2
  %conv40 = zext i16 %16 to i32
  %and41 = and i32 %conv40, 32768
  %cmp42 = icmp eq i32 %and41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %land.lhs.true
  call void @mtherr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 1)
  %call45 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @wstring, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0)) #1
  br label %bxit

if.end.46:                                        ; preds = %land.lhs.true, %if.end.34
  %arraydecay47 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  %call48 = call i32 @ecmp(i16* getelementptr inbounds ([6 x i16], [6 x i16]* @eone, i32 0, i32 0), i16* %arraydecay47)
  store i32 %call48, i32* %i, align 4
  %17 = load i32, i32* %i, align 4
  %cmp49 = icmp eq i32 %17, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.46
  br label %isone

if.end.52:                                        ; preds = %if.end.46
  %18 = load i32, i32* %i, align 4
  %cmp53 = icmp eq i32 %18, -2
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 4888, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)) #6
  unreachable

if.end.56:                                        ; preds = %if.end.52
  %19 = load i32, i32* %i, align 4
  %cmp57 = icmp slt i32 %19, 0
  br i1 %cmp57, label %if.then.59, label %if.else.126

if.then.59:                                       ; preds = %if.end.56
  %arraydecay60 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  %arraydecay61 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  call void @emov(i16* %arraydecay60, i16* %arraydecay61)
  %arrayidx62 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i64 5
  store i16 16462, i16* %arrayidx62, align 2
  store i16* getelementptr inbounds ([13 x [6 x i16]], [13 x [6 x i16]]* @etens, i32 0, i64 8, i64 0), i16** %p, align 8
  store i16 16, i16* %m, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.59
  %20 = load i16*, i16** %p, align 8
  %arraydecay63 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  %arraydecay64 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  call void @ediv(i16* %20, i16* %arraydecay63, i16* %arraydecay64)
  %arraydecay65 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  %arraydecay66 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  call void @efloor(i16* %arraydecay65, i16* %arraydecay66)
  store i32 0, i32* %j, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.81, %do.body
  %21 = load i32, i32* %j, align 4
  %cmp68 = icmp slt i32 %21, 5
  br i1 %cmp68, label %for.body.70, label %for.end.83

for.body.70:                                      ; preds = %for.cond.67
  %22 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %22 to i64
  %arrayidx72 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i64 %idxprom71
  %23 = load i16, i16* %arrayidx72, align 2
  %conv73 = zext i16 %23 to i32
  %24 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %24 to i64
  %arrayidx75 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i64 %idxprom74
  %25 = load i16, i16* %arrayidx75, align 2
  %conv76 = zext i16 %25 to i32
  %cmp77 = icmp ne i32 %conv73, %conv76
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.body.70
  br label %noint

if.end.80:                                        ; preds = %for.body.70
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %26 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %26, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond.67

for.end.83:                                       ; preds = %for.cond.67
  %arraydecay84 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  %arraydecay85 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  call void @emov(i16* %arraydecay84, i16* %arraydecay85)
  %27 = load i16, i16* %m, align 2
  %conv86 = zext i16 %27 to i32
  %28 = load i32, i32* %expon, align 4
  %add = add nsw i32 %28, %conv86
  store i32 %add, i32* %expon, align 4
  br label %noint

noint:                                            ; preds = %for.end.83, %if.then.79
  %29 = load i16*, i16** %p, align 8
  %add.ptr = getelementptr inbounds i16, i16* %29, i64 6
  store i16* %add.ptr, i16** %p, align 8
  %30 = load i16, i16* %m, align 2
  %conv87 = zext i16 %30 to i32
  %shr = ashr i32 %conv87, 1
  %conv88 = trunc i32 %shr to i16
  store i16 %conv88, i16* %m, align 2
  br label %do.cond

do.cond:                                          ; preds = %noint
  %31 = load i16, i16* %m, align 2
  %conv89 = zext i16 %31 to i32
  %cmp90 = icmp ne i32 %conv89, 0
  br i1 %cmp90, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %arrayidx92 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i64 5
  %32 = load i16, i16* %arrayidx92, align 2
  %conv93 = zext i16 %32 to i32
  %sub = sub i32 %conv93, 16462
  %arrayidx94 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i64 5
  %33 = load i16, i16* %arrayidx94, align 2
  %conv95 = zext i16 %33 to i32
  %add96 = add i32 %conv95, %sub
  %conv97 = trunc i32 %add96 to i16
  store i16 %conv97, i16* %arrayidx94, align 2
  %arraydecay98 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  %arraydecay99 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  call void @emov(i16* %arraydecay98, i16* %arraydecay99)
  %arraydecay100 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  call void @emov(i16* getelementptr inbounds ([6 x i16], [6 x i16]* @eone, i32 0, i32 0), i16* %arraydecay100)
  store i16 4096, i16* %m, align 2
  store i16* getelementptr inbounds ([13 x [6 x i16]], [13 x [6 x i16]]* @etens, i32 0, i64 0, i64 0), i16** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.124, %do.end
  %34 = load i16*, i16** %ten, align 8
  %arraydecay101 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  %call102 = call i32 @ecmp(i16* %34, i16* %arraydecay101)
  %cmp103 = icmp sle i32 %call102, 0
  br i1 %cmp103, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i16*, i16** %p, align 8
  %arraydecay105 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  %call106 = call i32 @ecmp(i16* %35, i16* %arraydecay105)
  %cmp107 = icmp sle i32 %call106, 0
  br i1 %cmp107, label %if.then.109, label %if.end.116

if.then.109:                                      ; preds = %while.body
  %36 = load i16*, i16** %p, align 8
  %arraydecay110 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  %arraydecay111 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  call void @ediv(i16* %36, i16* %arraydecay110, i16* %arraydecay111)
  %37 = load i16*, i16** %p, align 8
  %arraydecay112 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  %arraydecay113 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  call void @emul(i16* %37, i16* %arraydecay112, i16* %arraydecay113)
  %38 = load i16, i16* %m, align 2
  %conv114 = zext i16 %38 to i32
  %39 = load i32, i32* %expon, align 4
  %add115 = add nsw i32 %39, %conv114
  store i32 %add115, i32* %expon, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.109, %while.body
  %40 = load i16, i16* %m, align 2
  %conv117 = zext i16 %40 to i32
  %shr118 = ashr i32 %conv117, 1
  %conv119 = trunc i32 %shr118 to i16
  store i16 %conv119, i16* %m, align 2
  %41 = load i16, i16* %m, align 2
  %conv120 = zext i16 %41 to i32
  %cmp121 = icmp eq i32 %conv120, 0
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.end.116
  br label %while.end

if.end.124:                                       ; preds = %if.end.116
  %42 = load i16*, i16** %p, align 8
  %add.ptr125 = getelementptr inbounds i16, i16* %42, i64 6
  store i16* %add.ptr125, i16** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.123, %while.cond
  br label %if.end.230

if.else.126:                                      ; preds = %if.end.56
  %arrayidx127 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i64 5
  %43 = load i16, i16* %arrayidx127, align 2
  %conv128 = zext i16 %43 to i32
  %cmp129 = icmp eq i32 %conv128, 0
  br i1 %cmp129, label %if.then.131, label %if.else.143

if.then.131:                                      ; preds = %if.else.126
  br label %while.cond.132

while.cond.132:                                   ; preds = %while.body.138, %if.then.131
  %arrayidx133 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i64 4
  %44 = load i16, i16* %arrayidx133, align 2
  %conv134 = zext i16 %44 to i32
  %and135 = and i32 %conv134, 32768
  %cmp136 = icmp eq i32 %and135, 0
  br i1 %cmp136, label %while.body.138, label %while.end.142

while.body.138:                                   ; preds = %while.cond.132
  %45 = load i16*, i16** %ten, align 8
  %arraydecay139 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  %arraydecay140 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  call void @emul(i16* %45, i16* %arraydecay139, i16* %arraydecay140)
  %46 = load i32, i32* %expon, align 4
  %sub141 = sub nsw i32 %46, 1
  store i32 %sub141, i32* %expon, align 4
  br label %while.cond.132

while.end.142:                                    ; preds = %while.cond.132
  br label %if.end.200

if.else.143:                                      ; preds = %if.else.126
  %arraydecay144 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  %arraydecay145 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  call void @emovi(i16* %arraydecay144, i16* %arraydecay145)
  store i32 0, i32* %i, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.195, %if.else.143
  %47 = load i32, i32* %i, align 4
  %cmp147 = icmp slt i32 %47, 24
  br i1 %cmp147, label %for.body.149, label %for.end.197

for.body.149:                                     ; preds = %for.cond.146
  %arrayidx150 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i64 8
  %48 = load i16, i16* %arrayidx150, align 2
  %conv151 = zext i16 %48 to i32
  %and152 = and i32 %conv151, 7
  %cmp153 = icmp ne i32 %and152, 0
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %for.body.149
  br label %for.end.197

if.end.156:                                       ; preds = %for.body.149
  %arraydecay157 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  %arraydecay158 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  call void @emovz(i16* %arraydecay157, i16* %arraydecay158)
  %arraydecay159 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  call void @eshdn1(i16* %arraydecay159)
  %arraydecay160 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  call void @eshdn1(i16* %arraydecay160)
  %arraydecay161 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  %arraydecay162 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  call void @eaddm(i16* %arraydecay161, i16* %arraydecay162)
  %arrayidx163 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i64 1
  %49 = load i16, i16* %arrayidx163, align 2
  %conv164 = zext i16 %49 to i32
  %add165 = add nsw i32 %conv164, 3
  %conv166 = trunc i32 %add165 to i16
  store i16 %conv166, i16* %arrayidx163, align 2
  br label %while.cond.167

while.cond.167:                                   ; preds = %while.body.172, %if.end.156
  %arrayidx168 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i64 2
  %50 = load i16, i16* %arrayidx168, align 2
  %conv169 = zext i16 %50 to i32
  %cmp170 = icmp ne i32 %conv169, 0
  br i1 %cmp170, label %while.body.172, label %while.end.178

while.body.172:                                   ; preds = %while.cond.167
  %arraydecay173 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  call void @eshdn1(i16* %arraydecay173)
  %arrayidx174 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i64 1
  %51 = load i16, i16* %arrayidx174, align 2
  %conv175 = zext i16 %51 to i32
  %add176 = add nsw i32 %conv175, 1
  %conv177 = trunc i32 %add176 to i16
  store i16 %conv177, i16* %arrayidx174, align 2
  br label %while.cond.167

while.end.178:                                    ; preds = %while.cond.167
  %arrayidx179 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i64 8
  %52 = load i16, i16* %arrayidx179, align 2
  %conv180 = zext i16 %52 to i32
  %cmp181 = icmp ne i32 %conv180, 0
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %while.end.178
  br label %for.end.197

if.end.184:                                       ; preds = %while.end.178
  %53 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @eone, i32 0, i64 5), align 2
  %conv185 = zext i16 %53 to i32
  %arrayidx186 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i64 1
  %54 = load i16, i16* %arrayidx186, align 2
  %conv187 = zext i16 %54 to i32
  %cmp188 = icmp sle i32 %conv185, %conv187
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.end.184
  br label %for.end.197

if.end.191:                                       ; preds = %if.end.184
  %arraydecay192 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  %arraydecay193 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  call void @emovz(i16* %arraydecay192, i16* %arraydecay193)
  %55 = load i32, i32* %expon, align 4
  %sub194 = sub nsw i32 %55, 1
  store i32 %sub194, i32* %expon, align 4
  br label %for.inc.195

for.inc.195:                                      ; preds = %if.end.191
  %56 = load i32, i32* %i, align 4
  %inc196 = add nsw i32 %56, 1
  store i32 %inc196, i32* %i, align 4
  br label %for.cond.146

for.end.197:                                      ; preds = %if.then.190, %if.then.183, %if.then.155, %for.cond.146
  %arraydecay198 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  %arraydecay199 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  call void @emovo(i16* %arraydecay198, i16* %arraydecay199)
  br label %if.end.200

if.end.200:                                       ; preds = %for.end.197, %while.end.142
  store i32 -4096, i32* %k, align 4
  store i16* getelementptr inbounds ([13 x [6 x i16]], [13 x [6 x i16]]* @emtens, i32 0, i64 0, i64 0), i16** %p, align 8
  store i16* getelementptr inbounds ([13 x [6 x i16]], [13 x [6 x i16]]* @etens, i32 0, i64 0, i64 0), i16** %r, align 8
  %arraydecay201 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  %arraydecay202 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  call void @emov(i16* %arraydecay201, i16* %arraydecay202)
  %arraydecay203 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  call void @emov(i16* getelementptr inbounds ([6 x i16], [6 x i16]* @eone, i32 0, i32 0), i16* %arraydecay203)
  br label %while.cond.204

while.cond.204:                                   ; preds = %if.end.224, %if.end.200
  %arraydecay205 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  %call206 = call i32 @ecmp(i16* getelementptr inbounds ([6 x i16], [6 x i16]* @eone, i32 0, i32 0), i16* %arraydecay205)
  %cmp207 = icmp sgt i32 %call206, 0
  br i1 %cmp207, label %while.body.209, label %while.end.227

while.body.209:                                   ; preds = %while.cond.204
  %57 = load i16*, i16** %p, align 8
  %arraydecay210 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  %call211 = call i32 @ecmp(i16* %57, i16* %arraydecay210)
  %cmp212 = icmp sge i32 %call211, 0
  br i1 %cmp212, label %if.then.214, label %if.end.220

if.then.214:                                      ; preds = %while.body.209
  %58 = load i16*, i16** %r, align 8
  %arraydecay215 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  %arraydecay216 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  call void @emul(i16* %58, i16* %arraydecay215, i16* %arraydecay216)
  %59 = load i16*, i16** %r, align 8
  %arraydecay217 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  %arraydecay218 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  call void @emul(i16* %59, i16* %arraydecay217, i16* %arraydecay218)
  %60 = load i32, i32* %k, align 4
  %61 = load i32, i32* %expon, align 4
  %add219 = add nsw i32 %61, %60
  store i32 %add219, i32* %expon, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.214, %while.body.209
  %62 = load i32, i32* %k, align 4
  %div = sdiv i32 %62, 2
  store i32 %div, i32* %k, align 4
  %63 = load i32, i32* %k, align 4
  %cmp221 = icmp eq i32 %63, 0
  br i1 %cmp221, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %if.end.220
  br label %while.end.227

if.end.224:                                       ; preds = %if.end.220
  %64 = load i16*, i16** %p, align 8
  %add.ptr225 = getelementptr inbounds i16, i16* %64, i64 6
  store i16* %add.ptr225, i16** %p, align 8
  %65 = load i16*, i16** %r, align 8
  %add.ptr226 = getelementptr inbounds i16, i16* %65, i64 6
  store i16* %add.ptr226, i16** %r, align 8
  br label %while.cond.204

while.end.227:                                    ; preds = %if.then.223, %while.cond.204
  %arraydecay228 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  %arraydecay229 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  call void @ediv(i16* %arraydecay228, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @eone, i32 0, i32 0), i16* %arraydecay229)
  br label %if.end.230

if.end.230:                                       ; preds = %while.end.227, %while.end
  br label %isone

isone:                                            ; preds = %if.end.230, %if.then.51, %for.end
  %arraydecay231 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  %arraydecay232 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  call void @emovi(i16* %arraydecay231, i16* %arraydecay232)
  %arraydecay233 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  %arraydecay234 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  call void @emovz(i16* %arraydecay233, i16* %arraydecay234)
  %arraydecay235 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  %arraydecay236 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  call void @emovi(i16* %arraydecay235, i16* %arraydecay236)
  %arraydecay237 = getelementptr inbounds [9 x i16], [9 x i16]* %w, i32 0, i32 0
  %arraydecay238 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  call void @emovz(i16* %arraydecay237, i16* %arraydecay238)
  %arraydecay239 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  %arraydecay240 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  call void @eiremain(i16* %arraydecay239, i16* %arraydecay240)
  %66 = load i16, i16* getelementptr inbounds ([9 x i16], [9 x i16]* @equot, i32 0, i64 8), align 2
  store i16 %66, i16* %digit, align 2
  br label %while.cond.241

while.cond.241:                                   ; preds = %while.body.249, %isone
  %67 = load i16, i16* %digit, align 2
  %conv242 = sext i16 %67 to i32
  %cmp243 = icmp eq i32 %conv242, 0
  br i1 %cmp243, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.241
  %arraydecay245 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  %call246 = call i32 @ecmp(i16* %arraydecay245, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @ezero, i32 0, i32 0))
  %cmp247 = icmp ne i32 %call246, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.241
  %68 = phi i1 [ false, %while.cond.241 ], [ %cmp247, %land.rhs ]
  br i1 %68, label %while.body.249, label %while.end.260

while.body.249:                                   ; preds = %land.end
  %arraydecay250 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  call void @eshup1(i16* %arraydecay250)
  %arraydecay251 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  %arraydecay252 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  call void @emovz(i16* %arraydecay251, i16* %arraydecay252)
  %arraydecay253 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  call void @eshup1(i16* %arraydecay253)
  %arraydecay254 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  call void @eshup1(i16* %arraydecay254)
  %arraydecay255 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  %arraydecay256 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  call void @eaddm(i16* %arraydecay255, i16* %arraydecay256)
  %arraydecay257 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  %arraydecay258 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  call void @eiremain(i16* %arraydecay257, i16* %arraydecay258)
  %69 = load i16, i16* getelementptr inbounds ([9 x i16], [9 x i16]* @equot, i32 0, i64 8), align 2
  store i16 %69, i16* %digit, align 2
  %70 = load i32, i32* %expon, align 4
  %sub259 = sub nsw i32 %70, 1
  store i32 %sub259, i32* %expon, align 4
  br label %while.cond.241

while.end.260:                                    ; preds = %land.end
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @wstring, i32 0, i32 0), i8** %s, align 8
  %71 = load i16, i16* %sign, align 2
  %tobool261 = icmp ne i16 %71, 0
  br i1 %tobool261, label %if.then.262, label %if.else.263

if.then.262:                                      ; preds = %while.end.260
  %72 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  store i8 45, i8* %72, align 1
  br label %if.end.265

if.else.263:                                      ; preds = %while.end.260
  %73 = load i8*, i8** %s, align 8
  %incdec.ptr264 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr264, i8** %s, align 8
  store i8 32, i8* %73, align 1
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.263, %if.then.262
  %74 = load i32, i32* %ndigs.addr, align 4
  %cmp266 = icmp slt i32 %74, 0
  br i1 %cmp266, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %if.end.265
  store i32 0, i32* %ndigs.addr, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.268, %if.end.265
  %75 = load i32, i32* %ndigs.addr, align 4
  %cmp270 = icmp sgt i32 %75, 23
  br i1 %cmp270, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %if.end.269
  store i32 23, i32* %ndigs.addr, align 4
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.272, %if.end.269
  %76 = load i16, i16* %digit, align 2
  %conv274 = sext i16 %76 to i32
  %cmp275 = icmp eq i32 %conv274, 10
  br i1 %cmp275, label %if.then.277, label %if.else.287

if.then.277:                                      ; preds = %if.end.273
  %77 = load i8*, i8** %s, align 8
  %incdec.ptr278 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr278, i8** %s, align 8
  store i8 49, i8* %77, align 1
  %78 = load i8*, i8** %s, align 8
  %incdec.ptr279 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr279, i8** %s, align 8
  store i8 46, i8* %78, align 1
  %79 = load i32, i32* %ndigs.addr, align 4
  %cmp280 = icmp sgt i32 %79, 0
  br i1 %cmp280, label %if.then.282, label %if.end.285

if.then.282:                                      ; preds = %if.then.277
  %80 = load i8*, i8** %s, align 8
  %incdec.ptr283 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr283, i8** %s, align 8
  store i8 48, i8* %80, align 1
  %81 = load i32, i32* %ndigs.addr, align 4
  %sub284 = sub nsw i32 %81, 1
  store i32 %sub284, i32* %ndigs.addr, align 4
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.282, %if.then.277
  %82 = load i32, i32* %expon, align 4
  %add286 = add nsw i32 %82, 1
  store i32 %add286, i32* %expon, align 4
  br label %if.end.294

if.else.287:                                      ; preds = %if.end.273
  %83 = load i16, i16* %digit, align 2
  %conv288 = trunc i16 %83 to i8
  %conv289 = sext i8 %conv288 to i32
  %add290 = add nsw i32 %conv289, 48
  %conv291 = trunc i32 %add290 to i8
  %84 = load i8*, i8** %s, align 8
  %incdec.ptr292 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr292, i8** %s, align 8
  store i8 %conv291, i8* %84, align 1
  %85 = load i8*, i8** %s, align 8
  %incdec.ptr293 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr293, i8** %s, align 8
  store i8 46, i8* %85, align 1
  br label %if.end.294

if.end.294:                                       ; preds = %if.else.287, %if.end.285
  store i32 0, i32* %k, align 4
  br label %for.cond.295

for.cond.295:                                     ; preds = %for.inc.313, %if.end.294
  %86 = load i32, i32* %k, align 4
  %87 = load i32, i32* %ndigs.addr, align 4
  %cmp296 = icmp sle i32 %86, %87
  br i1 %cmp296, label %for.body.298, label %for.end.315

for.body.298:                                     ; preds = %for.cond.295
  %arraydecay299 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  call void @eshup1(i16* %arraydecay299)
  %arraydecay300 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  %arraydecay301 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  call void @emovz(i16* %arraydecay300, i16* %arraydecay301)
  %arraydecay302 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  call void @eshup1(i16* %arraydecay302)
  %arraydecay303 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  call void @eshup1(i16* %arraydecay303)
  %arraydecay304 = getelementptr inbounds [9 x i16], [9 x i16]* %u, i32 0, i32 0
  %arraydecay305 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  call void @eaddm(i16* %arraydecay304, i16* %arraydecay305)
  %arraydecay306 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  %arraydecay307 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  call void @eiremain(i16* %arraydecay306, i16* %arraydecay307)
  %88 = load i16, i16* getelementptr inbounds ([9 x i16], [9 x i16]* @equot, i32 0, i64 8), align 2
  %conv308 = trunc i16 %88 to i8
  %conv309 = sext i8 %conv308 to i32
  %add310 = add nsw i32 %conv309, 48
  %conv311 = trunc i32 %add310 to i8
  %89 = load i8*, i8** %s, align 8
  %incdec.ptr312 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr312, i8** %s, align 8
  store i8 %conv311, i8* %89, align 1
  br label %for.inc.313

for.inc.313:                                      ; preds = %for.body.298
  %90 = load i32, i32* %k, align 4
  %inc314 = add nsw i32 %90, 1
  store i32 %inc314, i32* %k, align 4
  br label %for.cond.295

for.end.315:                                      ; preds = %for.cond.295
  %91 = load i16, i16* getelementptr inbounds ([9 x i16], [9 x i16]* @equot, i32 0, i64 8), align 2
  store i16 %91, i16* %digit, align 2
  %92 = load i8*, i8** %s, align 8
  %incdec.ptr316 = getelementptr inbounds i8, i8* %92, i32 -1
  store i8* %incdec.ptr316, i8** %s, align 8
  %93 = load i8*, i8** %s, align 8
  store i8* %93, i8** %ss, align 8
  %94 = load i16, i16* %digit, align 2
  %conv317 = sext i16 %94 to i32
  %cmp318 = icmp sgt i32 %conv317, 4
  br i1 %cmp318, label %if.then.320, label %if.end.363

if.then.320:                                      ; preds = %for.end.315
  %95 = load i16, i16* %digit, align 2
  %conv321 = sext i16 %95 to i32
  %cmp322 = icmp eq i32 %conv321, 5
  br i1 %cmp322, label %if.then.324, label %if.end.340

if.then.324:                                      ; preds = %if.then.320
  %arraydecay325 = getelementptr inbounds [9 x i16], [9 x i16]* %y, i32 0, i32 0
  %arraydecay326 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  call void @emovo(i16* %arraydecay325, i16* %arraydecay326)
  %arraydecay327 = getelementptr inbounds [9 x i16], [9 x i16]* %t, i32 0, i32 0
  %call328 = call i32 @ecmp(i16* %arraydecay327, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @ezero, i32 0, i32 0))
  %cmp329 = icmp ne i32 %call328, 0
  br i1 %cmp329, label %if.then.331, label %if.end.332

if.then.331:                                      ; preds = %if.then.324
  br label %roun

if.end.332:                                       ; preds = %if.then.324
  %96 = load i8*, i8** %s, align 8
  %add.ptr333 = getelementptr inbounds i8, i8* %96, i64 -1
  %97 = load i8, i8* %add.ptr333, align 1
  %conv334 = sext i8 %97 to i32
  %and335 = and i32 %conv334, 1
  %cmp336 = icmp eq i32 %and335, 0
  br i1 %cmp336, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %if.end.332
  br label %doexp

if.end.339:                                       ; preds = %if.end.332
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %if.then.320
  br label %roun

roun:                                             ; preds = %if.then.361, %if.end.340, %if.then.331
  %98 = load i8*, i8** %s, align 8
  %incdec.ptr341 = getelementptr inbounds i8, i8* %98, i32 -1
  store i8* %incdec.ptr341, i8** %s, align 8
  %99 = load i8*, i8** %s, align 8
  %100 = load i8, i8* %99, align 1
  %conv342 = sext i8 %100 to i32
  %and343 = and i32 %conv342, 127
  store i32 %and343, i32* %k, align 4
  %101 = load i32, i32* %k, align 4
  %cmp344 = icmp eq i32 %101, 46
  br i1 %cmp344, label %if.then.346, label %if.end.356

if.then.346:                                      ; preds = %roun
  %102 = load i8*, i8** %s, align 8
  %incdec.ptr347 = getelementptr inbounds i8, i8* %102, i32 -1
  store i8* %incdec.ptr347, i8** %s, align 8
  %103 = load i8*, i8** %s, align 8
  %104 = load i8, i8* %103, align 1
  %conv348 = sext i8 %104 to i32
  store i32 %conv348, i32* %k, align 4
  %105 = load i32, i32* %k, align 4
  %add349 = add nsw i32 %105, 1
  store i32 %add349, i32* %k, align 4
  %106 = load i32, i32* %k, align 4
  %conv350 = trunc i32 %106 to i8
  %107 = load i8*, i8** %s, align 8
  store i8 %conv350, i8* %107, align 1
  %108 = load i32, i32* %k, align 4
  %cmp351 = icmp sgt i32 %108, 57
  br i1 %cmp351, label %if.then.353, label %if.end.355

if.then.353:                                      ; preds = %if.then.346
  %109 = load i32, i32* %expon, align 4
  %add354 = add nsw i32 %109, 1
  store i32 %add354, i32* %expon, align 4
  %110 = load i8*, i8** %s, align 8
  store i8 49, i8* %110, align 1
  br label %if.end.355

if.end.355:                                       ; preds = %if.then.353, %if.then.346
  br label %doexp

if.end.356:                                       ; preds = %roun
  %111 = load i32, i32* %k, align 4
  %add357 = add nsw i32 %111, 1
  store i32 %add357, i32* %k, align 4
  %112 = load i32, i32* %k, align 4
  %conv358 = trunc i32 %112 to i8
  %113 = load i8*, i8** %s, align 8
  store i8 %conv358, i8* %113, align 1
  %114 = load i32, i32* %k, align 4
  %cmp359 = icmp sgt i32 %114, 57
  br i1 %cmp359, label %if.then.361, label %if.end.362

if.then.361:                                      ; preds = %if.end.356
  %115 = load i8*, i8** %s, align 8
  store i8 48, i8* %115, align 1
  br label %roun

if.end.362:                                       ; preds = %if.end.356
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %for.end.315
  br label %doexp

doexp:                                            ; preds = %if.end.363, %if.end.355, %if.then.338
  %116 = load i8*, i8** %ss, align 8
  %117 = load i32, i32* %expon, align 4
  %call364 = call i32 (i8*, i8*, ...) @sprintf(i8* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i32 %117) #1
  br label %bxit

bxit:                                             ; preds = %doexp, %if.then.44, %if.end.33, %if.then
  %118 = load i32, i32* %rndsav, align 4
  store i32 %118, i32* @rndprc, align 4
  %119 = load i8*, i8** %string.addr, align 8
  store i8* %119, i8** %s, align 8
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @wstring, i32 0, i32 0), i8** %ss, align 8
  br label %while.cond.365

while.cond.365:                                   ; preds = %while.body.369, %bxit
  %120 = load i8*, i8** %ss, align 8
  %121 = load i8, i8* %120, align 1
  %conv366 = sext i8 %121 to i32
  %cmp367 = icmp eq i32 %conv366, 32
  br i1 %cmp367, label %while.body.369, label %while.end.371

while.body.369:                                   ; preds = %while.cond.365
  %122 = load i8*, i8** %ss, align 8
  %incdec.ptr370 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr370, i8** %ss, align 8
  br label %while.cond.365

while.end.371:                                    ; preds = %while.cond.365
  br label %while.cond.372

while.cond.372:                                   ; preds = %while.body.378, %while.end.371
  %123 = load i8*, i8** %ss, align 8
  %incdec.ptr373 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr373, i8** %ss, align 8
  %124 = load i8, i8* %123, align 1
  %125 = load i8*, i8** %s, align 8
  %incdec.ptr374 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr374, i8** %s, align 8
  store i8 %124, i8* %125, align 1
  %conv375 = sext i8 %124 to i32
  %cmp376 = icmp ne i32 %conv375, 0
  br i1 %cmp376, label %while.body.378, label %while.end.379

while.body.378:                                   ; preds = %while.cond.372
  br label %while.cond.372

while.end.379:                                    ; preds = %while.cond.372
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ereal_cmp(%struct.realvaluetype* byval align 8 %x, %struct.realvaluetype* byval align 8 %y) #0 {
entry:
  %ex = alloca [6 x i16], align 2
  %ey = alloca [6 x i16], align 2
  %0 = bitcast [6 x i16]* %ex to i8*
  %1 = bitcast %struct.realvaluetype* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 2, i1 false)
  %2 = bitcast [6 x i16]* %ey to i8*
  %3 = bitcast %struct.realvaluetype* %y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 12, i32 2, i1 false)
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %ex, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [6 x i16], [6 x i16]* %ey, i32 0, i32 0
  %call = call i32 @ecmp(i16* %arraydecay, i16* %arraydecay1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @ereal_unto_float(%struct.realvaluetype* noalias sret %agg.result, i64 %f) #0 {
entry:
  %f.addr = alloca i64, align 8
  %r = alloca %struct.realvaluetype, align 8
  %s = alloca [2 x i16], align 2
  %e = alloca [6 x i16], align 2
  store i64 %f, i64* %f.addr, align 8
  %0 = load i64, i64* %f.addr, align 8
  %conv = trunc i64 %0 to i16
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %s, i32 0, i64 0
  store i16 %conv, i16* %arrayidx, align 2
  %1 = load i64, i64* %f.addr, align 8
  %shr = ashr i64 %1, 16
  %conv1 = trunc i64 %shr to i16
  %arrayidx2 = getelementptr inbounds [2 x i16], [2 x i16]* %s, i32 0, i64 1
  store i16 %conv1, i16* %arrayidx2, align 2
  %arraydecay = getelementptr inbounds [2 x i16], [2 x i16]* %s, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  call void @e24toe(i16* %arraydecay, i16* %arraydecay3)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = bitcast %struct.realvaluetype* %r to i8*
  %3 = bitcast [6 x i16]* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 12, i32 2, i1 false)
  %4 = bitcast %struct.realvaluetype* %r to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 12, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = bitcast %struct.realvaluetype* %agg.result to i8*
  %6 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ereal_unto_double(%struct.realvaluetype* noalias sret %agg.result, i64* %d) #0 {
entry:
  %d.addr = alloca i64*, align 8
  %r = alloca %struct.realvaluetype, align 8
  %s = alloca [4 x i16], align 2
  %e = alloca [6 x i16], align 2
  store i64* %d, i64** %d.addr, align 8
  %0 = load i64*, i64** %d.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  %conv = trunc i64 %1 to i16
  %arrayidx1 = getelementptr inbounds [4 x i16], [4 x i16]* %s, i32 0, i64 0
  store i16 %conv, i16* %arrayidx1, align 2
  %2 = load i64*, i64** %d.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx2, align 8
  %shr = ashr i64 %3, 16
  %conv3 = trunc i64 %shr to i16
  %arrayidx4 = getelementptr inbounds [4 x i16], [4 x i16]* %s, i32 0, i64 1
  store i16 %conv3, i16* %arrayidx4, align 2
  %4 = load i64*, i64** %d.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %4, i64 1
  %5 = load i64, i64* %arrayidx5, align 8
  %conv6 = trunc i64 %5 to i16
  %arrayidx7 = getelementptr inbounds [4 x i16], [4 x i16]* %s, i32 0, i64 2
  store i16 %conv6, i16* %arrayidx7, align 2
  %6 = load i64*, i64** %d.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %6, i64 1
  %7 = load i64, i64* %arrayidx8, align 8
  %shr9 = ashr i64 %7, 16
  %conv10 = trunc i64 %shr9 to i16
  %arrayidx11 = getelementptr inbounds [4 x i16], [4 x i16]* %s, i32 0, i64 3
  store i16 %conv10, i16* %arrayidx11, align 2
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %s, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  call void @e53toe(i16* %arraydecay, i16* %arraydecay12)
  br label %do.body

do.body:                                          ; preds = %entry
  %8 = bitcast %struct.realvaluetype* %r to i8*
  %9 = bitcast [6 x i16]* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 12, i32 2, i1 false)
  %10 = bitcast %struct.realvaluetype* %r to i8*
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 12, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %11 = bitcast %struct.realvaluetype* %agg.result to i8*
  %12 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ereal_from_float(%struct.realvaluetype* noalias sret %agg.result, i64 %f) #0 {
entry:
  %f.addr = alloca i64, align 8
  %r = alloca %struct.realvaluetype, align 8
  %s = alloca [2 x i16], align 2
  %e = alloca [6 x i16], align 2
  store i64 %f, i64* %f.addr, align 8
  %0 = load i64, i64* %f.addr, align 8
  %conv = trunc i64 %0 to i16
  %arrayidx = getelementptr inbounds [2 x i16], [2 x i16]* %s, i32 0, i64 0
  store i16 %conv, i16* %arrayidx, align 2
  %1 = load i64, i64* %f.addr, align 8
  %shr = ashr i64 %1, 16
  %conv1 = trunc i64 %shr to i16
  %arrayidx2 = getelementptr inbounds [2 x i16], [2 x i16]* %s, i32 0, i64 1
  store i16 %conv1, i16* %arrayidx2, align 2
  %arraydecay = getelementptr inbounds [2 x i16], [2 x i16]* %s, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  call void @e24toe(i16* %arraydecay, i16* %arraydecay3)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = bitcast %struct.realvaluetype* %r to i8*
  %3 = bitcast [6 x i16]* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 12, i32 2, i1 false)
  %4 = bitcast %struct.realvaluetype* %r to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 12, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = bitcast %struct.realvaluetype* %agg.result to i8*
  %6 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ereal_from_double(%struct.realvaluetype* noalias sret %agg.result, i64* %d) #0 {
entry:
  %d.addr = alloca i64*, align 8
  %r = alloca %struct.realvaluetype, align 8
  %s = alloca [4 x i16], align 2
  %e = alloca [6 x i16], align 2
  store i64* %d, i64** %d.addr, align 8
  %0 = load i64*, i64** %d.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  %conv = trunc i64 %1 to i16
  %arrayidx1 = getelementptr inbounds [4 x i16], [4 x i16]* %s, i32 0, i64 0
  store i16 %conv, i16* %arrayidx1, align 2
  %2 = load i64*, i64** %d.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx2, align 8
  %shr = ashr i64 %3, 16
  %conv3 = trunc i64 %shr to i16
  %arrayidx4 = getelementptr inbounds [4 x i16], [4 x i16]* %s, i32 0, i64 1
  store i16 %conv3, i16* %arrayidx4, align 2
  %4 = load i64*, i64** %d.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %4, i64 0
  %5 = load i64, i64* %arrayidx5, align 8
  %shr6 = ashr i64 %5, 32
  %conv7 = trunc i64 %shr6 to i16
  %arrayidx8 = getelementptr inbounds [4 x i16], [4 x i16]* %s, i32 0, i64 2
  store i16 %conv7, i16* %arrayidx8, align 2
  %6 = load i64*, i64** %d.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %6, i64 0
  %7 = load i64, i64* %arrayidx9, align 8
  %shr10 = ashr i64 %7, 48
  %conv11 = trunc i64 %shr10 to i16
  %arrayidx12 = getelementptr inbounds [4 x i16], [4 x i16]* %s, i32 0, i64 3
  store i16 %conv11, i16* %arrayidx12, align 2
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %s, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [6 x i16], [6 x i16]* %e, i32 0, i32 0
  call void @e53toe(i16* %arraydecay, i16* %arraydecay13)
  br label %do.body

do.body:                                          ; preds = %entry
  %8 = bitcast %struct.realvaluetype* %r to i8*
  %9 = bitcast [6 x i16]* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 12, i32 2, i1 false)
  %10 = bitcast %struct.realvaluetype* %r to i8*
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 12
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 12, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %11 = bitcast %struct.realvaluetype* %agg.result to i8*
  %12 = bitcast %struct.realvaluetype* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @significand_size(i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.bb
    i32 64, label %sw.bb.1
    i32 96, label %sw.bb.2
    i32 128, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i32 24, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 53, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 64, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 64, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 6993, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.significand_size, i32 0, i32 0)) #6
  unreachable

return:                                           ; preds = %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal void @mtherr(i8* %name, i32 %code) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %code.addr = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8** %name.addr, align 8
  br label %if.end.34

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #7
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8** %name.addr, align 8
  br label %if.end.33

if.else.4:                                        ; preds = %if.else
  %2 = load i8*, i8** %name.addr, align 8
  %call5 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8** %name.addr, align 8
  br label %if.end.32

if.else.8:                                        ; preds = %if.else.4
  %3 = load i8*, i8** %name.addr, align 8
  %call9 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0)) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8** %name.addr, align 8
  br label %if.end.31

if.else.12:                                       ; preds = %if.else.8
  %4 = load i8*, i8** %name.addr, align 8
  %call13 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.12
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8** %name.addr, align 8
  br label %if.end.30

if.else.16:                                       ; preds = %if.else.12
  %5 = load i8*, i8** %name.addr, align 8
  %call17 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)) #7
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.16
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8** %name.addr, align 8
  br label %if.end.29

if.else.20:                                       ; preds = %if.else.16
  %6 = load i8*, i8** %name.addr, align 8
  %call21 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)) #7
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.20
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8** %name.addr, align 8
  br label %if.end.28

if.else.24:                                       ; preds = %if.else.20
  %7 = load i8*, i8** %name.addr, align 8
  %call25 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #7
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.else.24
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8** %name.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.else.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then.23
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.19
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.15
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.11
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.7
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.3
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then
  %8 = load i32, i32* @extra_warnings, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.35, label %if.end.42

if.then.35:                                       ; preds = %if.end.34
  %9 = load i32, i32* %code.addr, align 4
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.36
    i32 3, label %sw.bb.37
    i32 4, label %sw.bb.38
    i32 5, label %sw.bb.39
    i32 6, label %sw.bb.40
    i32 7, label %sw.bb.41
  ]

sw.bb:                                            ; preds = %if.then.35
  %10 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0), i8* %10)
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.then.35
  %11 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), i8* %11)
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.then.35
  %12 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i8* %12)
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.then.35
  %13 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0), i8* %13)
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.then.35
  %14 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0), i8* %14)
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.then.35
  %15 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0), i8* %15)
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.then.35
  %16 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i8* %16)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.35
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 5819, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__FUNCTION__.mtherr, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.41, %sw.bb.40, %sw.bb.39, %sw.bb.38, %sw.bb.37, %sw.bb.36, %sw.bb
  br label %if.end.42

if.end.42:                                        ; preds = %sw.epilog, %if.end.34
  %17 = load i32, i32* %code.addr, align 4
  %add = add nsw i32 %17, 1
  store i32 %add, i32* @merror, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @enan(i16* %x, i32 %sign) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %sign.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  store i32 %sign, i32* %sign.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %x.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %1, i32 1
  store i16* %incdec.ptr, i16** %x.addr, align 8
  store i16 0, i16* %1, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i16*, i16** %x.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr1, i16** %x.addr, align 8
  store i16 -16384, i16* %3, align 2
  %4 = load i32, i32* %sign.addr, align 4
  %shl = shl i32 %4, 15
  %or = or i32 %shl, 32767
  %conv = trunc i32 %or to i16
  %5 = load i16*, i16** %x.addr, align 8
  store i16 %conv, i16* %5, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eadd1(i16* %a, i16* %b, i16* %c) #0 {
entry:
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %c.addr = alloca i16*, align 8
  %ai = alloca [9 x i16], align 16
  %bi = alloca [9 x i16], align 16
  %ci = alloca [9 x i16], align 16
  %i = alloca i32, align 4
  %lost = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %lt = alloca i32, align 4
  %lta = alloca i32, align 4
  %ltb = alloca i32, align 4
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  store i16* %c, i16** %c.addr, align 8
  %0 = load i16*, i16** %a.addr, align 8
  %call = call i32 @eisinf(i16* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i16*, i16** %a.addr, align 8
  %2 = load i16*, i16** %c.addr, align 8
  call void @emov(i16* %1, i16* %2)
  %3 = load i32, i32* @subflg, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load i16*, i16** %c.addr, align 8
  call void @eneg(i16* %4)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %return

if.end.3:                                         ; preds = %entry
  %5 = load i16*, i16** %b.addr, align 8
  %call4 = call i32 @eisinf(i16* %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %6 = load i16*, i16** %b.addr, align 8
  %7 = load i16*, i16** %c.addr, align 8
  call void @emov(i16* %6, i16* %7)
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %8 = load i16*, i16** %a.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  call void @emovi(i16* %8, i16* %arraydecay)
  %9 = load i16*, i16** %b.addr, align 8
  %arraydecay8 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  call void @emovi(i16* %9, i16* %arraydecay8)
  %10 = load i32, i32* @subflg, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.7
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i64 0
  %11 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %11 to i32
  %neg = xor i32 %conv, -1
  %conv11 = trunc i32 %neg to i16
  %arrayidx12 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i64 0
  store i16 %conv11, i16* %arrayidx12, align 2
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.7
  %arrayidx14 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i64 1
  %12 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %12 to i32
  store i32 %conv15, i32* %lta, align 4
  %arrayidx16 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 1
  %13 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %13 to i32
  store i32 %conv17, i32* %ltb, align 4
  %14 = load i32, i32* %lta, align 4
  %15 = load i32, i32* %ltb, align 4
  %sub = sub nsw i32 %14, %15
  store i32 %sub, i32* %lt, align 4
  %16 = load i32, i32* %lt, align 4
  %conv18 = sext i32 %16 to i64
  %cmp = icmp sgt i64 %conv18, 0
  br i1 %cmp, label %if.then.20, label %if.end.30

if.then.20:                                       ; preds = %if.end.13
  %arraydecay21 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [9 x i16], [9 x i16]* %ci, i32 0, i32 0
  call void @emovz(i16* %arraydecay21, i16* %arraydecay22)
  %arraydecay23 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  call void @emovz(i16* %arraydecay23, i16* %arraydecay24)
  %arraydecay25 = getelementptr inbounds [9 x i16], [9 x i16]* %ci, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  call void @emovz(i16* %arraydecay25, i16* %arraydecay26)
  %arrayidx27 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 1
  %17 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %17 to i32
  store i32 %conv28, i32* %ltb, align 4
  %18 = load i32, i32* %lt, align 4
  %sub29 = sub nsw i32 0, %18
  store i32 %sub29, i32* %lt, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.20, %if.end.13
  store i32 0, i32* %lost, align 4
  %19 = load i32, i32* %lt, align 4
  %conv31 = sext i32 %19 to i64
  %cmp32 = icmp ne i64 %conv31, 0
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.end.30
  %20 = load i32, i32* %lt, align 4
  %cmp35 = icmp slt i32 %20, -81
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.34
  br label %done

if.end.38:                                        ; preds = %if.then.34
  %21 = load i32, i32* %lt, align 4
  store i32 %21, i32* %k, align 4
  %arraydecay39 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  %22 = load i32, i32* %k, align 4
  %call40 = call i32 @eshift(i16* %arraydecay39, i32 %22)
  store i32 %call40, i32* %lost, align 4
  br label %if.end.97

if.else:                                          ; preds = %if.end.30
  %arraydecay41 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  %arraydecay42 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  %call43 = call i32 @ecmpm(i16* %arraydecay41, i16* %arraydecay42)
  store i32 %call43, i32* %i, align 4
  %23 = load i32, i32* %i, align 4
  %cmp44 = icmp eq i32 %23, 0
  br i1 %cmp44, label %if.then.46, label %if.end.86

if.then.46:                                       ; preds = %if.else
  %arrayidx47 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i64 0
  %24 = load i16, i16* %arrayidx47, align 2
  %conv48 = zext i16 %24 to i32
  %arrayidx49 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 0
  %25 = load i16, i16* %arrayidx49, align 2
  %conv50 = zext i16 %25 to i32
  %cmp51 = icmp ne i32 %conv48, %conv50
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.46
  %26 = load i16*, i16** %c.addr, align 8
  call void @eclear(i16* %26)
  br label %return

if.end.54:                                        ; preds = %if.then.46
  %arrayidx55 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 1
  %27 = load i16, i16* %arrayidx55, align 2
  %conv56 = zext i16 %27 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %land.lhs.true, label %if.end.65

land.lhs.true:                                    ; preds = %if.end.54
  %arrayidx59 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 3
  %28 = load i16, i16* %arrayidx59, align 2
  %conv60 = zext i16 %28 to i32
  %and = and i32 %conv60, 32768
  %cmp61 = icmp eq i32 %and, 0
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %land.lhs.true
  %arraydecay64 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  call void @eshup1(i16* %arraydecay64)
  br label %done

if.end.65:                                        ; preds = %land.lhs.true, %if.end.54
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.65
  %29 = load i32, i32* %j, align 4
  %cmp66 = icmp slt i32 %29, 8
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %j, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx68 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 %idxprom
  %31 = load i16, i16* %arrayidx68, align 2
  %conv69 = zext i16 %31 to i32
  %cmp70 = icmp ne i32 %conv69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.83

if.then.72:                                       ; preds = %for.body
  %32 = load i32, i32* %ltb, align 4
  %add = add nsw i32 %32, 1
  store i32 %add, i32* %ltb, align 4
  %33 = load i32, i32* %ltb, align 4
  %cmp73 = icmp sge i32 %33, 32767
  br i1 %cmp73, label %if.then.75, label %if.end.82

if.then.75:                                       ; preds = %if.then.72
  %34 = load i16*, i16** %c.addr, align 8
  call void @eclear(i16* %34)
  %arrayidx76 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i64 0
  %35 = load i16, i16* %arrayidx76, align 2
  %conv77 = zext i16 %35 to i32
  %cmp78 = icmp ne i32 %conv77, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.75
  %36 = load i16*, i16** %c.addr, align 8
  call void @eneg(i16* %36)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.then.75
  %37 = load i16*, i16** %c.addr, align 8
  call void @einfin(i16* %37)
  br label %return

if.end.82:                                        ; preds = %if.then.72
  br label %for.end

if.end.83:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.83
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.82, %for.cond
  %39 = load i32, i32* %ltb, align 4
  %conv84 = trunc i32 %39 to i16
  %arrayidx85 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 1
  store i16 %conv84, i16* %arrayidx85, align 2
  br label %done

if.end.86:                                        ; preds = %if.else
  %40 = load i32, i32* %i, align 4
  %cmp87 = icmp sgt i32 %40, 0
  br i1 %cmp87, label %if.then.89, label %if.end.96

if.then.89:                                       ; preds = %if.end.86
  %arraydecay90 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  %arraydecay91 = getelementptr inbounds [9 x i16], [9 x i16]* %ci, i32 0, i32 0
  call void @emovz(i16* %arraydecay90, i16* %arraydecay91)
  %arraydecay92 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  %arraydecay93 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  call void @emovz(i16* %arraydecay92, i16* %arraydecay93)
  %arraydecay94 = getelementptr inbounds [9 x i16], [9 x i16]* %ci, i32 0, i32 0
  %arraydecay95 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  call void @emovz(i16* %arraydecay94, i16* %arraydecay95)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.89, %if.end.86
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.38
  %arrayidx98 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i64 0
  %41 = load i16, i16* %arrayidx98, align 2
  %conv99 = zext i16 %41 to i32
  %arrayidx100 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i64 0
  %42 = load i16, i16* %arrayidx100, align 2
  %conv101 = zext i16 %42 to i32
  %cmp102 = icmp eq i32 %conv99, %conv101
  br i1 %cmp102, label %if.then.104, label %if.else.107

if.then.104:                                      ; preds = %if.end.97
  %arraydecay105 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  %arraydecay106 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  call void @eaddm(i16* %arraydecay105, i16* %arraydecay106)
  store i32 0, i32* @subflg, align 4
  br label %if.end.110

if.else.107:                                      ; preds = %if.end.97
  %arraydecay108 = getelementptr inbounds [9 x i16], [9 x i16]* %ai, i32 0, i32 0
  %arraydecay109 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  call void @esubm(i16* %arraydecay108, i16* %arraydecay109)
  store i32 1, i32* @subflg, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.104
  %arraydecay111 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  %43 = load i32, i32* %lost, align 4
  %44 = load i32, i32* @subflg, align 4
  %45 = load i32, i32* %ltb, align 4
  call void @emdnorm(i16* %arraydecay111, i32 %43, i32 %44, i32 %45, i32 64)
  br label %done

done:                                             ; preds = %if.end.110, %for.end, %if.then.63, %if.then.37
  %arraydecay112 = getelementptr inbounds [9 x i16], [9 x i16]* %bi, i32 0, i32 0
  %46 = load i16*, i16** %c.addr, align 8
  call void @emovo(i16* %arraydecay112, i16* %46)
  br label %return

return:                                           ; preds = %done, %if.end.81, %if.then.53, %if.then.6, %if.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @emovi(i16* %a, i16* %b) #0 {
entry:
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %p = alloca i16*, align 8
  %q = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  %0 = load i16*, i16** %b.addr, align 8
  store i16* %0, i16** %q, align 8
  %1 = load i16*, i16** %a.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %1, i64 5
  store i16* %add.ptr, i16** %p, align 8
  %2 = load i16*, i16** %p, align 8
  %3 = load i16, i16* %2, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i16*, i16** %q, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %4, i32 1
  store i16* %incdec.ptr, i16** %q, align 8
  store i16 -1, i16* %4, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i16*, i16** %q, align 8
  %incdec.ptr1 = getelementptr inbounds i16, i16* %5, i32 1
  store i16* %incdec.ptr1, i16** %q, align 8
  store i16 0, i16* %5, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i16*, i16** %p, align 8
  %incdec.ptr2 = getelementptr inbounds i16, i16* %6, i32 -1
  store i16* %incdec.ptr2, i16** %p, align 8
  %7 = load i16, i16* %6, align 2
  %8 = load i16*, i16** %q, align 8
  store i16 %7, i16* %8, align 2
  %9 = load i16*, i16** %q, align 8
  %incdec.ptr3 = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr3, i16** %q, align 8
  %10 = load i16, i16* %9, align 2
  %conv4 = zext i16 %10 to i32
  %and5 = and i32 %conv4, 32767
  %conv6 = trunc i32 %and5 to i16
  store i16 %conv6, i16* %9, align 2
  %11 = load i16*, i16** %q, align 8
  %add.ptr7 = getelementptr inbounds i16, i16* %11, i64 -1
  %12 = load i16, i16* %add.ptr7, align 2
  %conv8 = zext i16 %12 to i32
  %and9 = and i32 %conv8, 32767
  %cmp = icmp eq i32 %and9, 32767
  br i1 %cmp, label %if.then.11, label %if.end.28

if.then.11:                                       ; preds = %if.end
  %13 = load i16*, i16** %a.addr, align 8
  %call = call i32 @eisnan(i16* %13)
  %tobool12 = icmp ne i32 %call, 0
  br i1 %tobool12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.then.11
  %14 = load i16*, i16** %q, align 8
  %incdec.ptr14 = getelementptr inbounds i16, i16* %14, i32 1
  store i16* %incdec.ptr14, i16** %q, align 8
  store i16 0, i16* %14, align 2
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %15 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %15, 9
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i16*, i16** %p, align 8
  %incdec.ptr17 = getelementptr inbounds i16, i16* %16, i32 -1
  store i16* %incdec.ptr17, i16** %p, align 8
  %17 = load i16, i16* %16, align 2
  %18 = load i16*, i16** %q, align 8
  %incdec.ptr18 = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %incdec.ptr18, i16** %q, align 8
  store i16 %17, i16* %18, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %return

if.end.19:                                        ; preds = %if.then.11
  store i32 2, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.25, %if.end.19
  %20 = load i32, i32* %i, align 4
  %cmp21 = icmp slt i32 %20, 9
  br i1 %cmp21, label %for.body.23, label %for.end.27

for.body.23:                                      ; preds = %for.cond.20
  %21 = load i16*, i16** %q, align 8
  %incdec.ptr24 = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %incdec.ptr24, i16** %q, align 8
  store i16 0, i16* %21, align 2
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.23
  %22 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %22, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.20

for.end.27:                                       ; preds = %for.cond.20
  br label %return

if.end.28:                                        ; preds = %if.end
  %23 = load i16*, i16** %q, align 8
  %incdec.ptr29 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %incdec.ptr29, i16** %q, align 8
  store i16 0, i16* %23, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.36, %if.end.28
  %24 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %24, 5
  br i1 %cmp31, label %for.body.33, label %for.end.38

for.body.33:                                      ; preds = %for.cond.30
  %25 = load i16*, i16** %p, align 8
  %incdec.ptr34 = getelementptr inbounds i16, i16* %25, i32 -1
  store i16* %incdec.ptr34, i16** %p, align 8
  %26 = load i16, i16* %25, align 2
  %27 = load i16*, i16** %q, align 8
  %incdec.ptr35 = getelementptr inbounds i16, i16* %27, i32 1
  store i16* %incdec.ptr35, i16** %q, align 8
  store i16 %26, i16* %27, align 2
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.33
  %28 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %28, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.30

for.end.38:                                       ; preds = %for.cond.30
  %29 = load i16*, i16** %q, align 8
  store i16 0, i16* %29, align 2
  br label %return

return:                                           ; preds = %for.end.38, %for.end.27, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emovz(i16* %a, i16* %b) #0 {
entry:
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %a.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %1, i32 1
  store i16* %incdec.ptr, i16** %a.addr, align 8
  %2 = load i16, i16* %1, align 2
  %3 = load i16*, i16** %b.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr1, i16** %b.addr, align 8
  store i16 %2, i16* %3, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i16*, i16** %b.addr, align 8
  store i16 0, i16* %5, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @eshift(i16* %x, i32 %sc) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i16*, align 8
  %sc.addr = alloca i32, align 4
  %lost = alloca i16, align 2
  %p = alloca i16*, align 8
  store i16* %x, i16** %x.addr, align 8
  store i32 %sc, i32* %sc.addr, align 4
  %0 = load i32, i32* %sc.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i16 0, i16* %lost, align 2
  %1 = load i16*, i16** %x.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %1, i64 9
  %add.ptr1 = getelementptr inbounds i16, i16* %add.ptr, i64 -1
  store i16* %add.ptr1, i16** %p, align 8
  %2 = load i32, i32* %sc.addr, align 4
  %cmp2 = icmp slt i32 %2, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %3 = load i32, i32* %sc.addr, align 4
  %sub = sub nsw i32 0, %3
  store i32 %sub, i32* %sc.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.3
  %4 = load i32, i32* %sc.addr, align 4
  %cmp4 = icmp sge i32 %4, 16
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i16*, i16** %p, align 8
  %6 = load i16, i16* %5, align 2
  %conv = zext i16 %6 to i32
  %7 = load i16, i16* %lost, align 2
  %conv5 = zext i16 %7 to i32
  %or = or i32 %conv5, %conv
  %conv6 = trunc i32 %or to i16
  store i16 %conv6, i16* %lost, align 2
  %8 = load i16*, i16** %x.addr, align 8
  call void @eshdn6(i16* %8)
  %9 = load i32, i32* %sc.addr, align 4
  %sub7 = sub nsw i32 %9, 16
  store i32 %sub7, i32* %sc.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.11, %while.end
  %10 = load i32, i32* %sc.addr, align 4
  %cmp9 = icmp sge i32 %10, 8
  br i1 %cmp9, label %while.body.11, label %while.end.17

while.body.11:                                    ; preds = %while.cond.8
  %11 = load i16*, i16** %p, align 8
  %12 = load i16, i16* %11, align 2
  %conv12 = zext i16 %12 to i32
  %and = and i32 %conv12, 255
  %13 = load i16, i16* %lost, align 2
  %conv13 = zext i16 %13 to i32
  %or14 = or i32 %conv13, %and
  %conv15 = trunc i32 %or14 to i16
  store i16 %conv15, i16* %lost, align 2
  %14 = load i16*, i16** %x.addr, align 8
  call void @eshdn8(i16* %14)
  %15 = load i32, i32* %sc.addr, align 4
  %sub16 = sub nsw i32 %15, 8
  store i32 %sub16, i32* %sc.addr, align 4
  br label %while.cond.8

while.end.17:                                     ; preds = %while.cond.8
  br label %while.cond.18

while.cond.18:                                    ; preds = %while.body.21, %while.end.17
  %16 = load i32, i32* %sc.addr, align 4
  %cmp19 = icmp sgt i32 %16, 0
  br i1 %cmp19, label %while.body.21, label %while.end.28

while.body.21:                                    ; preds = %while.cond.18
  %17 = load i16*, i16** %p, align 8
  %18 = load i16, i16* %17, align 2
  %conv22 = zext i16 %18 to i32
  %and23 = and i32 %conv22, 1
  %19 = load i16, i16* %lost, align 2
  %conv24 = zext i16 %19 to i32
  %or25 = or i32 %conv24, %and23
  %conv26 = trunc i32 %or25 to i16
  store i16 %conv26, i16* %lost, align 2
  %20 = load i16*, i16** %x.addr, align 8
  call void @eshdn1(i16* %20)
  %21 = load i32, i32* %sc.addr, align 4
  %sub27 = sub nsw i32 %21, 1
  store i32 %sub27, i32* %sc.addr, align 4
  br label %while.cond.18

while.end.28:                                     ; preds = %while.cond.18
  br label %if.end.47

if.else:                                          ; preds = %if.end
  br label %while.cond.29

while.cond.29:                                    ; preds = %while.body.32, %if.else
  %22 = load i32, i32* %sc.addr, align 4
  %cmp30 = icmp sge i32 %22, 16
  br i1 %cmp30, label %while.body.32, label %while.end.34

while.body.32:                                    ; preds = %while.cond.29
  %23 = load i16*, i16** %x.addr, align 8
  call void @eshup6(i16* %23)
  %24 = load i32, i32* %sc.addr, align 4
  %sub33 = sub nsw i32 %24, 16
  store i32 %sub33, i32* %sc.addr, align 4
  br label %while.cond.29

while.end.34:                                     ; preds = %while.cond.29
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.38, %while.end.34
  %25 = load i32, i32* %sc.addr, align 4
  %cmp36 = icmp sge i32 %25, 8
  br i1 %cmp36, label %while.body.38, label %while.end.40

while.body.38:                                    ; preds = %while.cond.35
  %26 = load i16*, i16** %x.addr, align 8
  call void @eshup8(i16* %26)
  %27 = load i32, i32* %sc.addr, align 4
  %sub39 = sub nsw i32 %27, 8
  store i32 %sub39, i32* %sc.addr, align 4
  br label %while.cond.35

while.end.40:                                     ; preds = %while.cond.35
  br label %while.cond.41

while.cond.41:                                    ; preds = %while.body.44, %while.end.40
  %28 = load i32, i32* %sc.addr, align 4
  %cmp42 = icmp sgt i32 %28, 0
  br i1 %cmp42, label %while.body.44, label %while.end.46

while.body.44:                                    ; preds = %while.cond.41
  %29 = load i16*, i16** %x.addr, align 8
  call void @eshup1(i16* %29)
  %30 = load i32, i32* %sc.addr, align 4
  %sub45 = sub nsw i32 %30, 1
  store i32 %sub45, i32* %sc.addr, align 4
  br label %while.cond.41

while.end.46:                                     ; preds = %while.cond.41
  br label %if.end.47

if.end.47:                                        ; preds = %while.end.46, %while.end.28
  %31 = load i16, i16* %lost, align 2
  %tobool = icmp ne i16 %31, 0
  br i1 %tobool, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.47
  store i16 1, i16* %lost, align 2
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.47
  %32 = load i16, i16* %lost, align 2
  %conv50 = zext i16 %32 to i32
  store i32 %conv50, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @ecmpm(i16* %a, i16* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  %0 = load i16*, i16** %a.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 2
  store i16* %add.ptr, i16** %a.addr, align 8
  %1 = load i16*, i16** %b.addr, align 8
  %add.ptr1 = getelementptr inbounds i16, i16* %1, i64 2
  store i16* %add.ptr1, i16** %b.addr, align 8
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %a.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr, i16** %a.addr, align 8
  %4 = load i16, i16* %3, align 2
  %conv = zext i16 %4 to i32
  %5 = load i16*, i16** %b.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i16, i16* %5, i32 1
  store i16* %incdec.ptr2, i16** %b.addr, align 8
  %6 = load i16, i16* %5, align 2
  %conv3 = zext i16 %6 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %difrnt

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

difrnt:                                           ; preds = %if.then
  %8 = load i16*, i16** %a.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i16, i16* %8, i32 -1
  store i16* %incdec.ptr6, i16** %a.addr, align 8
  %9 = load i16, i16* %incdec.ptr6, align 2
  %conv7 = zext i16 %9 to i32
  %10 = load i16*, i16** %b.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i16, i16* %10, i32 -1
  store i16* %incdec.ptr8, i16** %b.addr, align 8
  %11 = load i16, i16* %incdec.ptr8, align 2
  %conv9 = zext i16 %11 to i32
  %cmp10 = icmp sgt i32 %conv7, %conv9
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %difrnt
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %difrnt
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.12, %for.end
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @eshup1(i16* %x) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %bits = alloca i16, align 2
  %i = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 8
  store i16* %add.ptr, i16** %x.addr, align 8
  store i16 0, i16* %bits, align 2
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %x.addr, align 8
  %3 = load i16, i16* %2, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i16, i16* %bits, align 2
  %conv1 = zext i16 %4 to i32
  %or = or i32 %conv1, 1
  %conv2 = trunc i32 %or to i16
  store i16 %conv2, i16* %bits, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load i16*, i16** %x.addr, align 8
  %6 = load i16, i16* %5, align 2
  %conv3 = zext i16 %6 to i32
  %shl = shl i32 %conv3, 1
  %conv4 = trunc i32 %shl to i16
  store i16 %conv4, i16* %5, align 2
  %7 = load i16, i16* %bits, align 2
  %conv5 = zext i16 %7 to i32
  %and6 = and i32 %conv5, 2
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %8 = load i16*, i16** %x.addr, align 8
  %9 = load i16, i16* %8, align 2
  %conv9 = zext i16 %9 to i32
  %or10 = or i32 %conv9, 1
  %conv11 = trunc i32 %or10 to i16
  store i16 %conv11, i16* %8, align 2
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %10 = load i16, i16* %bits, align 2
  %conv13 = zext i16 %10 to i32
  %shl14 = shl i32 %conv13, 1
  %conv15 = trunc i32 %shl14 to i16
  store i16 %conv15, i16* %bits, align 2
  %11 = load i16*, i16** %x.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %11, i32 -1
  store i16* %incdec.ptr, i16** %x.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @einfin(i16* %x) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %x.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %1, i32 1
  store i16* %incdec.ptr, i16** %x.addr, align 8
  store i16 0, i16* %1, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i16*, i16** %x.addr, align 8
  %4 = load i16, i16* %3, align 2
  %conv = zext i16 %4 to i32
  %or = or i32 %conv, 32767
  %conv1 = trunc i32 %or to i16
  store i16 %conv1, i16* %3, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eaddm(i16* %x, i16* %y) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %y.addr = alloca i16*, align 8
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  %carry = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 8
  store i16* %add.ptr, i16** %x.addr, align 8
  %1 = load i16*, i16** %y.addr, align 8
  %add.ptr1 = getelementptr inbounds i16, i16* %1, i64 8
  store i16* %add.ptr1, i16** %y.addr, align 8
  store i32 0, i32* %carry, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %x.addr, align 8
  %4 = load i16, i16* %3, align 2
  %conv = zext i16 %4 to i32
  %5 = load i16*, i16** %y.addr, align 8
  %6 = load i16, i16* %5, align 2
  %conv2 = zext i16 %6 to i32
  %add = add i32 %conv, %conv2
  %7 = load i32, i32* %carry, align 4
  %add3 = add i32 %add, %7
  store i32 %add3, i32* %a, align 4
  %8 = load i32, i32* %a, align 4
  %and = and i32 %8, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 1, i32* %carry, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 0, i32* %carry, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %a, align 4
  %conv4 = trunc i32 %9 to i16
  %10 = load i16*, i16** %y.addr, align 8
  store i16 %conv4, i16* %10, align 2
  %11 = load i16*, i16** %x.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %11, i32 -1
  store i16* %incdec.ptr, i16** %x.addr, align 8
  %12 = load i16*, i16** %y.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i16, i16* %12, i32 -1
  store i16* %incdec.ptr5, i16** %y.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @esubm(i16* %x, i16* %y) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %y.addr = alloca i16*, align 8
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  %carry = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 8
  store i16* %add.ptr, i16** %x.addr, align 8
  %1 = load i16*, i16** %y.addr, align 8
  %add.ptr1 = getelementptr inbounds i16, i16* %1, i64 8
  store i16* %add.ptr1, i16** %y.addr, align 8
  store i32 0, i32* %carry, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %y.addr, align 8
  %4 = load i16, i16* %3, align 2
  %conv = zext i16 %4 to i32
  %5 = load i16*, i16** %x.addr, align 8
  %6 = load i16, i16* %5, align 2
  %conv2 = zext i16 %6 to i32
  %sub = sub i32 %conv, %conv2
  %7 = load i32, i32* %carry, align 4
  %sub3 = sub i32 %sub, %7
  store i32 %sub3, i32* %a, align 4
  %8 = load i32, i32* %a, align 4
  %and = and i32 %8, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 1, i32* %carry, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 0, i32* %carry, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %a, align 4
  %conv4 = trunc i32 %9 to i16
  %10 = load i16*, i16** %y.addr, align 8
  store i16 %conv4, i16* %10, align 2
  %11 = load i16*, i16** %x.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %11, i32 -1
  store i16* %incdec.ptr, i16** %x.addr, align 8
  %12 = load i16*, i16** %y.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i16, i16* %12, i32 -1
  store i16* %incdec.ptr5, i16** %y.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emdnorm(i16* %s, i32 %lost, i32 %subflg, i32 %exp, i32 %rcntrl) #0 {
entry:
  %s.addr = alloca i16*, align 8
  %lost.addr = alloca i32, align 4
  %subflg.addr = alloca i32, align 4
  %exp.addr = alloca i32, align 4
  %rcntrl.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i16, align 2
  store i16* %s, i16** %s.addr, align 8
  store i32 %lost, i32* %lost.addr, align 4
  store i32 %subflg, i32* %subflg.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  store i32 %rcntrl, i32* %rcntrl.addr, align 4
  %0 = load i16*, i16** %s.addr, align 8
  %call = call i32 @enormlz(i16* %0)
  store i32 %call, i32* %j, align 4
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %exp.addr, align 4
  %sub = sub nsw i32 %2, %1
  store i32 %sub, i32* %exp.addr, align 4
  %3 = load i32, i32* %j, align 4
  %cmp = icmp sgt i32 %3, 80
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %exp.addr, align 4
  %cmp1 = icmp slt i32 %4, 32767
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i16*, i16** %s.addr, align 8
  call void @ecleazs(i16* %5)
  br label %if.end.145

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i32, i32* %exp.addr, align 4
  %conv = sext i32 %6 to i64
  %cmp2 = icmp slt i64 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* %exp.addr, align 4
  %cmp5 = icmp sgt i32 %7, -81
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.4
  %8 = load i32, i32* %exp.addr, align 4
  store i32 %8, i32* %j, align 4
  %9 = load i16*, i16** %s.addr, align 8
  %10 = load i32, i32* %j, align 4
  %call8 = call i32 @eshift(i16* %9, i32 %10)
  store i32 %call8, i32* %i, align 4
  %11 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.7
  store i32 1, i32* %lost.addr, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.7
  br label %if.end.11

if.else:                                          ; preds = %if.then.4
  %12 = load i16*, i16** %s.addr, align 8
  call void @ecleazs(i16* %12)
  br label %if.end.145

if.end.11:                                        ; preds = %if.end.10
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %13 = load i32, i32* %rcntrl.addr, align 4
  %cmp13 = icmp eq i32 %13, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %mdfin

if.end.16:                                        ; preds = %if.end.12
  %14 = load i32, i32* @rndprc, align 4
  %15 = load i32, i32* @rlast, align 4
  %cmp17 = icmp ne i32 %14, %15
  br i1 %cmp17, label %if.then.19, label %if.end.29

if.then.19:                                       ; preds = %if.end.16
  call void @ecleaz(i16* getelementptr inbounds ([9 x i16], [9 x i16]* @rbit, i32 0, i32 0))
  %16 = load i32, i32* @rndprc, align 4
  switch i32 %16, label %sw.default [
    i32 80, label %sw.bb
    i32 113, label %sw.bb.21
    i32 64, label %sw.bb.22
    i32 56, label %sw.bb.24
    i32 53, label %sw.bb.25
    i32 32, label %sw.bb.26
    i32 24, label %sw.bb.28
  ]

sw.default:                                       ; preds = %if.then.19
  br label %sw.bb

sw.bb:                                            ; preds = %if.then.19, %sw.default
  store i32 8, i32* @rw, align 4
  store i16 -1, i16* @rmsk, align 2
  store i16 -32768, i16* @rmbit, align 2
  %17 = load i32, i32* @rw, align 4
  %sub20 = sub nsw i32 %17, 1
  store i32 %sub20, i32* @re, align 4
  store i16 1, i16* @rebit, align 2
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.then.19
  store i32 10, i32* @rw, align 4
  store i16 32767, i16* @rmsk, align 2
  store i16 16384, i16* @rmbit, align 2
  store i16 -32768, i16* @rebit, align 2
  %18 = load i32, i32* @rw, align 4
  store i32 %18, i32* @re, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.then.19
  store i32 7, i32* @rw, align 4
  store i16 -1, i16* @rmsk, align 2
  store i16 -32768, i16* @rmbit, align 2
  %19 = load i32, i32* @rw, align 4
  %sub23 = sub nsw i32 %19, 1
  store i32 %sub23, i32* @re, align 4
  store i16 1, i16* @rebit, align 2
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.then.19
  store i32 6, i32* @rw, align 4
  store i16 255, i16* @rmsk, align 2
  store i16 128, i16* @rmbit, align 2
  store i16 256, i16* @rebit, align 2
  %20 = load i32, i32* @rw, align 4
  store i32 %20, i32* @re, align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.then.19
  store i32 6, i32* @rw, align 4
  store i16 2047, i16* @rmsk, align 2
  store i16 1024, i16* @rmbit, align 2
  store i16 2048, i16* @rebit, align 2
  %21 = load i32, i32* @rw, align 4
  store i32 %21, i32* @re, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.then.19
  store i32 5, i32* @rw, align 4
  store i16 -1, i16* @rmsk, align 2
  store i16 -32768, i16* @rmbit, align 2
  store i16 1, i16* @rebit, align 2
  %22 = load i32, i32* @rw, align 4
  %sub27 = sub nsw i32 %22, 1
  store i32 %sub27, i32* @re, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.then.19
  store i32 4, i32* @rw, align 4
  store i16 255, i16* @rmsk, align 2
  store i16 128, i16* @rmbit, align 2
  store i16 256, i16* @rebit, align 2
  %23 = load i32, i32* @rw, align 4
  store i32 %23, i32* @re, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.28, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.22, %sw.bb.21, %sw.bb
  %24 = load i16, i16* @rebit, align 2
  %25 = load i32, i32* @re, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* @rbit, i32 0, i64 %idxprom
  store i16 %24, i16* %arrayidx, align 2
  %26 = load i32, i32* @rndprc, align 4
  store i32 %26, i32* @rlast, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %sw.epilog, %if.end.16
  %27 = load i32, i32* %exp.addr, align 4
  %cmp30 = icmp sle i32 %27, 0
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.43

land.lhs.true.32:                                 ; preds = %if.end.29
  %28 = load i32, i32* @rndprc, align 4
  %cmp33 = icmp ne i32 %28, 80
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.43

land.lhs.true.35:                                 ; preds = %land.lhs.true.32
  %29 = load i32, i32* @rndprc, align 4
  %cmp36 = icmp ne i32 %29, 64
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.35
  %30 = load i32, i32* @rndprc, align 4
  %cmp38 = icmp eq i32 %30, 64
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %lor.lhs.false, %land.lhs.true.35
  %31 = load i16*, i16** %s.addr, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %31, i64 8
  %32 = load i16, i16* %arrayidx41, align 2
  %conv42 = zext i16 %32 to i32
  %and = and i32 %conv42, 1
  %33 = load i32, i32* %lost.addr, align 4
  %or = or i32 %33, %and
  store i32 %or, i32* %lost.addr, align 4
  %34 = load i16*, i16** %s.addr, align 8
  call void @eshdn1(i16* %34)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %lor.lhs.false, %land.lhs.true.32, %if.end.29
  %35 = load i32, i32* @rw, align 4
  %idxprom44 = sext i32 %35 to i64
  %36 = load i16*, i16** %s.addr, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %36, i64 %idxprom44
  %37 = load i16, i16* %arrayidx45, align 2
  %conv46 = zext i16 %37 to i32
  %38 = load i16, i16* @rmsk, align 2
  %conv47 = zext i16 %38 to i32
  %and48 = and i32 %conv46, %conv47
  %conv49 = trunc i32 %and48 to i16
  store i16 %conv49, i16* %r, align 2
  %39 = load i32, i32* @rndprc, align 4
  %cmp50 = icmp slt i32 %39, 80
  br i1 %cmp50, label %if.then.52, label %if.end.65

if.then.52:                                       ; preds = %if.end.43
  %40 = load i32, i32* @rw, align 4
  %add = add nsw i32 %40, 1
  store i32 %add, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %if.then.52
  %41 = load i32, i32* %i, align 4
  %cmp53 = icmp slt i32 %41, 9
  br i1 %cmp53, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %42 to i64
  %43 = load i16*, i16** %s.addr, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %43, i64 %idxprom55
  %44 = load i16, i16* %arrayidx56, align 2
  %tobool57 = icmp ne i16 %44, 0
  br i1 %tobool57, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %while.body
  %45 = load i16, i16* %r, align 2
  %conv59 = zext i16 %45 to i32
  %or60 = or i32 %conv59, 1
  %conv61 = trunc i32 %or60 to i16
  store i16 %conv61, i16* %r, align 2
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %while.body
  %46 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %46 to i64
  %47 = load i16*, i16** %s.addr, align 8
  %arrayidx64 = getelementptr inbounds i16, i16* %47, i64 %idxprom63
  store i16 0, i16* %arrayidx64, align 2
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.65

if.end.65:                                        ; preds = %while.end, %if.end.43
  %49 = load i16, i16* @rmsk, align 2
  %conv66 = zext i16 %49 to i32
  %neg = xor i32 %conv66, -1
  %50 = load i32, i32* @rw, align 4
  %idxprom67 = sext i32 %50 to i64
  %51 = load i16*, i16** %s.addr, align 8
  %arrayidx68 = getelementptr inbounds i16, i16* %51, i64 %idxprom67
  %52 = load i16, i16* %arrayidx68, align 2
  %conv69 = zext i16 %52 to i32
  %and70 = and i32 %conv69, %neg
  %conv71 = trunc i32 %and70 to i16
  store i16 %conv71, i16* %arrayidx68, align 2
  %53 = load i16, i16* %r, align 2
  %conv72 = zext i16 %53 to i32
  %54 = load i16, i16* @rmbit, align 2
  %conv73 = zext i16 %54 to i32
  %and74 = and i32 %conv72, %conv73
  %cmp75 = icmp ne i32 %and74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.102

if.then.77:                                       ; preds = %if.end.65
  %55 = load i16, i16* %r, align 2
  %conv78 = zext i16 %55 to i32
  %56 = load i16, i16* @rmbit, align 2
  %conv79 = zext i16 %56 to i32
  %cmp80 = icmp eq i32 %conv78, %conv79
  br i1 %cmp80, label %if.then.82, label %if.end.101

if.then.82:                                       ; preds = %if.then.77
  %57 = load i32, i32* %lost.addr, align 4
  %cmp83 = icmp eq i32 %57, 0
  br i1 %cmp83, label %if.then.85, label %if.else.95

if.then.85:                                       ; preds = %if.then.82
  %58 = load i32, i32* @re, align 4
  %idxprom86 = sext i32 %58 to i64
  %59 = load i16*, i16** %s.addr, align 8
  %arrayidx87 = getelementptr inbounds i16, i16* %59, i64 %idxprom86
  %60 = load i16, i16* %arrayidx87, align 2
  %conv88 = zext i16 %60 to i32
  %61 = load i16, i16* @rebit, align 2
  %conv89 = zext i16 %61 to i32
  %and90 = and i32 %conv88, %conv89
  %cmp91 = icmp eq i32 %and90, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.then.85
  br label %mddone

if.end.94:                                        ; preds = %if.then.85
  br label %if.end.100

if.else.95:                                       ; preds = %if.then.82
  %62 = load i32, i32* %subflg.addr, align 4
  %cmp96 = icmp ne i32 %62, 0
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.else.95
  br label %mddone

if.end.99:                                        ; preds = %if.else.95
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.94
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.77
  %63 = load i16*, i16** %s.addr, align 8
  call void @eaddm(i16* getelementptr inbounds ([9 x i16], [9 x i16]* @rbit, i32 0, i32 0), i16* %63)
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.65
  br label %mddone

mddone:                                           ; preds = %if.end.102, %if.then.98, %if.then.93
  %64 = load i32, i32* %exp.addr, align 4
  %cmp103 = icmp sle i32 %64, 0
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.115

land.lhs.true.105:                                ; preds = %mddone
  %65 = load i32, i32* @rndprc, align 4
  %cmp106 = icmp ne i32 %65, 80
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.115

land.lhs.true.108:                                ; preds = %land.lhs.true.105
  %66 = load i32, i32* @rndprc, align 4
  %cmp109 = icmp ne i32 %66, 64
  br i1 %cmp109, label %if.then.114, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %land.lhs.true.108
  %67 = load i32, i32* @rndprc, align 4
  %cmp112 = icmp eq i32 %67, 64
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %lor.lhs.false.111, %land.lhs.true.108
  %68 = load i16*, i16** %s.addr, align 8
  call void @eshup1(i16* %68)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %lor.lhs.false.111, %land.lhs.true.105, %mddone
  %69 = load i16*, i16** %s.addr, align 8
  %arrayidx116 = getelementptr inbounds i16, i16* %69, i64 2
  %70 = load i16, i16* %arrayidx116, align 2
  %conv117 = zext i16 %70 to i32
  %cmp118 = icmp ne i32 %conv117, 0
  br i1 %cmp118, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.end.115
  %71 = load i16*, i16** %s.addr, align 8
  call void @eshdn1(i16* %71)
  %72 = load i32, i32* %exp.addr, align 4
  %add121 = add nsw i32 %72, 1
  store i32 %add121, i32* %exp.addr, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %if.end.115
  br label %mdfin

mdfin:                                            ; preds = %if.end.122, %if.then.15
  %73 = load i16*, i16** %s.addr, align 8
  %arrayidx123 = getelementptr inbounds i16, i16* %73, i64 8
  store i16 0, i16* %arrayidx123, align 2
  %74 = load i32, i32* %exp.addr, align 4
  %conv124 = sext i32 %74 to i64
  %cmp125 = icmp sge i64 %conv124, 32767
  br i1 %cmp125, label %if.then.127, label %if.end.137

if.then.127:                                      ; preds = %mdfin
  %75 = load i16*, i16** %s.addr, align 8
  %arrayidx128 = getelementptr inbounds i16, i16* %75, i64 1
  store i16 32767, i16* %arrayidx128, align 2
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.127
  %76 = load i32, i32* %i, align 4
  %cmp129 = icmp slt i32 %76, 8
  br i1 %cmp129, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %77 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %77 to i64
  %78 = load i16*, i16** %s.addr, align 8
  %arrayidx132 = getelementptr inbounds i16, i16* %78, i64 %idxprom131
  store i16 0, i16* %arrayidx132, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %79 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %79, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load i32, i32* @extra_warnings, align 4
  %tobool134 = icmp ne i32 %80, 0
  br i1 %tobool134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %for.end
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %for.end
  br label %if.end.145

if.end.137:                                       ; preds = %mdfin
  %81 = load i32, i32* %exp.addr, align 4
  %cmp138 = icmp slt i32 %81, 0
  br i1 %cmp138, label %if.then.140, label %if.else.142

if.then.140:                                      ; preds = %if.end.137
  %82 = load i16*, i16** %s.addr, align 8
  %arrayidx141 = getelementptr inbounds i16, i16* %82, i64 1
  store i16 0, i16* %arrayidx141, align 2
  br label %if.end.145

if.else.142:                                      ; preds = %if.end.137
  %83 = load i32, i32* %exp.addr, align 4
  %conv143 = trunc i32 %83 to i16
  %84 = load i16*, i16** %s.addr, align 8
  %arrayidx144 = getelementptr inbounds i16, i16* %84, i64 1
  store i16 %conv143, i16* %arrayidx144, align 2
  br label %if.end.145

if.end.145:                                       ; preds = %if.then, %if.else, %if.end.136, %if.else.142, %if.then.140
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emovo(i16* %a, i16* %b) #0 {
entry:
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %p = alloca i16*, align 8
  %q = alloca i16*, align 8
  %i = alloca i16, align 2
  %j = alloca i32, align 4
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  %0 = load i16*, i16** %a.addr, align 8
  store i16* %0, i16** %p, align 8
  %1 = load i16*, i16** %b.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %1, i64 5
  store i16* %add.ptr, i16** %q, align 8
  %2 = load i16*, i16** %p, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %2, i32 1
  store i16* %incdec.ptr, i16** %p, align 8
  %3 = load i16, i16* %2, align 2
  store i16 %3, i16* %i, align 2
  %4 = load i16, i16* %i, align 2
  %tobool = icmp ne i16 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i16*, i16** %p, align 8
  %incdec.ptr1 = getelementptr inbounds i16, i16* %5, i32 1
  store i16* %incdec.ptr1, i16** %p, align 8
  %6 = load i16, i16* %5, align 2
  %conv = zext i16 %6 to i32
  %or = or i32 %conv, 32768
  %conv2 = trunc i32 %or to i16
  %7 = load i16*, i16** %q, align 8
  %incdec.ptr3 = getelementptr inbounds i16, i16* %7, i32 -1
  store i16* %incdec.ptr3, i16** %q, align 8
  store i16 %conv2, i16* %7, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i16*, i16** %p, align 8
  %incdec.ptr4 = getelementptr inbounds i16, i16* %8, i32 1
  store i16* %incdec.ptr4, i16** %p, align 8
  %9 = load i16, i16* %8, align 2
  %10 = load i16*, i16** %q, align 8
  %incdec.ptr5 = getelementptr inbounds i16, i16* %10, i32 -1
  store i16* %incdec.ptr5, i16** %q, align 8
  store i16 %9, i16* %10, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i16*, i16** %p, align 8
  %add.ptr6 = getelementptr inbounds i16, i16* %11, i64 -1
  %12 = load i16, i16* %add.ptr6, align 2
  %conv7 = zext i16 %12 to i32
  %cmp = icmp eq i32 %conv7, 32767
  br i1 %cmp, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end
  %13 = load i16*, i16** %a.addr, align 8
  %call = call i32 @eiisnan(i16* %13)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.9
  %14 = load i16*, i16** %b.addr, align 8
  %15 = load i16*, i16** %a.addr, align 8
  %call12 = call i32 @eiisneg(i16* %15)
  call void @enan(i16* %14, i32 %call12)
  br label %for.end

if.end.13:                                        ; preds = %if.then.9
  %16 = load i16*, i16** %b.addr, align 8
  call void @einfin(i16* %16)
  br label %for.end

if.end.14:                                        ; preds = %if.end
  %17 = load i16*, i16** %p, align 8
  %incdec.ptr15 = getelementptr inbounds i16, i16* %17, i32 1
  store i16* %incdec.ptr15, i16** %p, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %18 = load i32, i32* %j, align 4
  %cmp16 = icmp slt i32 %18, 5
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i16*, i16** %p, align 8
  %incdec.ptr18 = getelementptr inbounds i16, i16* %19, i32 1
  store i16* %incdec.ptr18, i16** %p, align 8
  %20 = load i16, i16* %19, align 2
  %21 = load i16*, i16** %q, align 8
  %incdec.ptr19 = getelementptr inbounds i16, i16* %21, i32 -1
  store i16* %incdec.ptr19, i16** %q, align 8
  store i16 %20, i16* %21, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.11, %if.end.13, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eshdn6(i16* %x) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %p = alloca i16*, align 8
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 8
  store i16* %add.ptr, i16** %x.addr, align 8
  %1 = load i16*, i16** %x.addr, align 8
  %add.ptr1 = getelementptr inbounds i16, i16* %1, i64 1
  store i16* %add.ptr1, i16** %p, align 8
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %x.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %3, i32 -1
  store i16* %incdec.ptr, i16** %x.addr, align 8
  %4 = load i16, i16* %incdec.ptr, align 2
  %5 = load i16*, i16** %p, align 8
  %incdec.ptr2 = getelementptr inbounds i16, i16* %5, i32 -1
  store i16* %incdec.ptr2, i16** %p, align 8
  store i16 %4, i16* %incdec.ptr2, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i16*, i16** %p, align 8
  %incdec.ptr3 = getelementptr inbounds i16, i16* %7, i32 -1
  store i16* %incdec.ptr3, i16** %p, align 8
  store i16 0, i16* %incdec.ptr3, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eshdn8(i16* %x) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %newbyt = alloca i16, align 2
  %oldbyt = alloca i16, align 2
  %i = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 2
  store i16* %add.ptr, i16** %x.addr, align 8
  store i16 0, i16* %oldbyt, align 2
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %x.addr, align 8
  %3 = load i16, i16* %2, align 2
  %conv = zext i16 %3 to i32
  %shl = shl i32 %conv, 8
  %conv1 = trunc i32 %shl to i16
  store i16 %conv1, i16* %newbyt, align 2
  %4 = load i16*, i16** %x.addr, align 8
  %5 = load i16, i16* %4, align 2
  %conv2 = zext i16 %5 to i32
  %shr = ashr i32 %conv2, 8
  %conv3 = trunc i32 %shr to i16
  store i16 %conv3, i16* %4, align 2
  %6 = load i16, i16* %oldbyt, align 2
  %conv4 = zext i16 %6 to i32
  %7 = load i16*, i16** %x.addr, align 8
  %8 = load i16, i16* %7, align 2
  %conv5 = zext i16 %8 to i32
  %or = or i32 %conv5, %conv4
  %conv6 = trunc i32 %or to i16
  store i16 %conv6, i16* %7, align 2
  %9 = load i16, i16* %newbyt, align 2
  store i16 %9, i16* %oldbyt, align 2
  %10 = load i16*, i16** %x.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %incdec.ptr, i16** %x.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eshdn1(i16* %x) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %bits = alloca i16, align 2
  %i = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 2
  store i16* %add.ptr, i16** %x.addr, align 8
  store i16 0, i16* %bits, align 2
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %x.addr, align 8
  %3 = load i16, i16* %2, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i16, i16* %bits, align 2
  %conv1 = zext i16 %4 to i32
  %or = or i32 %conv1, 1
  %conv2 = trunc i32 %or to i16
  store i16 %conv2, i16* %bits, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load i16*, i16** %x.addr, align 8
  %6 = load i16, i16* %5, align 2
  %conv3 = zext i16 %6 to i32
  %shr = ashr i32 %conv3, 1
  %conv4 = trunc i32 %shr to i16
  store i16 %conv4, i16* %5, align 2
  %7 = load i16, i16* %bits, align 2
  %conv5 = zext i16 %7 to i32
  %and6 = and i32 %conv5, 2
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %8 = load i16*, i16** %x.addr, align 8
  %9 = load i16, i16* %8, align 2
  %conv9 = zext i16 %9 to i32
  %or10 = or i32 %conv9, 32768
  %conv11 = trunc i32 %or10 to i16
  store i16 %conv11, i16* %8, align 2
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %10 = load i16, i16* %bits, align 2
  %conv13 = zext i16 %10 to i32
  %shl = shl i32 %conv13, 1
  %conv14 = trunc i32 %shl to i16
  store i16 %conv14, i16* %bits, align 2
  %11 = load i16*, i16** %x.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %11, i32 1
  store i16* %incdec.ptr, i16** %x.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eshup6(i16* %x) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %p = alloca i16*, align 8
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 2
  store i16* %add.ptr, i16** %p, align 8
  %1 = load i16*, i16** %x.addr, align 8
  %add.ptr1 = getelementptr inbounds i16, i16* %1, i64 3
  store i16* %add.ptr1, i16** %x.addr, align 8
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %x.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr, i16** %x.addr, align 8
  %4 = load i16, i16* %3, align 2
  %5 = load i16*, i16** %p, align 8
  %incdec.ptr2 = getelementptr inbounds i16, i16* %5, i32 1
  store i16* %incdec.ptr2, i16** %p, align 8
  store i16 %4, i16* %5, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i16*, i16** %p, align 8
  store i16 0, i16* %7, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eshup8(i16* %x) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %newbyt = alloca i16, align 2
  %oldbyt = alloca i16, align 2
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 8
  store i16* %add.ptr, i16** %x.addr, align 8
  store i16 0, i16* %oldbyt, align 2
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %x.addr, align 8
  %3 = load i16, i16* %2, align 2
  %conv = zext i16 %3 to i32
  %shr = ashr i32 %conv, 8
  %conv1 = trunc i32 %shr to i16
  store i16 %conv1, i16* %newbyt, align 2
  %4 = load i16*, i16** %x.addr, align 8
  %5 = load i16, i16* %4, align 2
  %conv2 = zext i16 %5 to i32
  %shl = shl i32 %conv2, 8
  %conv3 = trunc i32 %shl to i16
  store i16 %conv3, i16* %4, align 2
  %6 = load i16, i16* %oldbyt, align 2
  %conv4 = zext i16 %6 to i32
  %7 = load i16*, i16** %x.addr, align 8
  %8 = load i16, i16* %7, align 2
  %conv5 = zext i16 %8 to i32
  %or = or i32 %conv5, %conv4
  %conv6 = trunc i32 %or to i16
  store i16 %conv6, i16* %7, align 2
  %9 = load i16, i16* %newbyt, align 2
  store i16 %9, i16* %oldbyt, align 2
  %10 = load i16*, i16** %x.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %10, i32 -1
  store i16* %incdec.ptr, i16** %x.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @enormlz(i16* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i16*, align 8
  %p = alloca i16*, align 8
  %sc = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  store i32 0, i32* %sc, align 4
  %0 = load i16*, i16** %x.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 2
  store i16* %arrayidx, i16** %p, align 8
  %1 = load i16*, i16** %p, align 8
  %2 = load i16, i16* %1, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %normdn

if.end:                                           ; preds = %entry
  %3 = load i16*, i16** %p, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr, i16** %p, align 8
  %4 = load i16*, i16** %p, align 8
  %5 = load i16, i16* %4, align 2
  %conv2 = zext i16 %5 to i32
  %and = and i32 %conv2, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.end.4
  %6 = load i16*, i16** %p, align 8
  %7 = load i16, i16* %6, align 2
  %conv5 = zext i16 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i16*, i16** %x.addr, align 8
  call void @eshup6(i16* %8)
  %9 = load i32, i32* %sc, align 4
  %add = add nsw i32 %9, 16
  store i32 %add, i32* %sc, align 4
  %10 = load i32, i32* %sc, align 4
  %cmp8 = icmp sgt i32 %10, 80
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %while.body
  %11 = load i32, i32* %sc, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.11:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.12

while.cond.12:                                    ; preds = %while.body.17, %while.end
  %12 = load i16*, i16** %p, align 8
  %13 = load i16, i16* %12, align 2
  %conv13 = zext i16 %13 to i32
  %and14 = and i32 %conv13, 65280
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %while.body.17, label %while.end.19

while.body.17:                                    ; preds = %while.cond.12
  %14 = load i16*, i16** %x.addr, align 8
  call void @eshup8(i16* %14)
  %15 = load i32, i32* %sc, align 4
  %add18 = add nsw i32 %15, 8
  store i32 %add18, i32* %sc, align 4
  br label %while.cond.12

while.end.19:                                     ; preds = %while.cond.12
  br label %while.cond.20

while.cond.20:                                    ; preds = %if.end.30, %while.end.19
  %16 = load i16*, i16** %p, align 8
  %17 = load i16, i16* %16, align 2
  %conv21 = zext i16 %17 to i32
  %and22 = and i32 %conv21, 32768
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %while.body.25, label %while.end.31

while.body.25:                                    ; preds = %while.cond.20
  %18 = load i16*, i16** %x.addr, align 8
  call void @eshup1(i16* %18)
  %19 = load i32, i32* %sc, align 4
  %add26 = add nsw i32 %19, 1
  store i32 %add26, i32* %sc, align 4
  %20 = load i32, i32* %sc, align 4
  %cmp27 = icmp sgt i32 %20, 80
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %while.body.25
  call void @mtherr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 4)
  %21 = load i32, i32* %sc, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.30:                                        ; preds = %while.body.25
  br label %while.cond.20

while.end.31:                                     ; preds = %while.cond.20
  %22 = load i32, i32* %sc, align 4
  store i32 %22, i32* %retval
  br label %return

normdn:                                           ; preds = %if.then
  %23 = load i16*, i16** %p, align 8
  %24 = load i16, i16* %23, align 2
  %conv32 = zext i16 %24 to i32
  %and33 = and i32 %conv32, 65280
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %normdn
  %25 = load i16*, i16** %x.addr, align 8
  call void @eshdn8(i16* %25)
  %26 = load i32, i32* %sc, align 4
  %sub = sub nsw i32 %26, 8
  store i32 %sub, i32* %sc, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %normdn
  br label %while.cond.37

while.cond.37:                                    ; preds = %if.end.46, %if.end.36
  %27 = load i16*, i16** %p, align 8
  %28 = load i16, i16* %27, align 2
  %conv38 = zext i16 %28 to i32
  %cmp39 = icmp ne i32 %conv38, 0
  br i1 %cmp39, label %while.body.41, label %while.end.47

while.body.41:                                    ; preds = %while.cond.37
  %29 = load i16*, i16** %x.addr, align 8
  call void @eshdn1(i16* %29)
  %30 = load i32, i32* %sc, align 4
  %sub42 = sub nsw i32 %30, 1
  store i32 %sub42, i32* %sc, align 4
  %31 = load i32, i32* %sc, align 4
  %cmp43 = icmp slt i32 %31, -80
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %while.body.41
  call void @mtherr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 3)
  %32 = load i32, i32* %sc, align 4
  store i32 %32, i32* %retval
  br label %return

if.end.46:                                        ; preds = %while.body.41
  br label %while.cond.37

while.end.47:                                     ; preds = %while.cond.37
  %33 = load i32, i32* %sc, align 4
  store i32 %33, i32* %retval
  br label %return

return:                                           ; preds = %while.end.47, %if.then.45, %while.end.31, %if.then.29, %if.then.10, %if.then.3
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal void @ecleazs(i16* %xi) #0 {
entry:
  %xi.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %xi, i16** %xi.addr, align 8
  %0 = load i16*, i16** %xi.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %0, i32 1
  store i16* %incdec.ptr, i16** %xi.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %xi.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i16, i16* %2, i32 1
  store i16* %incdec.ptr1, i16** %xi.addr, align 8
  store i16 0, i16* %2, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ecleaz(i16* %xi) #0 {
entry:
  %xi.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %xi, i16** %xi.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %xi.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %1, i32 1
  store i16* %incdec.ptr, i16** %xi.addr, align 8
  store i16 0, i16* %1, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @eiisnan(i16* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 1
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 32767
  %cmp = icmp eq i32 %and, 32767
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i16*, i16** %x.addr, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx4, align 2
  %conv5 = zext i16 %5 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @eiisneg(i16* %x) #0 {
entry:
  %x.addr = alloca i16*, align 8
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define internal i32 @edivm(i16* %den, i16* %num) #0 {
entry:
  %den.addr = alloca i16*, align 8
  %num.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %p = alloca i16*, align 8
  %tnum = alloca i32, align 4
  %j = alloca i16, align 2
  %tdenm = alloca i16, align 2
  %tquot = alloca i16, align 2
  %tprod = alloca [10 x i16], align 16
  store i16* %den, i16** %den.addr, align 8
  store i16* %num, i16** %num.addr, align 8
  store i16* getelementptr inbounds ([9 x i16], [9 x i16]* @equot, i32 0, i64 0), i16** %p, align 8
  %0 = load i16*, i16** %num.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2
  %2 = load i16*, i16** %p, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %2, i32 1
  store i16* %incdec.ptr, i16** %p, align 8
  store i16 %1, i16* %2, align 2
  %3 = load i16*, i16** %num.addr, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx1, align 2
  %5 = load i16*, i16** %p, align 8
  %incdec.ptr2 = getelementptr inbounds i16, i16* %5, i32 1
  store i16* %incdec.ptr2, i16** %p, align 8
  store i16 %4, i16* %5, align 2
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i16*, i16** %p, align 8
  %incdec.ptr3 = getelementptr inbounds i16, i16* %7, i32 1
  store i16* %incdec.ptr3, i16** %p, align 8
  store i16 0, i16* %7, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i16*, i16** %num.addr, align 8
  call void @eshdn1(i16* %9)
  %10 = load i16*, i16** %den.addr, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %10, i64 3
  %11 = load i16, i16* %arrayidx4, align 2
  store i16 %11, i16* %tdenm, align 2
  store i32 2, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.38, %for.end
  %12 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %12, 9
  br i1 %cmp6, label %for.body.7, label %for.end.40

for.body.7:                                       ; preds = %for.cond.5
  %13 = load i16*, i16** %num.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %13, i64 2
  %14 = load i16, i16* %arrayidx8, align 2
  %conv = zext i16 %14 to i32
  %shl = shl i32 %conv, 16
  %15 = load i16*, i16** %num.addr, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %15, i64 3
  %16 = load i16, i16* %arrayidx9, align 2
  %conv10 = zext i16 %16 to i32
  %add = add i32 %shl, %conv10
  store i32 %add, i32* %tnum, align 4
  %17 = load i16, i16* %tdenm, align 2
  %conv11 = zext i16 %17 to i64
  %mul = mul i64 %conv11, 65535
  %18 = load i32, i32* %tnum, align 4
  %conv12 = zext i32 %18 to i64
  %cmp13 = icmp ult i64 %mul, %conv12
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.7
  store i16 -1, i16* %tquot, align 2
  br label %if.end

if.else:                                          ; preds = %for.body.7
  %19 = load i32, i32* %tnum, align 4
  %20 = load i16, i16* %tdenm, align 2
  %conv15 = zext i16 %20 to i32
  %div = udiv i32 %19, %conv15
  %conv16 = trunc i32 %div to i16
  store i16 %conv16, i16* %tquot, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load i16, i16* %tquot, align 2
  %conv17 = zext i16 %21 to i32
  %22 = load i16*, i16** %den.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i16], [10 x i16]* %tprod, i32 0, i32 0
  call void @m16m(i32 %conv17, i16* %22, i16* %arraydecay)
  %arraydecay18 = getelementptr inbounds [10 x i16], [10 x i16]* %tprod, i32 0, i32 0
  %23 = load i16*, i16** %num.addr, align 8
  %call = call i32 @ecmpm(i16* %arraydecay18, i16* %23)
  %cmp19 = icmp sgt i32 %call, 0
  br i1 %cmp19, label %if.then.21, label %if.end.35

if.then.21:                                       ; preds = %if.end
  %24 = load i16, i16* %tquot, align 2
  %conv22 = zext i16 %24 to i32
  %sub = sub nsw i32 %conv22, 1
  %conv23 = trunc i32 %sub to i16
  store i16 %conv23, i16* %tquot, align 2
  %25 = load i16*, i16** %den.addr, align 8
  %arraydecay24 = getelementptr inbounds [10 x i16], [10 x i16]* %tprod, i32 0, i32 0
  call void @esubm(i16* %25, i16* %arraydecay24)
  %arraydecay25 = getelementptr inbounds [10 x i16], [10 x i16]* %tprod, i32 0, i32 0
  %26 = load i16*, i16** %num.addr, align 8
  %call26 = call i32 @ecmpm(i16* %arraydecay25, i16* %26)
  %cmp27 = icmp sgt i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.then.21
  %27 = load i16, i16* %tquot, align 2
  %conv30 = zext i16 %27 to i32
  %sub31 = sub nsw i32 %conv30, 1
  %conv32 = trunc i32 %sub31 to i16
  store i16 %conv32, i16* %tquot, align 2
  %28 = load i16*, i16** %den.addr, align 8
  %arraydecay33 = getelementptr inbounds [10 x i16], [10 x i16]* %tprod, i32 0, i32 0
  call void @esubm(i16* %28, i16* %arraydecay33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.then.21
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end
  %arraydecay36 = getelementptr inbounds [10 x i16], [10 x i16]* %tprod, i32 0, i32 0
  %29 = load i16*, i16** %num.addr, align 8
  call void @esubm(i16* %arraydecay36, i16* %29)
  %30 = load i16, i16* %tquot, align 2
  %31 = load i32, i32* %i, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds [9 x i16], [9 x i16]* @equot, i32 0, i64 %idxprom
  store i16 %30, i16* %arrayidx37, align 2
  %32 = load i16*, i16** %num.addr, align 8
  call void @eshup6(i16* %32)
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.35
  %33 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %33, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.5

for.end.40:                                       ; preds = %for.cond.5
  %34 = load i16*, i16** %num.addr, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %34, i64 2
  store i16* %arrayidx41, i16** %p, align 8
  store i16 0, i16* %j, align 2
  store i32 2, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.50, %for.end.40
  %35 = load i32, i32* %i, align 4
  %cmp43 = icmp slt i32 %35, 9
  br i1 %cmp43, label %for.body.45, label %for.end.52

for.body.45:                                      ; preds = %for.cond.42
  %36 = load i16*, i16** %p, align 8
  %incdec.ptr46 = getelementptr inbounds i16, i16* %36, i32 1
  store i16* %incdec.ptr46, i16** %p, align 8
  %37 = load i16, i16* %36, align 2
  %conv47 = zext i16 %37 to i32
  %38 = load i16, i16* %j, align 2
  %conv48 = zext i16 %38 to i32
  %or = or i32 %conv48, %conv47
  %conv49 = trunc i32 %or to i16
  store i16 %conv49, i16* %j, align 2
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.45
  %39 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %39, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.42

for.end.52:                                       ; preds = %for.cond.42
  %40 = load i16, i16* %j, align 2
  %tobool = icmp ne i16 %40, 0
  br i1 %tobool, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.end.52
  store i16 1, i16* %j, align 2
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %for.end.52
  store i32 0, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.63, %if.end.54
  %41 = load i32, i32* %i, align 4
  %cmp56 = icmp slt i32 %41, 9
  br i1 %cmp56, label %for.body.58, label %for.end.65

for.body.58:                                      ; preds = %for.cond.55
  %42 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %42 to i64
  %arrayidx60 = getelementptr inbounds [9 x i16], [9 x i16]* @equot, i32 0, i64 %idxprom59
  %43 = load i16, i16* %arrayidx60, align 2
  %44 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %44 to i64
  %45 = load i16*, i16** %num.addr, align 8
  %arrayidx62 = getelementptr inbounds i16, i16* %45, i64 %idxprom61
  store i16 %43, i16* %arrayidx62, align 2
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.58
  %46 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %46, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.55

for.end.65:                                       ; preds = %for.cond.55
  %47 = load i16, i16* %j, align 2
  %conv66 = zext i16 %47 to i32
  ret i32 %conv66
}

; Function Attrs: nounwind uwtable
define internal void @m16m(i32 %a, i16* %b, i16* %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i16*, align 8
  %c.addr = alloca i16*, align 8
  %pp = alloca i16*, align 8
  %carry = alloca i32, align 4
  %ps = alloca i16*, align 8
  %p = alloca [9 x i16], align 16
  %aa = alloca i32, align 4
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i16* %b, i16** %b.addr, align 8
  store i16* %c, i16** %c.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  store i32 %0, i32* %aa, align 4
  %arrayidx = getelementptr inbounds [9 x i16], [9 x i16]* %p, i32 0, i64 7
  store i16* %arrayidx, i16** %pp, align 8
  %1 = load i16*, i16** %pp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %1, i32 1
  store i16* %incdec.ptr, i16** %pp, align 8
  store i16 0, i16* %1, align 2
  %2 = load i16*, i16** %pp, align 8
  store i16 0, i16* %2, align 2
  %3 = load i16*, i16** %b.addr, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %3, i64 8
  store i16* %arrayidx1, i16** %ps, align 8
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*, i16** %ps, align 8
  %6 = load i16, i16* %5, align 2
  %conv = zext i16 %6 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i16*, i16** %ps, align 8
  %incdec.ptr4 = getelementptr inbounds i16, i16* %7, i32 -1
  store i16* %incdec.ptr4, i16** %ps, align 8
  %8 = load i16*, i16** %pp, align 8
  %incdec.ptr5 = getelementptr inbounds i16, i16* %8, i32 -1
  store i16* %incdec.ptr5, i16** %pp, align 8
  %9 = load i16*, i16** %pp, align 8
  %add.ptr = getelementptr inbounds i16, i16* %9, i64 -1
  store i16 0, i16* %add.ptr, align 2
  br label %if.end

if.else:                                          ; preds = %for.body
  %10 = load i32, i32* %aa, align 4
  %11 = load i16*, i16** %ps, align 8
  %incdec.ptr6 = getelementptr inbounds i16, i16* %11, i32 -1
  store i16* %incdec.ptr6, i16** %ps, align 8
  %12 = load i16, i16* %11, align 2
  %conv7 = zext i16 %12 to i32
  %mul = mul i32 %10, %conv7
  store i32 %mul, i32* %m, align 4
  %13 = load i32, i32* %m, align 4
  %and = and i32 %13, 65535
  %14 = load i16*, i16** %pp, align 8
  %15 = load i16, i16* %14, align 2
  %conv8 = zext i16 %15 to i32
  %add = add i32 %and, %conv8
  store i32 %add, i32* %carry, align 4
  %16 = load i32, i32* %carry, align 4
  %conv9 = trunc i32 %16 to i16
  %17 = load i16*, i16** %pp, align 8
  %incdec.ptr10 = getelementptr inbounds i16, i16* %17, i32 -1
  store i16* %incdec.ptr10, i16** %pp, align 8
  store i16 %conv9, i16* %17, align 2
  %18 = load i32, i32* %carry, align 4
  %shr = lshr i32 %18, 16
  %19 = load i32, i32* %m, align 4
  %shr11 = lshr i32 %19, 16
  %add12 = add i32 %shr, %shr11
  %20 = load i16*, i16** %pp, align 8
  %21 = load i16, i16* %20, align 2
  %conv13 = zext i16 %21 to i32
  %add14 = add i32 %add12, %conv13
  store i32 %add14, i32* %carry, align 4
  %22 = load i32, i32* %carry, align 4
  %conv15 = trunc i32 %22 to i16
  %23 = load i16*, i16** %pp, align 8
  store i16 %conv15, i16* %23, align 2
  %24 = load i32, i32* %carry, align 4
  %shr16 = lshr i32 %24, 16
  %conv17 = trunc i32 %shr16 to i16
  %25 = load i16*, i16** %pp, align 8
  %add.ptr18 = getelementptr inbounds i16, i16* %25, i64 -1
  store i16 %conv17, i16* %add.ptr18, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.26, %for.end
  %27 = load i32, i32* %i, align 4
  %cmp20 = icmp slt i32 %27, 9
  br i1 %cmp20, label %for.body.22, label %for.end.28

for.body.22:                                      ; preds = %for.cond.19
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds [9 x i16], [9 x i16]* %p, i32 0, i64 %idxprom
  %29 = load i16, i16* %arrayidx23, align 2
  %30 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load i16*, i16** %c.addr, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %31, i64 %idxprom24
  store i16 %29, i16* %arrayidx25, align 2
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.22
  %32 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %32, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.19

for.end.28:                                       ; preds = %for.cond.19
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @emulm(i16* %a, i16* %b) #0 {
entry:
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %p = alloca i16*, align 8
  %q = alloca i16*, align 8
  %pprod = alloca [9 x i16], align 16
  %j = alloca i16, align 2
  %i = alloca i32, align 4
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  %0 = load i16*, i16** %b.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2
  store i16 %1, i16* getelementptr inbounds ([9 x i16], [9 x i16]* @equot, i32 0, i64 0), align 2
  %2 = load i16*, i16** %b.addr, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 1
  %3 = load i16, i16* %arrayidx1, align 2
  store i16 %3, i16* getelementptr inbounds ([9 x i16], [9 x i16]* @equot, i32 0, i64 1), align 2
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [9 x i16], [9 x i16]* @equot, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx2, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i16 0, i16* %j, align 2
  %7 = load i16*, i16** %a.addr, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %7, i64 8
  store i16* %arrayidx3, i16** %p, align 8
  store i16* getelementptr inbounds ([9 x i16], [9 x i16]* @equot, i32 0, i64 8), i16** %q, align 8
  store i32 3, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.15, %for.end
  %8 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %8, 9
  br i1 %cmp5, label %for.body.6, label %for.end.17

for.body.6:                                       ; preds = %for.cond.4
  %9 = load i16*, i16** %p, align 8
  %10 = load i16, i16* %9, align 2
  %conv = zext i16 %10 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.6
  %11 = load i16*, i16** %p, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %11, i32 -1
  store i16* %incdec.ptr, i16** %p, align 8
  br label %if.end

if.else:                                          ; preds = %for.body.6
  %12 = load i16*, i16** %p, align 8
  %incdec.ptr9 = getelementptr inbounds i16, i16* %12, i32 -1
  store i16* %incdec.ptr9, i16** %p, align 8
  %13 = load i16, i16* %12, align 2
  %conv10 = zext i16 %13 to i32
  %14 = load i16*, i16** %b.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %pprod, i32 0, i32 0
  call void @m16m(i32 %conv10, i16* %14, i16* %arraydecay)
  %arraydecay11 = getelementptr inbounds [9 x i16], [9 x i16]* %pprod, i32 0, i32 0
  call void @eaddm(i16* %arraydecay11, i16* getelementptr inbounds ([9 x i16], [9 x i16]* @equot, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i16*, i16** %q, align 8
  %16 = load i16, i16* %15, align 2
  %conv12 = zext i16 %16 to i32
  %17 = load i16, i16* %j, align 2
  %conv13 = zext i16 %17 to i32
  %or = or i32 %conv13, %conv12
  %conv14 = trunc i32 %or to i16
  store i16 %conv14, i16* %j, align 2
  call void @eshdn6(i16* getelementptr inbounds ([9 x i16], [9 x i16]* @equot, i32 0, i32 0))
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %18, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond.4

for.end.17:                                       ; preds = %for.cond.4
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.26, %for.end.17
  %19 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %19, 9
  br i1 %cmp19, label %for.body.21, label %for.end.28

for.body.21:                                      ; preds = %for.cond.18
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [9 x i16], [9 x i16]* @equot, i32 0, i64 %idxprom22
  %21 = load i16, i16* %arrayidx23, align 2
  %22 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load i16*, i16** %b.addr, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %23, i64 %idxprom24
  store i16 %21, i16* %arrayidx25, align 2
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.21
  %24 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %24, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.18

for.end.28:                                       ; preds = %for.cond.18
  %25 = load i16, i16* %j, align 2
  %conv29 = zext i16 %25 to i32
  ret i32 %conv29
}

; Function Attrs: nounwind uwtable
define internal void @make_nan(i16* %nan, i32 %sign, i32 %mode) #0 {
entry:
  %nan.addr = alloca i16*, align 8
  %sign.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i16*, align 8
  store i16* %nan, i16** %nan.addr, align 8
  store i32 %sign, i32* %sign.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  switch i32 %0, label %sw.default [
    i32 18, label %sw.bb
    i32 17, label %sw.bb
    i32 16, label %sw.bb.1
    i32 15, label %sw.bb.2
    i32 13, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 6, i32* %n, align 4
  store i16* getelementptr inbounds ([6 x i16], [6 x i16]* @XFlittlenan, i32 0, i32 0), i16** %p, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 4, i32* %n, align 4
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @DFlittlenan, i32 0, i32 0), i16** %p, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry, %entry
  store i32 2, i32* %n, align 4
  store i16* getelementptr inbounds ([2 x i16], [2 x i16]* @SFlittlenan, i32 0, i32 0), i16** %p, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 6401, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__FUNCTION__.make_nan, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb.1, %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog
  %1 = load i32, i32* %n, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %n, align 4
  %cmp = icmp ne i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i16*, i16** %p, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %2, i32 1
  store i16* %incdec.ptr, i16** %p, align 8
  %3 = load i16, i16* %2, align 2
  %4 = load i16*, i16** %nan.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i16, i16* %4, i32 1
  store i16* %incdec.ptr3, i16** %nan.addr, align 8
  store i16 %3, i16* %4, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %sign.addr, align 4
  %shl = shl i32 %5, 15
  %6 = load i16*, i16** %p, align 8
  %7 = load i16, i16* %6, align 2
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 32767
  %or = or i32 %shl, %and
  %conv4 = trunc i32 %or to i16
  %8 = load i16*, i16** %nan.addr, align 8
  store i16 %conv4, i16* %8, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @toe64(i16* %a, i16* %b) #0 {
entry:
  %a.addr = alloca i16*, align 8
  %b.addr = alloca i16*, align 8
  %p = alloca i16*, align 8
  %q = alloca i16*, align 8
  %i = alloca i16, align 2
  store i16* %a, i16** %a.addr, align 8
  store i16* %b, i16** %b.addr, align 8
  %0 = load i16*, i16** %a.addr, align 8
  %call = call i32 @eiisnan(i16* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16*, i16** %b.addr, align 8
  %2 = load i16*, i16** %a.addr, align 8
  %call1 = call i32 @eiisneg(i16* %2)
  call void @make_nan(i16* %1, i32 %call1, i32 17)
  br label %for.end

if.end:                                           ; preds = %entry
  %3 = load i16*, i16** %a.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load i16*, i16** %a.addr, align 8
  call void @eshdn1(i16* %5)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %6 = load i16*, i16** %a.addr, align 8
  store i16* %6, i16** %p, align 8
  %7 = load i16*, i16** %b.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %7, i64 4
  store i16* %add.ptr, i16** %q, align 8
  %8 = load i16*, i16** %q, align 8
  %add.ptr5 = getelementptr inbounds i16, i16* %8, i64 1
  store i16 0, i16* %add.ptr5, align 2
  %9 = load i16*, i16** %p, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr, i16** %p, align 8
  %10 = load i16, i16* %9, align 2
  store i16 %10, i16* %i, align 2
  %11 = load i16, i16* %i, align 2
  %tobool6 = icmp ne i16 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.4
  %12 = load i16*, i16** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i16, i16* %12, i32 1
  store i16* %incdec.ptr8, i16** %p, align 8
  %13 = load i16, i16* %12, align 2
  %conv9 = zext i16 %13 to i32
  %or = or i32 %conv9, 32768
  %conv10 = trunc i32 %or to i16
  %14 = load i16*, i16** %q, align 8
  %incdec.ptr11 = getelementptr inbounds i16, i16* %14, i32 -1
  store i16* %incdec.ptr11, i16** %q, align 8
  store i16 %conv10, i16* %14, align 2
  br label %if.end.14

if.else:                                          ; preds = %if.end.4
  %15 = load i16*, i16** %p, align 8
  %incdec.ptr12 = getelementptr inbounds i16, i16* %15, i32 1
  store i16* %incdec.ptr12, i16** %p, align 8
  %16 = load i16, i16* %15, align 2
  %17 = load i16*, i16** %q, align 8
  %incdec.ptr13 = getelementptr inbounds i16, i16* %17, i32 -1
  store i16* %incdec.ptr13, i16** %q, align 8
  store i16 %16, i16* %17, align 2
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.7
  %18 = load i16*, i16** %p, align 8
  %incdec.ptr15 = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %incdec.ptr15, i16** %p, align 8
  %19 = load i16*, i16** %a.addr, align 8
  %call16 = call i32 @eiisinf(i16* %19)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.14
  %20 = load i16*, i16** %q, align 8
  %incdec.ptr19 = getelementptr inbounds i16, i16* %20, i32 -1
  store i16* %incdec.ptr19, i16** %q, align 8
  store i16 -32768, i16* %20, align 2
  %21 = load i16*, i16** %q, align 8
  %incdec.ptr20 = getelementptr inbounds i16, i16* %21, i32 -1
  store i16* %incdec.ptr20, i16** %q, align 8
  store i16 0, i16* %21, align 2
  %22 = load i16*, i16** %q, align 8
  %incdec.ptr21 = getelementptr inbounds i16, i16* %22, i32 -1
  store i16* %incdec.ptr21, i16** %q, align 8
  store i16 0, i16* %22, align 2
  %23 = load i16*, i16** %q, align 8
  store i16 0, i16* %23, align 2
  br label %for.end

if.end.22:                                        ; preds = %if.end.14
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %24 = load i16, i16* %i, align 2
  %conv23 = zext i16 %24 to i32
  %cmp24 = icmp slt i32 %conv23, 4
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i16*, i16** %p, align 8
  %incdec.ptr26 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %incdec.ptr26, i16** %p, align 8
  %26 = load i16, i16* %25, align 2
  %27 = load i16*, i16** %q, align 8
  %incdec.ptr27 = getelementptr inbounds i16, i16* %27, i32 -1
  store i16* %incdec.ptr27, i16** %q, align 8
  store i16 %26, i16* %27, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i16, i16* %i, align 2
  %inc = add i16 %28, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.18, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @eiisinf(i16* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i16*, align 8
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %call = call i32 @eiisnan(i16* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i16*, i16** %x.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 1
  %2 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 32767
  %cmp = icmp eq i32 %and, 32767
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal void @toe53(i16* %x, i16* %y) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %y.addr = alloca i16*, align 8
  %i = alloca i16, align 2
  %p = alloca i16*, align 8
  store i16* %x, i16** %x.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %call = call i32 @eiisnan(i16* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16*, i16** %y.addr, align 8
  %2 = load i16*, i16** %x.addr, align 8
  %call1 = call i32 @eiisneg(i16* %2)
  call void @make_nan(i16* %1, i32 %call1, i32 16)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i16*, i16** %x.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  store i16* %arrayidx, i16** %p, align 8
  %4 = load i16*, i16** %y.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %4, i64 3
  store i16* %add.ptr, i16** %y.addr, align 8
  %5 = load i16*, i16** %y.addr, align 8
  store i16 0, i16* %5, align 2
  %6 = load i16*, i16** %p, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %6, i32 1
  store i16* %incdec.ptr, i16** %p, align 8
  %7 = load i16, i16* %6, align 2
  %tobool2 = icmp ne i16 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load i16*, i16** %y.addr, align 8
  store i16 -32768, i16* %8, align 2
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %9 = load i16*, i16** %p, align 8
  %incdec.ptr5 = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr5, i16** %p, align 8
  %10 = load i16, i16* %9, align 2
  store i16 %10, i16* %i, align 2
  %11 = load i16, i16* %i, align 2
  %conv = zext i16 %11 to i32
  %cmp = icmp uge i32 %conv, 2047
  br i1 %cmp, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.end.4
  %12 = load i16*, i16** %y.addr, align 8
  %13 = load i16, i16* %12, align 2
  %conv8 = zext i16 %13 to i32
  %or = or i32 %conv8, 32752
  %conv9 = trunc i32 %or to i16
  store i16 %conv9, i16* %12, align 2
  %14 = load i16*, i16** %y.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i16, i16* %14, i32 -1
  store i16* %incdec.ptr10, i16** %y.addr, align 8
  store i16 0, i16* %incdec.ptr10, align 2
  %15 = load i16*, i16** %y.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i16, i16* %15, i32 -1
  store i16* %incdec.ptr11, i16** %y.addr, align 8
  store i16 0, i16* %incdec.ptr11, align 2
  %16 = load i16*, i16** %y.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i16, i16* %16, i32 -1
  store i16* %incdec.ptr12, i16** %y.addr, align 8
  store i16 0, i16* %incdec.ptr12, align 2
  br label %return

if.end.13:                                        ; preds = %if.end.4
  %17 = load i16, i16* %i, align 2
  %conv14 = zext i16 %17 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.13
  %18 = load i16*, i16** %x.addr, align 8
  %call18 = call i32 @eshift(i16* %18, i32 4)
  br label %if.end.22

if.else:                                          ; preds = %if.end.13
  %19 = load i16, i16* %i, align 2
  %conv19 = zext i16 %19 to i32
  %shl = shl i32 %conv19, 4
  %conv20 = trunc i32 %shl to i16
  store i16 %conv20, i16* %i, align 2
  %20 = load i16*, i16** %x.addr, align 8
  %call21 = call i32 @eshift(i16* %20, i32 5)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.17
  %21 = load i16*, i16** %p, align 8
  %incdec.ptr23 = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %incdec.ptr23, i16** %p, align 8
  %22 = load i16, i16* %21, align 2
  %conv24 = zext i16 %22 to i32
  %and = and i32 %conv24, 15
  %23 = load i16, i16* %i, align 2
  %conv25 = zext i16 %23 to i32
  %or26 = or i32 %conv25, %and
  %conv27 = trunc i32 %or26 to i16
  store i16 %conv27, i16* %i, align 2
  %24 = load i16, i16* %i, align 2
  %conv28 = zext i16 %24 to i32
  %25 = load i16*, i16** %y.addr, align 8
  %26 = load i16, i16* %25, align 2
  %conv29 = zext i16 %26 to i32
  %or30 = or i32 %conv29, %conv28
  %conv31 = trunc i32 %or30 to i16
  store i16 %conv31, i16* %25, align 2
  %27 = load i16*, i16** %p, align 8
  %incdec.ptr32 = getelementptr inbounds i16, i16* %27, i32 1
  store i16* %incdec.ptr32, i16** %p, align 8
  %28 = load i16, i16* %27, align 2
  %29 = load i16*, i16** %y.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i16, i16* %29, i32 -1
  store i16* %incdec.ptr33, i16** %y.addr, align 8
  store i16 %28, i16* %incdec.ptr33, align 2
  %30 = load i16*, i16** %p, align 8
  %incdec.ptr34 = getelementptr inbounds i16, i16* %30, i32 1
  store i16* %incdec.ptr34, i16** %p, align 8
  %31 = load i16, i16* %30, align 2
  %32 = load i16*, i16** %y.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i16, i16* %32, i32 -1
  store i16* %incdec.ptr35, i16** %y.addr, align 8
  store i16 %31, i16* %incdec.ptr35, align 2
  %33 = load i16*, i16** %p, align 8
  %34 = load i16, i16* %33, align 2
  %35 = load i16*, i16** %y.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i16, i16* %35, i32 -1
  store i16* %incdec.ptr36, i16** %y.addr, align 8
  store i16 %34, i16* %incdec.ptr36, align 2
  br label %return

return:                                           ; preds = %if.end.22, %if.then.7, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @toe24(i16* %x, i16* %y) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %y.addr = alloca i16*, align 8
  %i = alloca i16, align 2
  %p = alloca i16*, align 8
  store i16* %x, i16** %x.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %call = call i32 @eiisnan(i16* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16*, i16** %y.addr, align 8
  %2 = load i16*, i16** %x.addr, align 8
  %call1 = call i32 @eiisneg(i16* %2)
  call void @make_nan(i16* %1, i32 %call1, i32 15)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i16*, i16** %x.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  store i16* %arrayidx, i16** %p, align 8
  %4 = load i16*, i16** %y.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %4, i64 1
  store i16* %add.ptr, i16** %y.addr, align 8
  %5 = load i16*, i16** %y.addr, align 8
  store i16 0, i16* %5, align 2
  %6 = load i16*, i16** %p, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %6, i32 1
  store i16* %incdec.ptr, i16** %p, align 8
  %7 = load i16, i16* %6, align 2
  %tobool2 = icmp ne i16 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load i16*, i16** %y.addr, align 8
  store i16 -32768, i16* %8, align 2
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %9 = load i16*, i16** %p, align 8
  %incdec.ptr5 = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr5, i16** %p, align 8
  %10 = load i16, i16* %9, align 2
  store i16 %10, i16* %i, align 2
  %11 = load i16, i16* %i, align 2
  %conv = zext i16 %11 to i32
  %cmp = icmp sge i32 %conv, 255
  br i1 %cmp, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end.4
  %12 = load i16*, i16** %y.addr, align 8
  %13 = load i16, i16* %12, align 2
  %conv8 = zext i16 %13 to i32
  %or = or i32 %conv8, 32640
  %conv9 = trunc i32 %or to i16
  store i16 %conv9, i16* %12, align 2
  %14 = load i16*, i16** %y.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i16, i16* %14, i32 -1
  store i16* %incdec.ptr10, i16** %y.addr, align 8
  store i16 0, i16* %incdec.ptr10, align 2
  br label %return

if.end.11:                                        ; preds = %if.end.4
  %15 = load i16, i16* %i, align 2
  %conv12 = zext i16 %15 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.11
  %16 = load i16*, i16** %x.addr, align 8
  %call16 = call i32 @eshift(i16* %16, i32 7)
  br label %if.end.20

if.else:                                          ; preds = %if.end.11
  %17 = load i16, i16* %i, align 2
  %conv17 = zext i16 %17 to i32
  %shl = shl i32 %conv17, 7
  %conv18 = trunc i32 %shl to i16
  store i16 %conv18, i16* %i, align 2
  %18 = load i16*, i16** %x.addr, align 8
  %call19 = call i32 @eshift(i16* %18, i32 8)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.15
  %19 = load i16*, i16** %p, align 8
  %incdec.ptr21 = getelementptr inbounds i16, i16* %19, i32 1
  store i16* %incdec.ptr21, i16** %p, align 8
  %20 = load i16, i16* %19, align 2
  %conv22 = zext i16 %20 to i32
  %and = and i32 %conv22, 127
  %21 = load i16, i16* %i, align 2
  %conv23 = zext i16 %21 to i32
  %or24 = or i32 %conv23, %and
  %conv25 = trunc i32 %or24 to i16
  store i16 %conv25, i16* %i, align 2
  %22 = load i16, i16* %i, align 2
  %conv26 = zext i16 %22 to i32
  %23 = load i16*, i16** %y.addr, align 8
  %24 = load i16, i16* %23, align 2
  %conv27 = zext i16 %24 to i32
  %or28 = or i32 %conv27, %conv26
  %conv29 = trunc i32 %or28 to i16
  store i16 %conv29, i16* %23, align 2
  %25 = load i16*, i16** %p, align 8
  %26 = load i16, i16* %25, align 2
  %27 = load i16*, i16** %y.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i16, i16* %27, i32 -1
  store i16* %incdec.ptr30, i16** %y.addr, align 8
  store i16 %26, i16* %incdec.ptr30, align 2
  br label %return

return:                                           ; preds = %if.end.20, %if.then.7, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

; Function Attrs: nounwind uwtable
define internal void @efloor(i16* %x, i16* %y) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %y.addr = alloca i16*, align 8
  %p = alloca i16*, align 8
  %e = alloca i32, align 4
  %expon = alloca i32, align 4
  %i = alloca i32, align 4
  %f = alloca [6 x i16], align 2
  store i16* %x, i16** %x.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %arraydecay = getelementptr inbounds [6 x i16], [6 x i16]* %f, i32 0, i32 0
  call void @emov(i16* %0, i16* %arraydecay)
  %arrayidx = getelementptr inbounds [6 x i16], [6 x i16]* %f, i32 0, i64 5
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, i32* %expon, align 4
  %2 = load i32, i32* %expon, align 4
  %and = and i32 %2, 32767
  %sub = sub nsw i32 %and, 16382
  store i32 %sub, i32* %e, align 4
  %3 = load i32, i32* %e, align 4
  %cmp = icmp sle i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i16*, i16** %y.addr, align 8
  call void @eclear(i16* %4)
  br label %isitneg

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %e, align 4
  %sub2 = sub nsw i32 80, %5
  store i32 %sub2, i32* %e, align 4
  %arraydecay3 = getelementptr inbounds [6 x i16], [6 x i16]* %f, i32 0, i32 0
  %6 = load i16*, i16** %y.addr, align 8
  call void @emov(i16* %arraydecay3, i16* %6)
  %7 = load i32, i32* %e, align 4
  %cmp4 = icmp sle i32 %7, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %if.end.33

if.end.7:                                         ; preds = %if.end
  %8 = load i16*, i16** %y.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %8, i64 0
  store i16* %arrayidx8, i16** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.7
  %9 = load i32, i32* %e, align 4
  %cmp9 = icmp sge i32 %9, 16
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i16*, i16** %p, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %incdec.ptr, i16** %p, align 8
  store i16 0, i16* %10, align 2
  %11 = load i32, i32* %e, align 4
  %sub11 = sub nsw i32 %11, 16
  store i32 %sub11, i32* %e, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %e, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [17 x i16], [17 x i16]* @bmask, i32 0, i64 %idxprom
  %13 = load i16, i16* %arrayidx12, align 2
  %conv13 = zext i16 %13 to i32
  %14 = load i16*, i16** %p, align 8
  %15 = load i16, i16* %14, align 2
  %conv14 = zext i16 %15 to i32
  %and15 = and i32 %conv14, %conv13
  %conv16 = trunc i32 %and15 to i16
  store i16 %conv16, i16* %14, align 2
  br label %isitneg

isitneg:                                          ; preds = %while.end, %if.then
  %16 = load i32, i32* %expon, align 4
  %conv17 = trunc i32 %16 to i16
  %conv18 = zext i16 %conv17 to i32
  %and19 = and i32 %conv18, 32768
  %tobool = icmp ne i32 %and19, 0
  br i1 %tobool, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %isitneg
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %17 = load i32, i32* %i, align 4
  %cmp21 = icmp slt i32 %17, 5
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [6 x i16], [6 x i16]* %f, i32 0, i64 %idxprom23
  %19 = load i16, i16* %arrayidx24, align 2
  %conv25 = zext i16 %19 to i32
  %20 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %20 to i64
  %21 = load i16*, i16** %y.addr, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %21, i64 %idxprom26
  %22 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %22 to i32
  %cmp29 = icmp ne i32 %conv25, %conv28
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body
  %23 = load i16*, i16** %y.addr, align 8
  %24 = load i16*, i16** %y.addr, align 8
  call void @esub(i16* getelementptr inbounds ([6 x i16], [6 x i16]* @eone, i32 0, i32 0), i16* %23, i16* %24)
  br label %for.end

if.end.32:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.31, %for.cond
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.6, %for.end, %isitneg
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eiremain(i16* %den, i16* %num) #0 {
entry:
  %den.addr = alloca i16*, align 8
  %num.addr = alloca i16*, align 8
  %ld = alloca i32, align 4
  %ln = alloca i32, align 4
  %j = alloca i16, align 2
  store i16* %den, i16** %den.addr, align 8
  store i16* %num, i16** %num.addr, align 8
  %0 = load i16*, i16** %den.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 1
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, i32* %ld, align 4
  %2 = load i16*, i16** %den.addr, align 8
  %call = call i32 @enormlz(i16* %2)
  %3 = load i32, i32* %ld, align 4
  %sub = sub nsw i32 %3, %call
  store i32 %sub, i32* %ld, align 4
  %4 = load i16*, i16** %num.addr, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx1, align 2
  %conv2 = zext i16 %5 to i32
  store i32 %conv2, i32* %ln, align 4
  %6 = load i16*, i16** %num.addr, align 8
  %call3 = call i32 @enormlz(i16* %6)
  %7 = load i32, i32* %ln, align 4
  %sub4 = sub nsw i32 %7, %call3
  store i32 %sub4, i32* %ln, align 4
  call void @ecleaz(i16* getelementptr inbounds ([9 x i16], [9 x i16]* @equot, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %8 = load i32, i32* %ln, align 4
  %9 = load i32, i32* %ld, align 4
  %cmp = icmp sge i32 %8, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i16*, i16** %den.addr, align 8
  %11 = load i16*, i16** %num.addr, align 8
  %call6 = call i32 @ecmpm(i16* %10, i16* %11)
  %cmp7 = icmp sle i32 %call6, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load i16*, i16** %den.addr, align 8
  %13 = load i16*, i16** %num.addr, align 8
  call void @esubm(i16* %12, i16* %13)
  store i16 1, i16* %j, align 2
  br label %if.end

if.else:                                          ; preds = %while.body
  store i16 0, i16* %j, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @eshup1(i16* getelementptr inbounds ([9 x i16], [9 x i16]* @equot, i32 0, i32 0))
  %14 = load i16, i16* %j, align 2
  %conv9 = zext i16 %14 to i32
  %15 = load i16, i16* getelementptr inbounds ([9 x i16], [9 x i16]* @equot, i32 0, i64 8), align 2
  %conv10 = zext i16 %15 to i32
  %or = or i32 %conv10, %conv9
  %conv11 = trunc i32 %or to i16
  store i16 %conv11, i16* getelementptr inbounds ([9 x i16], [9 x i16]* @equot, i32 0, i64 8), align 2
  %16 = load i16*, i16** %num.addr, align 8
  call void @eshup1(i16* %16)
  %17 = load i32, i32* %ln, align 4
  %sub12 = sub nsw i32 %17, 1
  store i32 %sub12, i32* %ln, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i16*, i16** %num.addr, align 8
  %19 = load i32, i32* %ln, align 4
  call void @emdnorm(i16* %18, i32 0, i32 0, i32 %19, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @asctoeg(i8* %ss, i16* %y, i32 %oprec) #0 {
entry:
  %ss.addr = alloca i8*, align 8
  %y.addr = alloca i16*, align 8
  %oprec.addr = alloca i32, align 4
  %yy = alloca [9 x i16], align 16
  %xt = alloca [9 x i16], align 16
  %tt = alloca [9 x i16], align 16
  %esign = alloca i32, align 4
  %decflg = alloca i32, align 4
  %sgnflg = alloca i32, align 4
  %nexp = alloca i32, align 4
  %exp = alloca i32, align 4
  %prec = alloca i32, align 4
  %lost = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %trail = alloca i32, align 4
  %c = alloca i32, align 4
  %rndsav = alloca i32, align 4
  %lexp = alloca i32, align 4
  %nsign = alloca i16, align 2
  %sp = alloca i8*, align 8
  %s = alloca i8*, align 8
  %lstr = alloca i8*, align 8
  %base = alloca i32, align 4
  store i8* %ss, i8** %ss.addr, align 8
  store i16* %y, i16** %y.addr, align 8
  store i32 %oprec, i32* %oprec.addr, align 4
  store i32 10, i32* %base, align 4
  %0 = load i8*, i8** %ss.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %add = add i64 %call, 1
  %1 = alloca i8, i64 %add
  store i8* %1, i8** %lstr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %ss.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %ss.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %ss.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %lstr, align 8
  store i8* %5, i8** %sp, align 8
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.8, %while.end
  %6 = load i8*, i8** %ss.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr3, i8** %ss.addr, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %sp, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr4, i8** %sp, align 8
  store i8 %7, i8* %8, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %while.body.8, label %while.end.9

while.body.8:                                     ; preds = %while.cond.2
  br label %while.cond.2

while.end.9:                                      ; preds = %while.cond.2
  %9 = load i8*, i8** %lstr, align 8
  store i8* %9, i8** %s, align 8
  %10 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx, align 1
  %conv10 = sext i8 %11 to i32
  %cmp11 = icmp eq i32 %conv10, 48
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end.9
  %12 = load i8*, i8** %s, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %13 to i32
  %cmp15 = icmp eq i32 %conv14, 120
  br i1 %cmp15, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load i8*, i8** %s, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %15 to i32
  %cmp19 = icmp eq i32 %conv18, 88
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 16, i32* %base, align 4
  %16 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 2
  store i8* %add.ptr, i8** %s, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %while.end.9
  %17 = load i32, i32* @rndprc, align 4
  store i32 %17, i32* %rndsav, align 4
  store i32 80, i32* @rndprc, align 4
  store i32 0, i32* %lost, align 4
  store i16 0, i16* %nsign, align 2
  store i32 0, i32* %decflg, align 4
  store i32 0, i32* %sgnflg, align 4
  store i32 0, i32* %nexp, align 4
  store i32 0, i32* %exp, align 4
  store i32 0, i32* %prec, align 4
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @ecleaz(i16* %arraydecay)
  store i32 0, i32* %trail, align 4
  br label %nxtcom

nxtcom:                                           ; preds = %donchr, %if.end
  %18 = load i8*, i8** %s, align 8
  %19 = load i8, i8* %18, align 1
  %idxprom = zext i8 %19 to i64
  %arrayidx21 = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %20 to i32
  store i32 %conv22, i32* %k, align 4
  %21 = load i32, i32* %k, align 4
  %cmp23 = icmp sge i32 %21, 0
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.159

land.lhs.true.25:                                 ; preds = %nxtcom
  %22 = load i32, i32* %k, align 4
  %23 = load i32, i32* %base, align 4
  %cmp26 = icmp slt i32 %22, %23
  br i1 %cmp26, label %if.then.28, label %if.end.159

if.then.28:                                       ; preds = %land.lhs.true.25
  %24 = load i32, i32* %prec, align 4
  %cmp29 = icmp eq i32 %24, 0
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.38

land.lhs.true.31:                                 ; preds = %if.then.28
  %25 = load i32, i32* %decflg, align 4
  %cmp32 = icmp eq i32 %25, 0
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.38

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %26 = load i32, i32* %k, align 4
  %cmp35 = icmp eq i32 %26, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %land.lhs.true.34
  br label %donchr

if.end.38:                                        ; preds = %land.lhs.true.34, %land.lhs.true.31, %if.then.28
  %27 = load i32, i32* %trail, align 4
  %cmp39 = icmp eq i32 %27, 0
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.112

land.lhs.true.41:                                 ; preds = %if.end.38
  %28 = load i32, i32* %decflg, align 4
  %cmp42 = icmp ne i32 %28, 0
  br i1 %cmp42, label %if.then.44, label %if.end.112

if.then.44:                                       ; preds = %land.lhs.true.41
  %29 = load i8*, i8** %s, align 8
  store i8* %29, i8** %sp, align 8
  br label %while.cond.45

while.cond.45:                                    ; preds = %while.body.60, %if.then.44
  %30 = load i8*, i8** %sp, align 8
  %31 = load i8, i8* %30, align 1
  %conv46 = sext i8 %31 to i32
  %and = and i32 %conv46, 255
  %idxprom47 = sext i32 %and to i64
  %arrayidx48 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom47
  %32 = load i16, i16* %arrayidx48, align 2
  %conv49 = zext i16 %32 to i32
  %and50 = and i32 %conv49, 4
  %tobool = icmp ne i32 %and50, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.45
  %33 = load i32, i32* %base, align 4
  %cmp51 = icmp eq i32 %33, 16
  br i1 %cmp51, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %34 = load i8*, i8** %sp, align 8
  %35 = load i8, i8* %34, align 1
  %conv53 = sext i8 %35 to i32
  %and54 = and i32 %conv53, 255
  %idxprom55 = sext i32 %and54 to i64
  %arrayidx56 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom55
  %36 = load i16, i16* %arrayidx56, align 2
  %conv57 = zext i16 %36 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %37 = phi i1 [ false, %lor.rhs ], [ %tobool59, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond.45
  %38 = phi i1 [ true, %while.cond.45 ], [ %37, %land.end ]
  br i1 %38, label %while.body.60, label %while.end.62

while.body.60:                                    ; preds = %lor.end
  %39 = load i8*, i8** %sp, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr61, i8** %sp, align 8
  br label %while.cond.45

while.end.62:                                     ; preds = %lor.end
  %40 = load i8*, i8** %sp, align 8
  %41 = load i8, i8* %40, align 1
  %conv63 = sext i8 %41 to i32
  %and64 = and i32 %conv63, 127
  store i32 %and64, i32* %c, align 4
  %42 = load i32, i32* %base, align 4
  %cmp65 = icmp ne i32 %42, 10
  br i1 %cmp65, label %land.lhs.true.73, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %while.end.62
  %43 = load i32, i32* %c, align 4
  %cmp68 = icmp ne i32 %43, 101
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.98

land.lhs.true.70:                                 ; preds = %lor.lhs.false.67
  %44 = load i32, i32* %c, align 4
  %cmp71 = icmp ne i32 %44, 69
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.98

land.lhs.true.73:                                 ; preds = %land.lhs.true.70, %while.end.62
  %45 = load i32, i32* %base, align 4
  %cmp74 = icmp ne i32 %45, 16
  br i1 %cmp74, label %land.lhs.true.82, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true.73
  %46 = load i32, i32* %c, align 4
  %cmp77 = icmp ne i32 %46, 112
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.98

land.lhs.true.79:                                 ; preds = %lor.lhs.false.76
  %47 = load i32, i32* %c, align 4
  %cmp80 = icmp ne i32 %47, 80
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.98

land.lhs.true.82:                                 ; preds = %land.lhs.true.79, %land.lhs.true.73
  %48 = load i32, i32* %c, align 4
  %cmp83 = icmp ne i32 %48, 0
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.98

land.lhs.true.85:                                 ; preds = %land.lhs.true.82
  %49 = load i32, i32* %c, align 4
  %cmp86 = icmp ne i32 %49, 10
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.98

land.lhs.true.88:                                 ; preds = %land.lhs.true.85
  %50 = load i32, i32* %c, align 4
  %cmp89 = icmp ne i32 %50, 13
  br i1 %cmp89, label %land.lhs.true.91, label %if.end.98

land.lhs.true.91:                                 ; preds = %land.lhs.true.88
  %51 = load i32, i32* %c, align 4
  %cmp92 = icmp ne i32 %51, 32
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.98

land.lhs.true.94:                                 ; preds = %land.lhs.true.91
  %52 = load i32, i32* %c, align 4
  %cmp95 = icmp ne i32 %52, 44
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %land.lhs.true.94
  br label %unexpected_char_error

if.end.98:                                        ; preds = %land.lhs.true.94, %land.lhs.true.91, %land.lhs.true.88, %land.lhs.true.85, %land.lhs.true.82, %land.lhs.true.79, %lor.lhs.false.76, %land.lhs.true.70, %lor.lhs.false.67
  %53 = load i8*, i8** %sp, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %incdec.ptr99, i8** %sp, align 8
  br label %while.cond.100

while.cond.100:                                   ; preds = %while.body.104, %if.end.98
  %54 = load i8*, i8** %sp, align 8
  %55 = load i8, i8* %54, align 1
  %conv101 = sext i8 %55 to i32
  %cmp102 = icmp eq i32 %conv101, 48
  br i1 %cmp102, label %while.body.104, label %while.end.106

while.body.104:                                   ; preds = %while.cond.100
  %56 = load i8*, i8** %sp, align 8
  %incdec.ptr105 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %incdec.ptr105, i8** %sp, align 8
  store i8 122, i8* %56, align 1
  br label %while.cond.100

while.end.106:                                    ; preds = %while.cond.100
  store i32 1, i32* %trail, align 4
  %57 = load i8*, i8** %s, align 8
  %58 = load i8, i8* %57, align 1
  %conv107 = sext i8 %58 to i32
  %cmp108 = icmp eq i32 %conv107, 122
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %while.end.106
  br label %donchr

if.end.111:                                       ; preds = %while.end.106
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %land.lhs.true.41, %if.end.38
  %arrayidx113 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 2
  %59 = load i16, i16* %arrayidx113, align 2
  %conv114 = zext i16 %59 to i32
  %cmp115 = icmp eq i32 %conv114, 0
  br i1 %cmp115, label %if.then.117, label %if.else.146

if.then.117:                                      ; preds = %if.end.112
  %60 = load i32, i32* %base, align 4
  %cmp118 = icmp eq i32 %60, 16
  br i1 %cmp118, label %if.then.120, label %if.else

if.then.120:                                      ; preds = %if.then.117
  %61 = load i32, i32* %decflg, align 4
  %tobool121 = icmp ne i32 %61, 0
  br i1 %tobool121, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %if.then.120
  %62 = load i32, i32* %nexp, align 4
  %add123 = add nsw i32 %62, 4
  store i32 %add123, i32* %nexp, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.then.120
  %arraydecay125 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @eshup1(i16* %arraydecay125)
  %arraydecay126 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @eshup1(i16* %arraydecay126)
  %arraydecay127 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @eshup1(i16* %arraydecay127)
  %arraydecay128 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @eshup1(i16* %arraydecay128)
  br label %if.end.140

if.else:                                          ; preds = %if.then.117
  %63 = load i32, i32* %decflg, align 4
  %tobool129 = icmp ne i32 %63, 0
  br i1 %tobool129, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %if.else
  %64 = load i32, i32* %nexp, align 4
  %add131 = add nsw i32 %64, 1
  store i32 %add131, i32* %nexp, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %if.else
  %arraydecay133 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @eshup1(i16* %arraydecay133)
  %arraydecay134 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %arraydecay135 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  call void @emovz(i16* %arraydecay134, i16* %arraydecay135)
  %arraydecay136 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  call void @eshup1(i16* %arraydecay136)
  %arraydecay137 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  call void @eshup1(i16* %arraydecay137)
  %arraydecay138 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  %arraydecay139 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @eaddm(i16* %arraydecay138, i16* %arraydecay139)
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.132, %if.end.124
  %arraydecay141 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  call void @ecleaz(i16* %arraydecay141)
  %65 = load i32, i32* %k, align 4
  %conv142 = trunc i32 %65 to i16
  %arrayidx143 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i64 7
  store i16 %conv142, i16* %arrayidx143, align 2
  %arraydecay144 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  %arraydecay145 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @eaddm(i16* %arraydecay144, i16* %arraydecay145)
  br label %if.end.157

if.else.146:                                      ; preds = %if.end.112
  %66 = load i32, i32* %k, align 4
  %67 = load i32, i32* %lost, align 4
  %or = or i32 %67, %66
  store i32 %or, i32* %lost, align 4
  %68 = load i32, i32* %decflg, align 4
  %cmp147 = icmp eq i32 %68, 0
  br i1 %cmp147, label %if.then.149, label %if.end.156

if.then.149:                                      ; preds = %if.else.146
  %69 = load i32, i32* %base, align 4
  %cmp150 = icmp eq i32 %69, 10
  br i1 %cmp150, label %if.then.152, label %if.else.153

if.then.152:                                      ; preds = %if.then.149
  %70 = load i32, i32* %nexp, align 4
  %sub = sub nsw i32 %70, 1
  store i32 %sub, i32* %nexp, align 4
  br label %if.end.155

if.else.153:                                      ; preds = %if.then.149
  %71 = load i32, i32* %nexp, align 4
  %sub154 = sub nsw i32 %71, 4
  store i32 %sub154, i32* %nexp, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.153, %if.then.152
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.else.146
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.end.140
  %72 = load i32, i32* %prec, align 4
  %add158 = add nsw i32 %72, 1
  store i32 %add158, i32* %prec, align 4
  br label %donchr

if.end.159:                                       ; preds = %land.lhs.true.25, %nxtcom
  %73 = load i8*, i8** %s, align 8
  %74 = load i8, i8* %73, align 1
  %conv160 = sext i8 %74 to i32
  switch i32 %conv160, label %sw.default [
    i32 122, label %sw.bb
    i32 69, label %sw.bb.161
    i32 101, label %sw.bb.161
    i32 80, label %sw.bb.161
    i32 112, label %sw.bb.161
    i32 46, label %sw.bb.162
    i32 45, label %sw.bb.166
    i32 43, label %sw.bb.171
    i32 44, label %sw.bb.176
    i32 32, label %sw.bb.176
    i32 0, label %sw.bb.176
    i32 10, label %sw.bb.176
    i32 13, label %sw.bb.176
    i32 105, label %sw.bb.177
    i32 73, label %sw.bb.177
  ]

sw.bb:                                            ; preds = %if.end.159
  br label %sw.epilog

sw.bb.161:                                        ; preds = %if.end.159, %if.end.159, %if.end.159, %if.end.159
  br label %expnt

sw.bb.162:                                        ; preds = %if.end.159
  %75 = load i32, i32* %decflg, align 4
  %tobool163 = icmp ne i32 %75, 0
  br i1 %tobool163, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %sw.bb.162
  br label %unexpected_char_error

if.end.165:                                       ; preds = %sw.bb.162
  %76 = load i32, i32* %decflg, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %decflg, align 4
  br label %sw.epilog

sw.bb.166:                                        ; preds = %if.end.159
  store i16 -1, i16* %nsign, align 2
  %77 = load i32, i32* %sgnflg, align 4
  %tobool167 = icmp ne i32 %77, 0
  br i1 %tobool167, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %sw.bb.166
  br label %unexpected_char_error

if.end.169:                                       ; preds = %sw.bb.166
  %78 = load i32, i32* %sgnflg, align 4
  %inc170 = add nsw i32 %78, 1
  store i32 %inc170, i32* %sgnflg, align 4
  br label %sw.epilog

sw.bb.171:                                        ; preds = %if.end.159
  %79 = load i32, i32* %sgnflg, align 4
  %tobool172 = icmp ne i32 %79, 0
  br i1 %tobool172, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %sw.bb.171
  br label %unexpected_char_error

if.end.174:                                       ; preds = %sw.bb.171
  %80 = load i32, i32* %sgnflg, align 4
  %inc175 = add nsw i32 %80, 1
  store i32 %inc175, i32* %sgnflg, align 4
  br label %sw.epilog

sw.bb.176:                                        ; preds = %if.end.159, %if.end.159, %if.end.159, %if.end.159, %if.end.159
  br label %daldone

sw.bb.177:                                        ; preds = %if.end.159, %if.end.159
  br label %infinite

sw.default:                                       ; preds = %if.end.159
  br label %unexpected_char_error

unexpected_char_error:                            ; preds = %sw.default, %if.then.173, %if.then.168, %if.then.164, %if.then.97
  %arraydecay178 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @einan(i16* %arraydecay178)
  br label %aexit

sw.epilog:                                        ; preds = %if.end.174, %if.end.169, %if.end.165, %sw.bb
  br label %donchr

donchr:                                           ; preds = %sw.epilog, %if.end.157, %if.then.110, %if.then.37
  %81 = load i8*, i8** %s, align 8
  %incdec.ptr179 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr179, i8** %s, align 8
  br label %nxtcom

expnt:                                            ; preds = %sw.bb.161
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %expnt
  %82 = load i32, i32* %k, align 4
  %cmp180 = icmp slt i32 %82, 9
  br i1 %cmp180, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %83 = load i32, i32* %k, align 4
  %idxprom182 = sext i32 %83 to i64
  %arrayidx183 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 %idxprom182
  %84 = load i16, i16* %arrayidx183, align 2
  %conv184 = zext i16 %84 to i32
  %cmp185 = icmp ne i32 %conv184, 0
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %for.body
  br label %read_expnt

if.end.188:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.188
  %85 = load i32, i32* %k, align 4
  %inc189 = add nsw i32 %85, 1
  store i32 %inc189, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %aexit

read_expnt:                                       ; preds = %if.then.187
  store i32 1, i32* %esign, align 4
  store i32 0, i32* %exp, align 4
  %86 = load i8*, i8** %s, align 8
  %incdec.ptr190 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr190, i8** %s, align 8
  %87 = load i8*, i8** %s, align 8
  %88 = load i8, i8* %87, align 1
  %conv191 = sext i8 %88 to i32
  %cmp192 = icmp eq i32 %conv191, 45
  br i1 %cmp192, label %if.then.194, label %if.end.196

if.then.194:                                      ; preds = %read_expnt
  store i32 -1, i32* %esign, align 4
  %89 = load i8*, i8** %s, align 8
  %incdec.ptr195 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr195, i8** %s, align 8
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.194, %read_expnt
  %90 = load i8*, i8** %s, align 8
  %91 = load i8, i8* %90, align 1
  %conv197 = sext i8 %91 to i32
  %cmp198 = icmp eq i32 %conv197, 43
  br i1 %cmp198, label %if.then.200, label %if.end.202

if.then.200:                                      ; preds = %if.end.196
  %92 = load i8*, i8** %s, align 8
  %incdec.ptr201 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr201, i8** %s, align 8
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.200, %if.end.196
  br label %while.cond.203

while.cond.203:                                   ; preds = %if.end.219, %if.end.202
  %93 = load i8*, i8** %s, align 8
  %94 = load i8, i8* %93, align 1
  %conv204 = sext i8 %94 to i32
  %and205 = and i32 %conv204, 255
  %idxprom206 = sext i32 %and205 to i64
  %arrayidx207 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom206
  %95 = load i16, i16* %arrayidx207, align 2
  %conv208 = zext i16 %95 to i32
  %and209 = and i32 %conv208, 4
  %tobool210 = icmp ne i32 %and209, 0
  br i1 %tobool210, label %while.body.211, label %while.end.220

while.body.211:                                   ; preds = %while.cond.203
  %96 = load i32, i32* %exp, align 4
  %mul = mul nsw i32 %96, 10
  store i32 %mul, i32* %exp, align 4
  %97 = load i8*, i8** %s, align 8
  %incdec.ptr212 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr212, i8** %s, align 8
  %98 = load i8, i8* %97, align 1
  %conv213 = sext i8 %98 to i32
  %sub214 = sub nsw i32 %conv213, 48
  %99 = load i32, i32* %exp, align 4
  %add215 = add nsw i32 %99, %sub214
  store i32 %add215, i32* %exp, align 4
  %100 = load i32, i32* %exp, align 4
  %cmp216 = icmp sgt i32 %100, 999999
  br i1 %cmp216, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %while.body.211
  br label %while.end.220

if.end.219:                                       ; preds = %while.body.211
  br label %while.cond.203

while.end.220:                                    ; preds = %if.then.218, %while.cond.203
  %101 = load i32, i32* %esign, align 4
  %cmp221 = icmp slt i32 %101, 0
  br i1 %cmp221, label %if.then.223, label %if.end.225

if.then.223:                                      ; preds = %while.end.220
  %102 = load i32, i32* %exp, align 4
  %sub224 = sub nsw i32 0, %102
  store i32 %sub224, i32* %exp, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.223, %while.end.220
  %103 = load i32, i32* %exp, align 4
  %cmp226 = icmp sgt i32 %103, 4932
  br i1 %cmp226, label %land.lhs.true.228, label %if.end.234

land.lhs.true.228:                                ; preds = %if.end.225
  %104 = load i32, i32* %base, align 4
  %cmp229 = icmp eq i32 %104, 10
  br i1 %cmp229, label %if.then.231, label %if.end.234

if.then.231:                                      ; preds = %land.lhs.true.228
  br label %infinite

infinite:                                         ; preds = %if.then.261, %if.then.231, %sw.bb.177
  %arraydecay232 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @ecleaz(i16* %arraydecay232)
  %arrayidx233 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 1
  store i16 32767, i16* %arrayidx233, align 2
  br label %aexit

if.end.234:                                       ; preds = %land.lhs.true.228, %if.end.225
  %105 = load i32, i32* %exp, align 4
  %cmp235 = icmp slt i32 %105, -4956
  br i1 %cmp235, label %land.lhs.true.237, label %if.end.242

land.lhs.true.237:                                ; preds = %if.end.234
  %106 = load i32, i32* %base, align 4
  %cmp238 = icmp eq i32 %106, 10
  br i1 %cmp238, label %if.then.240, label %if.end.242

if.then.240:                                      ; preds = %land.lhs.true.237
  br label %zero

zero:                                             ; preds = %if.then.265, %if.then.240
  %arraydecay241 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @ecleaz(i16* %arraydecay241)
  br label %aexit

if.end.242:                                       ; preds = %land.lhs.true.237, %if.end.234
  br label %daldone

daldone:                                          ; preds = %if.end.242, %sw.bb.176
  %107 = load i32, i32* %base, align 4
  %cmp243 = icmp eq i32 %107, 16
  br i1 %cmp243, label %if.then.245, label %if.end.269

if.then.245:                                      ; preds = %daldone
  %arraydecay246 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %call247 = call i32 @enormlz(i16* %arraydecay246)
  store i32 %call247, i32* %k, align 4
  %cmp248 = icmp sgt i32 %call247, 80
  br i1 %cmp248, label %if.then.250, label %if.end.252

if.then.250:                                      ; preds = %if.then.245
  %arraydecay251 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @ecleaz(i16* %arraydecay251)
  br label %aexit

if.end.252:                                       ; preds = %if.then.245
  %108 = load i32, i32* %k, align 4
  %sub253 = sub nsw i32 16462, %108
  %arrayidx254 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 1
  %109 = load i16, i16* %arrayidx254, align 2
  %conv255 = zext i16 %109 to i32
  %add256 = add nsw i32 %sub253, %conv255
  %110 = load i32, i32* %exp, align 4
  %add257 = add nsw i32 %add256, %110
  %111 = load i32, i32* %nexp, align 4
  %sub258 = sub nsw i32 %add257, %111
  store i32 %sub258, i32* %lexp, align 4
  %112 = load i32, i32* %lexp, align 4
  %cmp259 = icmp sgt i32 %112, 32767
  br i1 %cmp259, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %if.end.252
  br label %infinite

if.end.262:                                       ; preds = %if.end.252
  %113 = load i32, i32* %lexp, align 4
  %cmp263 = icmp slt i32 %113, 0
  br i1 %cmp263, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %if.end.262
  br label %zero

if.end.266:                                       ; preds = %if.end.262
  %114 = load i32, i32* %lexp, align 4
  %conv267 = trunc i32 %114 to i16
  %arrayidx268 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 1
  store i16 %conv267, i16* %arrayidx268, align 2
  br label %expdon

if.end.269:                                       ; preds = %daldone
  %115 = load i32, i32* %exp, align 4
  %116 = load i32, i32* %nexp, align 4
  %sub270 = sub nsw i32 %115, %116
  store i32 %sub270, i32* %nexp, align 4
  br label %while.cond.271

while.cond.271:                                   ; preds = %if.end.293, %if.end.269
  %117 = load i32, i32* %nexp, align 4
  %cmp272 = icmp sgt i32 %117, 0
  br i1 %cmp272, label %land.rhs.274, label %land.end.279

land.rhs.274:                                     ; preds = %while.cond.271
  %arrayidx275 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 2
  %118 = load i16, i16* %arrayidx275, align 2
  %conv276 = zext i16 %118 to i32
  %cmp277 = icmp eq i32 %conv276, 0
  br label %land.end.279

land.end.279:                                     ; preds = %land.rhs.274, %while.cond.271
  %119 = phi i1 [ false, %while.cond.271 ], [ %cmp277, %land.rhs.274 ]
  br i1 %119, label %while.body.280, label %while.end.297

while.body.280:                                   ; preds = %land.end.279
  %arraydecay281 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %arraydecay282 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  call void @emovz(i16* %arraydecay281, i16* %arraydecay282)
  %arraydecay283 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  call void @eshup1(i16* %arraydecay283)
  %arraydecay284 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  call void @eshup1(i16* %arraydecay284)
  %arraydecay285 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %arraydecay286 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  call void @eaddm(i16* %arraydecay285, i16* %arraydecay286)
  %arraydecay287 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  call void @eshup1(i16* %arraydecay287)
  %arrayidx288 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i64 2
  %120 = load i16, i16* %arrayidx288, align 2
  %conv289 = zext i16 %120 to i32
  %cmp290 = icmp ne i32 %conv289, 0
  br i1 %cmp290, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %while.body.280
  br label %while.end.297

if.end.293:                                       ; preds = %while.body.280
  %121 = load i32, i32* %nexp, align 4
  %sub294 = sub nsw i32 %121, 1
  store i32 %sub294, i32* %nexp, align 4
  %arraydecay295 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  %arraydecay296 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @emovz(i16* %arraydecay295, i16* %arraydecay296)
  br label %while.cond.271

while.end.297:                                    ; preds = %if.then.292, %land.end.279
  %arraydecay298 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %call299 = call i32 @enormlz(i16* %arraydecay298)
  store i32 %call299, i32* %k, align 4
  %cmp300 = icmp sgt i32 %call299, 80
  br i1 %cmp300, label %if.then.302, label %if.end.304

if.then.302:                                      ; preds = %while.end.297
  %arraydecay303 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  call void @ecleaz(i16* %arraydecay303)
  br label %aexit

if.end.304:                                       ; preds = %while.end.297
  %122 = load i32, i32* %k, align 4
  %sub305 = sub nsw i32 16462, %122
  store i32 %sub305, i32* %lexp, align 4
  %arraydecay306 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %123 = load i32, i32* %lost, align 4
  %124 = load i32, i32* %lexp, align 4
  call void @emdnorm(i16* %arraydecay306, i32 %123, i32 0, i32 %124, i32 64)
  store i32 0, i32* %lost, align 4
  %arrayidx307 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 1
  %125 = load i16, i16* %arrayidx307, align 2
  %conv308 = zext i16 %125 to i32
  store i32 %conv308, i32* %lexp, align 4
  %126 = load i32, i32* %nexp, align 4
  %cmp309 = icmp eq i32 %126, 0
  br i1 %cmp309, label %if.then.311, label %if.end.312

if.then.311:                                      ; preds = %if.end.304
  store i32 0, i32* %k, align 4
  br label %expdon

if.end.312:                                       ; preds = %if.end.304
  store i32 1, i32* %esign, align 4
  %127 = load i32, i32* %nexp, align 4
  %cmp313 = icmp slt i32 %127, 0
  br i1 %cmp313, label %if.then.315, label %if.end.330

if.then.315:                                      ; preds = %if.end.312
  %128 = load i32, i32* %nexp, align 4
  %sub316 = sub nsw i32 0, %128
  store i32 %sub316, i32* %nexp, align 4
  store i32 -1, i32* %esign, align 4
  %129 = load i32, i32* %nexp, align 4
  %cmp317 = icmp sgt i32 %129, 4096
  br i1 %cmp317, label %if.then.319, label %if.end.329

if.then.319:                                      ; preds = %if.then.315
  %arraydecay320 = getelementptr inbounds [9 x i16], [9 x i16]* %tt, i32 0, i32 0
  call void @emovi(i16* getelementptr inbounds ([13 x [6 x i16]], [13 x [6 x i16]]* @etens, i32 0, i64 0, i32 0), i16* %arraydecay320)
  %arrayidx321 = getelementptr inbounds [9 x i16], [9 x i16]* %tt, i32 0, i64 1
  %130 = load i16, i16* %arrayidx321, align 2
  %conv322 = zext i16 %130 to i32
  %131 = load i32, i32* %lexp, align 4
  %sub323 = sub nsw i32 %131, %conv322
  store i32 %sub323, i32* %lexp, align 4
  %arraydecay324 = getelementptr inbounds [9 x i16], [9 x i16]* %tt, i32 0, i32 0
  %arraydecay325 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %call326 = call i32 @edivm(i16* %arraydecay324, i16* %arraydecay325)
  store i32 %call326, i32* %k, align 4
  %132 = load i32, i32* %lexp, align 4
  %add327 = add nsw i32 %132, 16383
  store i32 %add327, i32* %lexp, align 4
  %133 = load i32, i32* %nexp, align 4
  %sub328 = sub nsw i32 %133, 4096
  store i32 %sub328, i32* %nexp, align 4
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.319, %if.then.315
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.end.312
  %arraydecay331 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  call void @emov(i16* getelementptr inbounds ([6 x i16], [6 x i16]* @eone, i32 0, i32 0), i16* %arraydecay331)
  store i32 1, i32* %exp, align 4
  store i32 12, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.330
  %134 = load i32, i32* %exp, align 4
  %135 = load i32, i32* %nexp, align 4
  %and332 = and i32 %134, %135
  %tobool333 = icmp ne i32 %and332, 0
  br i1 %tobool333, label %if.then.334, label %if.end.340

if.then.334:                                      ; preds = %do.body
  %136 = load i32, i32* %i, align 4
  %idxprom335 = sext i32 %136 to i64
  %arrayidx336 = getelementptr inbounds [13 x [6 x i16]], [13 x [6 x i16]]* @etens, i32 0, i64 %idxprom335
  %arraydecay337 = getelementptr inbounds [6 x i16], [6 x i16]* %arrayidx336, i32 0, i32 0
  %arraydecay338 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  %arraydecay339 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  call void @emul(i16* %arraydecay337, i16* %arraydecay338, i16* %arraydecay339)
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.334, %do.body
  %137 = load i32, i32* %i, align 4
  %dec = add nsw i32 %137, -1
  store i32 %dec, i32* %i, align 4
  %138 = load i32, i32* %exp, align 4
  %139 = load i32, i32* %exp, align 4
  %add341 = add nsw i32 %138, %139
  store i32 %add341, i32* %exp, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.340
  %140 = load i32, i32* %exp, align 4
  %cmp342 = icmp sle i32 %140, 4096
  br i1 %cmp342, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %arraydecay344 = getelementptr inbounds [9 x i16], [9 x i16]* %xt, i32 0, i32 0
  %arraydecay345 = getelementptr inbounds [9 x i16], [9 x i16]* %tt, i32 0, i32 0
  call void @emovi(i16* %arraydecay344, i16* %arraydecay345)
  %141 = load i32, i32* %esign, align 4
  %cmp346 = icmp slt i32 %141, 0
  br i1 %cmp346, label %if.then.348, label %if.else.356

if.then.348:                                      ; preds = %do.end
  %arrayidx349 = getelementptr inbounds [9 x i16], [9 x i16]* %tt, i32 0, i64 1
  %142 = load i16, i16* %arrayidx349, align 2
  %conv350 = zext i16 %142 to i32
  %143 = load i32, i32* %lexp, align 4
  %sub351 = sub nsw i32 %143, %conv350
  store i32 %sub351, i32* %lexp, align 4
  %arraydecay352 = getelementptr inbounds [9 x i16], [9 x i16]* %tt, i32 0, i32 0
  %arraydecay353 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %call354 = call i32 @edivm(i16* %arraydecay352, i16* %arraydecay353)
  store i32 %call354, i32* %k, align 4
  %144 = load i32, i32* %lexp, align 4
  %add355 = add nsw i32 %144, 16383
  store i32 %add355, i32* %lexp, align 4
  br label %if.end.364

if.else.356:                                      ; preds = %do.end
  %arrayidx357 = getelementptr inbounds [9 x i16], [9 x i16]* %tt, i32 0, i64 1
  %145 = load i16, i16* %arrayidx357, align 2
  %conv358 = zext i16 %145 to i32
  %146 = load i32, i32* %lexp, align 4
  %add359 = add nsw i32 %146, %conv358
  store i32 %add359, i32* %lexp, align 4
  %arraydecay360 = getelementptr inbounds [9 x i16], [9 x i16]* %tt, i32 0, i32 0
  %arraydecay361 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %call362 = call i32 @emulm(i16* %arraydecay360, i16* %arraydecay361)
  store i32 %call362, i32* %k, align 4
  %147 = load i32, i32* %lexp, align 4
  %sub363 = sub nsw i32 %147, 16382
  store i32 %sub363, i32* %lexp, align 4
  br label %if.end.364

if.end.364:                                       ; preds = %if.else.356, %if.then.348
  %148 = load i32, i32* %k, align 4
  store i32 %148, i32* %lost, align 4
  br label %expdon

expdon:                                           ; preds = %if.end.364, %if.then.311, %if.end.266
  %149 = load i32, i32* %oprec.addr, align 4
  %cmp365 = icmp eq i32 %149, 53
  br i1 %cmp365, label %if.then.367, label %if.else.369

if.then.367:                                      ; preds = %expdon
  %150 = load i32, i32* %lexp, align 4
  %sub368 = sub nsw i32 %150, 15360
  store i32 %sub368, i32* %lexp, align 4
  br label %if.end.375

if.else.369:                                      ; preds = %expdon
  %151 = load i32, i32* %oprec.addr, align 4
  %cmp370 = icmp eq i32 %151, 24
  br i1 %cmp370, label %if.then.372, label %if.end.374

if.then.372:                                      ; preds = %if.else.369
  %152 = load i32, i32* %lexp, align 4
  %sub373 = sub nsw i32 %152, 16256
  store i32 %sub373, i32* %lexp, align 4
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.372, %if.else.369
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374, %if.then.367
  %153 = load i32, i32* %oprec.addr, align 4
  store i32 %153, i32* @rndprc, align 4
  %arraydecay376 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %154 = load i32, i32* %lost, align 4
  %155 = load i32, i32* %lexp, align 4
  call void @emdnorm(i16* %arraydecay376, i32 %154, i32 0, i32 %155, i32 64)
  br label %aexit

aexit:                                            ; preds = %if.end.375, %if.then.302, %if.then.250, %zero, %infinite, %for.end, %unexpected_char_error
  %156 = load i32, i32* %rndsav, align 4
  store i32 %156, i32* @rndprc, align 4
  %157 = load i16, i16* %nsign, align 2
  %arrayidx377 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i64 0
  store i16 %157, i16* %arrayidx377, align 2
  %158 = load i32, i32* %oprec.addr, align 4
  switch i32 %158, label %sw.epilog.386 [
    i32 53, label %sw.bb.378
    i32 24, label %sw.bb.380
    i32 64, label %sw.bb.382
    i32 80, label %sw.bb.384
  ]

sw.bb.378:                                        ; preds = %aexit
  %arraydecay379 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %159 = load i16*, i16** %y.addr, align 8
  call void @toe53(i16* %arraydecay379, i16* %159)
  br label %sw.epilog.386

sw.bb.380:                                        ; preds = %aexit
  %arraydecay381 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %160 = load i16*, i16** %y.addr, align 8
  call void @toe24(i16* %arraydecay381, i16* %160)
  br label %sw.epilog.386

sw.bb.382:                                        ; preds = %aexit
  %arraydecay383 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %161 = load i16*, i16** %y.addr, align 8
  call void @toe64(i16* %arraydecay383, i16* %161)
  br label %sw.epilog.386

sw.bb.384:                                        ; preds = %aexit
  %arraydecay385 = getelementptr inbounds [9 x i16], [9 x i16]* %yy, i32 0, i32 0
  %162 = load i16*, i16** %y.addr, align 8
  call void @emovo(i16* %arraydecay385, i16* %162)
  br label %sw.epilog.386

sw.epilog.386:                                    ; preds = %aexit, %sw.bb.384, %sw.bb.382, %sw.bb.380, %sw.bb.378
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @einan(i16* %x) #0 {
entry:
  %x.addr = alloca i16*, align 8
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %x.addr, align 8
  call void @ecleaz(i16* %0)
  %1 = load i16*, i16** %x.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 1
  store i16 32767, i16* %arrayidx, align 2
  %2 = load i16*, i16** %x.addr, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 3
  store i16 -16384, i16* %arrayidx1, align 2
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
