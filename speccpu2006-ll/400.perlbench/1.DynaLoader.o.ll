; ModuleID = 'DynaLoader.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
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

@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@.str = private unnamed_addr constant [30 x i8] c"Usage: DynaLoader::dl_error()\00", align 1
@PL_op = external global %struct.op*, align 8
@PL_curpad = external global %struct.sv**, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Not implemented\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"DynaLoader.c\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"DynaLoader::dl_error\00", align 1
@PL_sv_yes = external global %struct.sv, align 8

; Function Attrs: nounwind uwtable
define void @XS_DynaLoader_dl_error(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %RETVAL = alloca i8*, align 8
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
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 7
  %10 = load i8, i8* %op_private, align 1
  %conv7 = zext i8 %10 to i32
  %and = and i32 %conv7, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %11, i32 0, i32 3
  %12 = load i64, i64* %op_targ, align 8
  %13 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %12
  %14 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %14, %cond.true ], [ %call, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %targ, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8** %RETVAL, align 8
  %15 = load %struct.sv*, %struct.sv** %targ, align 8
  %16 = load i8*, i8** %RETVAL, align 8
  call void @Perl_sv_setpv(%struct.sv* %15, i8* %16)
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %18 = load i32, i32* %ax, align 4
  %idx.ext8 = sext i32 %18 to i64
  %add.ptr9 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idx.ext8
  %add.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr9, i64 -1
  store %struct.sv** %add.ptr10, %struct.sv*** %sp, align 8
  %19 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags, align 4
  %and11 = and i32 %20, 16384
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %cond.end
  %21 = load %struct.sv*, %struct.sv** %targ, align 8
  %call14 = call i32 @Perl_mg_set(%struct.sv* %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %cond.end
  %22 = load %struct.sv*, %struct.sv** %targ, align 8
  %23 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr16 = getelementptr inbounds %struct.sv*, %struct.sv** %23, i32 1
  store %struct.sv** %incdec.ptr16, %struct.sv*** %sp, align 8
  store %struct.sv* %22, %struct.sv** %incdec.ptr16, align 8
  store %struct.sv* %22, %struct.sv** %tmp
  %24 = load %struct.sv*, %struct.sv** %tmp
  store i64 1, i64* %tmpXSoff, align 8
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %26 = load i32, i32* %ax, align 4
  %idx.ext18 = sext i32 %26 to i64
  %add.ptr19 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idx.ext18
  %27 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %27, 1
  %add.ptr20 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr19, i64 %sub
  store %struct.sv** %add.ptr20, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_croak(i8*, ...) #1

declare %struct.sv* @Perl_sv_newmortal() #1

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @boot_DynaLoader(%struct.cv* %cv) #0 {
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
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8** %file, align 8
  %8 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), void (%struct.cv*)* @XS_DynaLoader_dl_error, i8* %8)
  %9 = load i32, i32* %ax, align 4
  %add6 = add nsw i32 %9, 0
  %idxprom = sext i32 %add6 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %11 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %12 = load i32, i32* %ax, align 4
  %idx.ext7 = sext i32 %12 to i64
  %add.ptr8 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idx.ext7
  %13 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %13, 1
  %add.ptr9 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr8, i64 %sub
  store %struct.sv** %add.ptr9, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
