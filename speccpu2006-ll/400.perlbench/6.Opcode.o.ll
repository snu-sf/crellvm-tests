; ModuleID = 'Opcode.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.interpreter = type { i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, {}*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%union.any = type { i8* }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.my_cxt_t = type { %struct.hv*, %struct.sv*, i64, i32 }
%struct.xpv = type { i8*, i64, i64 }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xrv = type { %struct.sv* }

@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Usage: Opcode::_safe_pkg_prep(Package)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@PL_defgv = external global %struct.gv*, align 8
@PL_Sv = external global %struct.sv*, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"Usage: Opcode::_safe_call_sv(Package, mask, codesv)\00", align 1
@PL_endav = external global %struct.av*, align 8
@PL_defstash = external global %struct.hv*, align 8
@PL_curstash = external global %struct.hv*, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@PL_incgv = external global %struct.gv*, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@PL_markstack_max = external global i32*, align 8
@PL_op = external global %struct.op*, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"Usage: Opcode::verify_opset(opset, fatal = 0)\00", align 1
@PL_curpad = external global %struct.sv**, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"Usage: Opcode::invert_opset(opset)\00", align 1
@my_cxt = internal global %struct.my_cxt_t zeroinitializer, align 8
@PL_maxo = external global i32, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"Usage: Opcode::opset_to_ops(opset, desc = 0)\00", align 1
@PL_stack_max = external global %struct.sv**, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"(opset)\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Usage: %s(safe, ...)\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Not a Safe object\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@.str.13 = private unnamed_addr constant [35 x i8] c"panic: opcode %d (%s) out of range\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"panic: invalid bitspec for \22%s\22 (type %u)\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Usage: Opcode::define_optag(optagsv, mask)\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Usage: Opcode::empty_opset()\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Usage: Opcode::full_opset()\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Usage: Opcode::opmask_add(opset)\00", align 1
@PL_op_mask = external global i8*, align 8
@.str.19 = private unnamed_addr constant [25 x i8] c"Usage: Opcode::opcodes()\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"opcodes in list context not yet implemented\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Usage: Opcode::opmask()\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Opcode.c\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Opcode::_safe_pkg_prep\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Opcode::_safe_call_sv\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"$$$\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Opcode::verify_opset\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Opcode::invert_opset\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Opcode::opset_to_ops\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Opcode::opset\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c";@\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Opcode::permit_only\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"$;@\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Opcode::deny\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"Opcode::deny_only\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"Opcode::permit\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"Opcode::opdesc\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"Opcode::define_optag\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"Opcode::empty_opset\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"Opcode::full_opset\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"Opcode::opmask_add\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"Opcode::opcodes\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Opcode::opmask\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"opset_len %ld\0A\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"PL_op_mask restored\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"wrong size\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"Invalid opset: %s\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"Unknown operator tag \22%s\22\00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"Can't negate operators here (\22%s\22)\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Unknown operator name \22%s\22\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"Unknown operator prefix \22%s\22\00", align 1
@.str.57 = private unnamed_addr constant [39 x i8] c"panic: opcode \22%s\22 value %d is invalid\00", align 1
@.str.58 = private unnamed_addr constant [47 x i8] c"set_opset_bits bit %2d (off=%d, bit=%d) %s %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"set_opset_bits opset %s %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [32 x i8] c"Opcode tag \22%s\22 already defined\00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c"Can't add to uninitialised PL_op_mask\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c":none\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c":all\00", align 1

; Function Attrs: nounwind uwtable
define void @XS_Opcode__safe_pkg_prep(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %Package = alloca i8*, align 8
  %hv = alloca %struct.hv*, align 8
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %items, align 4
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext7 = sext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idx.neg
  store %struct.sv** %add.ptr8, %struct.sv*** %sp, align 8
  %11 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %11, 0
  %idxprom = sext i32 %add9 to i64
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 262144
  %cmp10 = icmp eq i32 %and, 262144
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load i32, i32* %ax, align 4
  %add12 = add nsw i32 %15, 0
  %idxprom13 = sext i32 %add12 to i64
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx14 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idxprom13
  %17 = load %struct.sv*, %struct.sv** %arrayidx14, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any, align 8
  %19 = bitcast i8* %18 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %19, i32 0, i32 0
  %20 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %21 = load i32, i32* %ax, align 4
  %add15 = add nsw i32 %21, 0
  %idxprom16 = sext i32 %add15 to i64
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %idxprom16
  %23 = load %struct.sv*, %struct.sv** %arrayidx17, align 8
  %call = call i8* @Perl_sv_2pv_nolen(%struct.sv* %23)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %20, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %Package, align 8
  call void @Perl_push_scope()
  %24 = load i8*, i8** %Package, align 8
  %call18 = call %struct.hv* @Perl_gv_stashpv(i8* %24, i32 4)
  store %struct.hv* %call18, %struct.hv** %hv, align 8
  %25 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_any19 = getelementptr inbounds %struct.hv, %struct.hv* %25, i32 0, i32 0
  %26 = load %struct.xpvhv*, %struct.xpvhv** %sv_any19, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %26, i32 0, i32 10
  %27 = load i8*, i8** %xhv_name, align 8
  %call20 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.then.21, label %if.end.30

if.then.21:                                       ; preds = %cond.end
  %28 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_any22 = getelementptr inbounds %struct.hv, %struct.hv* %28, i32 0, i32 0
  %29 = load %struct.xpvhv*, %struct.xpvhv** %sv_any22, align 8
  %xhv_name23 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %29, i32 0, i32 10
  %30 = load i8*, i8** %xhv_name23, align 8
  call void @Perl_safesysfree(i8* %30)
  %call24 = call i8* @Perl_savepv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %31 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_any25 = getelementptr inbounds %struct.hv, %struct.hv* %31, i32 0, i32 0
  %32 = load %struct.xpvhv*, %struct.xpvhv** %sv_any25, align 8
  %xhv_name26 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %32, i32 0, i32 10
  store i8* %call24, i8** %xhv_name26, align 8
  %33 = load %struct.hv*, %struct.hv** %hv, align 8
  %34 = load %struct.gv*, %struct.gv** @PL_defgv, align 8
  %35 = bitcast %struct.gv* %34 to %struct.sv*
  %call27 = call %struct.sv** @Perl_hv_store(%struct.hv* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.sv* %35, i32 0)
  %36 = load %struct.gv*, %struct.gv** @PL_defgv, align 8
  %37 = bitcast %struct.gv* %36 to %struct.sv*
  store %struct.sv* %37, %struct.sv** @PL_Sv, align 8
  %38 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool28 = icmp ne %struct.sv* %38, null
  br i1 %tobool28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.21
  %39 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %39, i32 0, i32 1
  %40 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool29 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.21
  %41 = phi i1 [ false, %if.then.21 ], [ %tobool29, %land.rhs ]
  %land.ext = zext i1 %41 to i32
  %42 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %land.end, %cond.end
  call void @Perl_pop_scope()
  %43 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %43, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_croak(i8*, ...) #1

declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

declare void @Perl_push_scope() #1

declare %struct.hv* @Perl_gv_stashpv(i8*, i32) #1

declare i32 @strcmp(i8*, i8*) #1

declare void @Perl_safesysfree(i8*) #1

declare i8* @Perl_savepv(i8*) #1

declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #1

declare void @Perl_pop_scope() #1

; Function Attrs: nounwind uwtable
define void @XS_Opcode__safe_call_sv(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %Package = alloca i8*, align 8
  %mask = alloca %struct.sv*, align 8
  %codesv = alloca %struct.sv*, align 8
  %op_mask_buf = alloca [452 x i8], align 16
  %gv = alloca %struct.gv*, align 8
  %dummy_hv = alloca %struct.hv*, align 8
  %tmp = alloca i32, align 4
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
  %cmp = icmp ne i32 %8, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %items, align 4
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext7 = sext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idx.neg
  store %struct.sv** %add.ptr8, %struct.sv*** %sp, align 8
  %11 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %11, 0
  %idxprom = sext i32 %add9 to i64
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idxprom
  %13 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 262144
  %cmp10 = icmp eq i32 %and, 262144
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load i32, i32* %ax, align 4
  %add12 = add nsw i32 %15, 0
  %idxprom13 = sext i32 %add12 to i64
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx14 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idxprom13
  %17 = load %struct.sv*, %struct.sv** %arrayidx14, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any, align 8
  %19 = bitcast i8* %18 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %19, i32 0, i32 0
  %20 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %21 = load i32, i32* %ax, align 4
  %add15 = add nsw i32 %21, 0
  %idxprom16 = sext i32 %add15 to i64
  %22 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %22, i64 %idxprom16
  %23 = load %struct.sv*, %struct.sv** %arrayidx17, align 8
  %call = call i8* @Perl_sv_2pv_nolen(%struct.sv* %23)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %20, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %Package, align 8
  %24 = load i32, i32* %ax, align 4
  %add18 = add nsw i32 %24, 1
  %idxprom19 = sext i32 %add18 to i64
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx20 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom19
  %26 = load %struct.sv*, %struct.sv** %arrayidx20, align 8
  store %struct.sv* %26, %struct.sv** %mask, align 8
  %27 = load i32, i32* %ax, align 4
  %add21 = add nsw i32 %27, 2
  %idxprom22 = sext i32 %add21 to i64
  %28 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx23 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i64 %idxprom22
  %29 = load %struct.sv*, %struct.sv** %arrayidx23, align 8
  store %struct.sv* %29, %struct.sv** %codesv, align 8
  call void @Perl_push_scope()
  %30 = load %struct.sv*, %struct.sv** %mask, align 8
  %arraydecay = getelementptr inbounds [452 x i8], [452 x i8]* %op_mask_buf, i32 0, i32 0
  call void @opmask_addlocal(%struct.sv* %30, i8* %arraydecay)
  call void @Perl_save_aptr(%struct.av** @PL_endav)
  %call24 = call %struct.av* @Perl_newAV()
  %31 = bitcast %struct.av* %call24 to %struct.sv*
  %call25 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %31)
  %32 = bitcast %struct.sv* %call25 to %struct.av*
  store %struct.av* %32, %struct.av** @PL_endav, align 8
  call void @Perl_save_hptr(%struct.hv** @PL_defstash)
  %33 = load i8*, i8** %Package, align 8
  %call26 = call %struct.hv* @Perl_gv_stashpv(i8* %33, i32 4)
  store %struct.hv* %call26, %struct.hv** @PL_defstash, align 8
  call void @Perl_save_hptr(%struct.hv** @PL_curstash)
  %34 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  store %struct.hv* %34, %struct.hv** @PL_curstash, align 8
  %call27 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 4, i32 11)
  store %struct.gv* %call27, %struct.gv** %gv, align 8
  %35 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any28 = getelementptr inbounds %struct.gv, %struct.gv* %35, i32 0, i32 0
  %36 = load %struct.xpvgv*, %struct.xpvgv** %sv_any28, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %36, i32 0, i32 7
  %37 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %37, i32 0, i32 5
  %38 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  %39 = bitcast %struct.hv* %38 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %39)
  %40 = load %struct.hv*, %struct.hv** @PL_defstash, align 8
  %41 = bitcast %struct.hv* %40 to %struct.sv*
  store %struct.sv* %41, %struct.sv** @PL_Sv, align 8
  %42 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool = icmp ne %struct.sv* %42, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %43 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 1
  %44 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %44, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool29 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %45 = phi i1 [ false, %cond.end ], [ %tobool29, %land.rhs ]
  %land.ext = zext i1 %45 to i32
  %46 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %47 = bitcast %struct.sv* %46 to %struct.hv*
  %48 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any30 = getelementptr inbounds %struct.gv, %struct.gv* %48, i32 0, i32 0
  %49 = load %struct.xpvgv*, %struct.xpvgv** %sv_any30, align 8
  %xgv_gp31 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %49, i32 0, i32 7
  %50 = load %struct.gp*, %struct.gp** %xgv_gp31, align 8
  %gp_hv32 = getelementptr inbounds %struct.gp, %struct.gp* %50, i32 0, i32 5
  store %struct.hv* %47, %struct.hv** %gp_hv32, align 8
  %51 = load %struct.gv*, %struct.gv** @PL_incgv, align 8
  %call33 = call %struct.hv* @Perl_save_hash(%struct.gv* %51)
  store %struct.hv* %call33, %struct.hv** %dummy_hv, align 8
  %call34 = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 1, i32 11)
  %call35 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %call34)
  %sv_any36 = getelementptr inbounds %struct.gv, %struct.gv* %call35, i32 0, i32 0
  %52 = load %struct.xpvgv*, %struct.xpvgv** %sv_any36, align 8
  %xgv_gp37 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %52, i32 0, i32 7
  %53 = load %struct.gp*, %struct.gp** %xgv_gp37, align 8
  %gp_hv38 = getelementptr inbounds %struct.gp, %struct.gp* %53, i32 0, i32 5
  %54 = load %struct.hv*, %struct.hv** %gp_hv38, align 8
  %55 = bitcast %struct.hv* %54 to %struct.sv*
  store %struct.sv* %55, %struct.sv** @PL_Sv, align 8
  %56 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool39 = icmp ne %struct.sv* %56, null
  br i1 %tobool39, label %land.rhs.40, label %land.end.44

land.rhs.40:                                      ; preds = %land.end
  %57 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt41 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 1
  %58 = load i32, i32* %sv_refcnt41, align 4
  %inc42 = add i32 %58, 1
  store i32 %inc42, i32* %sv_refcnt41, align 4
  %tobool43 = icmp ne i32 %inc42, 0
  br label %land.end.44

land.end.44:                                      ; preds = %land.rhs.40, %land.end
  %59 = phi i1 [ false, %land.end ], [ %tobool43, %land.rhs.40 ]
  %land.ext45 = zext i1 %59 to i32
  %60 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %61 = bitcast %struct.sv* %60 to %struct.hv*
  %62 = load %struct.gv*, %struct.gv** @PL_incgv, align 8
  %sv_any46 = getelementptr inbounds %struct.gv, %struct.gv* %62, i32 0, i32 0
  %63 = load %struct.xpvgv*, %struct.xpvgv** %sv_any46, align 8
  %xgv_gp47 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %63, i32 0, i32 7
  %64 = load %struct.gp*, %struct.gp** %xgv_gp47, align 8
  %gp_hv48 = getelementptr inbounds %struct.gp, %struct.gp* %64, i32 0, i32 5
  store %struct.hv* %61, %struct.hv** %gp_hv48, align 8
  %65 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr49 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %incdec.ptr49, i32** @PL_markstack_ptr, align 8
  %66 = load i32*, i32** @PL_markstack_max, align 8
  %cmp50 = icmp eq i32* %incdec.ptr49, %66
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.end.44
  call void @Perl_markstack_grow()
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %land.end.44
  %67 = load %struct.sv**, %struct.sv*** %sp, align 8
  %68 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast54 = ptrtoint %struct.sv** %67 to i64
  %sub.ptr.rhs.cast55 = ptrtoint %struct.sv** %68 to i64
  %sub.ptr.sub56 = sub i64 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %sub.ptr.div57 = sdiv exact i64 %sub.ptr.sub56, 8
  %conv58 = trunc i64 %sub.ptr.div57 to i32
  %69 = load i32*, i32** @PL_markstack_ptr, align 8
  store i32 %conv58, i32* %69, align 4
  store i32 %conv58, i32* %tmp
  %70 = load i32, i32* %tmp
  %71 = load %struct.sv*, %struct.sv** %codesv, align 8
  %72 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %72, i32 0, i32 6
  %73 = load i8, i8* %op_flags, align 1
  %conv59 = zext i8 %73 to i32
  %and60 = and i32 %conv59, 3
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %cond.true.62, label %cond.false.69

cond.true.62:                                     ; preds = %if.end.53
  %74 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags63 = getelementptr inbounds %struct.op, %struct.op* %74, i32 0, i32 6
  %75 = load i8, i8* %op_flags63, align 1
  %conv64 = zext i8 %75 to i32
  %and65 = and i32 %conv64, 3
  %cmp66 = icmp eq i32 %and65, 3
  %cond68 = select i1 %cmp66, i32 1, i32 0
  br label %cond.end.71

cond.false.69:                                    ; preds = %if.end.53
  %call70 = call i32 @Perl_dowantarray()
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.69, %cond.true.62
  %cond72 = phi i32 [ %cond68, %cond.true.62 ], [ %call70, %cond.false.69 ]
  %or = or i32 %cond72, 4
  %or73 = or i32 %or, 16
  %call74 = call i32 @Perl_call_sv(%struct.sv* %71, i32 %or73)
  %76 = load %struct.hv*, %struct.hv** %dummy_hv, align 8
  %77 = bitcast %struct.hv* %76 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %77)
  %78 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %78, %struct.sv*** %sp, align 8
  call void @Perl_pop_scope()
  %79 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %79, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opmask_addlocal(%struct.sv* %opset, i8* %op_mask_buf) #0 {
entry:
  %opset.addr = alloca %struct.sv*, align 8
  %op_mask_buf.addr = alloca i8*, align 8
  %orig_op_mask = alloca i8*, align 8
  store %struct.sv* %opset, %struct.sv** %opset.addr, align 8
  store i8* %op_mask_buf, i8** %op_mask_buf.addr, align 8
  %0 = load i8*, i8** @PL_op_mask, align 8
  store i8* %0, i8** %orig_op_mask, align 8
  call void @Perl_save_vptr(i8* bitcast (i8** @PL_op_mask to i8*))
  %1 = load i32, i32* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 3), align 4
  %cmp = icmp sge i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_save_destructor(void (i8*)* bitcast (void (i8*, ...)* @Perl_warn to void (i8*)*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %op_mask_buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  store i8* %arrayidx, i8** @PL_op_mask, align 8
  %3 = load i8*, i8** %orig_op_mask, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load i8*, i8** @PL_op_mask, align 8
  %5 = load i8*, i8** %orig_op_mask, align 8
  %6 = load i32, i32* @PL_maxo, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %mul, i32 1, i1 false)
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %7 = load i8*, i8** @PL_op_mask, align 8
  %8 = load i32, i32* @PL_maxo, align 4
  %conv2 = sext i32 %8 to i64
  %mul3 = mul i64 %conv2, 1
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %mul3, i32 1, i1 false)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.1
  %9 = load %struct.sv*, %struct.sv** %opset.addr, align 8
  call void @opmask_add(%struct.sv* %9)
  ret void
}

declare void @Perl_save_aptr(%struct.av**) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare %struct.av* @Perl_newAV() #1

declare void @Perl_save_hptr(%struct.hv**) #1

declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

declare void @Perl_sv_free(%struct.sv*) #1

declare %struct.hv* @Perl_save_hash(%struct.gv*) #1

declare %struct.gv* @Perl_gv_HVadd(%struct.gv*) #1

declare void @Perl_markstack_grow() #1

declare i32 @Perl_call_sv(%struct.sv*, i32) #1

declare i32 @Perl_dowantarray() #1

; Function Attrs: nounwind uwtable
define void @XS_Opcode_verify_opset(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %opset = alloca %struct.sv*, align 8
  %fatal = alloca i32, align 4
  %RETVAL = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
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
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %items, align 4
  %cmp7 = icmp sgt i32 %9, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %10, 0
  %idxprom = sext i32 %add9 to i64
  %11 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idxprom
  %12 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %12, %struct.sv** %opset, align 8
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 7
  %14 = load i8, i8* %op_private, align 1
  %conv10 = zext i8 %14 to i32
  %and = and i32 %conv10, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %15, i32 0, i32 3
  %16 = load i64, i64* %op_targ, align 8
  %17 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx11 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %16
  %18 = load %struct.sv*, %struct.sv** %arrayidx11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %18, %cond.true ], [ %call, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %targ, align 8
  %19 = load i32, i32* %items, align 4
  %cmp12 = icmp slt i32 %19, 2
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %cond.end
  store i32 0, i32* %fatal, align 4
  br label %if.end.32

if.else:                                          ; preds = %cond.end
  %20 = load i32, i32* %ax, align 4
  %add15 = add nsw i32 %20, 1
  %idxprom16 = sext i32 %add15 to i64
  %21 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %21, i64 %idxprom16
  %22 = load %struct.sv*, %struct.sv** %arrayidx17, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 2
  %23 = load i32, i32* %sv_flags, align 4
  %and18 = and i32 %23, 65536
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.24

cond.true.20:                                     ; preds = %if.else
  %24 = load i32, i32* %ax, align 4
  %add21 = add nsw i32 %24, 1
  %idxprom22 = sext i32 %add21 to i64
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx23 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom22
  %26 = load %struct.sv*, %struct.sv** %arrayidx23, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 0
  %27 = load i8*, i8** %sv_any, align 8
  %28 = bitcast i8* %27 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %28, i32 0, i32 3
  %29 = load i64, i64* %xiv_iv, align 8
  br label %cond.end.29

cond.false.24:                                    ; preds = %if.else
  %30 = load i32, i32* %ax, align 4
  %add25 = add nsw i32 %30, 1
  %idxprom26 = sext i32 %add25 to i64
  %31 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx27 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %idxprom26
  %32 = load %struct.sv*, %struct.sv** %arrayidx27, align 8
  %call28 = call i64 @Perl_sv_2iv(%struct.sv* %32)
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.24, %cond.true.20
  %cond30 = phi i64 [ %29, %cond.true.20 ], [ %call28, %cond.false.24 ]
  %conv31 = trunc i64 %cond30 to i32
  store i32 %conv31, i32* %fatal, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %cond.end.29, %if.then.14
  %33 = load %struct.sv*, %struct.sv** %opset, align 8
  %34 = load i32, i32* %fatal, align 4
  %call33 = call i32 @verify_opset(%struct.sv* %33, i32 %34)
  store i32 %call33, i32* %RETVAL, align 4
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %36 = load i32, i32* %ax, align 4
  %idx.ext34 = sext i32 %36 to i64
  %add.ptr35 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %idx.ext34
  %add.ptr36 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr35, i64 -1
  store %struct.sv** %add.ptr36, %struct.sv*** %sp, align 8
  %37 = load %struct.sv*, %struct.sv** %targ, align 8
  %38 = load i32, i32* %RETVAL, align 4
  %conv37 = sext i32 %38 to i64
  call void @Perl_sv_setiv(%struct.sv* %37, i64 %conv37)
  %39 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags38 = getelementptr inbounds %struct.sv, %struct.sv* %39, i32 0, i32 2
  %40 = load i32, i32* %sv_flags38, align 4
  %and39 = and i32 %40, 16384
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.32
  %41 = load %struct.sv*, %struct.sv** %targ, align 8
  %call42 = call i32 @Perl_mg_set(%struct.sv* %41)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.32
  %42 = load %struct.sv*, %struct.sv** %targ, align 8
  %43 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr44 = getelementptr inbounds %struct.sv*, %struct.sv** %43, i32 1
  store %struct.sv** %incdec.ptr44, %struct.sv*** %sp, align 8
  store %struct.sv* %42, %struct.sv** %incdec.ptr44, align 8
  store %struct.sv* %42, %struct.sv** %tmp
  %44 = load %struct.sv*, %struct.sv** %tmp
  store i64 1, i64* %tmpXSoff, align 8
  %45 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %46 = load i32, i32* %ax, align 4
  %idx.ext46 = sext i32 %46 to i64
  %add.ptr47 = getelementptr inbounds %struct.sv*, %struct.sv** %45, i64 %idx.ext46
  %47 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %47, 1
  %add.ptr48 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr47, i64 %sub
  store %struct.sv** %add.ptr48, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.sv* @Perl_sv_newmortal() #1

declare i64 @Perl_sv_2iv(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal i32 @verify_opset(%struct.sv* %opset, i32 %fatal) #0 {
entry:
  %opset.addr = alloca %struct.sv*, align 8
  %fatal.addr = alloca i32, align 4
  %err = alloca i8*, align 8
  store %struct.sv* %opset, %struct.sv** %opset.addr, align 8
  store i32 %fatal, i32* %fatal.addr, align 4
  store i8* null, i8** %err, align 8
  %0 = load %struct.sv*, %struct.sv** %opset.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 118423552
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8** %err, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %opset.addr, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %3, 262144
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.else.5, label %if.then.4

if.then.4:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8** %err, align 8
  br label %if.end.7

if.else.5:                                        ; preds = %if.else
  %4 = load %struct.sv*, %struct.sv** %opset.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 0
  %5 = load i8*, i8** %sv_any, align 8
  %6 = bitcast i8* %5 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %6, i32 0, i32 1
  %7 = load i64, i64* %xpv_cur, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 2), align 8
  %cmp = icmp ne i64 %7, %8
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else.5
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i8** %err, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else.5
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then
  %9 = load i8*, i8** %err, align 8
  %tobool9 = icmp ne i8* %9, null
  br i1 %tobool9, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end.8
  %10 = load i32, i32* %fatal.addr, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  %11 = load i8*, i8** %err, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), i8* %11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %land.lhs.true, %if.end.8
  %12 = load i8*, i8** %err, align 8
  %tobool13 = icmp ne i8* %12, null
  %lnot = xor i1 %tobool13, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare void @Perl_sv_setiv(%struct.sv*, i64) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @XS_Opcode_invert_opset(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %opset = alloca %struct.sv*, align 8
  %bitmap = alloca i8*, align 8
  %len = alloca i64, align 8
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %opset, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 2), align 8
  store i64 %12, i64* %len, align 8
  %13 = load %struct.sv*, %struct.sv** %opset, align 8
  %call = call %struct.sv* @new_opset(%struct.sv* %13)
  %call8 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call)
  store %struct.sv* %call8, %struct.sv** %opset, align 8
  %14 = load %struct.sv*, %struct.sv** %opset, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 0
  %17 = load i8*, i8** %xpv_pv, align 8
  store i8* %17, i8** %bitmap, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %18 = load i64, i64* %len, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %len, align 8
  %cmp9 = icmp ugt i64 %18, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i64, i64* %len, align 8
  %20 = load i8*, i8** %bitmap, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %20, i64 %19
  %21 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %21 to i32
  %neg = xor i32 %conv12, -1
  %conv13 = trunc i32 %neg to i8
  %22 = load i64, i64* %len, align 8
  %23 = load i8*, i8** %bitmap, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8 %conv13, i8* %arrayidx14, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i32, i32* @PL_maxo, align 4
  %and = and i32 %24, 7
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %while.end
  %25 = load i32, i32* @PL_maxo, align 4
  %and16 = and i32 %25, 7
  %shl = shl i32 255, %and16
  %neg17 = xor i32 %shl, -1
  %26 = load i64, i64* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 2), align 8
  %sub = sub nsw i64 %26, 1
  %27 = load i8*, i8** %bitmap, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %27, i64 %sub
  %28 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %28 to i32
  %and20 = and i32 %conv19, %neg17
  %conv21 = trunc i32 %and20 to i8
  store i8 %conv21, i8* %arrayidx18, align 1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.15, %while.end
  %29 = load %struct.sv*, %struct.sv** %opset, align 8
  %30 = load i32, i32* %ax, align 4
  %add23 = add nsw i32 %30, 0
  %idxprom24 = sext i32 %add23 to i64
  %31 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx25 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %idxprom24
  store %struct.sv* %29, %struct.sv** %arrayidx25, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %32 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %33 = load i32, i32* %ax, align 4
  %idx.ext26 = sext i32 %33 to i64
  %add.ptr27 = getelementptr inbounds %struct.sv*, %struct.sv** %32, i64 %idx.ext26
  %34 = load i64, i64* %tmpXSoff, align 8
  %sub28 = sub nsw i64 %34, 1
  %add.ptr29 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr27, i64 %sub28
  store %struct.sv** %add.ptr29, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.sv* @new_opset(%struct.sv* %old_opset) #0 {
entry:
  %old_opset.addr = alloca %struct.sv*, align 8
  %opset = alloca %struct.sv*, align 8
  %tmp = alloca i64, align 8
  store %struct.sv* %old_opset, %struct.sv** %old_opset.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %old_opset.addr, align 8
  %tobool = icmp ne %struct.sv* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** %old_opset.addr, align 8
  %call = call i32 @verify_opset(%struct.sv* %1, i32 1)
  %2 = load %struct.sv*, %struct.sv** %old_opset.addr, align 8
  %call1 = call %struct.sv* @Perl_newSVsv(%struct.sv* %2)
  store %struct.sv* %call1, %struct.sv** %opset, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 2), align 8
  %call2 = call %struct.sv* @Perl_newSV(i64 %3)
  store %struct.sv* %call2, %struct.sv** %opset, align 8
  %4 = load %struct.sv*, %struct.sv** %opset, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 0
  %5 = load i8*, i8** %sv_any, align 8
  %6 = bitcast i8* %5 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %6, i32 0, i32 0
  %7 = load i8*, i8** %xpv_pv, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 2), align 8
  %add = add nsw i64 %8, 1
  %mul = mul i64 %add, 1
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %mul, i32 1, i1 false)
  %9 = load i64, i64* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 2), align 8
  %10 = load %struct.sv*, %struct.sv** %opset, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any3, align 8
  %12 = bitcast i8* %11 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %12, i32 0, i32 1
  store i64 %9, i64* %xpv_cur, align 8
  store i64 %9, i64* %tmp
  %13 = load i64, i64* %tmp
  %14 = load %struct.sv*, %struct.sv** %opset, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags, align 4
  %and = and i32 %15, 1223753727
  store i32 %and, i32* %sv_flags, align 4
  %16 = load %struct.sv*, %struct.sv** %opset, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags4, align 4
  %or = or i32 %17, 67371008
  store i32 %or, i32* %sv_flags4, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct.sv*, %struct.sv** %opset, align 8
  ret %struct.sv* %18
}

; Function Attrs: nounwind uwtable
define void @XS_Opcode_opset_to_ops(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %opset = alloca %struct.sv*, align 8
  %desc = alloca i32, align 4
  %len = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %myopcode = alloca i32, align 4
  %bitmap = alloca i8*, align 8
  %names = alloca i8**, align 8
  %bits = alloca i16, align 2
  %tmp = alloca %struct.sv*, align 8
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
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %items, align 4
  %cmp7 = icmp sgt i32 %9, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load i32, i32* %items, align 4
  %11 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext9 = sext i32 %10 to i64
  %idx.neg = sub i64 0, %idx.ext9
  %add.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idx.neg
  store %struct.sv** %add.ptr10, %struct.sv*** %sp, align 8
  %12 = load i32, i32* %ax, align 4
  %add11 = add nsw i32 %12, 0
  %idxprom = sext i32 %add11 to i64
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %idxprom
  %14 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %14, %struct.sv** %opset, align 8
  %15 = load i32, i32* %items, align 4
  %cmp12 = icmp slt i32 %15, 2
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end
  store i32 0, i32* %desc, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* %ax, align 4
  %add15 = add nsw i32 %16, 1
  %idxprom16 = sext i32 %add15 to i64
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idxprom16
  %18 = load %struct.sv*, %struct.sv** %arrayidx17, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags, align 4
  %and = and i32 %19, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %20 = load i32, i32* %ax, align 4
  %add18 = add nsw i32 %20, 1
  %idxprom19 = sext i32 %add18 to i64
  %21 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx20 = getelementptr inbounds %struct.sv*, %struct.sv** %21, i64 %idxprom19
  %22 = load %struct.sv*, %struct.sv** %arrayidx20, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any, align 8
  %24 = bitcast i8* %23 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %24, i32 0, i32 3
  %25 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %26 = load i32, i32* %ax, align 4
  %add21 = add nsw i32 %26, 1
  %idxprom22 = sext i32 %add21 to i64
  %27 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx23 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idxprom22
  %28 = load %struct.sv*, %struct.sv** %arrayidx23, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %28)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %25, %cond.true ], [ %call, %cond.false ]
  %conv24 = trunc i64 %cond to i32
  store i32 %conv24, i32* %desc, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end, %if.then.14
  %29 = load %struct.sv*, %struct.sv** %opset, align 8
  %sv_flags26 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 2
  %30 = load i32, i32* %sv_flags26, align 4
  %and27 = and i32 %30, 262144
  %cmp28 = icmp eq i32 %and27, 262144
  br i1 %cmp28, label %cond.true.30, label %cond.false.33

cond.true.30:                                     ; preds = %if.end.25
  %31 = load %struct.sv*, %struct.sv** %opset, align 8
  %sv_any31 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 0
  %32 = load i8*, i8** %sv_any31, align 8
  %33 = bitcast i8* %32 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %33, i32 0, i32 1
  %34 = load i64, i64* %xpv_cur, align 8
  store i64 %34, i64* %len, align 8
  %35 = load %struct.sv*, %struct.sv** %opset, align 8
  %sv_any32 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 0
  %36 = load i8*, i8** %sv_any32, align 8
  %37 = bitcast i8* %36 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %37, i32 0, i32 0
  %38 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.35

cond.false.33:                                    ; preds = %if.end.25
  %39 = load %struct.sv*, %struct.sv** %opset, align 8
  %call34 = call i8* @Perl_sv_2pv_flags(%struct.sv* %39, i64* %len, i32 2)
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.30
  %cond36 = phi i8* [ %38, %cond.true.30 ], [ %call34, %cond.false.33 ]
  store i8* %cond36, i8** %bitmap, align 8
  %40 = load i32, i32* %desc, align 4
  %tobool37 = icmp ne i32 %40, 0
  br i1 %tobool37, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %cond.end.35
  %call39 = call i8** @Perl_get_op_descs()
  br label %cond.end.42

cond.false.40:                                    ; preds = %cond.end.35
  %call41 = call i8** @Perl_get_op_names()
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.40, %cond.true.38
  %cond43 = phi i8** [ %call39, %cond.true.38 ], [ %call41, %cond.false.40 ]
  store i8** %cond43, i8*** %names, align 8
  %41 = load %struct.sv*, %struct.sv** %opset, align 8
  %call44 = call i32 @verify_opset(%struct.sv* %41, i32 1)
  store i32 0, i32* %myopcode, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.77, %cond.end.42
  %42 = load i32, i32* %i, align 4
  %conv45 = sext i32 %42 to i64
  %43 = load i64, i64* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 2), align 8
  %cmp46 = icmp slt i64 %conv45, %43
  br i1 %cmp46, label %for.body, label %for.end.79

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %44 to i64
  %45 = load i8*, i8** %bitmap, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %45, i64 %idxprom48
  %46 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %46 to i16
  store i16 %conv50, i16* %bits, align 2
  store i32 0, i32* %j, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc, %for.body
  %47 = load i32, i32* %j, align 4
  %cmp52 = icmp slt i32 %47, 8
  br i1 %cmp52, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.51
  %48 = load i32, i32* %myopcode, align 4
  %49 = load i32, i32* @PL_maxo, align 4
  %cmp54 = icmp slt i32 %48, %49
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.51
  %50 = phi i1 [ false, %for.cond.51 ], [ %cmp54, %land.rhs ]
  br i1 %50, label %for.body.56, label %for.end

for.body.56:                                      ; preds = %land.end
  %51 = load i16, i16* %bits, align 2
  %conv57 = zext i16 %51 to i32
  %52 = load i32, i32* %j, align 4
  %shl = shl i32 1, %52
  %and58 = and i32 %conv57, %shl
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.75

if.then.60:                                       ; preds = %for.body.56
  %53 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %54 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast61 = ptrtoint %struct.sv** %53 to i64
  %sub.ptr.rhs.cast62 = ptrtoint %struct.sv** %54 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62
  %sub.ptr.div64 = sdiv exact i64 %sub.ptr.sub63, 8
  %cmp65 = icmp slt i64 %sub.ptr.div64, 1
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.then.60
  %55 = load %struct.sv**, %struct.sv*** %sp, align 8
  %56 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call68 = call %struct.sv** @Perl_stack_grow(%struct.sv** %55, %struct.sv** %56, i32 1)
  store %struct.sv** %call68, %struct.sv*** %sp, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.then.60
  %57 = load i32, i32* %myopcode, align 4
  %idxprom70 = sext i32 %57 to i64
  %58 = load i8**, i8*** %names, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %58, i64 %idxprom70
  %59 = load i8*, i8** %arrayidx71, align 8
  %call72 = call %struct.sv* @Perl_newSVpv(i8* %59, i64 0)
  %call73 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call72)
  %60 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr74 = getelementptr inbounds %struct.sv*, %struct.sv** %60, i32 1
  store %struct.sv** %incdec.ptr74, %struct.sv*** %sp, align 8
  store %struct.sv* %call73, %struct.sv** %incdec.ptr74, align 8
  store %struct.sv* %call73, %struct.sv** %tmp
  %61 = load %struct.sv*, %struct.sv** %tmp
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.69, %for.body.56
  br label %for.inc

for.inc:                                          ; preds = %if.end.75
  %62 = load i32, i32* %j, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %j, align 4
  %63 = load i32, i32* %myopcode, align 4
  %inc76 = add nsw i32 %63, 1
  store i32 %inc76, i32* %myopcode, align 4
  br label %for.cond.51

for.end:                                          ; preds = %land.end
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end
  %64 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %64, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond

for.end.79:                                       ; preds = %for.cond
  %65 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %65, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare i8** @Perl_get_op_descs() #1

declare i8** @Perl_get_op_names() #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @XS_Opcode_opset(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %i = alloca i32, align 4
  %bitspec = alloca %struct.sv*, align 8
  %opset = alloca %struct.sv*, align 8
  %bitmap = alloca i8*, align 8
  %len = alloca i64, align 8
  %on = alloca i64, align 8
  %opname = alloca i8*, align 8
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
  %call = call %struct.sv* @new_opset(%struct.sv* null)
  %call6 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call)
  store %struct.sv* %call6, %struct.sv** %opset, align 8
  %8 = load %struct.sv*, %struct.sv** %opset, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any, align 8
  %10 = bitcast i8* %9 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 0
  %11 = load i8*, i8** %xpv_pv, align 8
  store i8* %11, i8** %bitmap, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i64 1, i64* %on, align 8
  %14 = load i32, i32* %ax, align 4
  %15 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %14, %15
  %idxprom = sext i32 %add8 to i64
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idxprom
  %17 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %call9 = call i32 @verify_opset(%struct.sv* %17, i32 0)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8** %opname, align 8
  %18 = load i32, i32* %ax, align 4
  %19 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %18, %19
  %idxprom11 = sext i32 %add10 to i64
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idxprom11
  %21 = load %struct.sv*, %struct.sv** %arrayidx12, align 8
  store %struct.sv* %21, %struct.sv** %bitspec, align 8
  br label %if.end.37

if.else:                                          ; preds = %for.body
  %22 = load i32, i32* %ax, align 4
  %23 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %22, %23
  %idxprom14 = sext i32 %add13 to i64
  %24 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %24, i64 %idxprom14
  %25 = load %struct.sv*, %struct.sv** %arrayidx15, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags, align 4
  %and = and i32 %26, 262144
  %cmp16 = icmp eq i32 %and, 262144
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %27 = load i32, i32* %ax, align 4
  %28 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %27, %28
  %idxprom19 = sext i32 %add18 to i64
  %29 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx20 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %idxprom19
  %30 = load %struct.sv*, %struct.sv** %arrayidx20, align 8
  %sv_any21 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 0
  %31 = load i8*, i8** %sv_any21, align 8
  %32 = bitcast i8* %31 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %32, i32 0, i32 1
  %33 = load i64, i64* %xpv_cur, align 8
  store i64 %33, i64* %len, align 8
  %34 = load i32, i32* %ax, align 4
  %35 = load i32, i32* %i, align 4
  %add22 = add nsw i32 %34, %35
  %idxprom23 = sext i32 %add22 to i64
  %36 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx24 = getelementptr inbounds %struct.sv*, %struct.sv** %36, i64 %idxprom23
  %37 = load %struct.sv*, %struct.sv** %arrayidx24, align 8
  %sv_any25 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 0
  %38 = load i8*, i8** %sv_any25, align 8
  %39 = bitcast i8* %38 to %struct.xpv*
  %xpv_pv26 = getelementptr inbounds %struct.xpv, %struct.xpv* %39, i32 0, i32 0
  %40 = load i8*, i8** %xpv_pv26, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %41 = load i32, i32* %ax, align 4
  %42 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %41, %42
  %idxprom28 = sext i32 %add27 to i64
  %43 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx29 = getelementptr inbounds %struct.sv*, %struct.sv** %43, i64 %idxprom28
  %44 = load %struct.sv*, %struct.sv** %arrayidx29, align 8
  %call30 = call i8* @Perl_sv_2pv_flags(%struct.sv* %44, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %40, %cond.true ], [ %call30, %cond.false ]
  store i8* %cond, i8** %opname, align 8
  %45 = load i8*, i8** %opname, align 8
  %46 = load i8, i8* %45, align 1
  %conv31 = sext i8 %46 to i32
  %cmp32 = icmp eq i32 %conv31, 33
  br i1 %cmp32, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %cond.end
  store i64 0, i64* %on, align 8
  %47 = load i8*, i8** %opname, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr35, i8** %opname, align 8
  %48 = load i64, i64* %len, align 8
  %dec = add i64 %48, -1
  store i64 %dec, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.34, %cond.end
  %49 = load i8*, i8** %opname, align 8
  %50 = load i64, i64* %len, align 8
  %call36 = call %struct.sv* @get_op_bitspec(i8* %49, i64 %50, i32 1)
  store %struct.sv* %call36, %struct.sv** %bitspec, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %if.then
  %51 = load i8*, i8** %bitmap, align 8
  %52 = load %struct.sv*, %struct.sv** %bitspec, align 8
  %53 = load i64, i64* %on, align 8
  %conv38 = trunc i64 %53 to i32
  %54 = load i8*, i8** %opname, align 8
  call void @set_opset_bits(i8* %51, %struct.sv* %52, i32 %conv38, i8* %54)
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct.sv*, %struct.sv** %opset, align 8
  %57 = load i32, i32* %ax, align 4
  %add39 = add nsw i32 %57, 0
  %idxprom40 = sext i32 %add39 to i64
  %58 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx41 = getelementptr inbounds %struct.sv*, %struct.sv** %58, i64 %idxprom40
  store %struct.sv* %56, %struct.sv** %arrayidx41, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %59 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %60 = load i32, i32* %ax, align 4
  %idx.ext42 = sext i32 %60 to i64
  %add.ptr43 = getelementptr inbounds %struct.sv*, %struct.sv** %59, i64 %idx.ext42
  %61 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %61, 1
  %add.ptr44 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr43, i64 %sub
  store %struct.sv** %add.ptr44, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.sv* @get_op_bitspec(i8* %opname, i64 %len, i32 %fatal) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %opname.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %fatal.addr = alloca i32, align 4
  %svp = alloca %struct.sv**, align 8
  store i8* %opname, i8** %opname.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %fatal, i32* %fatal.addr, align 4
  %0 = load i64, i64* %len.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %opname.addr, align 8
  %call = call i64 @strlen(i8* %1)
  store i64 %call, i64* %len.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.hv*, %struct.hv** getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 0), align 8
  %3 = load i8*, i8** %opname.addr, align 8
  %4 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %4 to i32
  %call1 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %2, i8* %3, i32 %conv, i32 0)
  store %struct.sv** %call1, %struct.sv*** %svp, align 8
  %5 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool2 = icmp ne %struct.sv** %5, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.sv**, %struct.sv*** %svp, align 8
  %7 = load %struct.sv*, %struct.sv** %6, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags, align 4
  %and = and i32 %8, 118423552
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end.33, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %9 = load i32, i32* %fatal.addr, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.then.4
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.4
  %10 = load i8*, i8** %opname.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv8 = sext i8 %11 to i32
  %cmp = icmp eq i32 %conv8, 58
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %12 = load i8*, i8** %opname.addr, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i32 0, i32 0), i8* %12)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.7
  %13 = load i8*, i8** %opname.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 33
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %15 = load i8*, i8** %opname.addr, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i32 0, i32 0), i8* %15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.11
  %16 = load i8*, i8** %opname.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv17 = sext i8 %17 to i32
  %cmp18 = icmp sge i32 %conv17, 65
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false.23

land.lhs.true:                                    ; preds = %if.end.16
  %18 = load i8*, i8** %opname.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv20 = sext i8 %19 to i32
  %cmp21 = icmp sle i32 %conv20, 90
  br i1 %cmp21, label %if.then.31, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true, %if.end.16
  %20 = load i8*, i8** %opname.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv24 = sext i8 %21 to i32
  %cmp25 = icmp sge i32 %conv24, 97
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.32

land.lhs.true.27:                                 ; preds = %lor.lhs.false.23
  %22 = load i8*, i8** %opname.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv28 = sext i8 %23 to i32
  %cmp29 = icmp sle i32 %conv28, 122
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %land.lhs.true.27, %land.lhs.true
  %24 = load i8*, i8** %opname.addr, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i32 0, i32 0), i8* %24)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %land.lhs.true.27, %lor.lhs.false.23
  %25 = load i8*, i8** %opname.addr, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i32 0, i32 0), i8* %25)
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %lor.lhs.false
  %26 = load %struct.sv**, %struct.sv*** %svp, align 8
  %27 = load %struct.sv*, %struct.sv** %26, align 8
  store %struct.sv* %27, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.6
  %28 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %28
}

; Function Attrs: nounwind uwtable
define internal void @set_opset_bits(i8* %bitmap, %struct.sv* %bitspec, i32 %on, i8* %opname) #0 {
entry:
  %bitmap.addr = alloca i8*, align 8
  %bitspec.addr = alloca %struct.sv*, align 8
  %on.addr = alloca i32, align 4
  %opname.addr = alloca i8*, align 8
  %myopcode = alloca i32, align 4
  %offset = alloca i32, align 4
  %bit = alloca i32, align 4
  %len = alloca i64, align 8
  %specbits = alloca i8*, align 8
  store i8* %bitmap, i8** %bitmap.addr, align 8
  store %struct.sv* %bitspec, %struct.sv** %bitspec.addr, align 8
  store i32 %on, i32* %on.addr, align 4
  store i8* %opname, i8** %opname.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %bitspec.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else.26

if.then:                                          ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %bitspec.addr, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %3, 65536
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load %struct.sv*, %struct.sv** %bitspec.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 0
  %5 = load i8*, i8** %sv_any, align 8
  %6 = bitcast i8* %5 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %6, i32 0, i32 3
  %7 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load %struct.sv*, %struct.sv** %bitspec.addr, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %call, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %myopcode, align 4
  %9 = load i32, i32* %myopcode, align 4
  %shr = ashr i32 %9, 3
  store i32 %shr, i32* %offset, align 4
  %10 = load i32, i32* %myopcode, align 4
  %and4 = and i32 %10, 7
  store i32 %and4, i32* %bit, align 4
  %11 = load i32, i32* %myopcode, align 4
  %12 = load i32, i32* @PL_maxo, align 4
  %cmp = icmp sge i32 %11, %12
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %13 = load i32, i32* %myopcode, align 4
  %cmp6 = icmp slt i32 %13, 0
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %lor.lhs.false, %cond.end
  %14 = load i8*, i8** %opname.addr, align 8
  %15 = load i32, i32* %myopcode, align 4
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.57, i32 0, i32 0), i8* %14, i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %lor.lhs.false
  %16 = load i32, i32* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 3), align 4
  %cmp9 = icmp sge i32 %16, 2
  br i1 %cmp9, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end
  %17 = load i32, i32* %myopcode, align 4
  %18 = load i32, i32* %offset, align 4
  %19 = load i32, i32* %bit, align 4
  %20 = load i8*, i8** %opname.addr, align 8
  %21 = load i32, i32* %on.addr, align 4
  %tobool12 = icmp ne i32 %21, 0
  %cond13 = select i1 %tobool12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0)
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.58, i32 0, i32 0), i32 %17, i32 %18, i32 %19, i8* %20, i8* %cond13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end
  %22 = load i32, i32* %on.addr, align 4
  %tobool15 = icmp ne i32 %22, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.14
  %23 = load i32, i32* %bit, align 4
  %shl = shl i32 1, %23
  %24 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i8*, i8** %bitmap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %idxprom
  %26 = load i8, i8* %arrayidx, align 1
  %conv17 = sext i8 %26 to i32
  %or = or i32 %conv17, %shl
  %conv18 = trunc i32 %or to i8
  store i8 %conv18, i8* %arrayidx, align 1
  br label %if.end.25

if.else:                                          ; preds = %if.end.14
  %27 = load i32, i32* %bit, align 4
  %shl19 = shl i32 1, %27
  %neg = xor i32 %shl19, -1
  %28 = load i32, i32* %offset, align 4
  %idxprom20 = sext i32 %28 to i64
  %29 = load i8*, i8** %bitmap.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %29, i64 %idxprom20
  %30 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %30 to i32
  %and23 = and i32 %conv22, %neg
  %conv24 = trunc i32 %and23 to i8
  store i8 %conv24, i8* %arrayidx21, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.16
  br label %if.end.81

if.else.26:                                       ; preds = %entry
  %31 = load %struct.sv*, %struct.sv** %bitspec.addr, align 8
  %sv_flags27 = getelementptr inbounds %struct.sv, %struct.sv* %31, i32 0, i32 2
  %32 = load i32, i32* %sv_flags27, align 4
  %and28 = and i32 %32, 262144
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %land.lhs.true, label %if.else.77

land.lhs.true:                                    ; preds = %if.else.26
  %33 = load %struct.sv*, %struct.sv** %bitspec.addr, align 8
  %sv_any30 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 0
  %34 = load i8*, i8** %sv_any30, align 8
  %35 = bitcast i8* %34 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %35, i32 0, i32 1
  %36 = load i64, i64* %xpv_cur, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 2), align 8
  %cmp31 = icmp eq i64 %36, %37
  br i1 %cmp31, label %if.then.33, label %if.else.77

if.then.33:                                       ; preds = %land.lhs.true
  %38 = load %struct.sv*, %struct.sv** %bitspec.addr, align 8
  %sv_flags34 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 2
  %39 = load i32, i32* %sv_flags34, align 4
  %and35 = and i32 %39, 262144
  %cmp36 = icmp eq i32 %and35, 262144
  br i1 %cmp36, label %cond.true.38, label %cond.false.42

cond.true.38:                                     ; preds = %if.then.33
  %40 = load %struct.sv*, %struct.sv** %bitspec.addr, align 8
  %sv_any39 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 0
  %41 = load i8*, i8** %sv_any39, align 8
  %42 = bitcast i8* %41 to %struct.xpv*
  %xpv_cur40 = getelementptr inbounds %struct.xpv, %struct.xpv* %42, i32 0, i32 1
  %43 = load i64, i64* %xpv_cur40, align 8
  store i64 %43, i64* %len, align 8
  %44 = load %struct.sv*, %struct.sv** %bitspec.addr, align 8
  %sv_any41 = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 0
  %45 = load i8*, i8** %sv_any41, align 8
  %46 = bitcast i8* %45 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %46, i32 0, i32 0
  %47 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.44

cond.false.42:                                    ; preds = %if.then.33
  %48 = load %struct.sv*, %struct.sv** %bitspec.addr, align 8
  %call43 = call i8* @Perl_sv_2pv_flags(%struct.sv* %48, i64* %len, i32 2)
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.42, %cond.true.38
  %cond45 = phi i8* [ %47, %cond.true.38 ], [ %call43, %cond.false.42 ]
  store i8* %cond45, i8** %specbits, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 3), align 4
  %cmp46 = icmp sge i32 %49, 2
  br i1 %cmp46, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %cond.end.44
  %50 = load i8*, i8** %opname.addr, align 8
  %51 = load i32, i32* %on.addr, align 4
  %tobool49 = icmp ne i32 %51, 0
  %cond50 = select i1 %tobool49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0)
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i32 0, i32 0), i8* %50, i8* %cond50)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %cond.end.44
  %52 = load i32, i32* %on.addr, align 4
  %tobool52 = icmp ne i32 %52, 0
  br i1 %tobool52, label %if.then.53, label %if.else.62

if.then.53:                                       ; preds = %if.end.51
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.53
  %53 = load i64, i64* %len, align 8
  %dec = add i64 %53, -1
  store i64 %dec, i64* %len, align 8
  %cmp54 = icmp ugt i64 %53, 0
  br i1 %cmp54, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %54 = load i64, i64* %len, align 8
  %55 = load i8*, i8** %specbits, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %55, i64 %54
  %56 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %56 to i32
  %57 = load i64, i64* %len, align 8
  %58 = load i8*, i8** %bitmap.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %58, i64 %57
  %59 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %59 to i32
  %or60 = or i32 %conv59, %conv57
  %conv61 = trunc i32 %or60 to i8
  store i8 %conv61, i8* %arrayidx58, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.76

if.else.62:                                       ; preds = %if.end.51
  br label %while.cond.63

while.cond.63:                                    ; preds = %while.body.67, %if.else.62
  %60 = load i64, i64* %len, align 8
  %dec64 = add i64 %60, -1
  store i64 %dec64, i64* %len, align 8
  %cmp65 = icmp ugt i64 %60, 0
  br i1 %cmp65, label %while.body.67, label %while.end.75

while.body.67:                                    ; preds = %while.cond.63
  %61 = load i64, i64* %len, align 8
  %62 = load i8*, i8** %specbits, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %62, i64 %61
  %63 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %63 to i32
  %neg70 = xor i32 %conv69, -1
  %64 = load i64, i64* %len, align 8
  %65 = load i8*, i8** %bitmap.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %65, i64 %64
  %66 = load i8, i8* %arrayidx71, align 1
  %conv72 = sext i8 %66 to i32
  %and73 = and i32 %conv72, %neg70
  %conv74 = trunc i32 %and73 to i8
  store i8 %conv74, i8* %arrayidx71, align 1
  br label %while.cond.63

while.end.75:                                     ; preds = %while.cond.63
  br label %if.end.76

if.end.76:                                        ; preds = %while.end.75, %while.end
  br label %if.end.80

if.else.77:                                       ; preds = %land.lhs.true, %if.else.26
  %67 = load i8*, i8** %opname.addr, align 8
  %68 = load %struct.sv*, %struct.sv** %bitspec.addr, align 8
  %sv_flags78 = getelementptr inbounds %struct.sv, %struct.sv* %68, i32 0, i32 2
  %69 = load i32, i32* %sv_flags78, align 4
  %and79 = and i32 %69, 255
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0), i8* %67, i32 %and79)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.end.76
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.25
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Opcode_permit_only(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %ix = alloca i32, align 4
  %safe = alloca %struct.sv*, align 8
  %i = alloca i32, align 4
  %on = alloca i32, align 4
  %bitspec = alloca %struct.sv*, align 8
  %mask = alloca %struct.sv*, align 8
  %bitmap = alloca i8*, align 8
  %opname = alloca i8*, align 8
  %len = alloca i64, align 8
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
  %8 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %8, i32 0, i32 0
  %9 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %9, i32 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  %10 = load i32, i32* %any_i32, align 4
  store i32 %10, i32* %ix, align 4
  %11 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %11, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any7 = getelementptr inbounds %struct.cv, %struct.cv* %12, i32 0, i32 0
  %13 = load %struct.xpvcv*, %struct.xpvcv** %sv_any7, align 8
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %13, i32 0, i32 12
  %14 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  %sv_any8 = getelementptr inbounds %struct.gv, %struct.gv* %14, i32 0, i32 0
  %15 = load %struct.xpvgv*, %struct.xpvgv** %sv_any8, align 8
  %xgv_name = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %15, i32 0, i32 8
  %16 = load i8*, i8** %xgv_name, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %17, 0
  %idxprom = sext i32 %add9 to i64
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %idxprom
  %19 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %19, %struct.sv** %safe, align 8
  %20 = load %struct.sv*, %struct.sv** %safe, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags, align 4
  %and = and i32 %21, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.21

lor.lhs.false:                                    ; preds = %if.end
  %22 = load %struct.sv*, %struct.sv** %safe, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any10, align 8
  %24 = bitcast i8* %23 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %24, i32 0, i32 0
  %25 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags11 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags11, align 4
  %and12 = and i32 %26, 4096
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %lor.lhs.false.14, label %if.then.21

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %27 = load %struct.sv*, %struct.sv** %safe, align 8
  %sv_any15 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 0
  %28 = load i8*, i8** %sv_any15, align 8
  %29 = bitcast i8* %28 to %struct.xrv*
  %xrv_rv16 = getelementptr inbounds %struct.xrv, %struct.xrv* %29, i32 0, i32 0
  %30 = load %struct.sv*, %struct.sv** %xrv_rv16, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 2
  %31 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %31, 255
  %cmp19 = icmp ne i32 %and18, 11
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false, %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %lor.lhs.false.14
  %32 = load %struct.sv*, %struct.sv** %safe, align 8
  %sv_any23 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 0
  %33 = load i8*, i8** %sv_any23, align 8
  %34 = bitcast i8* %33 to %struct.xrv*
  %xrv_rv24 = getelementptr inbounds %struct.xrv, %struct.xrv* %34, i32 0, i32 0
  %35 = load %struct.sv*, %struct.sv** %xrv_rv24, align 8
  %36 = bitcast %struct.sv* %35 to %struct.hv*
  %call = call %struct.sv** @Perl_hv_fetch(%struct.hv* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 4, i32 1)
  %37 = load %struct.sv*, %struct.sv** %call, align 8
  store %struct.sv* %37, %struct.sv** %mask, align 8
  %38 = load i32, i32* %ix, align 4
  %cmp25 = icmp eq i32 %38, 0
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.end.22
  %39 = load i32, i32* %ix, align 4
  %cmp28 = icmp eq i32 %39, 2
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %lor.lhs.false.27, %if.end.22
  %40 = load %struct.sv*, %struct.sv** %mask, align 8
  %41 = load i32, i32* %ix, align 4
  %cmp31 = icmp eq i32 %41, 0
  br i1 %cmp31, label %cond.true, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.then.30
  %42 = load i32, i32* %ix, align 4
  %cmp34 = icmp eq i32 %42, 1
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.33, %if.then.30
  %43 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 1), align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %43, %cond.true ], [ null, %cond.false ]
  %call36 = call %struct.sv* @new_opset(%struct.sv* %cond)
  %call37 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call36)
  call void @Perl_sv_setsv_flags(%struct.sv* %40, %struct.sv* %call37, i32 2)
  br label %if.end.39

if.else:                                          ; preds = %lor.lhs.false.27
  %44 = load %struct.sv*, %struct.sv** %mask, align 8
  %call38 = call i32 @verify_opset(%struct.sv* %44, i32 1)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %cond.end
  %45 = load %struct.sv*, %struct.sv** %mask, align 8
  %sv_any40 = getelementptr inbounds %struct.sv, %struct.sv* %45, i32 0, i32 0
  %46 = load i8*, i8** %sv_any40, align 8
  %47 = bitcast i8* %46 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %47, i32 0, i32 0
  %48 = load i8*, i8** %xpv_pv, align 8
  store i8* %48, i8** %bitmap, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.39
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %items, align 4
  %cmp41 = icmp slt i32 %49, %50
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %ix, align 4
  %cmp43 = icmp eq i32 %51, 0
  br i1 %cmp43, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %52 = load i32, i32* %ix, align 4
  %cmp45 = icmp eq i32 %52, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %53 = phi i1 [ true, %for.body ], [ %cmp45, %lor.rhs ]
  %cond47 = select i1 %53, i32 0, i32 1
  store i32 %cond47, i32* %on, align 4
  %54 = load i32, i32* %ax, align 4
  %55 = load i32, i32* %i, align 4
  %add48 = add nsw i32 %54, %55
  %idxprom49 = sext i32 %add48 to i64
  %56 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx50 = getelementptr inbounds %struct.sv*, %struct.sv** %56, i64 %idxprom49
  %57 = load %struct.sv*, %struct.sv** %arrayidx50, align 8
  %call51 = call i32 @verify_opset(%struct.sv* %57, i32 0)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.57

if.then.53:                                       ; preds = %lor.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8** %opname, align 8
  %58 = load i32, i32* %ax, align 4
  %59 = load i32, i32* %i, align 4
  %add54 = add nsw i32 %58, %59
  %idxprom55 = sext i32 %add54 to i64
  %60 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx56 = getelementptr inbounds %struct.sv*, %struct.sv** %60, i64 %idxprom55
  %61 = load %struct.sv*, %struct.sv** %arrayidx56, align 8
  store %struct.sv* %61, %struct.sv** %bitspec, align 8
  br label %if.end.90

if.else.57:                                       ; preds = %lor.end
  %62 = load i32, i32* %ax, align 4
  %63 = load i32, i32* %i, align 4
  %add58 = add nsw i32 %62, %63
  %idxprom59 = sext i32 %add58 to i64
  %64 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx60 = getelementptr inbounds %struct.sv*, %struct.sv** %64, i64 %idxprom59
  %65 = load %struct.sv*, %struct.sv** %arrayidx60, align 8
  %sv_flags61 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 2
  %66 = load i32, i32* %sv_flags61, align 4
  %and62 = and i32 %66, 262144
  %cmp63 = icmp eq i32 %and62, 262144
  br i1 %cmp63, label %cond.true.65, label %cond.false.75

cond.true.65:                                     ; preds = %if.else.57
  %67 = load i32, i32* %ax, align 4
  %68 = load i32, i32* %i, align 4
  %add66 = add nsw i32 %67, %68
  %idxprom67 = sext i32 %add66 to i64
  %69 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx68 = getelementptr inbounds %struct.sv*, %struct.sv** %69, i64 %idxprom67
  %70 = load %struct.sv*, %struct.sv** %arrayidx68, align 8
  %sv_any69 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 0
  %71 = load i8*, i8** %sv_any69, align 8
  %72 = bitcast i8* %71 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %72, i32 0, i32 1
  %73 = load i64, i64* %xpv_cur, align 8
  store i64 %73, i64* %len, align 8
  %74 = load i32, i32* %ax, align 4
  %75 = load i32, i32* %i, align 4
  %add70 = add nsw i32 %74, %75
  %idxprom71 = sext i32 %add70 to i64
  %76 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx72 = getelementptr inbounds %struct.sv*, %struct.sv** %76, i64 %idxprom71
  %77 = load %struct.sv*, %struct.sv** %arrayidx72, align 8
  %sv_any73 = getelementptr inbounds %struct.sv, %struct.sv* %77, i32 0, i32 0
  %78 = load i8*, i8** %sv_any73, align 8
  %79 = bitcast i8* %78 to %struct.xpv*
  %xpv_pv74 = getelementptr inbounds %struct.xpv, %struct.xpv* %79, i32 0, i32 0
  %80 = load i8*, i8** %xpv_pv74, align 8
  br label %cond.end.80

cond.false.75:                                    ; preds = %if.else.57
  %81 = load i32, i32* %ax, align 4
  %82 = load i32, i32* %i, align 4
  %add76 = add nsw i32 %81, %82
  %idxprom77 = sext i32 %add76 to i64
  %83 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx78 = getelementptr inbounds %struct.sv*, %struct.sv** %83, i64 %idxprom77
  %84 = load %struct.sv*, %struct.sv** %arrayidx78, align 8
  %call79 = call i8* @Perl_sv_2pv_flags(%struct.sv* %84, i64* %len, i32 2)
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.75, %cond.true.65
  %cond81 = phi i8* [ %80, %cond.true.65 ], [ %call79, %cond.false.75 ]
  store i8* %cond81, i8** %opname, align 8
  %85 = load i8*, i8** %opname, align 8
  %86 = load i8, i8* %85, align 1
  %conv82 = sext i8 %86 to i32
  %cmp83 = icmp eq i32 %conv82, 33
  br i1 %cmp83, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %cond.end.80
  %87 = load i32, i32* %on, align 4
  %tobool86 = icmp ne i32 %87, 0
  %lnot = xor i1 %tobool86, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %on, align 4
  %88 = load i8*, i8** %opname, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr87, i8** %opname, align 8
  %89 = load i64, i64* %len, align 8
  %dec = add i64 %89, -1
  store i64 %dec, i64* %len, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %cond.end.80
  %90 = load i8*, i8** %opname, align 8
  %91 = load i64, i64* %len, align 8
  %call89 = call %struct.sv* @get_op_bitspec(i8* %90, i64 %91, i32 1)
  store %struct.sv* %call89, %struct.sv** %bitspec, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.88, %if.then.53
  %92 = load i8*, i8** %bitmap, align 8
  %93 = load %struct.sv*, %struct.sv** %bitspec, align 8
  %94 = load i32, i32* %on, align 4
  %95 = load i8*, i8** %opname, align 8
  call void @set_opset_bits(i8* %92, %struct.sv* %93, i32 %94, i8* %95)
  br label %for.inc

for.inc:                                          ; preds = %if.end.90
  %96 = load i32, i32* %i, align 4
  %inc = add nsw i32 %96, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %97 = load i32, i32* %ax, align 4
  %add91 = add nsw i32 %97, 0
  %idxprom92 = sext i32 %add91 to i64
  %98 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx93 = getelementptr inbounds %struct.sv*, %struct.sv** %98, i64 %idxprom92
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx93, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %99 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %100 = load i32, i32* %ax, align 4
  %idx.ext94 = sext i32 %100 to i64
  %add.ptr95 = getelementptr inbounds %struct.sv*, %struct.sv** %99, i64 %idx.ext94
  %101 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %101, 1
  %add.ptr96 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr95, i64 %sub
  store %struct.sv** %add.ptr96, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind uwtable
define void @XS_Opcode_opdesc(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %i = alloca i32, align 4
  %myopcode = alloca i32, align 4
  %len = alloca i64, align 8
  %args = alloca %struct.sv**, align 8
  %op_desc = alloca i8**, align 8
  %opname = alloca i8*, align 8
  %bitspec = alloca %struct.sv*, align 8
  %tmp = alloca %struct.sv*, align 8
  %b = alloca i32, align 4
  %j = alloca i32, align 4
  %n_a = alloca i64, align 8
  %bitmap = alloca i8*, align 8
  %bits = alloca i16, align 2
  %tmp112 = alloca %struct.sv*, align 8
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
  %9 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext6 = sext i32 %8 to i64
  %idx.neg = sub i64 0, %idx.ext6
  %add.ptr7 = getelementptr inbounds %struct.sv*, %struct.sv** %9, i64 %idx.neg
  store %struct.sv** %add.ptr7, %struct.sv*** %sp, align 8
  %call = call i8** @Perl_get_op_descs()
  store i8** %call, i8*** %op_desc, align 8
  %10 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %10, 0
  %idxprom = sext i32 %add8 to i64
  %11 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idxprom
  %12 = bitcast %struct.sv** %arrayidx to i8*
  %13 = load i32, i32* %items, align 4
  %conv9 = sext i32 %13 to i64
  %mul = mul i64 %conv9, 8
  %call10 = call %struct.sv* @Perl_newSVpvn(i8* %12, i64 %mul)
  %call11 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call10)
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %call11, i32 0, i32 0
  %14 = load i8*, i8** %sv_any, align 8
  %15 = bitcast i8* %14 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %15, i32 0, i32 0
  %16 = load i8*, i8** %xpv_pv, align 8
  %17 = bitcast i8* %16 to %struct.sv**
  store %struct.sv** %17, %struct.sv*** %args, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.128, %entry
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %items, align 4
  %cmp = icmp slt i32 %18, %19
  br i1 %cmp, label %for.body, label %for.end.130

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct.sv**, %struct.sv*** %args, align 8
  %arrayidx14 = getelementptr inbounds %struct.sv*, %struct.sv** %21, i64 %idxprom13
  %22 = load %struct.sv*, %struct.sv** %arrayidx14, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 2
  %23 = load i32, i32* %sv_flags, align 4
  %and = and i32 %23, 262144
  %cmp15 = icmp eq i32 %and, 262144
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load %struct.sv**, %struct.sv*** %args, align 8
  %arrayidx18 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom17
  %26 = load %struct.sv*, %struct.sv** %arrayidx18, align 8
  %sv_any19 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 0
  %27 = load i8*, i8** %sv_any19, align 8
  %28 = bitcast i8* %27 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %28, i32 0, i32 1
  %29 = load i64, i64* %xpv_cur, align 8
  store i64 %29, i64* %len, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %30 to i64
  %31 = load %struct.sv**, %struct.sv*** %args, align 8
  %arrayidx21 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %idxprom20
  %32 = load %struct.sv*, %struct.sv** %arrayidx21, align 8
  %sv_any22 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 0
  %33 = load i8*, i8** %sv_any22, align 8
  %34 = bitcast i8* %33 to %struct.xpv*
  %xpv_pv23 = getelementptr inbounds %struct.xpv, %struct.xpv* %34, i32 0, i32 0
  %35 = load i8*, i8** %xpv_pv23, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %36 to i64
  %37 = load %struct.sv**, %struct.sv*** %args, align 8
  %arrayidx25 = getelementptr inbounds %struct.sv*, %struct.sv** %37, i64 %idxprom24
  %38 = load %struct.sv*, %struct.sv** %arrayidx25, align 8
  %call26 = call i8* @Perl_sv_2pv_flags(%struct.sv* %38, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %35, %cond.true ], [ %call26, %cond.false ]
  store i8* %cond, i8** %opname, align 8
  %39 = load i8*, i8** %opname, align 8
  %40 = load i64, i64* %len, align 8
  %call27 = call %struct.sv* @get_op_bitspec(i8* %39, i64 %40, i32 1)
  store %struct.sv* %call27, %struct.sv** %bitspec, align 8
  %41 = load %struct.sv*, %struct.sv** %bitspec, align 8
  %sv_flags28 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 2
  %42 = load i32, i32* %sv_flags28, align 4
  %and29 = and i32 %42, 65536
  %tobool = icmp ne i32 %and29, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %43 = load %struct.sv*, %struct.sv** %bitspec, align 8
  %sv_flags30 = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 2
  %44 = load i32, i32* %sv_flags30, align 4
  %and31 = and i32 %44, 65536
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %cond.true.33, label %cond.false.35

cond.true.33:                                     ; preds = %if.then
  %45 = load %struct.sv*, %struct.sv** %bitspec, align 8
  %sv_any34 = getelementptr inbounds %struct.sv, %struct.sv* %45, i32 0, i32 0
  %46 = load i8*, i8** %sv_any34, align 8
  %47 = bitcast i8* %46 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %47, i32 0, i32 3
  %48 = load i64, i64* %xiv_iv, align 8
  br label %cond.end.37

cond.false.35:                                    ; preds = %if.then
  %49 = load %struct.sv*, %struct.sv** %bitspec, align 8
  %call36 = call i64 @Perl_sv_2iv(%struct.sv* %49)
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.35, %cond.true.33
  %cond38 = phi i64 [ %48, %cond.true.33 ], [ %call36, %cond.false.35 ]
  %conv39 = trunc i64 %cond38 to i32
  store i32 %conv39, i32* %myopcode, align 4
  %50 = load i32, i32* %myopcode, align 4
  %cmp40 = icmp slt i32 %50, 0
  br i1 %cmp40, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.37
  %51 = load i32, i32* %myopcode, align 4
  %52 = load i32, i32* @PL_maxo, align 4
  %cmp42 = icmp sge i32 %51, %52
  br i1 %cmp42, label %if.then.44, label %if.end

if.then.44:                                       ; preds = %lor.lhs.false, %cond.end.37
  %53 = load i32, i32* %myopcode, align 4
  %54 = load i8*, i8** %opname, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i32 %53, i8* %54)
  br label %if.end

if.end:                                           ; preds = %if.then.44, %lor.lhs.false
  %55 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %56 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast45 = ptrtoint %struct.sv** %55 to i64
  %sub.ptr.rhs.cast46 = ptrtoint %struct.sv** %56 to i64
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  %sub.ptr.div48 = sdiv exact i64 %sub.ptr.sub47, 8
  %cmp49 = icmp slt i64 %sub.ptr.div48, 1
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end
  %57 = load %struct.sv**, %struct.sv*** %sp, align 8
  %58 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call52 = call %struct.sv** @Perl_stack_grow(%struct.sv** %57, %struct.sv** %58, i32 1)
  store %struct.sv** %call52, %struct.sv*** %sp, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end
  %59 = load i32, i32* %myopcode, align 4
  %idxprom54 = sext i32 %59 to i64
  %60 = load i8**, i8*** %op_desc, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %60, i64 %idxprom54
  %61 = load i8*, i8** %arrayidx55, align 8
  %call56 = call %struct.sv* @Perl_newSVpv(i8* %61, i64 0)
  %call57 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call56)
  %62 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr58 = getelementptr inbounds %struct.sv*, %struct.sv** %62, i32 1
  store %struct.sv** %incdec.ptr58, %struct.sv*** %sp, align 8
  store %struct.sv* %call57, %struct.sv** %incdec.ptr58, align 8
  store %struct.sv* %call57, %struct.sv** %tmp
  %63 = load %struct.sv*, %struct.sv** %tmp
  br label %if.end.127

if.else:                                          ; preds = %cond.end
  %64 = load %struct.sv*, %struct.sv** %bitspec, align 8
  %sv_flags59 = getelementptr inbounds %struct.sv, %struct.sv* %64, i32 0, i32 2
  %65 = load i32, i32* %sv_flags59, align 4
  %and60 = and i32 %65, 262144
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %land.lhs.true, label %if.else.123

land.lhs.true:                                    ; preds = %if.else
  %66 = load %struct.sv*, %struct.sv** %bitspec, align 8
  %sv_any62 = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 0
  %67 = load i8*, i8** %sv_any62, align 8
  %68 = bitcast i8* %67 to %struct.xpv*
  %xpv_cur63 = getelementptr inbounds %struct.xpv, %struct.xpv* %68, i32 0, i32 1
  %69 = load i64, i64* %xpv_cur63, align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 2), align 8
  %cmp64 = icmp eq i64 %69, %70
  br i1 %cmp64, label %if.then.66, label %if.else.123

if.then.66:                                       ; preds = %land.lhs.true
  %71 = load %struct.sv*, %struct.sv** %bitspec, align 8
  %sv_flags71 = getelementptr inbounds %struct.sv, %struct.sv* %71, i32 0, i32 2
  %72 = load i32, i32* %sv_flags71, align 4
  %and72 = and i32 %72, 262144
  %cmp73 = icmp eq i32 %and72, 262144
  br i1 %cmp73, label %cond.true.75, label %cond.false.80

cond.true.75:                                     ; preds = %if.then.66
  %73 = load %struct.sv*, %struct.sv** %bitspec, align 8
  %sv_any76 = getelementptr inbounds %struct.sv, %struct.sv* %73, i32 0, i32 0
  %74 = load i8*, i8** %sv_any76, align 8
  %75 = bitcast i8* %74 to %struct.xpv*
  %xpv_cur77 = getelementptr inbounds %struct.xpv, %struct.xpv* %75, i32 0, i32 1
  %76 = load i64, i64* %xpv_cur77, align 8
  store i64 %76, i64* %n_a, align 8
  %77 = load %struct.sv*, %struct.sv** %bitspec, align 8
  %sv_any78 = getelementptr inbounds %struct.sv, %struct.sv* %77, i32 0, i32 0
  %78 = load i8*, i8** %sv_any78, align 8
  %79 = bitcast i8* %78 to %struct.xpv*
  %xpv_pv79 = getelementptr inbounds %struct.xpv, %struct.xpv* %79, i32 0, i32 0
  %80 = load i8*, i8** %xpv_pv79, align 8
  br label %cond.end.82

cond.false.80:                                    ; preds = %if.then.66
  %81 = load %struct.sv*, %struct.sv** %bitspec, align 8
  %call81 = call i8* @Perl_sv_2pv_flags(%struct.sv* %81, i64* %n_a, i32 2)
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.80, %cond.true.75
  %cond83 = phi i8* [ %80, %cond.true.75 ], [ %call81, %cond.false.80 ]
  store i8* %cond83, i8** %bitmap, align 8
  store i32 0, i32* %myopcode, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.120, %cond.end.82
  %82 = load i32, i32* %b, align 4
  %conv85 = sext i32 %82 to i64
  %83 = load i64, i64* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 2), align 8
  %cmp86 = icmp slt i64 %conv85, %83
  br i1 %cmp86, label %for.body.88, label %for.end.122

for.body.88:                                      ; preds = %for.cond.84
  %84 = load i32, i32* %b, align 4
  %idxprom90 = sext i32 %84 to i64
  %85 = load i8*, i8** %bitmap, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %85, i64 %idxprom90
  %86 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %86 to i16
  store i16 %conv92, i16* %bits, align 2
  store i32 0, i32* %j, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc, %for.body.88
  %87 = load i32, i32* %j, align 4
  %cmp94 = icmp slt i32 %87, 8
  br i1 %cmp94, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.93
  %88 = load i32, i32* %myopcode, align 4
  %89 = load i32, i32* @PL_maxo, align 4
  %cmp96 = icmp slt i32 %88, %89
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.93
  %90 = phi i1 [ false, %for.cond.93 ], [ %cmp96, %land.rhs ]
  br i1 %90, label %for.body.98, label %for.end

for.body.98:                                      ; preds = %land.end
  %91 = load i16, i16* %bits, align 2
  %conv99 = zext i16 %91 to i32
  %92 = load i32, i32* %j, align 4
  %shl = shl i32 1, %92
  %and100 = and i32 %conv99, %shl
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.118

if.then.102:                                      ; preds = %for.body.98
  %93 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %94 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast103 = ptrtoint %struct.sv** %93 to i64
  %sub.ptr.rhs.cast104 = ptrtoint %struct.sv** %94 to i64
  %sub.ptr.sub105 = sub i64 %sub.ptr.lhs.cast103, %sub.ptr.rhs.cast104
  %sub.ptr.div106 = sdiv exact i64 %sub.ptr.sub105, 8
  %cmp107 = icmp slt i64 %sub.ptr.div106, 1
  br i1 %cmp107, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %if.then.102
  %95 = load %struct.sv**, %struct.sv*** %sp, align 8
  %96 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call110 = call %struct.sv** @Perl_stack_grow(%struct.sv** %95, %struct.sv** %96, i32 1)
  store %struct.sv** %call110, %struct.sv*** %sp, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %if.then.102
  %97 = load i32, i32* %myopcode, align 4
  %idxprom113 = sext i32 %97 to i64
  %98 = load i8**, i8*** %op_desc, align 8
  %arrayidx114 = getelementptr inbounds i8*, i8** %98, i64 %idxprom113
  %99 = load i8*, i8** %arrayidx114, align 8
  %call115 = call %struct.sv* @Perl_newSVpv(i8* %99, i64 0)
  %call116 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call115)
  %100 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr117 = getelementptr inbounds %struct.sv*, %struct.sv** %100, i32 1
  store %struct.sv** %incdec.ptr117, %struct.sv*** %sp, align 8
  store %struct.sv* %call116, %struct.sv** %incdec.ptr117, align 8
  store %struct.sv* %call116, %struct.sv** %tmp112
  %101 = load %struct.sv*, %struct.sv** %tmp112
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.111, %for.body.98
  br label %for.inc

for.inc:                                          ; preds = %if.end.118
  %102 = load i32, i32* %j, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %j, align 4
  %103 = load i32, i32* %myopcode, align 4
  %inc119 = add nsw i32 %103, 1
  store i32 %inc119, i32* %myopcode, align 4
  br label %for.cond.93

for.end:                                          ; preds = %land.end
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end
  %104 = load i32, i32* %b, align 4
  %inc121 = add nsw i32 %104, 1
  store i32 %inc121, i32* %b, align 4
  br label %for.cond.84

for.end.122:                                      ; preds = %for.cond.84
  br label %if.end.126

if.else.123:                                      ; preds = %land.lhs.true, %if.else
  %105 = load i8*, i8** %opname, align 8
  %106 = load %struct.sv*, %struct.sv** %bitspec, align 8
  %sv_flags124 = getelementptr inbounds %struct.sv, %struct.sv* %106, i32 0, i32 2
  %107 = load i32, i32* %sv_flags124, align 4
  %and125 = and i32 %107, 255
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0), i8* %105, i32 %and125)
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %for.end.122
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.53
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %108 = load i32, i32* %i, align 4
  %inc129 = add nsw i32 %108, 1
  store i32 %inc129, i32* %i, align 4
  br label %for.cond

for.end.130:                                      ; preds = %for.cond
  %109 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %109, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @XS_Opcode_define_optag(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %optagsv = alloca %struct.sv*, align 8
  %mask = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %optag = alloca i8*, align 8
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
  %cmp = icmp ne i32 %8, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %optagsv, align 8
  %12 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %12, 1
  %idxprom9 = sext i32 %add8 to i64
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx10 = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %idxprom9
  %14 = load %struct.sv*, %struct.sv** %arrayidx10, align 8
  store %struct.sv* %14, %struct.sv** %mask, align 8
  %15 = load %struct.sv*, %struct.sv** %optagsv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags, align 4
  %and = and i32 %16, 262144
  %cmp11 = icmp eq i32 %and, 262144
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load %struct.sv*, %struct.sv** %optagsv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any, align 8
  %19 = bitcast i8* %18 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %19, i32 0, i32 1
  %20 = load i64, i64* %xpv_cur, align 8
  store i64 %20, i64* %len, align 8
  %21 = load %struct.sv*, %struct.sv** %optagsv, align 8
  %sv_any13 = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 0
  %22 = load i8*, i8** %sv_any13, align 8
  %23 = bitcast i8* %22 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %23, i32 0, i32 0
  %24 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %25 = load %struct.sv*, %struct.sv** %optagsv, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %25, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %24, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %optag, align 8
  %26 = load i8*, i8** %optag, align 8
  %27 = load i64, i64* %len, align 8
  %28 = load %struct.sv*, %struct.sv** %mask, align 8
  call void @put_op_bitspec(i8* %26, i64 %27, %struct.sv* %28)
  %29 = load i32, i32* %ax, align 4
  %add14 = add nsw i32 %29, 0
  %idxprom15 = sext i32 %add14 to i64
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx16 = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %idxprom15
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx16, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %31 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %32 = load i32, i32* %ax, align 4
  %idx.ext17 = sext i32 %32 to i64
  %add.ptr18 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %idx.ext17
  %33 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %33, 1
  %add.ptr19 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr18, i64 %sub
  store %struct.sv** %add.ptr19, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_op_bitspec(i8* %optag, i64 %len, %struct.sv* %mask) #0 {
entry:
  %optag.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %mask.addr = alloca %struct.sv*, align 8
  %svp = alloca %struct.sv**, align 8
  store i8* %optag, i8** %optag.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.sv* %mask, %struct.sv** %mask.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %mask.addr, align 8
  %call = call i32 @verify_opset(%struct.sv* %0, i32 1)
  %1 = load i64, i64* %len.addr, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %optag.addr, align 8
  %call1 = call i64 @strlen(i8* %2)
  store i64 %call1, i64* %len.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.hv*, %struct.hv** getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 0), align 8
  %4 = load i8*, i8** %optag.addr, align 8
  %5 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %5 to i32
  %call2 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %3, i8* %4, i32 %conv, i32 1)
  store %struct.sv** %call2, %struct.sv*** %svp, align 8
  %6 = load %struct.sv**, %struct.sv*** %svp, align 8
  %7 = load %struct.sv*, %struct.sv** %6, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags, align 4
  %and = and i32 %8, 118423552
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %9 = load i8*, i8** %optag.addr, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.62, i32 0, i32 0), i8* %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %10 = load %struct.sv**, %struct.sv*** %svp, align 8
  %11 = load %struct.sv*, %struct.sv** %10, align 8
  %12 = load %struct.sv*, %struct.sv** %mask.addr, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %11, %struct.sv* %12, i32 2)
  %13 = load %struct.sv**, %struct.sv*** %svp, align 8
  %14 = load %struct.sv*, %struct.sv** %13, align 8
  %sv_flags6 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags6, align 4
  %or = or i32 %15, 8388608
  store i32 %or, i32* %sv_flags6, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Opcode_empty_opset(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
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
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %struct.sv* @new_opset(%struct.sv* null)
  %call7 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call)
  %9 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %9, 0
  %idxprom = sext i32 %add8 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  store %struct.sv* %call7, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %11 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %12 = load i32, i32* %ax, align 4
  %idx.ext9 = sext i32 %12 to i64
  %add.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idx.ext9
  %13 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %13, 1
  %add.ptr11 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr10, i64 %sub
  store %struct.sv** %add.ptr11, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Opcode_full_opset(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
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
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 1), align 8
  %call = call %struct.sv* @new_opset(%struct.sv* %9)
  %call7 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call)
  %10 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %10, 0
  %idxprom = sext i32 %add8 to i64
  %11 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idxprom
  store %struct.sv* %call7, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %12 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %13 = load i32, i32* %ax, align 4
  %idx.ext9 = sext i32 %13 to i64
  %add.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %12, i64 %idx.ext9
  %14 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %14, 1
  %add.ptr11 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr10, i64 %sub
  store %struct.sv** %add.ptr11, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Opcode_opmask_add(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %opset = alloca %struct.sv*, align 8
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %opset, align 8
  %12 = load i8*, i8** @PL_op_mask, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.end.12, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %13 = load i32, i32* @PL_maxo, align 4
  %conv9 = sext i32 %13 to i64
  %mul = mul i64 %conv9, 1
  %call = call i8* @Perl_safesysmalloc(i64 %mul)
  store i8* %call, i8** @PL_op_mask, align 8
  %14 = load i8*, i8** @PL_op_mask, align 8
  %15 = load i32, i32* @PL_maxo, align 4
  %conv10 = sext i32 %15 to i64
  %mul11 = mul i64 %conv10, 1
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 %mul11, i32 1, i1 false)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %16 = load %struct.sv*, %struct.sv** %opset, align 8
  call void @opmask_add(%struct.sv* %16)
  store i64 0, i64* %tmpXSoff, align 8
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %18 = load i32, i32* %ax, align 4
  %idx.ext13 = sext i32 %18 to i64
  %add.ptr14 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idx.ext13
  %19 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %19, 1
  %add.ptr15 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr14, i64 %sub
  store %struct.sv** %add.ptr15, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @opmask_add(%struct.sv* %opset) #0 {
entry:
  %opset.addr = alloca %struct.sv*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %bitmask = alloca i8*, align 8
  %len = alloca i64, align 8
  %myopcode = alloca i32, align 4
  %bits = alloca i16, align 2
  store %struct.sv* %opset, %struct.sv** %opset.addr, align 8
  store i32 0, i32* %myopcode, align 4
  %0 = load %struct.sv*, %struct.sv** %opset.addr, align 8
  %call = call i32 @verify_opset(%struct.sv* %0, i32 1)
  %1 = load i8*, i8** @PL_op_mask, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sv*, %struct.sv** %opset.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and = and i32 %3, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load %struct.sv*, %struct.sv** %opset.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 0
  %5 = load i8*, i8** %sv_any, align 8
  %6 = bitcast i8* %5 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %6, i32 0, i32 1
  %7 = load i64, i64* %xpv_cur, align 8
  store i64 %7, i64* %len, align 8
  %8 = load %struct.sv*, %struct.sv** %opset.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any1, align 8
  %10 = bitcast i8* %9 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 0
  %11 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load %struct.sv*, %struct.sv** %opset.addr, align 8
  %call2 = call i8* @Perl_sv_2pv_flags(%struct.sv* %12, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %11, %cond.true ], [ %call2, %cond.false ]
  store i8* %cond, i8** %bitmask, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %13 = load i32, i32* %i, align 4
  %conv = sext i32 %13 to i64
  %14 = load i64, i64* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 2), align 8
  %cmp3 = icmp slt i64 %conv, %14
  br i1 %cmp3, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8*, i8** %bitmask, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %conv5 = sext i8 %17 to i16
  store i16 %conv5, i16* %bits, align 2
  %18 = load i16, i16* %bits, align 2
  %tobool6 = icmp ne i16 %18, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %for.body
  %19 = load i32, i32* %myopcode, align 4
  %add = add nsw i32 %19, 8
  store i32 %add, i32* %myopcode, align 4
  br label %for.inc

if.end.8:                                         ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.body.14, %if.end.8
  %20 = load i32, i32* %j, align 4
  %cmp10 = icmp slt i32 %20, 8
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.9
  %21 = load i32, i32* %myopcode, align 4
  %22 = load i32, i32* @PL_maxo, align 4
  %cmp12 = icmp slt i32 %21, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.9
  %23 = phi i1 [ false, %for.cond.9 ], [ %cmp12, %land.rhs ]
  br i1 %23, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %land.end
  %24 = load i16, i16* %bits, align 2
  %conv15 = zext i16 %24 to i32
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  %shl = shl i32 1, %25
  %and16 = and i32 %conv15, %shl
  %26 = load i32, i32* %myopcode, align 4
  %inc17 = add nsw i32 %26, 1
  store i32 %inc17, i32* %myopcode, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load i8*, i8** @PL_op_mask, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %27, i64 %idxprom18
  %28 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %28 to i32
  %or = or i32 %conv20, %and16
  %conv21 = trunc i32 %or to i8
  store i8 %conv21, i8* %arrayidx19, align 1
  br label %for.cond.9

for.end:                                          ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.end, %if.then.7
  %29 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %29, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Opcode_opcodes(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %tmp = alloca %struct.sv*, align 8
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
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %items, align 4
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext7 = sext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idx.neg
  store %struct.sv** %add.ptr8, %struct.sv*** %sp, align 8
  %11 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %11, i32 0, i32 6
  %12 = load i8, i8* %op_flags, align 1
  %conv9 = zext i8 %12 to i32
  %and = and i32 %conv9, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags10 = getelementptr inbounds %struct.op, %struct.op* %13, i32 0, i32 6
  %14 = load i8, i8* %op_flags10, align 1
  %conv11 = zext i8 %14 to i32
  %and12 = and i32 %conv11, 3
  %cmp13 = icmp eq i32 %and12, 3
  %cond = select i1 %cmp13, i32 1, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call i32 @Perl_dowantarray()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15 = phi i32 [ %cond, %cond.true ], [ %call, %cond.false ]
  %cmp16 = icmp eq i32 %cond15, 1
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %cond.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.32

if.else:                                          ; preds = %cond.end
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %16 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast19 = ptrtoint %struct.sv** %15 to i64
  %sub.ptr.rhs.cast20 = ptrtoint %struct.sv** %16 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %sub.ptr.div22 = sdiv exact i64 %sub.ptr.sub21, 8
  %cmp23 = icmp slt i64 %sub.ptr.div22, 1
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.else
  %17 = load %struct.sv**, %struct.sv*** %sp, align 8
  %18 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call26 = call %struct.sv** @Perl_stack_grow(%struct.sv** %17, %struct.sv** %18, i32 1)
  store %struct.sv** %call26, %struct.sv*** %sp, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.else
  %19 = load i32, i32* @PL_maxo, align 4
  %conv28 = sext i32 %19 to i64
  %call29 = call %struct.sv* @Perl_newSViv(i64 %conv28)
  %call30 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call29)
  %20 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr31 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i32 1
  store %struct.sv** %incdec.ptr31, %struct.sv*** %sp, align 8
  store %struct.sv* %call30, %struct.sv** %incdec.ptr31, align 8
  store %struct.sv* %call30, %struct.sv** %tmp
  %21 = load %struct.sv*, %struct.sv** %tmp
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.27, %if.then.18
  %22 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %22, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.sv* @Perl_newSViv(i64) #1

; Function Attrs: nounwind uwtable
define void @XS_Opcode_opmask(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %bitmap = alloca i8*, align 8
  %myopcode = alloca i32, align 4
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
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %struct.sv* @new_opset(%struct.sv* null)
  %call7 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call)
  %9 = load i32, i32* %ax, align 4
  %add8 = add nsw i32 %9, 0
  %idxprom = sext i32 %add8 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  store %struct.sv* %call7, %struct.sv** %arrayidx, align 8
  %11 = load i8*, i8** @PL_op_mask, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %if.then.9, label %if.end.24

if.then.9:                                        ; preds = %if.end
  %12 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %12, 0
  %idxprom11 = sext i32 %add10 to i64
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %idxprom11
  %14 = load %struct.sv*, %struct.sv** %arrayidx12, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 0
  %17 = load i8*, i8** %xpv_pv, align 8
  store i8* %17, i8** %bitmap, align 8
  store i32 0, i32* %myopcode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %18 = load i32, i32* %myopcode, align 4
  %19 = load i32, i32* @PL_maxo, align 4
  %cmp13 = icmp slt i32 %18, %19
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %myopcode, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load i8*, i8** @PL_op_mask, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %21, i64 %idxprom15
  %22 = load i8, i8* %arrayidx16, align 1
  %tobool17 = icmp ne i8 %22, 0
  br i1 %tobool17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %for.body
  %23 = load i32, i32* %myopcode, align 4
  %and = and i32 %23, 7
  %shl = shl i32 1, %and
  %24 = load i32, i32* %myopcode, align 4
  %shr = ashr i32 %24, 3
  %idxprom19 = sext i32 %shr to i64
  %25 = load i8*, i8** %bitmap, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %25, i64 %idxprom19
  %26 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %26 to i32
  %or = or i32 %conv21, %shl
  %conv22 = trunc i32 %or to i8
  store i8 %conv22, i8* %arrayidx20, align 1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %27 = load i32, i32* %myopcode, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %myopcode, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.24

if.end.24:                                        ; preds = %for.end, %if.end
  store i64 1, i64* %tmpXSoff, align 8
  %28 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %29 = load i32, i32* %ax, align 4
  %idx.ext25 = sext i32 %29 to i64
  %add.ptr26 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i64 %idx.ext25
  %30 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %30, 1
  %add.ptr27 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr26, i64 %sub
  store %struct.sv** %add.ptr27, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @boot_Opcode(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %file = alloca i8*, align 8
  %cv6 = alloca %struct.cv*, align 8
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
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8** %file, align 8
  %8 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode__safe_pkg_prep, i8* %8)
  %9 = bitcast %struct.cv* %call to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %10 = load i8*, i8** %file, align 8
  %call7 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode__safe_call_sv, i8* %10)
  %11 = bitcast %struct.cv* %call7 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0))
  %12 = load i8*, i8** %file, align 8
  %call8 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_verify_opset, i8* %12)
  %13 = bitcast %struct.cv* %call8 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0))
  %14 = load i8*, i8** %file, align 8
  %call9 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_invert_opset, i8* %14)
  %15 = bitcast %struct.cv* %call9 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %16 = load i8*, i8** %file, align 8
  %call10 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_opset_to_ops, i8* %16)
  %17 = bitcast %struct.cv* %call10 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0))
  %18 = load i8*, i8** %file, align 8
  %call11 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_opset, i8* %18)
  %19 = bitcast %struct.cv* %call11 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0))
  %20 = load i8*, i8** %file, align 8
  %call12 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_permit_only, i8* %20)
  store %struct.cv* %call12, %struct.cv** %cv6, align 8
  %21 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %21, i32 0, i32 0
  %22 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %22, i32 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  store i32 0, i32* %any_i32, align 4
  %23 = load %struct.cv*, %struct.cv** %cv6, align 8
  %24 = bitcast %struct.cv* %23 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %25 = load i8*, i8** %file, align 8
  %call13 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_permit_only, i8* %25)
  store %struct.cv* %call13, %struct.cv** %cv6, align 8
  %26 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any14 = getelementptr inbounds %struct.cv, %struct.cv* %26, i32 0, i32 0
  %27 = load %struct.xpvcv*, %struct.xpvcv** %sv_any14, align 8
  %xcv_xsubany15 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %27, i32 0, i32 11
  %any_i3216 = bitcast %union.any* %xcv_xsubany15 to i32*
  store i32 3, i32* %any_i3216, align 4
  %28 = load %struct.cv*, %struct.cv** %cv6, align 8
  %29 = bitcast %struct.cv* %28 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %30 = load i8*, i8** %file, align 8
  %call17 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_permit_only, i8* %30)
  store %struct.cv* %call17, %struct.cv** %cv6, align 8
  %31 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any18 = getelementptr inbounds %struct.cv, %struct.cv* %31, i32 0, i32 0
  %32 = load %struct.xpvcv*, %struct.xpvcv** %sv_any18, align 8
  %xcv_xsubany19 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %32, i32 0, i32 11
  %any_i3220 = bitcast %union.any* %xcv_xsubany19 to i32*
  store i32 2, i32* %any_i3220, align 4
  %33 = load %struct.cv*, %struct.cv** %cv6, align 8
  %34 = bitcast %struct.cv* %33 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %35 = load i8*, i8** %file, align 8
  %call21 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_permit_only, i8* %35)
  store %struct.cv* %call21, %struct.cv** %cv6, align 8
  %36 = load %struct.cv*, %struct.cv** %cv6, align 8
  %sv_any22 = getelementptr inbounds %struct.cv, %struct.cv* %36, i32 0, i32 0
  %37 = load %struct.xpvcv*, %struct.xpvcv** %sv_any22, align 8
  %xcv_xsubany23 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %37, i32 0, i32 11
  %any_i3224 = bitcast %union.any* %xcv_xsubany23 to i32*
  store i32 1, i32* %any_i3224, align 4
  %38 = load %struct.cv*, %struct.cv** %cv6, align 8
  %39 = bitcast %struct.cv* %38 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %40 = load i8*, i8** %file, align 8
  %call25 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_opdesc, i8* %40)
  %41 = bitcast %struct.cv* %call25 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0))
  %42 = load i8*, i8** %file, align 8
  %call26 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_define_optag, i8* %42)
  %43 = bitcast %struct.cv* %call26 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0))
  %44 = load i8*, i8** %file, align 8
  %call27 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_empty_opset, i8* %44)
  %45 = bitcast %struct.cv* %call27 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0))
  %46 = load i8*, i8** %file, align 8
  %call28 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_full_opset, i8* %46)
  %47 = bitcast %struct.cv* %call28 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0))
  %48 = load i8*, i8** %file, align 8
  %call29 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_opmask_add, i8* %48)
  %49 = bitcast %struct.cv* %call29 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %50 = load i8*, i8** %file, align 8
  %call30 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_opcodes, i8* %50)
  %51 = bitcast %struct.cv* %call30 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0))
  %52 = load i8*, i8** %file, align 8
  %call31 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), void (%struct.cv*)* @XS_Opcode_opmask, i8* %52)
  %53 = bitcast %struct.cv* %call31 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0))
  %54 = load i32, i32* @PL_maxo, align 4
  %add32 = add nsw i32 %54, 7
  %div = sdiv i32 %add32, 8
  %conv33 = sext i32 %div to i64
  store i64 %conv33, i64* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 2), align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 3), align 4
  %cmp = icmp sge i32 %55, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %56 = load i64, i64* getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 2), align 8
  call void (i8*, ...) @Perl_warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i64 %56)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @op_names_init()
  %57 = load i32, i32* %ax, align 4
  %add35 = add nsw i32 %57, 0
  %idxprom = sext i32 %add35 to i64
  %58 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %58, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %59 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %60 = load i32, i32* %ax, align 4
  %idx.ext36 = sext i32 %60 to i64
  %add.ptr37 = getelementptr inbounds %struct.sv*, %struct.sv** %59, i64 %idx.ext36
  %61 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %61, 1
  %add.ptr38 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr37, i64 %sub
  store %struct.sv** %add.ptr38, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

declare void @Perl_warn(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @op_names_init() #0 {
entry:
  %i = alloca i32, align 4
  %len = alloca i64, align 8
  %op_names = alloca i8**, align 8
  %bitmap = alloca i8*, align 8
  %sv = alloca %struct.sv*, align 8
  %call = call %struct.hv* @Perl_newHV()
  store %struct.hv* %call, %struct.hv** getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 0), align 8
  %call1 = call i8** @Perl_get_op_names()
  store i8** %call1, i8*** %op_names, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @PL_maxo, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %call2 = call %struct.sv* @Perl_newSViv(i64 %conv)
  store %struct.sv* %call2, %struct.sv** %sv, align 8
  %3 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %or = or i32 %4, 8388608
  store i32 %or, i32* %sv_flags, align 4
  %5 = load %struct.hv*, %struct.hv** getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 0), align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8**, i8*** %op_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load i8**, i8*** %op_names, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %10, i64 %idxprom3
  %11 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i64 @strlen(i8* %11)
  %conv6 = trunc i64 %call5 to i32
  %12 = load %struct.sv*, %struct.sv** %sv, align 8
  %call7 = call %struct.sv** @Perl_hv_store(%struct.hv* %5, i8* %8, i32 %conv6, %struct.sv* %12, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call8 = call %struct.sv* @new_opset(%struct.sv* null)
  %call9 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call8)
  call void @put_op_bitspec(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i64 0, %struct.sv* %call9)
  %call10 = call %struct.sv* @new_opset(%struct.sv* null)
  store %struct.sv* %call10, %struct.sv** getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 1), align 8
  %14 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 1), align 8
  %sv_flags11 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags11, align 4
  %and = and i32 %15, 262144
  %cmp12 = icmp eq i32 %and, 262144
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %16 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 1), align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any, align 8
  %18 = bitcast i8* %17 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %18, i32 0, i32 1
  %19 = load i64, i64* %xpv_cur, align 8
  store i64 %19, i64* %len, align 8
  %20 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 1), align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any14, align 8
  %22 = bitcast i8* %21 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %22, i32 0, i32 0
  %23 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %24 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 1), align 8
  %call15 = call i8* @Perl_sv_2pv_flags(%struct.sv* %24, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %23, %cond.true ], [ %call15, %cond.false ]
  store i8* %cond, i8** %bitmap, align 8
  %25 = load i64, i64* %len, align 8
  %sub = sub i64 %25, 1
  %conv16 = trunc i64 %sub to i32
  store i32 %conv16, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %26 = load i32, i32* %i, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %i, align 4
  %cmp17 = icmp sgt i32 %26, 0
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load i8*, i8** %bitmap, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %28, i64 %idxprom19
  store i8 -1, i8* %arrayidx20, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i32, i32* @PL_maxo, align 4
  %and21 = and i32 %29, 7
  %tobool = icmp ne i32 %and21, 0
  br i1 %tobool, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %while.end
  %30 = load i32, i32* @PL_maxo, align 4
  %and23 = and i32 %30, 7
  %shl = shl i32 255, %and23
  %neg = xor i32 %shl, -1
  br label %cond.end.25

cond.false.24:                                    ; preds = %while.end
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.22
  %cond26 = phi i32 [ %neg, %cond.true.22 ], [ 255, %cond.false.24 ]
  %conv27 = trunc i32 %cond26 to i8
  %31 = load i64, i64* %len, align 8
  %sub28 = sub i64 %31, 1
  %32 = load i8*, i8** %bitmap, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %32, i64 %sub28
  store i8 %conv27, i8* %arrayidx29, align 1
  %33 = load %struct.sv*, %struct.sv** getelementptr inbounds (%struct.my_cxt_t, %struct.my_cxt_t* @my_cxt, i32 0, i32 1), align 8
  call void @put_op_bitspec(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i64 0, %struct.sv* %33)
  ret void
}

declare void @Perl_save_vptr(i8*) #1

declare void @Perl_save_destructor(void (i8*)*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

declare %struct.sv* @Perl_newSV(i64) #1

declare i64 @strlen(i8*) #1

declare %struct.hv* @Perl_newHV() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
