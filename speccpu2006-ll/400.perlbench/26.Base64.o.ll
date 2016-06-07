; ModuleID = 'Base64.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.xpv = type { i8*, i64, i64 }
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, {}*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.interpreter = type { i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%union.any = type { i8* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }

@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@.str = private unnamed_addr constant [44 x i8] c"Usage: MIME::Base64::encode_base64(sv, ...)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@basis_64 = internal global [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@.str.2 = private unnamed_addr constant [39 x i8] c"Usage: MIME::Base64::decode_base64(sv)\00", align 1
@index_64 = internal global [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FE\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@PL_dowarn = external global i8, align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Premature end of base64 data\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Premature padding of base64 data\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Usage: MIME::QuotedPrint::encode_qp(sv, ...)\00", align 1
@PL_Xpv = external global %struct.xpv*, align 8
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"=%02X\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Usage: MIME::QuotedPrint::decode_qp(sv)\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Base64.c\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"MIME::Base64::encode_base64\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"MIME::Base64::decode_base64\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"MIME::QuotedPrint::encode_qp\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"$;$$\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"MIME::QuotedPrint::decode_qp\00", align 1
@PL_sv_yes = external global %struct.sv, align 8

; Function Attrs: nounwind uwtable
define void @XS_MIME__Base64_encode_base64(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %str = alloca i8*, align 8
  %len = alloca i64, align 8
  %eol = alloca i8*, align 8
  %eollen = alloca i64, align 8
  %r = alloca i8*, align 8
  %rlen = alloca i64, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %c3 = alloca i8, align 1
  %chunk = alloca i32, align 4
  %RETVAL = alloca %struct.sv*, align 8
  %tmp = alloca i64, align 8
  %c = alloca i8*, align 8
  %e = alloca i8*, align 8
  %c140 = alloca i8*, align 8
  %e142 = alloca i8*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %sv, align 8
  %12 = load %struct.sv*, %struct.sv** %sv, align 8
  %call = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %12, i8 signext 0)
  %13 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 262144
  %cmp8 = icmp eq i32 %and, 262144
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 0
  %16 = load i8*, i8** %sv_any, align 8
  %17 = bitcast i8* %16 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %17, i32 0, i32 1
  %18 = load i64, i64* %xpv_cur, align 8
  store i64 %18, i64* %rlen, align 8
  %19 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any10, align 8
  %21 = bitcast i8* %20 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %21, i32 0, i32 0
  %22 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %23 = load %struct.sv*, %struct.sv** %sv, align 8
  %call11 = call i8* @Perl_sv_2pv_flags(%struct.sv* %23, i64* %rlen, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %22, %cond.true ], [ %call11, %cond.false ]
  store i8* %cond, i8** %str, align 8
  %24 = load i64, i64* %rlen, align 8
  store i64 %24, i64* %len, align 8
  %25 = load i32, i32* %items, align 4
  %cmp12 = icmp sgt i32 %25, 1
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %26 = load i32, i32* %ax, align 4
  %add14 = add nsw i32 %26, 1
  %idxprom15 = sext i32 %add14 to i64
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx16 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idxprom15
  %28 = load %struct.sv*, %struct.sv** %arrayidx16, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 2
  %29 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %29, 118423552
  %tobool = icmp ne i32 %and18, 0
  br i1 %tobool, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true
  %30 = load i32, i32* %ax, align 4
  %add20 = add nsw i32 %30, 1
  %idxprom21 = sext i32 %add20 to i64
  %31 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx22 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %idxprom21
  %32 = load %struct.sv*, %struct.sv** %arrayidx22, align 8
  %sv_flags23 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 2
  %33 = load i32, i32* %sv_flags23, align 4
  %and24 = and i32 %33, 262144
  %cmp25 = icmp eq i32 %and24, 262144
  br i1 %cmp25, label %cond.true.27, label %cond.false.38

cond.true.27:                                     ; preds = %if.then.19
  %34 = load i32, i32* %ax, align 4
  %add28 = add nsw i32 %34, 1
  %idxprom29 = sext i32 %add28 to i64
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx30 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %idxprom29
  %36 = load %struct.sv*, %struct.sv** %arrayidx30, align 8
  %sv_any31 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 0
  %37 = load i8*, i8** %sv_any31, align 8
  %38 = bitcast i8* %37 to %struct.xpv*
  %xpv_cur32 = getelementptr inbounds %struct.xpv, %struct.xpv* %38, i32 0, i32 1
  %39 = load i64, i64* %xpv_cur32, align 8
  store i64 %39, i64* %eollen, align 8
  %40 = load i32, i32* %ax, align 4
  %add33 = add nsw i32 %40, 1
  %idxprom34 = sext i32 %add33 to i64
  %41 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx35 = getelementptr inbounds %struct.sv*, %struct.sv** %41, i64 %idxprom34
  %42 = load %struct.sv*, %struct.sv** %arrayidx35, align 8
  %sv_any36 = getelementptr inbounds %struct.sv, %struct.sv* %42, i32 0, i32 0
  %43 = load i8*, i8** %sv_any36, align 8
  %44 = bitcast i8* %43 to %struct.xpv*
  %xpv_pv37 = getelementptr inbounds %struct.xpv, %struct.xpv* %44, i32 0, i32 0
  %45 = load i8*, i8** %xpv_pv37, align 8
  br label %cond.end.43

cond.false.38:                                    ; preds = %if.then.19
  %46 = load i32, i32* %ax, align 4
  %add39 = add nsw i32 %46, 1
  %idxprom40 = sext i32 %add39 to i64
  %47 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx41 = getelementptr inbounds %struct.sv*, %struct.sv** %47, i64 %idxprom40
  %48 = load %struct.sv*, %struct.sv** %arrayidx41, align 8
  %call42 = call i8* @Perl_sv_2pv_flags(%struct.sv* %48, i64* %eollen, i32 2)
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.38, %cond.true.27
  %cond44 = phi i8* [ %45, %cond.true.27 ], [ %call42, %cond.false.38 ]
  store i8* %cond44, i8** %eol, align 8
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true, %cond.end
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %eol, align 8
  store i64 1, i64* %eollen, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %cond.end.43
  %49 = load i64, i64* %len, align 8
  %add46 = add nsw i64 %49, 2
  %div = sdiv i64 %add46, 3
  %mul = mul nsw i64 %div, 4
  store i64 %mul, i64* %rlen, align 8
  %50 = load i64, i64* %rlen, align 8
  %tobool47 = icmp ne i64 %50, 0
  br i1 %tobool47, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %if.end.45
  %51 = load i64, i64* %rlen, align 8
  %sub = sub i64 %51, 1
  %div49 = udiv i64 %sub, 76
  %add50 = add i64 %div49, 1
  %52 = load i64, i64* %eollen, align 8
  %mul51 = mul i64 %add50, %52
  %53 = load i64, i64* %rlen, align 8
  %add52 = add i64 %53, %mul51
  store i64 %add52, i64* %rlen, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %if.end.45
  %54 = load i64, i64* %rlen, align 8
  %tobool54 = icmp ne i64 %54, 0
  br i1 %tobool54, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %if.end.53
  %55 = load i64, i64* %rlen, align 8
  br label %cond.end.57

cond.false.56:                                    ; preds = %if.end.53
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.55
  %cond58 = phi i64 [ %55, %cond.true.55 ], [ 1, %cond.false.56 ]
  %call59 = call %struct.sv* @Perl_newSV(i64 %cond58)
  store %struct.sv* %call59, %struct.sv** %RETVAL, align 8
  %56 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_flags60 = getelementptr inbounds %struct.sv, %struct.sv* %56, i32 0, i32 2
  %57 = load i32, i32* %sv_flags60, align 4
  %or = or i32 %57, 67371008
  store i32 %or, i32* %sv_flags60, align 4
  %58 = load i64, i64* %rlen, align 8
  %59 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any61 = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 0
  %60 = load i8*, i8** %sv_any61, align 8
  %61 = bitcast i8* %60 to %struct.xpv*
  %xpv_cur62 = getelementptr inbounds %struct.xpv, %struct.xpv* %61, i32 0, i32 1
  store i64 %58, i64* %xpv_cur62, align 8
  store i64 %58, i64* %tmp
  %62 = load i64, i64* %tmp
  %63 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any63 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 0
  %64 = load i8*, i8** %sv_any63, align 8
  %65 = bitcast i8* %64 to %struct.xpv*
  %xpv_pv64 = getelementptr inbounds %struct.xpv, %struct.xpv* %65, i32 0, i32 0
  %66 = load i8*, i8** %xpv_pv64, align 8
  store i8* %66, i8** %r, align 8
  store i32 0, i32* %chunk, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.57
  %67 = load i64, i64* %len, align 8
  %cmp65 = icmp sgt i64 %67, 0
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load i32, i32* %chunk, align 4
  %cmp67 = icmp eq i32 %68, 19
  br i1 %cmp67, label %if.then.69, label %if.end.77

if.then.69:                                       ; preds = %for.body
  %69 = load i8*, i8** %eol, align 8
  store i8* %69, i8** %c, align 8
  %70 = load i8*, i8** %eol, align 8
  %71 = load i64, i64* %eollen, align 8
  %add.ptr72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %add.ptr72, i8** %e, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.69
  %72 = load i8*, i8** %c, align 8
  %73 = load i8*, i8** %e, align 8
  %cmp73 = icmp ult i8* %72, %73
  br i1 %cmp73, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %74 = load i8*, i8** %c, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr75, i8** %c, align 8
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %r, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr76, i8** %r, align 8
  store i8 %75, i8* %76, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %chunk, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %while.end, %for.body
  %77 = load i8*, i8** %str, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr78, i8** %str, align 8
  %78 = load i8, i8* %77, align 1
  store i8 %78, i8* %c1, align 1
  %79 = load i64, i64* %len, align 8
  %cmp79 = icmp sgt i64 %79, 1
  br i1 %cmp79, label %cond.true.81, label %cond.false.84

cond.true.81:                                     ; preds = %if.end.77
  %80 = load i8*, i8** %str, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr82, i8** %str, align 8
  %81 = load i8, i8* %80, align 1
  %conv83 = sext i8 %81 to i32
  br label %cond.end.85

cond.false.84:                                    ; preds = %if.end.77
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.81
  %cond86 = phi i32 [ %conv83, %cond.true.81 ], [ 0, %cond.false.84 ]
  %conv87 = trunc i32 %cond86 to i8
  store i8 %conv87, i8* %c2, align 1
  %82 = load i8, i8* %c1, align 1
  %conv88 = zext i8 %82 to i32
  %shr = ashr i32 %conv88, 2
  %idxprom89 = sext i32 %shr to i64
  %arrayidx90 = getelementptr inbounds [65 x i8], [65 x i8]* @basis_64, i32 0, i64 %idxprom89
  %83 = load i8, i8* %arrayidx90, align 1
  %84 = load i8*, i8** %r, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr91, i8** %r, align 8
  store i8 %83, i8* %84, align 1
  %85 = load i8, i8* %c1, align 1
  %conv92 = zext i8 %85 to i32
  %and93 = and i32 %conv92, 3
  %shl = shl i32 %and93, 4
  %86 = load i8, i8* %c2, align 1
  %conv94 = zext i8 %86 to i32
  %and95 = and i32 %conv94, 240
  %shr96 = ashr i32 %and95, 4
  %or97 = or i32 %shl, %shr96
  %idxprom98 = sext i32 %or97 to i64
  %arrayidx99 = getelementptr inbounds [65 x i8], [65 x i8]* @basis_64, i32 0, i64 %idxprom98
  %87 = load i8, i8* %arrayidx99, align 1
  %88 = load i8*, i8** %r, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr100, i8** %r, align 8
  store i8 %87, i8* %88, align 1
  %89 = load i64, i64* %len, align 8
  %cmp101 = icmp sgt i64 %89, 2
  br i1 %cmp101, label %if.then.103, label %if.else.120

if.then.103:                                      ; preds = %cond.end.85
  %90 = load i8*, i8** %str, align 8
  %incdec.ptr104 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr104, i8** %str, align 8
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %c3, align 1
  %92 = load i8, i8* %c2, align 1
  %conv105 = zext i8 %92 to i32
  %and106 = and i32 %conv105, 15
  %shl107 = shl i32 %and106, 2
  %93 = load i8, i8* %c3, align 1
  %conv108 = zext i8 %93 to i32
  %and109 = and i32 %conv108, 192
  %shr110 = ashr i32 %and109, 6
  %or111 = or i32 %shl107, %shr110
  %idxprom112 = sext i32 %or111 to i64
  %arrayidx113 = getelementptr inbounds [65 x i8], [65 x i8]* @basis_64, i32 0, i64 %idxprom112
  %94 = load i8, i8* %arrayidx113, align 1
  %95 = load i8*, i8** %r, align 8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr114, i8** %r, align 8
  store i8 %94, i8* %95, align 1
  %96 = load i8, i8* %c3, align 1
  %conv115 = zext i8 %96 to i32
  %and116 = and i32 %conv115, 63
  %idxprom117 = sext i32 %and116 to i64
  %arrayidx118 = getelementptr inbounds [65 x i8], [65 x i8]* @basis_64, i32 0, i64 %idxprom117
  %97 = load i8, i8* %arrayidx118, align 1
  %98 = load i8*, i8** %r, align 8
  %incdec.ptr119 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr119, i8** %r, align 8
  store i8 %97, i8* %98, align 1
  br label %if.end.135

if.else.120:                                      ; preds = %cond.end.85
  %99 = load i64, i64* %len, align 8
  %cmp121 = icmp eq i64 %99, 2
  br i1 %cmp121, label %if.then.123, label %if.else.131

if.then.123:                                      ; preds = %if.else.120
  %100 = load i8, i8* %c2, align 1
  %conv124 = zext i8 %100 to i32
  %and125 = and i32 %conv124, 15
  %shl126 = shl i32 %and125, 2
  %idxprom127 = sext i32 %shl126 to i64
  %arrayidx128 = getelementptr inbounds [65 x i8], [65 x i8]* @basis_64, i32 0, i64 %idxprom127
  %101 = load i8, i8* %arrayidx128, align 1
  %102 = load i8*, i8** %r, align 8
  %incdec.ptr129 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr129, i8** %r, align 8
  store i8 %101, i8* %102, align 1
  %103 = load i8*, i8** %r, align 8
  %incdec.ptr130 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr130, i8** %r, align 8
  store i8 61, i8* %103, align 1
  br label %if.end.134

if.else.131:                                      ; preds = %if.else.120
  %104 = load i8*, i8** %r, align 8
  %incdec.ptr132 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr132, i8** %r, align 8
  store i8 61, i8* %104, align 1
  %105 = load i8*, i8** %r, align 8
  %incdec.ptr133 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr133, i8** %r, align 8
  store i8 61, i8* %105, align 1
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.123
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.103
  br label %for.inc

for.inc:                                          ; preds = %if.end.135
  %106 = load i64, i64* %len, align 8
  %sub136 = sub nsw i64 %106, 3
  store i64 %sub136, i64* %len, align 8
  %107 = load i32, i32* %chunk, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %chunk, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %108 = load i64, i64* %rlen, align 8
  %tobool137 = icmp ne i64 %108, 0
  br i1 %tobool137, label %if.then.138, label %if.end.151

if.then.138:                                      ; preds = %for.end
  %109 = load i8*, i8** %eol, align 8
  store i8* %109, i8** %c140, align 8
  %110 = load i8*, i8** %eol, align 8
  %111 = load i64, i64* %eollen, align 8
  %add.ptr143 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %add.ptr143, i8** %e142, align 8
  br label %while.cond.144

while.cond.144:                                   ; preds = %while.body.147, %if.then.138
  %112 = load i8*, i8** %c140, align 8
  %113 = load i8*, i8** %e142, align 8
  %cmp145 = icmp ult i8* %112, %113
  br i1 %cmp145, label %while.body.147, label %while.end.150

while.body.147:                                   ; preds = %while.cond.144
  %114 = load i8*, i8** %c140, align 8
  %incdec.ptr148 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr148, i8** %c140, align 8
  %115 = load i8, i8* %114, align 1
  %116 = load i8*, i8** %r, align 8
  %incdec.ptr149 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr149, i8** %r, align 8
  store i8 %115, i8* %116, align 1
  br label %while.cond.144

while.end.150:                                    ; preds = %while.cond.144
  br label %if.end.151

if.end.151:                                       ; preds = %while.end.150, %for.end
  %117 = load i8*, i8** %r, align 8
  store i8 0, i8* %117, align 1
  %118 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %119 = load i32, i32* %ax, align 4
  %add152 = add nsw i32 %119, 0
  %idxprom153 = sext i32 %add152 to i64
  %120 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx154 = getelementptr inbounds %struct.sv*, %struct.sv** %120, i64 %idxprom153
  store %struct.sv* %118, %struct.sv** %arrayidx154, align 8
  %121 = load i32, i32* %ax, align 4
  %add155 = add nsw i32 %121, 0
  %idxprom156 = sext i32 %add155 to i64
  %122 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx157 = getelementptr inbounds %struct.sv*, %struct.sv** %122, i64 %idxprom156
  %123 = load %struct.sv*, %struct.sv** %arrayidx157, align 8
  %call158 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %123)
  store i64 1, i64* %tmpXSoff, align 8
  %124 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %125 = load i32, i32* %ax, align 4
  %idx.ext160 = sext i32 %125 to i64
  %add.ptr161 = getelementptr inbounds %struct.sv*, %struct.sv** %124, i64 %idx.ext160
  %126 = load i64, i64* %tmpXSoff, align 8
  %sub162 = sub nsw i64 %126, 1
  %add.ptr163 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr161, i64 %sub162
  store %struct.sv** %add.ptr163, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_croak(i8*, ...) #1

declare signext i8 @Perl_sv_utf8_downgrade(%struct.sv*, i8 signext) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare %struct.sv* @Perl_newSV(i64) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_MIME__Base64_decode_base64(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %str = alloca i8*, align 8
  %end = alloca i8*, align 8
  %r = alloca i8*, align 8
  %c = alloca [4 x i8], align 1
  %RETVAL = alloca %struct.sv*, align 8
  %rlen = alloca i64, align 8
  %i = alloca i32, align 4
  %uc = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %sv, align 8
  %12 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags, align 4
  %and = and i32 %13, 537133056
  %cmp8 = icmp eq i32 %and, 262144
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 1
  %17 = load i64, i64* %xpv_cur, align 8
  store i64 %17, i64* %len, align 8
  %18 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any10, align 8
  %20 = bitcast i8* %19 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %20, i32 0, i32 0
  %21 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %22 = load %struct.sv*, %struct.sv** %sv, align 8
  %call = call i8* @Perl_sv_2pvbyte(%struct.sv* %22, i64* %len)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %21, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %str, align 8
  %23 = load i8*, i8** %str, align 8
  %24 = load i64, i64* %len, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %add.ptr11, i8** %end, align 8
  %25 = load i64, i64* %len, align 8
  %mul = mul i64 %25, 3
  %div = udiv i64 %mul, 4
  store i64 %div, i64* %rlen, align 8
  %26 = load i64, i64* %rlen, align 8
  %tobool = icmp ne i64 %26, 0
  br i1 %tobool, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end
  %27 = load i64, i64* %rlen, align 8
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi i64 [ %27, %cond.true.12 ], [ 1, %cond.false.13 ]
  %call16 = call %struct.sv* @Perl_newSV(i64 %cond15)
  store %struct.sv* %call16, %struct.sv** %RETVAL, align 8
  %28 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 2
  %29 = load i32, i32* %sv_flags17, align 4
  %or = or i32 %29, 67371008
  store i32 %or, i32* %sv_flags17, align 4
  %30 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any18 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 0
  %31 = load i8*, i8** %sv_any18, align 8
  %32 = bitcast i8* %31 to %struct.xpv*
  %xpv_pv19 = getelementptr inbounds %struct.xpv, %struct.xpv* %32, i32 0, i32 0
  %33 = load i8*, i8** %xpv_pv19, align 8
  store i8* %33, i8** %r, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.103, %cond.end.14
  %34 = load i8*, i8** %str, align 8
  %35 = load i8*, i8** %end, align 8
  %cmp20 = icmp ult i8* %34, %35
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %36 = load i8*, i8** %str, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr22, i8** %str, align 8
  %37 = load i8, i8* %36, align 1
  %idxprom23 = zext i8 %37 to i64
  %arrayidx24 = getelementptr inbounds [256 x i8], [256 x i8]* @index_64, i32 0, i64 %idxprom23
  %38 = load i8, i8* %arrayidx24, align 1
  store i8 %38, i8* %uc, align 1
  %39 = load i8, i8* %uc, align 1
  %conv25 = zext i8 %39 to i32
  %cmp26 = icmp ne i32 %conv25, 255
  br i1 %cmp26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %do.body
  %40 = load i8, i8* %uc, align 1
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  %idxprom29 = sext i32 %41 to i64
  %arrayidx30 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 %idxprom29
  store i8 %40, i8* %arrayidx30, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %do.body
  %42 = load i8*, i8** %str, align 8
  %43 = load i8*, i8** %end, align 8
  %cmp32 = icmp eq i8* %42, %43
  br i1 %cmp32, label %if.then.34, label %if.end.55

if.then.34:                                       ; preds = %if.end.31
  %44 = load i32, i32* %i, align 4
  %cmp35 = icmp slt i32 %44, 4
  br i1 %cmp35, label %if.then.37, label %if.end.54

if.then.37:                                       ; preds = %if.then.34
  %45 = load i32, i32* %i, align 4
  %tobool38 = icmp ne i32 %45, 0
  br i1 %tobool38, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.then.37
  %46 = load i8, i8* @PL_dowarn, align 1
  %conv39 = zext i8 %46 to i32
  %and40 = and i32 %conv39, 1
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %land.lhs.true, %if.then.37
  %47 = load i32, i32* %i, align 4
  %cmp44 = icmp slt i32 %47, 2
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  br label %thats_it

if.end.47:                                        ; preds = %if.end.43
  %48 = load i32, i32* %i, align 4
  %cmp48 = icmp eq i32 %48, 2
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.47
  %arrayidx51 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 2
  store i8 -2, i8* %arrayidx51, align 1
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.47
  %arrayidx53 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 3
  store i8 -2, i8* %arrayidx53, align 1
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.52, %if.then.34
  br label %do.end

if.end.55:                                        ; preds = %if.end.31
  br label %do.cond

do.cond:                                          ; preds = %if.end.55
  %49 = load i32, i32* %i, align 4
  %cmp56 = icmp slt i32 %49, 4
  br i1 %cmp56, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.end.54
  %arrayidx58 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 0
  %50 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %50 to i32
  %cmp60 = icmp eq i32 %conv59, 254
  br i1 %cmp60, label %if.then.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %arrayidx62 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 1
  %51 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %51 to i32
  %cmp64 = icmp eq i32 %conv63, 254
  br i1 %cmp64, label %if.then.66, label %if.end.72

if.then.66:                                       ; preds = %lor.lhs.false, %do.end
  %52 = load i8, i8* @PL_dowarn, align 1
  %conv67 = zext i8 %52 to i32
  %and68 = and i32 %conv67, 1
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.66
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.then.66
  br label %while.end

if.end.72:                                        ; preds = %lor.lhs.false
  %arrayidx73 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 0
  %53 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %53 to i32
  %shl = shl i32 %conv74, 2
  %arrayidx75 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 1
  %54 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %54 to i32
  %and77 = and i32 %conv76, 48
  %shr = ashr i32 %and77, 4
  %or78 = or i32 %shl, %shr
  %conv79 = trunc i32 %or78 to i8
  %55 = load i8*, i8** %r, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr80, i8** %r, align 8
  store i8 %conv79, i8* %55, align 1
  %arrayidx81 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 2
  %56 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %56 to i32
  %cmp83 = icmp eq i32 %conv82, 254
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.72
  br label %while.end

if.end.86:                                        ; preds = %if.end.72
  %arrayidx87 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 1
  %57 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %57 to i32
  %and89 = and i32 %conv88, 15
  %shl90 = shl i32 %and89, 4
  %arrayidx91 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 2
  %58 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %58 to i32
  %and93 = and i32 %conv92, 60
  %shr94 = ashr i32 %and93, 2
  %or95 = or i32 %shl90, %shr94
  %conv96 = trunc i32 %or95 to i8
  %59 = load i8*, i8** %r, align 8
  %incdec.ptr97 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr97, i8** %r, align 8
  store i8 %conv96, i8* %59, align 1
  %arrayidx98 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 3
  %60 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %60 to i32
  %cmp100 = icmp eq i32 %conv99, 254
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.86
  br label %while.end

if.end.103:                                       ; preds = %if.end.86
  %arrayidx104 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 2
  %61 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %61 to i32
  %and106 = and i32 %conv105, 3
  %shl107 = shl i32 %and106, 6
  %arrayidx108 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 3
  %62 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %62 to i32
  %or110 = or i32 %shl107, %conv109
  %conv111 = trunc i32 %or110 to i8
  %63 = load i8*, i8** %r, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr112, i8** %r, align 8
  store i8 %conv111, i8* %63, align 1
  br label %while.cond

while.end:                                        ; preds = %if.then.102, %if.then.85, %if.end.71, %while.cond
  br label %thats_it

thats_it:                                         ; preds = %while.end, %if.then.46
  %64 = load i8*, i8** %r, align 8
  %65 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any113 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 0
  %66 = load i8*, i8** %sv_any113, align 8
  %67 = bitcast i8* %66 to %struct.xpv*
  %xpv_pv114 = getelementptr inbounds %struct.xpv, %struct.xpv* %67, i32 0, i32 0
  %68 = load i8*, i8** %xpv_pv114, align 8
  %sub.ptr.lhs.cast115 = ptrtoint i8* %64 to i64
  %sub.ptr.rhs.cast116 = ptrtoint i8* %68 to i64
  %sub.ptr.sub117 = sub i64 %sub.ptr.lhs.cast115, %sub.ptr.rhs.cast116
  %69 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any118 = getelementptr inbounds %struct.sv, %struct.sv* %69, i32 0, i32 0
  %70 = load i8*, i8** %sv_any118, align 8
  %71 = bitcast i8* %70 to %struct.xpv*
  %xpv_cur119 = getelementptr inbounds %struct.xpv, %struct.xpv* %71, i32 0, i32 1
  store i64 %sub.ptr.sub117, i64* %xpv_cur119, align 8
  store i64 %sub.ptr.sub117, i64* %tmp
  %72 = load i64, i64* %tmp
  %73 = load i8*, i8** %r, align 8
  store i8 0, i8* %73, align 1
  %74 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %75 = load i32, i32* %ax, align 4
  %add120 = add nsw i32 %75, 0
  %idxprom121 = sext i32 %add120 to i64
  %76 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx122 = getelementptr inbounds %struct.sv*, %struct.sv** %76, i64 %idxprom121
  store %struct.sv* %74, %struct.sv** %arrayidx122, align 8
  %77 = load i32, i32* %ax, align 4
  %add123 = add nsw i32 %77, 0
  %idxprom124 = sext i32 %add123 to i64
  %78 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx125 = getelementptr inbounds %struct.sv*, %struct.sv** %78, i64 %idxprom124
  %79 = load %struct.sv*, %struct.sv** %arrayidx125, align 8
  %call126 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %79)
  store i64 1, i64* %tmpXSoff, align 8
  %80 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %81 = load i32, i32* %ax, align 4
  %idx.ext128 = sext i32 %81 to i64
  %add.ptr129 = getelementptr inbounds %struct.sv*, %struct.sv** %80, i64 %idx.ext128
  %82 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %82, 1
  %add.ptr130 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr129, i64 %sub
  store %struct.sv** %add.ptr130, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i8* @Perl_sv_2pvbyte(%struct.sv*, i64*) #1

declare void @Perl_warn(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @XS_MIME__QuotedPrint_encode_qp(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %eol = alloca i8*, align 8
  %eol_len = alloca i64, align 8
  %binary = alloca i32, align 4
  %Perl_sv_len = alloca i64, align 8
  %linelen = alloca i64, align 8
  %beg = alloca i8*, align 8
  %end = alloca i8*, align 8
  %p = alloca i8*, align 8
  %p_beg = alloca i8*, align 8
  %p_len = alloca i64, align 8
  %RETVAL = alloca %struct.sv*, align 8
  %max_last_line = alloca i64, align 8
  %len = alloca i64, align 8
  %expected_len = alloca i64, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %sv, align 8
  %12 = load %struct.sv*, %struct.sv** %sv, align 8
  %call = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %12, i8 signext 0)
  %13 = load i32, i32* %items, align 4
  %cmp8 = icmp sgt i32 %13, 1
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %14 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %14, 1
  %idxprom11 = sext i32 %add10 to i64
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idxprom11
  %16 = load %struct.sv*, %struct.sv** %arrayidx12, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags, align 4
  %and = and i32 %17, 118423552
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %18 = load i32, i32* %ax, align 4
  %add14 = add nsw i32 %18, 1
  %idxprom15 = sext i32 %add14 to i64
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx16 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idxprom15
  %20 = load %struct.sv*, %struct.sv** %arrayidx16, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %21, 262144
  %cmp19 = icmp eq i32 %and18, 262144
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.13
  %22 = load i32, i32* %ax, align 4
  %add21 = add nsw i32 %22, 1
  %idxprom22 = sext i32 %add21 to i64
  %23 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx23 = getelementptr inbounds %struct.sv*, %struct.sv** %23, i64 %idxprom22
  %24 = load %struct.sv*, %struct.sv** %arrayidx23, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 0
  %25 = load i8*, i8** %sv_any, align 8
  %26 = bitcast i8* %25 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %26, i32 0, i32 1
  %27 = load i64, i64* %xpv_cur, align 8
  store i64 %27, i64* %eol_len, align 8
  %28 = load i32, i32* %ax, align 4
  %add24 = add nsw i32 %28, 1
  %idxprom25 = sext i32 %add24 to i64
  %29 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx26 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %idxprom25
  %30 = load %struct.sv*, %struct.sv** %arrayidx26, align 8
  %sv_any27 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 0
  %31 = load i8*, i8** %sv_any27, align 8
  %32 = bitcast i8* %31 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %32, i32 0, i32 0
  %33 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.13
  %34 = load i32, i32* %ax, align 4
  %add28 = add nsw i32 %34, 1
  %idxprom29 = sext i32 %add28 to i64
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx30 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %idxprom29
  %36 = load %struct.sv*, %struct.sv** %arrayidx30, align 8
  %call31 = call i8* @Perl_sv_2pv_flags(%struct.sv* %36, i64* %eol_len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %33, %cond.true ], [ %call31, %cond.false ]
  store i8* %cond, i8** %eol, align 8
  br label %if.end.32

if.else:                                          ; preds = %land.lhs.true, %if.end
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %eol, align 8
  store i64 1, i64* %eol_len, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %cond.end
  %37 = load i32, i32* %items, align 4
  %cmp33 = icmp sgt i32 %37, 2
  br i1 %cmp33, label %land.rhs, label %land.end.109

land.rhs:                                         ; preds = %if.end.32
  %38 = load i32, i32* %ax, align 4
  %add35 = add nsw i32 %38, 2
  %idxprom36 = sext i32 %add35 to i64
  %39 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx37 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i64 %idxprom36
  %40 = load %struct.sv*, %struct.sv** %arrayidx37, align 8
  %tobool38 = icmp ne %struct.sv* %40, null
  br i1 %tobool38, label %cond.false.40, label %cond.true.39

cond.true.39:                                     ; preds = %land.rhs
  br label %cond.end.106

cond.false.40:                                    ; preds = %land.rhs
  %41 = load i32, i32* %ax, align 4
  %add41 = add nsw i32 %41, 2
  %idxprom42 = sext i32 %add41 to i64
  %42 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx43 = getelementptr inbounds %struct.sv*, %struct.sv** %42, i64 %idxprom42
  %43 = load %struct.sv*, %struct.sv** %arrayidx43, align 8
  %sv_flags44 = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 2
  %44 = load i32, i32* %sv_flags44, align 4
  %and45 = and i32 %44, 262144
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %cond.true.47, label %cond.false.66

cond.true.47:                                     ; preds = %cond.false.40
  %45 = load i32, i32* %ax, align 4
  %add48 = add nsw i32 %45, 2
  %idxprom49 = sext i32 %add48 to i64
  %46 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx50 = getelementptr inbounds %struct.sv*, %struct.sv** %46, i64 %idxprom49
  %47 = load %struct.sv*, %struct.sv** %arrayidx50, align 8
  %sv_any51 = getelementptr inbounds %struct.sv, %struct.sv* %47, i32 0, i32 0
  %48 = load i8*, i8** %sv_any51, align 8
  %49 = bitcast i8* %48 to %struct.xpv*
  store %struct.xpv* %49, %struct.xpv** @PL_Xpv, align 8
  %tobool52 = icmp ne %struct.xpv* %49, null
  br i1 %tobool52, label %land.rhs.53, label %land.end.64

land.rhs.53:                                      ; preds = %cond.true.47
  %50 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur54 = getelementptr inbounds %struct.xpv, %struct.xpv* %50, i32 0, i32 1
  %51 = load i64, i64* %xpv_cur54, align 8
  %cmp55 = icmp ugt i64 %51, 1
  br i1 %cmp55, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.53
  %52 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur57 = getelementptr inbounds %struct.xpv, %struct.xpv* %52, i32 0, i32 1
  %53 = load i64, i64* %xpv_cur57, align 8
  %tobool58 = icmp ne i64 %53, 0
  br i1 %tobool58, label %land.rhs.59, label %land.end

land.rhs.59:                                      ; preds = %lor.rhs
  %54 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv60 = getelementptr inbounds %struct.xpv, %struct.xpv* %54, i32 0, i32 0
  %55 = load i8*, i8** %xpv_pv60, align 8
  %56 = load i8, i8* %55, align 1
  %conv61 = sext i8 %56 to i32
  %cmp62 = icmp ne i32 %conv61, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs.59, %lor.rhs
  %57 = phi i1 [ false, %lor.rhs ], [ %cmp62, %land.rhs.59 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs.53
  %58 = phi i1 [ true, %land.rhs.53 ], [ %57, %land.end ]
  br label %land.end.64

land.end.64:                                      ; preds = %lor.end, %cond.true.47
  %59 = phi i1 [ false, %cond.true.47 ], [ %58, %lor.end ]
  %cond65 = select i1 %59, i32 1, i32 0
  br label %cond.end.104

cond.false.66:                                    ; preds = %cond.false.40
  %60 = load i32, i32* %ax, align 4
  %add67 = add nsw i32 %60, 2
  %idxprom68 = sext i32 %add67 to i64
  %61 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx69 = getelementptr inbounds %struct.sv*, %struct.sv** %61, i64 %idxprom68
  %62 = load %struct.sv*, %struct.sv** %arrayidx69, align 8
  %sv_flags70 = getelementptr inbounds %struct.sv, %struct.sv* %62, i32 0, i32 2
  %63 = load i32, i32* %sv_flags70, align 4
  %and71 = and i32 %63, 65536
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.80

cond.true.73:                                     ; preds = %cond.false.66
  %64 = load i32, i32* %ax, align 4
  %add74 = add nsw i32 %64, 2
  %idxprom75 = sext i32 %add74 to i64
  %65 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx76 = getelementptr inbounds %struct.sv*, %struct.sv** %65, i64 %idxprom75
  %66 = load %struct.sv*, %struct.sv** %arrayidx76, align 8
  %sv_any77 = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 0
  %67 = load i8*, i8** %sv_any77, align 8
  %68 = bitcast i8* %67 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %68, i32 0, i32 3
  %69 = load i64, i64* %xiv_iv, align 8
  %cmp78 = icmp ne i64 %69, 0
  %conv79 = zext i1 %cmp78 to i32
  br label %cond.end.102

cond.false.80:                                    ; preds = %cond.false.66
  %70 = load i32, i32* %ax, align 4
  %add81 = add nsw i32 %70, 2
  %idxprom82 = sext i32 %add81 to i64
  %71 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx83 = getelementptr inbounds %struct.sv*, %struct.sv** %71, i64 %idxprom82
  %72 = load %struct.sv*, %struct.sv** %arrayidx83, align 8
  %sv_flags84 = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 2
  %73 = load i32, i32* %sv_flags84, align 4
  %and85 = and i32 %73, 131072
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %cond.true.87, label %cond.false.94

cond.true.87:                                     ; preds = %cond.false.80
  %74 = load i32, i32* %ax, align 4
  %add88 = add nsw i32 %74, 2
  %idxprom89 = sext i32 %add88 to i64
  %75 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx90 = getelementptr inbounds %struct.sv*, %struct.sv** %75, i64 %idxprom89
  %76 = load %struct.sv*, %struct.sv** %arrayidx90, align 8
  %sv_any91 = getelementptr inbounds %struct.sv, %struct.sv* %76, i32 0, i32 0
  %77 = load i8*, i8** %sv_any91, align 8
  %78 = bitcast i8* %77 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %78, i32 0, i32 4
  %79 = load double, double* %xnv_nv, align 8
  %cmp92 = fcmp une double %79, 0.000000e+00
  %conv93 = zext i1 %cmp92 to i32
  br label %cond.end.100

cond.false.94:                                    ; preds = %cond.false.80
  %80 = load i32, i32* %ax, align 4
  %add95 = add nsw i32 %80, 2
  %idxprom96 = sext i32 %add95 to i64
  %81 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx97 = getelementptr inbounds %struct.sv*, %struct.sv** %81, i64 %idxprom96
  %82 = load %struct.sv*, %struct.sv** %arrayidx97, align 8
  %call98 = call signext i8 @Perl_sv_2bool(%struct.sv* %82)
  %conv99 = sext i8 %call98 to i32
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.94, %cond.true.87
  %cond101 = phi i32 [ %conv93, %cond.true.87 ], [ %conv99, %cond.false.94 ]
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.end.100, %cond.true.73
  %cond103 = phi i32 [ %conv79, %cond.true.73 ], [ %cond101, %cond.end.100 ]
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.end.102, %land.end.64
  %cond105 = phi i32 [ %cond65, %land.end.64 ], [ %cond103, %cond.end.102 ]
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.end.104, %cond.true.39
  %cond107 = phi i32 [ 0, %cond.true.39 ], [ %cond105, %cond.end.104 ]
  %tobool108 = icmp ne i32 %cond107, 0
  br label %land.end.109

land.end.109:                                     ; preds = %cond.end.106, %if.end.32
  %83 = phi i1 [ false, %if.end.32 ], [ %tobool108, %cond.end.106 ]
  %land.ext = zext i1 %83 to i32
  store i32 %land.ext, i32* %binary, align 4
  %84 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags110 = getelementptr inbounds %struct.sv, %struct.sv* %84, i32 0, i32 2
  %85 = load i32, i32* %sv_flags110, align 4
  %and111 = and i32 %85, 262144
  %cmp112 = icmp eq i32 %and111, 262144
  br i1 %cmp112, label %cond.true.114, label %cond.false.119

cond.true.114:                                    ; preds = %land.end.109
  %86 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any115 = getelementptr inbounds %struct.sv, %struct.sv* %86, i32 0, i32 0
  %87 = load i8*, i8** %sv_any115, align 8
  %88 = bitcast i8* %87 to %struct.xpv*
  %xpv_cur116 = getelementptr inbounds %struct.xpv, %struct.xpv* %88, i32 0, i32 1
  %89 = load i64, i64* %xpv_cur116, align 8
  store i64 %89, i64* %Perl_sv_len, align 8
  %90 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any117 = getelementptr inbounds %struct.sv, %struct.sv* %90, i32 0, i32 0
  %91 = load i8*, i8** %sv_any117, align 8
  %92 = bitcast i8* %91 to %struct.xpv*
  %xpv_pv118 = getelementptr inbounds %struct.xpv, %struct.xpv* %92, i32 0, i32 0
  %93 = load i8*, i8** %xpv_pv118, align 8
  br label %cond.end.121

cond.false.119:                                   ; preds = %land.end.109
  %94 = load %struct.sv*, %struct.sv** %sv, align 8
  %call120 = call i8* @Perl_sv_2pv_flags(%struct.sv* %94, i64* %Perl_sv_len, i32 2)
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.119, %cond.true.114
  %cond122 = phi i8* [ %93, %cond.true.114 ], [ %call120, %cond.false.119 ]
  store i8* %cond122, i8** %beg, align 8
  %95 = load i8*, i8** %beg, align 8
  %96 = load i64, i64* %Perl_sv_len, align 8
  %add.ptr123 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %add.ptr123, i8** %end, align 8
  %97 = load i64, i64* %Perl_sv_len, align 8
  %add124 = add i64 %97, 1
  %call125 = call %struct.sv* @Perl_newSV(i64 %add124)
  store %struct.sv* %call125, %struct.sv** %RETVAL, align 8
  %98 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  call void @Perl_sv_setpv(%struct.sv* %98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  store i64 0, i64* %linelen, align 8
  %99 = load i8*, i8** %beg, align 8
  store i8* %99, i8** %p, align 8
  br label %while.body

while.body:                                       ; preds = %cond.end.121, %if.end.277
  %100 = load i8*, i8** %p, align 8
  store i8* %100, i8** %p_beg, align 8
  br label %while.cond.126

while.cond.126:                                   ; preds = %while.body.150, %while.body
  %101 = load i8*, i8** %p, align 8
  %102 = load i8*, i8** %end, align 8
  %cmp127 = icmp ult i8* %101, %102
  br i1 %cmp127, label %land.rhs.129, label %land.end.148

land.rhs.129:                                     ; preds = %while.cond.126
  %103 = load i8*, i8** %p, align 8
  %104 = load i8, i8* %103, align 1
  %conv130 = sext i8 %104 to i32
  %cmp131 = icmp eq i32 %conv130, 9
  br i1 %cmp131, label %lor.end.147, label %lor.rhs.133

lor.rhs.133:                                      ; preds = %land.rhs.129
  %105 = load i8*, i8** %p, align 8
  %106 = load i8, i8* %105, align 1
  %conv134 = sext i8 %106 to i32
  %cmp135 = icmp sge i32 %conv134, 32
  br i1 %cmp135, label %land.lhs.true.137, label %land.end.145

land.lhs.true.137:                                ; preds = %lor.rhs.133
  %107 = load i8*, i8** %p, align 8
  %108 = load i8, i8* %107, align 1
  %conv138 = sext i8 %108 to i32
  %cmp139 = icmp sle i32 %conv138, 126
  br i1 %cmp139, label %land.rhs.141, label %land.end.145

land.rhs.141:                                     ; preds = %land.lhs.true.137
  %109 = load i8*, i8** %p, align 8
  %110 = load i8, i8* %109, align 1
  %conv142 = sext i8 %110 to i32
  %cmp143 = icmp ne i32 %conv142, 61
  br label %land.end.145

land.end.145:                                     ; preds = %land.rhs.141, %land.lhs.true.137, %lor.rhs.133
  %111 = phi i1 [ false, %land.lhs.true.137 ], [ false, %lor.rhs.133 ], [ %cmp143, %land.rhs.141 ]
  br label %lor.end.147

lor.end.147:                                      ; preds = %land.end.145, %land.rhs.129
  %112 = phi i1 [ true, %land.rhs.129 ], [ %111, %land.end.145 ]
  br label %land.end.148

land.end.148:                                     ; preds = %lor.end.147, %while.cond.126
  %113 = phi i1 [ false, %while.cond.126 ], [ %112, %lor.end.147 ]
  br i1 %113, label %while.body.150, label %while.end

while.body.150:                                   ; preds = %land.end.148
  %114 = load i8*, i8** %p, align 8
  %incdec.ptr151 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr151, i8** %p, align 8
  br label %while.cond.126

while.end:                                        ; preds = %land.end.148
  %115 = load i8*, i8** %p, align 8
  %116 = load i8*, i8** %end, align 8
  %cmp152 = icmp eq i8* %115, %116
  br i1 %cmp152, label %if.then.157, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %117 = load i8*, i8** %p, align 8
  %118 = load i8, i8* %117, align 1
  %conv154 = sext i8 %118 to i32
  %cmp155 = icmp eq i32 %conv154, 10
  br i1 %cmp155, label %if.then.157, label %if.end.177

if.then.157:                                      ; preds = %lor.lhs.false, %while.end
  br label %while.cond.158

while.cond.158:                                   ; preds = %while.body.174, %if.then.157
  %119 = load i8*, i8** %p, align 8
  %120 = load i8*, i8** %p_beg, align 8
  %cmp159 = icmp ugt i8* %119, %120
  br i1 %cmp159, label %land.rhs.161, label %land.end.172

land.rhs.161:                                     ; preds = %while.cond.158
  %121 = load i8*, i8** %p, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %121, i64 -1
  %122 = load i8, i8* %add.ptr162, align 1
  %conv163 = sext i8 %122 to i32
  %cmp164 = icmp eq i32 %conv163, 9
  br i1 %cmp164, label %lor.end.171, label %lor.rhs.166

lor.rhs.166:                                      ; preds = %land.rhs.161
  %123 = load i8*, i8** %p, align 8
  %add.ptr167 = getelementptr inbounds i8, i8* %123, i64 -1
  %124 = load i8, i8* %add.ptr167, align 1
  %conv168 = sext i8 %124 to i32
  %cmp169 = icmp eq i32 %conv168, 32
  br label %lor.end.171

lor.end.171:                                      ; preds = %lor.rhs.166, %land.rhs.161
  %125 = phi i1 [ true, %land.rhs.161 ], [ %cmp169, %lor.rhs.166 ]
  br label %land.end.172

land.end.172:                                     ; preds = %lor.end.171, %while.cond.158
  %126 = phi i1 [ false, %while.cond.158 ], [ %125, %lor.end.171 ]
  br i1 %126, label %while.body.174, label %while.end.176

while.body.174:                                   ; preds = %land.end.172
  %127 = load i8*, i8** %p, align 8
  %incdec.ptr175 = getelementptr inbounds i8, i8* %127, i32 -1
  store i8* %incdec.ptr175, i8** %p, align 8
  br label %while.cond.158

while.end.176:                                    ; preds = %land.end.172
  br label %if.end.177

if.end.177:                                       ; preds = %while.end.176, %lor.lhs.false
  %128 = load i8*, i8** %p, align 8
  %129 = load i8*, i8** %p_beg, align 8
  %sub.ptr.lhs.cast178 = ptrtoint i8* %128 to i64
  %sub.ptr.rhs.cast179 = ptrtoint i8* %129 to i64
  %sub.ptr.sub180 = sub i64 %sub.ptr.lhs.cast178, %sub.ptr.rhs.cast179
  store i64 %sub.ptr.sub180, i64* %p_len, align 8
  %130 = load i64, i64* %p_len, align 8
  %tobool181 = icmp ne i64 %130, 0
  br i1 %tobool181, label %if.then.182, label %if.end.223

if.then.182:                                      ; preds = %if.end.177
  %131 = load i64, i64* %eol_len, align 8
  %tobool183 = icmp ne i64 %131, 0
  br i1 %tobool183, label %if.then.184, label %if.end.218

if.then.184:                                      ; preds = %if.then.182
  %132 = load i8*, i8** %p, align 8
  %133 = load i8*, i8** %end, align 8
  %cmp185 = icmp eq i8* %132, %133
  br i1 %cmp185, label %cond.true.191, label %lor.lhs.false.187

lor.lhs.false.187:                                ; preds = %if.then.184
  %134 = load i8*, i8** %p, align 8
  %135 = load i8, i8* %134, align 1
  %conv188 = sext i8 %135 to i32
  %cmp189 = icmp eq i32 %conv188, 10
  br i1 %cmp189, label %cond.true.191, label %cond.false.192

cond.true.191:                                    ; preds = %lor.lhs.false.187, %if.then.184
  br label %cond.end.203

cond.false.192:                                   ; preds = %lor.lhs.false.187
  %136 = load i8*, i8** %p, align 8
  %add.ptr193 = getelementptr inbounds i8, i8* %136, i64 1
  %137 = load i8*, i8** %end, align 8
  %cmp194 = icmp eq i8* %add.ptr193, %137
  br i1 %cmp194, label %lor.end.201, label %lor.rhs.196

lor.rhs.196:                                      ; preds = %cond.false.192
  %138 = load i8*, i8** %p, align 8
  %add.ptr197 = getelementptr inbounds i8, i8* %138, i64 1
  %139 = load i8, i8* %add.ptr197, align 1
  %conv198 = sext i8 %139 to i32
  %cmp199 = icmp eq i32 %conv198, 10
  br label %lor.end.201

lor.end.201:                                      ; preds = %lor.rhs.196, %cond.false.192
  %140 = phi i1 [ true, %cond.false.192 ], [ %cmp199, %lor.rhs.196 ]
  %cond202 = select i1 %140, i32 73, i32 72
  br label %cond.end.203

cond.end.203:                                     ; preds = %lor.end.201, %cond.true.191
  %cond204 = phi i32 [ 76, %cond.true.191 ], [ %cond202, %lor.end.201 ]
  %conv205 = sext i32 %cond204 to i64
  store i64 %conv205, i64* %max_last_line, align 8
  br label %while.cond.206

while.cond.206:                                   ; preds = %if.end.214, %cond.end.203
  %141 = load i64, i64* %p_len, align 8
  %142 = load i64, i64* %linelen, align 8
  %add207 = add i64 %141, %142
  %143 = load i64, i64* %max_last_line, align 8
  %cmp208 = icmp ugt i64 %add207, %143
  br i1 %cmp208, label %while.body.210, label %while.end.217

while.body.210:                                   ; preds = %while.cond.206
  %144 = load i64, i64* %linelen, align 8
  %sub = sub i64 75, %144
  store i64 %sub, i64* %len, align 8
  %145 = load i64, i64* %len, align 8
  %146 = load i64, i64* %p_len, align 8
  %cmp211 = icmp ugt i64 %145, %146
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %while.body.210
  %147 = load i64, i64* %p_len, align 8
  store i64 %147, i64* %len, align 8
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.213, %while.body.210
  %148 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %149 = load i8*, i8** %p_beg, align 8
  %150 = load i64, i64* %len, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %148, i8* %149, i64 %150, i32 2)
  %151 = load i64, i64* %len, align 8
  %152 = load i8*, i8** %p_beg, align 8
  %add.ptr215 = getelementptr inbounds i8, i8* %152, i64 %151
  store i8* %add.ptr215, i8** %p_beg, align 8
  %153 = load i64, i64* %len, align 8
  %154 = load i64, i64* %p_len, align 8
  %sub216 = sub i64 %154, %153
  store i64 %sub216, i64* %p_len, align 8
  %155 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i64 1, i32 2)
  %156 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %157 = load i8*, i8** %eol, align 8
  %158 = load i64, i64* %eol_len, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %156, i8* %157, i64 %158, i32 2)
  store i64 0, i64* %linelen, align 8
  br label %while.cond.206

while.end.217:                                    ; preds = %while.cond.206
  br label %if.end.218

if.end.218:                                       ; preds = %while.end.217, %if.then.182
  %159 = load i64, i64* %p_len, align 8
  %tobool219 = icmp ne i64 %159, 0
  br i1 %tobool219, label %if.then.220, label %if.end.222

if.then.220:                                      ; preds = %if.end.218
  %160 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %161 = load i8*, i8** %p_beg, align 8
  %162 = load i64, i64* %p_len, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %160, i8* %161, i64 %162, i32 2)
  %163 = load i64, i64* %p_len, align 8
  %164 = load i64, i64* %linelen, align 8
  %add221 = add i64 %164, %163
  store i64 %add221, i64* %linelen, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.220, %if.end.218
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.end.177
  %165 = load i8*, i8** %p, align 8
  %166 = load i8*, i8** %end, align 8
  %cmp224 = icmp eq i8* %165, %166
  br i1 %cmp224, label %if.then.226, label %if.else.227

if.then.226:                                      ; preds = %if.end.223
  br label %while.end.278

if.else.227:                                      ; preds = %if.end.223
  %167 = load i8*, i8** %p, align 8
  %168 = load i8, i8* %167, align 1
  %conv228 = sext i8 %168 to i32
  %cmp229 = icmp eq i32 %conv228, 10
  br i1 %cmp229, label %land.lhs.true.231, label %if.else.237

land.lhs.true.231:                                ; preds = %if.else.227
  %169 = load i64, i64* %eol_len, align 8
  %tobool232 = icmp ne i64 %169, 0
  br i1 %tobool232, label %land.lhs.true.233, label %if.else.237

land.lhs.true.233:                                ; preds = %land.lhs.true.231
  %170 = load i32, i32* %binary, align 4
  %tobool234 = icmp ne i32 %170, 0
  br i1 %tobool234, label %if.else.237, label %if.then.235

if.then.235:                                      ; preds = %land.lhs.true.233
  %171 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %172 = load i8*, i8** %eol, align 8
  %173 = load i64, i64* %eol_len, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %171, i8* %172, i64 %173, i32 2)
  %174 = load i8*, i8** %p, align 8
  %incdec.ptr236 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %incdec.ptr236, i8** %p, align 8
  store i64 0, i64* %linelen, align 8
  br label %if.end.247

if.else.237:                                      ; preds = %land.lhs.true.233, %land.lhs.true.231, %if.else.227
  %175 = load i64, i64* %eol_len, align 8
  %tobool238 = icmp ne i64 %175, 0
  br i1 %tobool238, label %land.lhs.true.239, label %if.end.243

land.lhs.true.239:                                ; preds = %if.else.237
  %176 = load i64, i64* %linelen, align 8
  %cmp240 = icmp ugt i64 %176, 72
  br i1 %cmp240, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %land.lhs.true.239
  %177 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i64 1, i32 2)
  %178 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %179 = load i8*, i8** %eol, align 8
  %180 = load i64, i64* %eol_len, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %178, i8* %179, i64 %180, i32 2)
  store i64 0, i64* %linelen, align 8
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.242, %land.lhs.true.239, %if.else.237
  %181 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %182 = load i8*, i8** %p, align 8
  %183 = load i8, i8* %182, align 1
  %conv244 = zext i8 %183 to i32
  call void (%struct.sv*, i8*, ...) @Perl_sv_catpvf(%struct.sv* %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %conv244)
  %184 = load i8*, i8** %p, align 8
  %incdec.ptr245 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr245, i8** %p, align 8
  %185 = load i64, i64* %linelen, align 8
  %add246 = add i64 %185, 3
  store i64 %add246, i64* %linelen, align 8
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.243, %if.then.235
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247
  %186 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any249 = getelementptr inbounds %struct.sv, %struct.sv* %186, i32 0, i32 0
  %187 = load i8*, i8** %sv_any249, align 8
  %188 = bitcast i8* %187 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %188, i32 0, i32 2
  %189 = load i64, i64* %xpv_len, align 8
  %cmp250 = icmp ugt i64 %189, 80
  br i1 %cmp250, label %land.lhs.true.252, label %if.end.277

land.lhs.true.252:                                ; preds = %if.end.248
  %190 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any253 = getelementptr inbounds %struct.sv, %struct.sv* %190, i32 0, i32 0
  %191 = load i8*, i8** %sv_any253, align 8
  %192 = bitcast i8* %191 to %struct.xpv*
  %xpv_len254 = getelementptr inbounds %struct.xpv, %struct.xpv* %192, i32 0, i32 2
  %193 = load i64, i64* %xpv_len254, align 8
  %194 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any255 = getelementptr inbounds %struct.sv, %struct.sv* %194, i32 0, i32 0
  %195 = load i8*, i8** %sv_any255, align 8
  %196 = bitcast i8* %195 to %struct.xpv*
  %xpv_cur256 = getelementptr inbounds %struct.xpv, %struct.xpv* %196, i32 0, i32 1
  %197 = load i64, i64* %xpv_cur256, align 8
  %sub257 = sub i64 %193, %197
  %cmp258 = icmp ult i64 %sub257, 3
  br i1 %cmp258, label %if.then.260, label %if.end.277

if.then.260:                                      ; preds = %land.lhs.true.252
  %198 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any261 = getelementptr inbounds %struct.sv, %struct.sv* %198, i32 0, i32 0
  %199 = load i8*, i8** %sv_any261, align 8
  %200 = bitcast i8* %199 to %struct.xpv*
  %xpv_cur262 = getelementptr inbounds %struct.xpv, %struct.xpv* %200, i32 0, i32 1
  %201 = load i64, i64* %xpv_cur262, align 8
  %202 = load i64, i64* %Perl_sv_len, align 8
  %mul = mul i64 %201, %202
  %203 = load i8*, i8** %p, align 8
  %204 = load i8*, i8** %beg, align 8
  %sub.ptr.lhs.cast263 = ptrtoint i8* %203 to i64
  %sub.ptr.rhs.cast264 = ptrtoint i8* %204 to i64
  %sub.ptr.sub265 = sub i64 %sub.ptr.lhs.cast263, %sub.ptr.rhs.cast264
  %div = udiv i64 %mul, %sub.ptr.sub265
  store i64 %div, i64* %expected_len, align 8
  %205 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any266 = getelementptr inbounds %struct.sv, %struct.sv* %205, i32 0, i32 0
  %206 = load i8*, i8** %sv_any266, align 8
  %207 = bitcast i8* %206 to %struct.xpv*
  %xpv_len267 = getelementptr inbounds %struct.xpv, %struct.xpv* %207, i32 0, i32 2
  %208 = load i64, i64* %xpv_len267, align 8
  %209 = load i64, i64* %expected_len, align 8
  %cmp268 = icmp ult i64 %208, %209
  br i1 %cmp268, label %cond.true.270, label %cond.false.272

cond.true.270:                                    ; preds = %if.then.260
  %210 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %211 = load i64, i64* %expected_len, align 8
  %call271 = call i8* @Perl_sv_grow(%struct.sv* %210, i64 %211)
  br label %cond.end.275

cond.false.272:                                   ; preds = %if.then.260
  %212 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any273 = getelementptr inbounds %struct.sv, %struct.sv* %212, i32 0, i32 0
  %213 = load i8*, i8** %sv_any273, align 8
  %214 = bitcast i8* %213 to %struct.xpv*
  %xpv_pv274 = getelementptr inbounds %struct.xpv, %struct.xpv* %214, i32 0, i32 0
  %215 = load i8*, i8** %xpv_pv274, align 8
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.false.272, %cond.true.270
  %cond276 = phi i8* [ %call271, %cond.true.270 ], [ %215, %cond.false.272 ]
  br label %if.end.277

if.end.277:                                       ; preds = %cond.end.275, %land.lhs.true.252, %if.end.248
  br label %while.body

while.end.278:                                    ; preds = %if.then.226
  %216 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any279 = getelementptr inbounds %struct.sv, %struct.sv* %216, i32 0, i32 0
  %217 = load i8*, i8** %sv_any279, align 8
  %218 = bitcast i8* %217 to %struct.xpv*
  %xpv_cur280 = getelementptr inbounds %struct.xpv, %struct.xpv* %218, i32 0, i32 1
  %219 = load i64, i64* %xpv_cur280, align 8
  %tobool281 = icmp ne i64 %219, 0
  br i1 %tobool281, label %land.lhs.true.282, label %if.end.287

land.lhs.true.282:                                ; preds = %while.end.278
  %220 = load i64, i64* %eol_len, align 8
  %tobool283 = icmp ne i64 %220, 0
  br i1 %tobool283, label %land.lhs.true.284, label %if.end.287

land.lhs.true.284:                                ; preds = %land.lhs.true.282
  %221 = load i64, i64* %linelen, align 8
  %tobool285 = icmp ne i64 %221, 0
  br i1 %tobool285, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %land.lhs.true.284
  %222 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %222, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i64 1, i32 2)
  %223 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %224 = load i8*, i8** %eol, align 8
  %225 = load i64, i64* %eol_len, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %223, i8* %224, i64 %225, i32 2)
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.286, %land.lhs.true.284, %land.lhs.true.282, %while.end.278
  %226 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %227 = load i32, i32* %ax, align 4
  %add288 = add nsw i32 %227, 0
  %idxprom289 = sext i32 %add288 to i64
  %228 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx290 = getelementptr inbounds %struct.sv*, %struct.sv** %228, i64 %idxprom289
  store %struct.sv* %226, %struct.sv** %arrayidx290, align 8
  %229 = load i32, i32* %ax, align 4
  %add291 = add nsw i32 %229, 0
  %idxprom292 = sext i32 %add291 to i64
  %230 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx293 = getelementptr inbounds %struct.sv*, %struct.sv** %230, i64 %idxprom292
  %231 = load %struct.sv*, %struct.sv** %arrayidx293, align 8
  %call294 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %231)
  store i64 1, i64* %tmpXSoff, align 8
  %232 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %233 = load i32, i32* %ax, align 4
  %idx.ext295 = sext i32 %233 to i64
  %add.ptr296 = getelementptr inbounds %struct.sv*, %struct.sv** %232, i64 %idx.ext295
  %234 = load i64, i64* %tmpXSoff, align 8
  %sub297 = sub nsw i64 %234, 1
  %add.ptr298 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr296, i64 %sub297
  store %struct.sv** %add.ptr298, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

declare void @Perl_sv_catpvf(%struct.sv*, i8*, ...) #1

declare i8* @Perl_sv_grow(%struct.sv*, i64) #1

; Function Attrs: nounwind uwtable
define void @XS_MIME__QuotedPrint_decode_qp(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %str = alloca i8*, align 8
  %end = alloca i8*, align 8
  %r = alloca i8*, align 8
  %whitespace = alloca i8*, align 8
  %RETVAL = alloca %struct.sv*, align 8
  %buf = alloca [3 x i8], align 1
  %p = alloca i8*, align 8
  %tmp = alloca i64, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %sv, align 8
  %12 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags, align 4
  %and = and i32 %13, 537133056
  %cmp8 = icmp eq i32 %and, 262144
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 1
  %17 = load i64, i64* %xpv_cur, align 8
  store i64 %17, i64* %len, align 8
  %18 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any10, align 8
  %20 = bitcast i8* %19 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %20, i32 0, i32 0
  %21 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %22 = load %struct.sv*, %struct.sv** %sv, align 8
  %call = call i8* @Perl_sv_2pvbyte(%struct.sv* %22, i64* %len)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %21, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %str, align 8
  %23 = load i8*, i8** %str, align 8
  %24 = load i64, i64* %len, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %add.ptr11, i8** %end, align 8
  store i8* null, i8** %whitespace, align 8
  %25 = load i64, i64* %len, align 8
  %tobool = icmp ne i64 %25, 0
  br i1 %tobool, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end
  %26 = load i64, i64* %len, align 8
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi i64 [ %26, %cond.true.12 ], [ 1, %cond.false.13 ]
  %call16 = call %struct.sv* @Perl_newSV(i64 %cond15)
  store %struct.sv* %call16, %struct.sv** %RETVAL, align 8
  %27 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags17, align 4
  %or = or i32 %28, 67371008
  store i32 %or, i32* %sv_flags17, align 4
  %29 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any18 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any18, align 8
  %31 = bitcast i8* %30 to %struct.xpv*
  %xpv_pv19 = getelementptr inbounds %struct.xpv, %struct.xpv* %31, i32 0, i32 0
  %32 = load i8*, i8** %xpv_pv19, align 8
  store i8* %32, i8** %r, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.189, %cond.end.14
  %33 = load i8*, i8** %str, align 8
  %34 = load i8*, i8** %end, align 8
  %cmp20 = icmp ult i8* %33, %34
  br i1 %cmp20, label %while.body, label %while.end.190

while.body:                                       ; preds = %while.cond
  %35 = load i8*, i8** %str, align 8
  %36 = load i8, i8* %35, align 1
  %conv22 = sext i8 %36 to i32
  %cmp23 = icmp eq i32 %conv22, 32
  br i1 %cmp23, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %37 = load i8*, i8** %str, align 8
  %38 = load i8, i8* %37, align 1
  %conv25 = sext i8 %38 to i32
  %cmp26 = icmp eq i32 %conv25, 9
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %lor.lhs.false, %while.body
  %39 = load i8*, i8** %whitespace, align 8
  %tobool29 = icmp ne i8* %39, null
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.then.28
  %40 = load i8*, i8** %str, align 8
  store i8* %40, i8** %whitespace, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.28
  %41 = load i8*, i8** %str, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr32, i8** %str, align 8
  br label %if.end.189

if.else:                                          ; preds = %lor.lhs.false
  %42 = load i8*, i8** %str, align 8
  %43 = load i8, i8* %42, align 1
  %conv33 = sext i8 %43 to i32
  %cmp34 = icmp eq i32 %conv33, 13
  br i1 %cmp34, label %land.lhs.true, label %if.else.46

land.lhs.true:                                    ; preds = %if.else
  %44 = load i8*, i8** %str, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8*, i8** %end, align 8
  %cmp37 = icmp ult i8* %add.ptr36, %45
  br i1 %cmp37, label %land.lhs.true.39, label %if.else.46

land.lhs.true.39:                                 ; preds = %land.lhs.true
  %46 = load i8*, i8** %str, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %47 to i32
  %cmp42 = icmp eq i32 %conv41, 10
  br i1 %cmp42, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %land.lhs.true.39
  %48 = load i8*, i8** %str, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr45, i8** %str, align 8
  br label %if.end.188

if.else.46:                                       ; preds = %land.lhs.true.39, %land.lhs.true, %if.else
  %49 = load i8*, i8** %str, align 8
  %50 = load i8, i8* %49, align 1
  %conv47 = sext i8 %50 to i32
  %cmp48 = icmp eq i32 %conv47, 10
  br i1 %cmp48, label %if.then.50, label %if.else.53

if.then.50:                                       ; preds = %if.else.46
  store i8* null, i8** %whitespace, align 8
  %51 = load i8*, i8** %str, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr51, i8** %str, align 8
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %r, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr52, i8** %r, align 8
  store i8 %52, i8* %53, align 1
  br label %if.end.187

if.else.53:                                       ; preds = %if.else.46
  %54 = load i8*, i8** %whitespace, align 8
  %tobool54 = icmp ne i8* %54, null
  br i1 %tobool54, label %if.then.55, label %if.end.62

if.then.55:                                       ; preds = %if.else.53
  br label %while.cond.56

while.cond.56:                                    ; preds = %while.body.59, %if.then.55
  %55 = load i8*, i8** %whitespace, align 8
  %56 = load i8*, i8** %str, align 8
  %cmp57 = icmp ult i8* %55, %56
  br i1 %cmp57, label %while.body.59, label %while.end

while.body.59:                                    ; preds = %while.cond.56
  %57 = load i8*, i8** %whitespace, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr60, i8** %whitespace, align 8
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %r, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr61, i8** %r, align 8
  store i8 %58, i8* %59, align 1
  br label %while.cond.56

while.end:                                        ; preds = %while.cond.56
  store i8* null, i8** %whitespace, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %while.end, %if.else.53
  %60 = load i8*, i8** %str, align 8
  %61 = load i8, i8* %60, align 1
  %conv63 = sext i8 %61 to i32
  %cmp64 = icmp eq i32 %conv63, 61
  br i1 %cmp64, label %if.then.66, label %if.else.183

if.then.66:                                       ; preds = %if.end.62
  %62 = load i8*, i8** %str, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %62, i64 2
  %63 = load i8*, i8** %end, align 8
  %cmp68 = icmp ult i8* %add.ptr67, %63
  br i1 %cmp68, label %land.lhs.true.70, label %if.else.140

land.lhs.true.70:                                 ; preds = %if.then.66
  %64 = load i8*, i8** %str, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8, i8* %arrayidx71, align 1
  %conv72 = sext i8 %65 to i32
  %cmp73 = icmp sge i32 %conv72, 48
  br i1 %cmp73, label %land.lhs.true.75, label %lor.lhs.false.80

land.lhs.true.75:                                 ; preds = %land.lhs.true.70
  %66 = load i8*, i8** %str, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %67 to i32
  %cmp78 = icmp sle i32 %conv77, 57
  br i1 %cmp78, label %land.lhs.true.100, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %land.lhs.true.75, %land.lhs.true.70
  %68 = load i8*, i8** %str, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %68, i64 1
  %69 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %69 to i32
  %cmp83 = icmp sge i32 %conv82, 97
  br i1 %cmp83, label %land.lhs.true.85, label %lor.lhs.false.90

land.lhs.true.85:                                 ; preds = %lor.lhs.false.80
  %70 = load i8*, i8** %str, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %70, i64 1
  %71 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %71 to i32
  %cmp88 = icmp sle i32 %conv87, 102
  br i1 %cmp88, label %land.lhs.true.100, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %land.lhs.true.85, %lor.lhs.false.80
  %72 = load i8*, i8** %str, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %72, i64 1
  %73 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %73 to i32
  %cmp93 = icmp sge i32 %conv92, 65
  br i1 %cmp93, label %land.lhs.true.95, label %if.else.140

land.lhs.true.95:                                 ; preds = %lor.lhs.false.90
  %74 = load i8*, i8** %str, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %74, i64 1
  %75 = load i8, i8* %arrayidx96, align 1
  %conv97 = sext i8 %75 to i32
  %cmp98 = icmp sle i32 %conv97, 70
  br i1 %cmp98, label %land.lhs.true.100, label %if.else.140

land.lhs.true.100:                                ; preds = %land.lhs.true.95, %land.lhs.true.85, %land.lhs.true.75
  %76 = load i8*, i8** %str, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %76, i64 2
  %77 = load i8, i8* %arrayidx101, align 1
  %conv102 = sext i8 %77 to i32
  %cmp103 = icmp sge i32 %conv102, 48
  br i1 %cmp103, label %land.lhs.true.105, label %lor.lhs.false.110

land.lhs.true.105:                                ; preds = %land.lhs.true.100
  %78 = load i8*, i8** %str, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %78, i64 2
  %79 = load i8, i8* %arrayidx106, align 1
  %conv107 = sext i8 %79 to i32
  %cmp108 = icmp sle i32 %conv107, 57
  br i1 %cmp108, label %if.then.130, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %land.lhs.true.105, %land.lhs.true.100
  %80 = load i8*, i8** %str, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %80, i64 2
  %81 = load i8, i8* %arrayidx111, align 1
  %conv112 = sext i8 %81 to i32
  %cmp113 = icmp sge i32 %conv112, 97
  br i1 %cmp113, label %land.lhs.true.115, label %lor.lhs.false.120

land.lhs.true.115:                                ; preds = %lor.lhs.false.110
  %82 = load i8*, i8** %str, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %82, i64 2
  %83 = load i8, i8* %arrayidx116, align 1
  %conv117 = sext i8 %83 to i32
  %cmp118 = icmp sle i32 %conv117, 102
  br i1 %cmp118, label %if.then.130, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %land.lhs.true.115, %lor.lhs.false.110
  %84 = load i8*, i8** %str, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %84, i64 2
  %85 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %85 to i32
  %cmp123 = icmp sge i32 %conv122, 65
  br i1 %cmp123, label %land.lhs.true.125, label %if.else.140

land.lhs.true.125:                                ; preds = %lor.lhs.false.120
  %86 = load i8*, i8** %str, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %86, i64 2
  %87 = load i8, i8* %arrayidx126, align 1
  %conv127 = sext i8 %87 to i32
  %cmp128 = icmp sle i32 %conv127, 70
  br i1 %cmp128, label %if.then.130, label %if.else.140

if.then.130:                                      ; preds = %land.lhs.true.125, %land.lhs.true.115, %land.lhs.true.105
  %88 = load i8*, i8** %str, align 8
  %incdec.ptr131 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr131, i8** %str, align 8
  %89 = load i8*, i8** %str, align 8
  %incdec.ptr132 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr132, i8** %str, align 8
  %90 = load i8, i8* %89, align 1
  %arrayidx133 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i32 0, i64 0
  store i8 %90, i8* %arrayidx133, align 1
  %91 = load i8*, i8** %str, align 8
  %incdec.ptr134 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr134, i8** %str, align 8
  %92 = load i8, i8* %91, align 1
  %arrayidx135 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i32 0, i64 1
  store i8 %92, i8* %arrayidx135, align 1
  %arrayidx136 = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i32 0, i64 2
  store i8 0, i8* %arrayidx136, align 1
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buf, i32 0, i32 0
  %call137 = call i64 @strtol(i8* %arraydecay, i8** null, i32 16)
  %conv138 = trunc i64 %call137 to i8
  %93 = load i8*, i8** %r, align 8
  %incdec.ptr139 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr139, i8** %r, align 8
  store i8 %conv138, i8* %93, align 1
  br label %if.end.182

if.else.140:                                      ; preds = %land.lhs.true.125, %lor.lhs.false.120, %land.lhs.true.95, %lor.lhs.false.90, %if.then.66
  %94 = load i8*, i8** %str, align 8
  %add.ptr141 = getelementptr inbounds i8, i8* %94, i64 1
  store i8* %add.ptr141, i8** %p, align 8
  br label %while.cond.142

while.cond.142:                                   ; preds = %while.body.151, %if.else.140
  %95 = load i8*, i8** %p, align 8
  %96 = load i8*, i8** %end, align 8
  %cmp143 = icmp ult i8* %95, %96
  br i1 %cmp143, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.142
  %97 = load i8*, i8** %p, align 8
  %98 = load i8, i8* %97, align 1
  %conv145 = sext i8 %98 to i32
  %cmp146 = icmp eq i32 %conv145, 32
  br i1 %cmp146, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %99 = load i8*, i8** %p, align 8
  %100 = load i8, i8* %99, align 1
  %conv148 = sext i8 %100 to i32
  %cmp149 = icmp eq i32 %conv148, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %101 = phi i1 [ true, %land.rhs ], [ %cmp149, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond.142
  %102 = phi i1 [ false, %while.cond.142 ], [ %101, %lor.end ]
  br i1 %102, label %while.body.151, label %while.end.153

while.body.151:                                   ; preds = %land.end
  %103 = load i8*, i8** %p, align 8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr152, i8** %p, align 8
  br label %while.cond.142

while.end.153:                                    ; preds = %land.end
  %104 = load i8*, i8** %p, align 8
  %105 = load i8*, i8** %end, align 8
  %cmp154 = icmp ult i8* %104, %105
  br i1 %cmp154, label %land.lhs.true.156, label %if.else.162

land.lhs.true.156:                                ; preds = %while.end.153
  %106 = load i8*, i8** %p, align 8
  %107 = load i8, i8* %106, align 1
  %conv157 = sext i8 %107 to i32
  %cmp158 = icmp eq i32 %conv157, 10
  br i1 %cmp158, label %if.then.160, label %if.else.162

if.then.160:                                      ; preds = %land.lhs.true.156
  %108 = load i8*, i8** %p, align 8
  %add.ptr161 = getelementptr inbounds i8, i8* %108, i64 1
  store i8* %add.ptr161, i8** %str, align 8
  br label %if.end.181

if.else.162:                                      ; preds = %land.lhs.true.156, %while.end.153
  %109 = load i8*, i8** %p, align 8
  %add.ptr163 = getelementptr inbounds i8, i8* %109, i64 1
  %110 = load i8*, i8** %end, align 8
  %cmp164 = icmp ult i8* %add.ptr163, %110
  br i1 %cmp164, label %land.lhs.true.166, label %if.else.177

land.lhs.true.166:                                ; preds = %if.else.162
  %111 = load i8*, i8** %p, align 8
  %112 = load i8, i8* %111, align 1
  %conv167 = sext i8 %112 to i32
  %cmp168 = icmp eq i32 %conv167, 13
  br i1 %cmp168, label %land.lhs.true.170, label %if.else.177

land.lhs.true.170:                                ; preds = %land.lhs.true.166
  %113 = load i8*, i8** %p, align 8
  %add.ptr171 = getelementptr inbounds i8, i8* %113, i64 1
  %114 = load i8, i8* %add.ptr171, align 1
  %conv172 = sext i8 %114 to i32
  %cmp173 = icmp eq i32 %conv172, 10
  br i1 %cmp173, label %if.then.175, label %if.else.177

if.then.175:                                      ; preds = %land.lhs.true.170
  %115 = load i8*, i8** %p, align 8
  %add.ptr176 = getelementptr inbounds i8, i8* %115, i64 2
  store i8* %add.ptr176, i8** %str, align 8
  br label %if.end.180

if.else.177:                                      ; preds = %land.lhs.true.170, %land.lhs.true.166, %if.else.162
  %116 = load i8*, i8** %str, align 8
  %incdec.ptr178 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr178, i8** %str, align 8
  %117 = load i8, i8* %116, align 1
  %118 = load i8*, i8** %r, align 8
  %incdec.ptr179 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr179, i8** %r, align 8
  store i8 %117, i8* %118, align 1
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.177, %if.then.175
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.160
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.130
  br label %if.end.186

if.else.183:                                      ; preds = %if.end.62
  %119 = load i8*, i8** %str, align 8
  %incdec.ptr184 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr184, i8** %str, align 8
  %120 = load i8, i8* %119, align 1
  %121 = load i8*, i8** %r, align 8
  %incdec.ptr185 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr185, i8** %r, align 8
  store i8 %120, i8* %121, align 1
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.183, %if.end.182
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.then.50
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.then.44
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.end.31
  br label %while.cond

while.end.190:                                    ; preds = %while.cond
  %122 = load i8*, i8** %whitespace, align 8
  %tobool191 = icmp ne i8* %122, null
  br i1 %tobool191, label %if.then.192, label %if.end.200

if.then.192:                                      ; preds = %while.end.190
  br label %while.cond.193

while.cond.193:                                   ; preds = %while.body.196, %if.then.192
  %123 = load i8*, i8** %whitespace, align 8
  %124 = load i8*, i8** %str, align 8
  %cmp194 = icmp ult i8* %123, %124
  br i1 %cmp194, label %while.body.196, label %while.end.199

while.body.196:                                   ; preds = %while.cond.193
  %125 = load i8*, i8** %whitespace, align 8
  %incdec.ptr197 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr197, i8** %whitespace, align 8
  %126 = load i8, i8* %125, align 1
  %127 = load i8*, i8** %r, align 8
  %incdec.ptr198 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr198, i8** %r, align 8
  store i8 %126, i8* %127, align 1
  br label %while.cond.193

while.end.199:                                    ; preds = %while.cond.193
  br label %if.end.200

if.end.200:                                       ; preds = %while.end.199, %while.end.190
  %128 = load i8*, i8** %r, align 8
  store i8 0, i8* %128, align 1
  %129 = load i8*, i8** %r, align 8
  %130 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any201 = getelementptr inbounds %struct.sv, %struct.sv* %130, i32 0, i32 0
  %131 = load i8*, i8** %sv_any201, align 8
  %132 = bitcast i8* %131 to %struct.xpv*
  %xpv_pv202 = getelementptr inbounds %struct.xpv, %struct.xpv* %132, i32 0, i32 0
  %133 = load i8*, i8** %xpv_pv202, align 8
  %sub.ptr.lhs.cast203 = ptrtoint i8* %129 to i64
  %sub.ptr.rhs.cast204 = ptrtoint i8* %133 to i64
  %sub.ptr.sub205 = sub i64 %sub.ptr.lhs.cast203, %sub.ptr.rhs.cast204
  %134 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %sv_any206 = getelementptr inbounds %struct.sv, %struct.sv* %134, i32 0, i32 0
  %135 = load i8*, i8** %sv_any206, align 8
  %136 = bitcast i8* %135 to %struct.xpv*
  %xpv_cur207 = getelementptr inbounds %struct.xpv, %struct.xpv* %136, i32 0, i32 1
  store i64 %sub.ptr.sub205, i64* %xpv_cur207, align 8
  store i64 %sub.ptr.sub205, i64* %tmp
  %137 = load i64, i64* %tmp
  %138 = load %struct.sv*, %struct.sv** %RETVAL, align 8
  %139 = load i32, i32* %ax, align 4
  %add208 = add nsw i32 %139, 0
  %idxprom209 = sext i32 %add208 to i64
  %140 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx210 = getelementptr inbounds %struct.sv*, %struct.sv** %140, i64 %idxprom209
  store %struct.sv* %138, %struct.sv** %arrayidx210, align 8
  %141 = load i32, i32* %ax, align 4
  %add211 = add nsw i32 %141, 0
  %idxprom212 = sext i32 %add211 to i64
  %142 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx213 = getelementptr inbounds %struct.sv*, %struct.sv** %142, i64 %idxprom212
  %143 = load %struct.sv*, %struct.sv** %arrayidx213, align 8
  %call214 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %143)
  store i64 1, i64* %tmpXSoff, align 8
  %144 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %145 = load i32, i32* %ax, align 4
  %idx.ext216 = sext i32 %145 to i64
  %add.ptr217 = getelementptr inbounds %struct.sv*, %struct.sv** %144, i64 %idx.ext216
  %146 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %146, 1
  %add.ptr218 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr217, i64 %sub
  store %struct.sv** %add.ptr218, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i64 @strtol(i8*, i8**, i32) #1

; Function Attrs: nounwind uwtable
define void @boot_MIME__Base64(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %file = alloca i8*, align 8
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %2 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %3 = load i32, i32* %2, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** %mark, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %6 = load %struct.sv**, %struct.sv*** %sp, align 8
  %7 = load %struct.sv**, %struct.sv*** %mark, align 8
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.rhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 8
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %items, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8** %file, align 8
  %8 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), void (%struct.cv*)* @XS_MIME__Base64_encode_base64, i8* %8)
  %9 = bitcast %struct.cv* %call to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  %10 = load i8*, i8** %file, align 8
  %call6 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), void (%struct.cv*)* @XS_MIME__Base64_decode_base64, i8* %10)
  %11 = bitcast %struct.cv* %call6 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  %12 = load i8*, i8** %file, align 8
  %call7 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), void (%struct.cv*)* @XS_MIME__QuotedPrint_encode_qp, i8* %12)
  %13 = bitcast %struct.cv* %call7 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  %14 = load i8*, i8** %file, align 8
  %call8 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), void (%struct.cv*)* @XS_MIME__QuotedPrint_decode_qp, i8* %14)
  %15 = bitcast %struct.cv* %call8 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  %16 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %16, 0
  %idxprom = sext i32 %add9 to i64
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %19 = load i32, i32* %ax, align 4
  %idx.ext10 = sext i32 %19 to i64
  %add.ptr11 = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %idx.ext10
  %20 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %20, 1
  %add.ptr12 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr11, i64 %sub
  store %struct.sv** %add.ptr12, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
