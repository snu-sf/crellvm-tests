; ModuleID = 'deb.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.interpreter = type { i8 }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.sv = type { i8*, i32, i32 }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PL_curcop = external global %struct.cop*, align 8
@PL_debstash = external global %struct.hv*, align 8
@PL_debug = external global i32, align 4
@.str = private unnamed_addr constant [9 x i8] c"    =>  \00", align 1
@PL_stack_base = external global %struct.sv**, align 8
@PL_stack_sp = external global %struct.sv**, align 8
@PL_curstackinfo = external global %struct.stackinfo*, align 8
@PL_markstack_ptr = external global i32*, align 8
@PL_markstack = external global i32*, align 8

; Function Attrs: nounwind uwtable
define void @Perl_deb(i8* %pat, ...) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  store i8* %pat, i8** %pat.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_vdeb(i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %args.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  store i8* %pat, i8** %pat.addr, align 8
  store [1 x %struct.__va_list_tag]* %args, [1 x %struct.__va_list_tag]** %args.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Perl_debstackptrs() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Perl_debstack() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_stash = getelementptr inbounds %struct.cop, %struct.cop* %0, i32 0, i32 9
  %1 = load %struct.hv*, %struct.hv** %cop_stash, align 8
  %2 = load %struct.hv*, %struct.hv** @PL_debstash, align 8
  %cmp = icmp eq %struct.hv* %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load volatile i32, i32* @PL_debug, align 4
  %and = and i32 %3, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call %struct._PerlIO** @Perl_PerlIO_stderr()
  %call1 = call i32 (%struct._PerlIO**, i8*, ...) @PerlIO_printf(%struct._PerlIO** %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %4 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %5 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  %6 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  %7 = load %struct.stackinfo*, %struct.stackinfo** @PL_curstackinfo, align 8
  %si_markoff = getelementptr inbounds %struct.stackinfo, %struct.stackinfo* %7, i32 0, i32 7
  %8 = load i32, i32* %si_markoff, align 4
  %9 = load i32*, i32** @PL_markstack_ptr, align 8
  %10 = load i32*, i32** @PL_markstack, align 8
  %sub.ptr.lhs.cast2 = ptrtoint i32* %9 to i64
  %sub.ptr.rhs.cast3 = ptrtoint i32* %10 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %sub.ptr.div5 = sdiv exact i64 %sub.ptr.sub4, 4
  %conv6 = trunc i64 %sub.ptr.div5 to i32
  call void @S_deb_stack_n(%struct.sv** %4, i32 0, i32 %conv, i32 %8, i32 %conv6)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #1

declare %struct._PerlIO** @Perl_PerlIO_stderr() #1

; Function Attrs: nounwind uwtable
define internal void @S_deb_stack_n(%struct.sv** %stack_base, i32 %stack_min, i32 %stack_max, i32 %mark_min, i32 %mark_max) #0 {
entry:
  %stack_base.addr = alloca %struct.sv**, align 8
  %stack_min.addr = alloca i32, align 4
  %stack_max.addr = alloca i32, align 4
  %mark_min.addr = alloca i32, align 4
  %mark_max.addr = alloca i32, align 4
  store %struct.sv** %stack_base, %struct.sv*** %stack_base.addr, align 8
  store i32 %stack_min, i32* %stack_min.addr, align 4
  store i32 %stack_max, i32* %stack_max.addr, align 4
  store i32 %mark_min, i32* %mark_min.addr, align 4
  store i32 %mark_max, i32* %mark_max.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_deb_stack_all() #0 {
entry:
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
