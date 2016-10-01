; ModuleID = './MultiSource.Applications.ClamAV/81.libclamav_nsis_infblock.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inflate_huft_s = type { %union.anon.0, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i8, i8 }
%struct.nsis_z_stream_s = type { i8*, i32, i64, i8*, i32, %struct.inflate_blocks_state }
%struct.inflate_blocks_state = type { i32, %union.anon, i32, i32, i64, [1440 x %struct.inflate_huft_s], [32768 x i8], i8*, i8*, i8*, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [320 x i32], i32, %struct.inflate_huft_s* }
%struct.inflate_codes_state = type { i32, %union.anon.3, i8, i8, %struct.inflate_huft_s*, %struct.inflate_huft_s* }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.inflate_huft_s*, i32 }
%struct.anon.6 = type { i32, i64, i32, i8*, i32, i8*, i32, %struct.inflate_huft_s*, i32, i8* }
%struct.anon.2 = type { %struct.inflate_codes_state }
%struct.anon.5 = type { i32, i32 }

@fixed_built = internal global i8 0, align 1
@nsis_inflate.lc = internal global [288 x i32] zeroinitializer, align 16
@cplens = internal constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 16
@cplext = internal constant [31 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 3, i16 3, i16 4, i16 4, i16 4, i16 4, i16 5, i16 5, i16 5, i16 5, i16 0, i16 112, i16 112], align 16
@fixed_tl = internal global %struct.inflate_huft_s* null, align 8
@fixed_bl = internal global i32 9, align 4
@fixed_mem = internal global [544 x %struct.inflate_huft_s] zeroinitializer, align 16
@cpdist = internal constant [30 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577], align 16
@cpdext = internal constant [30 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 2, i16 2, i16 3, i16 3, i16 4, i16 4, i16 5, i16 5, i16 6, i16 6, i16 7, i16 7, i16 8, i16 8, i16 9, i16 9, i16 10, i16 10, i16 11, i16 11, i16 12, i16 12, i16 13, i16 13], align 16
@fixed_td = internal global %struct.inflate_huft_s* null, align 8
@fixed_bd = internal global i32 5, align 4
@border = internal constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@inflate_mask = internal global [17 x i16] [i16 0, i16 1, i16 3, i16 7, i16 15, i16 31, i16 63, i16 127, i16 255, i16 511, i16 1023, i16 2047, i16 4095, i16 8191, i16 16383, i16 32767, i16 -1], align 16
@huft_build.v = internal global [288 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @nsis_inflate(%struct.nsis_z_stream_s* %z) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca %struct.nsis_z_stream_s*, align 8
  %s = alloca %struct.inflate_blocks_state*, align 8
  %c = alloca %struct.inflate_codes_state*, align 8
  %_state = alloca %struct.anon.6, align 8
  %_k = alloca i32, align 4
  %f = alloca i32, align 4
  %v = alloca i8, align 1
  %mn = alloca i32, align 4
  %hn = alloca i32, align 4
  %h = alloca %struct.inflate_huft_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca i32, align 4
  %hn725 = alloca i32, align 4
  %bl = alloca i32, align 4
  %bd = alloca i32, align 4
  %tl = alloca %struct.inflate_huft_s*, align 8
  %td = alloca %struct.inflate_huft_s*, align 8
  %nl = alloca i32, align 4
  %nd = alloca i32, align 4
  store %struct.nsis_z_stream_s* %z, %struct.nsis_z_stream_s** %z.addr, align 8
  %0 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %blocks = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %0, i32 0, i32 5
  store %struct.inflate_blocks_state* %blocks, %struct.inflate_blocks_state** %s, align 8
  %1 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %1, i32 0, i32 1
  %decode = bitcast %union.anon* %sub to %struct.anon.2*
  %t_codes = getelementptr inbounds %struct.anon.2, %struct.anon.2* %decode, i32 0, i32 0
  store %struct.inflate_codes_state* %t_codes, %struct.inflate_codes_state** %c, align 8
  %2 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %next_in, align 8
  %p = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  store i8* %3, i8** %p, align 8
  %4 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %4, i32 0, i32 1
  %5 = load i32, i32* %avail_in, align 4
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  store i32 %5, i32* %n, align 4
  %6 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %6, i32 0, i32 4
  %7 = load i64, i64* %bitb, align 8
  %b = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  store i64 %7, i64* %b, align 8
  %8 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %8, i32 0, i32 3
  %9 = load i32, i32* %bitk, align 4
  %k = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  store i32 %9, i32* %k, align 4
  %10 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %10, i32 0, i32 9
  %11 = load i8*, i8** %write, align 8
  %q = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  store i8* %11, i8** %q, align 8
  %q1 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %12 = load i8*, i8** %q1, align 8
  %13 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %13, i32 0, i32 8
  %14 = load i8*, i8** %read, align 8
  %cmp = icmp ult i8* %12, %14
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read2 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %15, i32 0, i32 8
  %16 = load i8*, i8** %read2, align 8
  %q3 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %17 = load i8*, i8** %q3, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub4 = sub nsw i64 %sub.ptr.sub, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %18, i32 0, i32 7
  %19 = load i8*, i8** %end, align 8
  %q5 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %20 = load i8*, i8** %q5, align 8
  %sub.ptr.lhs.cast6 = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast7 = ptrtoint i8* %20 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub4, %cond.true ], [ %sub.ptr.sub8, %cond.false ]
  %conv = trunc i64 %cond to i32
  %m = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  store i32 %conv, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog.1560, %cond.end
  %21 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %21, i32 0, i32 0
  %22 = load i32, i32* %mode, align 4
  switch i32 %22, label %sw.default [
    i32 8, label %sw.bb
    i32 9, label %sw.bb.102
    i32 10, label %sw.bb.150
    i32 11, label %sw.bb.331
    i32 12, label %sw.bb.398
    i32 13, label %sw.bb.511
    i32 0, label %sw.bb.806
    i32 1, label %sw.bb.814
    i32 2, label %sw.bb.931
    i32 3, label %sw.bb.995
    i32 4, label %sw.bb.1102
    i32 5, label %sw.bb.1159
    i32 6, label %sw.bb.1342
    i32 7, label %sw.bb.1473
    i32 15, label %sw.bb.1485
  ]

sw.bb:                                            ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end, %sw.bb
  %k9 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %23 = load i32, i32* %k9, align 4
  %cmp10 = icmp ult i32 %23, 3
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %n12 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %24 = load i32, i32* %n12, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %b13 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %25 = load i64, i64* %b13, align 8
  %26 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb14 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %26, i32 0, i32 4
  store i64 %25, i64* %bitb14, align 8
  %k15 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %27 = load i32, i32* %k15, align 4
  %28 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk16 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %28, i32 0, i32 3
  store i32 %27, i32* %bitk16, align 4
  %n17 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %29 = load i32, i32* %n17, align 4
  %30 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in18 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %30, i32 0, i32 1
  store i32 %29, i32* %avail_in18, align 4
  %p19 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %31 = load i8*, i8** %p19, align 8
  %32 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in20 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %32, i32 0, i32 0
  store i8* %31, i8** %next_in20, align 8
  %q21 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %33 = load i8*, i8** %q21, align 8
  %34 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write22 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %34, i32 0, i32 9
  store i8* %33, i8** %write22, align 8
  %35 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %35)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %n23 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %36 = load i32, i32* %n23, align 4
  %dec = add i32 %36, -1
  store i32 %dec, i32* %n23, align 4
  %p24 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %37 = load i8*, i8** %p24, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %p24, align 8
  %38 = load i8, i8* %37, align 1
  %conv25 = zext i8 %38 to i64
  %k26 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %39 = load i32, i32* %k26, align 4
  %sh_prom = zext i32 %39 to i64
  %shl = shl i64 %conv25, %sh_prom
  %b27 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %40 = load i64, i64* %b27, align 8
  %or = or i64 %40, %shl
  store i64 %or, i64* %b27, align 8
  %k28 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %41 = load i32, i32* %k28, align 4
  %add = add i32 %41, 8
  store i32 %add, i32* %k28, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %b29 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %42 = load i64, i64* %b29, align 8
  %conv30 = trunc i64 %42 to i32
  %and = and i32 %conv30, 7
  %t = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %and, i32* %t, align 4
  %b31 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %43 = load i64, i64* %b31, align 8
  %shr = lshr i64 %43, 3
  store i64 %shr, i64* %b31, align 8
  %k32 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %44 = load i32, i32* %k32, align 4
  %sub33 = sub i32 %44, 3
  store i32 %sub33, i32* %k32, align 4
  %t34 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %45 = load i32, i32* %t34, align 4
  %and35 = and i32 %45, 1
  %tobool36 = icmp ne i32 %and35, 0
  %cond37 = select i1 %tobool36, i32 15, i32 8
  %46 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %last = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %46, i32 0, i32 2
  store i32 %cond37, i32* %last, align 4
  %t38 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %47 = load i32, i32* %t38, align 4
  %shr39 = lshr i32 %47, 1
  switch i32 %shr39, label %sw.epilog [
    i32 0, label %sw.bb.40
    i32 1, label %sw.bb.51
    i32 2, label %sw.bb.99
    i32 3, label %sw.bb.101
  ]

sw.bb.40:                                         ; preds = %while.end
  %k41 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %48 = load i32, i32* %k41, align 4
  %and42 = and i32 %48, 7
  %b43 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %49 = load i64, i64* %b43, align 8
  %sh_prom44 = zext i32 %and42 to i64
  %shr45 = lshr i64 %49, %sh_prom44
  store i64 %shr45, i64* %b43, align 8
  %k46 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %50 = load i32, i32* %k46, align 4
  %and47 = and i32 %50, 7
  %k48 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %51 = load i32, i32* %k48, align 4
  %sub49 = sub i32 %51, %and47
  store i32 %sub49, i32* %k48, align 4
  %52 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode50 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %52, i32 0, i32 0
  store i32 9, i32* %mode50, align 4
  br label %sw.epilog

sw.bb.51:                                         ; preds = %while.end
  %53 = load i8, i8* @fixed_built, align 1
  %tobool52 = icmp ne i8 %53, 0
  br i1 %tobool52, label %if.end.83, label %if.then.53

if.then.53:                                       ; preds = %sw.bb.51
  store i32 0, i32* %f, align 4
  store i32 0, i32* %_k, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc, %if.then.53
  %54 = load i32, i32* %_k, align 4
  %cmp55 = icmp slt i32 %54, 288
  br i1 %cmp55, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.54
  store i8 8, i8* %v, align 1
  %55 = load i32, i32* %_k, align 4
  %cmp57 = icmp sgt i32 %55, 143
  br i1 %cmp57, label %if.then.59, label %if.end.69

if.then.59:                                       ; preds = %for.body
  %56 = load i32, i32* %_k, align 4
  %cmp60 = icmp slt i32 %56, 256
  br i1 %cmp60, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %if.then.59
  %57 = load i8, i8* %v, align 1
  %inc = add i8 %57, 1
  store i8 %inc, i8* %v, align 1
  br label %if.end.68

if.else:                                          ; preds = %if.then.59
  %58 = load i32, i32* %_k, align 4
  %cmp63 = icmp slt i32 %58, 280
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.else
  %59 = load i8, i8* %v, align 1
  %dec66 = add i8 %59, -1
  store i8 %dec66, i8* %v, align 1
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.else
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.62
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %for.body
  %60 = load i8, i8* %v, align 1
  %conv70 = sext i8 %60 to i32
  %61 = load i32, i32* %_k, align 4
  %idxprom = sext i32 %61 to i64
  %arrayidx = getelementptr inbounds [288 x i32], [288 x i32]* @nsis_inflate.lc, i32 0, i64 %idxprom
  store i32 %conv70, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %62 = load i32, i32* %_k, align 4
  %inc71 = add nsw i32 %62, 1
  store i32 %inc71, i32* %_k, align 4
  br label %for.cond.54

for.end:                                          ; preds = %for.cond.54
  %call = call i32 @huft_build(i32* getelementptr inbounds ([288 x i32], [288 x i32]* @nsis_inflate.lc, i32 0, i32 0), i32 288, i32 257, i16* getelementptr inbounds ([31 x i16], [31 x i16]* @cplens, i32 0, i32 0), i16* getelementptr inbounds ([31 x i16], [31 x i16]* @cplext, i32 0, i32 0), %struct.inflate_huft_s** @fixed_tl, i32* @fixed_bl, %struct.inflate_huft_s* getelementptr inbounds ([544 x %struct.inflate_huft_s], [544 x %struct.inflate_huft_s]* @fixed_mem, i32 0, i32 0), i32* %f)
  store i32 0, i32* %_k, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.78, %for.end
  %63 = load i32, i32* %_k, align 4
  %cmp73 = icmp slt i32 %63, 30
  br i1 %cmp73, label %for.body.75, label %for.end.80

for.body.75:                                      ; preds = %for.cond.72
  %64 = load i32, i32* %_k, align 4
  %idxprom76 = sext i32 %64 to i64
  %arrayidx77 = getelementptr inbounds [288 x i32], [288 x i32]* @nsis_inflate.lc, i32 0, i64 %idxprom76
  store i32 5, i32* %arrayidx77, align 4
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.75
  %65 = load i32, i32* %_k, align 4
  %inc79 = add nsw i32 %65, 1
  store i32 %inc79, i32* %_k, align 4
  br label %for.cond.72

for.end.80:                                       ; preds = %for.cond.72
  %call81 = call i32 @huft_build(i32* getelementptr inbounds ([288 x i32], [288 x i32]* @nsis_inflate.lc, i32 0, i32 0), i32 30, i32 0, i16* getelementptr inbounds ([30 x i16], [30 x i16]* @cpdist, i32 0, i32 0), i16* getelementptr inbounds ([30 x i16], [30 x i16]* @cpdext, i32 0, i32 0), %struct.inflate_huft_s** @fixed_td, i32* @fixed_bd, %struct.inflate_huft_s* getelementptr inbounds ([544 x %struct.inflate_huft_s], [544 x %struct.inflate_huft_s]* @fixed_mem, i32 0, i32 0), i32* %f)
  %66 = load i8, i8* @fixed_built, align 1
  %inc82 = add i8 %66, 1
  store i8 %inc82, i8* @fixed_built, align 1
  br label %if.end.83

if.end.83:                                        ; preds = %for.end.80, %sw.bb.51
  %67 = load i32, i32* @fixed_bl, align 4
  %conv84 = trunc i32 %67 to i8
  %68 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub85 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %68, i32 0, i32 1
  %decode86 = bitcast %union.anon* %sub85 to %struct.anon.2*
  %t_codes87 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %decode86, i32 0, i32 0
  %lbits = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %t_codes87, i32 0, i32 2
  store i8 %conv84, i8* %lbits, align 1
  %69 = load i32, i32* @fixed_bd, align 4
  %conv88 = trunc i32 %69 to i8
  %70 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub89 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %70, i32 0, i32 1
  %decode90 = bitcast %union.anon* %sub89 to %struct.anon.2*
  %t_codes91 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %decode90, i32 0, i32 0
  %dbits = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %t_codes91, i32 0, i32 3
  store i8 %conv88, i8* %dbits, align 1
  %71 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** @fixed_tl, align 8
  %72 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub92 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %72, i32 0, i32 1
  %decode93 = bitcast %union.anon* %sub92 to %struct.anon.2*
  %t_codes94 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %decode93, i32 0, i32 0
  %ltree = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %t_codes94, i32 0, i32 4
  store %struct.inflate_huft_s* %71, %struct.inflate_huft_s** %ltree, align 8
  %73 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** @fixed_td, align 8
  %74 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub95 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %74, i32 0, i32 1
  %decode96 = bitcast %union.anon* %sub95 to %struct.anon.2*
  %t_codes97 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %decode96, i32 0, i32 0
  %dtree = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %t_codes97, i32 0, i32 5
  store %struct.inflate_huft_s* %73, %struct.inflate_huft_s** %dtree, align 8
  %75 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode98 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %75, i32 0, i32 0
  store i32 0, i32* %mode98, align 4
  br label %sw.epilog

sw.bb.99:                                         ; preds = %while.end
  %76 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode100 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %76, i32 0, i32 0
  store i32 11, i32* %mode100, align 4
  br label %sw.epilog

sw.bb.101:                                        ; preds = %while.end
  br label %bad

sw.epilog:                                        ; preds = %while.end, %sw.bb.99, %if.end.83, %sw.bb.40
  br label %sw.epilog.1560

sw.bb.102:                                        ; preds = %for.cond
  br label %while.cond.103

while.cond.103:                                   ; preds = %if.end.121, %sw.bb.102
  %k104 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %77 = load i32, i32* %k104, align 4
  %cmp105 = icmp ult i32 %77, 16
  br i1 %cmp105, label %while.body.107, label %while.end.134

while.body.107:                                   ; preds = %while.cond.103
  %n108 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %78 = load i32, i32* %n108, align 4
  %tobool109 = icmp ne i32 %78, 0
  br i1 %tobool109, label %if.end.121, label %if.then.110

if.then.110:                                      ; preds = %while.body.107
  %b111 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %79 = load i64, i64* %b111, align 8
  %80 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb112 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %80, i32 0, i32 4
  store i64 %79, i64* %bitb112, align 8
  %k113 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %81 = load i32, i32* %k113, align 4
  %82 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk114 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %82, i32 0, i32 3
  store i32 %81, i32* %bitk114, align 4
  %n115 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %83 = load i32, i32* %n115, align 4
  %84 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in116 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %84, i32 0, i32 1
  store i32 %83, i32* %avail_in116, align 4
  %p117 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %85 = load i8*, i8** %p117, align 8
  %86 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in118 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %86, i32 0, i32 0
  store i8* %85, i8** %next_in118, align 8
  %q119 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %87 = load i8*, i8** %q119, align 8
  %88 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write120 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %88, i32 0, i32 9
  store i8* %87, i8** %write120, align 8
  %89 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %89)
  store i32 0, i32* %retval
  br label %return

if.end.121:                                       ; preds = %while.body.107
  %n122 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %90 = load i32, i32* %n122, align 4
  %dec123 = add i32 %90, -1
  store i32 %dec123, i32* %n122, align 4
  %p124 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %91 = load i8*, i8** %p124, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr125, i8** %p124, align 8
  %92 = load i8, i8* %91, align 1
  %conv126 = zext i8 %92 to i64
  %k127 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %93 = load i32, i32* %k127, align 4
  %sh_prom128 = zext i32 %93 to i64
  %shl129 = shl i64 %conv126, %sh_prom128
  %b130 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %94 = load i64, i64* %b130, align 8
  %or131 = or i64 %94, %shl129
  store i64 %or131, i64* %b130, align 8
  %k132 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %95 = load i32, i32* %k132, align 4
  %add133 = add i32 %95, 8
  store i32 %add133, i32* %k132, align 4
  br label %while.cond.103

while.end.134:                                    ; preds = %while.cond.103
  %b135 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %96 = load i64, i64* %b135, align 8
  %conv136 = trunc i64 %96 to i32
  %and137 = and i32 %conv136, 65535
  %97 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub138 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %97, i32 0, i32 1
  %left = bitcast %union.anon* %sub138 to i32*
  store i32 %and137, i32* %left, align 4
  %k139 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  store i32 0, i32* %k139, align 4
  %b140 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  store i64 0, i64* %b140, align 8
  %98 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub141 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %98, i32 0, i32 1
  %left142 = bitcast %union.anon* %sub141 to i32*
  %99 = load i32, i32* %left142, align 4
  %tobool143 = icmp ne i32 %99, 0
  br i1 %tobool143, label %cond.true.144, label %cond.false.145

cond.true.144:                                    ; preds = %while.end.134
  br label %cond.end.147

cond.false.145:                                   ; preds = %while.end.134
  %100 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %last146 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %100, i32 0, i32 2
  %101 = load i32, i32* %last146, align 4
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.145, %cond.true.144
  %cond148 = phi i32 [ 10, %cond.true.144 ], [ %101, %cond.false.145 ]
  %102 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode149 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %102, i32 0, i32 0
  store i32 %cond148, i32* %mode149, align 4
  br label %sw.epilog.1560

sw.bb.150:                                        ; preds = %for.cond
  %n151 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %103 = load i32, i32* %n151, align 4
  %cmp152 = icmp eq i32 %103, 0
  br i1 %cmp152, label %if.then.154, label %if.end.165

if.then.154:                                      ; preds = %sw.bb.150
  %b155 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %104 = load i64, i64* %b155, align 8
  %105 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb156 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %105, i32 0, i32 4
  store i64 %104, i64* %bitb156, align 8
  %k157 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %106 = load i32, i32* %k157, align 4
  %107 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk158 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %107, i32 0, i32 3
  store i32 %106, i32* %bitk158, align 4
  %n159 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %108 = load i32, i32* %n159, align 4
  %109 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in160 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %109, i32 0, i32 1
  store i32 %108, i32* %avail_in160, align 4
  %p161 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %110 = load i8*, i8** %p161, align 8
  %111 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in162 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %111, i32 0, i32 0
  store i8* %110, i8** %next_in162, align 8
  %q163 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %112 = load i8*, i8** %q163, align 8
  %113 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write164 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %113, i32 0, i32 9
  store i8* %112, i8** %write164, align 8
  %114 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %114)
  store i32 0, i32* %retval
  br label %return

if.end.165:                                       ; preds = %sw.bb.150
  %m166 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  %115 = load i32, i32* %m166, align 4
  %cmp167 = icmp eq i32 %115, 0
  br i1 %cmp167, label %if.then.169, label %if.end.284

if.then.169:                                      ; preds = %if.end.165
  %q170 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %116 = load i8*, i8** %q170, align 8
  %117 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end171 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %117, i32 0, i32 7
  %118 = load i8*, i8** %end171, align 8
  %cmp172 = icmp eq i8* %116, %118
  br i1 %cmp172, label %land.lhs.true, label %if.end.202

land.lhs.true:                                    ; preds = %if.then.169
  %119 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read174 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %119, i32 0, i32 8
  %120 = load i8*, i8** %read174, align 8
  %121 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %121, i32 0, i32 6
  %arraydecay = getelementptr inbounds [32768 x i8], [32768 x i8]* %window, i32 0, i32 0
  %cmp175 = icmp ne i8* %120, %arraydecay
  br i1 %cmp175, label %if.then.177, label %if.end.202

if.then.177:                                      ; preds = %land.lhs.true
  %122 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window178 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %122, i32 0, i32 6
  %arraydecay179 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window178, i32 0, i32 0
  %q180 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  store i8* %arraydecay179, i8** %q180, align 8
  %q181 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %123 = load i8*, i8** %q181, align 8
  %124 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read182 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %124, i32 0, i32 8
  %125 = load i8*, i8** %read182, align 8
  %cmp183 = icmp ult i8* %123, %125
  br i1 %cmp183, label %cond.true.185, label %cond.false.192

cond.true.185:                                    ; preds = %if.then.177
  %126 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read186 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %126, i32 0, i32 8
  %127 = load i8*, i8** %read186, align 8
  %q187 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %128 = load i8*, i8** %q187, align 8
  %sub.ptr.lhs.cast188 = ptrtoint i8* %127 to i64
  %sub.ptr.rhs.cast189 = ptrtoint i8* %128 to i64
  %sub.ptr.sub190 = sub i64 %sub.ptr.lhs.cast188, %sub.ptr.rhs.cast189
  %sub191 = sub nsw i64 %sub.ptr.sub190, 1
  br label %cond.end.198

cond.false.192:                                   ; preds = %if.then.177
  %129 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end193 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %129, i32 0, i32 7
  %130 = load i8*, i8** %end193, align 8
  %q194 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %131 = load i8*, i8** %q194, align 8
  %sub.ptr.lhs.cast195 = ptrtoint i8* %130 to i64
  %sub.ptr.rhs.cast196 = ptrtoint i8* %131 to i64
  %sub.ptr.sub197 = sub i64 %sub.ptr.lhs.cast195, %sub.ptr.rhs.cast196
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.192, %cond.true.185
  %cond199 = phi i64 [ %sub191, %cond.true.185 ], [ %sub.ptr.sub197, %cond.false.192 ]
  %conv200 = trunc i64 %cond199 to i32
  %m201 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  store i32 %conv200, i32* %m201, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %cond.end.198, %land.lhs.true, %if.then.169
  %m203 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  %132 = load i32, i32* %m203, align 4
  %cmp204 = icmp eq i32 %132, 0
  br i1 %cmp204, label %if.then.206, label %if.end.283

if.then.206:                                      ; preds = %if.end.202
  %q207 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %133 = load i8*, i8** %q207, align 8
  %134 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write208 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %134, i32 0, i32 9
  store i8* %133, i8** %write208, align 8
  %135 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %135)
  %136 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write209 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %136, i32 0, i32 9
  %137 = load i8*, i8** %write209, align 8
  %q210 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  store i8* %137, i8** %q210, align 8
  %q211 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %138 = load i8*, i8** %q211, align 8
  %139 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read212 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %139, i32 0, i32 8
  %140 = load i8*, i8** %read212, align 8
  %cmp213 = icmp ult i8* %138, %140
  br i1 %cmp213, label %cond.true.215, label %cond.false.222

cond.true.215:                                    ; preds = %if.then.206
  %141 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read216 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %141, i32 0, i32 8
  %142 = load i8*, i8** %read216, align 8
  %q217 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %143 = load i8*, i8** %q217, align 8
  %sub.ptr.lhs.cast218 = ptrtoint i8* %142 to i64
  %sub.ptr.rhs.cast219 = ptrtoint i8* %143 to i64
  %sub.ptr.sub220 = sub i64 %sub.ptr.lhs.cast218, %sub.ptr.rhs.cast219
  %sub221 = sub nsw i64 %sub.ptr.sub220, 1
  br label %cond.end.228

cond.false.222:                                   ; preds = %if.then.206
  %144 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end223 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %144, i32 0, i32 7
  %145 = load i8*, i8** %end223, align 8
  %q224 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %146 = load i8*, i8** %q224, align 8
  %sub.ptr.lhs.cast225 = ptrtoint i8* %145 to i64
  %sub.ptr.rhs.cast226 = ptrtoint i8* %146 to i64
  %sub.ptr.sub227 = sub i64 %sub.ptr.lhs.cast225, %sub.ptr.rhs.cast226
  br label %cond.end.228

cond.end.228:                                     ; preds = %cond.false.222, %cond.true.215
  %cond229 = phi i64 [ %sub221, %cond.true.215 ], [ %sub.ptr.sub227, %cond.false.222 ]
  %conv230 = trunc i64 %cond229 to i32
  %m231 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  store i32 %conv230, i32* %m231, align 4
  %q232 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %147 = load i8*, i8** %q232, align 8
  %148 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end233 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %148, i32 0, i32 7
  %149 = load i8*, i8** %end233, align 8
  %cmp234 = icmp eq i8* %147, %149
  br i1 %cmp234, label %land.lhs.true.236, label %if.end.267

land.lhs.true.236:                                ; preds = %cond.end.228
  %150 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read237 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %150, i32 0, i32 8
  %151 = load i8*, i8** %read237, align 8
  %152 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window238 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %152, i32 0, i32 6
  %arraydecay239 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window238, i32 0, i32 0
  %cmp240 = icmp ne i8* %151, %arraydecay239
  br i1 %cmp240, label %if.then.242, label %if.end.267

if.then.242:                                      ; preds = %land.lhs.true.236
  %153 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window243 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %153, i32 0, i32 6
  %arraydecay244 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window243, i32 0, i32 0
  %q245 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  store i8* %arraydecay244, i8** %q245, align 8
  %q246 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %154 = load i8*, i8** %q246, align 8
  %155 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read247 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %155, i32 0, i32 8
  %156 = load i8*, i8** %read247, align 8
  %cmp248 = icmp ult i8* %154, %156
  br i1 %cmp248, label %cond.true.250, label %cond.false.257

cond.true.250:                                    ; preds = %if.then.242
  %157 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read251 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %157, i32 0, i32 8
  %158 = load i8*, i8** %read251, align 8
  %q252 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %159 = load i8*, i8** %q252, align 8
  %sub.ptr.lhs.cast253 = ptrtoint i8* %158 to i64
  %sub.ptr.rhs.cast254 = ptrtoint i8* %159 to i64
  %sub.ptr.sub255 = sub i64 %sub.ptr.lhs.cast253, %sub.ptr.rhs.cast254
  %sub256 = sub nsw i64 %sub.ptr.sub255, 1
  br label %cond.end.263

cond.false.257:                                   ; preds = %if.then.242
  %160 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end258 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %160, i32 0, i32 7
  %161 = load i8*, i8** %end258, align 8
  %q259 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %162 = load i8*, i8** %q259, align 8
  %sub.ptr.lhs.cast260 = ptrtoint i8* %161 to i64
  %sub.ptr.rhs.cast261 = ptrtoint i8* %162 to i64
  %sub.ptr.sub262 = sub i64 %sub.ptr.lhs.cast260, %sub.ptr.rhs.cast261
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.false.257, %cond.true.250
  %cond264 = phi i64 [ %sub256, %cond.true.250 ], [ %sub.ptr.sub262, %cond.false.257 ]
  %conv265 = trunc i64 %cond264 to i32
  %m266 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  store i32 %conv265, i32* %m266, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %cond.end.263, %land.lhs.true.236, %cond.end.228
  %m268 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  %163 = load i32, i32* %m268, align 4
  %cmp269 = icmp eq i32 %163, 0
  br i1 %cmp269, label %if.then.271, label %if.end.282

if.then.271:                                      ; preds = %if.end.267
  %b272 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %164 = load i64, i64* %b272, align 8
  %165 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb273 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %165, i32 0, i32 4
  store i64 %164, i64* %bitb273, align 8
  %k274 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %166 = load i32, i32* %k274, align 4
  %167 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk275 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %167, i32 0, i32 3
  store i32 %166, i32* %bitk275, align 4
  %n276 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %168 = load i32, i32* %n276, align 4
  %169 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in277 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %169, i32 0, i32 1
  store i32 %168, i32* %avail_in277, align 4
  %p278 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %170 = load i8*, i8** %p278, align 8
  %171 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in279 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %171, i32 0, i32 0
  store i8* %170, i8** %next_in279, align 8
  %q280 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %172 = load i8*, i8** %q280, align 8
  %173 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write281 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %173, i32 0, i32 9
  store i8* %172, i8** %write281, align 8
  %174 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %174)
  store i32 0, i32* %retval
  br label %return

if.end.282:                                       ; preds = %if.end.267
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %if.end.202
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283, %if.end.165
  %m285 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  %175 = load i32, i32* %m285, align 4
  %n286 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %176 = load i32, i32* %n286, align 4
  %cmp287 = icmp ult i32 %175, %176
  br i1 %cmp287, label %cond.true.289, label %cond.false.291

cond.true.289:                                    ; preds = %if.end.284
  %m290 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  %177 = load i32, i32* %m290, align 4
  br label %cond.end.293

cond.false.291:                                   ; preds = %if.end.284
  %n292 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %178 = load i32, i32* %n292, align 4
  br label %cond.end.293

cond.end.293:                                     ; preds = %cond.false.291, %cond.true.289
  %cond294 = phi i32 [ %177, %cond.true.289 ], [ %178, %cond.false.291 ]
  store i32 %cond294, i32* %mn, align 4
  %179 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub295 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %179, i32 0, i32 1
  %left296 = bitcast %union.anon* %sub295 to i32*
  %180 = load i32, i32* %left296, align 4
  %181 = load i32, i32* %mn, align 4
  %cmp297 = icmp ult i32 %180, %181
  br i1 %cmp297, label %cond.true.299, label %cond.false.302

cond.true.299:                                    ; preds = %cond.end.293
  %182 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub300 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %182, i32 0, i32 1
  %left301 = bitcast %union.anon* %sub300 to i32*
  %183 = load i32, i32* %left301, align 4
  br label %cond.end.303

cond.false.302:                                   ; preds = %cond.end.293
  %184 = load i32, i32* %mn, align 4
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.false.302, %cond.true.299
  %cond304 = phi i32 [ %183, %cond.true.299 ], [ %184, %cond.false.302 ]
  %t305 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %cond304, i32* %t305, align 4
  %q306 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %185 = load i8*, i8** %q306, align 8
  %p307 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %186 = load i8*, i8** %p307, align 8
  %t308 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %187 = load i32, i32* %t308, align 4
  %conv309 = zext i32 %187 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %185, i8* %186, i64 %conv309, i32 1, i1 false)
  %t310 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %188 = load i32, i32* %t310, align 4
  %p311 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %189 = load i8*, i8** %p311, align 8
  %idx.ext = zext i32 %188 to i64
  %add.ptr = getelementptr inbounds i8, i8* %189, i64 %idx.ext
  store i8* %add.ptr, i8** %p311, align 8
  %t312 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %190 = load i32, i32* %t312, align 4
  %n313 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %191 = load i32, i32* %n313, align 4
  %sub314 = sub i32 %191, %190
  store i32 %sub314, i32* %n313, align 4
  %t315 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %192 = load i32, i32* %t315, align 4
  %q316 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %193 = load i8*, i8** %q316, align 8
  %idx.ext317 = zext i32 %192 to i64
  %add.ptr318 = getelementptr inbounds i8, i8* %193, i64 %idx.ext317
  store i8* %add.ptr318, i8** %q316, align 8
  %t319 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %194 = load i32, i32* %t319, align 4
  %m320 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  %195 = load i32, i32* %m320, align 4
  %sub321 = sub i32 %195, %194
  store i32 %sub321, i32* %m320, align 4
  %t322 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %196 = load i32, i32* %t322, align 4
  %197 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub323 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %197, i32 0, i32 1
  %left324 = bitcast %union.anon* %sub323 to i32*
  %198 = load i32, i32* %left324, align 4
  %sub325 = sub i32 %198, %196
  store i32 %sub325, i32* %left324, align 4
  %tobool326 = icmp ne i32 %sub325, 0
  br i1 %tobool326, label %if.end.330, label %if.then.327

if.then.327:                                      ; preds = %cond.end.303
  %199 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %last328 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %199, i32 0, i32 2
  %200 = load i32, i32* %last328, align 4
  %201 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode329 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %201, i32 0, i32 0
  store i32 %200, i32* %mode329, align 4
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.327, %cond.end.303
  br label %sw.epilog.1560

sw.bb.331:                                        ; preds = %for.cond
  br label %while.cond.332

while.cond.332:                                   ; preds = %if.end.350, %sw.bb.331
  %k333 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %202 = load i32, i32* %k333, align 4
  %cmp334 = icmp ult i32 %202, 14
  br i1 %cmp334, label %while.body.336, label %while.end.363

while.body.336:                                   ; preds = %while.cond.332
  %n337 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %203 = load i32, i32* %n337, align 4
  %tobool338 = icmp ne i32 %203, 0
  br i1 %tobool338, label %if.end.350, label %if.then.339

if.then.339:                                      ; preds = %while.body.336
  %b340 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %204 = load i64, i64* %b340, align 8
  %205 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb341 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %205, i32 0, i32 4
  store i64 %204, i64* %bitb341, align 8
  %k342 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %206 = load i32, i32* %k342, align 4
  %207 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk343 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %207, i32 0, i32 3
  store i32 %206, i32* %bitk343, align 4
  %n344 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %208 = load i32, i32* %n344, align 4
  %209 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in345 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %209, i32 0, i32 1
  store i32 %208, i32* %avail_in345, align 4
  %p346 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %210 = load i8*, i8** %p346, align 8
  %211 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in347 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %211, i32 0, i32 0
  store i8* %210, i8** %next_in347, align 8
  %q348 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %212 = load i8*, i8** %q348, align 8
  %213 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write349 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %213, i32 0, i32 9
  store i8* %212, i8** %write349, align 8
  %214 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %214)
  store i32 0, i32* %retval
  br label %return

if.end.350:                                       ; preds = %while.body.336
  %n351 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %215 = load i32, i32* %n351, align 4
  %dec352 = add i32 %215, -1
  store i32 %dec352, i32* %n351, align 4
  %p353 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %216 = load i8*, i8** %p353, align 8
  %incdec.ptr354 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr354, i8** %p353, align 8
  %217 = load i8, i8* %216, align 1
  %conv355 = zext i8 %217 to i64
  %k356 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %218 = load i32, i32* %k356, align 4
  %sh_prom357 = zext i32 %218 to i64
  %shl358 = shl i64 %conv355, %sh_prom357
  %b359 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %219 = load i64, i64* %b359, align 8
  %or360 = or i64 %219, %shl358
  store i64 %or360, i64* %b359, align 8
  %k361 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %220 = load i32, i32* %k361, align 4
  %add362 = add i32 %220, 8
  store i32 %add362, i32* %k361, align 4
  br label %while.cond.332

while.end.363:                                    ; preds = %while.cond.332
  %b364 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %221 = load i64, i64* %b364, align 8
  %conv365 = trunc i64 %221 to i32
  %and366 = and i32 %conv365, 16383
  %t367 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %and366, i32* %t367, align 4
  %222 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub368 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %222, i32 0, i32 1
  %trees = bitcast %union.anon* %sub368 to %struct.anon*
  %table = getelementptr inbounds %struct.anon, %struct.anon* %trees, i32 0, i32 0
  store i32 %and366, i32* %table, align 4
  %t369 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %223 = load i32, i32* %t369, align 4
  %and370 = and i32 %223, 31
  %cmp371 = icmp ugt i32 %and370, 29
  br i1 %cmp371, label %if.then.378, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.363
  %t373 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %224 = load i32, i32* %t373, align 4
  %shr374 = lshr i32 %224, 5
  %and375 = and i32 %shr374, 31
  %cmp376 = icmp ugt i32 %and375, 29
  br i1 %cmp376, label %if.then.378, label %if.end.390

if.then.378:                                      ; preds = %lor.lhs.false, %while.end.363
  %225 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode379 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %225, i32 0, i32 0
  store i32 17, i32* %mode379, align 4
  %b380 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %226 = load i64, i64* %b380, align 8
  %227 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb381 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %227, i32 0, i32 4
  store i64 %226, i64* %bitb381, align 8
  %k382 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %228 = load i32, i32* %k382, align 4
  %229 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk383 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %229, i32 0, i32 3
  store i32 %228, i32* %bitk383, align 4
  %n384 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %230 = load i32, i32* %n384, align 4
  %231 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in385 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %231, i32 0, i32 1
  store i32 %230, i32* %avail_in385, align 4
  %p386 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %232 = load i8*, i8** %p386, align 8
  %233 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in387 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %233, i32 0, i32 0
  store i8* %232, i8** %next_in387, align 8
  %q388 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %234 = load i8*, i8** %q388, align 8
  %235 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write389 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %235, i32 0, i32 9
  store i8* %234, i8** %write389, align 8
  %236 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %236)
  store i32 -3, i32* %retval
  br label %return

if.end.390:                                       ; preds = %lor.lhs.false
  %b391 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %237 = load i64, i64* %b391, align 8
  %shr392 = lshr i64 %237, 14
  store i64 %shr392, i64* %b391, align 8
  %k393 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %238 = load i32, i32* %k393, align 4
  %sub394 = sub i32 %238, 14
  store i32 %sub394, i32* %k393, align 4
  %239 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub395 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %239, i32 0, i32 1
  %trees396 = bitcast %union.anon* %sub395 to %struct.anon*
  %index = getelementptr inbounds %struct.anon, %struct.anon* %trees396, i32 0, i32 1
  store i32 0, i32* %index, align 4
  %240 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode397 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %240, i32 0, i32 0
  store i32 12, i32* %mode397, align 4
  br label %sw.bb.398

sw.bb.398:                                        ; preds = %for.cond, %if.end.390
  br label %while.cond.399

while.cond.399:                                   ; preds = %while.end.442, %sw.bb.398
  %241 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub400 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %241, i32 0, i32 1
  %trees401 = bitcast %union.anon* %sub400 to %struct.anon*
  %index402 = getelementptr inbounds %struct.anon, %struct.anon* %trees401, i32 0, i32 1
  %242 = load i32, i32* %index402, align 4
  %243 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub403 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %243, i32 0, i32 1
  %trees404 = bitcast %union.anon* %sub403 to %struct.anon*
  %table405 = getelementptr inbounds %struct.anon, %struct.anon* %trees404, i32 0, i32 0
  %244 = load i32, i32* %table405, align 4
  %shr406 = lshr i32 %244, 10
  %add407 = add i32 4, %shr406
  %cmp408 = icmp ult i32 %242, %add407
  br i1 %cmp408, label %while.body.410, label %while.end.461

while.body.410:                                   ; preds = %while.cond.399
  br label %while.cond.411

while.cond.411:                                   ; preds = %if.end.429, %while.body.410
  %k412 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %245 = load i32, i32* %k412, align 4
  %cmp413 = icmp ult i32 %245, 3
  br i1 %cmp413, label %while.body.415, label %while.end.442

while.body.415:                                   ; preds = %while.cond.411
  %n416 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %246 = load i32, i32* %n416, align 4
  %tobool417 = icmp ne i32 %246, 0
  br i1 %tobool417, label %if.end.429, label %if.then.418

if.then.418:                                      ; preds = %while.body.415
  %b419 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %247 = load i64, i64* %b419, align 8
  %248 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb420 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %248, i32 0, i32 4
  store i64 %247, i64* %bitb420, align 8
  %k421 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %249 = load i32, i32* %k421, align 4
  %250 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk422 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %250, i32 0, i32 3
  store i32 %249, i32* %bitk422, align 4
  %n423 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %251 = load i32, i32* %n423, align 4
  %252 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in424 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %252, i32 0, i32 1
  store i32 %251, i32* %avail_in424, align 4
  %p425 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %253 = load i8*, i8** %p425, align 8
  %254 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in426 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %254, i32 0, i32 0
  store i8* %253, i8** %next_in426, align 8
  %q427 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %255 = load i8*, i8** %q427, align 8
  %256 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write428 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %256, i32 0, i32 9
  store i8* %255, i8** %write428, align 8
  %257 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %257)
  store i32 0, i32* %retval
  br label %return

if.end.429:                                       ; preds = %while.body.415
  %n430 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %258 = load i32, i32* %n430, align 4
  %dec431 = add i32 %258, -1
  store i32 %dec431, i32* %n430, align 4
  %p432 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %259 = load i8*, i8** %p432, align 8
  %incdec.ptr433 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %incdec.ptr433, i8** %p432, align 8
  %260 = load i8, i8* %259, align 1
  %conv434 = zext i8 %260 to i64
  %k435 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %261 = load i32, i32* %k435, align 4
  %sh_prom436 = zext i32 %261 to i64
  %shl437 = shl i64 %conv434, %sh_prom436
  %b438 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %262 = load i64, i64* %b438, align 8
  %or439 = or i64 %262, %shl437
  store i64 %or439, i64* %b438, align 8
  %k440 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %263 = load i32, i32* %k440, align 4
  %add441 = add i32 %263, 8
  store i32 %add441, i32* %k440, align 4
  br label %while.cond.411

while.end.442:                                    ; preds = %while.cond.411
  %b443 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %264 = load i64, i64* %b443, align 8
  %conv444 = trunc i64 %264 to i32
  %and445 = and i32 %conv444, 7
  %265 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub446 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %265, i32 0, i32 1
  %trees447 = bitcast %union.anon* %sub446 to %struct.anon*
  %index448 = getelementptr inbounds %struct.anon, %struct.anon* %trees447, i32 0, i32 1
  %266 = load i32, i32* %index448, align 4
  %inc449 = add i32 %266, 1
  store i32 %inc449, i32* %index448, align 4
  %idxprom450 = zext i32 %266 to i64
  %arrayidx451 = getelementptr inbounds [19 x i8], [19 x i8]* @border, i32 0, i64 %idxprom450
  %267 = load i8, i8* %arrayidx451, align 1
  %conv452 = sext i8 %267 to i32
  %idxprom453 = sext i32 %conv452 to i64
  %268 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub454 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %268, i32 0, i32 1
  %trees455 = bitcast %union.anon* %sub454 to %struct.anon*
  %t_blens = getelementptr inbounds %struct.anon, %struct.anon* %trees455, i32 0, i32 2
  %arrayidx456 = getelementptr inbounds [320 x i32], [320 x i32]* %t_blens, i32 0, i64 %idxprom453
  store i32 %and445, i32* %arrayidx456, align 4
  %b457 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %269 = load i64, i64* %b457, align 8
  %shr458 = lshr i64 %269, 3
  store i64 %shr458, i64* %b457, align 8
  %k459 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %270 = load i32, i32* %k459, align 4
  %sub460 = sub i32 %270, 3
  store i32 %sub460, i32* %k459, align 4
  br label %while.cond.399

while.end.461:                                    ; preds = %while.cond.399
  br label %while.cond.462

while.cond.462:                                   ; preds = %while.body.468, %while.end.461
  %271 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub463 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %271, i32 0, i32 1
  %trees464 = bitcast %union.anon* %sub463 to %struct.anon*
  %index465 = getelementptr inbounds %struct.anon, %struct.anon* %trees464, i32 0, i32 1
  %272 = load i32, i32* %index465, align 4
  %cmp466 = icmp ult i32 %272, 19
  br i1 %cmp466, label %while.body.468, label %while.end.481

while.body.468:                                   ; preds = %while.cond.462
  %273 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub469 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %273, i32 0, i32 1
  %trees470 = bitcast %union.anon* %sub469 to %struct.anon*
  %index471 = getelementptr inbounds %struct.anon, %struct.anon* %trees470, i32 0, i32 1
  %274 = load i32, i32* %index471, align 4
  %inc472 = add i32 %274, 1
  store i32 %inc472, i32* %index471, align 4
  %idxprom473 = zext i32 %274 to i64
  %arrayidx474 = getelementptr inbounds [19 x i8], [19 x i8]* @border, i32 0, i64 %idxprom473
  %275 = load i8, i8* %arrayidx474, align 1
  %conv475 = sext i8 %275 to i32
  %idxprom476 = sext i32 %conv475 to i64
  %276 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub477 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %276, i32 0, i32 1
  %trees478 = bitcast %union.anon* %sub477 to %struct.anon*
  %t_blens479 = getelementptr inbounds %struct.anon, %struct.anon* %trees478, i32 0, i32 2
  %arrayidx480 = getelementptr inbounds [320 x i32], [320 x i32]* %t_blens479, i32 0, i64 %idxprom476
  store i32 0, i32* %arrayidx480, align 4
  br label %while.cond.462

while.end.481:                                    ; preds = %while.cond.462
  %277 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub482 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %277, i32 0, i32 1
  %trees483 = bitcast %union.anon* %sub482 to %struct.anon*
  %bb = getelementptr inbounds %struct.anon, %struct.anon* %trees483, i32 0, i32 3
  store i32 7, i32* %bb, align 4
  store i32 0, i32* %hn, align 4
  %278 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub484 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %278, i32 0, i32 1
  %trees485 = bitcast %union.anon* %sub484 to %struct.anon*
  %t_blens486 = getelementptr inbounds %struct.anon, %struct.anon* %trees485, i32 0, i32 2
  %arraydecay487 = getelementptr inbounds [320 x i32], [320 x i32]* %t_blens486, i32 0, i32 0
  %279 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub488 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %279, i32 0, i32 1
  %trees489 = bitcast %union.anon* %sub488 to %struct.anon*
  %tb = getelementptr inbounds %struct.anon, %struct.anon* %trees489, i32 0, i32 4
  %280 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub490 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %280, i32 0, i32 1
  %trees491 = bitcast %union.anon* %sub490 to %struct.anon*
  %bb492 = getelementptr inbounds %struct.anon, %struct.anon* %trees491, i32 0, i32 3
  %281 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %hufts = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %281, i32 0, i32 5
  %arraydecay493 = getelementptr inbounds [1440 x %struct.inflate_huft_s], [1440 x %struct.inflate_huft_s]* %hufts, i32 0, i32 0
  %call494 = call i32 @huft_build(i32* %arraydecay487, i32 19, i32 19, i16* null, i16* null, %struct.inflate_huft_s** %tb, i32* %bb492, %struct.inflate_huft_s* %arraydecay493, i32* %hn)
  %t495 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %call494, i32* %t495, align 4
  %t496 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %282 = load i32, i32* %t496, align 4
  %cmp497 = icmp ne i32 %282, 0
  br i1 %cmp497, label %if.then.504, label %lor.lhs.false.499

lor.lhs.false.499:                                ; preds = %while.end.481
  %283 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub500 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %283, i32 0, i32 1
  %trees501 = bitcast %union.anon* %sub500 to %struct.anon*
  %bb502 = getelementptr inbounds %struct.anon, %struct.anon* %trees501, i32 0, i32 3
  %284 = load i32, i32* %bb502, align 4
  %tobool503 = icmp ne i32 %284, 0
  br i1 %tobool503, label %if.end.506, label %if.then.504

if.then.504:                                      ; preds = %lor.lhs.false.499, %while.end.481
  %285 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode505 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %285, i32 0, i32 0
  store i32 17, i32* %mode505, align 4
  br label %sw.epilog.1560

if.end.506:                                       ; preds = %lor.lhs.false.499
  %286 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub507 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %286, i32 0, i32 1
  %trees508 = bitcast %union.anon* %sub507 to %struct.anon*
  %index509 = getelementptr inbounds %struct.anon, %struct.anon* %trees508, i32 0, i32 1
  store i32 0, i32* %index509, align 4
  %287 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode510 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %287, i32 0, i32 0
  store i32 13, i32* %mode510, align 4
  br label %sw.bb.511

sw.bb.511:                                        ; preds = %for.cond, %if.end.506
  br label %while.cond.512

while.cond.512:                                   ; preds = %if.end.720, %sw.bb.511
  %288 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub513 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %288, i32 0, i32 1
  %trees514 = bitcast %union.anon* %sub513 to %struct.anon*
  %table515 = getelementptr inbounds %struct.anon, %struct.anon* %trees514, i32 0, i32 0
  %289 = load i32, i32* %table515, align 4
  %t516 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %289, i32* %t516, align 4
  %290 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub517 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %290, i32 0, i32 1
  %trees518 = bitcast %union.anon* %sub517 to %struct.anon*
  %index519 = getelementptr inbounds %struct.anon, %struct.anon* %trees518, i32 0, i32 1
  %291 = load i32, i32* %index519, align 4
  %t520 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %292 = load i32, i32* %t520, align 4
  %and521 = and i32 %292, 31
  %add522 = add i32 258, %and521
  %t523 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %293 = load i32, i32* %t523, align 4
  %shr524 = lshr i32 %293, 5
  %and525 = and i32 %shr524, 31
  %add526 = add i32 %add522, %and525
  %cmp527 = icmp ult i32 %291, %add526
  br i1 %cmp527, label %while.body.529, label %while.end.721

while.body.529:                                   ; preds = %while.cond.512
  %294 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub530 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %294, i32 0, i32 1
  %trees531 = bitcast %union.anon* %sub530 to %struct.anon*
  %bb532 = getelementptr inbounds %struct.anon, %struct.anon* %trees531, i32 0, i32 3
  %295 = load i32, i32* %bb532, align 4
  %t533 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %295, i32* %t533, align 4
  br label %while.cond.534

while.cond.534:                                   ; preds = %if.end.553, %while.body.529
  %k535 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %296 = load i32, i32* %k535, align 4
  %t536 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %297 = load i32, i32* %t536, align 4
  %cmp537 = icmp ult i32 %296, %297
  br i1 %cmp537, label %while.body.539, label %while.end.566

while.body.539:                                   ; preds = %while.cond.534
  %n540 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %298 = load i32, i32* %n540, align 4
  %tobool541 = icmp ne i32 %298, 0
  br i1 %tobool541, label %if.end.553, label %if.then.542

if.then.542:                                      ; preds = %while.body.539
  %b543 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %299 = load i64, i64* %b543, align 8
  %300 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb544 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %300, i32 0, i32 4
  store i64 %299, i64* %bitb544, align 8
  %k545 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %301 = load i32, i32* %k545, align 4
  %302 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk546 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %302, i32 0, i32 3
  store i32 %301, i32* %bitk546, align 4
  %n547 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %303 = load i32, i32* %n547, align 4
  %304 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in548 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %304, i32 0, i32 1
  store i32 %303, i32* %avail_in548, align 4
  %p549 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %305 = load i8*, i8** %p549, align 8
  %306 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in550 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %306, i32 0, i32 0
  store i8* %305, i8** %next_in550, align 8
  %q551 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %307 = load i8*, i8** %q551, align 8
  %308 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write552 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %308, i32 0, i32 9
  store i8* %307, i8** %write552, align 8
  %309 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %309)
  store i32 0, i32* %retval
  br label %return

if.end.553:                                       ; preds = %while.body.539
  %n554 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %310 = load i32, i32* %n554, align 4
  %dec555 = add i32 %310, -1
  store i32 %dec555, i32* %n554, align 4
  %p556 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %311 = load i8*, i8** %p556, align 8
  %incdec.ptr557 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %incdec.ptr557, i8** %p556, align 8
  %312 = load i8, i8* %311, align 1
  %conv558 = zext i8 %312 to i64
  %k559 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %313 = load i32, i32* %k559, align 4
  %sh_prom560 = zext i32 %313 to i64
  %shl561 = shl i64 %conv558, %sh_prom560
  %b562 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %314 = load i64, i64* %b562, align 8
  %or563 = or i64 %314, %shl561
  store i64 %or563, i64* %b562, align 8
  %k564 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %315 = load i32, i32* %k564, align 4
  %add565 = add i32 %315, 8
  store i32 %add565, i32* %k564, align 4
  br label %while.cond.534

while.end.566:                                    ; preds = %while.cond.534
  %316 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub567 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %316, i32 0, i32 1
  %trees568 = bitcast %union.anon* %sub567 to %struct.anon*
  %tb569 = getelementptr inbounds %struct.anon, %struct.anon* %trees568, i32 0, i32 4
  %317 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %tb569, align 8
  %b570 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %318 = load i64, i64* %b570, align 8
  %conv571 = trunc i64 %318 to i32
  %t572 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %319 = load i32, i32* %t572, align 4
  %idxprom573 = zext i32 %319 to i64
  %arrayidx574 = getelementptr inbounds [17 x i16], [17 x i16]* @inflate_mask, i32 0, i64 %idxprom573
  %320 = load i16, i16* %arrayidx574, align 2
  %conv575 = zext i16 %320 to i32
  %and576 = and i32 %conv571, %conv575
  %idx.ext577 = zext i32 %and576 to i64
  %add.ptr578 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %317, i64 %idx.ext577
  store %struct.inflate_huft_s* %add.ptr578, %struct.inflate_huft_s** %h, align 8
  %321 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %h, align 8
  %word = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %321, i32 0, i32 0
  %what = bitcast %union.anon.0* %word to %struct.anon.1*
  %Bits = getelementptr inbounds %struct.anon.1, %struct.anon.1* %what, i32 0, i32 1
  %322 = load i8, i8* %Bits, align 1
  %conv579 = zext i8 %322 to i32
  %t580 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %conv579, i32* %t580, align 4
  %323 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %h, align 8
  %base = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %323, i32 0, i32 1
  %324 = load i16, i16* %base, align 2
  %conv581 = zext i16 %324 to i32
  store i32 %conv581, i32* %d, align 4
  %325 = load i32, i32* %d, align 4
  %cmp582 = icmp ult i32 %325, 16
  br i1 %cmp582, label %if.then.584, label %if.else.601

if.then.584:                                      ; preds = %while.end.566
  %t585 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %326 = load i32, i32* %t585, align 4
  %b586 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %327 = load i64, i64* %b586, align 8
  %sh_prom587 = zext i32 %326 to i64
  %shr588 = lshr i64 %327, %sh_prom587
  store i64 %shr588, i64* %b586, align 8
  %t589 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %328 = load i32, i32* %t589, align 4
  %k590 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %329 = load i32, i32* %k590, align 4
  %sub591 = sub i32 %329, %328
  store i32 %sub591, i32* %k590, align 4
  %330 = load i32, i32* %d, align 4
  %331 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub592 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %331, i32 0, i32 1
  %trees593 = bitcast %union.anon* %sub592 to %struct.anon*
  %index594 = getelementptr inbounds %struct.anon, %struct.anon* %trees593, i32 0, i32 1
  %332 = load i32, i32* %index594, align 4
  %inc595 = add i32 %332, 1
  store i32 %inc595, i32* %index594, align 4
  %idxprom596 = zext i32 %332 to i64
  %333 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub597 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %333, i32 0, i32 1
  %trees598 = bitcast %union.anon* %sub597 to %struct.anon*
  %t_blens599 = getelementptr inbounds %struct.anon, %struct.anon* %trees598, i32 0, i32 2
  %arrayidx600 = getelementptr inbounds [320 x i32], [320 x i32]* %t_blens599, i32 0, i64 %idxprom596
  store i32 %330, i32* %arrayidx600, align 4
  br label %if.end.720

if.else.601:                                      ; preds = %while.end.566
  %334 = load i32, i32* %d, align 4
  %cmp602 = icmp eq i32 %334, 18
  br i1 %cmp602, label %if.then.604, label %if.else.605

if.then.604:                                      ; preds = %if.else.601
  store i32 7, i32* %i, align 4
  store i32 11, i32* %j, align 4
  br label %if.end.607

if.else.605:                                      ; preds = %if.else.601
  %335 = load i32, i32* %d, align 4
  %sub606 = sub i32 %335, 14
  store i32 %sub606, i32* %i, align 4
  store i32 3, i32* %j, align 4
  br label %if.end.607

if.end.607:                                       ; preds = %if.else.605, %if.then.604
  br label %while.cond.608

while.cond.608:                                   ; preds = %if.end.628, %if.end.607
  %k609 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %336 = load i32, i32* %k609, align 4
  %t610 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %337 = load i32, i32* %t610, align 4
  %338 = load i32, i32* %i, align 4
  %add611 = add i32 %337, %338
  %cmp612 = icmp ult i32 %336, %add611
  br i1 %cmp612, label %while.body.614, label %while.end.641

while.body.614:                                   ; preds = %while.cond.608
  %n615 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %339 = load i32, i32* %n615, align 4
  %tobool616 = icmp ne i32 %339, 0
  br i1 %tobool616, label %if.end.628, label %if.then.617

if.then.617:                                      ; preds = %while.body.614
  %b618 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %340 = load i64, i64* %b618, align 8
  %341 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb619 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %341, i32 0, i32 4
  store i64 %340, i64* %bitb619, align 8
  %k620 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %342 = load i32, i32* %k620, align 4
  %343 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk621 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %343, i32 0, i32 3
  store i32 %342, i32* %bitk621, align 4
  %n622 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %344 = load i32, i32* %n622, align 4
  %345 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in623 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %345, i32 0, i32 1
  store i32 %344, i32* %avail_in623, align 4
  %p624 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %346 = load i8*, i8** %p624, align 8
  %347 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in625 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %347, i32 0, i32 0
  store i8* %346, i8** %next_in625, align 8
  %q626 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %348 = load i8*, i8** %q626, align 8
  %349 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write627 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %349, i32 0, i32 9
  store i8* %348, i8** %write627, align 8
  %350 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %350)
  store i32 0, i32* %retval
  br label %return

if.end.628:                                       ; preds = %while.body.614
  %n629 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %351 = load i32, i32* %n629, align 4
  %dec630 = add i32 %351, -1
  store i32 %dec630, i32* %n629, align 4
  %p631 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %352 = load i8*, i8** %p631, align 8
  %incdec.ptr632 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %incdec.ptr632, i8** %p631, align 8
  %353 = load i8, i8* %352, align 1
  %conv633 = zext i8 %353 to i64
  %k634 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %354 = load i32, i32* %k634, align 4
  %sh_prom635 = zext i32 %354 to i64
  %shl636 = shl i64 %conv633, %sh_prom635
  %b637 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %355 = load i64, i64* %b637, align 8
  %or638 = or i64 %355, %shl636
  store i64 %or638, i64* %b637, align 8
  %k639 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %356 = load i32, i32* %k639, align 4
  %add640 = add i32 %356, 8
  store i32 %add640, i32* %k639, align 4
  br label %while.cond.608

while.end.641:                                    ; preds = %while.cond.608
  %t642 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %357 = load i32, i32* %t642, align 4
  %b643 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %358 = load i64, i64* %b643, align 8
  %sh_prom644 = zext i32 %357 to i64
  %shr645 = lshr i64 %358, %sh_prom644
  store i64 %shr645, i64* %b643, align 8
  %t646 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %359 = load i32, i32* %t646, align 4
  %k647 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %360 = load i32, i32* %k647, align 4
  %sub648 = sub i32 %360, %359
  store i32 %sub648, i32* %k647, align 4
  %b649 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %361 = load i64, i64* %b649, align 8
  %conv650 = trunc i64 %361 to i32
  %362 = load i32, i32* %i, align 4
  %idxprom651 = zext i32 %362 to i64
  %arrayidx652 = getelementptr inbounds [17 x i16], [17 x i16]* @inflate_mask, i32 0, i64 %idxprom651
  %363 = load i16, i16* %arrayidx652, align 2
  %conv653 = zext i16 %363 to i32
  %and654 = and i32 %conv650, %conv653
  %364 = load i32, i32* %j, align 4
  %add655 = add i32 %364, %and654
  store i32 %add655, i32* %j, align 4
  %365 = load i32, i32* %i, align 4
  %b656 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %366 = load i64, i64* %b656, align 8
  %sh_prom657 = zext i32 %365 to i64
  %shr658 = lshr i64 %366, %sh_prom657
  store i64 %shr658, i64* %b656, align 8
  %367 = load i32, i32* %i, align 4
  %k659 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %368 = load i32, i32* %k659, align 4
  %sub660 = sub i32 %368, %367
  store i32 %sub660, i32* %k659, align 4
  %369 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub661 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %369, i32 0, i32 1
  %trees662 = bitcast %union.anon* %sub661 to %struct.anon*
  %index663 = getelementptr inbounds %struct.anon, %struct.anon* %trees662, i32 0, i32 1
  %370 = load i32, i32* %index663, align 4
  store i32 %370, i32* %i, align 4
  %371 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub664 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %371, i32 0, i32 1
  %trees665 = bitcast %union.anon* %sub664 to %struct.anon*
  %table666 = getelementptr inbounds %struct.anon, %struct.anon* %trees665, i32 0, i32 0
  %372 = load i32, i32* %table666, align 4
  %t667 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %372, i32* %t667, align 4
  %373 = load i32, i32* %i, align 4
  %374 = load i32, i32* %j, align 4
  %add668 = add i32 %373, %374
  %t669 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %375 = load i32, i32* %t669, align 4
  %and670 = and i32 %375, 31
  %add671 = add i32 258, %and670
  %t672 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %376 = load i32, i32* %t672, align 4
  %shr673 = lshr i32 %376, 5
  %and674 = and i32 %shr673, 31
  %add675 = add i32 %add671, %and674
  %cmp676 = icmp ugt i32 %add668, %add675
  br i1 %cmp676, label %if.then.684, label %lor.lhs.false.678

lor.lhs.false.678:                                ; preds = %while.end.641
  %377 = load i32, i32* %d, align 4
  %cmp679 = icmp eq i32 %377, 16
  br i1 %cmp679, label %land.lhs.true.681, label %if.end.696

land.lhs.true.681:                                ; preds = %lor.lhs.false.678
  %378 = load i32, i32* %i, align 4
  %cmp682 = icmp ult i32 %378, 1
  br i1 %cmp682, label %if.then.684, label %if.end.696

if.then.684:                                      ; preds = %land.lhs.true.681, %while.end.641
  %379 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode685 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %379, i32 0, i32 0
  store i32 17, i32* %mode685, align 4
  %b686 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %380 = load i64, i64* %b686, align 8
  %381 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb687 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %381, i32 0, i32 4
  store i64 %380, i64* %bitb687, align 8
  %k688 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %382 = load i32, i32* %k688, align 4
  %383 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk689 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %383, i32 0, i32 3
  store i32 %382, i32* %bitk689, align 4
  %n690 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %384 = load i32, i32* %n690, align 4
  %385 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in691 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %385, i32 0, i32 1
  store i32 %384, i32* %avail_in691, align 4
  %p692 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %386 = load i8*, i8** %p692, align 8
  %387 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in693 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %387, i32 0, i32 0
  store i8* %386, i8** %next_in693, align 8
  %q694 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %388 = load i8*, i8** %q694, align 8
  %389 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write695 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %389, i32 0, i32 9
  store i8* %388, i8** %write695, align 8
  %390 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %390)
  store i32 -3, i32* %retval
  br label %return

if.end.696:                                       ; preds = %land.lhs.true.681, %lor.lhs.false.678
  %391 = load i32, i32* %d, align 4
  %cmp697 = icmp eq i32 %391, 16
  br i1 %cmp697, label %cond.true.699, label %cond.false.706

cond.true.699:                                    ; preds = %if.end.696
  %392 = load i32, i32* %i, align 4
  %sub700 = sub i32 %392, 1
  %idxprom701 = zext i32 %sub700 to i64
  %393 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub702 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %393, i32 0, i32 1
  %trees703 = bitcast %union.anon* %sub702 to %struct.anon*
  %t_blens704 = getelementptr inbounds %struct.anon, %struct.anon* %trees703, i32 0, i32 2
  %arrayidx705 = getelementptr inbounds [320 x i32], [320 x i32]* %t_blens704, i32 0, i64 %idxprom701
  %394 = load i32, i32* %arrayidx705, align 4
  br label %cond.end.707

cond.false.706:                                   ; preds = %if.end.696
  br label %cond.end.707

cond.end.707:                                     ; preds = %cond.false.706, %cond.true.699
  %cond708 = phi i32 [ %394, %cond.true.699 ], [ 0, %cond.false.706 ]
  store i32 %cond708, i32* %d, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end.707
  %395 = load i32, i32* %d, align 4
  %396 = load i32, i32* %i, align 4
  %inc709 = add i32 %396, 1
  store i32 %inc709, i32* %i, align 4
  %idxprom710 = zext i32 %396 to i64
  %397 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub711 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %397, i32 0, i32 1
  %trees712 = bitcast %union.anon* %sub711 to %struct.anon*
  %t_blens713 = getelementptr inbounds %struct.anon, %struct.anon* %trees712, i32 0, i32 2
  %arrayidx714 = getelementptr inbounds [320 x i32], [320 x i32]* %t_blens713, i32 0, i64 %idxprom710
  store i32 %395, i32* %arrayidx714, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %398 = load i32, i32* %j, align 4
  %dec715 = add i32 %398, -1
  store i32 %dec715, i32* %j, align 4
  %tobool716 = icmp ne i32 %dec715, 0
  br i1 %tobool716, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %399 = load i32, i32* %i, align 4
  %400 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub717 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %400, i32 0, i32 1
  %trees718 = bitcast %union.anon* %sub717 to %struct.anon*
  %index719 = getelementptr inbounds %struct.anon, %struct.anon* %trees718, i32 0, i32 1
  store i32 %399, i32* %index719, align 4
  br label %if.end.720

if.end.720:                                       ; preds = %do.end, %if.then.584
  br label %while.cond.512

while.end.721:                                    ; preds = %while.cond.512
  %401 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub722 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %401, i32 0, i32 1
  %trees723 = bitcast %union.anon* %sub722 to %struct.anon*
  %tb724 = getelementptr inbounds %struct.anon, %struct.anon* %trees723, i32 0, i32 4
  store %struct.inflate_huft_s* null, %struct.inflate_huft_s** %tb724, align 8
  store i32 0, i32* %hn725, align 4
  %402 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub726 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %402, i32 0, i32 1
  %trees727 = bitcast %union.anon* %sub726 to %struct.anon*
  %table728 = getelementptr inbounds %struct.anon, %struct.anon* %trees727, i32 0, i32 0
  %403 = load i32, i32* %table728, align 4
  %t729 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %403, i32* %t729, align 4
  %t730 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %404 = load i32, i32* %t730, align 4
  %and731 = and i32 %404, 31
  %add732 = add i32 257, %and731
  store i32 %add732, i32* %nl, align 4
  %t733 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %405 = load i32, i32* %t733, align 4
  %shr734 = lshr i32 %405, 5
  %and735 = and i32 %shr734, 31
  %add736 = add i32 1, %and735
  store i32 %add736, i32* %nd, align 4
  store i32 9, i32* %bl, align 4
  store i32 6, i32* %bd, align 4
  %406 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub737 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %406, i32 0, i32 1
  %trees738 = bitcast %union.anon* %sub737 to %struct.anon*
  %t_blens739 = getelementptr inbounds %struct.anon, %struct.anon* %trees738, i32 0, i32 2
  %arraydecay740 = getelementptr inbounds [320 x i32], [320 x i32]* %t_blens739, i32 0, i32 0
  %407 = load i32, i32* %nl, align 4
  %408 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %hufts741 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %408, i32 0, i32 5
  %arraydecay742 = getelementptr inbounds [1440 x %struct.inflate_huft_s], [1440 x %struct.inflate_huft_s]* %hufts741, i32 0, i32 0
  %call743 = call i32 @huft_build(i32* %arraydecay740, i32 %407, i32 257, i16* getelementptr inbounds ([31 x i16], [31 x i16]* @cplens, i32 0, i32 0), i16* getelementptr inbounds ([31 x i16], [31 x i16]* @cplext, i32 0, i32 0), %struct.inflate_huft_s** %tl, i32* %bl, %struct.inflate_huft_s* %arraydecay742, i32* %hn725)
  %t744 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %call743, i32* %t744, align 4
  %409 = load i32, i32* %bl, align 4
  %cmp745 = icmp eq i32 %409, 0
  br i1 %cmp745, label %if.then.747, label %if.end.749

if.then.747:                                      ; preds = %while.end.721
  %t748 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 -3, i32* %t748, align 4
  br label %if.end.749

if.end.749:                                       ; preds = %if.then.747, %while.end.721
  %t750 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %410 = load i32, i32* %t750, align 4
  %cmp751 = icmp eq i32 %410, 0
  br i1 %cmp751, label %if.then.753, label %if.end.764

if.then.753:                                      ; preds = %if.end.749
  %411 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub754 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %411, i32 0, i32 1
  %trees755 = bitcast %union.anon* %sub754 to %struct.anon*
  %t_blens756 = getelementptr inbounds %struct.anon, %struct.anon* %trees755, i32 0, i32 2
  %arraydecay757 = getelementptr inbounds [320 x i32], [320 x i32]* %t_blens756, i32 0, i32 0
  %412 = load i32, i32* %nl, align 4
  %idx.ext758 = sext i32 %412 to i64
  %add.ptr759 = getelementptr inbounds i32, i32* %arraydecay757, i64 %idx.ext758
  %413 = load i32, i32* %nd, align 4
  %414 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %hufts760 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %414, i32 0, i32 5
  %arraydecay761 = getelementptr inbounds [1440 x %struct.inflate_huft_s], [1440 x %struct.inflate_huft_s]* %hufts760, i32 0, i32 0
  %call762 = call i32 @huft_build(i32* %add.ptr759, i32 %413, i32 0, i16* getelementptr inbounds ([30 x i16], [30 x i16]* @cpdist, i32 0, i32 0), i16* getelementptr inbounds ([30 x i16], [30 x i16]* @cpdext, i32 0, i32 0), %struct.inflate_huft_s** %td, i32* %bd, %struct.inflate_huft_s* %arraydecay761, i32* %hn725)
  %t763 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %call762, i32* %t763, align 4
  br label %if.end.764

if.end.764:                                       ; preds = %if.then.753, %if.end.749
  %t765 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %415 = load i32, i32* %t765, align 4
  %cmp766 = icmp ne i32 %415, 0
  br i1 %cmp766, label %if.then.774, label %lor.lhs.false.768

lor.lhs.false.768:                                ; preds = %if.end.764
  %416 = load i32, i32* %bd, align 4
  %cmp769 = icmp eq i32 %416, 0
  br i1 %cmp769, label %land.lhs.true.771, label %if.end.786

land.lhs.true.771:                                ; preds = %lor.lhs.false.768
  %417 = load i32, i32* %nl, align 4
  %cmp772 = icmp sgt i32 %417, 257
  br i1 %cmp772, label %if.then.774, label %if.end.786

if.then.774:                                      ; preds = %land.lhs.true.771, %if.end.764
  %418 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode775 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %418, i32 0, i32 0
  store i32 17, i32* %mode775, align 4
  %b776 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %419 = load i64, i64* %b776, align 8
  %420 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb777 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %420, i32 0, i32 4
  store i64 %419, i64* %bitb777, align 8
  %k778 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %421 = load i32, i32* %k778, align 4
  %422 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk779 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %422, i32 0, i32 3
  store i32 %421, i32* %bitk779, align 4
  %n780 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %423 = load i32, i32* %n780, align 4
  %424 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in781 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %424, i32 0, i32 1
  store i32 %423, i32* %avail_in781, align 4
  %p782 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %425 = load i8*, i8** %p782, align 8
  %426 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in783 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %426, i32 0, i32 0
  store i8* %425, i8** %next_in783, align 8
  %q784 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %427 = load i8*, i8** %q784, align 8
  %428 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write785 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %428, i32 0, i32 9
  store i8* %427, i8** %write785, align 8
  %429 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %429)
  store i32 -3, i32* %retval
  br label %return

if.end.786:                                       ; preds = %land.lhs.true.771, %lor.lhs.false.768
  %430 = load i32, i32* %bl, align 4
  %conv787 = trunc i32 %430 to i8
  %431 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub788 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %431, i32 0, i32 1
  %decode789 = bitcast %union.anon* %sub788 to %struct.anon.2*
  %t_codes790 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %decode789, i32 0, i32 0
  %lbits791 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %t_codes790, i32 0, i32 2
  store i8 %conv787, i8* %lbits791, align 1
  %432 = load i32, i32* %bd, align 4
  %conv792 = trunc i32 %432 to i8
  %433 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub793 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %433, i32 0, i32 1
  %decode794 = bitcast %union.anon* %sub793 to %struct.anon.2*
  %t_codes795 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %decode794, i32 0, i32 0
  %dbits796 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %t_codes795, i32 0, i32 3
  store i8 %conv792, i8* %dbits796, align 1
  %434 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %tl, align 8
  %435 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub797 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %435, i32 0, i32 1
  %decode798 = bitcast %union.anon* %sub797 to %struct.anon.2*
  %t_codes799 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %decode798, i32 0, i32 0
  %ltree800 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %t_codes799, i32 0, i32 4
  store %struct.inflate_huft_s* %434, %struct.inflate_huft_s** %ltree800, align 8
  %436 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %td, align 8
  %437 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %sub801 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %437, i32 0, i32 1
  %decode802 = bitcast %union.anon* %sub801 to %struct.anon.2*
  %t_codes803 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %decode802, i32 0, i32 0
  %dtree804 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %t_codes803, i32 0, i32 5
  store %struct.inflate_huft_s* %436, %struct.inflate_huft_s** %dtree804, align 8
  %438 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode805 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %438, i32 0, i32 0
  store i32 0, i32* %mode805, align 4
  br label %sw.bb.806

sw.bb.806:                                        ; preds = %for.cond, %if.end.786
  %439 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %lbits807 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %439, i32 0, i32 2
  %440 = load i8, i8* %lbits807, align 1
  %conv808 = zext i8 %440 to i32
  %441 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub809 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %441, i32 0, i32 1
  %code = bitcast %union.anon.3* %sub809 to %struct.anon.4*
  %need = getelementptr inbounds %struct.anon.4, %struct.anon.4* %code, i32 0, i32 1
  store i32 %conv808, i32* %need, align 4
  %442 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %ltree810 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %442, i32 0, i32 4
  %443 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %ltree810, align 8
  %444 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub811 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %444, i32 0, i32 1
  %code812 = bitcast %union.anon.3* %sub811 to %struct.anon.4*
  %tree = getelementptr inbounds %struct.anon.4, %struct.anon.4* %code812, i32 0, i32 0
  store %struct.inflate_huft_s* %443, %struct.inflate_huft_s** %tree, align 8
  %445 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode813 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %445, i32 0, i32 0
  store i32 1, i32* %mode813, align 4
  br label %sw.bb.814

sw.bb.814:                                        ; preds = %for.cond, %sw.bb.806
  %446 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub815 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %446, i32 0, i32 1
  %code816 = bitcast %union.anon.3* %sub815 to %struct.anon.4*
  %need817 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %code816, i32 0, i32 1
  %447 = load i32, i32* %need817, align 4
  %t818 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %447, i32* %t818, align 4
  br label %while.cond.819

while.cond.819:                                   ; preds = %if.end.838, %sw.bb.814
  %k820 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %448 = load i32, i32* %k820, align 4
  %t821 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %449 = load i32, i32* %t821, align 4
  %cmp822 = icmp ult i32 %448, %449
  br i1 %cmp822, label %while.body.824, label %while.end.851

while.body.824:                                   ; preds = %while.cond.819
  %n825 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %450 = load i32, i32* %n825, align 4
  %tobool826 = icmp ne i32 %450, 0
  br i1 %tobool826, label %if.end.838, label %if.then.827

if.then.827:                                      ; preds = %while.body.824
  %b828 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %451 = load i64, i64* %b828, align 8
  %452 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb829 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %452, i32 0, i32 4
  store i64 %451, i64* %bitb829, align 8
  %k830 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %453 = load i32, i32* %k830, align 4
  %454 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk831 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %454, i32 0, i32 3
  store i32 %453, i32* %bitk831, align 4
  %n832 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %455 = load i32, i32* %n832, align 4
  %456 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in833 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %456, i32 0, i32 1
  store i32 %455, i32* %avail_in833, align 4
  %p834 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %457 = load i8*, i8** %p834, align 8
  %458 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in835 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %458, i32 0, i32 0
  store i8* %457, i8** %next_in835, align 8
  %q836 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %459 = load i8*, i8** %q836, align 8
  %460 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write837 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %460, i32 0, i32 9
  store i8* %459, i8** %write837, align 8
  %461 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %461)
  store i32 0, i32* %retval
  br label %return

if.end.838:                                       ; preds = %while.body.824
  %n839 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %462 = load i32, i32* %n839, align 4
  %dec840 = add i32 %462, -1
  store i32 %dec840, i32* %n839, align 4
  %p841 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %463 = load i8*, i8** %p841, align 8
  %incdec.ptr842 = getelementptr inbounds i8, i8* %463, i32 1
  store i8* %incdec.ptr842, i8** %p841, align 8
  %464 = load i8, i8* %463, align 1
  %conv843 = zext i8 %464 to i64
  %k844 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %465 = load i32, i32* %k844, align 4
  %sh_prom845 = zext i32 %465 to i64
  %shl846 = shl i64 %conv843, %sh_prom845
  %b847 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %466 = load i64, i64* %b847, align 8
  %or848 = or i64 %466, %shl846
  store i64 %or848, i64* %b847, align 8
  %k849 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %467 = load i32, i32* %k849, align 4
  %add850 = add i32 %467, 8
  store i32 %add850, i32* %k849, align 4
  br label %while.cond.819

while.end.851:                                    ; preds = %while.cond.819
  %468 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub852 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %468, i32 0, i32 1
  %code853 = bitcast %union.anon.3* %sub852 to %struct.anon.4*
  %tree854 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %code853, i32 0, i32 0
  %469 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %tree854, align 8
  %b855 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %470 = load i64, i64* %b855, align 8
  %conv856 = trunc i64 %470 to i32
  %t857 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %471 = load i32, i32* %t857, align 4
  %idxprom858 = zext i32 %471 to i64
  %arrayidx859 = getelementptr inbounds [17 x i16], [17 x i16]* @inflate_mask, i32 0, i64 %idxprom858
  %472 = load i16, i16* %arrayidx859, align 2
  %conv860 = zext i16 %472 to i32
  %and861 = and i32 %conv856, %conv860
  %idx.ext862 = zext i32 %and861 to i64
  %add.ptr863 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %469, i64 %idx.ext862
  %j864 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  store %struct.inflate_huft_s* %add.ptr863, %struct.inflate_huft_s** %j864, align 8
  %j865 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  %473 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %j865, align 8
  %word866 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %473, i32 0, i32 0
  %what867 = bitcast %union.anon.0* %word866 to %struct.anon.1*
  %Bits868 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %what867, i32 0, i32 1
  %474 = load i8, i8* %Bits868, align 1
  %conv869 = zext i8 %474 to i32
  %b870 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %475 = load i64, i64* %b870, align 8
  %sh_prom871 = zext i32 %conv869 to i64
  %shr872 = lshr i64 %475, %sh_prom871
  store i64 %shr872, i64* %b870, align 8
  %j873 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  %476 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %j873, align 8
  %word874 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %476, i32 0, i32 0
  %what875 = bitcast %union.anon.0* %word874 to %struct.anon.1*
  %Bits876 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %what875, i32 0, i32 1
  %477 = load i8, i8* %Bits876, align 1
  %conv877 = zext i8 %477 to i32
  %k878 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %478 = load i32, i32* %k878, align 4
  %sub879 = sub i32 %478, %conv877
  store i32 %sub879, i32* %k878, align 4
  %j880 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  %479 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %j880, align 8
  %word881 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %479, i32 0, i32 0
  %what882 = bitcast %union.anon.0* %word881 to %struct.anon.1*
  %Exop = getelementptr inbounds %struct.anon.1, %struct.anon.1* %what882, i32 0, i32 0
  %480 = load i8, i8* %Exop, align 1
  %conv883 = zext i8 %480 to i32
  %e = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 8
  store i32 %conv883, i32* %e, align 4
  %e884 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 8
  %481 = load i32, i32* %e884, align 4
  %cmp885 = icmp eq i32 %481, 0
  br i1 %cmp885, label %if.then.887, label %if.end.893

if.then.887:                                      ; preds = %while.end.851
  %j888 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  %482 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %j888, align 8
  %base889 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %482, i32 0, i32 1
  %483 = load i16, i16* %base889, align 2
  %conv890 = zext i16 %483 to i32
  %484 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub891 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %484, i32 0, i32 1
  %lit = bitcast %union.anon.3* %sub891 to i32*
  store i32 %conv890, i32* %lit, align 4
  %485 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode892 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %485, i32 0, i32 0
  store i32 6, i32* %mode892, align 4
  br label %sw.epilog.1560

if.end.893:                                       ; preds = %while.end.851
  %e894 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 8
  %486 = load i32, i32* %e894, align 4
  %and895 = and i32 %486, 16
  %tobool896 = icmp ne i32 %and895, 0
  br i1 %tobool896, label %if.then.897, label %if.end.905

if.then.897:                                      ; preds = %if.end.893
  %e898 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 8
  %487 = load i32, i32* %e898, align 4
  %and899 = and i32 %487, 15
  %488 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub900 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %488, i32 0, i32 1
  %copy = bitcast %union.anon.3* %sub900 to %struct.anon.5*
  %get = getelementptr inbounds %struct.anon.5, %struct.anon.5* %copy, i32 0, i32 0
  store i32 %and899, i32* %get, align 4
  %j901 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  %489 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %j901, align 8
  %base902 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %489, i32 0, i32 1
  %490 = load i16, i16* %base902, align 2
  %conv903 = zext i16 %490 to i32
  %491 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %len = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %491, i32 0, i32 0
  store i32 %conv903, i32* %len, align 4
  %492 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode904 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %492, i32 0, i32 0
  store i32 2, i32* %mode904, align 4
  br label %sw.epilog.1560

if.end.905:                                       ; preds = %if.end.893
  %e906 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 8
  %493 = load i32, i32* %e906, align 4
  %and907 = and i32 %493, 64
  %cmp908 = icmp eq i32 %and907, 0
  br i1 %cmp908, label %if.then.910, label %if.end.924

if.then.910:                                      ; preds = %if.end.905
  %e911 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 8
  %494 = load i32, i32* %e911, align 4
  %495 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub912 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %495, i32 0, i32 1
  %code913 = bitcast %union.anon.3* %sub912 to %struct.anon.4*
  %need914 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %code913, i32 0, i32 1
  store i32 %494, i32* %need914, align 4
  %j915 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  %496 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %j915, align 8
  %j916 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  %497 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %j916, align 8
  %base917 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %497, i32 0, i32 1
  %498 = load i16, i16* %base917, align 2
  %conv918 = zext i16 %498 to i32
  %idx.ext919 = sext i32 %conv918 to i64
  %add.ptr920 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %496, i64 %idx.ext919
  %499 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub921 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %499, i32 0, i32 1
  %code922 = bitcast %union.anon.3* %sub921 to %struct.anon.4*
  %tree923 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %code922, i32 0, i32 0
  store %struct.inflate_huft_s* %add.ptr920, %struct.inflate_huft_s** %tree923, align 8
  br label %sw.epilog.1560

if.end.924:                                       ; preds = %if.end.905
  %e925 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 8
  %500 = load i32, i32* %e925, align 4
  %and926 = and i32 %500, 32
  %tobool927 = icmp ne i32 %and926, 0
  br i1 %tobool927, label %if.then.928, label %if.end.930

if.then.928:                                      ; preds = %if.end.924
  %501 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode929 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %501, i32 0, i32 0
  store i32 7, i32* %mode929, align 4
  br label %sw.epilog.1560

if.end.930:                                       ; preds = %if.end.924
  br label %bad

sw.bb.931:                                        ; preds = %for.cond
  %502 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub932 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %502, i32 0, i32 1
  %copy933 = bitcast %union.anon.3* %sub932 to %struct.anon.5*
  %get934 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %copy933, i32 0, i32 0
  %503 = load i32, i32* %get934, align 4
  %t935 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %503, i32* %t935, align 4
  br label %while.cond.936

while.cond.936:                                   ; preds = %if.end.955, %sw.bb.931
  %k937 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %504 = load i32, i32* %k937, align 4
  %t938 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %505 = load i32, i32* %t938, align 4
  %cmp939 = icmp ult i32 %504, %505
  br i1 %cmp939, label %while.body.941, label %while.end.968

while.body.941:                                   ; preds = %while.cond.936
  %n942 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %506 = load i32, i32* %n942, align 4
  %tobool943 = icmp ne i32 %506, 0
  br i1 %tobool943, label %if.end.955, label %if.then.944

if.then.944:                                      ; preds = %while.body.941
  %b945 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %507 = load i64, i64* %b945, align 8
  %508 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb946 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %508, i32 0, i32 4
  store i64 %507, i64* %bitb946, align 8
  %k947 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %509 = load i32, i32* %k947, align 4
  %510 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk948 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %510, i32 0, i32 3
  store i32 %509, i32* %bitk948, align 4
  %n949 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %511 = load i32, i32* %n949, align 4
  %512 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in950 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %512, i32 0, i32 1
  store i32 %511, i32* %avail_in950, align 4
  %p951 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %513 = load i8*, i8** %p951, align 8
  %514 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in952 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %514, i32 0, i32 0
  store i8* %513, i8** %next_in952, align 8
  %q953 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %515 = load i8*, i8** %q953, align 8
  %516 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write954 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %516, i32 0, i32 9
  store i8* %515, i8** %write954, align 8
  %517 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %517)
  store i32 0, i32* %retval
  br label %return

if.end.955:                                       ; preds = %while.body.941
  %n956 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %518 = load i32, i32* %n956, align 4
  %dec957 = add i32 %518, -1
  store i32 %dec957, i32* %n956, align 4
  %p958 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %519 = load i8*, i8** %p958, align 8
  %incdec.ptr959 = getelementptr inbounds i8, i8* %519, i32 1
  store i8* %incdec.ptr959, i8** %p958, align 8
  %520 = load i8, i8* %519, align 1
  %conv960 = zext i8 %520 to i64
  %k961 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %521 = load i32, i32* %k961, align 4
  %sh_prom962 = zext i32 %521 to i64
  %shl963 = shl i64 %conv960, %sh_prom962
  %b964 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %522 = load i64, i64* %b964, align 8
  %or965 = or i64 %522, %shl963
  store i64 %or965, i64* %b964, align 8
  %k966 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %523 = load i32, i32* %k966, align 4
  %add967 = add i32 %523, 8
  store i32 %add967, i32* %k966, align 4
  br label %while.cond.936

while.end.968:                                    ; preds = %while.cond.936
  %b969 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %524 = load i64, i64* %b969, align 8
  %conv970 = trunc i64 %524 to i32
  %t971 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %525 = load i32, i32* %t971, align 4
  %idxprom972 = zext i32 %525 to i64
  %arrayidx973 = getelementptr inbounds [17 x i16], [17 x i16]* @inflate_mask, i32 0, i64 %idxprom972
  %526 = load i16, i16* %arrayidx973, align 2
  %conv974 = zext i16 %526 to i32
  %and975 = and i32 %conv970, %conv974
  %527 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %len976 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %527, i32 0, i32 0
  %528 = load i32, i32* %len976, align 4
  %add977 = add i32 %528, %and975
  store i32 %add977, i32* %len976, align 4
  %t978 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %529 = load i32, i32* %t978, align 4
  %b979 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %530 = load i64, i64* %b979, align 8
  %sh_prom980 = zext i32 %529 to i64
  %shr981 = lshr i64 %530, %sh_prom980
  store i64 %shr981, i64* %b979, align 8
  %t982 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %531 = load i32, i32* %t982, align 4
  %k983 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %532 = load i32, i32* %k983, align 4
  %sub984 = sub i32 %532, %531
  store i32 %sub984, i32* %k983, align 4
  %533 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %dbits985 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %533, i32 0, i32 3
  %534 = load i8, i8* %dbits985, align 1
  %conv986 = zext i8 %534 to i32
  %535 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub987 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %535, i32 0, i32 1
  %code988 = bitcast %union.anon.3* %sub987 to %struct.anon.4*
  %need989 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %code988, i32 0, i32 1
  store i32 %conv986, i32* %need989, align 4
  %536 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %dtree990 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %536, i32 0, i32 5
  %537 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %dtree990, align 8
  %538 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub991 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %538, i32 0, i32 1
  %code992 = bitcast %union.anon.3* %sub991 to %struct.anon.4*
  %tree993 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %code992, i32 0, i32 0
  store %struct.inflate_huft_s* %537, %struct.inflate_huft_s** %tree993, align 8
  %539 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode994 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %539, i32 0, i32 0
  store i32 3, i32* %mode994, align 4
  br label %sw.bb.995

sw.bb.995:                                        ; preds = %for.cond, %while.end.968
  %540 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub996 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %540, i32 0, i32 1
  %code997 = bitcast %union.anon.3* %sub996 to %struct.anon.4*
  %need998 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %code997, i32 0, i32 1
  %541 = load i32, i32* %need998, align 4
  %t999 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %541, i32* %t999, align 4
  br label %while.cond.1000

while.cond.1000:                                  ; preds = %if.end.1019, %sw.bb.995
  %k1001 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %542 = load i32, i32* %k1001, align 4
  %t1002 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %543 = load i32, i32* %t1002, align 4
  %cmp1003 = icmp ult i32 %542, %543
  br i1 %cmp1003, label %while.body.1005, label %while.end.1032

while.body.1005:                                  ; preds = %while.cond.1000
  %n1006 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %544 = load i32, i32* %n1006, align 4
  %tobool1007 = icmp ne i32 %544, 0
  br i1 %tobool1007, label %if.end.1019, label %if.then.1008

if.then.1008:                                     ; preds = %while.body.1005
  %b1009 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %545 = load i64, i64* %b1009, align 8
  %546 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb1010 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %546, i32 0, i32 4
  store i64 %545, i64* %bitb1010, align 8
  %k1011 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %547 = load i32, i32* %k1011, align 4
  %548 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk1012 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %548, i32 0, i32 3
  store i32 %547, i32* %bitk1012, align 4
  %n1013 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %549 = load i32, i32* %n1013, align 4
  %550 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in1014 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %550, i32 0, i32 1
  store i32 %549, i32* %avail_in1014, align 4
  %p1015 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %551 = load i8*, i8** %p1015, align 8
  %552 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in1016 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %552, i32 0, i32 0
  store i8* %551, i8** %next_in1016, align 8
  %q1017 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %553 = load i8*, i8** %q1017, align 8
  %554 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1018 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %554, i32 0, i32 9
  store i8* %553, i8** %write1018, align 8
  %555 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %555)
  store i32 0, i32* %retval
  br label %return

if.end.1019:                                      ; preds = %while.body.1005
  %n1020 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %556 = load i32, i32* %n1020, align 4
  %dec1021 = add i32 %556, -1
  store i32 %dec1021, i32* %n1020, align 4
  %p1022 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %557 = load i8*, i8** %p1022, align 8
  %incdec.ptr1023 = getelementptr inbounds i8, i8* %557, i32 1
  store i8* %incdec.ptr1023, i8** %p1022, align 8
  %558 = load i8, i8* %557, align 1
  %conv1024 = zext i8 %558 to i64
  %k1025 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %559 = load i32, i32* %k1025, align 4
  %sh_prom1026 = zext i32 %559 to i64
  %shl1027 = shl i64 %conv1024, %sh_prom1026
  %b1028 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %560 = load i64, i64* %b1028, align 8
  %or1029 = or i64 %560, %shl1027
  store i64 %or1029, i64* %b1028, align 8
  %k1030 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %561 = load i32, i32* %k1030, align 4
  %add1031 = add i32 %561, 8
  store i32 %add1031, i32* %k1030, align 4
  br label %while.cond.1000

while.end.1032:                                   ; preds = %while.cond.1000
  %562 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub1033 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %562, i32 0, i32 1
  %code1034 = bitcast %union.anon.3* %sub1033 to %struct.anon.4*
  %tree1035 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %code1034, i32 0, i32 0
  %563 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %tree1035, align 8
  %b1036 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %564 = load i64, i64* %b1036, align 8
  %conv1037 = trunc i64 %564 to i32
  %t1038 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %565 = load i32, i32* %t1038, align 4
  %idxprom1039 = zext i32 %565 to i64
  %arrayidx1040 = getelementptr inbounds [17 x i16], [17 x i16]* @inflate_mask, i32 0, i64 %idxprom1039
  %566 = load i16, i16* %arrayidx1040, align 2
  %conv1041 = zext i16 %566 to i32
  %and1042 = and i32 %conv1037, %conv1041
  %idx.ext1043 = zext i32 %and1042 to i64
  %add.ptr1044 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %563, i64 %idx.ext1043
  %j1045 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  store %struct.inflate_huft_s* %add.ptr1044, %struct.inflate_huft_s** %j1045, align 8
  %j1046 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  %567 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %j1046, align 8
  %word1047 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %567, i32 0, i32 0
  %what1048 = bitcast %union.anon.0* %word1047 to %struct.anon.1*
  %Bits1049 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %what1048, i32 0, i32 1
  %568 = load i8, i8* %Bits1049, align 1
  %conv1050 = zext i8 %568 to i32
  %b1051 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %569 = load i64, i64* %b1051, align 8
  %sh_prom1052 = zext i32 %conv1050 to i64
  %shr1053 = lshr i64 %569, %sh_prom1052
  store i64 %shr1053, i64* %b1051, align 8
  %j1054 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  %570 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %j1054, align 8
  %word1055 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %570, i32 0, i32 0
  %what1056 = bitcast %union.anon.0* %word1055 to %struct.anon.1*
  %Bits1057 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %what1056, i32 0, i32 1
  %571 = load i8, i8* %Bits1057, align 1
  %conv1058 = zext i8 %571 to i32
  %k1059 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %572 = load i32, i32* %k1059, align 4
  %sub1060 = sub i32 %572, %conv1058
  store i32 %sub1060, i32* %k1059, align 4
  %j1061 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  %573 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %j1061, align 8
  %word1062 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %573, i32 0, i32 0
  %what1063 = bitcast %union.anon.0* %word1062 to %struct.anon.1*
  %Exop1064 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %what1063, i32 0, i32 0
  %574 = load i8, i8* %Exop1064, align 1
  %conv1065 = zext i8 %574 to i32
  %e1066 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 8
  store i32 %conv1065, i32* %e1066, align 4
  %e1067 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 8
  %575 = load i32, i32* %e1067, align 4
  %and1068 = and i32 %575, 16
  %tobool1069 = icmp ne i32 %and1068, 0
  br i1 %tobool1069, label %if.then.1070, label %if.end.1082

if.then.1070:                                     ; preds = %while.end.1032
  %e1071 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 8
  %576 = load i32, i32* %e1071, align 4
  %and1072 = and i32 %576, 15
  %577 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub1073 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %577, i32 0, i32 1
  %copy1074 = bitcast %union.anon.3* %sub1073 to %struct.anon.5*
  %get1075 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %copy1074, i32 0, i32 0
  store i32 %and1072, i32* %get1075, align 4
  %j1076 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  %578 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %j1076, align 8
  %base1077 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %578, i32 0, i32 1
  %579 = load i16, i16* %base1077, align 2
  %conv1078 = zext i16 %579 to i32
  %580 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub1079 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %580, i32 0, i32 1
  %copy1080 = bitcast %union.anon.3* %sub1079 to %struct.anon.5*
  %dist = getelementptr inbounds %struct.anon.5, %struct.anon.5* %copy1080, i32 0, i32 1
  store i32 %conv1078, i32* %dist, align 4
  %581 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode1081 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %581, i32 0, i32 0
  store i32 4, i32* %mode1081, align 4
  br label %sw.epilog.1560

if.end.1082:                                      ; preds = %while.end.1032
  %e1083 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 8
  %582 = load i32, i32* %e1083, align 4
  %and1084 = and i32 %582, 64
  %cmp1085 = icmp eq i32 %and1084, 0
  br i1 %cmp1085, label %if.then.1087, label %if.end.1101

if.then.1087:                                     ; preds = %if.end.1082
  %e1088 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 8
  %583 = load i32, i32* %e1088, align 4
  %584 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub1089 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %584, i32 0, i32 1
  %code1090 = bitcast %union.anon.3* %sub1089 to %struct.anon.4*
  %need1091 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %code1090, i32 0, i32 1
  store i32 %583, i32* %need1091, align 4
  %j1092 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  %585 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %j1092, align 8
  %j1093 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 7
  %586 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %j1093, align 8
  %base1094 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %586, i32 0, i32 1
  %587 = load i16, i16* %base1094, align 2
  %conv1095 = zext i16 %587 to i32
  %idx.ext1096 = sext i32 %conv1095 to i64
  %add.ptr1097 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %585, i64 %idx.ext1096
  %588 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub1098 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %588, i32 0, i32 1
  %code1099 = bitcast %union.anon.3* %sub1098 to %struct.anon.4*
  %tree1100 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %code1099, i32 0, i32 0
  store %struct.inflate_huft_s* %add.ptr1097, %struct.inflate_huft_s** %tree1100, align 8
  br label %sw.epilog.1560

if.end.1101:                                      ; preds = %if.end.1082
  br label %bad

sw.bb.1102:                                       ; preds = %for.cond
  %589 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub1103 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %589, i32 0, i32 1
  %copy1104 = bitcast %union.anon.3* %sub1103 to %struct.anon.5*
  %get1105 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %copy1104, i32 0, i32 0
  %590 = load i32, i32* %get1105, align 4
  %t1106 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  store i32 %590, i32* %t1106, align 4
  br label %while.cond.1107

while.cond.1107:                                  ; preds = %if.end.1126, %sw.bb.1102
  %k1108 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %591 = load i32, i32* %k1108, align 4
  %t1109 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %592 = load i32, i32* %t1109, align 4
  %cmp1110 = icmp ult i32 %591, %592
  br i1 %cmp1110, label %while.body.1112, label %while.end.1139

while.body.1112:                                  ; preds = %while.cond.1107
  %n1113 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %593 = load i32, i32* %n1113, align 4
  %tobool1114 = icmp ne i32 %593, 0
  br i1 %tobool1114, label %if.end.1126, label %if.then.1115

if.then.1115:                                     ; preds = %while.body.1112
  %b1116 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %594 = load i64, i64* %b1116, align 8
  %595 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb1117 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %595, i32 0, i32 4
  store i64 %594, i64* %bitb1117, align 8
  %k1118 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %596 = load i32, i32* %k1118, align 4
  %597 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk1119 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %597, i32 0, i32 3
  store i32 %596, i32* %bitk1119, align 4
  %n1120 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %598 = load i32, i32* %n1120, align 4
  %599 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in1121 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %599, i32 0, i32 1
  store i32 %598, i32* %avail_in1121, align 4
  %p1122 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %600 = load i8*, i8** %p1122, align 8
  %601 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in1123 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %601, i32 0, i32 0
  store i8* %600, i8** %next_in1123, align 8
  %q1124 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %602 = load i8*, i8** %q1124, align 8
  %603 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1125 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %603, i32 0, i32 9
  store i8* %602, i8** %write1125, align 8
  %604 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %604)
  store i32 0, i32* %retval
  br label %return

if.end.1126:                                      ; preds = %while.body.1112
  %n1127 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %605 = load i32, i32* %n1127, align 4
  %dec1128 = add i32 %605, -1
  store i32 %dec1128, i32* %n1127, align 4
  %p1129 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %606 = load i8*, i8** %p1129, align 8
  %incdec.ptr1130 = getelementptr inbounds i8, i8* %606, i32 1
  store i8* %incdec.ptr1130, i8** %p1129, align 8
  %607 = load i8, i8* %606, align 1
  %conv1131 = zext i8 %607 to i64
  %k1132 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %608 = load i32, i32* %k1132, align 4
  %sh_prom1133 = zext i32 %608 to i64
  %shl1134 = shl i64 %conv1131, %sh_prom1133
  %b1135 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %609 = load i64, i64* %b1135, align 8
  %or1136 = or i64 %609, %shl1134
  store i64 %or1136, i64* %b1135, align 8
  %k1137 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %610 = load i32, i32* %k1137, align 4
  %add1138 = add i32 %610, 8
  store i32 %add1138, i32* %k1137, align 4
  br label %while.cond.1107

while.end.1139:                                   ; preds = %while.cond.1107
  %b1140 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %611 = load i64, i64* %b1140, align 8
  %conv1141 = trunc i64 %611 to i32
  %t1142 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %612 = load i32, i32* %t1142, align 4
  %idxprom1143 = zext i32 %612 to i64
  %arrayidx1144 = getelementptr inbounds [17 x i16], [17 x i16]* @inflate_mask, i32 0, i64 %idxprom1143
  %613 = load i16, i16* %arrayidx1144, align 2
  %conv1145 = zext i16 %613 to i32
  %and1146 = and i32 %conv1141, %conv1145
  %614 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub1147 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %614, i32 0, i32 1
  %copy1148 = bitcast %union.anon.3* %sub1147 to %struct.anon.5*
  %dist1149 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %copy1148, i32 0, i32 1
  %615 = load i32, i32* %dist1149, align 4
  %add1150 = add i32 %615, %and1146
  store i32 %add1150, i32* %dist1149, align 4
  %t1151 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %616 = load i32, i32* %t1151, align 4
  %b1152 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %617 = load i64, i64* %b1152, align 8
  %sh_prom1153 = zext i32 %616 to i64
  %shr1154 = lshr i64 %617, %sh_prom1153
  store i64 %shr1154, i64* %b1152, align 8
  %t1155 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 0
  %618 = load i32, i32* %t1155, align 4
  %k1156 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %619 = load i32, i32* %k1156, align 4
  %sub1157 = sub i32 %619, %618
  store i32 %sub1157, i32* %k1156, align 4
  %620 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode1158 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %620, i32 0, i32 0
  store i32 5, i32* %mode1158, align 4
  br label %sw.bb.1159

sw.bb.1159:                                       ; preds = %for.cond, %while.end.1139
  %q1160 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %621 = load i8*, i8** %q1160, align 8
  %622 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window1161 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %622, i32 0, i32 6
  %arraydecay1162 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window1161, i32 0, i32 0
  %sub.ptr.lhs.cast1163 = ptrtoint i8* %621 to i64
  %sub.ptr.rhs.cast1164 = ptrtoint i8* %arraydecay1162 to i64
  %sub.ptr.sub1165 = sub i64 %sub.ptr.lhs.cast1163, %sub.ptr.rhs.cast1164
  %conv1166 = trunc i64 %sub.ptr.sub1165 to i32
  %623 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub1167 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %623, i32 0, i32 1
  %copy1168 = bitcast %union.anon.3* %sub1167 to %struct.anon.5*
  %dist1169 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %copy1168, i32 0, i32 1
  %624 = load i32, i32* %dist1169, align 4
  %cmp1170 = icmp ult i32 %conv1166, %624
  br i1 %cmp1170, label %cond.true.1172, label %cond.false.1186

cond.true.1172:                                   ; preds = %sw.bb.1159
  %625 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end1173 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %625, i32 0, i32 7
  %626 = load i8*, i8** %end1173, align 8
  %627 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub1174 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %627, i32 0, i32 1
  %copy1175 = bitcast %union.anon.3* %sub1174 to %struct.anon.5*
  %dist1176 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %copy1175, i32 0, i32 1
  %628 = load i32, i32* %dist1176, align 4
  %conv1177 = zext i32 %628 to i64
  %q1178 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %629 = load i8*, i8** %q1178, align 8
  %630 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window1179 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %630, i32 0, i32 6
  %arraydecay1180 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window1179, i32 0, i32 0
  %sub.ptr.lhs.cast1181 = ptrtoint i8* %629 to i64
  %sub.ptr.rhs.cast1182 = ptrtoint i8* %arraydecay1180 to i64
  %sub.ptr.sub1183 = sub i64 %sub.ptr.lhs.cast1181, %sub.ptr.rhs.cast1182
  %sub1184 = sub nsw i64 %conv1177, %sub.ptr.sub1183
  %idx.neg = sub i64 0, %sub1184
  %add.ptr1185 = getelementptr inbounds i8, i8* %626, i64 %idx.neg
  br label %cond.end.1194

cond.false.1186:                                  ; preds = %sw.bb.1159
  %q1187 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %631 = load i8*, i8** %q1187, align 8
  %632 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub1188 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %632, i32 0, i32 1
  %copy1189 = bitcast %union.anon.3* %sub1188 to %struct.anon.5*
  %dist1190 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %copy1189, i32 0, i32 1
  %633 = load i32, i32* %dist1190, align 4
  %idx.ext1191 = zext i32 %633 to i64
  %idx.neg1192 = sub i64 0, %idx.ext1191
  %add.ptr1193 = getelementptr inbounds i8, i8* %631, i64 %idx.neg1192
  br label %cond.end.1194

cond.end.1194:                                    ; preds = %cond.false.1186, %cond.true.1172
  %cond1195 = phi i8* [ %add.ptr1185, %cond.true.1172 ], [ %add.ptr1193, %cond.false.1186 ]
  %f1196 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 9
  store i8* %cond1195, i8** %f1196, align 8
  br label %while.cond.1197

while.cond.1197:                                  ; preds = %if.end.1337, %cond.end.1194
  %634 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %len1198 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %634, i32 0, i32 0
  %635 = load i32, i32* %len1198, align 4
  %tobool1199 = icmp ne i32 %635, 0
  br i1 %tobool1199, label %while.body.1200, label %while.end.1340

while.body.1200:                                  ; preds = %while.cond.1197
  %m1201 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  %636 = load i32, i32* %m1201, align 4
  %cmp1202 = icmp eq i32 %636, 0
  br i1 %cmp1202, label %if.then.1204, label %if.end.1322

if.then.1204:                                     ; preds = %while.body.1200
  %q1205 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %637 = load i8*, i8** %q1205, align 8
  %638 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end1206 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %638, i32 0, i32 7
  %639 = load i8*, i8** %end1206, align 8
  %cmp1207 = icmp eq i8* %637, %639
  br i1 %cmp1207, label %land.lhs.true.1209, label %if.end.1240

land.lhs.true.1209:                               ; preds = %if.then.1204
  %640 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1210 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %640, i32 0, i32 8
  %641 = load i8*, i8** %read1210, align 8
  %642 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window1211 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %642, i32 0, i32 6
  %arraydecay1212 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window1211, i32 0, i32 0
  %cmp1213 = icmp ne i8* %641, %arraydecay1212
  br i1 %cmp1213, label %if.then.1215, label %if.end.1240

if.then.1215:                                     ; preds = %land.lhs.true.1209
  %643 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window1216 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %643, i32 0, i32 6
  %arraydecay1217 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window1216, i32 0, i32 0
  %q1218 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  store i8* %arraydecay1217, i8** %q1218, align 8
  %q1219 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %644 = load i8*, i8** %q1219, align 8
  %645 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1220 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %645, i32 0, i32 8
  %646 = load i8*, i8** %read1220, align 8
  %cmp1221 = icmp ult i8* %644, %646
  br i1 %cmp1221, label %cond.true.1223, label %cond.false.1230

cond.true.1223:                                   ; preds = %if.then.1215
  %647 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1224 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %647, i32 0, i32 8
  %648 = load i8*, i8** %read1224, align 8
  %q1225 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %649 = load i8*, i8** %q1225, align 8
  %sub.ptr.lhs.cast1226 = ptrtoint i8* %648 to i64
  %sub.ptr.rhs.cast1227 = ptrtoint i8* %649 to i64
  %sub.ptr.sub1228 = sub i64 %sub.ptr.lhs.cast1226, %sub.ptr.rhs.cast1227
  %sub1229 = sub nsw i64 %sub.ptr.sub1228, 1
  br label %cond.end.1236

cond.false.1230:                                  ; preds = %if.then.1215
  %650 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end1231 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %650, i32 0, i32 7
  %651 = load i8*, i8** %end1231, align 8
  %q1232 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %652 = load i8*, i8** %q1232, align 8
  %sub.ptr.lhs.cast1233 = ptrtoint i8* %651 to i64
  %sub.ptr.rhs.cast1234 = ptrtoint i8* %652 to i64
  %sub.ptr.sub1235 = sub i64 %sub.ptr.lhs.cast1233, %sub.ptr.rhs.cast1234
  br label %cond.end.1236

cond.end.1236:                                    ; preds = %cond.false.1230, %cond.true.1223
  %cond1237 = phi i64 [ %sub1229, %cond.true.1223 ], [ %sub.ptr.sub1235, %cond.false.1230 ]
  %conv1238 = trunc i64 %cond1237 to i32
  %m1239 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  store i32 %conv1238, i32* %m1239, align 4
  br label %if.end.1240

if.end.1240:                                      ; preds = %cond.end.1236, %land.lhs.true.1209, %if.then.1204
  %m1241 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  %653 = load i32, i32* %m1241, align 4
  %cmp1242 = icmp eq i32 %653, 0
  br i1 %cmp1242, label %if.then.1244, label %if.end.1321

if.then.1244:                                     ; preds = %if.end.1240
  %q1245 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %654 = load i8*, i8** %q1245, align 8
  %655 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1246 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %655, i32 0, i32 9
  store i8* %654, i8** %write1246, align 8
  %656 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %656)
  %657 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1247 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %657, i32 0, i32 9
  %658 = load i8*, i8** %write1247, align 8
  %q1248 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  store i8* %658, i8** %q1248, align 8
  %q1249 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %659 = load i8*, i8** %q1249, align 8
  %660 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1250 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %660, i32 0, i32 8
  %661 = load i8*, i8** %read1250, align 8
  %cmp1251 = icmp ult i8* %659, %661
  br i1 %cmp1251, label %cond.true.1253, label %cond.false.1260

cond.true.1253:                                   ; preds = %if.then.1244
  %662 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1254 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %662, i32 0, i32 8
  %663 = load i8*, i8** %read1254, align 8
  %q1255 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %664 = load i8*, i8** %q1255, align 8
  %sub.ptr.lhs.cast1256 = ptrtoint i8* %663 to i64
  %sub.ptr.rhs.cast1257 = ptrtoint i8* %664 to i64
  %sub.ptr.sub1258 = sub i64 %sub.ptr.lhs.cast1256, %sub.ptr.rhs.cast1257
  %sub1259 = sub nsw i64 %sub.ptr.sub1258, 1
  br label %cond.end.1266

cond.false.1260:                                  ; preds = %if.then.1244
  %665 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end1261 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %665, i32 0, i32 7
  %666 = load i8*, i8** %end1261, align 8
  %q1262 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %667 = load i8*, i8** %q1262, align 8
  %sub.ptr.lhs.cast1263 = ptrtoint i8* %666 to i64
  %sub.ptr.rhs.cast1264 = ptrtoint i8* %667 to i64
  %sub.ptr.sub1265 = sub i64 %sub.ptr.lhs.cast1263, %sub.ptr.rhs.cast1264
  br label %cond.end.1266

cond.end.1266:                                    ; preds = %cond.false.1260, %cond.true.1253
  %cond1267 = phi i64 [ %sub1259, %cond.true.1253 ], [ %sub.ptr.sub1265, %cond.false.1260 ]
  %conv1268 = trunc i64 %cond1267 to i32
  %m1269 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  store i32 %conv1268, i32* %m1269, align 4
  %q1270 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %668 = load i8*, i8** %q1270, align 8
  %669 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end1271 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %669, i32 0, i32 7
  %670 = load i8*, i8** %end1271, align 8
  %cmp1272 = icmp eq i8* %668, %670
  br i1 %cmp1272, label %land.lhs.true.1274, label %if.end.1305

land.lhs.true.1274:                               ; preds = %cond.end.1266
  %671 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1275 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %671, i32 0, i32 8
  %672 = load i8*, i8** %read1275, align 8
  %673 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window1276 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %673, i32 0, i32 6
  %arraydecay1277 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window1276, i32 0, i32 0
  %cmp1278 = icmp ne i8* %672, %arraydecay1277
  br i1 %cmp1278, label %if.then.1280, label %if.end.1305

if.then.1280:                                     ; preds = %land.lhs.true.1274
  %674 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window1281 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %674, i32 0, i32 6
  %arraydecay1282 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window1281, i32 0, i32 0
  %q1283 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  store i8* %arraydecay1282, i8** %q1283, align 8
  %q1284 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %675 = load i8*, i8** %q1284, align 8
  %676 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1285 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %676, i32 0, i32 8
  %677 = load i8*, i8** %read1285, align 8
  %cmp1286 = icmp ult i8* %675, %677
  br i1 %cmp1286, label %cond.true.1288, label %cond.false.1295

cond.true.1288:                                   ; preds = %if.then.1280
  %678 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1289 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %678, i32 0, i32 8
  %679 = load i8*, i8** %read1289, align 8
  %q1290 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %680 = load i8*, i8** %q1290, align 8
  %sub.ptr.lhs.cast1291 = ptrtoint i8* %679 to i64
  %sub.ptr.rhs.cast1292 = ptrtoint i8* %680 to i64
  %sub.ptr.sub1293 = sub i64 %sub.ptr.lhs.cast1291, %sub.ptr.rhs.cast1292
  %sub1294 = sub nsw i64 %sub.ptr.sub1293, 1
  br label %cond.end.1301

cond.false.1295:                                  ; preds = %if.then.1280
  %681 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end1296 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %681, i32 0, i32 7
  %682 = load i8*, i8** %end1296, align 8
  %q1297 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %683 = load i8*, i8** %q1297, align 8
  %sub.ptr.lhs.cast1298 = ptrtoint i8* %682 to i64
  %sub.ptr.rhs.cast1299 = ptrtoint i8* %683 to i64
  %sub.ptr.sub1300 = sub i64 %sub.ptr.lhs.cast1298, %sub.ptr.rhs.cast1299
  br label %cond.end.1301

cond.end.1301:                                    ; preds = %cond.false.1295, %cond.true.1288
  %cond1302 = phi i64 [ %sub1294, %cond.true.1288 ], [ %sub.ptr.sub1300, %cond.false.1295 ]
  %conv1303 = trunc i64 %cond1302 to i32
  %m1304 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  store i32 %conv1303, i32* %m1304, align 4
  br label %if.end.1305

if.end.1305:                                      ; preds = %cond.end.1301, %land.lhs.true.1274, %cond.end.1266
  %m1306 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  %684 = load i32, i32* %m1306, align 4
  %cmp1307 = icmp eq i32 %684, 0
  br i1 %cmp1307, label %if.then.1309, label %if.end.1320

if.then.1309:                                     ; preds = %if.end.1305
  %b1310 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %685 = load i64, i64* %b1310, align 8
  %686 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb1311 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %686, i32 0, i32 4
  store i64 %685, i64* %bitb1311, align 8
  %k1312 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %687 = load i32, i32* %k1312, align 4
  %688 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk1313 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %688, i32 0, i32 3
  store i32 %687, i32* %bitk1313, align 4
  %n1314 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %689 = load i32, i32* %n1314, align 4
  %690 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in1315 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %690, i32 0, i32 1
  store i32 %689, i32* %avail_in1315, align 4
  %p1316 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %691 = load i8*, i8** %p1316, align 8
  %692 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in1317 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %692, i32 0, i32 0
  store i8* %691, i8** %next_in1317, align 8
  %q1318 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %693 = load i8*, i8** %q1318, align 8
  %694 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1319 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %694, i32 0, i32 9
  store i8* %693, i8** %write1319, align 8
  %695 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %695)
  store i32 0, i32* %retval
  br label %return

if.end.1320:                                      ; preds = %if.end.1305
  br label %if.end.1321

if.end.1321:                                      ; preds = %if.end.1320, %if.end.1240
  br label %if.end.1322

if.end.1322:                                      ; preds = %if.end.1321, %while.body.1200
  %f1323 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 9
  %696 = load i8*, i8** %f1323, align 8
  %incdec.ptr1324 = getelementptr inbounds i8, i8* %696, i32 1
  store i8* %incdec.ptr1324, i8** %f1323, align 8
  %697 = load i8, i8* %696, align 1
  %q1325 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %698 = load i8*, i8** %q1325, align 8
  %incdec.ptr1326 = getelementptr inbounds i8, i8* %698, i32 1
  store i8* %incdec.ptr1326, i8** %q1325, align 8
  store i8 %697, i8* %698, align 1
  %m1327 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  %699 = load i32, i32* %m1327, align 4
  %dec1328 = add i32 %699, -1
  store i32 %dec1328, i32* %m1327, align 4
  %f1329 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 9
  %700 = load i8*, i8** %f1329, align 8
  %701 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end1330 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %701, i32 0, i32 7
  %702 = load i8*, i8** %end1330, align 8
  %cmp1331 = icmp eq i8* %700, %702
  br i1 %cmp1331, label %if.then.1333, label %if.end.1337

if.then.1333:                                     ; preds = %if.end.1322
  %703 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window1334 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %703, i32 0, i32 6
  %arraydecay1335 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window1334, i32 0, i32 0
  %f1336 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 9
  store i8* %arraydecay1335, i8** %f1336, align 8
  br label %if.end.1337

if.end.1337:                                      ; preds = %if.then.1333, %if.end.1322
  %704 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %len1338 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %704, i32 0, i32 0
  %705 = load i32, i32* %len1338, align 4
  %dec1339 = add i32 %705, -1
  store i32 %dec1339, i32* %len1338, align 4
  br label %while.cond.1197

while.end.1340:                                   ; preds = %while.cond.1197
  %706 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode1341 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %706, i32 0, i32 0
  store i32 0, i32* %mode1341, align 4
  br label %sw.epilog.1560

sw.bb.1342:                                       ; preds = %for.cond
  %m1343 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  %707 = load i32, i32* %m1343, align 4
  %cmp1344 = icmp eq i32 %707, 0
  br i1 %cmp1344, label %if.then.1346, label %if.end.1464

if.then.1346:                                     ; preds = %sw.bb.1342
  %q1347 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %708 = load i8*, i8** %q1347, align 8
  %709 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end1348 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %709, i32 0, i32 7
  %710 = load i8*, i8** %end1348, align 8
  %cmp1349 = icmp eq i8* %708, %710
  br i1 %cmp1349, label %land.lhs.true.1351, label %if.end.1382

land.lhs.true.1351:                               ; preds = %if.then.1346
  %711 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1352 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %711, i32 0, i32 8
  %712 = load i8*, i8** %read1352, align 8
  %713 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window1353 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %713, i32 0, i32 6
  %arraydecay1354 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window1353, i32 0, i32 0
  %cmp1355 = icmp ne i8* %712, %arraydecay1354
  br i1 %cmp1355, label %if.then.1357, label %if.end.1382

if.then.1357:                                     ; preds = %land.lhs.true.1351
  %714 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window1358 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %714, i32 0, i32 6
  %arraydecay1359 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window1358, i32 0, i32 0
  %q1360 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  store i8* %arraydecay1359, i8** %q1360, align 8
  %q1361 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %715 = load i8*, i8** %q1361, align 8
  %716 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1362 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %716, i32 0, i32 8
  %717 = load i8*, i8** %read1362, align 8
  %cmp1363 = icmp ult i8* %715, %717
  br i1 %cmp1363, label %cond.true.1365, label %cond.false.1372

cond.true.1365:                                   ; preds = %if.then.1357
  %718 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1366 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %718, i32 0, i32 8
  %719 = load i8*, i8** %read1366, align 8
  %q1367 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %720 = load i8*, i8** %q1367, align 8
  %sub.ptr.lhs.cast1368 = ptrtoint i8* %719 to i64
  %sub.ptr.rhs.cast1369 = ptrtoint i8* %720 to i64
  %sub.ptr.sub1370 = sub i64 %sub.ptr.lhs.cast1368, %sub.ptr.rhs.cast1369
  %sub1371 = sub nsw i64 %sub.ptr.sub1370, 1
  br label %cond.end.1378

cond.false.1372:                                  ; preds = %if.then.1357
  %721 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end1373 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %721, i32 0, i32 7
  %722 = load i8*, i8** %end1373, align 8
  %q1374 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %723 = load i8*, i8** %q1374, align 8
  %sub.ptr.lhs.cast1375 = ptrtoint i8* %722 to i64
  %sub.ptr.rhs.cast1376 = ptrtoint i8* %723 to i64
  %sub.ptr.sub1377 = sub i64 %sub.ptr.lhs.cast1375, %sub.ptr.rhs.cast1376
  br label %cond.end.1378

cond.end.1378:                                    ; preds = %cond.false.1372, %cond.true.1365
  %cond1379 = phi i64 [ %sub1371, %cond.true.1365 ], [ %sub.ptr.sub1377, %cond.false.1372 ]
  %conv1380 = trunc i64 %cond1379 to i32
  %m1381 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  store i32 %conv1380, i32* %m1381, align 4
  br label %if.end.1382

if.end.1382:                                      ; preds = %cond.end.1378, %land.lhs.true.1351, %if.then.1346
  %m1383 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  %724 = load i32, i32* %m1383, align 4
  %cmp1384 = icmp eq i32 %724, 0
  br i1 %cmp1384, label %if.then.1386, label %if.end.1463

if.then.1386:                                     ; preds = %if.end.1382
  %q1387 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %725 = load i8*, i8** %q1387, align 8
  %726 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1388 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %726, i32 0, i32 9
  store i8* %725, i8** %write1388, align 8
  %727 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %727)
  %728 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1389 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %728, i32 0, i32 9
  %729 = load i8*, i8** %write1389, align 8
  %q1390 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  store i8* %729, i8** %q1390, align 8
  %q1391 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %730 = load i8*, i8** %q1391, align 8
  %731 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1392 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %731, i32 0, i32 8
  %732 = load i8*, i8** %read1392, align 8
  %cmp1393 = icmp ult i8* %730, %732
  br i1 %cmp1393, label %cond.true.1395, label %cond.false.1402

cond.true.1395:                                   ; preds = %if.then.1386
  %733 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1396 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %733, i32 0, i32 8
  %734 = load i8*, i8** %read1396, align 8
  %q1397 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %735 = load i8*, i8** %q1397, align 8
  %sub.ptr.lhs.cast1398 = ptrtoint i8* %734 to i64
  %sub.ptr.rhs.cast1399 = ptrtoint i8* %735 to i64
  %sub.ptr.sub1400 = sub i64 %sub.ptr.lhs.cast1398, %sub.ptr.rhs.cast1399
  %sub1401 = sub nsw i64 %sub.ptr.sub1400, 1
  br label %cond.end.1408

cond.false.1402:                                  ; preds = %if.then.1386
  %736 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end1403 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %736, i32 0, i32 7
  %737 = load i8*, i8** %end1403, align 8
  %q1404 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %738 = load i8*, i8** %q1404, align 8
  %sub.ptr.lhs.cast1405 = ptrtoint i8* %737 to i64
  %sub.ptr.rhs.cast1406 = ptrtoint i8* %738 to i64
  %sub.ptr.sub1407 = sub i64 %sub.ptr.lhs.cast1405, %sub.ptr.rhs.cast1406
  br label %cond.end.1408

cond.end.1408:                                    ; preds = %cond.false.1402, %cond.true.1395
  %cond1409 = phi i64 [ %sub1401, %cond.true.1395 ], [ %sub.ptr.sub1407, %cond.false.1402 ]
  %conv1410 = trunc i64 %cond1409 to i32
  %m1411 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  store i32 %conv1410, i32* %m1411, align 4
  %q1412 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %739 = load i8*, i8** %q1412, align 8
  %740 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end1413 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %740, i32 0, i32 7
  %741 = load i8*, i8** %end1413, align 8
  %cmp1414 = icmp eq i8* %739, %741
  br i1 %cmp1414, label %land.lhs.true.1416, label %if.end.1447

land.lhs.true.1416:                               ; preds = %cond.end.1408
  %742 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1417 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %742, i32 0, i32 8
  %743 = load i8*, i8** %read1417, align 8
  %744 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window1418 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %744, i32 0, i32 6
  %arraydecay1419 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window1418, i32 0, i32 0
  %cmp1420 = icmp ne i8* %743, %arraydecay1419
  br i1 %cmp1420, label %if.then.1422, label %if.end.1447

if.then.1422:                                     ; preds = %land.lhs.true.1416
  %745 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window1423 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %745, i32 0, i32 6
  %arraydecay1424 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window1423, i32 0, i32 0
  %q1425 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  store i8* %arraydecay1424, i8** %q1425, align 8
  %q1426 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %746 = load i8*, i8** %q1426, align 8
  %747 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1427 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %747, i32 0, i32 8
  %748 = load i8*, i8** %read1427, align 8
  %cmp1428 = icmp ult i8* %746, %748
  br i1 %cmp1428, label %cond.true.1430, label %cond.false.1437

cond.true.1430:                                   ; preds = %if.then.1422
  %749 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1431 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %749, i32 0, i32 8
  %750 = load i8*, i8** %read1431, align 8
  %q1432 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %751 = load i8*, i8** %q1432, align 8
  %sub.ptr.lhs.cast1433 = ptrtoint i8* %750 to i64
  %sub.ptr.rhs.cast1434 = ptrtoint i8* %751 to i64
  %sub.ptr.sub1435 = sub i64 %sub.ptr.lhs.cast1433, %sub.ptr.rhs.cast1434
  %sub1436 = sub nsw i64 %sub.ptr.sub1435, 1
  br label %cond.end.1443

cond.false.1437:                                  ; preds = %if.then.1422
  %752 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end1438 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %752, i32 0, i32 7
  %753 = load i8*, i8** %end1438, align 8
  %q1439 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %754 = load i8*, i8** %q1439, align 8
  %sub.ptr.lhs.cast1440 = ptrtoint i8* %753 to i64
  %sub.ptr.rhs.cast1441 = ptrtoint i8* %754 to i64
  %sub.ptr.sub1442 = sub i64 %sub.ptr.lhs.cast1440, %sub.ptr.rhs.cast1441
  br label %cond.end.1443

cond.end.1443:                                    ; preds = %cond.false.1437, %cond.true.1430
  %cond1444 = phi i64 [ %sub1436, %cond.true.1430 ], [ %sub.ptr.sub1442, %cond.false.1437 ]
  %conv1445 = trunc i64 %cond1444 to i32
  %m1446 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  store i32 %conv1445, i32* %m1446, align 4
  br label %if.end.1447

if.end.1447:                                      ; preds = %cond.end.1443, %land.lhs.true.1416, %cond.end.1408
  %m1448 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  %755 = load i32, i32* %m1448, align 4
  %cmp1449 = icmp eq i32 %755, 0
  br i1 %cmp1449, label %if.then.1451, label %if.end.1462

if.then.1451:                                     ; preds = %if.end.1447
  %b1452 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %756 = load i64, i64* %b1452, align 8
  %757 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb1453 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %757, i32 0, i32 4
  store i64 %756, i64* %bitb1453, align 8
  %k1454 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %758 = load i32, i32* %k1454, align 4
  %759 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk1455 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %759, i32 0, i32 3
  store i32 %758, i32* %bitk1455, align 4
  %n1456 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %760 = load i32, i32* %n1456, align 4
  %761 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in1457 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %761, i32 0, i32 1
  store i32 %760, i32* %avail_in1457, align 4
  %p1458 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %762 = load i8*, i8** %p1458, align 8
  %763 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in1459 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %763, i32 0, i32 0
  store i8* %762, i8** %next_in1459, align 8
  %q1460 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %764 = load i8*, i8** %q1460, align 8
  %765 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1461 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %765, i32 0, i32 9
  store i8* %764, i8** %write1461, align 8
  %766 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %766)
  store i32 0, i32* %retval
  br label %return

if.end.1462:                                      ; preds = %if.end.1447
  br label %if.end.1463

if.end.1463:                                      ; preds = %if.end.1462, %if.end.1382
  br label %if.end.1464

if.end.1464:                                      ; preds = %if.end.1463, %sw.bb.1342
  %767 = load %struct.inflate_codes_state*, %struct.inflate_codes_state** %c, align 8
  %sub1465 = getelementptr inbounds %struct.inflate_codes_state, %struct.inflate_codes_state* %767, i32 0, i32 1
  %lit1466 = bitcast %union.anon.3* %sub1465 to i32*
  %768 = load i32, i32* %lit1466, align 4
  %conv1467 = trunc i32 %768 to i8
  %q1468 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %769 = load i8*, i8** %q1468, align 8
  %incdec.ptr1469 = getelementptr inbounds i8, i8* %769, i32 1
  store i8* %incdec.ptr1469, i8** %q1468, align 8
  store i8 %conv1467, i8* %769, align 1
  %m1470 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  %770 = load i32, i32* %m1470, align 4
  %dec1471 = add i32 %770, -1
  store i32 %dec1471, i32* %m1470, align 4
  %771 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode1472 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %771, i32 0, i32 0
  store i32 0, i32* %mode1472, align 4
  br label %sw.epilog.1560

sw.bb.1473:                                       ; preds = %for.cond
  %k1474 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %772 = load i32, i32* %k1474, align 4
  %cmp1475 = icmp ugt i32 %772, 7
  br i1 %cmp1475, label %if.then.1477, label %if.end.1484

if.then.1477:                                     ; preds = %sw.bb.1473
  %k1478 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %773 = load i32, i32* %k1478, align 4
  %sub1479 = sub i32 %773, 8
  store i32 %sub1479, i32* %k1478, align 4
  %n1480 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %774 = load i32, i32* %n1480, align 4
  %inc1481 = add i32 %774, 1
  store i32 %inc1481, i32* %n1480, align 4
  %p1482 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %775 = load i8*, i8** %p1482, align 8
  %incdec.ptr1483 = getelementptr inbounds i8, i8* %775, i32 -1
  store i8* %incdec.ptr1483, i8** %p1482, align 8
  br label %if.end.1484

if.end.1484:                                      ; preds = %if.then.1477, %sw.bb.1473
  br label %sw.bb.1485

sw.bb.1485:                                       ; preds = %for.cond, %if.end.1484
  %q1486 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %776 = load i8*, i8** %q1486, align 8
  %777 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1487 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %777, i32 0, i32 9
  store i8* %776, i8** %write1487, align 8
  %778 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %778)
  %779 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1488 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %779, i32 0, i32 9
  %780 = load i8*, i8** %write1488, align 8
  %q1489 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  store i8* %780, i8** %q1489, align 8
  %q1490 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %781 = load i8*, i8** %q1490, align 8
  %782 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1491 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %782, i32 0, i32 8
  %783 = load i8*, i8** %read1491, align 8
  %cmp1492 = icmp ult i8* %781, %783
  br i1 %cmp1492, label %cond.true.1494, label %cond.false.1501

cond.true.1494:                                   ; preds = %sw.bb.1485
  %784 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1495 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %784, i32 0, i32 8
  %785 = load i8*, i8** %read1495, align 8
  %q1496 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %786 = load i8*, i8** %q1496, align 8
  %sub.ptr.lhs.cast1497 = ptrtoint i8* %785 to i64
  %sub.ptr.rhs.cast1498 = ptrtoint i8* %786 to i64
  %sub.ptr.sub1499 = sub i64 %sub.ptr.lhs.cast1497, %sub.ptr.rhs.cast1498
  %sub1500 = sub nsw i64 %sub.ptr.sub1499, 1
  br label %cond.end.1507

cond.false.1501:                                  ; preds = %sw.bb.1485
  %787 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end1502 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %787, i32 0, i32 7
  %788 = load i8*, i8** %end1502, align 8
  %q1503 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %789 = load i8*, i8** %q1503, align 8
  %sub.ptr.lhs.cast1504 = ptrtoint i8* %788 to i64
  %sub.ptr.rhs.cast1505 = ptrtoint i8* %789 to i64
  %sub.ptr.sub1506 = sub i64 %sub.ptr.lhs.cast1504, %sub.ptr.rhs.cast1505
  br label %cond.end.1507

cond.end.1507:                                    ; preds = %cond.false.1501, %cond.true.1494
  %cond1508 = phi i64 [ %sub1500, %cond.true.1494 ], [ %sub.ptr.sub1506, %cond.false.1501 ]
  %conv1509 = trunc i64 %cond1508 to i32
  %m1510 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 6
  store i32 %conv1509, i32* %m1510, align 4
  %790 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1511 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %790, i32 0, i32 9
  %791 = load i8*, i8** %write1511, align 8
  %792 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read1512 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %792, i32 0, i32 8
  %793 = load i8*, i8** %read1512, align 8
  %cmp1513 = icmp ne i8* %791, %793
  br i1 %cmp1513, label %if.then.1515, label %if.end.1526

if.then.1515:                                     ; preds = %cond.end.1507
  %b1516 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %794 = load i64, i64* %b1516, align 8
  %795 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb1517 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %795, i32 0, i32 4
  store i64 %794, i64* %bitb1517, align 8
  %k1518 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %796 = load i32, i32* %k1518, align 4
  %797 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk1519 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %797, i32 0, i32 3
  store i32 %796, i32* %bitk1519, align 4
  %n1520 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %798 = load i32, i32* %n1520, align 4
  %799 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in1521 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %799, i32 0, i32 1
  store i32 %798, i32* %avail_in1521, align 4
  %p1522 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %800 = load i8*, i8** %p1522, align 8
  %801 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in1523 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %801, i32 0, i32 0
  store i8* %800, i8** %next_in1523, align 8
  %q1524 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %802 = load i8*, i8** %q1524, align 8
  %803 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1525 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %803, i32 0, i32 9
  store i8* %802, i8** %write1525, align 8
  %804 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %804)
  store i32 0, i32* %retval
  br label %return

if.end.1526:                                      ; preds = %cond.end.1507
  %805 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode1527 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %805, i32 0, i32 0
  %806 = load i32, i32* %mode1527, align 4
  %cmp1528 = icmp eq i32 %806, 7
  br i1 %cmp1528, label %if.then.1530, label %if.end.1531

if.then.1530:                                     ; preds = %if.end.1526
  br label %if.end.1531

if.end.1531:                                      ; preds = %if.then.1530, %if.end.1526
  %807 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %last1532 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %807, i32 0, i32 2
  %808 = load i32, i32* %last1532, align 4
  %809 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode1533 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %809, i32 0, i32 0
  store i32 %808, i32* %mode1533, align 4
  %810 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode1534 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %810, i32 0, i32 0
  %811 = load i32, i32* %mode1534, align 4
  %cmp1535 = icmp eq i32 %811, 8
  br i1 %cmp1535, label %if.then.1537, label %if.end.1538

if.then.1537:                                     ; preds = %if.end.1531
  br label %sw.epilog.1560

if.end.1538:                                      ; preds = %if.end.1531
  %b1539 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %812 = load i64, i64* %b1539, align 8
  %813 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb1540 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %813, i32 0, i32 4
  store i64 %812, i64* %bitb1540, align 8
  %k1541 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %814 = load i32, i32* %k1541, align 4
  %815 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk1542 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %815, i32 0, i32 3
  store i32 %814, i32* %bitk1542, align 4
  %n1543 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %816 = load i32, i32* %n1543, align 4
  %817 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in1544 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %817, i32 0, i32 1
  store i32 %816, i32* %avail_in1544, align 4
  %p1545 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %818 = load i8*, i8** %p1545, align 8
  %819 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in1546 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %819, i32 0, i32 0
  store i8* %818, i8** %next_in1546, align 8
  %q1547 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %820 = load i8*, i8** %q1547, align 8
  %821 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1548 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %821, i32 0, i32 9
  store i8* %820, i8** %write1548, align 8
  %822 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %822)
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %for.cond
  br label %bad

bad:                                              ; preds = %sw.default, %if.end.1101, %if.end.930, %sw.bb.101
  %823 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %mode1549 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %823, i32 0, i32 0
  store i32 17, i32* %mode1549, align 4
  %b1550 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 1
  %824 = load i64, i64* %b1550, align 8
  %825 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitb1551 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %825, i32 0, i32 4
  store i64 %824, i64* %bitb1551, align 8
  %k1552 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 2
  %826 = load i32, i32* %k1552, align 4
  %827 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %bitk1553 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %827, i32 0, i32 3
  store i32 %826, i32* %bitk1553, align 4
  %n1554 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 4
  %828 = load i32, i32* %n1554, align 4
  %829 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_in1555 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %829, i32 0, i32 1
  store i32 %828, i32* %avail_in1555, align 4
  %p1556 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 3
  %830 = load i8*, i8** %p1556, align 8
  %831 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_in1557 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %831, i32 0, i32 0
  store i8* %830, i8** %next_in1557, align 8
  %q1558 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %_state, i32 0, i32 5
  %832 = load i8*, i8** %q1558, align 8
  %833 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1559 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %833, i32 0, i32 9
  store i8* %832, i8** %write1559, align 8
  %834 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  call void @inflate_flush(%struct.nsis_z_stream_s* %834)
  store i32 -2, i32* %retval
  br label %return

sw.epilog.1560:                                   ; preds = %if.then.1537, %if.end.1464, %while.end.1340, %if.then.1087, %if.then.1070, %if.then.928, %if.then.910, %if.then.897, %if.then.887, %if.then.504, %if.end.330, %cond.end.147, %sw.epilog
  br label %for.cond

return:                                           ; preds = %bad, %if.end.1538, %if.then.1515, %if.then.1451, %if.then.1309, %if.then.1115, %if.then.1008, %if.then.944, %if.then.827, %if.then.774, %if.then.684, %if.then.617, %if.then.542, %if.then.418, %if.then.378, %if.then.339, %if.then.271, %if.then.154, %if.then.110, %if.then
  %835 = load i32, i32* %retval
  ret i32 %835
}

; Function Attrs: nounwind uwtable
define internal void @inflate_flush(%struct.nsis_z_stream_s* %z) #0 {
entry:
  %z.addr = alloca %struct.nsis_z_stream_s*, align 8
  %s = alloca %struct.inflate_blocks_state*, align 8
  %n = alloca i32, align 4
  %q = alloca i8*, align 8
  store %struct.nsis_z_stream_s* %z, %struct.nsis_z_stream_s** %z.addr, align 8
  %0 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %blocks = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %0, i32 0, i32 5
  store %struct.inflate_blocks_state* %blocks, %struct.inflate_blocks_state** %s, align 8
  %1 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %1, i32 0, i32 8
  %2 = load i8*, i8** %read, align 8
  store i8* %2, i8** %q, align 8
  br label %again

again:                                            ; preds = %if.end, %entry
  %3 = load i8*, i8** %q, align 8
  %4 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %4, i32 0, i32 9
  %5 = load i8*, i8** %write, align 8
  %cmp = icmp ule i8* %3, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %again
  %6 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write1 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %6, i32 0, i32 9
  %7 = load i8*, i8** %write1, align 8
  br label %cond.end

cond.false:                                       ; preds = %again
  %8 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %8, i32 0, i32 7
  %9 = load i8*, i8** %end, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ %9, %cond.false ]
  %10 = load i8*, i8** %q, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %cond to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %n, align 4
  %11 = load i32, i32* %n, align 4
  %12 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_out = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %12, i32 0, i32 4
  %13 = load i32, i32* %avail_out, align 4
  %cmp2 = icmp ult i32 %11, %13
  br i1 %cmp2, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  %14 = load i32, i32* %n, align 4
  br label %cond.end.7

cond.false.5:                                     ; preds = %cond.end
  %15 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_out6 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %15, i32 0, i32 4
  %16 = load i32, i32* %avail_out6, align 4
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.5, %cond.true.4
  %cond8 = phi i32 [ %14, %cond.true.4 ], [ %16, %cond.false.5 ]
  store i32 %cond8, i32* %n, align 4
  %17 = load i32, i32* %n, align 4
  %18 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %avail_out9 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %18, i32 0, i32 4
  %19 = load i32, i32* %avail_out9, align 4
  %sub = sub i32 %19, %17
  store i32 %sub, i32* %avail_out9, align 4
  %20 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_out = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %20, i32 0, i32 3
  %21 = load i8*, i8** %next_out, align 8
  %22 = load i8*, i8** %q, align 8
  %23 = load i32, i32* %n, align 4
  %conv10 = zext i32 %23 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 %conv10, i32 1, i1 false)
  %24 = load i32, i32* %n, align 4
  %25 = load %struct.nsis_z_stream_s*, %struct.nsis_z_stream_s** %z.addr, align 8
  %next_out11 = getelementptr inbounds %struct.nsis_z_stream_s, %struct.nsis_z_stream_s* %25, i32 0, i32 3
  %26 = load i8*, i8** %next_out11, align 8
  %idx.ext = zext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %next_out11, align 8
  %27 = load i32, i32* %n, align 4
  %28 = load i8*, i8** %q, align 8
  %idx.ext12 = zext i32 %27 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %28, i64 %idx.ext12
  store i8* %add.ptr13, i8** %q, align 8
  %29 = load i8*, i8** %q, align 8
  %30 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end14 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %30, i32 0, i32 7
  %31 = load i8*, i8** %end14, align 8
  %cmp15 = icmp eq i8* %29, %31
  br i1 %cmp15, label %if.then, label %if.end.25

if.then:                                          ; preds = %cond.end.7
  %32 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %32, i32 0, i32 6
  %arraydecay = getelementptr inbounds [32768 x i8], [32768 x i8]* %window, i32 0, i32 0
  store i8* %arraydecay, i8** %q, align 8
  %33 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write17 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %33, i32 0, i32 9
  %34 = load i8*, i8** %write17, align 8
  %35 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %end18 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %35, i32 0, i32 7
  %36 = load i8*, i8** %end18, align 8
  %cmp19 = icmp eq i8* %34, %36
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then
  %37 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %window22 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %37, i32 0, i32 6
  %arraydecay23 = getelementptr inbounds [32768 x i8], [32768 x i8]* %window22, i32 0, i32 0
  %38 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %write24 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %38, i32 0, i32 9
  store i8* %arraydecay23, i8** %write24, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then
  br label %again

if.end.25:                                        ; preds = %cond.end.7
  %39 = load i8*, i8** %q, align 8
  %40 = load %struct.inflate_blocks_state*, %struct.inflate_blocks_state** %s, align 8
  %read26 = getelementptr inbounds %struct.inflate_blocks_state, %struct.inflate_blocks_state* %40, i32 0, i32 8
  store i8* %39, i8** %read26, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @huft_build(i32* %b, i32 %n, i32 %s, i16* %d, i16* %e, %struct.inflate_huft_s** %t, i32* %m, %struct.inflate_huft_s* %hp, i32* %hn) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %d.addr = alloca i16*, align 8
  %e.addr = alloca i16*, align 8
  %t.addr = alloca %struct.inflate_huft_s**, align 8
  %m.addr = alloca i32*, align 8
  %hp.addr = alloca %struct.inflate_huft_s*, align 8
  %hn.addr = alloca i32*, align 8
  %a = alloca i32, align 4
  %c = alloca [16 x i32], align 16
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %p = alloca i32*, align 8
  %q = alloca %struct.inflate_huft_s*, align 8
  %r = alloca %struct.inflate_huft_s, align 2
  %u = alloca [15 x %struct.inflate_huft_s*], align 16
  %w = alloca i32, align 4
  %x = alloca [16 x i32], align 16
  %xp = alloca i32*, align 8
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %nextw = alloca i32, align 4
  store i32* %b, i32** %b.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %s, i32* %s.addr, align 4
  store i16* %d, i16** %d.addr, align 8
  store i16* %e, i16** %e.addr, align 8
  store %struct.inflate_huft_s** %t, %struct.inflate_huft_s*** %t.addr, align 8
  store i32* %m, i32** %m.addr, align 8
  store %struct.inflate_huft_s* %hp, %struct.inflate_huft_s** %hp.addr, align 8
  store i32* %hn, i32** %hn.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %c, i32 0, i32 0
  store i32* %arraydecay, i32** %p, align 8
  store i32 16, i32* %y, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %y, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %y, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32*, i32** %p, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %1, i32 1
  store i32* %incdec.ptr, i32** %p, align 8
  store i32 0, i32* %1, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load i32*, i32** %b.addr, align 8
  store i32* %2, i32** %p, align 8
  %3 = load i32, i32* %n.addr, align 4
  store i32 %3, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %4 = load i32*, i32** %p, align 8
  %incdec.ptr1 = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %incdec.ptr1, i32** %p, align 8
  %5 = load i32, i32* %4, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %c, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %arrayidx, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i32, i32* %i, align 4
  %dec2 = add i32 %7, -1
  store i32 %dec2, i32* %i, align 4
  %tobool3 = icmp ne i32 %dec2, 0
  br i1 %tobool3, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %arrayidx4 = getelementptr inbounds [16 x i32], [16 x i32]* %c, i32 0, i64 0
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %10 = load %struct.inflate_huft_s**, %struct.inflate_huft_s*** %t.addr, align 8
  store %struct.inflate_huft_s* null, %struct.inflate_huft_s** %10, align 8
  %11 = load i32*, i32** %m.addr, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.end
  %12 = load i32*, i32** %m.addr, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %l, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %j, align 4
  %cmp5 = icmp ule i32 %14, 15
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %j, align 4
  %idxprom6 = zext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [16 x i32], [16 x i32]* %c, i32 0, i64 %idxprom6
  %16 = load i32, i32* %arrayidx7, align 4
  %tobool8 = icmp ne i32 %16, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  br label %for.end

if.end.10:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %17 = load i32, i32* %j, align 4
  %inc11 = add i32 %17, 1
  store i32 %inc11, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  %18 = load i32, i32* %j, align 4
  store i32 %18, i32* %k, align 4
  %19 = load i32, i32* %l, align 4
  %20 = load i32, i32* %j, align 4
  %cmp12 = icmp ult i32 %19, %20
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  %21 = load i32, i32* %j, align 4
  store i32 %21, i32* %l, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %for.end
  store i32 15, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.23, %if.end.14
  %22 = load i32, i32* %i, align 4
  %tobool16 = icmp ne i32 %22, 0
  br i1 %tobool16, label %for.body.17, label %for.end.25

for.body.17:                                      ; preds = %for.cond.15
  %23 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %23 to i64
  %arrayidx19 = getelementptr inbounds [16 x i32], [16 x i32]* %c, i32 0, i64 %idxprom18
  %24 = load i32, i32* %arrayidx19, align 4
  %tobool20 = icmp ne i32 %24, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body.17
  br label %for.end.25

if.end.22:                                        ; preds = %for.body.17
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %25 = load i32, i32* %i, align 4
  %dec24 = add i32 %25, -1
  store i32 %dec24, i32* %i, align 4
  br label %for.cond.15

for.end.25:                                       ; preds = %if.then.21, %for.cond.15
  %26 = load i32, i32* %i, align 4
  store i32 %26, i32* %g, align 4
  %27 = load i32, i32* %l, align 4
  %28 = load i32, i32* %i, align 4
  %cmp26 = icmp ugt i32 %27, %28
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.end.25
  %29 = load i32, i32* %i, align 4
  store i32 %29, i32* %l, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %for.end.25
  %30 = load i32, i32* %l, align 4
  %31 = load i32*, i32** %m.addr, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %j, align 4
  %shl = shl i32 1, %32
  store i32 %shl, i32* %y, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.37, %if.end.28
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %i, align 4
  %cmp30 = icmp ult i32 %33, %34
  br i1 %cmp30, label %for.body.31, label %for.end.40

for.body.31:                                      ; preds = %for.cond.29
  %35 = load i32, i32* %j, align 4
  %idxprom32 = zext i32 %35 to i64
  %arrayidx33 = getelementptr inbounds [16 x i32], [16 x i32]* %c, i32 0, i64 %idxprom32
  %36 = load i32, i32* %arrayidx33, align 4
  %37 = load i32, i32* %y, align 4
  %sub = sub i32 %37, %36
  store i32 %sub, i32* %y, align 4
  %cmp34 = icmp slt i32 %sub, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body.31
  store i32 -3, i32* %retval
  br label %return

if.end.36:                                        ; preds = %for.body.31
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %38 = load i32, i32* %j, align 4
  %inc38 = add i32 %38, 1
  store i32 %inc38, i32* %j, align 4
  %39 = load i32, i32* %y, align 4
  %shl39 = shl i32 %39, 1
  store i32 %shl39, i32* %y, align 4
  br label %for.cond.29

for.end.40:                                       ; preds = %for.cond.29
  %40 = load i32, i32* %i, align 4
  %idxprom41 = zext i32 %40 to i64
  %arrayidx42 = getelementptr inbounds [16 x i32], [16 x i32]* %c, i32 0, i64 %idxprom41
  %41 = load i32, i32* %arrayidx42, align 4
  %42 = load i32, i32* %y, align 4
  %sub43 = sub i32 %42, %41
  store i32 %sub43, i32* %y, align 4
  %cmp44 = icmp slt i32 %sub43, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.end.40
  store i32 -3, i32* %retval
  br label %return

if.end.46:                                        ; preds = %for.end.40
  %43 = load i32, i32* %y, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom47 = zext i32 %44 to i64
  %arrayidx48 = getelementptr inbounds [16 x i32], [16 x i32]* %c, i32 0, i64 %idxprom47
  %45 = load i32, i32* %arrayidx48, align 4
  %add = add i32 %45, %43
  store i32 %add, i32* %arrayidx48, align 4
  store i32 0, i32* %j, align 4
  %arrayidx49 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 1
  store i32 0, i32* %arrayidx49, align 4
  %arraydecay50 = getelementptr inbounds [16 x i32], [16 x i32]* %c, i32 0, i32 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay50, i64 1
  store i32* %add.ptr, i32** %p, align 8
  %arraydecay51 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 0
  %add.ptr52 = getelementptr inbounds i32, i32* %arraydecay51, i64 2
  store i32* %add.ptr52, i32** %xp, align 8
  br label %while.cond.53

while.cond.53:                                    ; preds = %while.body.56, %if.end.46
  %46 = load i32, i32* %i, align 4
  %dec54 = add i32 %46, -1
  store i32 %dec54, i32* %i, align 4
  %tobool55 = icmp ne i32 %dec54, 0
  br i1 %tobool55, label %while.body.56, label %while.end.60

while.body.56:                                    ; preds = %while.cond.53
  %47 = load i32*, i32** %p, align 8
  %incdec.ptr57 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %incdec.ptr57, i32** %p, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %j, align 4
  %add58 = add i32 %49, %48
  store i32 %add58, i32* %j, align 4
  %50 = load i32*, i32** %xp, align 8
  %incdec.ptr59 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %incdec.ptr59, i32** %xp, align 8
  store i32 %add58, i32* %50, align 4
  br label %while.cond.53

while.end.60:                                     ; preds = %while.cond.53
  %51 = load i32*, i32** %b.addr, align 8
  store i32* %51, i32** %p, align 8
  store i32 0, i32* %i, align 4
  br label %do.body.61

do.body.61:                                       ; preds = %do.cond.71, %while.end.60
  %52 = load i32*, i32** %p, align 8
  %incdec.ptr62 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %incdec.ptr62, i32** %p, align 8
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %j, align 4
  %cmp63 = icmp ne i32 %53, 0
  br i1 %cmp63, label %if.then.64, label %if.end.70

if.then.64:                                       ; preds = %do.body.61
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %j, align 4
  %idxprom65 = zext i32 %55 to i64
  %arrayidx66 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 %idxprom65
  %56 = load i32, i32* %arrayidx66, align 4
  %inc67 = add i32 %56, 1
  store i32 %inc67, i32* %arrayidx66, align 4
  %idxprom68 = zext i32 %56 to i64
  %arrayidx69 = getelementptr inbounds [288 x i32], [288 x i32]* @huft_build.v, i32 0, i64 %idxprom68
  store i32 %54, i32* %arrayidx69, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.64, %do.body.61
  br label %do.cond.71

do.cond.71:                                       ; preds = %if.end.70
  %57 = load i32, i32* %i, align 4
  %inc72 = add i32 %57, 1
  store i32 %inc72, i32* %i, align 4
  %58 = load i32, i32* %n.addr, align 4
  %cmp73 = icmp ult i32 %inc72, %58
  br i1 %cmp73, label %do.body.61, label %do.end.74

do.end.74:                                        ; preds = %do.cond.71
  %59 = load i32, i32* %g, align 4
  %idxprom75 = sext i32 %59 to i64
  %arrayidx76 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 %idxprom75
  %60 = load i32, i32* %arrayidx76, align 4
  store i32 %60, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  %arrayidx77 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 0
  store i32 0, i32* %arrayidx77, align 4
  store i32* getelementptr inbounds ([288 x i32], [288 x i32]* @huft_build.v, i32 0, i32 0), i32** %p, align 8
  store i32 -1, i32* %h, align 4
  %61 = load i32, i32* %l, align 4
  %sub78 = sub nsw i32 0, %61
  store i32 %sub78, i32* %w, align 4
  %arrayidx79 = getelementptr inbounds [15 x %struct.inflate_huft_s*], [15 x %struct.inflate_huft_s*]* %u, i32 0, i64 0
  store %struct.inflate_huft_s* null, %struct.inflate_huft_s** %arrayidx79, align 8
  store %struct.inflate_huft_s* null, %struct.inflate_huft_s** %q, align 8
  store i32 0, i32* %z, align 4
  %base = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %r, i32 0, i32 1
  store i16 0, i16* %base, align 2
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.229, %do.end.74
  %62 = load i32, i32* %k, align 4
  %63 = load i32, i32* %g, align 4
  %cmp81 = icmp sle i32 %62, %63
  br i1 %cmp81, label %for.body.82, label %for.end.231

for.body.82:                                      ; preds = %for.cond.80
  %64 = load i32, i32* %k, align 4
  %idxprom83 = sext i32 %64 to i64
  %arrayidx84 = getelementptr inbounds [16 x i32], [16 x i32]* %c, i32 0, i64 %idxprom83
  %65 = load i32, i32* %arrayidx84, align 4
  store i32 %65, i32* %a, align 4
  br label %while.cond.85

while.cond.85:                                    ; preds = %while.end.227, %for.body.82
  %66 = load i32, i32* %a, align 4
  %dec86 = add i32 %66, -1
  store i32 %dec86, i32* %a, align 4
  %tobool87 = icmp ne i32 %66, 0
  br i1 %tobool87, label %while.body.88, label %while.end.228

while.body.88:                                    ; preds = %while.cond.85
  %67 = load i32, i32* %w, align 4
  store i32 %67, i32* %nextw, align 4
  br label %while.cond.89

while.cond.89:                                    ; preds = %if.end.148, %while.body.88
  %68 = load i32, i32* %k, align 4
  %69 = load i32, i32* %w, align 4
  %70 = load i32, i32* %l, align 4
  %add90 = add nsw i32 %69, %70
  store i32 %add90, i32* %nextw, align 4
  %cmp91 = icmp sgt i32 %68, %add90
  br i1 %cmp91, label %while.body.92, label %while.end.149

while.body.92:                                    ; preds = %while.cond.89
  %71 = load i32, i32* %h, align 4
  %inc93 = add nsw i32 %71, 1
  store i32 %inc93, i32* %h, align 4
  %72 = load i32, i32* %g, align 4
  %73 = load i32, i32* %nextw, align 4
  %sub94 = sub nsw i32 %72, %73
  store i32 %sub94, i32* %z, align 4
  %74 = load i32, i32* %z, align 4
  %75 = load i32, i32* %l, align 4
  %cmp95 = icmp ugt i32 %74, %75
  br i1 %cmp95, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.92
  %76 = load i32, i32* %l, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body.92
  %77 = load i32, i32* %z, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %76, %cond.true ], [ %77, %cond.false ]
  store i32 %cond, i32* %z, align 4
  %78 = load i32, i32* %k, align 4
  %79 = load i32, i32* %nextw, align 4
  %sub96 = sub nsw i32 %78, %79
  store i32 %sub96, i32* %j, align 4
  %shl97 = shl i32 1, %sub96
  store i32 %shl97, i32* %f, align 4
  %80 = load i32, i32* %a, align 4
  %add98 = add i32 %80, 1
  %cmp99 = icmp ugt i32 %shl97, %add98
  br i1 %cmp99, label %if.then.100, label %if.end.117

if.then.100:                                      ; preds = %cond.end
  %81 = load i32, i32* %a, align 4
  %add101 = add i32 %81, 1
  %82 = load i32, i32* %f, align 4
  %sub102 = sub i32 %82, %add101
  store i32 %sub102, i32* %f, align 4
  %arraydecay103 = getelementptr inbounds [16 x i32], [16 x i32]* %c, i32 0, i32 0
  %83 = load i32, i32* %k, align 4
  %idx.ext = sext i32 %83 to i64
  %add.ptr104 = getelementptr inbounds i32, i32* %arraydecay103, i64 %idx.ext
  store i32* %add.ptr104, i32** %xp, align 8
  %84 = load i32, i32* %j, align 4
  %85 = load i32, i32* %z, align 4
  %cmp105 = icmp ult i32 %84, %85
  br i1 %cmp105, label %if.then.106, label %if.end.116

if.then.106:                                      ; preds = %if.then.100
  br label %while.cond.107

while.cond.107:                                   ; preds = %while.body.113, %if.then.106
  %86 = load i32, i32* %j, align 4
  %inc108 = add i32 %86, 1
  store i32 %inc108, i32* %j, align 4
  %87 = load i32, i32* %z, align 4
  %cmp109 = icmp ult i32 %inc108, %87
  br i1 %cmp109, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.107
  %88 = load i32, i32* %f, align 4
  %shl110 = shl i32 %88, 1
  store i32 %shl110, i32* %f, align 4
  %89 = load i32*, i32** %xp, align 8
  %incdec.ptr111 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %incdec.ptr111, i32** %xp, align 8
  %90 = load i32, i32* %incdec.ptr111, align 4
  %cmp112 = icmp ugt i32 %shl110, %90
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.107
  %91 = phi i1 [ false, %while.cond.107 ], [ %cmp112, %land.rhs ]
  br i1 %91, label %while.body.113, label %while.end.115

while.body.113:                                   ; preds = %land.end
  %92 = load i32*, i32** %xp, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %f, align 4
  %sub114 = sub i32 %94, %93
  store i32 %sub114, i32* %f, align 4
  br label %while.cond.107

while.end.115:                                    ; preds = %land.end
  br label %if.end.116

if.end.116:                                       ; preds = %while.end.115, %if.then.100
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %cond.end
  %95 = load i32, i32* %j, align 4
  %shl118 = shl i32 1, %95
  store i32 %shl118, i32* %z, align 4
  %96 = load i32*, i32** %hn.addr, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %z, align 4
  %add119 = add i32 %97, %98
  %cmp120 = icmp ugt i32 %add119, 1440
  br i1 %cmp120, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.117
  store i32 -4, i32* %retval
  br label %return

if.end.122:                                       ; preds = %if.end.117
  %99 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %hp.addr, align 8
  %100 = load i32*, i32** %hn.addr, align 8
  %101 = load i32, i32* %100, align 4
  %idx.ext123 = zext i32 %101 to i64
  %add.ptr124 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %99, i64 %idx.ext123
  store %struct.inflate_huft_s* %add.ptr124, %struct.inflate_huft_s** %q, align 8
  %102 = load i32, i32* %h, align 4
  %idxprom125 = sext i32 %102 to i64
  %arrayidx126 = getelementptr inbounds [15 x %struct.inflate_huft_s*], [15 x %struct.inflate_huft_s*]* %u, i32 0, i64 %idxprom125
  store %struct.inflate_huft_s* %add.ptr124, %struct.inflate_huft_s** %arrayidx126, align 8
  %103 = load i32, i32* %z, align 4
  %104 = load i32*, i32** %hn.addr, align 8
  %105 = load i32, i32* %104, align 4
  %add127 = add i32 %105, %103
  store i32 %add127, i32* %104, align 4
  %106 = load i32, i32* %h, align 4
  %tobool128 = icmp ne i32 %106, 0
  br i1 %tobool128, label %if.then.129, label %if.else

if.then.129:                                      ; preds = %if.end.122
  %107 = load i32, i32* %i, align 4
  %108 = load i32, i32* %h, align 4
  %idxprom130 = sext i32 %108 to i64
  %arrayidx131 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 %idxprom130
  store i32 %107, i32* %arrayidx131, align 4
  %109 = load i32, i32* %l, align 4
  %conv = trunc i32 %109 to i8
  %word = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %r, i32 0, i32 0
  %what = bitcast %union.anon.0* %word to %struct.anon.1*
  %Bits = getelementptr inbounds %struct.anon.1, %struct.anon.1* %what, i32 0, i32 1
  store i8 %conv, i8* %Bits, align 1
  %110 = load i32, i32* %j, align 4
  %conv132 = trunc i32 %110 to i8
  %word133 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %r, i32 0, i32 0
  %what134 = bitcast %union.anon.0* %word133 to %struct.anon.1*
  %Exop = getelementptr inbounds %struct.anon.1, %struct.anon.1* %what134, i32 0, i32 0
  store i8 %conv132, i8* %Exop, align 1
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %w, align 4
  %shr = lshr i32 %111, %112
  store i32 %shr, i32* %j, align 4
  %113 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %q, align 8
  %114 = load i32, i32* %h, align 4
  %sub135 = sub nsw i32 %114, 1
  %idxprom136 = sext i32 %sub135 to i64
  %arrayidx137 = getelementptr inbounds [15 x %struct.inflate_huft_s*], [15 x %struct.inflate_huft_s*]* %u, i32 0, i64 %idxprom136
  %115 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %arrayidx137, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.inflate_huft_s* %113 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.inflate_huft_s* %115 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %116 = load i32, i32* %j, align 4
  %conv138 = zext i32 %116 to i64
  %sub139 = sub nsw i64 %sub.ptr.div, %conv138
  %conv140 = trunc i64 %sub139 to i32
  %conv141 = trunc i32 %conv140 to i16
  %base142 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %r, i32 0, i32 1
  store i16 %conv141, i16* %base142, align 2
  %117 = load i32, i32* %j, align 4
  %idxprom143 = zext i32 %117 to i64
  %118 = load i32, i32* %h, align 4
  %sub144 = sub nsw i32 %118, 1
  %idxprom145 = sext i32 %sub144 to i64
  %arrayidx146 = getelementptr inbounds [15 x %struct.inflate_huft_s*], [15 x %struct.inflate_huft_s*]* %u, i32 0, i64 %idxprom145
  %119 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %119, i64 %idxprom143
  %120 = bitcast %struct.inflate_huft_s* %arrayidx147 to i8*
  %121 = bitcast %struct.inflate_huft_s* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 4, i32 2, i1 false)
  br label %if.end.148

if.else:                                          ; preds = %if.end.122
  %122 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %q, align 8
  %123 = load %struct.inflate_huft_s**, %struct.inflate_huft_s*** %t.addr, align 8
  store %struct.inflate_huft_s* %122, %struct.inflate_huft_s** %123, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.else, %if.then.129
  %124 = load i32, i32* %nextw, align 4
  store i32 %124, i32* %w, align 4
  br label %while.cond.89

while.end.149:                                    ; preds = %while.cond.89
  %125 = load i32, i32* %k, align 4
  %126 = load i32, i32* %w, align 4
  %sub150 = sub nsw i32 %125, %126
  %conv151 = trunc i32 %sub150 to i8
  %word152 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %r, i32 0, i32 0
  %what153 = bitcast %union.anon.0* %word152 to %struct.anon.1*
  %Bits154 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %what153, i32 0, i32 1
  store i8 %conv151, i8* %Bits154, align 1
  %127 = load i32*, i32** %p, align 8
  %128 = load i32, i32* %n.addr, align 4
  %idx.ext155 = zext i32 %128 to i64
  %add.ptr156 = getelementptr inbounds i32, i32* getelementptr inbounds ([288 x i32], [288 x i32]* @huft_build.v, i32 0, i32 0), i64 %idx.ext155
  %cmp157 = icmp uge i32* %127, %add.ptr156
  br i1 %cmp157, label %if.then.159, label %if.else.163

if.then.159:                                      ; preds = %while.end.149
  %word160 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %r, i32 0, i32 0
  %what161 = bitcast %union.anon.0* %word160 to %struct.anon.1*
  %Exop162 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %what161, i32 0, i32 0
  store i8 -64, i8* %Exop162, align 1
  br label %if.end.194

if.else.163:                                      ; preds = %while.end.149
  %129 = load i32*, i32** %p, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %s.addr, align 4
  %cmp164 = icmp ult i32 %130, %131
  br i1 %cmp164, label %if.then.166, label %if.else.177

if.then.166:                                      ; preds = %if.else.163
  %132 = load i32*, i32** %p, align 8
  %133 = load i32, i32* %132, align 4
  %cmp167 = icmp ult i32 %133, 256
  %cond169 = select i1 %cmp167, i32 0, i32 96
  %conv170 = trunc i32 %cond169 to i8
  %word171 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %r, i32 0, i32 0
  %what172 = bitcast %union.anon.0* %word171 to %struct.anon.1*
  %Exop173 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %what172, i32 0, i32 0
  store i8 %conv170, i8* %Exop173, align 1
  %134 = load i32*, i32** %p, align 8
  %incdec.ptr174 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %incdec.ptr174, i32** %p, align 8
  %135 = load i32, i32* %134, align 4
  %conv175 = trunc i32 %135 to i16
  %base176 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %r, i32 0, i32 1
  store i16 %conv175, i16* %base176, align 2
  br label %if.end.193

if.else.177:                                      ; preds = %if.else.163
  %136 = load i32*, i32** %p, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %s.addr, align 4
  %sub178 = sub i32 %137, %138
  %idxprom179 = zext i32 %sub178 to i64
  %139 = load i16*, i16** %e.addr, align 8
  %arrayidx180 = getelementptr inbounds i16, i16* %139, i64 %idxprom179
  %140 = load i16, i16* %arrayidx180, align 2
  %conv181 = zext i16 %140 to i32
  %add182 = add nsw i32 %conv181, 16
  %add183 = add nsw i32 %add182, 64
  %conv184 = trunc i32 %add183 to i8
  %word185 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %r, i32 0, i32 0
  %what186 = bitcast %union.anon.0* %word185 to %struct.anon.1*
  %Exop187 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %what186, i32 0, i32 0
  store i8 %conv184, i8* %Exop187, align 1
  %141 = load i32*, i32** %p, align 8
  %incdec.ptr188 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %incdec.ptr188, i32** %p, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %s.addr, align 4
  %sub189 = sub i32 %142, %143
  %idxprom190 = zext i32 %sub189 to i64
  %144 = load i16*, i16** %d.addr, align 8
  %arrayidx191 = getelementptr inbounds i16, i16* %144, i64 %idxprom190
  %145 = load i16, i16* %arrayidx191, align 2
  %base192 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %r, i32 0, i32 1
  store i16 %145, i16* %base192, align 2
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.177, %if.then.166
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.159
  %146 = load i32, i32* %k, align 4
  %147 = load i32, i32* %w, align 4
  %sub195 = sub nsw i32 %146, %147
  %shl196 = shl i32 1, %sub195
  store i32 %shl196, i32* %f, align 4
  %148 = load i32, i32* %i, align 4
  %149 = load i32, i32* %w, align 4
  %shr197 = lshr i32 %148, %149
  store i32 %shr197, i32* %j, align 4
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc.204, %if.end.194
  %150 = load i32, i32* %j, align 4
  %151 = load i32, i32* %z, align 4
  %cmp199 = icmp ult i32 %150, %151
  br i1 %cmp199, label %for.body.201, label %for.end.206

for.body.201:                                     ; preds = %for.cond.198
  %152 = load i32, i32* %j, align 4
  %idxprom202 = zext i32 %152 to i64
  %153 = load %struct.inflate_huft_s*, %struct.inflate_huft_s** %q, align 8
  %arrayidx203 = getelementptr inbounds %struct.inflate_huft_s, %struct.inflate_huft_s* %153, i64 %idxprom202
  %154 = bitcast %struct.inflate_huft_s* %arrayidx203 to i8*
  %155 = bitcast %struct.inflate_huft_s* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %154, i8* %155, i64 4, i32 2, i1 false)
  br label %for.inc.204

for.inc.204:                                      ; preds = %for.body.201
  %156 = load i32, i32* %f, align 4
  %157 = load i32, i32* %j, align 4
  %add205 = add i32 %157, %156
  store i32 %add205, i32* %j, align 4
  br label %for.cond.198

for.end.206:                                      ; preds = %for.cond.198
  %158 = load i32, i32* %k, align 4
  %sub207 = sub nsw i32 %158, 1
  %shl208 = shl i32 1, %sub207
  store i32 %shl208, i32* %j, align 4
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.212, %for.end.206
  %159 = load i32, i32* %i, align 4
  %160 = load i32, i32* %j, align 4
  %and = and i32 %159, %160
  %tobool210 = icmp ne i32 %and, 0
  br i1 %tobool210, label %for.body.211, label %for.end.214

for.body.211:                                     ; preds = %for.cond.209
  %161 = load i32, i32* %j, align 4
  %162 = load i32, i32* %i, align 4
  %xor = xor i32 %162, %161
  store i32 %xor, i32* %i, align 4
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.body.211
  %163 = load i32, i32* %j, align 4
  %shr213 = lshr i32 %163, 1
  store i32 %shr213, i32* %j, align 4
  br label %for.cond.209

for.end.214:                                      ; preds = %for.cond.209
  %164 = load i32, i32* %j, align 4
  %165 = load i32, i32* %i, align 4
  %xor215 = xor i32 %165, %164
  store i32 %xor215, i32* %i, align 4
  br label %while.cond.216

while.cond.216:                                   ; preds = %while.body.224, %for.end.214
  %166 = load i32, i32* %i, align 4
  %167 = load i32, i32* %w, align 4
  %shl217 = shl i32 1, %167
  %sub218 = sub nsw i32 %shl217, 1
  %and219 = and i32 %166, %sub218
  %168 = load i32, i32* %h, align 4
  %idxprom220 = sext i32 %168 to i64
  %arrayidx221 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i64 %idxprom220
  %169 = load i32, i32* %arrayidx221, align 4
  %cmp222 = icmp ne i32 %and219, %169
  br i1 %cmp222, label %while.body.224, label %while.end.227

while.body.224:                                   ; preds = %while.cond.216
  %170 = load i32, i32* %h, align 4
  %dec225 = add nsw i32 %170, -1
  store i32 %dec225, i32* %h, align 4
  %171 = load i32, i32* %l, align 4
  %172 = load i32, i32* %w, align 4
  %sub226 = sub nsw i32 %172, %171
  store i32 %sub226, i32* %w, align 4
  br label %while.cond.216

while.end.227:                                    ; preds = %while.cond.216
  br label %while.cond.85

while.end.228:                                    ; preds = %while.cond.85
  br label %for.inc.229

for.inc.229:                                      ; preds = %while.end.228
  %173 = load i32, i32* %k, align 4
  %inc230 = add nsw i32 %173, 1
  store i32 %inc230, i32* %k, align 4
  br label %for.cond.80

for.end.231:                                      ; preds = %for.cond.80
  %174 = load i32, i32* %y, align 4
  %cmp232 = icmp ne i32 %174, 0
  br i1 %cmp232, label %land.rhs.234, label %land.end.237

land.rhs.234:                                     ; preds = %for.end.231
  %175 = load i32, i32* %g, align 4
  %cmp235 = icmp ne i32 %175, 1
  br label %land.end.237

land.end.237:                                     ; preds = %land.rhs.234, %for.end.231
  %176 = phi i1 [ false, %for.end.231 ], [ %cmp235, %land.rhs.234 ]
  %cond238 = select i1 %176, i32 -5, i32 0
  store i32 %cond238, i32* %retval
  br label %return

return:                                           ; preds = %land.end.237, %if.then.121, %if.then.45, %if.then.35, %if.then
  %177 = load i32, i32* %retval
  ret i32 %177
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
