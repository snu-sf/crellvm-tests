; ModuleID = 'pad.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.interpreter = type { i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.sv = type { i8*, i32, i32 }
%union.any = type { i8* }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, {}*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%struct.xpv = type { i8*, i64, i64 }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.xpviv = type { i8*, i64, i64, i64 }

@PL_savestack_ix = external global i32, align 4
@PL_savestack_max = external global i32, align 4
@PL_comppad = external global %struct.av*, align 8
@PL_savestack = external global %union.any*, align 8
@PL_comppad_name = external global %struct.av*, align 8
@PL_padix = external global i32, align 4
@PL_comppad_name_fill = external global i32, align 4
@PL_min_intro_pending = external global i32, align 4
@PL_max_intro_pending = external global i32, align 4
@PL_pad_reset_pending = external global i32, align 4
@PL_curpad = external global %struct.sv**, align 8
@PL_dirty = external global i8, align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_Sv = external global %struct.sv*, align 8
@.str = private unnamed_addr constant [17 x i8] c"panic: pad_alloc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@PL_curcop = external global %struct.cop*, align 8
@PL_dowarn = external global i8, align 1
@PL_comppad_name_floor = external global i32, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"\22%s\22 variable %s masks earlier declaration in same %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"our\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"my\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"statement\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\22our\22 variable %s redeclared\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\09(Did you mean \22local\22 instead of \22our\22?)\0A\00", align 1
@PL_cop_seqmax = external global i32, align 4
@PL_compcv = external global %struct.cv*, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"panic: pad_sv po\00", align 1
@PL_padix_floor = external global i32, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"%_ never introduced\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"panic: pad_swipe curpad\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"panic: pad_swipe po\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_sv_placeholder = external global %struct.sv, align 8
@.str.13 = private unnamed_addr constant [23 x i8] c"panic: pad_free curpad\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"panic: pad_free po\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"PADNAME = 0x%lx(0x%lx) PAD = 0x%lx(0x%lx)\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"%2d. 0x%lx<%lu> FAKE \22%s\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"%2d. 0x%lx<%lu> (%lu,%lu) \22%s\22\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"%2d. 0x%lx<%lu>\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Variable \22%s\22 may be unavailable\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Variable \22%s\22 will not stay shared\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"panic: cv_clone: %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct.av* @Perl_pad_new(i32 %flags) #0 {
entry:
  %flags.addr = alloca i32, align 4
  %padlist = alloca %struct.av*, align 8
  %padname = alloca %struct.av*, align 8
  %pad = alloca %struct.av*, align 8
  %a0 = alloca %struct.av*, align 8
  %tmp = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @PL_savestack_ix, align 4
  %add = add nsw i32 %1, 2
  %2 = load i32, i32* @PL_savestack_max, align 4
  %cmp = icmp sgt i32 %add, %2
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  call void @Perl_savestack_grow()
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %3 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %4 = bitcast %struct.av* %3 to %struct.sv*
  %5 = bitcast %struct.sv* %4 to i8*
  %6 = load i32, i32* @PL_savestack_ix, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @PL_savestack_ix, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx = getelementptr inbounds %union.any, %union.any* %7, i64 %idxprom
  %any_ptr = bitcast %union.any* %arrayidx to i8**
  store i8* %5, i8** %any_ptr, align 8
  %8 = load i32, i32* @PL_savestack_ix, align 4
  %inc2 = add nsw i32 %8, 1
  store i32 %inc2, i32* @PL_savestack_ix, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %union.any*, %union.any** @PL_savestack, align 8
  %arrayidx4 = getelementptr inbounds %union.any, %union.any* %9, i64 %idxprom3
  %any_i32 = bitcast %union.any* %arrayidx4 to i32*
  store i32 33, i32* %any_i32, align 4
  store i32 33, i32* %tmp
  %10 = load i32, i32* %tmp
  call void @Perl_save_sptr(%struct.sv** bitcast (%struct.av** @PL_comppad_name to %struct.sv**))
  %11 = load i32, i32* %flags.addr, align 4
  %and5 = and i32 %11, 1
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.end.12, label %if.then.7

if.then.7:                                        ; preds = %if.end
  call void @Perl_save_I32(i32* @PL_padix)
  call void @Perl_save_I32(i32* @PL_comppad_name_fill)
  call void @Perl_save_I32(i32* @PL_min_intro_pending)
  call void @Perl_save_I32(i32* @PL_max_intro_pending)
  %12 = load i32, i32* %flags.addr, align 4
  %and8 = and i32 %12, 4
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  call void @Perl_save_I32(i32* @PL_pad_reset_pending)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %call = call %struct.av* @Perl_newAV()
  store %struct.av* %call, %struct.av** %padlist, align 8
  %call14 = call %struct.av* @Perl_newAV()
  store %struct.av* %call14, %struct.av** %padname, align 8
  %call15 = call %struct.av* @Perl_newAV()
  store %struct.av* %call15, %struct.av** %pad, align 8
  %13 = load i32, i32* %flags.addr, align 4
  %and16 = and i32 %13, 1
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.13
  %call19 = call %struct.av* @Perl_newAV()
  store %struct.av* %call19, %struct.av** %a0, align 8
  %14 = load %struct.av*, %struct.av** %a0, align 8
  call void @Perl_av_extend(%struct.av* %14, i32 0)
  %15 = load %struct.av*, %struct.av** %pad, align 8
  %16 = load %struct.av*, %struct.av** %a0, align 8
  %17 = bitcast %struct.av* %16 to %struct.sv*
  %call20 = call %struct.sv** @Perl_av_store(%struct.av* %15, i32 0, %struct.sv* %17)
  %18 = load %struct.av*, %struct.av** %a0, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %18, i32 0, i32 0
  %19 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %19, i32 0, i32 9
  store i8 2, i8* %xav_flags, align 1
  br label %if.end.22

if.else:                                          ; preds = %if.end.13
  %20 = load %struct.av*, %struct.av** %pad, align 8
  %call21 = call %struct.sv** @Perl_av_store(%struct.av* %20, i32 0, %struct.sv* null)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.18
  %21 = load %struct.av*, %struct.av** %padlist, align 8
  %sv_any23 = getelementptr inbounds %struct.av, %struct.av* %21, i32 0, i32 0
  %22 = load %struct.xpvav*, %struct.xpvav** %sv_any23, align 8
  %xav_flags24 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %22, i32 0, i32 9
  %23 = load i8, i8* %xav_flags24, align 1
  %conv = zext i8 %23 to i32
  %and25 = and i32 %conv, -2
  %conv26 = trunc i32 %and25 to i8
  store i8 %conv26, i8* %xav_flags24, align 1
  %24 = load %struct.av*, %struct.av** %padlist, align 8
  %25 = load %struct.av*, %struct.av** %padname, align 8
  %26 = bitcast %struct.av* %25 to %struct.sv*
  %call27 = call %struct.sv** @Perl_av_store(%struct.av* %24, i32 0, %struct.sv* %26)
  %27 = load %struct.av*, %struct.av** %padlist, align 8
  %28 = load %struct.av*, %struct.av** %pad, align 8
  %29 = bitcast %struct.av* %28 to %struct.sv*
  %call28 = call %struct.sv** @Perl_av_store(%struct.av* %27, i32 1, %struct.sv* %29)
  %30 = load %struct.av*, %struct.av** %padlist, align 8
  %call29 = call %struct.sv** @Perl_av_fetch(%struct.av* %30, i32 0, i32 0)
  %31 = load %struct.sv*, %struct.sv** %call29, align 8
  %32 = bitcast %struct.sv* %31 to %struct.av*
  store %struct.av* %32, %struct.av** @PL_comppad_name, align 8
  %33 = load %struct.av*, %struct.av** %padlist, align 8
  %call30 = call %struct.sv** @Perl_av_fetch(%struct.av* %33, i32 1, i32 0)
  %34 = load %struct.sv*, %struct.sv** %call30, align 8
  %35 = bitcast %struct.sv* %34 to %struct.av*
  store %struct.av* %35, %struct.av** @PL_comppad, align 8
  %36 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any31 = getelementptr inbounds %struct.av, %struct.av* %36, i32 0, i32 0
  %37 = load %struct.xpvav*, %struct.xpvav** %sv_any31, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %37, i32 0, i32 0
  %38 = load i8*, i8** %xav_array, align 8
  %39 = bitcast i8* %38 to %struct.sv**
  store %struct.sv** %39, %struct.sv*** @PL_curpad, align 8
  %40 = load i32, i32* %flags.addr, align 4
  %and32 = and i32 %40, 1
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.end.22
  store i32 0, i32* @PL_comppad_name_fill, align 4
  store i32 0, i32* @PL_min_intro_pending, align 4
  store i32 0, i32* @PL_padix, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.22
  %41 = load %struct.av*, %struct.av** %padlist, align 8
  ret %struct.av* %41
}

declare void @Perl_savestack_grow() #1

declare void @Perl_save_sptr(%struct.sv**) #1

declare void @Perl_save_I32(i32*) #1

declare %struct.av* @Perl_newAV() #1

declare void @Perl_av_extend(%struct.av*, i32) #1

declare %struct.sv** @Perl_av_store(%struct.av*, i32, %struct.sv*) #1

declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @Perl_pad_undef(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %ix = alloca i32, align 4
  %padlist = alloca %struct.av*, align 8
  %outercv = alloca %struct.cv*, align 8
  %seq = alloca i32, align 4
  %comppad_name = alloca %struct.av*, align 8
  %namepad = alloca %struct.sv**, align 8
  %comppad = alloca %struct.av*, align 8
  %curpad = alloca %struct.sv**, align 8
  %namesv = alloca %struct.sv*, align 8
  %innercv = alloca %struct.cv*, align 8
  %sv = alloca %struct.sv*, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %0, i32 0, i32 0
  %1 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_padlist = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %1, i32 0, i32 15
  %2 = load %struct.av*, %struct.av** %xcv_padlist, align 8
  store %struct.av* %2, %struct.av** %padlist, align 8
  %3 = load %struct.av*, %struct.av** %padlist, align 8
  %tobool = icmp ne %struct.av* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.cv, %struct.cv* %4, i32 0, i32 0
  %5 = load %struct.xpvcv*, %struct.xpvcv** %sv_any1, align 8
  %xcv_padlist2 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %5, i32 0, i32 15
  %6 = load %struct.av*, %struct.av** %xcv_padlist2, align 8
  %sv_refcnt = getelementptr inbounds %struct.av, %struct.av* %6, i32 0, i32 1
  %7 = load i32, i32* %sv_refcnt, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load i8, i8* @PL_dirty, align 1
  %tobool6 = icmp ne i8 %8, 0
  br i1 %tobool6, label %if.end.69, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %9 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any8 = getelementptr inbounds %struct.cv, %struct.cv* %9, i32 0, i32 0
  %10 = load %struct.xpvcv*, %struct.xpvcv** %sv_any8, align 8
  %xcv_outside = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %10, i32 0, i32 16
  %11 = load %struct.cv*, %struct.cv** %xcv_outside, align 8
  store %struct.cv* %11, %struct.cv** %outercv, align 8
  %12 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any9 = getelementptr inbounds %struct.cv, %struct.cv* %12, i32 0, i32 0
  %13 = load %struct.xpvcv*, %struct.xpvcv** %sv_any9, align 8
  %xcv_outside_seq = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %13, i32 0, i32 18
  %14 = load i32, i32* %xcv_outside_seq, align 4
  store i32 %14, i32* %seq, align 4
  %15 = load %struct.av*, %struct.av** %padlist, align 8
  %sv_any10 = getelementptr inbounds %struct.av, %struct.av* %15, i32 0, i32 0
  %16 = load %struct.xpvav*, %struct.xpvav** %sv_any10, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %16, i32 0, i32 0
  %17 = load i8*, i8** %xav_array, align 8
  %18 = bitcast i8* %17 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 0
  %19 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %20 = bitcast %struct.sv* %19 to %struct.av*
  store %struct.av* %20, %struct.av** %comppad_name, align 8
  %21 = load %struct.av*, %struct.av** %comppad_name, align 8
  %sv_any11 = getelementptr inbounds %struct.av, %struct.av* %21, i32 0, i32 0
  %22 = load %struct.xpvav*, %struct.xpvav** %sv_any11, align 8
  %xav_array12 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %22, i32 0, i32 0
  %23 = load i8*, i8** %xav_array12, align 8
  %24 = bitcast i8* %23 to %struct.sv**
  store %struct.sv** %24, %struct.sv*** %namepad, align 8
  %25 = load %struct.av*, %struct.av** %padlist, align 8
  %sv_any13 = getelementptr inbounds %struct.av, %struct.av* %25, i32 0, i32 0
  %26 = load %struct.xpvav*, %struct.xpvav** %sv_any13, align 8
  %xav_array14 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %26, i32 0, i32 0
  %27 = load i8*, i8** %xav_array14, align 8
  %28 = bitcast i8* %27 to %struct.sv**
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i64 1
  %29 = load %struct.sv*, %struct.sv** %arrayidx15, align 8
  %30 = bitcast %struct.sv* %29 to %struct.av*
  store %struct.av* %30, %struct.av** %comppad, align 8
  %31 = load %struct.av*, %struct.av** %comppad, align 8
  %sv_any16 = getelementptr inbounds %struct.av, %struct.av* %31, i32 0, i32 0
  %32 = load %struct.xpvav*, %struct.xpvav** %sv_any16, align 8
  %xav_array17 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %32, i32 0, i32 0
  %33 = load i8*, i8** %xav_array17, align 8
  %34 = bitcast i8* %33 to %struct.sv**
  store %struct.sv** %34, %struct.sv*** %curpad, align 8
  %35 = load %struct.av*, %struct.av** %comppad_name, align 8
  %sv_any18 = getelementptr inbounds %struct.av, %struct.av* %35, i32 0, i32 0
  %36 = load %struct.xpvav*, %struct.xpvav** %sv_any18, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %36, i32 0, i32 1
  %37 = load i64, i64* %xav_fill, align 8
  %conv = trunc i64 %37 to i32
  store i32 %conv, i32* %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %38 = load i32, i32* %ix, align 4
  %cmp = icmp sgt i32 %38, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.sv**, %struct.sv*** %namepad, align 8
  %arrayidx20 = getelementptr inbounds %struct.sv*, %struct.sv** %40, i64 %idxprom
  %41 = load %struct.sv*, %struct.sv** %arrayidx20, align 8
  store %struct.sv* %41, %struct.sv** %namesv, align 8
  %42 = load %struct.sv*, %struct.sv** %namesv, align 8
  %tobool21 = icmp ne %struct.sv* %42, null
  br i1 %tobool21, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %for.body
  %43 = load %struct.sv*, %struct.sv** %namesv, align 8
  %cmp22 = icmp ne %struct.sv* %43, @PL_sv_undef
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.68

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %44 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_any25 = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 0
  %45 = load i8*, i8** %sv_any25, align 8
  %46 = bitcast i8* %45 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %46, i32 0, i32 0
  %47 = load i8*, i8** %xpv_pv, align 8
  %48 = load i8, i8* %47, align 1
  %conv26 = sext i8 %48 to i32
  %cmp27 = icmp eq i32 %conv26, 38
  br i1 %cmp27, label %if.then.29, label %if.end.68

if.then.29:                                       ; preds = %land.lhs.true.24
  %49 = load i32, i32* %ix, align 4
  %idxprom30 = sext i32 %49 to i64
  %50 = load %struct.sv**, %struct.sv*** %curpad, align 8
  %arrayidx31 = getelementptr inbounds %struct.sv*, %struct.sv** %50, i64 %idxprom30
  %51 = load %struct.sv*, %struct.sv** %arrayidx31, align 8
  %52 = bitcast %struct.sv* %51 to %struct.cv*
  store %struct.cv* %52, %struct.cv** %innercv, align 8
  %53 = load i32, i32* %ix, align 4
  %idxprom32 = sext i32 %53 to i64
  %54 = load %struct.sv**, %struct.sv*** %namepad, align 8
  %arrayidx33 = getelementptr inbounds %struct.sv*, %struct.sv** %54, i64 %idxprom32
  store %struct.sv* null, %struct.sv** %arrayidx33, align 8
  %55 = load %struct.sv*, %struct.sv** %namesv, align 8
  call void @Perl_sv_free(%struct.sv* %55)
  %56 = load %struct.av*, %struct.av** %comppad, align 8
  %sv_refcnt34 = getelementptr inbounds %struct.av, %struct.av* %56, i32 0, i32 1
  %57 = load i32, i32* %sv_refcnt34, align 4
  %cmp35 = icmp ult i32 %57, 2
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.then.29
  %58 = load i32, i32* %ix, align 4
  %idxprom38 = sext i32 %58 to i64
  %59 = load %struct.sv**, %struct.sv*** %curpad, align 8
  %arrayidx39 = getelementptr inbounds %struct.sv*, %struct.sv** %59, i64 %idxprom38
  store %struct.sv* null, %struct.sv** %arrayidx39, align 8
  %60 = load %struct.cv*, %struct.cv** %innercv, align 8
  %61 = bitcast %struct.cv* %60 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %61)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.then.29
  %62 = load %struct.cv*, %struct.cv** %innercv, align 8
  %sv_refcnt41 = getelementptr inbounds %struct.cv, %struct.cv* %62, i32 0, i32 1
  %63 = load i32, i32* %sv_refcnt41, align 4
  %tobool42 = icmp ne i32 %63, 0
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.67

land.lhs.true.43:                                 ; preds = %if.end.40
  %64 = load %struct.cv*, %struct.cv** %innercv, align 8
  %sv_any44 = getelementptr inbounds %struct.cv, %struct.cv* %64, i32 0, i32 0
  %65 = load %struct.xpvcv*, %struct.xpvcv** %sv_any44, align 8
  %xcv_outside45 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %65, i32 0, i32 16
  %66 = load %struct.cv*, %struct.cv** %xcv_outside45, align 8
  %67 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %cmp46 = icmp eq %struct.cv* %66, %67
  br i1 %cmp46, label %if.then.48, label %if.end.67

if.then.48:                                       ; preds = %land.lhs.true.43
  %68 = load %struct.cv*, %struct.cv** %outercv, align 8
  %tobool49 = icmp ne %struct.cv* %68, null
  br i1 %tobool49, label %land.lhs.true.50, label %if.else

land.lhs.true.50:                                 ; preds = %if.then.48
  %69 = load %struct.cv*, %struct.cv** %outercv, align 8
  %sv_refcnt51 = getelementptr inbounds %struct.cv, %struct.cv* %69, i32 0, i32 1
  %70 = load i32, i32* %sv_refcnt51, align 4
  %tobool52 = icmp ne i32 %70, 0
  br i1 %tobool52, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %land.lhs.true.50
  %71 = load %struct.cv*, %struct.cv** %innercv, align 8
  %sv_any54 = getelementptr inbounds %struct.cv, %struct.cv* %71, i32 0, i32 0
  %72 = load %struct.xpvcv*, %struct.xpvcv** %sv_any54, align 8
  %xcv_flags = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %72, i32 0, i32 17
  %73 = load i16, i16* %xcv_flags, align 2
  %conv55 = zext i16 %73 to i32
  %and = and i32 %conv55, -1025
  %conv56 = trunc i32 %and to i16
  store i16 %conv56, i16* %xcv_flags, align 2
  %74 = load %struct.cv*, %struct.cv** %outercv, align 8
  %75 = load %struct.cv*, %struct.cv** %innercv, align 8
  %sv_any57 = getelementptr inbounds %struct.cv, %struct.cv* %75, i32 0, i32 0
  %76 = load %struct.xpvcv*, %struct.xpvcv** %sv_any57, align 8
  %xcv_outside58 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %76, i32 0, i32 16
  store %struct.cv* %74, %struct.cv** %xcv_outside58, align 8
  %77 = load i32, i32* %seq, align 4
  %78 = load %struct.cv*, %struct.cv** %innercv, align 8
  %sv_any59 = getelementptr inbounds %struct.cv, %struct.cv* %78, i32 0, i32 0
  %79 = load %struct.xpvcv*, %struct.xpvcv** %sv_any59, align 8
  %xcv_outside_seq60 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %79, i32 0, i32 18
  store i32 %77, i32* %xcv_outside_seq60, align 4
  %80 = load %struct.cv*, %struct.cv** %outercv, align 8
  %81 = bitcast %struct.cv* %80 to %struct.sv*
  store %struct.sv* %81, %struct.sv** @PL_Sv, align 8
  %82 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool61 = icmp ne %struct.sv* %82, null
  br i1 %tobool61, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.53
  %83 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt62 = getelementptr inbounds %struct.sv, %struct.sv* %83, i32 0, i32 1
  %84 = load i32, i32* %sv_refcnt62, align 4
  %inc = add i32 %84, 1
  store i32 %inc, i32* %sv_refcnt62, align 4
  %tobool63 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.53
  %85 = phi i1 [ false, %if.then.53 ], [ %tobool63, %land.rhs ]
  %land.ext = zext i1 %85 to i32
  %86 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  br label %if.end.66

if.else:                                          ; preds = %land.lhs.true.50, %if.then.48
  %87 = load %struct.cv*, %struct.cv** %innercv, align 8
  %sv_any64 = getelementptr inbounds %struct.cv, %struct.cv* %87, i32 0, i32 0
  %88 = load %struct.xpvcv*, %struct.xpvcv** %sv_any64, align 8
  %xcv_outside65 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %88, i32 0, i32 16
  store %struct.cv* null, %struct.cv** %xcv_outside65, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %land.end
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %land.lhs.true.43, %if.end.40
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %land.lhs.true.24, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %89 = load i32, i32* %ix, align 4
  %dec = add nsw i32 %89, -1
  store i32 %dec, i32* %ix, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.69

if.end.69:                                        ; preds = %for.end, %if.end.5
  %90 = load %struct.av*, %struct.av** %padlist, align 8
  %sv_any70 = getelementptr inbounds %struct.av, %struct.av* %90, i32 0, i32 0
  %91 = load %struct.xpvav*, %struct.xpvav** %sv_any70, align 8
  %xav_fill71 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %91, i32 0, i32 1
  %92 = load i64, i64* %xav_fill71, align 8
  %conv72 = trunc i64 %92 to i32
  store i32 %conv72, i32* %ix, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.91, %if.then.81, %if.end.69
  %93 = load i32, i32* %ix, align 4
  %cmp73 = icmp sge i32 %93, 0
  br i1 %cmp73, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %94 = load i32, i32* %ix, align 4
  %dec75 = add nsw i32 %94, -1
  store i32 %dec75, i32* %ix, align 4
  %idxprom76 = sext i32 %94 to i64
  %95 = load %struct.av*, %struct.av** %padlist, align 8
  %sv_any77 = getelementptr inbounds %struct.av, %struct.av* %95, i32 0, i32 0
  %96 = load %struct.xpvav*, %struct.xpvav** %sv_any77, align 8
  %xav_array78 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %96, i32 0, i32 0
  %97 = load i8*, i8** %xav_array78, align 8
  %98 = bitcast i8* %97 to %struct.sv**
  %arrayidx79 = getelementptr inbounds %struct.sv*, %struct.sv** %98, i64 %idxprom76
  %99 = load %struct.sv*, %struct.sv** %arrayidx79, align 8
  store %struct.sv* %99, %struct.sv** %sv, align 8
  %100 = load %struct.sv*, %struct.sv** %sv, align 8
  %tobool80 = icmp ne %struct.sv* %100, null
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %while.body
  br label %while.cond

if.end.82:                                        ; preds = %while.body
  %101 = load %struct.sv*, %struct.sv** %sv, align 8
  %102 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %103 = bitcast %struct.av* %102 to %struct.sv*
  %cmp83 = icmp eq %struct.sv* %101, %103
  br i1 %cmp83, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %if.end.82
  store %struct.av* null, %struct.av** @PL_comppad_name, align 8
  br label %if.end.91

if.else.86:                                       ; preds = %if.end.82
  %104 = load %struct.sv*, %struct.sv** %sv, align 8
  %105 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %106 = bitcast %struct.av* %105 to %struct.sv*
  %cmp87 = icmp eq %struct.sv* %104, %106
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.else.86
  store %struct.av* null, %struct.av** @PL_comppad, align 8
  store %struct.sv** null, %struct.sv*** @PL_curpad, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.else.86
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.85
  %107 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_free(%struct.sv* %107)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %108 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any92 = getelementptr inbounds %struct.cv, %struct.cv* %108, i32 0, i32 0
  %109 = load %struct.xpvcv*, %struct.xpvcv** %sv_any92, align 8
  %xcv_padlist93 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %109, i32 0, i32 15
  %110 = load %struct.av*, %struct.av** %xcv_padlist93, align 8
  %111 = bitcast %struct.av* %110 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %111)
  %112 = load %struct.cv*, %struct.cv** %cv.addr, align 8
  %sv_any94 = getelementptr inbounds %struct.cv, %struct.cv* %112, i32 0, i32 0
  %113 = load %struct.xpvcv*, %struct.xpvcv** %sv_any94, align 8
  %xcv_padlist95 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %113, i32 0, i32 15
  store %struct.av* null, %struct.av** %xcv_padlist95, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then.4, %if.then
  ret void
}

declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define i64 @Perl_pad_add_name(i8* %name, %struct.hv* %typestash, %struct.hv* %ourstash, i8 signext %fake) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %typestash.addr = alloca %struct.hv*, align 8
  %ourstash.addr = alloca %struct.hv*, align 8
  %fake.addr = alloca i8, align 1
  %offset = alloca i64, align 8
  %namesv = alloca %struct.sv*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.hv* %typestash, %struct.hv** %typestash.addr, align 8
  store %struct.hv* %ourstash, %struct.hv** %ourstash.addr, align 8
  store i8 %fake, i8* %fake.addr, align 1
  %call = call i64 @Perl_pad_alloc(i32 9, i32 1024)
  store i64 %call, i64* %offset, align 8
  %call1 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call1, %struct.sv** %namesv, align 8
  %0 = load %struct.sv*, %struct.sv** %namesv, align 8
  %1 = load %struct.hv*, %struct.hv** %ourstash.addr, align 8
  %tobool = icmp ne %struct.hv* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.hv*, %struct.hv** %typestash.addr, align 8
  %tobool2 = icmp ne %struct.hv* %2, null
  %cond = select i1 %tobool2, i32 7, i32 6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond3 = phi i32 [ 13, %cond.true ], [ %cond, %cond.false ]
  %call4 = call signext i8 @Perl_sv_upgrade(%struct.sv* %0, i32 %cond3)
  %3 = load %struct.sv*, %struct.sv** %namesv, align 8
  %4 = load i8*, i8** %name.addr, align 8
  call void @Perl_sv_setpv(%struct.sv* %3, i8* %4)
  %5 = load %struct.hv*, %struct.hv** %typestash.addr, align 8
  %tobool5 = icmp ne %struct.hv* %5, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %6 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_flags, align 4
  %or = or i32 %7, 1073741824
  store i32 %or, i32* %sv_flags, align 4
  %8 = load %struct.hv*, %struct.hv** %typestash.addr, align 8
  %9 = bitcast %struct.hv* %8 to %struct.sv*
  store %struct.sv* %9, %struct.sv** @PL_Sv, align 8
  %10 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool6 = icmp ne %struct.sv* %10, null
  br i1 %tobool6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %11 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 1
  %12 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool7 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %13 = phi i1 [ false, %if.then ], [ %tobool7, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  %14 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %15 = bitcast %struct.sv* %14 to %struct.hv*
  %16 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 0
  %17 = load i8*, i8** %sv_any, align 8
  %18 = bitcast i8* %17 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %18, i32 0, i32 6
  store %struct.hv* %15, %struct.hv** %xmg_stash, align 8
  br label %if.end

if.end:                                           ; preds = %land.end, %cond.end
  %19 = load %struct.hv*, %struct.hv** %ourstash.addr, align 8
  %tobool8 = icmp ne %struct.hv* %19, null
  br i1 %tobool8, label %if.then.9, label %if.end.20

if.then.9:                                        ; preds = %if.end
  %20 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_flags10 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags10, align 4
  %or11 = or i32 %21, -2147483648
  store i32 %or11, i32* %sv_flags10, align 4
  %22 = load %struct.hv*, %struct.hv** %ourstash.addr, align 8
  %23 = bitcast %struct.hv* %22 to %struct.sv*
  store %struct.sv* %23, %struct.sv** @PL_Sv, align 8
  %24 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool12 = icmp ne %struct.sv* %24, null
  br i1 %tobool12, label %land.rhs.13, label %land.end.17

land.rhs.13:                                      ; preds = %if.then.9
  %25 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt14 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 1
  %26 = load i32, i32* %sv_refcnt14, align 4
  %inc15 = add i32 %26, 1
  store i32 %inc15, i32* %sv_refcnt14, align 4
  %tobool16 = icmp ne i32 %inc15, 0
  br label %land.end.17

land.end.17:                                      ; preds = %land.rhs.13, %if.then.9
  %27 = phi i1 [ false, %if.then.9 ], [ %tobool16, %land.rhs.13 ]
  %land.ext18 = zext i1 %27 to i32
  %28 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %29 = bitcast %struct.sv* %28 to %struct.hv*
  %30 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_any19 = getelementptr inbounds %struct.sv, %struct.sv* %30, i32 0, i32 0
  %31 = load i8*, i8** %sv_any19, align 8
  %32 = bitcast i8* %31 to %struct.xpvgv*
  %xgv_stash = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %32, i32 0, i32 10
  store %struct.hv* %29, %struct.hv** %xgv_stash, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %land.end.17, %if.end
  %33 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %34 = load i64, i64* %offset, align 8
  %conv = trunc i64 %34 to i32
  %35 = load %struct.sv*, %struct.sv** %namesv, align 8
  %call21 = call %struct.sv** @Perl_av_store(%struct.av* %33, i32 %conv, %struct.sv* %35)
  %36 = load i8, i8* %fake.addr, align 1
  %tobool22 = icmp ne i8 %36, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.20
  %37 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_flags24 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 2
  %38 = load i32, i32* %sv_flags24, align 4
  %or25 = or i32 %38, 1048576
  store i32 %or25, i32* %sv_flags24, align 4
  br label %if.end.51

if.else:                                          ; preds = %if.end.20
  %39 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_any26 = getelementptr inbounds %struct.sv, %struct.sv* %39, i32 0, i32 0
  %40 = load i8*, i8** %sv_any26, align 8
  %41 = bitcast i8* %40 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %41, i32 0, i32 4
  store double 0x41CDCD64FF800000, double* %xnv_nv, align 8
  %42 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_any27 = getelementptr inbounds %struct.sv, %struct.sv* %42, i32 0, i32 0
  %43 = load i8*, i8** %sv_any27, align 8
  %44 = bitcast i8* %43 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %44, i32 0, i32 3
  store i64 0, i64* %xiv_iv, align 8
  %45 = load i32, i32* @PL_min_intro_pending, align 4
  %tobool28 = icmp ne i32 %45, 0
  br i1 %tobool28, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %if.else
  %46 = load i64, i64* %offset, align 8
  %conv30 = trunc i64 %46 to i32
  store i32 %conv30, i32* @PL_min_intro_pending, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.else
  %47 = load i64, i64* %offset, align 8
  %conv32 = trunc i64 %47 to i32
  store i32 %conv32, i32* @PL_max_intro_pending, align 4
  %48 = load i8*, i8** %name.addr, align 8
  %49 = load i8, i8* %48, align 1
  %conv33 = sext i8 %49 to i32
  %cmp = icmp eq i32 %conv33, 64
  br i1 %cmp, label %if.then.35, label %if.else.39

if.then.35:                                       ; preds = %if.end.31
  %50 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %51 = load i64, i64* %offset, align 8
  %conv36 = trunc i64 %51 to i32
  %call37 = call %struct.av* @Perl_newAV()
  %52 = bitcast %struct.av* %call37 to %struct.sv*
  %call38 = call %struct.sv** @Perl_av_store(%struct.av* %50, i32 %conv36, %struct.sv* %52)
  br label %if.end.48

if.else.39:                                       ; preds = %if.end.31
  %53 = load i8*, i8** %name.addr, align 8
  %54 = load i8, i8* %53, align 1
  %conv40 = sext i8 %54 to i32
  %cmp41 = icmp eq i32 %conv40, 37
  br i1 %cmp41, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.else.39
  %55 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %56 = load i64, i64* %offset, align 8
  %conv44 = trunc i64 %56 to i32
  %call45 = call %struct.hv* @Perl_newHV()
  %57 = bitcast %struct.hv* %call45 to %struct.sv*
  %call46 = call %struct.sv** @Perl_av_store(%struct.av* %55, i32 %conv44, %struct.sv* %57)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.else.39
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.35
  %58 = load i64, i64* %offset, align 8
  %59 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %59, i64 %58
  %60 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags49 = getelementptr inbounds %struct.sv, %struct.sv* %60, i32 0, i32 2
  %61 = load i32, i32* %sv_flags49, align 4
  %or50 = or i32 %61, 1280
  store i32 %or50, i32* %sv_flags49, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.48, %if.then.23
  %62 = load i64, i64* %offset, align 8
  ret i64 %62
}

; Function Attrs: nounwind uwtable
define i64 @Perl_pad_alloc(i32 %optype, i32 %tmptype) #0 {
entry:
  %optype.addr = alloca i32, align 4
  %tmptype.addr = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %retval1 = alloca i32, align 4
  %names = alloca %struct.sv**, align 8
  %names_fill = alloca i64, align 8
  store i32 %optype, i32* %optype.addr, align 4
  store i32 %tmptype, i32* %tmptype.addr, align 4
  %0 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %0, i32 0, i32 0
  %1 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %1, i32 0, i32 0
  %2 = load i8*, i8** %xav_array, align 8
  %3 = bitcast i8* %2 to %struct.sv**
  %4 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %cmp = icmp ne %struct.sv** %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* @PL_pad_reset_pending, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @Perl_pad_reset()
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load i32, i32* %tmptype.addr, align 4
  %and = and i32 %6, 1024
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.5
  %7 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %8 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any6 = getelementptr inbounds %struct.av, %struct.av* %8, i32 0, i32 0
  %9 = load %struct.xpvav*, %struct.xpvav** %sv_any6, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %9, i32 0, i32 1
  %10 = load i64, i64* %xav_fill, align 8
  %add = add nsw i64 %10, 1
  %conv = trunc i64 %add to i32
  %call = call %struct.sv** @Perl_av_fetch(%struct.av* %7, i32 %conv, i32 1)
  %11 = load %struct.sv*, %struct.sv** %call, align 8
  store %struct.sv* %11, %struct.sv** %sv, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %12 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags, align 4
  %and7 = and i32 %13, 256
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any9 = getelementptr inbounds %struct.av, %struct.av* %14, i32 0, i32 0
  %15 = load %struct.xpvav*, %struct.xpvav** %sv_any9, align 8
  %xav_fill10 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %15, i32 0, i32 1
  %16 = load i64, i64* %xav_fill10, align 8
  %conv11 = trunc i64 %16 to i32
  store i32 %conv11, i32* %retval1, align 4
  br label %if.end.31

if.else:                                          ; preds = %if.end.3
  %17 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %sv_any12 = getelementptr inbounds %struct.av, %struct.av* %17, i32 0, i32 0
  %18 = load %struct.xpvav*, %struct.xpvav** %sv_any12, align 8
  %xav_array13 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %18, i32 0, i32 0
  %19 = load i8*, i8** %xav_array13, align 8
  %20 = bitcast i8* %19 to %struct.sv**
  store %struct.sv** %20, %struct.sv*** %names, align 8
  %21 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %sv_any14 = getelementptr inbounds %struct.av, %struct.av* %21, i32 0, i32 0
  %22 = load %struct.xpvav*, %struct.xpvav** %sv_any14, align 8
  %xav_fill15 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %22, i32 0, i32 1
  %23 = load i64, i64* %xav_fill15, align 8
  store i64 %23, i64* %names_fill, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.30, %if.then.23, %if.else
  %24 = load i32, i32* @PL_padix, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* @PL_padix, align 4
  %conv16 = sext i32 %inc to i64
  %25 = load i64, i64* %names_fill, align 8
  %cmp17 = icmp sle i64 %conv16, %25
  br i1 %cmp17, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %for.cond
  %26 = load i32, i32* @PL_padix, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.sv**, %struct.sv*** %names, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %27, i64 %idxprom
  %28 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %28, %struct.sv** %sv, align 8
  %tobool19 = icmp ne %struct.sv* %28, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.24

land.lhs.true.20:                                 ; preds = %land.lhs.true
  %29 = load %struct.sv*, %struct.sv** %sv, align 8
  %cmp21 = icmp ne %struct.sv* %29, @PL_sv_undef
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.20
  br label %for.cond

if.end.24:                                        ; preds = %land.lhs.true.20, %land.lhs.true, %for.cond
  %30 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %31 = load i32, i32* @PL_padix, align 4
  %call25 = call %struct.sv** @Perl_av_fetch(%struct.av* %30, i32 %31, i32 1)
  %32 = load %struct.sv*, %struct.sv** %call25, align 8
  store %struct.sv* %32, %struct.sv** %sv, align 8
  %33 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags26 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 2
  %34 = load i32, i32* %sv_flags26, align 4
  %and27 = and i32 %34, 1536
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.24
  br label %for.end

if.end.30:                                        ; preds = %if.end.24
  br label %for.cond

for.end:                                          ; preds = %if.then.29
  %35 = load i32, i32* @PL_padix, align 4
  store i32 %35, i32* %retval1, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %do.end
  %36 = load i32, i32* %tmptype.addr, align 4
  %37 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags32 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 2
  %38 = load i32, i32* %sv_flags32, align 4
  %or = or i32 %38, %36
  store i32 %or, i32* %sv_flags32, align 4
  %39 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any33 = getelementptr inbounds %struct.av, %struct.av* %39, i32 0, i32 0
  %40 = load %struct.xpvav*, %struct.xpvav** %sv_any33, align 8
  %xav_array34 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %40, i32 0, i32 0
  %41 = load i8*, i8** %xav_array34, align 8
  %42 = bitcast i8* %41 to %struct.sv**
  store %struct.sv** %42, %struct.sv*** @PL_curpad, align 8
  %43 = load i32, i32* %retval1, align 4
  %conv35 = sext i32 %43 to i64
  ret i64 %conv35
}

declare %struct.sv* @Perl_newSV(i64) #1

declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

declare %struct.hv* @Perl_newHV() #1

declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @Perl_pad_reset() #0 {
entry:
  store i32 0, i32* @PL_pad_reset_pending, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Perl_pad_add_anon(%struct.sv* %sv, i16 zeroext %op_type) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %op_type.addr = alloca i16, align 2
  %ix = alloca i64, align 8
  %name = alloca %struct.sv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i16 %op_type, i16* %op_type.addr, align 2
  %call = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call, %struct.sv** %name, align 8
  %0 = load %struct.sv*, %struct.sv** %name, align 8
  %call1 = call signext i8 @Perl_sv_upgrade(%struct.sv* %0, i32 6)
  %1 = load %struct.sv*, %struct.sv** %name, align 8
  call void @Perl_sv_setpvn(%struct.sv* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i64 1)
  %2 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %4, i32 0, i32 3
  store i64 -1, i64* %xiv_iv, align 8
  %5 = load %struct.sv*, %struct.sv** %name, align 8
  %sv_any2 = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 0
  %6 = load i8*, i8** %sv_any2, align 8
  %7 = bitcast i8* %6 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %7, i32 0, i32 4
  store double 1.000000e+00, double* %xnv_nv, align 8
  %8 = load i16, i16* %op_type.addr, align 2
  %conv = zext i16 %8 to i32
  %call3 = call i64 @Perl_pad_alloc(i32 %conv, i32 1024)
  store i64 %call3, i64* %ix, align 8
  %9 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %10 = load i64, i64* %ix, align 8
  %conv4 = trunc i64 %10 to i32
  %11 = load %struct.sv*, %struct.sv** %name, align 8
  %call5 = call %struct.sv** @Perl_av_store(%struct.av* %9, i32 %conv4, %struct.sv* %11)
  %12 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %13 = load i64, i64* %ix, align 8
  %conv6 = trunc i64 %13 to i32
  %14 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call7 = call %struct.sv** @Perl_av_store(%struct.av* %12, i32 %conv6, %struct.sv* %14)
  %15 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags, align 4
  %or = or i32 %16, 1280
  store i32 %or, i32* %sv_flags, align 4
  %17 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %18 = bitcast %struct.sv* %17 to %struct.cv*
  %sv_any8 = getelementptr inbounds %struct.cv, %struct.cv* %18, i32 0, i32 0
  %19 = load %struct.xpvcv*, %struct.xpvcv** %sv_any8, align 8
  %xcv_outside = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %19, i32 0, i32 16
  %20 = load %struct.cv*, %struct.cv** %xcv_outside, align 8
  %tobool = icmp ne %struct.cv* %20, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %22 = bitcast %struct.sv* %21 to %struct.cv*
  %sv_any9 = getelementptr inbounds %struct.cv, %struct.cv* %22, i32 0, i32 0
  %23 = load %struct.xpvcv*, %struct.xpvcv** %sv_any9, align 8
  %xcv_flags = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %23, i32 0, i32 17
  %24 = load i16, i16* %xcv_flags, align 2
  %conv10 = zext i16 %24 to i32
  %or11 = or i32 %conv10, 1024
  %conv12 = trunc i32 %or11 to i16
  store i16 %conv12, i16* %xcv_flags, align 2
  %25 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %26 = bitcast %struct.sv* %25 to %struct.cv*
  %sv_any13 = getelementptr inbounds %struct.cv, %struct.cv* %26, i32 0, i32 0
  %27 = load %struct.xpvcv*, %struct.xpvcv** %sv_any13, align 8
  %xcv_outside14 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %27, i32 0, i32 16
  %28 = load %struct.cv*, %struct.cv** %xcv_outside14, align 8
  %29 = bitcast %struct.cv* %28 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %29)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load i64, i64* %ix, align 8
  ret i64 %30
}

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @Perl_pad_check_dup(i8* %name, i8 signext %is_our, %struct.hv* %ourstash) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %is_our.addr = alloca i8, align 1
  %ourstash.addr = alloca %struct.hv*, align 8
  %svp = alloca %struct.sv**, align 8
  %sv = alloca %struct.sv*, align 8
  %top = alloca i64, align 8
  %off = alloca i64, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8 %is_our, i8* %is_our.addr, align 1
  store %struct.hv* %ourstash, %struct.hv** %ourstash.addr, align 8
  %0 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %0, i32 0, i32 14
  %1 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp = icmp ne %struct.sv* %1, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.7

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1 = getelementptr inbounds %struct.cop, %struct.cop* %2, i32 0, i32 14
  %3 = load %struct.sv*, %struct.sv** %cop_warnings1, align 8
  %cmp2 = icmp ne %struct.sv* %3, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp2, label %land.lhs.true.3, label %lor.lhs.false.7

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %4 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings4 = getelementptr inbounds %struct.cop, %struct.cop* %4, i32 0, i32 14
  %5 = load %struct.sv*, %struct.sv** %cop_warnings4, align 8
  %cmp5 = icmp eq %struct.sv* %5, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp5, label %lor.lhs.false.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.3
  %6 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings6 = getelementptr inbounds %struct.cop, %struct.cop* %6, i32 0, i32 14
  %7 = load %struct.sv*, %struct.sv** %cop_warnings6, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %7, i32 0, i32 0
  %8 = load i8*, i8** %sv_any, align 8
  %9 = bitcast i8* %8 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %9, i32 0, i32 0
  %10 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false.15, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %12 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings8 = getelementptr inbounds %struct.cop, %struct.cop* %12, i32 0, i32 14
  %13 = load %struct.sv*, %struct.sv** %cop_warnings8, align 8
  %cmp9 = icmp eq %struct.sv* %13, null
  br i1 %cmp9, label %land.lhs.true.11, label %if.then

land.lhs.true.11:                                 ; preds = %lor.lhs.false.7
  %14 = load i8, i8* @PL_dowarn, align 1
  %conv12 = zext i8 %14 to i32
  %and13 = and i32 %conv12, 1
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %lor.lhs.false.15, label %if.then

lor.lhs.false.15:                                 ; preds = %land.lhs.true.11, %lor.lhs.false, %land.lhs.true.3
  %15 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %sv_any16 = getelementptr inbounds %struct.av, %struct.av* %15, i32 0, i32 0
  %16 = load %struct.xpvav*, %struct.xpvav** %sv_any16, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %16, i32 0, i32 1
  %17 = load i64, i64* %xav_fill, align 8
  %cmp17 = icmp slt i64 %17, 0
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.15, %land.lhs.true.11, %lor.lhs.false.7
  br label %if.end.106

if.end:                                           ; preds = %lor.lhs.false.15
  %18 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %sv_any19 = getelementptr inbounds %struct.av, %struct.av* %18, i32 0, i32 0
  %19 = load %struct.xpvav*, %struct.xpvav** %sv_any19, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %19, i32 0, i32 0
  %20 = load i8*, i8** %xav_array, align 8
  %21 = bitcast i8* %20 to %struct.sv**
  store %struct.sv** %21, %struct.sv*** %svp, align 8
  %22 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %sv_any20 = getelementptr inbounds %struct.av, %struct.av* %22, i32 0, i32 0
  %23 = load %struct.xpvav*, %struct.xpvav** %sv_any20, align 8
  %xav_fill21 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %23, i32 0, i32 1
  %24 = load i64, i64* %xav_fill21, align 8
  store i64 %24, i64* %top, align 8
  %25 = load i64, i64* %top, align 8
  store i64 %25, i64* %off, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i64, i64* %off, align 8
  %conv22 = trunc i64 %26 to i32
  %27 = load i32, i32* @PL_comppad_name_floor, align 4
  %cmp23 = icmp sgt i32 %conv22, %27
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i64, i64* %off, align 8
  %29 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx25 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %28
  %30 = load %struct.sv*, %struct.sv** %arrayidx25, align 8
  store %struct.sv* %30, %struct.sv** %sv, align 8
  %tobool26 = icmp ne %struct.sv* %30, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.end.64

land.lhs.true.27:                                 ; preds = %for.body
  %31 = load %struct.sv*, %struct.sv** %sv, align 8
  %cmp28 = icmp ne %struct.sv* %31, @PL_sv_undef
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.64

land.lhs.true.30:                                 ; preds = %land.lhs.true.27
  %32 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 2
  %33 = load i32, i32* %sv_flags, align 4
  %and31 = and i32 %33, 1048576
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.end.64, label %land.lhs.true.33

land.lhs.true.33:                                 ; preds = %land.lhs.true.30
  %34 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any34 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 0
  %35 = load i8*, i8** %sv_any34, align 8
  %36 = bitcast i8* %35 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %36, i32 0, i32 3
  %37 = load i64, i64* %xiv_iv, align 8
  %cmp35 = icmp eq i64 %37, 999999999
  br i1 %cmp35, label %land.lhs.true.42, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true.33
  %38 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any38 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 0
  %39 = load i8*, i8** %sv_any38, align 8
  %40 = bitcast i8* %39 to %struct.xpviv*
  %xiv_iv39 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %40, i32 0, i32 3
  %41 = load i64, i64* %xiv_iv39, align 8
  %cmp40 = icmp eq i64 %41, 0
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.64

land.lhs.true.42:                                 ; preds = %lor.lhs.false.37, %land.lhs.true.33
  %42 = load i8, i8* %is_our.addr, align 1
  %tobool43 = icmp ne i8 %42, 0
  br i1 %tobool43, label %lor.lhs.false.44, label %land.lhs.true.52

lor.lhs.false.44:                                 ; preds = %land.lhs.true.42
  %43 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags45 = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 2
  %44 = load i32, i32* %sv_flags45, align 4
  %and46 = and i32 %44, -2147483648
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.64

land.lhs.true.48:                                 ; preds = %lor.lhs.false.44
  %45 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any49 = getelementptr inbounds %struct.sv, %struct.sv* %45, i32 0, i32 0
  %46 = load i8*, i8** %sv_any49, align 8
  %47 = bitcast i8* %46 to %struct.xpvgv*
  %xgv_stash = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %47, i32 0, i32 10
  %48 = load %struct.hv*, %struct.hv** %xgv_stash, align 8
  %49 = load %struct.hv*, %struct.hv** %ourstash.addr, align 8
  %cmp50 = icmp eq %struct.hv* %48, %49
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.64

land.lhs.true.52:                                 ; preds = %land.lhs.true.48, %land.lhs.true.42
  %50 = load i8*, i8** %name.addr, align 8
  %51 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any53 = getelementptr inbounds %struct.sv, %struct.sv* %51, i32 0, i32 0
  %52 = load i8*, i8** %sv_any53, align 8
  %53 = bitcast i8* %52 to %struct.xpv*
  %xpv_pv54 = getelementptr inbounds %struct.xpv, %struct.xpv* %53, i32 0, i32 0
  %54 = load i8*, i8** %xpv_pv54, align 8
  %call = call i32 @strcmp(i8* %50, i8* %54)
  %tobool55 = icmp ne i32 %call, 0
  br i1 %tobool55, label %if.end.64, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true.52
  %55 = load i8, i8* %is_our.addr, align 1
  %conv57 = sext i8 %55 to i32
  %tobool58 = icmp ne i32 %conv57, 0
  %cond = select i1 %tobool58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)
  %56 = load i8*, i8** %name.addr, align 8
  %57 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any59 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 0
  %58 = load i8*, i8** %sv_any59, align 8
  %59 = bitcast i8* %58 to %struct.xpviv*
  %xiv_iv60 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %59, i32 0, i32 3
  %60 = load i64, i64* %xiv_iv60, align 8
  %cmp61 = icmp eq i64 %60, 999999999
  %cond63 = select i1 %cmp61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0)
  call void (i32, i8*, ...) @Perl_warner(i32 12, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* %cond, i8* %56, i8* %cond63)
  %61 = load i64, i64* %off, align 8
  %dec = add i64 %61, -1
  store i64 %dec, i64* %off, align 8
  br label %for.end

if.end.64:                                        ; preds = %land.lhs.true.52, %land.lhs.true.48, %lor.lhs.false.44, %lor.lhs.false.37, %land.lhs.true.30, %land.lhs.true.27, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.64
  %62 = load i64, i64* %off, align 8
  %dec65 = add i64 %62, -1
  store i64 %dec65, i64* %off, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.56, %for.cond
  %63 = load i8, i8* %is_our.addr, align 1
  %tobool66 = icmp ne i8 %63, 0
  br i1 %tobool66, label %if.then.67, label %if.end.106

if.then.67:                                       ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.67
  %64 = load i64, i64* %off, align 8
  %65 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx68 = getelementptr inbounds %struct.sv*, %struct.sv** %65, i64 %64
  %66 = load %struct.sv*, %struct.sv** %arrayidx68, align 8
  store %struct.sv* %66, %struct.sv** %sv, align 8
  %tobool69 = icmp ne %struct.sv* %66, null
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.102

land.lhs.true.70:                                 ; preds = %do.body
  %67 = load %struct.sv*, %struct.sv** %sv, align 8
  %cmp71 = icmp ne %struct.sv* %67, @PL_sv_undef
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.102

land.lhs.true.73:                                 ; preds = %land.lhs.true.70
  %68 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags74 = getelementptr inbounds %struct.sv, %struct.sv* %68, i32 0, i32 2
  %69 = load i32, i32* %sv_flags74, align 4
  %and75 = and i32 %69, 1048576
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.end.102, label %land.lhs.true.77

land.lhs.true.77:                                 ; preds = %land.lhs.true.73
  %70 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any78 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 0
  %71 = load i8*, i8** %sv_any78, align 8
  %72 = bitcast i8* %71 to %struct.xpviv*
  %xiv_iv79 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %72, i32 0, i32 3
  %73 = load i64, i64* %xiv_iv79, align 8
  %cmp80 = icmp eq i64 %73, 999999999
  br i1 %cmp80, label %land.lhs.true.87, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %land.lhs.true.77
  %74 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any83 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 0
  %75 = load i8*, i8** %sv_any83, align 8
  %76 = bitcast i8* %75 to %struct.xpviv*
  %xiv_iv84 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %76, i32 0, i32 3
  %77 = load i64, i64* %xiv_iv84, align 8
  %cmp85 = icmp eq i64 %77, 0
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.102

land.lhs.true.87:                                 ; preds = %lor.lhs.false.82, %land.lhs.true.77
  %78 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags88 = getelementptr inbounds %struct.sv, %struct.sv* %78, i32 0, i32 2
  %79 = load i32, i32* %sv_flags88, align 4
  %and89 = and i32 %79, -2147483648
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %land.lhs.true.91, label %if.end.102

land.lhs.true.91:                                 ; preds = %land.lhs.true.87
  %80 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any92 = getelementptr inbounds %struct.sv, %struct.sv* %80, i32 0, i32 0
  %81 = load i8*, i8** %sv_any92, align 8
  %82 = bitcast i8* %81 to %struct.xpvgv*
  %xgv_stash93 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %82, i32 0, i32 10
  %83 = load %struct.hv*, %struct.hv** %xgv_stash93, align 8
  %84 = load %struct.hv*, %struct.hv** %ourstash.addr, align 8
  %cmp94 = icmp eq %struct.hv* %83, %84
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.102

land.lhs.true.96:                                 ; preds = %land.lhs.true.91
  %85 = load i8*, i8** %name.addr, align 8
  %86 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any97 = getelementptr inbounds %struct.sv, %struct.sv* %86, i32 0, i32 0
  %87 = load i8*, i8** %sv_any97, align 8
  %88 = bitcast i8* %87 to %struct.xpv*
  %xpv_pv98 = getelementptr inbounds %struct.xpv, %struct.xpv* %88, i32 0, i32 0
  %89 = load i8*, i8** %xpv_pv98, align 8
  %call99 = call i32 @strcmp(i8* %85, i8* %89)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %land.lhs.true.96
  %90 = load i8*, i8** %name.addr, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* %90)
  call void (i32, i8*, ...) @Perl_warner(i32 12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0))
  br label %do.end

if.end.102:                                       ; preds = %land.lhs.true.96, %land.lhs.true.91, %land.lhs.true.87, %lor.lhs.false.82, %land.lhs.true.73, %land.lhs.true.70, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.102
  %91 = load i64, i64* %off, align 8
  %dec103 = add i64 %91, -1
  store i64 %dec103, i64* %off, align 8
  %cmp104 = icmp ugt i64 %91, 0
  br i1 %cmp104, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.101
  br label %if.end.106

if.end.106:                                       ; preds = %if.then, %do.end, %for.end
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i64 @Perl_pad_findmy(i8* %name) #0 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %off = alloca i32, align 4
  %fake_off = alloca i32, align 4
  %our_off = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %svp = alloca %struct.sv**, align 8
  %seq = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %fake_off, align 4
  store i32 0, i32* %our_off, align 4
  %0 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %0, i32 0, i32 0
  %1 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %1, i32 0, i32 0
  %2 = load i8*, i8** %xav_array, align 8
  %3 = bitcast i8* %2 to %struct.sv**
  store %struct.sv** %3, %struct.sv*** %svp, align 8
  %4 = load i32, i32* @PL_cop_seqmax, align 4
  store i32 %4, i32* %seq, align 4
  %5 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %sv_any1 = getelementptr inbounds %struct.av, %struct.av* %5, i32 0, i32 0
  %6 = load %struct.xpvav*, %struct.xpvav** %sv_any1, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %6, i32 0, i32 1
  %7 = load i64, i64* %xav_fill, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %off, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %off, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %off, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %sv, align 8
  %12 = load %struct.sv*, %struct.sv** %sv, align 8
  %tobool = icmp ne %struct.sv* %12, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %13 = load %struct.sv*, %struct.sv** %sv, align 8
  %cmp3 = icmp eq %struct.sv* %13, @PL_sv_undef
  br i1 %cmp3, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %14 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any6 = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any6, align 8
  %16 = bitcast i8* %15 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %16, i32 0, i32 0
  %17 = load i8*, i8** %xpv_pv, align 8
  %18 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %17, i8* %18)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false.5
  %19 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags, align 4
  %and = and i32 %20, 1048576
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %21 = load i32, i32* %off, align 4
  store i32 %21, i32* %fake_off, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end
  %22 = load i32, i32* %seq, align 4
  %23 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 0
  %24 = load i8*, i8** %sv_any10, align 8
  %25 = bitcast i8* %24 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %25, i32 0, i32 4
  %26 = load double, double* %xnv_nv, align 8
  %call11 = call i32 @Perl_cast_ulong(double %26)
  %cmp12 = icmp ugt i32 %22, %call11
  br i1 %cmp12, label %land.lhs.true, label %if.else.20

land.lhs.true:                                    ; preds = %if.else
  %27 = load i32, i32* %seq, align 4
  %28 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 0
  %29 = load i8*, i8** %sv_any14, align 8
  %30 = bitcast i8* %29 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %30, i32 0, i32 3
  %31 = load i64, i64* %xiv_iv, align 8
  %conv15 = trunc i64 %31 to i32
  %cmp16 = icmp ule i32 %27, %conv15
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %land.lhs.true
  %32 = load i32, i32* %off, align 4
  %conv19 = sext i32 %32 to i64
  store i64 %conv19, i64* %retval
  br label %return

if.else.20:                                       ; preds = %land.lhs.true, %if.else
  %33 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags21 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 2
  %34 = load i32, i32* %sv_flags21, align 4
  %and22 = and i32 %34, -2147483648
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.31

land.lhs.true.24:                                 ; preds = %if.else.20
  %35 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any25 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 0
  %36 = load i8*, i8** %sv_any25, align 8
  %37 = bitcast i8* %36 to %struct.xpvnv*
  %xnv_nv26 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %37, i32 0, i32 4
  %38 = load double, double* %xnv_nv26, align 8
  %call27 = call i32 @Perl_cast_ulong(double %38)
  %cmp28 = icmp eq i32 %call27, 999999999
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.24
  %39 = load i32, i32* %off, align 4
  store i32 %39, i32* %our_off, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %land.lhs.true.24, %if.else.20
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32
  br label %for.inc

for.inc:                                          ; preds = %if.end.33, %if.then.9, %if.then
  %40 = load i32, i32* %off, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %off, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %fake_off, align 4
  %tobool34 = icmp ne i32 %41, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %for.end
  %42 = load i32, i32* %fake_off, align 4
  %conv36 = sext i32 %42 to i64
  store i64 %conv36, i64* %retval
  br label %return

if.end.37:                                        ; preds = %for.end
  %43 = load i8*, i8** %name.addr, align 8
  %44 = load %struct.cv*, %struct.cv** @PL_compcv, align 8
  %call38 = call i64 @S_pad_findlex(i8* %43, i64 0, %struct.cv* %44)
  %conv39 = trunc i64 %call38 to i32
  store i32 %conv39, i32* %off, align 4
  %45 = load i32, i32* %off, align 4
  %tobool40 = icmp ne i32 %45, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.37
  %46 = load i32, i32* %off, align 4
  %conv42 = sext i32 %46 to i64
  store i64 %conv42, i64* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.37
  %47 = load i32, i32* %our_off, align 4
  %tobool44 = icmp ne i32 %47, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.43
  %48 = load i32, i32* %our_off, align 4
  %conv46 = sext i32 %48 to i64
  store i64 %conv46, i64* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.43
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.45, %if.then.41, %if.then.35, %if.then.18
  %49 = load i64, i64* %retval
  ret i64 %49
}

declare i32 @Perl_cast_ulong(double) #1

; Function Attrs: nounwind uwtable
define internal i64 @S_pad_findlex(i8* %name, i64 %newoff, %struct.cv* %innercv) #0 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %newoff.addr = alloca i64, align 8
  %innercv.addr = alloca %struct.cv*, align 8
  %cv = alloca %struct.cv*, align 8
  %off = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %startcv = alloca %struct.cv*, align 8
  %seq = alloca i32, align 4
  %depth = alloca i32, align 4
  %oldpad = alloca %struct.av*, align 8
  %oldsv = alloca %struct.sv*, align 8
  %curlist = alloca %struct.av*, align 8
  %svp = alloca %struct.sv**, align 8
  %curname = alloca %struct.av*, align 8
  %fake_off = alloca i32, align 4
  %bcv = alloca %struct.cv*, align 8
  %ocomppad_name = alloca %struct.av*, align 8
  %ocomppad = alloca %struct.av*, align 8
  %padlist = alloca %struct.av*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %newoff, i64* %newoff.addr, align 8
  store %struct.cv* %innercv, %struct.cv** %innercv.addr, align 8
  store i32 0, i32* %off, align 4
  %0 = load %struct.cv*, %struct.cv** %innercv.addr, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %0, i32 0, i32 0
  %1 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_outside_seq = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %1, i32 0, i32 18
  %2 = load i32, i32* %xcv_outside_seq, align 4
  store i32 %2, i32* %seq, align 4
  %3 = load %struct.cv*, %struct.cv** %innercv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.cv, %struct.cv* %3, i32 0, i32 0
  %4 = load %struct.xpvcv*, %struct.xpvcv** %sv_any1, align 8
  %xcv_outside = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %4, i32 0, i32 16
  %5 = load %struct.cv*, %struct.cv** %xcv_outside, align 8
  store %struct.cv* %5, %struct.cv** %startcv, align 8
  %6 = load %struct.cv*, %struct.cv** %startcv, align 8
  store %struct.cv* %6, %struct.cv** %cv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.52, %entry
  %7 = load %struct.cv*, %struct.cv** %cv, align 8
  %tobool = icmp ne %struct.cv* %7, null
  br i1 %tobool, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %fake_off, align 4
  %8 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any2 = getelementptr inbounds %struct.cv, %struct.cv* %8, i32 0, i32 0
  %9 = load %struct.xpvcv*, %struct.xpvcv** %sv_any2, align 8
  %xcv_padlist = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %9, i32 0, i32 15
  %10 = load %struct.av*, %struct.av** %xcv_padlist, align 8
  store %struct.av* %10, %struct.av** %curlist, align 8
  %11 = load %struct.av*, %struct.av** %curlist, align 8
  %tobool3 = icmp ne %struct.av* %11, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.52

if.end:                                           ; preds = %for.body
  %12 = load %struct.av*, %struct.av** %curlist, align 8
  %call = call %struct.sv** @Perl_av_fetch(%struct.av* %12, i32 0, i32 0)
  store %struct.sv** %call, %struct.sv*** %svp, align 8
  %13 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool4 = icmp ne %struct.sv** %13, null
  br i1 %tobool4, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %14 = load %struct.sv**, %struct.sv*** %svp, align 8
  %15 = load %struct.sv*, %struct.sv** %14, align 8
  %cmp = icmp eq %struct.sv* %15, @PL_sv_undef
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  br label %for.inc.52

if.end.6:                                         ; preds = %lor.lhs.false
  %16 = load %struct.sv**, %struct.sv*** %svp, align 8
  %17 = load %struct.sv*, %struct.sv** %16, align 8
  %18 = bitcast %struct.sv* %17 to %struct.av*
  store %struct.av* %18, %struct.av** %curname, align 8
  %19 = load %struct.av*, %struct.av** %curname, align 8
  %sv_any7 = getelementptr inbounds %struct.av, %struct.av* %19, i32 0, i32 0
  %20 = load %struct.xpvav*, %struct.xpvav** %sv_any7, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %20, i32 0, i32 0
  %21 = load i8*, i8** %xav_array, align 8
  %22 = bitcast i8* %21 to %struct.sv**
  store %struct.sv** %22, %struct.sv*** %svp, align 8
  %23 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any8 = getelementptr inbounds %struct.cv, %struct.cv* %23, i32 0, i32 0
  %24 = load %struct.xpvcv*, %struct.xpvcv** %sv_any8, align 8
  %xcv_depth = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %24, i32 0, i32 14
  %25 = load i64, i64* %xcv_depth, align 8
  %conv = trunc i64 %25 to i32
  store i32 %conv, i32* %depth, align 4
  %26 = load %struct.av*, %struct.av** %curname, align 8
  %sv_any9 = getelementptr inbounds %struct.av, %struct.av* %26, i32 0, i32 0
  %27 = load %struct.xpvav*, %struct.xpvav** %sv_any9, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %27, i32 0, i32 1
  %28 = load i64, i64* %xav_fill, align 8
  %conv10 = trunc i64 %28 to i32
  store i32 %conv10, i32* %off, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.end.6
  %29 = load i32, i32* %off, align 4
  %cmp12 = icmp sgt i32 %29, 0
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %30 = load i32, i32* %off, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %idxprom
  %32 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %32, %struct.sv** %sv, align 8
  %33 = load %struct.sv*, %struct.sv** %sv, align 8
  %tobool15 = icmp ne %struct.sv* %33, null
  br i1 %tobool15, label %lor.lhs.false.16, label %if.then.23

lor.lhs.false.16:                                 ; preds = %for.body.14
  %34 = load %struct.sv*, %struct.sv** %sv, align 8
  %cmp17 = icmp eq %struct.sv* %34, @PL_sv_undef
  br i1 %cmp17, label %if.then.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %35 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any20 = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 0
  %36 = load i8*, i8** %sv_any20, align 8
  %37 = bitcast i8* %36 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %37, i32 0, i32 0
  %38 = load i8*, i8** %xpv_pv, align 8
  %39 = load i8*, i8** %name.addr, align 8
  %call21 = call i32 @strcmp(i8* %38, i8* %39)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false.16, %for.body.14
  br label %for.inc

if.end.24:                                        ; preds = %lor.lhs.false.19
  %40 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 2
  %41 = load i32, i32* %sv_flags, align 4
  %and = and i32 %41, 1048576
  %tobool25 = icmp ne i32 %and, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.24
  %42 = load i32, i32* %off, align 4
  store i32 %42, i32* %fake_off, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end.24
  %43 = load i32, i32* %seq, align 4
  %44 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any27 = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 0
  %45 = load i8*, i8** %sv_any27, align 8
  %46 = bitcast i8* %45 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %46, i32 0, i32 4
  %47 = load double, double* %xnv_nv, align 8
  %call28 = call i32 @Perl_cast_ulong(double %47)
  %cmp29 = icmp ugt i32 %43, %call28
  br i1 %cmp29, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.else
  %48 = load i32, i32* %seq, align 4
  %49 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any31 = getelementptr inbounds %struct.sv, %struct.sv* %49, i32 0, i32 0
  %50 = load i8*, i8** %sv_any31, align 8
  %51 = bitcast i8* %50 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %51, i32 0, i32 3
  %52 = load i64, i64* %xiv_iv, align 8
  %conv32 = trunc i64 %52 to i32
  %cmp33 = icmp ule i32 %48, %conv32
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.40

land.lhs.true.35:                                 ; preds = %land.lhs.true
  %53 = load i64, i64* %newoff.addr, align 8
  %tobool36 = icmp ne i64 %53, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.then.39

land.lhs.true.37:                                 ; preds = %land.lhs.true.35
  %54 = load i32, i32* %depth, align 4
  %tobool38 = icmp ne i32 %54, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.37, %land.lhs.true.35
  br label %found

if.end.40:                                        ; preds = %land.lhs.true.37, %land.lhs.true, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40
  br label %for.inc

for.inc:                                          ; preds = %if.end.41, %if.then.26, %if.then.23
  %55 = load i32, i32* %off, align 4
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* %off, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %56 = load i32, i32* %fake_off, align 4
  %tobool42 = icmp ne i32 %56, 0
  br i1 %tobool42, label %if.then.43, label %if.end.51

if.then.43:                                       ; preds = %for.end
  %57 = load i64, i64* %newoff.addr, align 8
  %tobool44 = icmp ne i64 %57, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.48

land.lhs.true.45:                                 ; preds = %if.then.43
  %58 = load i32, i32* %depth, align 4
  %tobool46 = icmp ne i32 %58, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.45
  store i64 0, i64* %retval
  br label %return

if.end.48:                                        ; preds = %land.lhs.true.45, %if.then.43
  %59 = load i32, i32* %fake_off, align 4
  store i32 %59, i32* %off, align 4
  %60 = load i32, i32* %off, align 4
  %idxprom49 = sext i32 %60 to i64
  %61 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx50 = getelementptr inbounds %struct.sv*, %struct.sv** %61, i64 %idxprom49
  %62 = load %struct.sv*, %struct.sv** %arrayidx50, align 8
  store %struct.sv* %62, %struct.sv** %sv, align 8
  br label %found

if.end.51:                                        ; preds = %for.end
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51, %if.then.5, %if.then
  %63 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any53 = getelementptr inbounds %struct.cv, %struct.cv* %63, i32 0, i32 0
  %64 = load %struct.xpvcv*, %struct.xpvcv** %sv_any53, align 8
  %xcv_outside_seq54 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %64, i32 0, i32 18
  %65 = load i32, i32* %xcv_outside_seq54, align 4
  store i32 %65, i32* %seq, align 4
  %66 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any55 = getelementptr inbounds %struct.cv, %struct.cv* %66, i32 0, i32 0
  %67 = load %struct.xpvcv*, %struct.xpvcv** %sv_any55, align 8
  %xcv_outside56 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %67, i32 0, i32 16
  %68 = load %struct.cv*, %struct.cv** %xcv_outside56, align 8
  store %struct.cv* %68, %struct.cv** %cv, align 8
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  store i64 0, i64* %retval
  br label %return

found:                                            ; preds = %if.end.48, %if.then.39
  %69 = load i32, i32* %depth, align 4
  %tobool58 = icmp ne i32 %69, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %found
  store i32 1, i32* %depth, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %found
  %70 = load i32, i32* %depth, align 4
  %idxprom61 = sext i32 %70 to i64
  %71 = load %struct.av*, %struct.av** %curlist, align 8
  %sv_any62 = getelementptr inbounds %struct.av, %struct.av* %71, i32 0, i32 0
  %72 = load %struct.xpvav*, %struct.xpvav** %sv_any62, align 8
  %xav_array63 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %72, i32 0, i32 0
  %73 = load i8*, i8** %xav_array63, align 8
  %74 = bitcast i8* %73 to %struct.sv**
  %arrayidx64 = getelementptr inbounds %struct.sv*, %struct.sv** %74, i64 %idxprom61
  %75 = load %struct.sv*, %struct.sv** %arrayidx64, align 8
  %76 = bitcast %struct.sv* %75 to %struct.av*
  store %struct.av* %76, %struct.av** %oldpad, align 8
  %77 = load %struct.av*, %struct.av** %oldpad, align 8
  %78 = load i32, i32* %off, align 4
  %call65 = call %struct.sv** @Perl_av_fetch(%struct.av* %77, i32 %78, i32 1)
  %79 = load %struct.sv*, %struct.sv** %call65, align 8
  store %struct.sv* %79, %struct.sv** %oldsv, align 8
  %80 = load i64, i64* %newoff.addr, align 8
  %tobool66 = icmp ne i64 %80, 0
  br i1 %tobool66, label %if.end.267, label %if.then.67

if.then.67:                                       ; preds = %if.end.60
  %81 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any68 = getelementptr inbounds %struct.sv, %struct.sv* %81, i32 0, i32 0
  %82 = load i8*, i8** %sv_any68, align 8
  %83 = bitcast i8* %82 to %struct.xpv*
  %xpv_pv69 = getelementptr inbounds %struct.xpv, %struct.xpv* %83, i32 0, i32 0
  %84 = load i8*, i8** %xpv_pv69, align 8
  %85 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags70 = getelementptr inbounds %struct.sv, %struct.sv* %85, i32 0, i32 2
  %86 = load i32, i32* %sv_flags70, align 4
  %and71 = and i32 %86, 1073741824
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.67
  %87 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any73 = getelementptr inbounds %struct.sv, %struct.sv* %87, i32 0, i32 0
  %88 = load i8*, i8** %sv_any73, align 8
  %89 = bitcast i8* %88 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %89, i32 0, i32 6
  %90 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.67
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.hv* [ %90, %cond.true ], [ null, %cond.false ]
  %91 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags74 = getelementptr inbounds %struct.sv, %struct.sv* %91, i32 0, i32 2
  %92 = load i32, i32* %sv_flags74, align 4
  %and75 = and i32 %92, -2147483648
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %cond.true.77, label %cond.false.79

cond.true.77:                                     ; preds = %cond.end
  %93 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any78 = getelementptr inbounds %struct.sv, %struct.sv* %93, i32 0, i32 0
  %94 = load i8*, i8** %sv_any78, align 8
  %95 = bitcast i8* %94 to %struct.xpvgv*
  %xgv_stash = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %95, i32 0, i32 10
  %96 = load %struct.hv*, %struct.hv** %xgv_stash, align 8
  br label %cond.end.80

cond.false.79:                                    ; preds = %cond.end
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.77
  %cond81 = phi %struct.hv* [ %96, %cond.true.77 ], [ null, %cond.false.79 ]
  %call82 = call i64 @Perl_pad_add_name(i8* %84, %struct.hv* %cond, %struct.hv* %cond81, i8 signext 1)
  store i64 %call82, i64* %newoff.addr, align 8
  %97 = load %struct.cv*, %struct.cv** @PL_compcv, align 8
  %sv_any83 = getelementptr inbounds %struct.cv, %struct.cv* %97, i32 0, i32 0
  %98 = load %struct.xpvcv*, %struct.xpvcv** %sv_any83, align 8
  %xcv_flags = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %98, i32 0, i32 17
  %99 = load i16, i16* %xcv_flags, align 2
  %conv84 = zext i16 %99 to i32
  %and85 = and i32 %conv84, 4
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then.92, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %cond.end.80
  %100 = load %struct.cv*, %struct.cv** @PL_compcv, align 8
  %sv_flags88 = getelementptr inbounds %struct.cv, %struct.cv* %100, i32 0, i32 2
  %101 = load i32, i32* %sv_flags88, align 4
  %and89 = and i32 %101, 255
  %cmp90 = icmp eq i32 %and89, 14
  br i1 %cmp90, label %if.then.92, label %if.else.215

if.then.92:                                       ; preds = %lor.lhs.false.87, %cond.end.80
  %102 = load %struct.cv*, %struct.cv** @PL_compcv, align 8
  %sv_any93 = getelementptr inbounds %struct.cv, %struct.cv* %102, i32 0, i32 0
  %103 = load %struct.xpvcv*, %struct.xpvcv** %sv_any93, align 8
  %xcv_flags94 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %103, i32 0, i32 17
  %104 = load i16, i16* %xcv_flags94, align 2
  %conv95 = zext i16 %104 to i32
  %or = or i32 %conv95, 1
  %conv96 = trunc i32 %or to i16
  store i16 %conv96, i16* %xcv_flags94, align 2
  %105 = load %struct.cv*, %struct.cv** %cv, align 8
  %106 = load %struct.cv*, %struct.cv** %startcv, align 8
  %cmp97 = icmp eq %struct.cv* %105, %106
  br i1 %cmp97, label %if.then.99, label %if.else.107

if.then.99:                                       ; preds = %if.then.92
  %107 = load %struct.cv*, %struct.cv** @PL_compcv, align 8
  %sv_any100 = getelementptr inbounds %struct.cv, %struct.cv* %107, i32 0, i32 0
  %108 = load %struct.xpvcv*, %struct.xpvcv** %sv_any100, align 8
  %xcv_flags101 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %108, i32 0, i32 17
  %109 = load i16, i16* %xcv_flags101, align 2
  %conv102 = zext i16 %109 to i32
  %and103 = and i32 %conv102, 4
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.then.99
  store %struct.sv* null, %struct.sv** %oldsv, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %if.then.99
  br label %if.end.214

if.else.107:                                      ; preds = %if.then.92
  %110 = load %struct.cv*, %struct.cv** %startcv, align 8
  store %struct.cv* %110, %struct.cv** %bcv, align 8
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.210, %if.else.107
  %111 = load %struct.cv*, %struct.cv** %bcv, align 8
  %tobool109 = icmp ne %struct.cv* %111, null
  br i1 %tobool109, label %land.lhs.true.110, label %land.end

land.lhs.true.110:                                ; preds = %for.cond.108
  %112 = load %struct.cv*, %struct.cv** %bcv, align 8
  %113 = load %struct.cv*, %struct.cv** %cv, align 8
  %cmp111 = icmp ne %struct.cv* %112, %113
  br i1 %cmp111, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.110
  %114 = load %struct.cv*, %struct.cv** %bcv, align 8
  %sv_any113 = getelementptr inbounds %struct.cv, %struct.cv* %114, i32 0, i32 0
  %115 = load %struct.xpvcv*, %struct.xpvcv** %sv_any113, align 8
  %xcv_flags114 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %115, i32 0, i32 17
  %116 = load i16, i16* %xcv_flags114, align 2
  %conv115 = zext i16 %116 to i32
  %and116 = and i32 %conv115, 1
  %tobool117 = icmp ne i32 %and116, 0
  %lnot = xor i1 %tobool117, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.110, %for.cond.108
  %117 = phi i1 [ false, %land.lhs.true.110 ], [ false, %for.cond.108 ], [ %lnot, %land.rhs ]
  br i1 %117, label %for.body.118, label %for.end.213

for.body.118:                                     ; preds = %land.end
  %118 = load %struct.cv*, %struct.cv** %bcv, align 8
  %sv_any119 = getelementptr inbounds %struct.cv, %struct.cv* %118, i32 0, i32 0
  %119 = load %struct.xpvcv*, %struct.xpvcv** %sv_any119, align 8
  %xcv_flags120 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %119, i32 0, i32 17
  %120 = load i16, i16* %xcv_flags120, align 2
  %conv121 = zext i16 %120 to i32
  %and122 = and i32 %conv121, 4
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %if.then.124, label %if.else.168

if.then.124:                                      ; preds = %for.body.118
  %121 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  store %struct.av* %121, %struct.av** %ocomppad_name, align 8
  %122 = load %struct.av*, %struct.av** @PL_comppad, align 8
  store %struct.av* %122, %struct.av** %ocomppad, align 8
  %123 = load %struct.cv*, %struct.cv** %bcv, align 8
  %sv_any125 = getelementptr inbounds %struct.cv, %struct.cv* %123, i32 0, i32 0
  %124 = load %struct.xpvcv*, %struct.xpvcv** %sv_any125, align 8
  %xcv_padlist126 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %124, i32 0, i32 15
  %125 = load %struct.av*, %struct.av** %xcv_padlist126, align 8
  store %struct.av* %125, %struct.av** %padlist, align 8
  %126 = load %struct.av*, %struct.av** %padlist, align 8
  %sv_any127 = getelementptr inbounds %struct.av, %struct.av* %126, i32 0, i32 0
  %127 = load %struct.xpvav*, %struct.xpvav** %sv_any127, align 8
  %xav_array128 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %127, i32 0, i32 0
  %128 = load i8*, i8** %xav_array128, align 8
  %129 = bitcast i8* %128 to %struct.sv**
  %arrayidx129 = getelementptr inbounds %struct.sv*, %struct.sv** %129, i64 0
  %130 = load %struct.sv*, %struct.sv** %arrayidx129, align 8
  %131 = bitcast %struct.sv* %130 to %struct.av*
  store %struct.av* %131, %struct.av** @PL_comppad_name, align 8
  %132 = load %struct.av*, %struct.av** %padlist, align 8
  %sv_any130 = getelementptr inbounds %struct.av, %struct.av* %132, i32 0, i32 0
  %133 = load %struct.xpvav*, %struct.xpvav** %sv_any130, align 8
  %xav_array131 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %133, i32 0, i32 0
  %134 = load i8*, i8** %xav_array131, align 8
  %135 = bitcast i8* %134 to %struct.sv**
  %arrayidx132 = getelementptr inbounds %struct.sv*, %struct.sv** %135, i64 1
  %136 = load %struct.sv*, %struct.sv** %arrayidx132, align 8
  %137 = bitcast %struct.sv* %136 to %struct.av*
  store %struct.av* %137, %struct.av** @PL_comppad, align 8
  %138 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any133 = getelementptr inbounds %struct.av, %struct.av* %138, i32 0, i32 0
  %139 = load %struct.xpvav*, %struct.xpvav** %sv_any133, align 8
  %xav_array134 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %139, i32 0, i32 0
  %140 = load i8*, i8** %xav_array134, align 8
  %141 = bitcast i8* %140 to %struct.sv**
  store %struct.sv** %141, %struct.sv*** @PL_curpad, align 8
  %142 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any135 = getelementptr inbounds %struct.sv, %struct.sv* %142, i32 0, i32 0
  %143 = load i8*, i8** %sv_any135, align 8
  %144 = bitcast i8* %143 to %struct.xpv*
  %xpv_pv136 = getelementptr inbounds %struct.xpv, %struct.xpv* %144, i32 0, i32 0
  %145 = load i8*, i8** %xpv_pv136, align 8
  %146 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags137 = getelementptr inbounds %struct.sv, %struct.sv* %146, i32 0, i32 2
  %147 = load i32, i32* %sv_flags137, align 4
  %and138 = and i32 %147, 1073741824
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %cond.true.140, label %cond.false.143

cond.true.140:                                    ; preds = %if.then.124
  %148 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any141 = getelementptr inbounds %struct.sv, %struct.sv* %148, i32 0, i32 0
  %149 = load i8*, i8** %sv_any141, align 8
  %150 = bitcast i8* %149 to %struct.xpvmg*
  %xmg_stash142 = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %150, i32 0, i32 6
  %151 = load %struct.hv*, %struct.hv** %xmg_stash142, align 8
  br label %cond.end.144

cond.false.143:                                   ; preds = %if.then.124
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.143, %cond.true.140
  %cond145 = phi %struct.hv* [ %151, %cond.true.140 ], [ null, %cond.false.143 ]
  %152 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags146 = getelementptr inbounds %struct.sv, %struct.sv* %152, i32 0, i32 2
  %153 = load i32, i32* %sv_flags146, align 4
  %and147 = and i32 %153, -2147483648
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %cond.true.149, label %cond.false.152

cond.true.149:                                    ; preds = %cond.end.144
  %154 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any150 = getelementptr inbounds %struct.sv, %struct.sv* %154, i32 0, i32 0
  %155 = load i8*, i8** %sv_any150, align 8
  %156 = bitcast i8* %155 to %struct.xpvgv*
  %xgv_stash151 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %156, i32 0, i32 10
  %157 = load %struct.hv*, %struct.hv** %xgv_stash151, align 8
  br label %cond.end.153

cond.false.152:                                   ; preds = %cond.end.144
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.152, %cond.true.149
  %cond154 = phi %struct.hv* [ %157, %cond.true.149 ], [ null, %cond.false.152 ]
  %call155 = call i64 @Perl_pad_add_name(i8* %145, %struct.hv* %cond145, %struct.hv* %cond154, i8 signext 1)
  %158 = load %struct.av*, %struct.av** %ocomppad_name, align 8
  store %struct.av* %158, %struct.av** @PL_comppad_name, align 8
  %159 = load %struct.av*, %struct.av** %ocomppad, align 8
  store %struct.av* %159, %struct.av** @PL_comppad, align 8
  %160 = load %struct.av*, %struct.av** %ocomppad, align 8
  %tobool156 = icmp ne %struct.av* %160, null
  br i1 %tobool156, label %cond.true.157, label %cond.false.160

cond.true.157:                                    ; preds = %cond.end.153
  %161 = load %struct.av*, %struct.av** %ocomppad, align 8
  %sv_any158 = getelementptr inbounds %struct.av, %struct.av* %161, i32 0, i32 0
  %162 = load %struct.xpvav*, %struct.xpvav** %sv_any158, align 8
  %xav_array159 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %162, i32 0, i32 0
  %163 = load i8*, i8** %xav_array159, align 8
  %164 = bitcast i8* %163 to %struct.sv**
  br label %cond.end.161

cond.false.160:                                   ; preds = %cond.end.153
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.160, %cond.true.157
  %cond162 = phi %struct.sv** [ %164, %cond.true.157 ], [ null, %cond.false.160 ]
  store %struct.sv** %cond162, %struct.sv*** @PL_curpad, align 8
  %165 = load %struct.cv*, %struct.cv** %bcv, align 8
  %sv_any163 = getelementptr inbounds %struct.cv, %struct.cv* %165, i32 0, i32 0
  %166 = load %struct.xpvcv*, %struct.xpvcv** %sv_any163, align 8
  %xcv_flags164 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %166, i32 0, i32 17
  %167 = load i16, i16* %xcv_flags164, align 2
  %conv165 = zext i16 %167 to i32
  %or166 = or i32 %conv165, 1
  %conv167 = trunc i32 %or166 to i16
  store i16 %conv167, i16* %xcv_flags164, align 2
  br label %if.end.209

if.else.168:                                      ; preds = %for.body.118
  %168 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %168, i32 0, i32 14
  %169 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp169 = icmp ne %struct.sv* %169, null
  br i1 %cmp169, label %land.lhs.true.171, label %lor.lhs.false.187

land.lhs.true.171:                                ; preds = %if.else.168
  %170 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings172 = getelementptr inbounds %struct.cop, %struct.cop* %170, i32 0, i32 14
  %171 = load %struct.sv*, %struct.sv** %cop_warnings172, align 8
  %cmp173 = icmp ne %struct.sv* %171, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp173, label %land.lhs.true.175, label %lor.lhs.false.187

land.lhs.true.175:                                ; preds = %land.lhs.true.171
  %172 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings176 = getelementptr inbounds %struct.cop, %struct.cop* %172, i32 0, i32 14
  %173 = load %struct.sv*, %struct.sv** %cop_warnings176, align 8
  %cmp177 = icmp eq %struct.sv* %173, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp177, label %land.lhs.true.195, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %land.lhs.true.175
  %174 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings180 = getelementptr inbounds %struct.cop, %struct.cop* %174, i32 0, i32 14
  %175 = load %struct.sv*, %struct.sv** %cop_warnings180, align 8
  %sv_any181 = getelementptr inbounds %struct.sv, %struct.sv* %175, i32 0, i32 0
  %176 = load i8*, i8** %sv_any181, align 8
  %177 = bitcast i8* %176 to %struct.xpv*
  %xpv_pv182 = getelementptr inbounds %struct.xpv, %struct.xpv* %177, i32 0, i32 0
  %178 = load i8*, i8** %xpv_pv182, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %178, i64 0
  %179 = load i8, i8* %arrayidx183, align 1
  %conv184 = sext i8 %179 to i32
  %and185 = and i32 %conv184, 4
  %tobool186 = icmp ne i32 %and185, 0
  br i1 %tobool186, label %land.lhs.true.195, label %lor.lhs.false.187

lor.lhs.false.187:                                ; preds = %lor.lhs.false.179, %land.lhs.true.171, %if.else.168
  %180 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings188 = getelementptr inbounds %struct.cop, %struct.cop* %180, i32 0, i32 14
  %181 = load %struct.sv*, %struct.sv** %cop_warnings188, align 8
  %cmp189 = icmp eq %struct.sv* %181, null
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.208

land.lhs.true.191:                                ; preds = %lor.lhs.false.187
  %182 = load i8, i8* @PL_dowarn, align 1
  %conv192 = zext i8 %182 to i32
  %and193 = and i32 %conv192, 1
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %land.lhs.true.195, label %if.end.208

land.lhs.true.195:                                ; preds = %land.lhs.true.191, %lor.lhs.false.179, %land.lhs.true.175
  %183 = load %struct.cv*, %struct.cv** %bcv, align 8
  %sv_any196 = getelementptr inbounds %struct.cv, %struct.cv* %183, i32 0, i32 0
  %184 = load %struct.xpvcv*, %struct.xpvcv** %sv_any196, align 8
  %xcv_flags197 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %184, i32 0, i32 17
  %185 = load i16, i16* %xcv_flags197, align 2
  %conv198 = zext i16 %185 to i32
  %and199 = and i32 %conv198, 16
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %if.end.208, label %land.lhs.true.201

land.lhs.true.201:                                ; preds = %land.lhs.true.195
  %186 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any202 = getelementptr inbounds %struct.cv, %struct.cv* %186, i32 0, i32 0
  %187 = load %struct.xpvcv*, %struct.xpvcv** %sv_any202, align 8
  %xcv_flags203 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %187, i32 0, i32 17
  %188 = load i16, i16* %xcv_flags203, align 2
  %conv204 = zext i16 %188 to i32
  %and205 = and i32 %conv204, 16
  %tobool206 = icmp ne i32 %and205, 0
  br i1 %tobool206, label %if.end.208, label %if.then.207

if.then.207:                                      ; preds = %land.lhs.true.201
  %189 = load i8*, i8** %name.addr, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0), i8* %189)
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.207, %land.lhs.true.201, %land.lhs.true.195, %land.lhs.true.191, %lor.lhs.false.187
  br label %for.end.213

if.end.209:                                       ; preds = %cond.end.161
  br label %for.inc.210

for.inc.210:                                      ; preds = %if.end.209
  %190 = load %struct.cv*, %struct.cv** %bcv, align 8
  %sv_any211 = getelementptr inbounds %struct.cv, %struct.cv* %190, i32 0, i32 0
  %191 = load %struct.xpvcv*, %struct.xpvcv** %sv_any211, align 8
  %xcv_outside212 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %191, i32 0, i32 16
  %192 = load %struct.cv*, %struct.cv** %xcv_outside212, align 8
  store %struct.cv* %192, %struct.cv** %bcv, align 8
  br label %for.cond.108

for.end.213:                                      ; preds = %if.end.208, %land.end
  br label %if.end.214

if.end.214:                                       ; preds = %for.end.213, %if.end.106
  br label %if.end.266

if.else.215:                                      ; preds = %lor.lhs.false.87
  %193 = load %struct.cv*, %struct.cv** @PL_compcv, align 8
  %sv_any216 = getelementptr inbounds %struct.cv, %struct.cv* %193, i32 0, i32 0
  %194 = load %struct.xpvcv*, %struct.xpvcv** %sv_any216, align 8
  %xcv_flags217 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %194, i32 0, i32 17
  %195 = load i16, i16* %xcv_flags217, align 2
  %conv218 = zext i16 %195 to i32
  %and219 = and i32 %conv218, 16
  %tobool220 = icmp ne i32 %and219, 0
  br i1 %tobool220, label %if.end.265, label %if.then.221

if.then.221:                                      ; preds = %if.else.215
  %196 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings222 = getelementptr inbounds %struct.cop, %struct.cop* %196, i32 0, i32 14
  %197 = load %struct.sv*, %struct.sv** %cop_warnings222, align 8
  %cmp223 = icmp ne %struct.sv* %197, null
  br i1 %cmp223, label %land.lhs.true.225, label %lor.lhs.false.241

land.lhs.true.225:                                ; preds = %if.then.221
  %198 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings226 = getelementptr inbounds %struct.cop, %struct.cop* %198, i32 0, i32 14
  %199 = load %struct.sv*, %struct.sv** %cop_warnings226, align 8
  %cmp227 = icmp ne %struct.sv* %199, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp227, label %land.lhs.true.229, label %lor.lhs.false.241

land.lhs.true.229:                                ; preds = %land.lhs.true.225
  %200 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings230 = getelementptr inbounds %struct.cop, %struct.cop* %200, i32 0, i32 14
  %201 = load %struct.sv*, %struct.sv** %cop_warnings230, align 8
  %cmp231 = icmp eq %struct.sv* %201, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp231, label %land.lhs.true.249, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %land.lhs.true.229
  %202 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings234 = getelementptr inbounds %struct.cop, %struct.cop* %202, i32 0, i32 14
  %203 = load %struct.sv*, %struct.sv** %cop_warnings234, align 8
  %sv_any235 = getelementptr inbounds %struct.sv, %struct.sv* %203, i32 0, i32 0
  %204 = load i8*, i8** %sv_any235, align 8
  %205 = bitcast i8* %204 to %struct.xpv*
  %xpv_pv236 = getelementptr inbounds %struct.xpv, %struct.xpv* %205, i32 0, i32 0
  %206 = load i8*, i8** %xpv_pv236, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %206, i64 0
  %207 = load i8, i8* %arrayidx237, align 1
  %conv238 = sext i8 %207 to i32
  %and239 = and i32 %conv238, 4
  %tobool240 = icmp ne i32 %and239, 0
  br i1 %tobool240, label %land.lhs.true.249, label %lor.lhs.false.241

lor.lhs.false.241:                                ; preds = %lor.lhs.false.233, %land.lhs.true.225, %if.then.221
  %208 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings242 = getelementptr inbounds %struct.cop, %struct.cop* %208, i32 0, i32 14
  %209 = load %struct.sv*, %struct.sv** %cop_warnings242, align 8
  %cmp243 = icmp eq %struct.sv* %209, null
  br i1 %cmp243, label %land.lhs.true.245, label %if.end.264

land.lhs.true.245:                                ; preds = %lor.lhs.false.241
  %210 = load i8, i8* @PL_dowarn, align 1
  %conv246 = zext i8 %210 to i32
  %and247 = and i32 %conv246, 1
  %tobool248 = icmp ne i32 %and247, 0
  br i1 %tobool248, label %land.lhs.true.249, label %if.end.264

land.lhs.true.249:                                ; preds = %land.lhs.true.245, %lor.lhs.false.233, %land.lhs.true.229
  %211 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags250 = getelementptr inbounds %struct.sv, %struct.sv* %211, i32 0, i32 2
  %212 = load i32, i32* %sv_flags250, align 4
  %and251 = and i32 %212, 1048576
  %tobool252 = icmp ne i32 %and251, 0
  br i1 %tobool252, label %if.end.264, label %land.lhs.true.253

land.lhs.true.253:                                ; preds = %land.lhs.true.249
  %213 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any254 = getelementptr inbounds %struct.cv, %struct.cv* %213, i32 0, i32 0
  %214 = load %struct.xpvcv*, %struct.xpvcv** %sv_any254, align 8
  %xcv_flags255 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %214, i32 0, i32 17
  %215 = load i16, i16* %xcv_flags255, align 2
  %conv256 = zext i16 %215 to i32
  %and257 = and i32 %conv256, 16
  %tobool258 = icmp ne i32 %and257, 0
  br i1 %tobool258, label %if.end.264, label %land.lhs.true.259

land.lhs.true.259:                                ; preds = %land.lhs.true.253
  %216 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags260 = getelementptr inbounds %struct.sv, %struct.sv* %216, i32 0, i32 2
  %217 = load i32, i32* %sv_flags260, align 4
  %and261 = and i32 %217, -2147483648
  %tobool262 = icmp ne i32 %and261, 0
  br i1 %tobool262, label %if.end.264, label %if.then.263

if.then.263:                                      ; preds = %land.lhs.true.259
  %218 = load i8*, i8** %name.addr, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0), i8* %218)
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.263, %land.lhs.true.259, %land.lhs.true.253, %land.lhs.true.249, %land.lhs.true.245, %lor.lhs.false.241
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.else.215
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.end.214
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %if.end.60
  %219 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %220 = load i64, i64* %newoff.addr, align 8
  %conv268 = trunc i64 %220 to i32
  %221 = load %struct.sv*, %struct.sv** %oldsv, align 8
  store %struct.sv* %221, %struct.sv** @PL_Sv, align 8
  %222 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool269 = icmp ne %struct.sv* %222, null
  br i1 %tobool269, label %land.rhs.270, label %land.end.272

land.rhs.270:                                     ; preds = %if.end.267
  %223 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %223, i32 0, i32 1
  %224 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %224, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool271 = icmp ne i32 %inc, 0
  br label %land.end.272

land.end.272:                                     ; preds = %land.rhs.270, %if.end.267
  %225 = phi i1 [ false, %if.end.267 ], [ %tobool271, %land.rhs.270 ]
  %land.ext = zext i1 %225 to i32
  %226 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call273 = call %struct.sv** @Perl_av_store(%struct.av* %219, i32 %conv268, %struct.sv* %226)
  %227 = load i64, i64* %newoff.addr, align 8
  store i64 %227, i64* %retval
  br label %return

return:                                           ; preds = %land.end.272, %for.end.57, %if.then.47
  %228 = load i64, i64* %retval
  ret i64 %228
}

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_pad_sv(i64 %po) #0 {
entry:
  %po.addr = alloca i64, align 8
  store i64 %po, i64* %po.addr, align 8
  %0 = load i64, i64* %po.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %po.addr, align 8
  %2 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %2, i64 %1
  %3 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  ret %struct.sv* %3
}

; Function Attrs: nounwind uwtable
define void @Perl_pad_block_start(i32 %full) #0 {
entry:
  %full.addr = alloca i32, align 4
  store i32 %full, i32* %full.addr, align 4
  call void @Perl_save_I32(i32* @PL_comppad_name_floor)
  %0 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %0, i32 0, i32 0
  %1 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %1, i32 0, i32 1
  %2 = load i64, i64* %xav_fill, align 8
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* @PL_comppad_name_floor, align 4
  %3 = load i32, i32* %full.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @PL_comppad_name_floor, align 4
  store i32 %4, i32* @PL_comppad_name_fill, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* @PL_comppad_name_floor, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* @PL_comppad_name_floor, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  call void @Perl_save_I32(i32* @PL_min_intro_pending)
  call void @Perl_save_I32(i32* @PL_max_intro_pending)
  store i32 0, i32* @PL_min_intro_pending, align 4
  call void @Perl_save_I32(i32* @PL_comppad_name_fill)
  call void @Perl_save_I32(i32* @PL_padix_floor)
  %6 = load i32, i32* @PL_padix, align 4
  store i32 %6, i32* @PL_padix_floor, align 4
  store i32 0, i32* @PL_pad_reset_pending, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Perl_intro_my() #0 {
entry:
  %retval = alloca i32, align 4
  %svp = alloca %struct.sv**, align 8
  %sv = alloca %struct.sv*, align 8
  %i = alloca i32, align 4
  %0 = load i32, i32* @PL_min_intro_pending, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @PL_cop_seqmax, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %2, i32 0, i32 0
  %3 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %3, i32 0, i32 0
  %4 = load i8*, i8** %xav_array, align 8
  %5 = bitcast i8* %4 to %struct.sv**
  store %struct.sv** %5, %struct.sv*** %svp, align 8
  %6 = load i32, i32* @PL_min_intro_pending, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* @PL_max_intro_pending, align 4
  %cmp = icmp sle i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %sv, align 8
  %tobool1 = icmp ne %struct.sv* %11, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.sv*, %struct.sv** %sv, align 8
  %cmp2 = icmp ne %struct.sv* %12, @PL_sv_undef
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.12

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %13 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 1048576
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.end.12, label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %land.lhs.true.3
  %15 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any6 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 0
  %16 = load i8*, i8** %sv_any6, align 8
  %17 = bitcast i8* %16 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %17, i32 0, i32 3
  %18 = load i64, i64* %xiv_iv, align 8
  %tobool7 = icmp ne i64 %18, 0
  br i1 %tobool7, label %if.end.12, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true.5
  %19 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any9 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any9, align 8
  %21 = bitcast i8* %20 to %struct.xpviv*
  %xiv_iv10 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %21, i32 0, i32 3
  store i64 999999999, i64* %xiv_iv10, align 8
  %22 = load i32, i32* @PL_cop_seqmax, align 4
  %conv = uitofp i32 %22 to double
  %23 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any11 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 0
  %24 = load i8*, i8** %sv_any11, align 8
  %25 = bitcast i8* %24 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %25, i32 0, i32 4
  store double %conv, double* %xnv_nv, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %land.lhs.true.5, %land.lhs.true.3, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @PL_min_intro_pending, align 4
  %27 = load i32, i32* @PL_max_intro_pending, align 4
  store i32 %27, i32* @PL_comppad_name_fill, align 4
  %28 = load i32, i32* @PL_cop_seqmax, align 4
  %inc13 = add i32 %28, 1
  store i32 %inc13, i32* @PL_cop_seqmax, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define void @Perl_pad_leavemy() #0 {
entry:
  %off = alloca i32, align 4
  %svp = alloca %struct.sv**, align 8
  %sv = alloca %struct.sv*, align 8
  %0 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %0, i32 0, i32 0
  %1 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %1, i32 0, i32 0
  %2 = load i8*, i8** %xav_array, align 8
  %3 = bitcast i8* %2 to %struct.sv**
  store %struct.sv** %3, %struct.sv*** %svp, align 8
  store i32 0, i32* @PL_pad_reset_pending, align 4
  %4 = load i32, i32* @PL_min_intro_pending, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* @PL_comppad_name_fill, align 4
  %6 = load i32, i32* @PL_min_intro_pending, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end.21

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* @PL_max_intro_pending, align 4
  store i32 %7, i32* %off, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %off, align 4
  %9 = load i32, i32* @PL_min_intro_pending, align 4
  %cmp1 = icmp sge i32 %8, %9
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %off, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idxprom
  %12 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %12, %struct.sv** %sv, align 8
  %tobool2 = icmp ne %struct.sv* %12, null
  br i1 %tobool2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %for.body
  %13 = load %struct.sv*, %struct.sv** %sv, align 8
  %cmp4 = icmp ne %struct.sv* %13, @PL_sv_undef
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true.3
  %14 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 2
  %15 = load i32, i32* %sv_flags, align 4
  %and = and i32 %15, 1048576
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.end, label %land.lhs.true.7

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %16 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %16, i32 0, i32 14
  %17 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp8 = icmp eq %struct.sv* %17, null
  br i1 %cmp8, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.7
  %18 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings9 = getelementptr inbounds %struct.cop, %struct.cop* %18, i32 0, i32 14
  %19 = load %struct.sv*, %struct.sv** %cop_warnings9, align 8
  %cmp10 = icmp eq %struct.sv* %19, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp10, label %if.then.20, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %20 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings12 = getelementptr inbounds %struct.cop, %struct.cop* %20, i32 0, i32 14
  %21 = load %struct.sv*, %struct.sv** %cop_warnings12, align 8
  %cmp13 = icmp ne %struct.sv* %21, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp13, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %lor.lhs.false.11
  %22 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings15 = getelementptr inbounds %struct.cop, %struct.cop* %22, i32 0, i32 14
  %23 = load %struct.sv*, %struct.sv** %cop_warnings15, align 8
  %sv_any16 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 0
  %24 = load i8*, i8** %sv_any16, align 8
  %25 = bitcast i8* %24 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %25, i32 0, i32 0
  %26 = load i8*, i8** %xpv_pv, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %26, i64 6
  %27 = load i8, i8* %arrayidx17, align 1
  %conv = sext i8 %27 to i32
  %and18 = and i32 %conv, 1
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %land.lhs.true.14, %lor.lhs.false, %land.lhs.true.7
  %28 = load %struct.sv*, %struct.sv** %sv, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), %struct.sv* %28)
  br label %if.end

if.end:                                           ; preds = %if.then.20, %land.lhs.true.14, %lor.lhs.false.11, %land.lhs.true.5, %land.lhs.true.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %off, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %off, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %land.lhs.true, %entry
  %30 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %sv_any22 = getelementptr inbounds %struct.av, %struct.av* %30, i32 0, i32 0
  %31 = load %struct.xpvav*, %struct.xpvav** %sv_any22, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %31, i32 0, i32 1
  %32 = load i64, i64* %xav_fill, align 8
  %conv23 = trunc i64 %32 to i32
  store i32 %conv23, i32* %off, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.47, %if.end.21
  %33 = load i32, i32* %off, align 4
  %34 = load i32, i32* @PL_comppad_name_fill, align 4
  %cmp25 = icmp sgt i32 %33, %34
  br i1 %cmp25, label %for.body.27, label %for.end.49

for.body.27:                                      ; preds = %for.cond.24
  %35 = load i32, i32* %off, align 4
  %idxprom28 = sext i32 %35 to i64
  %36 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx29 = getelementptr inbounds %struct.sv*, %struct.sv** %36, i64 %idxprom28
  %37 = load %struct.sv*, %struct.sv** %arrayidx29, align 8
  store %struct.sv* %37, %struct.sv** %sv, align 8
  %tobool30 = icmp ne %struct.sv* %37, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.46

land.lhs.true.31:                                 ; preds = %for.body.27
  %38 = load %struct.sv*, %struct.sv** %sv, align 8
  %cmp32 = icmp ne %struct.sv* %38, @PL_sv_undef
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.46

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %39 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags35 = getelementptr inbounds %struct.sv, %struct.sv* %39, i32 0, i32 2
  %40 = load i32, i32* %sv_flags35, align 4
  %and36 = and i32 %40, 1048576
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.end.46, label %land.lhs.true.38

land.lhs.true.38:                                 ; preds = %land.lhs.true.34
  %41 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any39 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 0
  %42 = load i8*, i8** %sv_any39, align 8
  %43 = bitcast i8* %42 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %43, i32 0, i32 3
  %44 = load i64, i64* %xiv_iv, align 8
  %cmp40 = icmp eq i64 %44, 999999999
  br i1 %cmp40, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %land.lhs.true.38
  %45 = load i32, i32* @PL_cop_seqmax, align 4
  %conv43 = zext i32 %45 to i64
  %46 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any44 = getelementptr inbounds %struct.sv, %struct.sv* %46, i32 0, i32 0
  %47 = load i8*, i8** %sv_any44, align 8
  %48 = bitcast i8* %47 to %struct.xpviv*
  %xiv_iv45 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %48, i32 0, i32 3
  store i64 %conv43, i64* %xiv_iv45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %land.lhs.true.38, %land.lhs.true.34, %land.lhs.true.31, %for.body.27
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %49 = load i32, i32* %off, align 4
  %dec48 = add nsw i32 %49, -1
  store i32 %dec48, i32* %off, align 4
  br label %for.cond.24

for.end.49:                                       ; preds = %for.cond.24
  %50 = load i32, i32* @PL_cop_seqmax, align 4
  %inc = add i32 %50, 1
  store i32 %inc, i32* @PL_cop_seqmax, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_pad_swipe(i64 %po, i8 signext %refadjust) #0 {
entry:
  %po.addr = alloca i64, align 8
  %refadjust.addr = alloca i8, align 1
  store i64 %po, i64* %po.addr, align 8
  store i8 %refadjust, i8* %refadjust.addr, align 1
  %0 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %tobool = icmp ne %struct.sv** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.21

if.end:                                           ; preds = %entry
  %1 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %1, i32 0, i32 0
  %2 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %2, i32 0, i32 0
  %3 = load i8*, i8** %xav_array, align 8
  %4 = bitcast i8* %3 to %struct.sv**
  %5 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %cmp = icmp ne %struct.sv** %4, %5
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %6 = load i64, i64* %po.addr, align 8
  %tobool3 = icmp ne i64 %6, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %7 = load i64, i64* %po.addr, align 8
  %8 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %8, i64 %7
  %9 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %tobool6 = icmp ne %struct.sv* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %10 = load i64, i64* %po.addr, align 8
  %11 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx8 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %10
  %12 = load %struct.sv*, %struct.sv** %arrayidx8, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags, align 4
  %and = and i32 %13, -513
  store i32 %and, i32* %sv_flags, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %14 = load i8, i8* %refadjust.addr, align 1
  %tobool10 = icmp ne i8 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %15 = load i64, i64* %po.addr, align 8
  %16 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %15
  %17 = load %struct.sv*, %struct.sv** %arrayidx12, align 8
  call void @Perl_sv_free(%struct.sv* %17)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %call = call %struct.sv* @Perl_newSV(i64 0)
  %18 = load i64, i64* %po.addr, align 8
  %19 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx14 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %18
  store %struct.sv* %call, %struct.sv** %arrayidx14, align 8
  %20 = load i64, i64* %po.addr, align 8
  %21 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %21, i64 %20
  %22 = load %struct.sv*, %struct.sv** %arrayidx15, align 8
  %sv_flags16 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 2
  %23 = load i32, i32* %sv_flags16, align 4
  %or = or i32 %23, 768
  store i32 %or, i32* %sv_flags16, align 4
  %24 = load i64, i64* %po.addr, align 8
  %conv = trunc i64 %24 to i32
  %25 = load i32, i32* @PL_padix, align 4
  %cmp17 = icmp slt i32 %conv, %25
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.13
  %26 = load i64, i64* %po.addr, align 8
  %sub = sub i64 %26, 1
  %conv20 = trunc i64 %sub to i32
  store i32 %conv20, i32* @PL_padix, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then, %if.then.19, %if.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_pad_tidy(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %ix = alloca i64, align 8
  %namep = alloca %struct.sv**, align 8
  %namesv = alloca %struct.sv*, align 8
  %av = alloca %struct.av*, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %0, i32 0, i32 0
  %1 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %1, i32 0, i32 1
  %2 = load i64, i64* %xav_fill, align 8
  %3 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any1 = getelementptr inbounds %struct.av, %struct.av* %3, i32 0, i32 0
  %4 = load %struct.xpvav*, %struct.xpvav** %sv_any1, align 8
  %xav_fill2 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %4, i32 0, i32 1
  %5 = load i64, i64* %xav_fill2, align 8
  %cmp = icmp slt i64 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %7 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any3 = getelementptr inbounds %struct.av, %struct.av* %7, i32 0, i32 0
  %8 = load %struct.xpvav*, %struct.xpvav** %sv_any3, align 8
  %xav_fill4 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %8, i32 0, i32 1
  %9 = load i64, i64* %xav_fill4, align 8
  %conv = trunc i64 %9 to i32
  %call = call %struct.sv** @Perl_av_store(%struct.av* %6, i32 %conv, %struct.sv* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %type.addr, align 4
  %cmp5 = icmp eq i32 %10, 1
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %11 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %sv_any8 = getelementptr inbounds %struct.av, %struct.av* %11, i32 0, i32 0
  %12 = load %struct.xpvav*, %struct.xpvav** %sv_any8, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %12, i32 0, i32 0
  %13 = load i8*, i8** %xav_array, align 8
  %14 = bitcast i8* %13 to %struct.sv**
  store %struct.sv** %14, %struct.sv*** %namep, align 8
  %15 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any9 = getelementptr inbounds %struct.av, %struct.av* %15, i32 0, i32 0
  %16 = load %struct.xpvav*, %struct.xpvav** %sv_any9, align 8
  %xav_fill10 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %16, i32 0, i32 1
  %17 = load i64, i64* %xav_fill10, align 8
  store i64 %17, i64* %ix, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %18 = load i64, i64* %ix, align 8
  %cmp11 = icmp ugt i64 %18, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, i64* %ix, align 8
  %20 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %19
  %21 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %cmp13 = icmp eq %struct.sv* %21, @PL_sv_undef
  br i1 %cmp13, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %22 = load i64, i64* %ix, align 8
  %23 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %23, i64 %22
  %24 = load %struct.sv*, %struct.sv** %arrayidx15, align 8
  %cmp16 = icmp eq %struct.sv* %24, @PL_sv_yes
  br i1 %cmp16, label %if.then.26, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %25 = load i64, i64* %ix, align 8
  %26 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx19 = getelementptr inbounds %struct.sv*, %struct.sv** %26, i64 %25
  %27 = load %struct.sv*, %struct.sv** %arrayidx19, align 8
  %cmp20 = icmp eq %struct.sv* %27, @PL_sv_no
  br i1 %cmp20, label %if.then.26, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.18
  %28 = load i64, i64* %ix, align 8
  %29 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx23 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %28
  %30 = load %struct.sv*, %struct.sv** %arrayidx23, align 8
  %cmp24 = icmp eq %struct.sv* %30, @PL_sv_placeholder
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false.22, %lor.lhs.false.18, %lor.lhs.false, %for.body
  br label %for.inc

if.end.27:                                        ; preds = %lor.lhs.false.22
  %31 = load i64, i64* %ix, align 8
  %32 = load %struct.sv**, %struct.sv*** %namep, align 8
  %arrayidx28 = getelementptr inbounds %struct.sv*, %struct.sv** %32, i64 %31
  %33 = load %struct.sv*, %struct.sv** %arrayidx28, align 8
  store %struct.sv* %33, %struct.sv** %namesv, align 8
  %cmp29 = icmp ne %struct.sv* %33, null
  br i1 %cmp29, label %land.lhs.true, label %if.then.39

land.lhs.true:                                    ; preds = %if.end.27
  %34 = load %struct.sv*, %struct.sv** %namesv, align 8
  %cmp31 = icmp ne %struct.sv* %34, @PL_sv_undef
  br i1 %cmp31, label %land.lhs.true.33, label %if.then.39

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %35 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 2
  %36 = load i32, i32* %sv_flags, align 4
  %and = and i32 %36, 1048576
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.42, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %land.lhs.true.33
  %37 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_any35 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 0
  %38 = load i8*, i8** %sv_any35, align 8
  %39 = bitcast i8* %38 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %39, i32 0, i32 0
  %40 = load i8*, i8** %xpv_pv, align 8
  %41 = load i8, i8* %40, align 1
  %conv36 = sext i8 %41 to i32
  %cmp37 = icmp eq i32 %conv36, 38
  br i1 %cmp37, label %if.end.42, label %if.then.39

if.then.39:                                       ; preds = %lor.lhs.false.34, %land.lhs.true, %if.end.27
  %42 = load i64, i64* %ix, align 8
  %43 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx40 = getelementptr inbounds %struct.sv*, %struct.sv** %43, i64 %42
  %44 = load %struct.sv*, %struct.sv** %arrayidx40, align 8
  call void @Perl_sv_free(%struct.sv* %44)
  %45 = load i64, i64* %ix, align 8
  %46 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx41 = getelementptr inbounds %struct.sv*, %struct.sv** %46, i64 %45
  store %struct.sv* null, %struct.sv** %arrayidx41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %lor.lhs.false.34, %land.lhs.true.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.42, %if.then.26
  %47 = load i64, i64* %ix, align 8
  %dec = add i64 %47, -1
  store i64 %dec, i64* %ix, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.50

if.else:                                          ; preds = %if.end
  %48 = load i32, i32* %type.addr, align 4
  %cmp43 = icmp eq i32 %48, 0
  br i1 %cmp43, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %if.else
  %call46 = call %struct.av* @Perl_newAV()
  store %struct.av* %call46, %struct.av** %av, align 8
  %49 = load %struct.av*, %struct.av** %av, align 8
  call void @Perl_av_extend(%struct.av* %49, i32 0)
  %50 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %51 = load %struct.av*, %struct.av** %av, align 8
  %52 = bitcast %struct.av* %51 to %struct.sv*
  %call47 = call %struct.sv** @Perl_av_store(%struct.av* %50, i32 0, %struct.sv* %52)
  %53 = load %struct.av*, %struct.av** %av, align 8
  %sv_any48 = getelementptr inbounds %struct.av, %struct.av* %53, i32 0, i32 0
  %54 = load %struct.xpvav*, %struct.xpvav** %sv_any48, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %54, i32 0, i32 9
  store i8 2, i8* %xav_flags, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %if.else
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %for.end
  %55 = load i32, i32* %type.addr, align 4
  %cmp51 = icmp eq i32 %55, 0
  br i1 %cmp51, label %if.then.53, label %if.else.88

if.then.53:                                       ; preds = %if.end.50
  %56 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any54 = getelementptr inbounds %struct.av, %struct.av* %56, i32 0, i32 0
  %57 = load %struct.xpvav*, %struct.xpvav** %sv_any54, align 8
  %xav_fill55 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %57, i32 0, i32 1
  %58 = load i64, i64* %xav_fill55, align 8
  store i64 %58, i64* %ix, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.85, %if.then.53
  %59 = load i64, i64* %ix, align 8
  %cmp57 = icmp ugt i64 %59, 0
  br i1 %cmp57, label %for.body.59, label %for.end.87

for.body.59:                                      ; preds = %for.cond.56
  %60 = load i64, i64* %ix, align 8
  %61 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx60 = getelementptr inbounds %struct.sv*, %struct.sv** %61, i64 %60
  %62 = load %struct.sv*, %struct.sv** %arrayidx60, align 8
  %cmp61 = icmp eq %struct.sv* %62, @PL_sv_undef
  br i1 %cmp61, label %if.then.75, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %for.body.59
  %63 = load i64, i64* %ix, align 8
  %64 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx64 = getelementptr inbounds %struct.sv*, %struct.sv** %64, i64 %63
  %65 = load %struct.sv*, %struct.sv** %arrayidx64, align 8
  %cmp65 = icmp eq %struct.sv* %65, @PL_sv_yes
  br i1 %cmp65, label %if.then.75, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %lor.lhs.false.63
  %66 = load i64, i64* %ix, align 8
  %67 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx68 = getelementptr inbounds %struct.sv*, %struct.sv** %67, i64 %66
  %68 = load %struct.sv*, %struct.sv** %arrayidx68, align 8
  %cmp69 = icmp eq %struct.sv* %68, @PL_sv_no
  br i1 %cmp69, label %if.then.75, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.67
  %69 = load i64, i64* %ix, align 8
  %70 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx72 = getelementptr inbounds %struct.sv*, %struct.sv** %70, i64 %69
  %71 = load %struct.sv*, %struct.sv** %arrayidx72, align 8
  %cmp73 = icmp eq %struct.sv* %71, @PL_sv_placeholder
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %lor.lhs.false.71, %lor.lhs.false.67, %lor.lhs.false.63, %for.body.59
  br label %for.inc.85

if.end.76:                                        ; preds = %lor.lhs.false.71
  %72 = load i64, i64* %ix, align 8
  %73 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx77 = getelementptr inbounds %struct.sv*, %struct.sv** %73, i64 %72
  %74 = load %struct.sv*, %struct.sv** %arrayidx77, align 8
  %sv_flags78 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 2
  %75 = load i32, i32* %sv_flags78, align 4
  %and79 = and i32 %75, 1024
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.end.84, label %if.then.81

if.then.81:                                       ; preds = %if.end.76
  %76 = load i64, i64* %ix, align 8
  %77 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx82 = getelementptr inbounds %struct.sv*, %struct.sv** %77, i64 %76
  %78 = load %struct.sv*, %struct.sv** %arrayidx82, align 8
  %sv_flags83 = getelementptr inbounds %struct.sv, %struct.sv* %78, i32 0, i32 2
  %79 = load i32, i32* %sv_flags83, align 4
  %or = or i32 %79, 768
  store i32 %or, i32* %sv_flags83, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %if.end.76
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84, %if.then.75
  %80 = load i64, i64* %ix, align 8
  %dec86 = add i64 %80, -1
  store i64 %dec86, i64* %ix, align 8
  br label %for.cond.56

for.end.87:                                       ; preds = %for.cond.56
  br label %if.end.127

if.else.88:                                       ; preds = %if.end.50
  %81 = load i32, i32* %type.addr, align 4
  %cmp89 = icmp eq i32 %81, 2
  br i1 %cmp89, label %if.then.91, label %if.end.126

if.then.91:                                       ; preds = %if.else.88
  %82 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any92 = getelementptr inbounds %struct.av, %struct.av* %82, i32 0, i32 0
  %83 = load %struct.xpvav*, %struct.xpvav** %sv_any92, align 8
  %xav_fill93 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %83, i32 0, i32 1
  %84 = load i64, i64* %xav_fill93, align 8
  store i64 %84, i64* %ix, align 8
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.123, %if.then.91
  %85 = load i64, i64* %ix, align 8
  %cmp95 = icmp ugt i64 %85, 0
  br i1 %cmp95, label %for.body.97, label %for.end.125

for.body.97:                                      ; preds = %for.cond.94
  %86 = load i64, i64* %ix, align 8
  %87 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx98 = getelementptr inbounds %struct.sv*, %struct.sv** %87, i64 %86
  %88 = load %struct.sv*, %struct.sv** %arrayidx98, align 8
  %sv_flags99 = getelementptr inbounds %struct.sv, %struct.sv* %88, i32 0, i32 2
  %89 = load i32, i32* %sv_flags99, align 4
  %and100 = and i32 %89, 1024
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.end.122, label %land.lhs.true.102

land.lhs.true.102:                                ; preds = %for.body.97
  %90 = load i64, i64* %ix, align 8
  %91 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx103 = getelementptr inbounds %struct.sv*, %struct.sv** %91, i64 %90
  %92 = load %struct.sv*, %struct.sv** %arrayidx103, align 8
  %cmp104 = icmp eq %struct.sv* %92, @PL_sv_undef
  br i1 %cmp104, label %if.end.122, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %land.lhs.true.102
  %93 = load i64, i64* %ix, align 8
  %94 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx107 = getelementptr inbounds %struct.sv*, %struct.sv** %94, i64 %93
  %95 = load %struct.sv*, %struct.sv** %arrayidx107, align 8
  %cmp108 = icmp eq %struct.sv* %95, @PL_sv_yes
  br i1 %cmp108, label %if.end.122, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %lor.lhs.false.106
  %96 = load i64, i64* %ix, align 8
  %97 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx111 = getelementptr inbounds %struct.sv*, %struct.sv** %97, i64 %96
  %98 = load %struct.sv*, %struct.sv** %arrayidx111, align 8
  %cmp112 = icmp eq %struct.sv* %98, @PL_sv_no
  br i1 %cmp112, label %if.end.122, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %lor.lhs.false.110
  %99 = load i64, i64* %ix, align 8
  %100 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx115 = getelementptr inbounds %struct.sv*, %struct.sv** %100, i64 %99
  %101 = load %struct.sv*, %struct.sv** %arrayidx115, align 8
  %cmp116 = icmp eq %struct.sv* %101, @PL_sv_placeholder
  br i1 %cmp116, label %if.end.122, label %if.then.118

if.then.118:                                      ; preds = %lor.lhs.false.114
  %102 = load i64, i64* %ix, align 8
  %103 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx119 = getelementptr inbounds %struct.sv*, %struct.sv** %103, i64 %102
  %104 = load %struct.sv*, %struct.sv** %arrayidx119, align 8
  %sv_flags120 = getelementptr inbounds %struct.sv, %struct.sv* %104, i32 0, i32 2
  %105 = load i32, i32* %sv_flags120, align 4
  %or121 = or i32 %105, 768
  store i32 %or121, i32* %sv_flags120, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.118, %lor.lhs.false.114, %lor.lhs.false.110, %lor.lhs.false.106, %land.lhs.true.102, %for.body.97
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.122
  %106 = load i64, i64* %ix, align 8
  %dec124 = add i64 %106, -1
  store i64 %dec124, i64* %ix, align 8
  br label %for.cond.94

for.end.125:                                      ; preds = %for.cond.94
  br label %if.end.126

if.end.126:                                       ; preds = %for.end.125, %if.else.88
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %for.end.87
  %107 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any128 = getelementptr inbounds %struct.av, %struct.av* %107, i32 0, i32 0
  %108 = load %struct.xpvav*, %struct.xpvav** %sv_any128, align 8
  %xav_array129 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %108, i32 0, i32 0
  %109 = load i8*, i8** %xav_array129, align 8
  %110 = bitcast i8* %109 to %struct.sv**
  store %struct.sv** %110, %struct.sv*** @PL_curpad, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_pad_free(i64 %po) #0 {
entry:
  %po.addr = alloca i64, align 8
  store i64 %po, i64* %po.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %tobool = icmp ne %struct.sv** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.16

if.end:                                           ; preds = %entry
  %1 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %1, i32 0, i32 0
  %2 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %2, i32 0, i32 0
  %3 = load i8*, i8** %xav_array, align 8
  %4 = bitcast i8* %3 to %struct.sv**
  %5 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %cmp = icmp ne %struct.sv** %4, %5
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %6 = load i64, i64* %po.addr, align 8
  %tobool3 = icmp ne i64 %6, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %7 = load i64, i64* %po.addr, align 8
  %8 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %8, i64 %7
  %9 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %tobool6 = icmp ne %struct.sv* %9, null
  br i1 %tobool6, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end.5
  %10 = load i64, i64* %po.addr, align 8
  %11 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx7 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %10
  %12 = load %struct.sv*, %struct.sv** %arrayidx7, align 8
  %cmp8 = icmp ne %struct.sv* %12, @PL_sv_undef
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %land.lhs.true
  %13 = load i64, i64* %po.addr, align 8
  %14 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx10 = getelementptr inbounds %struct.sv*, %struct.sv** %14, i64 %13
  %15 = load %struct.sv*, %struct.sv** %arrayidx10, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags, align 4
  %and = and i32 %16, -513
  store i32 %and, i32* %sv_flags, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %land.lhs.true, %if.end.5
  %17 = load i64, i64* %po.addr, align 8
  %conv = trunc i64 %17 to i32
  %18 = load i32, i32* @PL_padix, align 4
  %cmp12 = icmp slt i32 %conv, %18
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %19 = load i64, i64* %po.addr, align 8
  %sub = sub i64 %19, 1
  %conv15 = trunc i64 %sub to i32
  store i32 %conv15, i32* @PL_padix, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then, %if.then.14, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_do_dump_pad(i32 %level, %struct._PerlIO** %file, %struct.av* %padlist, i32 %full) #0 {
entry:
  %level.addr = alloca i32, align 4
  %file.addr = alloca %struct._PerlIO**, align 8
  %padlist.addr = alloca %struct.av*, align 8
  %full.addr = alloca i32, align 4
  %pad_name = alloca %struct.av*, align 8
  %pad = alloca %struct.av*, align 8
  %pname = alloca %struct.sv**, align 8
  %ppad = alloca %struct.sv**, align 8
  %namesv = alloca %struct.sv*, align 8
  %ix = alloca i32, align 4
  store i32 %level, i32* %level.addr, align 4
  store %struct._PerlIO** %file, %struct._PerlIO*** %file.addr, align 8
  store %struct.av* %padlist, %struct.av** %padlist.addr, align 8
  store i32 %full, i32* %full.addr, align 4
  %0 = load %struct.av*, %struct.av** %padlist.addr, align 8
  %tobool = icmp ne %struct.av* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load %struct.av*, %struct.av** %padlist.addr, align 8
  %call = call %struct.sv** @Perl_av_fetch(%struct.av* %1, i32 0, i32 0)
  %2 = load %struct.sv*, %struct.sv** %call, align 8
  %3 = bitcast %struct.sv* %2 to %struct.av*
  store %struct.av* %3, %struct.av** %pad_name, align 8
  %4 = load %struct.av*, %struct.av** %padlist.addr, align 8
  %call1 = call %struct.sv** @Perl_av_fetch(%struct.av* %4, i32 1, i32 0)
  %5 = load %struct.sv*, %struct.sv** %call1, align 8
  %6 = bitcast %struct.sv* %5 to %struct.av*
  store %struct.av* %6, %struct.av** %pad, align 8
  %7 = load %struct.av*, %struct.av** %pad_name, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %7, i32 0, i32 0
  %8 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %8, i32 0, i32 0
  %9 = load i8*, i8** %xav_array, align 8
  %10 = bitcast i8* %9 to %struct.sv**
  store %struct.sv** %10, %struct.sv*** %pname, align 8
  %11 = load %struct.av*, %struct.av** %pad, align 8
  %sv_any2 = getelementptr inbounds %struct.av, %struct.av* %11, i32 0, i32 0
  %12 = load %struct.xpvav*, %struct.xpvav** %sv_any2, align 8
  %xav_array3 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %12, i32 0, i32 0
  %13 = load i8*, i8** %xav_array3, align 8
  %14 = bitcast i8* %13 to %struct.sv**
  store %struct.sv** %14, %struct.sv*** %ppad, align 8
  %15 = load i32, i32* %level.addr, align 4
  %16 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %17 = load %struct.av*, %struct.av** %pad_name, align 8
  %18 = ptrtoint %struct.av* %17 to i64
  %19 = load %struct.sv**, %struct.sv*** %pname, align 8
  %20 = ptrtoint %struct.sv** %19 to i64
  %21 = load %struct.av*, %struct.av** %pad, align 8
  %22 = ptrtoint %struct.av* %21 to i64
  %23 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %24 = ptrtoint %struct.sv** %23 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %15, %struct._PerlIO** %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0), i64 %18, i64 %20, i64 %22, i64 %24)
  store i32 1, i32* %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, i32* %ix, align 4
  %conv = sext i32 %25 to i64
  %26 = load %struct.av*, %struct.av** %pad_name, align 8
  %sv_any4 = getelementptr inbounds %struct.av, %struct.av* %26, i32 0, i32 0
  %27 = load %struct.xpvav*, %struct.xpvav** %sv_any4, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %27, i32 0, i32 1
  %28 = load i64, i64* %xav_fill, align 8
  %cmp = icmp sle i64 %conv, %28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.sv**, %struct.sv*** %pname, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %idxprom
  %31 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %31, %struct.sv** %namesv, align 8
  %32 = load %struct.sv*, %struct.sv** %namesv, align 8
  %tobool6 = icmp ne %struct.sv* %32, null
  br i1 %tobool6, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %for.body
  %33 = load %struct.sv*, %struct.sv** %namesv, align 8
  %cmp7 = icmp eq %struct.sv* %33, @PL_sv_undef
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  store %struct.sv* null, %struct.sv** %namesv, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %land.lhs.true, %for.body
  %34 = load %struct.sv*, %struct.sv** %namesv, align 8
  %tobool11 = icmp ne %struct.sv* %34, null
  br i1 %tobool11, label %if.then.12, label %if.else.45

if.then.12:                                       ; preds = %if.end.10
  %35 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %35, i32 0, i32 2
  %36 = load i32, i32* %sv_flags, align 4
  %and = and i32 %36, 1048576
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.12
  %37 = load i32, i32* %level.addr, align 4
  %add = add nsw i32 %37, 1
  %38 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %39 = load i32, i32* %ix, align 4
  %40 = load i32, i32* %ix, align 4
  %idxprom15 = sext i32 %40 to i64
  %41 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %arrayidx16 = getelementptr inbounds %struct.sv*, %struct.sv** %41, i64 %idxprom15
  %42 = load %struct.sv*, %struct.sv** %arrayidx16, align 8
  %43 = ptrtoint %struct.sv* %42 to i64
  %44 = load i32, i32* %ix, align 4
  %idxprom17 = sext i32 %44 to i64
  %45 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %arrayidx18 = getelementptr inbounds %struct.sv*, %struct.sv** %45, i64 %idxprom17
  %46 = load %struct.sv*, %struct.sv** %arrayidx18, align 8
  %tobool19 = icmp ne %struct.sv* %46, null
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %47 = load i32, i32* %ix, align 4
  %idxprom20 = sext i32 %47 to i64
  %48 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %arrayidx21 = getelementptr inbounds %struct.sv*, %struct.sv** %48, i64 %idxprom20
  %49 = load %struct.sv*, %struct.sv** %arrayidx21, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %49, i32 0, i32 1
  %50 = load i32, i32* %sv_refcnt, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %50, %cond.true ], [ 0, %cond.false ]
  %conv22 = zext i32 %cond to i64
  %51 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_any23 = getelementptr inbounds %struct.sv, %struct.sv* %51, i32 0, i32 0
  %52 = load i8*, i8** %sv_any23, align 8
  %53 = bitcast i8* %52 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %53, i32 0, i32 0
  %54 = load i8*, i8** %xpv_pv, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %add, %struct._PerlIO** %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 %39, i64 %43, i64 %conv22, i8* %54)
  br label %if.end.44

if.else:                                          ; preds = %if.then.12
  %55 = load i32, i32* %level.addr, align 4
  %add24 = add nsw i32 %55, 1
  %56 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %57 = load i32, i32* %ix, align 4
  %58 = load i32, i32* %ix, align 4
  %idxprom25 = sext i32 %58 to i64
  %59 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %arrayidx26 = getelementptr inbounds %struct.sv*, %struct.sv** %59, i64 %idxprom25
  %60 = load %struct.sv*, %struct.sv** %arrayidx26, align 8
  %61 = ptrtoint %struct.sv* %60 to i64
  %62 = load i32, i32* %ix, align 4
  %idxprom27 = sext i32 %62 to i64
  %63 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %arrayidx28 = getelementptr inbounds %struct.sv*, %struct.sv** %63, i64 %idxprom27
  %64 = load %struct.sv*, %struct.sv** %arrayidx28, align 8
  %tobool29 = icmp ne %struct.sv* %64, null
  br i1 %tobool29, label %cond.true.30, label %cond.false.34

cond.true.30:                                     ; preds = %if.else
  %65 = load i32, i32* %ix, align 4
  %idxprom31 = sext i32 %65 to i64
  %66 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %arrayidx32 = getelementptr inbounds %struct.sv*, %struct.sv** %66, i64 %idxprom31
  %67 = load %struct.sv*, %struct.sv** %arrayidx32, align 8
  %sv_refcnt33 = getelementptr inbounds %struct.sv, %struct.sv* %67, i32 0, i32 1
  %68 = load i32, i32* %sv_refcnt33, align 4
  br label %cond.end.35

cond.false.34:                                    ; preds = %if.else
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.30
  %cond36 = phi i32 [ %68, %cond.true.30 ], [ 0, %cond.false.34 ]
  %conv37 = zext i32 %cond36 to i64
  %69 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_any38 = getelementptr inbounds %struct.sv, %struct.sv* %69, i32 0, i32 0
  %70 = load i8*, i8** %sv_any38, align 8
  %71 = bitcast i8* %70 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %71, i32 0, i32 4
  %72 = load double, double* %xnv_nv, align 8
  %call39 = call i32 @Perl_cast_ulong(double %72)
  %conv40 = zext i32 %call39 to i64
  %73 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_any41 = getelementptr inbounds %struct.sv, %struct.sv* %73, i32 0, i32 0
  %74 = load i8*, i8** %sv_any41, align 8
  %75 = bitcast i8* %74 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %75, i32 0, i32 3
  %76 = load i64, i64* %xiv_iv, align 8
  %77 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_any42 = getelementptr inbounds %struct.sv, %struct.sv* %77, i32 0, i32 0
  %78 = load i8*, i8** %sv_any42, align 8
  %79 = bitcast i8* %78 to %struct.xpv*
  %xpv_pv43 = getelementptr inbounds %struct.xpv, %struct.xpv* %79, i32 0, i32 0
  %80 = load i8*, i8** %xpv_pv43, align 8
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %add24, %struct._PerlIO** %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i32 %57, i64 %61, i64 %conv37, i64 %conv40, i64 %76, i8* %80)
  br label %if.end.44

if.end.44:                                        ; preds = %cond.end.35, %cond.end
  br label %if.end.63

if.else.45:                                       ; preds = %if.end.10
  %81 = load i32, i32* %full.addr, align 4
  %tobool46 = icmp ne i32 %81, 0
  br i1 %tobool46, label %if.then.47, label %if.end.62

if.then.47:                                       ; preds = %if.else.45
  %82 = load i32, i32* %level.addr, align 4
  %add48 = add nsw i32 %82, 1
  %83 = load %struct._PerlIO**, %struct._PerlIO*** %file.addr, align 8
  %84 = load i32, i32* %ix, align 4
  %85 = load i32, i32* %ix, align 4
  %idxprom49 = sext i32 %85 to i64
  %86 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %arrayidx50 = getelementptr inbounds %struct.sv*, %struct.sv** %86, i64 %idxprom49
  %87 = load %struct.sv*, %struct.sv** %arrayidx50, align 8
  %88 = ptrtoint %struct.sv* %87 to i64
  %89 = load i32, i32* %ix, align 4
  %idxprom51 = sext i32 %89 to i64
  %90 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %arrayidx52 = getelementptr inbounds %struct.sv*, %struct.sv** %90, i64 %idxprom51
  %91 = load %struct.sv*, %struct.sv** %arrayidx52, align 8
  %tobool53 = icmp ne %struct.sv* %91, null
  br i1 %tobool53, label %cond.true.54, label %cond.false.58

cond.true.54:                                     ; preds = %if.then.47
  %92 = load i32, i32* %ix, align 4
  %idxprom55 = sext i32 %92 to i64
  %93 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %arrayidx56 = getelementptr inbounds %struct.sv*, %struct.sv** %93, i64 %idxprom55
  %94 = load %struct.sv*, %struct.sv** %arrayidx56, align 8
  %sv_refcnt57 = getelementptr inbounds %struct.sv, %struct.sv* %94, i32 0, i32 1
  %95 = load i32, i32* %sv_refcnt57, align 4
  br label %cond.end.59

cond.false.58:                                    ; preds = %if.then.47
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.54
  %cond60 = phi i32 [ %95, %cond.true.54 ], [ 0, %cond.false.58 ]
  %conv61 = zext i32 %cond60 to i64
  call void (i32, %struct._PerlIO**, i8*, ...) @Perl_dump_indent(i32 %add48, %struct._PerlIO** %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i32 %84, i64 %88, i64 %conv61)
  br label %if.end.62

if.end.62:                                        ; preds = %cond.end.59, %if.else.45
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.44
  br label %for.inc

for.inc:                                          ; preds = %if.end.63
  %96 = load i32, i32* %ix, align 4
  %inc = add nsw i32 %96, 1
  store i32 %inc, i32* %ix, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare void @Perl_dump_indent(i32, %struct._PerlIO**, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.cv* @Perl_cv_clone(%struct.cv* %proto) #0 {
entry:
  %proto.addr = alloca %struct.cv*, align 8
  %cv = alloca %struct.cv*, align 8
  store %struct.cv* %proto, %struct.cv** %proto.addr, align 8
  %0 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %1 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %1, i32 0, i32 0
  %2 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_outside = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %2, i32 0, i32 16
  %3 = load %struct.cv*, %struct.cv** %xcv_outside, align 8
  %call = call %struct.cv* @S_cv_clone2(%struct.cv* %0, %struct.cv* %3)
  store %struct.cv* %call, %struct.cv** %cv, align 8
  %4 = load %struct.cv*, %struct.cv** %cv, align 8
  ret %struct.cv* %4
}

; Function Attrs: nounwind uwtable
define internal %struct.cv* @S_cv_clone2(%struct.cv* %proto, %struct.cv* %outside) #0 {
entry:
  %proto.addr = alloca %struct.cv*, align 8
  %outside.addr = alloca %struct.cv*, align 8
  %ix = alloca i32, align 4
  %protopadlist = alloca %struct.av*, align 8
  %protopad_name = alloca %struct.av*, align 8
  %protopad = alloca %struct.av*, align 8
  %pname = alloca %struct.sv**, align 8
  %ppad = alloca %struct.sv**, align 8
  %fname = alloca i32, align 4
  %fpad = alloca i32, align 4
  %comppadlist = alloca %struct.av*, align 8
  %cv = alloca %struct.cv*, align 8
  %namesv = alloca %struct.sv*, align 8
  %name = alloca i8*, align 8
  %off = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %sv154 = alloca %struct.sv*, align 8
  %namesv168 = alloca %struct.sv*, align 8
  %kid = alloca %struct.cv*, align 8
  %const_sv = alloca %struct.sv*, align 8
  store %struct.cv* %proto, %struct.cv** %proto.addr, align 8
  store %struct.cv* %outside, %struct.cv** %outside.addr, align 8
  %0 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_any = getelementptr inbounds %struct.cv, %struct.cv* %0, i32 0, i32 0
  %1 = load %struct.xpvcv*, %struct.xpvcv** %sv_any, align 8
  %xcv_padlist = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %1, i32 0, i32 15
  %2 = load %struct.av*, %struct.av** %xcv_padlist, align 8
  store %struct.av* %2, %struct.av** %protopadlist, align 8
  %3 = load %struct.av*, %struct.av** %protopadlist, align 8
  %call = call %struct.sv** @Perl_av_fetch(%struct.av* %3, i32 0, i32 0)
  %4 = load %struct.sv*, %struct.sv** %call, align 8
  %5 = bitcast %struct.sv* %4 to %struct.av*
  store %struct.av* %5, %struct.av** %protopad_name, align 8
  %6 = load %struct.av*, %struct.av** %protopadlist, align 8
  %call1 = call %struct.sv** @Perl_av_fetch(%struct.av* %6, i32 1, i32 0)
  %7 = load %struct.sv*, %struct.sv** %call1, align 8
  %8 = bitcast %struct.sv* %7 to %struct.av*
  store %struct.av* %8, %struct.av** %protopad, align 8
  %9 = load %struct.av*, %struct.av** %protopad_name, align 8
  %sv_any2 = getelementptr inbounds %struct.av, %struct.av* %9, i32 0, i32 0
  %10 = load %struct.xpvav*, %struct.xpvav** %sv_any2, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %10, i32 0, i32 0
  %11 = load i8*, i8** %xav_array, align 8
  %12 = bitcast i8* %11 to %struct.sv**
  store %struct.sv** %12, %struct.sv*** %pname, align 8
  %13 = load %struct.av*, %struct.av** %protopad, align 8
  %sv_any3 = getelementptr inbounds %struct.av, %struct.av* %13, i32 0, i32 0
  %14 = load %struct.xpvav*, %struct.xpvav** %sv_any3, align 8
  %xav_array4 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %14, i32 0, i32 0
  %15 = load i8*, i8** %xav_array4, align 8
  %16 = bitcast i8* %15 to %struct.sv**
  store %struct.sv** %16, %struct.sv*** %ppad, align 8
  %17 = load %struct.av*, %struct.av** %protopad_name, align 8
  %sv_any5 = getelementptr inbounds %struct.av, %struct.av* %17, i32 0, i32 0
  %18 = load %struct.xpvav*, %struct.xpvav** %sv_any5, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %18, i32 0, i32 1
  %19 = load i64, i64* %xav_fill, align 8
  %conv = trunc i64 %19 to i32
  store i32 %conv, i32* %fname, align 4
  %20 = load %struct.av*, %struct.av** %protopad, align 8
  %sv_any6 = getelementptr inbounds %struct.av, %struct.av* %20, i32 0, i32 0
  %21 = load %struct.xpvav*, %struct.xpvav** %sv_any6, align 8
  %xav_fill7 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %21, i32 0, i32 1
  %22 = load i64, i64* %xav_fill7, align 8
  %conv8 = trunc i64 %22 to i32
  store i32 %conv8, i32* %fpad, align 4
  call void @Perl_push_scope()
  call void @Perl_save_sptr(%struct.sv** bitcast (%struct.cv** @PL_compcv to %struct.sv**))
  %call9 = call %struct.sv* @Perl_newSV(i64 0)
  %23 = bitcast %struct.sv* %call9 to %struct.cv*
  store %struct.cv* %23, %struct.cv** @PL_compcv, align 8
  store %struct.cv* %23, %struct.cv** %cv, align 8
  %24 = load %struct.cv*, %struct.cv** %cv, align 8
  %25 = bitcast %struct.cv* %24 to %struct.sv*
  %26 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_flags = getelementptr inbounds %struct.cv, %struct.cv* %26, i32 0, i32 2
  %27 = load i32, i32* %sv_flags, align 4
  %and = and i32 %27, 255
  %call10 = call signext i8 @Perl_sv_upgrade(%struct.sv* %25, i32 %and)
  %28 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_any11 = getelementptr inbounds %struct.cv, %struct.cv* %28, i32 0, i32 0
  %29 = load %struct.xpvcv*, %struct.xpvcv** %sv_any11, align 8
  %xcv_flags = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %29, i32 0, i32 17
  %30 = load i16, i16* %xcv_flags, align 2
  %conv12 = zext i16 %30 to i32
  %and13 = and i32 %conv12, -1026
  %conv14 = trunc i32 %and13 to i16
  %31 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any15 = getelementptr inbounds %struct.cv, %struct.cv* %31, i32 0, i32 0
  %32 = load %struct.xpvcv*, %struct.xpvcv** %sv_any15, align 8
  %xcv_flags16 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %32, i32 0, i32 17
  store i16 %conv14, i16* %xcv_flags16, align 2
  %33 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any17 = getelementptr inbounds %struct.cv, %struct.cv* %33, i32 0, i32 0
  %34 = load %struct.xpvcv*, %struct.xpvcv** %sv_any17, align 8
  %xcv_flags18 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %34, i32 0, i32 17
  %35 = load i16, i16* %xcv_flags18, align 2
  %conv19 = zext i16 %35 to i32
  %or = or i32 %conv19, 2
  %conv20 = trunc i32 %or to i16
  store i16 %conv20, i16* %xcv_flags18, align 2
  %36 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_any21 = getelementptr inbounds %struct.cv, %struct.cv* %36, i32 0, i32 0
  %37 = load %struct.xpvcv*, %struct.xpvcv** %sv_any21, align 8
  %xcv_file = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %37, i32 0, i32 13
  %38 = load i8*, i8** %xcv_file, align 8
  %39 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any22 = getelementptr inbounds %struct.cv, %struct.cv* %39, i32 0, i32 0
  %40 = load %struct.xpvcv*, %struct.xpvcv** %sv_any22, align 8
  %xcv_file23 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %40, i32 0, i32 13
  store i8* %38, i8** %xcv_file23, align 8
  %41 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_any24 = getelementptr inbounds %struct.cv, %struct.cv* %41, i32 0, i32 0
  %42 = load %struct.xpvcv*, %struct.xpvcv** %sv_any24, align 8
  %xcv_gv = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %42, i32 0, i32 12
  %43 = load %struct.gv*, %struct.gv** %xcv_gv, align 8
  %44 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any25 = getelementptr inbounds %struct.cv, %struct.cv* %44, i32 0, i32 0
  %45 = load %struct.xpvcv*, %struct.xpvcv** %sv_any25, align 8
  %xcv_gv26 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %45, i32 0, i32 12
  store %struct.gv* %43, %struct.gv** %xcv_gv26, align 8
  %46 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_any27 = getelementptr inbounds %struct.cv, %struct.cv* %46, i32 0, i32 0
  %47 = load %struct.xpvcv*, %struct.xpvcv** %sv_any27, align 8
  %xcv_stash = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %47, i32 0, i32 7
  %48 = load %struct.hv*, %struct.hv** %xcv_stash, align 8
  %49 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any28 = getelementptr inbounds %struct.cv, %struct.cv* %49, i32 0, i32 0
  %50 = load %struct.xpvcv*, %struct.xpvcv** %sv_any28, align 8
  %xcv_stash29 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %50, i32 0, i32 7
  store %struct.hv* %48, %struct.hv** %xcv_stash29, align 8
  %51 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_any30 = getelementptr inbounds %struct.cv, %struct.cv* %51, i32 0, i32 0
  %52 = load %struct.xpvcv*, %struct.xpvcv** %sv_any30, align 8
  %xcv_root = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %52, i32 0, i32 9
  %53 = load %struct.op*, %struct.op** %xcv_root, align 8
  %tobool = icmp ne %struct.op* %53, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %54 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_any31 = getelementptr inbounds %struct.cv, %struct.cv* %54, i32 0, i32 0
  %55 = load %struct.xpvcv*, %struct.xpvcv** %sv_any31, align 8
  %xcv_root32 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %55, i32 0, i32 9
  %56 = load %struct.op*, %struct.op** %xcv_root32, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %56, i32 0, i32 3
  %57 = load i64, i64* %op_targ, align 8
  %inc = add i64 %57, 1
  store i64 %inc, i64* %op_targ, align 8
  %58 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_any33 = getelementptr inbounds %struct.cv, %struct.cv* %58, i32 0, i32 0
  %59 = load %struct.xpvcv*, %struct.xpvcv** %sv_any33, align 8
  %xcv_root34 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %59, i32 0, i32 9
  %60 = load %struct.op*, %struct.op** %xcv_root34, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.op* [ %60, %cond.true ], [ null, %cond.false ]
  %61 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any35 = getelementptr inbounds %struct.cv, %struct.cv* %61, i32 0, i32 0
  %62 = load %struct.xpvcv*, %struct.xpvcv** %sv_any35, align 8
  %xcv_root36 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %62, i32 0, i32 9
  store %struct.op* %cond, %struct.op** %xcv_root36, align 8
  %63 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_any37 = getelementptr inbounds %struct.cv, %struct.cv* %63, i32 0, i32 0
  %64 = load %struct.xpvcv*, %struct.xpvcv** %sv_any37, align 8
  %xcv_start = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %64, i32 0, i32 8
  %65 = load %struct.op*, %struct.op** %xcv_start, align 8
  %66 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any38 = getelementptr inbounds %struct.cv, %struct.cv* %66, i32 0, i32 0
  %67 = load %struct.xpvcv*, %struct.xpvcv** %sv_any38, align 8
  %xcv_start39 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %67, i32 0, i32 8
  store %struct.op* %65, %struct.op** %xcv_start39, align 8
  %68 = load %struct.cv*, %struct.cv** %outside.addr, align 8
  %tobool40 = icmp ne %struct.cv* %68, null
  br i1 %tobool40, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %69 = load %struct.cv*, %struct.cv** %outside.addr, align 8
  %70 = bitcast %struct.cv* %69 to %struct.sv*
  store %struct.sv* %70, %struct.sv** @PL_Sv, align 8
  %71 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool41 = icmp ne %struct.sv* %71, null
  br i1 %tobool41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %72 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %72, i32 0, i32 1
  %73 = load i32, i32* %sv_refcnt, align 4
  %inc42 = add i32 %73, 1
  store i32 %inc42, i32* %sv_refcnt, align 4
  %tobool43 = icmp ne i32 %inc42, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %74 = phi i1 [ false, %if.then ], [ %tobool43, %land.rhs ]
  %land.ext = zext i1 %74 to i32
  %75 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %76 = bitcast %struct.sv* %75 to %struct.cv*
  %77 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any44 = getelementptr inbounds %struct.cv, %struct.cv* %77, i32 0, i32 0
  %78 = load %struct.xpvcv*, %struct.xpvcv** %sv_any44, align 8
  %xcv_outside = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %78, i32 0, i32 16
  store %struct.cv* %76, %struct.cv** %xcv_outside, align 8
  %79 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_any45 = getelementptr inbounds %struct.cv, %struct.cv* %79, i32 0, i32 0
  %80 = load %struct.xpvcv*, %struct.xpvcv** %sv_any45, align 8
  %xcv_outside_seq = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %80, i32 0, i32 18
  %81 = load i32, i32* %xcv_outside_seq, align 4
  %82 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any46 = getelementptr inbounds %struct.cv, %struct.cv* %82, i32 0, i32 0
  %83 = load %struct.xpvcv*, %struct.xpvcv** %sv_any46, align 8
  %xcv_outside_seq47 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %83, i32 0, i32 18
  store i32 %81, i32* %xcv_outside_seq47, align 4
  br label %if.end

if.end:                                           ; preds = %land.end, %cond.end
  %84 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_flags48 = getelementptr inbounds %struct.cv, %struct.cv* %84, i32 0, i32 2
  %85 = load i32, i32* %sv_flags48, align 4
  %and49 = and i32 %85, 262144
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.end
  %86 = load %struct.cv*, %struct.cv** %cv, align 8
  %87 = bitcast %struct.cv* %86 to %struct.sv*
  %88 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_any52 = getelementptr inbounds %struct.cv, %struct.cv* %88, i32 0, i32 0
  %89 = load %struct.xpvcv*, %struct.xpvcv** %sv_any52, align 8
  %90 = bitcast %struct.xpvcv* %89 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %90, i32 0, i32 0
  %91 = load i8*, i8** %xpv_pv, align 8
  %92 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_any53 = getelementptr inbounds %struct.cv, %struct.cv* %92, i32 0, i32 0
  %93 = load %struct.xpvcv*, %struct.xpvcv** %sv_any53, align 8
  %94 = bitcast %struct.xpvcv* %93 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %94, i32 0, i32 1
  %95 = load i64, i64* %xpv_cur, align 8
  call void @Perl_sv_setpvn(%struct.sv* %87, i8* %91, i64 %95)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.end
  %call55 = call %struct.av* @Perl_pad_new(i32 3)
  store %struct.av* %call55, %struct.av** %comppadlist, align 8
  %96 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any56 = getelementptr inbounds %struct.cv, %struct.cv* %96, i32 0, i32 0
  %97 = load %struct.xpvcv*, %struct.xpvcv** %sv_any56, align 8
  %xcv_padlist57 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %97, i32 0, i32 15
  store %struct.av* %call55, %struct.av** %xcv_padlist57, align 8
  %98 = load i32, i32* %fname, align 4
  store i32 %98, i32* %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.54
  %99 = load i32, i32* %ix, align 4
  %cmp = icmp sge i32 %99, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %100 = load %struct.av*, %struct.av** @PL_comppad_name, align 8
  %101 = load i32, i32* %ix, align 4
  %102 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %102 to i64
  %103 = load %struct.sv**, %struct.sv*** %pname, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %103, i64 %idxprom
  %104 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %104, %struct.sv** @PL_Sv, align 8
  %105 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool59 = icmp ne %struct.sv* %105, null
  br i1 %tobool59, label %land.rhs.60, label %land.end.64

land.rhs.60:                                      ; preds = %for.body
  %106 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt61 = getelementptr inbounds %struct.sv, %struct.sv* %106, i32 0, i32 1
  %107 = load i32, i32* %sv_refcnt61, align 4
  %inc62 = add i32 %107, 1
  store i32 %inc62, i32* %sv_refcnt61, align 4
  %tobool63 = icmp ne i32 %inc62, 0
  br label %land.end.64

land.end.64:                                      ; preds = %land.rhs.60, %for.body
  %108 = phi i1 [ false, %for.body ], [ %tobool63, %land.rhs.60 ]
  %land.ext65 = zext i1 %108 to i32
  %109 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call66 = call %struct.sv** @Perl_av_store(%struct.av* %100, i32 %101, %struct.sv* %109)
  br label %for.inc

for.inc:                                          ; preds = %land.end.64
  %110 = load i32, i32* %ix, align 4
  %dec = add nsw i32 %110, -1
  store i32 %dec, i32* %ix, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %111 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %112 = load i32, i32* %fpad, align 4
  call void @Perl_av_fill(%struct.av* %111, i32 %112)
  %113 = load %struct.av*, %struct.av** @PL_comppad, align 8
  %sv_any67 = getelementptr inbounds %struct.av, %struct.av* %113, i32 0, i32 0
  %114 = load %struct.xpvav*, %struct.xpvav** %sv_any67, align 8
  %xav_array68 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %114, i32 0, i32 0
  %115 = load i8*, i8** %xav_array68, align 8
  %116 = bitcast i8* %115 to %struct.sv**
  store %struct.sv** %116, %struct.sv*** @PL_curpad, align 8
  %117 = load i32, i32* %fpad, align 4
  store i32 %117, i32* %ix, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.161, %for.end
  %118 = load i32, i32* %ix, align 4
  %cmp70 = icmp sgt i32 %118, 0
  br i1 %cmp70, label %for.body.72, label %for.end.163

for.body.72:                                      ; preds = %for.cond.69
  %119 = load i32, i32* %ix, align 4
  %120 = load i32, i32* %fname, align 4
  %cmp73 = icmp sle i32 %119, %120
  br i1 %cmp73, label %cond.true.75, label %cond.false.78

cond.true.75:                                     ; preds = %for.body.72
  %121 = load i32, i32* %ix, align 4
  %idxprom76 = sext i32 %121 to i64
  %122 = load %struct.sv**, %struct.sv*** %pname, align 8
  %arrayidx77 = getelementptr inbounds %struct.sv*, %struct.sv** %122, i64 %idxprom76
  %123 = load %struct.sv*, %struct.sv** %arrayidx77, align 8
  br label %cond.end.79

cond.false.78:                                    ; preds = %for.body.72
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.75
  %cond80 = phi %struct.sv* [ %123, %cond.true.75 ], [ null, %cond.false.78 ]
  store %struct.sv* %cond80, %struct.sv** %namesv, align 8
  %124 = load %struct.sv*, %struct.sv** %namesv, align 8
  %tobool81 = icmp ne %struct.sv* %124, null
  br i1 %tobool81, label %land.lhs.true, label %if.else.153

land.lhs.true:                                    ; preds = %cond.end.79
  %125 = load %struct.sv*, %struct.sv** %namesv, align 8
  %cmp82 = icmp ne %struct.sv* %125, @PL_sv_undef
  br i1 %cmp82, label %if.then.84, label %if.else.153

if.then.84:                                       ; preds = %land.lhs.true
  %126 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_any85 = getelementptr inbounds %struct.sv, %struct.sv* %126, i32 0, i32 0
  %127 = load i8*, i8** %sv_any85, align 8
  %128 = bitcast i8* %127 to %struct.xpv*
  %xpv_pv86 = getelementptr inbounds %struct.xpv, %struct.xpv* %128, i32 0, i32 0
  %129 = load i8*, i8** %xpv_pv86, align 8
  store i8* %129, i8** %name, align 8
  %130 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_flags87 = getelementptr inbounds %struct.sv, %struct.sv* %130, i32 0, i32 2
  %131 = load i32, i32* %sv_flags87, align 4
  %and88 = and i32 %131, 1048576
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.then.90, label %if.else.112

if.then.90:                                       ; preds = %if.then.84
  %132 = load i8*, i8** %name, align 8
  %133 = load i32, i32* %ix, align 4
  %conv91 = sext i32 %133 to i64
  %134 = load %struct.cv*, %struct.cv** %cv, align 8
  %call92 = call i64 @S_pad_findlex(i8* %132, i64 %conv91, %struct.cv* %134)
  %conv93 = trunc i64 %call92 to i32
  store i32 %conv93, i32* %off, align 4
  %135 = load i32, i32* %off, align 4
  %tobool94 = icmp ne i32 %135, 0
  br i1 %tobool94, label %if.else, label %if.then.95

if.then.95:                                       ; preds = %if.then.90
  %136 = load i32, i32* %ix, align 4
  %idxprom96 = sext i32 %136 to i64
  %137 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %arrayidx97 = getelementptr inbounds %struct.sv*, %struct.sv** %137, i64 %idxprom96
  %138 = load %struct.sv*, %struct.sv** %arrayidx97, align 8
  store %struct.sv* %138, %struct.sv** @PL_Sv, align 8
  %139 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool98 = icmp ne %struct.sv* %139, null
  br i1 %tobool98, label %land.rhs.99, label %land.end.103

land.rhs.99:                                      ; preds = %if.then.95
  %140 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt100 = getelementptr inbounds %struct.sv, %struct.sv* %140, i32 0, i32 1
  %141 = load i32, i32* %sv_refcnt100, align 4
  %inc101 = add i32 %141, 1
  store i32 %inc101, i32* %sv_refcnt100, align 4
  %tobool102 = icmp ne i32 %inc101, 0
  br label %land.end.103

land.end.103:                                     ; preds = %land.rhs.99, %if.then.95
  %142 = phi i1 [ false, %if.then.95 ], [ %tobool102, %land.rhs.99 ]
  %land.ext104 = zext i1 %142 to i32
  %143 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %144 = load i32, i32* %ix, align 4
  %idxprom105 = sext i32 %144 to i64
  %145 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx106 = getelementptr inbounds %struct.sv*, %struct.sv** %145, i64 %idxprom105
  store %struct.sv* %143, %struct.sv** %arrayidx106, align 8
  br label %if.end.111

if.else:                                          ; preds = %if.then.90
  %146 = load i32, i32* %off, align 4
  %147 = load i32, i32* %ix, align 4
  %cmp107 = icmp ne i32 %146, %147
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.else
  %148 = load i8*, i8** %name, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* %148)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.else
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %land.end.103
  br label %if.end.152

if.else.112:                                      ; preds = %if.then.84
  %149 = load i8*, i8** %name, align 8
  %150 = load i8, i8* %149, align 1
  %conv113 = sext i8 %150 to i32
  %cmp114 = icmp eq i32 %conv113, 38
  br i1 %cmp114, label %if.then.116, label %if.else.126

if.then.116:                                      ; preds = %if.else.112
  %151 = load i32, i32* %ix, align 4
  %idxprom117 = sext i32 %151 to i64
  %152 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %arrayidx118 = getelementptr inbounds %struct.sv*, %struct.sv** %152, i64 %idxprom117
  %153 = load %struct.sv*, %struct.sv** %arrayidx118, align 8
  store %struct.sv* %153, %struct.sv** @PL_Sv, align 8
  %154 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool119 = icmp ne %struct.sv* %154, null
  br i1 %tobool119, label %land.rhs.120, label %land.end.124

land.rhs.120:                                     ; preds = %if.then.116
  %155 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt121 = getelementptr inbounds %struct.sv, %struct.sv* %155, i32 0, i32 1
  %156 = load i32, i32* %sv_refcnt121, align 4
  %inc122 = add i32 %156, 1
  store i32 %inc122, i32* %sv_refcnt121, align 4
  %tobool123 = icmp ne i32 %inc122, 0
  br label %land.end.124

land.end.124:                                     ; preds = %land.rhs.120, %if.then.116
  %157 = phi i1 [ false, %if.then.116 ], [ %tobool123, %land.rhs.120 ]
  %land.ext125 = zext i1 %157 to i32
  %158 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  store %struct.sv* %158, %struct.sv** %sv, align 8
  br label %if.end.142

if.else.126:                                      ; preds = %if.else.112
  %159 = load i8*, i8** %name, align 8
  %160 = load i8, i8* %159, align 1
  %conv127 = sext i8 %160 to i32
  %cmp128 = icmp eq i32 %conv127, 64
  br i1 %cmp128, label %if.then.130, label %if.else.132

if.then.130:                                      ; preds = %if.else.126
  %call131 = call %struct.av* @Perl_newAV()
  %161 = bitcast %struct.av* %call131 to %struct.sv*
  store %struct.sv* %161, %struct.sv** %sv, align 8
  br label %if.end.141

if.else.132:                                      ; preds = %if.else.126
  %162 = load i8*, i8** %name, align 8
  %163 = load i8, i8* %162, align 1
  %conv133 = sext i8 %163 to i32
  %cmp134 = icmp eq i32 %conv133, 37
  br i1 %cmp134, label %if.then.136, label %if.else.138

if.then.136:                                      ; preds = %if.else.132
  %call137 = call %struct.hv* @Perl_newHV()
  %164 = bitcast %struct.hv* %call137 to %struct.sv*
  store %struct.sv* %164, %struct.sv** %sv, align 8
  br label %if.end.140

if.else.138:                                      ; preds = %if.else.132
  %call139 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call139, %struct.sv** %sv, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.138, %if.then.136
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.130
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %land.end.124
  %165 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags143 = getelementptr inbounds %struct.sv, %struct.sv* %165, i32 0, i32 2
  %166 = load i32, i32* %sv_flags143, align 4
  %and144 = and i32 %166, 256
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %if.end.149, label %if.then.146

if.then.146:                                      ; preds = %if.end.142
  %167 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags147 = getelementptr inbounds %struct.sv, %struct.sv* %167, i32 0, i32 2
  %168 = load i32, i32* %sv_flags147, align 4
  %or148 = or i32 %168, 1280
  store i32 %or148, i32* %sv_flags147, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.146, %if.end.142
  %169 = load %struct.sv*, %struct.sv** %sv, align 8
  %170 = load i32, i32* %ix, align 4
  %idxprom150 = sext i32 %170 to i64
  %171 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx151 = getelementptr inbounds %struct.sv*, %struct.sv** %171, i64 %idxprom150
  store %struct.sv* %169, %struct.sv** %arrayidx151, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.149, %if.end.111
  br label %if.end.160

if.else.153:                                      ; preds = %land.lhs.true, %cond.end.79
  %call155 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call155, %struct.sv** %sv154, align 8
  %172 = load %struct.sv*, %struct.sv** %sv154, align 8
  %sv_flags156 = getelementptr inbounds %struct.sv, %struct.sv* %172, i32 0, i32 2
  %173 = load i32, i32* %sv_flags156, align 4
  %or157 = or i32 %173, 768
  store i32 %or157, i32* %sv_flags156, align 4
  %174 = load %struct.sv*, %struct.sv** %sv154, align 8
  %175 = load i32, i32* %ix, align 4
  %idxprom158 = sext i32 %175 to i64
  %176 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx159 = getelementptr inbounds %struct.sv*, %struct.sv** %176, i64 %idxprom158
  store %struct.sv* %174, %struct.sv** %arrayidx159, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.153, %if.end.152
  br label %for.inc.161

for.inc.161:                                      ; preds = %if.end.160
  %177 = load i32, i32* %ix, align 4
  %dec162 = add nsw i32 %177, -1
  store i32 %dec162, i32* %ix, align 4
  br label %for.cond.69

for.end.163:                                      ; preds = %for.cond.69
  %178 = load i32, i32* %fpad, align 4
  store i32 %178, i32* %ix, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.220, %for.end.163
  %179 = load i32, i32* %ix, align 4
  %cmp165 = icmp sgt i32 %179, 0
  br i1 %cmp165, label %for.body.167, label %for.end.222

for.body.167:                                     ; preds = %for.cond.164
  %180 = load i32, i32* %ix, align 4
  %181 = load i32, i32* %fname, align 4
  %cmp169 = icmp sle i32 %180, %181
  br i1 %cmp169, label %cond.true.171, label %cond.false.174

cond.true.171:                                    ; preds = %for.body.167
  %182 = load i32, i32* %ix, align 4
  %idxprom172 = sext i32 %182 to i64
  %183 = load %struct.sv**, %struct.sv*** %pname, align 8
  %arrayidx173 = getelementptr inbounds %struct.sv*, %struct.sv** %183, i64 %idxprom172
  %184 = load %struct.sv*, %struct.sv** %arrayidx173, align 8
  br label %cond.end.175

cond.false.174:                                   ; preds = %for.body.167
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.174, %cond.true.171
  %cond176 = phi %struct.sv* [ %184, %cond.true.171 ], [ null, %cond.false.174 ]
  store %struct.sv* %cond176, %struct.sv** %namesv168, align 8
  %185 = load %struct.sv*, %struct.sv** %namesv168, align 8
  %tobool177 = icmp ne %struct.sv* %185, null
  br i1 %tobool177, label %land.lhs.true.178, label %if.end.219

land.lhs.true.178:                                ; preds = %cond.end.175
  %186 = load %struct.sv*, %struct.sv** %namesv168, align 8
  %cmp179 = icmp ne %struct.sv* %186, @PL_sv_undef
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.219

land.lhs.true.181:                                ; preds = %land.lhs.true.178
  %187 = load %struct.sv*, %struct.sv** %namesv168, align 8
  %sv_flags182 = getelementptr inbounds %struct.sv, %struct.sv* %187, i32 0, i32 2
  %188 = load i32, i32* %sv_flags182, align 4
  %and183 = and i32 %188, 1048576
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %if.end.219, label %land.lhs.true.185

land.lhs.true.185:                                ; preds = %land.lhs.true.181
  %189 = load %struct.sv*, %struct.sv** %namesv168, align 8
  %sv_any186 = getelementptr inbounds %struct.sv, %struct.sv* %189, i32 0, i32 0
  %190 = load i8*, i8** %sv_any186, align 8
  %191 = bitcast i8* %190 to %struct.xpv*
  %xpv_pv187 = getelementptr inbounds %struct.xpv, %struct.xpv* %191, i32 0, i32 0
  %192 = load i8*, i8** %xpv_pv187, align 8
  %193 = load i8, i8* %192, align 1
  %conv188 = sext i8 %193 to i32
  %cmp189 = icmp eq i32 %conv188, 38
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.219

land.lhs.true.191:                                ; preds = %land.lhs.true.185
  %194 = load i32, i32* %ix, align 4
  %idxprom192 = sext i32 %194 to i64
  %195 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %arrayidx193 = getelementptr inbounds %struct.sv*, %struct.sv** %195, i64 %idxprom192
  %196 = load %struct.sv*, %struct.sv** %arrayidx193, align 8
  %sv_any194 = getelementptr inbounds %struct.sv, %struct.sv* %196, i32 0, i32 0
  %197 = load i8*, i8** %sv_any194, align 8
  %198 = bitcast i8* %197 to %struct.xpvcv*
  %xcv_flags195 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %198, i32 0, i32 17
  %199 = load i16, i16* %xcv_flags195, align 2
  %conv196 = zext i16 %199 to i32
  %and197 = and i32 %conv196, 1
  %tobool198 = icmp ne i32 %and197, 0
  br i1 %tobool198, label %if.then.199, label %if.end.219

if.then.199:                                      ; preds = %land.lhs.true.191
  %200 = load i32, i32* %ix, align 4
  %idxprom200 = sext i32 %200 to i64
  %201 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %arrayidx201 = getelementptr inbounds %struct.sv*, %struct.sv** %201, i64 %idxprom200
  %202 = load %struct.sv*, %struct.sv** %arrayidx201, align 8
  %203 = bitcast %struct.sv* %202 to %struct.cv*
  %204 = load %struct.cv*, %struct.cv** %cv, align 8
  %call202 = call %struct.cv* @S_cv_clone2(%struct.cv* %203, %struct.cv* %204)
  store %struct.cv* %call202, %struct.cv** %kid, align 8
  %205 = load i32, i32* %ix, align 4
  %idxprom203 = sext i32 %205 to i64
  %206 = load %struct.sv**, %struct.sv*** %ppad, align 8
  %arrayidx204 = getelementptr inbounds %struct.sv*, %struct.sv** %206, i64 %idxprom203
  %207 = load %struct.sv*, %struct.sv** %arrayidx204, align 8
  call void @Perl_sv_free(%struct.sv* %207)
  %208 = load %struct.cv*, %struct.cv** %kid, align 8
  %sv_any205 = getelementptr inbounds %struct.cv, %struct.cv* %208, i32 0, i32 0
  %209 = load %struct.xpvcv*, %struct.xpvcv** %sv_any205, align 8
  %xcv_flags206 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %209, i32 0, i32 17
  %210 = load i16, i16* %xcv_flags206, align 2
  %conv207 = zext i16 %210 to i32
  %or208 = or i32 %conv207, 1
  %conv209 = trunc i32 %or208 to i16
  store i16 %conv209, i16* %xcv_flags206, align 2
  %211 = load %struct.cv*, %struct.cv** %kid, align 8
  %sv_flags210 = getelementptr inbounds %struct.cv, %struct.cv* %211, i32 0, i32 2
  %212 = load i32, i32* %sv_flags210, align 4
  %or211 = or i32 %212, 1280
  store i32 %or211, i32* %sv_flags210, align 4
  %213 = load %struct.cv*, %struct.cv** %kid, align 8
  %214 = bitcast %struct.cv* %213 to %struct.sv*
  %215 = load i32, i32* %ix, align 4
  %idxprom212 = sext i32 %215 to i64
  %216 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx213 = getelementptr inbounds %struct.sv*, %struct.sv** %216, i64 %idxprom212
  store %struct.sv* %214, %struct.sv** %arrayidx213, align 8
  %217 = load %struct.cv*, %struct.cv** %kid, align 8
  %sv_any214 = getelementptr inbounds %struct.cv, %struct.cv* %217, i32 0, i32 0
  %218 = load %struct.xpvcv*, %struct.xpvcv** %sv_any214, align 8
  %xcv_flags215 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %218, i32 0, i32 17
  %219 = load i16, i16* %xcv_flags215, align 2
  %conv216 = zext i16 %219 to i32
  %or217 = or i32 %conv216, 1024
  %conv218 = trunc i32 %or217 to i16
  store i16 %conv218, i16* %xcv_flags215, align 2
  %220 = load %struct.cv*, %struct.cv** %cv, align 8
  %221 = bitcast %struct.cv* %220 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %221)
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.199, %land.lhs.true.191, %land.lhs.true.185, %land.lhs.true.181, %land.lhs.true.178, %cond.end.175
  br label %for.inc.220

for.inc.220:                                      ; preds = %if.end.219
  %222 = load i32, i32* %ix, align 4
  %dec221 = add nsw i32 %222, -1
  store i32 %dec221, i32* %ix, align 4
  br label %for.cond.164

for.end.222:                                      ; preds = %for.cond.164
  call void @Perl_pop_scope()
  %223 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any223 = getelementptr inbounds %struct.cv, %struct.cv* %223, i32 0, i32 0
  %224 = load %struct.xpvcv*, %struct.xpvcv** %sv_any223, align 8
  %xcv_flags224 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %224, i32 0, i32 17
  %225 = load i16, i16* %xcv_flags224, align 2
  %conv225 = zext i16 %225 to i32
  %and226 = and i32 %conv225, 512
  %tobool227 = icmp ne i32 %and226, 0
  br i1 %tobool227, label %if.then.228, label %if.end.235

if.then.228:                                      ; preds = %for.end.222
  %226 = load %struct.cv*, %struct.cv** %cv, align 8
  %sv_any229 = getelementptr inbounds %struct.cv, %struct.cv* %226, i32 0, i32 0
  %227 = load %struct.xpvcv*, %struct.xpvcv** %sv_any229, align 8
  %xcv_start230 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %227, i32 0, i32 8
  %228 = load %struct.op*, %struct.op** %xcv_start230, align 8
  %229 = load %struct.cv*, %struct.cv** %cv, align 8
  %call231 = call %struct.sv* @Perl_op_const_sv(%struct.op* %228, %struct.cv* %229)
  store %struct.sv* %call231, %struct.sv** %const_sv, align 8
  %230 = load %struct.cv*, %struct.cv** %cv, align 8
  %231 = bitcast %struct.cv* %230 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %231)
  %232 = load %struct.cv*, %struct.cv** %proto.addr, align 8
  %sv_any232 = getelementptr inbounds %struct.cv, %struct.cv* %232, i32 0, i32 0
  %233 = load %struct.xpvcv*, %struct.xpvcv** %sv_any232, align 8
  %xcv_stash233 = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %233, i32 0, i32 7
  %234 = load %struct.hv*, %struct.hv** %xcv_stash233, align 8
  %235 = load %struct.sv*, %struct.sv** %const_sv, align 8
  %call234 = call %struct.cv* @Perl_newCONSTSUB(%struct.hv* %234, i8* null, %struct.sv* %235)
  store %struct.cv* %call234, %struct.cv** %cv, align 8
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.228, %for.end.222
  %236 = load %struct.cv*, %struct.cv** %cv, align 8
  ret %struct.cv* %236
}

; Function Attrs: nounwind uwtable
define void @Perl_pad_fixup_inner_anons(%struct.av* %padlist, %struct.cv* %old_cv, %struct.cv* %new_cv) #0 {
entry:
  %padlist.addr = alloca %struct.av*, align 8
  %old_cv.addr = alloca %struct.cv*, align 8
  %new_cv.addr = alloca %struct.cv*, align 8
  %ix = alloca i32, align 4
  %comppad_name = alloca %struct.av*, align 8
  %comppad = alloca %struct.av*, align 8
  %namepad = alloca %struct.sv**, align 8
  %curpad = alloca %struct.sv**, align 8
  %namesv = alloca %struct.sv*, align 8
  %innercv = alloca %struct.cv*, align 8
  store %struct.av* %padlist, %struct.av** %padlist.addr, align 8
  store %struct.cv* %old_cv, %struct.cv** %old_cv.addr, align 8
  store %struct.cv* %new_cv, %struct.cv** %new_cv.addr, align 8
  %0 = load %struct.av*, %struct.av** %padlist.addr, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %0, i32 0, i32 0
  %1 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %1, i32 0, i32 0
  %2 = load i8*, i8** %xav_array, align 8
  %3 = bitcast i8* %2 to %struct.sv**
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %3, i64 0
  %4 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %5 = bitcast %struct.sv* %4 to %struct.av*
  store %struct.av* %5, %struct.av** %comppad_name, align 8
  %6 = load %struct.av*, %struct.av** %padlist.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.av, %struct.av* %6, i32 0, i32 0
  %7 = load %struct.xpvav*, %struct.xpvav** %sv_any1, align 8
  %xav_array2 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %7, i32 0, i32 0
  %8 = load i8*, i8** %xav_array2, align 8
  %9 = bitcast i8* %8 to %struct.sv**
  %arrayidx3 = getelementptr inbounds %struct.sv*, %struct.sv** %9, i64 1
  %10 = load %struct.sv*, %struct.sv** %arrayidx3, align 8
  %11 = bitcast %struct.sv* %10 to %struct.av*
  store %struct.av* %11, %struct.av** %comppad, align 8
  %12 = load %struct.av*, %struct.av** %comppad_name, align 8
  %sv_any4 = getelementptr inbounds %struct.av, %struct.av* %12, i32 0, i32 0
  %13 = load %struct.xpvav*, %struct.xpvav** %sv_any4, align 8
  %xav_array5 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %13, i32 0, i32 0
  %14 = load i8*, i8** %xav_array5, align 8
  %15 = bitcast i8* %14 to %struct.sv**
  store %struct.sv** %15, %struct.sv*** %namepad, align 8
  %16 = load %struct.av*, %struct.av** %comppad, align 8
  %sv_any6 = getelementptr inbounds %struct.av, %struct.av* %16, i32 0, i32 0
  %17 = load %struct.xpvav*, %struct.xpvav** %sv_any6, align 8
  %xav_array7 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %17, i32 0, i32 0
  %18 = load i8*, i8** %xav_array7, align 8
  %19 = bitcast i8* %18 to %struct.sv**
  store %struct.sv** %19, %struct.sv*** %curpad, align 8
  %20 = load %struct.av*, %struct.av** %comppad_name, align 8
  %sv_any8 = getelementptr inbounds %struct.av, %struct.av* %20, i32 0, i32 0
  %21 = load %struct.xpvav*, %struct.xpvav** %sv_any8, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %21, i32 0, i32 1
  %22 = load i64, i64* %xav_fill, align 8
  %conv = trunc i64 %22 to i32
  store i32 %conv, i32* %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %23 = load i32, i32* %ix, align 4
  %cmp = icmp sgt i32 %23, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.sv**, %struct.sv*** %namepad, align 8
  %arrayidx10 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom
  %26 = load %struct.sv*, %struct.sv** %arrayidx10, align 8
  store %struct.sv* %26, %struct.sv** %namesv, align 8
  %27 = load %struct.sv*, %struct.sv** %namesv, align 8
  %tobool = icmp ne %struct.sv* %27, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %28 = load %struct.sv*, %struct.sv** %namesv, align 8
  %cmp11 = icmp ne %struct.sv* %28, @PL_sv_undef
  br i1 %cmp11, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %29 = load %struct.sv*, %struct.sv** %namesv, align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any14, align 8
  %31 = bitcast i8* %30 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %31, i32 0, i32 0
  %32 = load i8*, i8** %xpv_pv, align 8
  %33 = load i8, i8* %32, align 1
  %conv15 = sext i8 %33 to i32
  %cmp16 = icmp eq i32 %conv15, 38
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.13
  %34 = load i32, i32* %ix, align 4
  %idxprom18 = sext i32 %34 to i64
  %35 = load %struct.sv**, %struct.sv*** %curpad, align 8
  %arrayidx19 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %idxprom18
  %36 = load %struct.sv*, %struct.sv** %arrayidx19, align 8
  %37 = bitcast %struct.sv* %36 to %struct.cv*
  store %struct.cv* %37, %struct.cv** %innercv, align 8
  %38 = load %struct.cv*, %struct.cv** %new_cv.addr, align 8
  %39 = load %struct.cv*, %struct.cv** %innercv, align 8
  %sv_any20 = getelementptr inbounds %struct.cv, %struct.cv* %39, i32 0, i32 0
  %40 = load %struct.xpvcv*, %struct.xpvcv** %sv_any20, align 8
  %xcv_outside = getelementptr inbounds %struct.xpvcv, %struct.xpvcv* %40, i32 0, i32 16
  store %struct.cv* %38, %struct.cv** %xcv_outside, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.13, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %41 = load i32, i32* %ix, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %ix, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_pad_push(%struct.av* %padlist, i32 %depth, i32 %has_args) #0 {
entry:
  %padlist.addr = alloca %struct.av*, align 8
  %depth.addr = alloca i32, align 4
  %has_args.addr = alloca i32, align 4
  %svp = alloca %struct.sv**, align 8
  %newpad = alloca %struct.av*, align 8
  %oldpad = alloca %struct.sv**, align 8
  %ix = alloca i32, align 4
  %names_fill = alloca i32, align 4
  %names = alloca %struct.sv**, align 8
  %sv = alloca %struct.sv*, align 8
  %name = alloca i8*, align 8
  %av = alloca %struct.av*, align 8
  store %struct.av* %padlist, %struct.av** %padlist.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i32 %has_args, i32* %has_args.addr, align 4
  %0 = load i32, i32* %depth.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load %struct.av*, %struct.av** %padlist.addr, align 8
  %sv_any = getelementptr inbounds %struct.av, %struct.av* %1, i32 0, i32 0
  %2 = load %struct.xpvav*, %struct.xpvav** %sv_any, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %2, i32 0, i32 1
  %3 = load i64, i64* %xav_fill, align 8
  %cmp = icmp sle i64 %conv, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.av*, %struct.av** %padlist.addr, align 8
  %sv_any2 = getelementptr inbounds %struct.av, %struct.av* %4, i32 0, i32 0
  %5 = load %struct.xpvav*, %struct.xpvav** %sv_any2, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %5, i32 0, i32 0
  %6 = load i8*, i8** %xav_array, align 8
  %7 = bitcast i8* %6 to %struct.sv**
  store %struct.sv** %7, %struct.sv*** %svp, align 8
  %call = call %struct.av* @Perl_newAV()
  store %struct.av* %call, %struct.av** %newpad, align 8
  %8 = load i32, i32* %depth.addr, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom = sext i32 %sub to i64
  %9 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any3, align 8
  %12 = bitcast i8* %11 to %struct.xpvav*
  %xav_array4 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %12, i32 0, i32 0
  %13 = load i8*, i8** %xav_array4, align 8
  %14 = bitcast i8* %13 to %struct.sv**
  store %struct.sv** %14, %struct.sv*** %oldpad, align 8
  %15 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx5 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 1
  %16 = load %struct.sv*, %struct.sv** %arrayidx5, align 8
  %17 = bitcast %struct.sv* %16 to %struct.av*
  %sv_any6 = getelementptr inbounds %struct.av, %struct.av* %17, i32 0, i32 0
  %18 = load %struct.xpvav*, %struct.xpvav** %sv_any6, align 8
  %xav_fill7 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %18, i32 0, i32 1
  %19 = load i64, i64* %xav_fill7, align 8
  %conv8 = trunc i64 %19 to i32
  store i32 %conv8, i32* %ix, align 4
  %20 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx9 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 0
  %21 = load %struct.sv*, %struct.sv** %arrayidx9, align 8
  %22 = bitcast %struct.sv* %21 to %struct.av*
  %sv_any10 = getelementptr inbounds %struct.av, %struct.av* %22, i32 0, i32 0
  %23 = load %struct.xpvav*, %struct.xpvav** %sv_any10, align 8
  %xav_fill11 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %23, i32 0, i32 1
  %24 = load i64, i64* %xav_fill11, align 8
  %conv12 = trunc i64 %24 to i32
  store i32 %conv12, i32* %names_fill, align 4
  %25 = load %struct.sv**, %struct.sv*** %svp, align 8
  %arrayidx13 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 0
  %26 = load %struct.sv*, %struct.sv** %arrayidx13, align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 0
  %27 = load i8*, i8** %sv_any14, align 8
  %28 = bitcast i8* %27 to %struct.xpvav*
  %xav_array15 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %28, i32 0, i32 0
  %29 = load i8*, i8** %xav_array15, align 8
  %30 = bitcast i8* %29 to %struct.sv**
  store %struct.sv** %30, %struct.sv*** %names, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load i32, i32* %ix, align 4
  %cmp16 = icmp sgt i32 %31, 0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %names_fill, align 4
  %33 = load i32, i32* %ix, align 4
  %cmp18 = icmp sge i32 %32, %33
  br i1 %cmp18, label %land.lhs.true, label %if.else.59

land.lhs.true:                                    ; preds = %for.body
  %34 = load i32, i32* %ix, align 4
  %idxprom20 = sext i32 %34 to i64
  %35 = load %struct.sv**, %struct.sv*** %names, align 8
  %arrayidx21 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %idxprom20
  %36 = load %struct.sv*, %struct.sv** %arrayidx21, align 8
  %cmp22 = icmp ne %struct.sv* %36, @PL_sv_undef
  br i1 %cmp22, label %if.then.24, label %if.else.59

if.then.24:                                       ; preds = %land.lhs.true
  %37 = load i32, i32* %ix, align 4
  %idxprom25 = sext i32 %37 to i64
  %38 = load %struct.sv**, %struct.sv*** %names, align 8
  %arrayidx26 = getelementptr inbounds %struct.sv*, %struct.sv** %38, i64 %idxprom25
  %39 = load %struct.sv*, %struct.sv** %arrayidx26, align 8
  %sv_any27 = getelementptr inbounds %struct.sv, %struct.sv* %39, i32 0, i32 0
  %40 = load i8*, i8** %sv_any27, align 8
  %41 = bitcast i8* %40 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %41, i32 0, i32 0
  %42 = load i8*, i8** %xpv_pv, align 8
  store i8* %42, i8** %name, align 8
  %43 = load i32, i32* %ix, align 4
  %idxprom28 = sext i32 %43 to i64
  %44 = load %struct.sv**, %struct.sv*** %names, align 8
  %arrayidx29 = getelementptr inbounds %struct.sv*, %struct.sv** %44, i64 %idxprom28
  %45 = load %struct.sv*, %struct.sv** %arrayidx29, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %45, i32 0, i32 2
  %46 = load i32, i32* %sv_flags, align 4
  %and = and i32 %46, 1048576
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.24
  %47 = load i8*, i8** %name, align 8
  %48 = load i8, i8* %47, align 1
  %conv30 = sext i8 %48 to i32
  %cmp31 = icmp eq i32 %conv30, 38
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %lor.lhs.false, %if.then.24
  %49 = load %struct.av*, %struct.av** %newpad, align 8
  %50 = load i32, i32* %ix, align 4
  %51 = load i32, i32* %ix, align 4
  %idxprom34 = sext i32 %51 to i64
  %52 = load %struct.sv**, %struct.sv*** %oldpad, align 8
  %arrayidx35 = getelementptr inbounds %struct.sv*, %struct.sv** %52, i64 %idxprom34
  %53 = load %struct.sv*, %struct.sv** %arrayidx35, align 8
  store %struct.sv* %53, %struct.sv** @PL_Sv, align 8
  %54 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool36 = icmp ne %struct.sv* %54, null
  br i1 %tobool36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.33
  %55 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 1
  %56 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %56, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool37 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.33
  %57 = phi i1 [ false, %if.then.33 ], [ %tobool37, %land.rhs ]
  %land.ext = zext i1 %57 to i32
  %58 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call38 = call %struct.sv** @Perl_av_store(%struct.av* %49, i32 %50, %struct.sv* %58)
  br label %if.end.58

if.else:                                          ; preds = %lor.lhs.false
  %59 = load i8*, i8** %name, align 8
  %60 = load i8, i8* %59, align 1
  %conv39 = sext i8 %60 to i32
  %cmp40 = icmp eq i32 %conv39, 64
  br i1 %cmp40, label %if.then.42, label %if.else.45

if.then.42:                                       ; preds = %if.else
  %61 = load %struct.av*, %struct.av** %newpad, align 8
  %62 = load i32, i32* %ix, align 4
  %call43 = call %struct.av* @Perl_newAV()
  %63 = bitcast %struct.av* %call43 to %struct.sv*
  store %struct.sv* %63, %struct.sv** %sv, align 8
  %call44 = call %struct.sv** @Perl_av_store(%struct.av* %61, i32 %62, %struct.sv* %63)
  br label %if.end.56

if.else.45:                                       ; preds = %if.else
  %64 = load i8*, i8** %name, align 8
  %65 = load i8, i8* %64, align 1
  %conv46 = sext i8 %65 to i32
  %cmp47 = icmp eq i32 %conv46, 37
  br i1 %cmp47, label %if.then.49, label %if.else.52

if.then.49:                                       ; preds = %if.else.45
  %66 = load %struct.av*, %struct.av** %newpad, align 8
  %67 = load i32, i32* %ix, align 4
  %call50 = call %struct.hv* @Perl_newHV()
  %68 = bitcast %struct.hv* %call50 to %struct.sv*
  store %struct.sv* %68, %struct.sv** %sv, align 8
  %call51 = call %struct.sv** @Perl_av_store(%struct.av* %66, i32 %67, %struct.sv* %68)
  br label %if.end.55

if.else.52:                                       ; preds = %if.else.45
  %69 = load %struct.av*, %struct.av** %newpad, align 8
  %70 = load i32, i32* %ix, align 4
  %call53 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call53, %struct.sv** %sv, align 8
  %call54 = call %struct.sv** @Perl_av_store(%struct.av* %69, i32 %70, %struct.sv* %call53)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.49
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.42
  %71 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags57 = getelementptr inbounds %struct.sv, %struct.sv* %71, i32 0, i32 2
  %72 = load i32, i32* %sv_flags57, align 4
  %or = or i32 %72, 1280
  store i32 %or, i32* %sv_flags57, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.56, %land.end
  br label %if.end.64

if.else.59:                                       ; preds = %land.lhs.true, %for.body
  %73 = load %struct.av*, %struct.av** %newpad, align 8
  %74 = load i32, i32* %ix, align 4
  %call60 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call60, %struct.sv** %sv, align 8
  %call61 = call %struct.sv** @Perl_av_store(%struct.av* %73, i32 %74, %struct.sv* %call60)
  %75 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags62 = getelementptr inbounds %struct.sv, %struct.sv* %75, i32 0, i32 2
  %76 = load i32, i32* %sv_flags62, align 4
  %or63 = or i32 %76, 768
  store i32 %or63, i32* %sv_flags62, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.59, %if.end.58
  br label %for.inc

for.inc:                                          ; preds = %if.end.64
  %77 = load i32, i32* %ix, align 4
  %dec = add nsw i32 %77, -1
  store i32 %dec, i32* %ix, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %78 = load i32, i32* %has_args.addr, align 4
  %tobool65 = icmp ne i32 %78, 0
  br i1 %tobool65, label %if.then.66, label %if.end.70

if.then.66:                                       ; preds = %for.end
  %call67 = call %struct.av* @Perl_newAV()
  store %struct.av* %call67, %struct.av** %av, align 8
  %79 = load %struct.av*, %struct.av** %av, align 8
  call void @Perl_av_extend(%struct.av* %79, i32 0)
  %80 = load %struct.av*, %struct.av** %newpad, align 8
  %81 = load %struct.av*, %struct.av** %av, align 8
  %82 = bitcast %struct.av* %81 to %struct.sv*
  %call68 = call %struct.sv** @Perl_av_store(%struct.av* %80, i32 0, %struct.sv* %82)
  %83 = load %struct.av*, %struct.av** %av, align 8
  %sv_any69 = getelementptr inbounds %struct.av, %struct.av* %83, i32 0, i32 0
  %84 = load %struct.xpvav*, %struct.xpvav** %sv_any69, align 8
  %xav_flags = getelementptr inbounds %struct.xpvav, %struct.xpvav* %84, i32 0, i32 9
  store i8 2, i8* %xav_flags, align 1
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.66, %for.end
  %85 = load %struct.av*, %struct.av** %padlist.addr, align 8
  %86 = load i32, i32* %depth.addr, align 4
  %87 = load %struct.av*, %struct.av** %newpad, align 8
  %88 = bitcast %struct.av* %87 to %struct.sv*
  %call71 = call %struct.sv** @Perl_av_store(%struct.av* %85, i32 %86, %struct.sv* %88)
  %89 = load i32, i32* %depth.addr, align 4
  %conv72 = sext i32 %89 to i64
  %90 = load %struct.av*, %struct.av** %padlist.addr, align 8
  %sv_any73 = getelementptr inbounds %struct.av, %struct.av* %90, i32 0, i32 0
  %91 = load %struct.xpvav*, %struct.xpvav** %sv_any73, align 8
  %xav_fill74 = getelementptr inbounds %struct.xpvav, %struct.xpvav* %91, i32 0, i32 1
  store i64 %conv72, i64* %xav_fill74, align 8
  br label %return

return:                                           ; preds = %if.end.70, %if.then
  ret void
}

declare void @Perl_push_scope() #1

declare void @Perl_av_fill(%struct.av*, i32) #1

declare void @Perl_pop_scope() #1

declare %struct.sv* @Perl_op_const_sv(%struct.op*, %struct.cv*) #1

declare %struct.cv* @Perl_newCONSTSUB(%struct.hv*, i8*, %struct.sv*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
