; ModuleID = 'universal.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.xpv = type { i8*, i64, i64 }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
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
%struct._PerlIO = type { %struct._PerlIO*, %struct._PerlIO_funcs*, i32 }
%struct._PerlIO_funcs = type { i64, i8*, i64, i32, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)*, i64 (%struct._PerlIO**)*, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)*, i64 (%struct._PerlIO**)*, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)*, i64 (%struct._PerlIO**)*, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)*, i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i64, i32)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, void (%struct._PerlIO**)*, void (%struct._PerlIO**)*, i8* (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i8* (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, void (%struct._PerlIO**, i8*, i64)* }
%struct.PerlIO_list_s = type { i64, i64, i64, %struct.PerlIO_pair_t* }
%struct.PerlIO_pair_t = type { %struct._PerlIO_funcs*, %struct.sv* }
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.xrv = type { %struct.sv* }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.xpvuv = type { i8*, i64, i64, i64 }

@PL_sv_yes = external global %struct.sv, align 8
@.str = private unnamed_addr constant [12 x i8] c"universal.c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"UNIVERSAL::isa\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"UNIVERSAL::can\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"UNIVERSAL::VERSION\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"utf8::is_utf8\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"utf8::valid\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"utf8::encode\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"utf8::decode\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"utf8::upgrade\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"utf8::downgrade\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"utf8::native_to_unicode\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"utf8::unicode_to_native\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Internals::SvREADONLY\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"\5C[$%@];$\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Internals::SvREFCNT\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Internals::hv_clear_placeholders\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\5C%\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"PerlIO::get_layers\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"*;@\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Regexp::DESTROY\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Internals::hash_seed\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Internals::rehash_seed\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Internals::HvREHASH\00", align 1
@PL_stack_sp = external global %struct.sv**, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@.str.24 = private unnamed_addr constant [39 x i8] c"Usage: UNIVERSAL::isa(reference, kind)\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.25 = private unnamed_addr constant [42 x i8] c"Usage: UNIVERSAL::can(object-ref, method)\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"Cannot find version of an unblessed reference\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"(undef)\00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"%s does not define $%s::VERSION--version check failed\00", align 1
@PL_Sv = external global %struct.sv*, align 8
@.str.30 = private unnamed_addr constant [61 x i8] c"%s defines neither package nor VERSION--version check failed\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"%s v%vd required--this is only v%vd\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"%s version %s required--this is only version %s\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Usage: utf8::is_utf8(sv)\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"Usage: utf8::valid(sv)\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"Usage: utf8::encode(sv)\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"Usage: utf8::decode(sv)\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Usage: utf8::upgrade(sv)\00", align 1
@PL_op = external global %struct.op*, align 8
@PL_curpad = external global %struct.sv**, align 8
@.str.38 = private unnamed_addr constant [37 x i8] c"Usage: utf8::downgrade(sv, failok=0)\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"Usage: utf8::native_to_unicode(sv)\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"Usage: utf8::unicode_to_native(sv)\00", align 1
@PL_Xpv = external global %struct.xpv*, align 8
@.str.41 = private unnamed_addr constant [44 x i8] c"Usage: UNIVERSAL::hv_clear_placeholders(hv)\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"Usage: PerlIO_get_layers(filehandle[,args])\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"details\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"get_layers: unknown argument '%s'\00", align 1
@PL_stack_max = external global %struct.sv**, align 8
@.str.47 = private unnamed_addr constant [7 x i8] c"%_(%_)\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"%_\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@PL_rehash_seed = external global i64, align 8
@.str.50 = private unnamed_addr constant [29 x i8] c"Internals::HvREHASH $hashref\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@.str.52 = private unnamed_addr constant [47 x i8] c"Recursive inheritance detected in package '%s'\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"::ISA::CACHE::\00", align 1
@PL_sub_generation = external global i32, align 4
@.str.54 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@PL_curcop = external global %struct.cop*, align 8
@PL_dowarn = external global i8, align 1
@.str.55 = private unnamed_addr constant [37 x i8] c"Can't locate package %_ for @%s::ISA\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @Perl_sv_derived_from(%struct.sv* %sv, i8* %name) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %name.addr = alloca i8*, align 8
  %type = alloca i8*, align 8
  %stash = alloca %struct.hv*, align 8
  %name_stash = alloca %struct.hv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.hv* null, %struct.hv** %stash, align 8
  store i8* null, i8** %type, align 8
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i32 @Perl_mg_get(%struct.sv* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags1 = getelementptr inbounds %struct.sv, %struct.sv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags1, align 4
  %and2 = and i32 %4, 524288
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %5 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 0
  %6 = load i8*, i8** %sv_any, align 8
  %7 = bitcast i8* %6 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %7, i32 0, i32 0
  %8 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %8, %struct.sv** %sv.addr, align 8
  %9 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call5 = call i8* @Perl_sv_reftype(%struct.sv* %9, i32 0)
  store i8* %call5, i8** %type, align 8
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags6 = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 2
  %11 = load i32, i32* %sv_flags6, align 4
  %and7 = and i32 %11, 4096
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.4
  %12 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 0
  %13 = load i8*, i8** %sv_any10, align 8
  %14 = bitcast i8* %13 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %14, i32 0, i32 6
  %15 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  store %struct.hv* %15, %struct.hv** %stash, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.4
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %16 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call12 = call %struct.hv* @Perl_gv_stashsv(%struct.sv* %16, i32 0)
  store %struct.hv* %call12, %struct.hv** %stash, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end.11
  %17 = load i8*, i8** %name.addr, align 8
  %call14 = call %struct.hv* @Perl_gv_stashpv(i8* %17, i32 0)
  store %struct.hv* %call14, %struct.hv** %name_stash, align 8
  %18 = load i8*, i8** %type, align 8
  %tobool15 = icmp ne i8* %18, null
  br i1 %tobool15, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %if.end.13
  %19 = load i8*, i8** %type, align 8
  %20 = load i8*, i8** %name.addr, align 8
  %call16 = call i32 @strcmp(i8* %19, i8* %20)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true, %if.end.13
  %21 = load %struct.hv*, %struct.hv** %stash, align 8
  %tobool18 = icmp ne %struct.hv* %21, null
  br i1 %tobool18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %22 = load %struct.hv*, %struct.hv** %stash, align 8
  %23 = load i8*, i8** %name.addr, align 8
  %24 = load %struct.hv*, %struct.hv** %name_stash, align 8
  %25 = load i8*, i8** %name.addr, align 8
  %call19 = call i64 @strlen(i8* %25)
  %conv = trunc i64 %call19 to i32
  %call20 = call %struct.sv* @S_isa_lookup(%struct.hv* %22, i8* %23, %struct.hv* %24, i32 %conv, i32 0)
  %cmp = icmp eq %struct.sv* %call20, @PL_sv_yes
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %26 = phi i1 [ false, %lor.rhs ], [ %cmp, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %27 = phi i1 [ true, %land.lhs.true ], [ %26, %land.end ]
  %cond = select i1 %27, i32 1, i32 0
  %conv22 = trunc i32 %cond to i8
  ret i8 %conv22
}

declare i32 @Perl_mg_get(%struct.sv*) #1

declare i8* @Perl_sv_reftype(%struct.sv*, i32) #1

declare %struct.hv* @Perl_gv_stashsv(%struct.sv*, i32) #1

declare %struct.hv* @Perl_gv_stashpv(i8*, i32) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.sv* @S_isa_lookup(%struct.hv* %stash, i8* %name, %struct.hv* %name_stash, i32 %len, i32 %level) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %stash.addr = alloca %struct.hv*, align 8
  %name.addr = alloca i8*, align 8
  %name_stash.addr = alloca %struct.hv*, align 8
  %len.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %av = alloca %struct.av*, align 8
  %gv = alloca %struct.gv*, align 8
  %gvp = alloca %struct.gv**, align 8
  %hv = alloca %struct.hv*, align 8
  %subgen = alloca %struct.sv*, align 8
  %sv = alloca %struct.sv*, align 8
  %svp = alloca %struct.sv**, align 8
  %svp90 = alloca %struct.sv**, align 8
  %items = alloca i32, align 4
  %sv95 = alloca %struct.sv*, align 8
  %basestash = alloca %struct.hv*, align 8
  store %struct.hv* %stash, %struct.hv** %stash.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.hv* %name_stash, %struct.hv** %name_stash.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  store %struct.hv* null, %struct.hv** %hv, align 8
  store %struct.sv* null, %struct.sv** %subgen, align 8
  %0 = load %struct.hv*, %struct.hv** %name_stash.addr, align 8
  %tobool = icmp ne %struct.hv* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %2 = load %struct.hv*, %struct.hv** %name_stash.addr, align 8
  %cmp = icmp eq %struct.hv* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct.sv* @PL_sv_yes, %struct.sv** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %3, i32 0, i32 0
  %4 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %4, i32 0, i32 10
  %5 = load i8*, i8** %xhv_name, align 8
  %6 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %5, i8* %6)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct.sv* @PL_sv_yes, %struct.sv** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  store %struct.sv* @PL_sv_yes, %struct.sv** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %8 = load i32, i32* %level.addr, align 4
  %cmp8 = icmp sgt i32 %8, 100
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.7
  %9 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any10 = getelementptr inbounds %struct.hv, %struct.hv* %9, i32 0, i32 0
  %10 = load %struct.xpvhv*, %struct.xpvhv** %sv_any10, align 8
  %xhv_name11 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %10, i32 0, i32 10
  %11 = load i8*, i8** %xhv_name11, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.52, i32 0, i32 0), i8* %11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.7
  %12 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %call13 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i32 14, i32 0)
  %13 = bitcast %struct.sv** %call13 to %struct.gv**
  store %struct.gv** %13, %struct.gv*** %gvp, align 8
  %14 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %tobool14 = icmp ne %struct.gv** %14, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.40

land.lhs.true.15:                                 ; preds = %if.end.12
  %15 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %16 = load %struct.gv*, %struct.gv** %15, align 8
  store %struct.gv* %16, %struct.gv** %gv, align 8
  %cmp16 = icmp ne %struct.gv* %16, bitcast (%struct.sv* @PL_sv_undef to %struct.gv*)
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.40

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %17 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any18 = getelementptr inbounds %struct.gv, %struct.gv* %17, i32 0, i32 0
  %18 = load %struct.xpvgv*, %struct.xpvgv** %sv_any18, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %18, i32 0, i32 7
  %19 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %19, i32 0, i32 0
  %20 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  store %struct.sv* %20, %struct.sv** %subgen, align 8
  %tobool19 = icmp ne %struct.sv* %20, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.40

land.lhs.true.20:                                 ; preds = %land.lhs.true.17
  %21 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any21 = getelementptr inbounds %struct.gv, %struct.gv* %21, i32 0, i32 0
  %22 = load %struct.xpvgv*, %struct.xpvgv** %sv_any21, align 8
  %xgv_gp22 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %22, i32 0, i32 7
  %23 = load %struct.gp*, %struct.gp** %xgv_gp22, align 8
  %gp_hv = getelementptr inbounds %struct.gp, %struct.gp* %23, i32 0, i32 5
  %24 = load %struct.hv*, %struct.hv** %gp_hv, align 8
  store %struct.hv* %24, %struct.hv** %hv, align 8
  %tobool23 = icmp ne %struct.hv* %24, null
  br i1 %tobool23, label %if.then.24, label %if.end.40

if.then.24:                                       ; preds = %land.lhs.true.20
  %25 = load %struct.sv*, %struct.sv** %subgen, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags, align 4
  %and = and i32 %26, 65536
  %tobool25 = icmp ne i32 %and, 0
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.24
  %27 = load %struct.sv*, %struct.sv** %subgen, align 8
  %sv_any26 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 0
  %28 = load i8*, i8** %sv_any26, align 8
  %29 = bitcast i8* %28 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %29, i32 0, i32 3
  %30 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.24
  %31 = load %struct.sv*, %struct.sv** %subgen, align 8
  %call27 = call i64 @Perl_sv_2iv(%struct.sv* %31)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %30, %cond.true ], [ %call27, %cond.false ]
  %32 = load i32, i32* @PL_sub_generation, align 4
  %conv = zext i32 %32 to i64
  %cmp28 = icmp eq i64 %cond, %conv
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %cond.end
  %33 = load %struct.hv*, %struct.hv** %hv, align 8
  %34 = load i8*, i8** %name.addr, align 8
  %35 = load i32, i32* %len.addr, align 4
  %call31 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %33, i8* %34, i32 %35, i32 0)
  store %struct.sv** %call31, %struct.sv*** %svp, align 8
  %36 = load %struct.sv**, %struct.sv*** %svp, align 8
  %tobool32 = icmp ne %struct.sv** %36, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.37

land.lhs.true.33:                                 ; preds = %if.then.30
  %37 = load %struct.sv**, %struct.sv*** %svp, align 8
  %38 = load %struct.sv*, %struct.sv** %37, align 8
  store %struct.sv* %38, %struct.sv** %sv, align 8
  %cmp34 = icmp ne %struct.sv* %38, @PL_sv_undef
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %land.lhs.true.33
  %39 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %39, %struct.sv** %retval
  br label %return

if.end.37:                                        ; preds = %land.lhs.true.33, %if.then.30
  br label %if.end.39

if.else:                                          ; preds = %cond.end
  %40 = load %struct.hv*, %struct.hv** %hv, align 8
  call void @Perl_hv_clear(%struct.hv* %40)
  %41 = load %struct.sv*, %struct.sv** %subgen, align 8
  %42 = load i32, i32* @PL_sub_generation, align 4
  %conv38 = zext i32 %42 to i64
  call void @Perl_sv_setiv(%struct.sv* %41, i64 %conv38)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.end.37
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true.20, %land.lhs.true.17, %land.lhs.true.15, %if.end.12
  %43 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %call41 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 3, i32 0)
  %44 = bitcast %struct.sv** %call41 to %struct.gv**
  store %struct.gv** %44, %struct.gv*** %gvp, align 8
  %45 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %tobool42 = icmp ne %struct.gv** %45, null
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.137

land.lhs.true.43:                                 ; preds = %if.end.40
  %46 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %47 = load %struct.gv*, %struct.gv** %46, align 8
  store %struct.gv* %47, %struct.gv** %gv, align 8
  %cmp44 = icmp ne %struct.gv* %47, bitcast (%struct.sv* @PL_sv_undef to %struct.gv*)
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.137

land.lhs.true.46:                                 ; preds = %land.lhs.true.43
  %48 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any47 = getelementptr inbounds %struct.gv, %struct.gv* %48, i32 0, i32 0
  %49 = load %struct.xpvgv*, %struct.xpvgv** %sv_any47, align 8
  %xgv_gp48 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %49, i32 0, i32 7
  %50 = load %struct.gp*, %struct.gp** %xgv_gp48, align 8
  %gp_av = getelementptr inbounds %struct.gp, %struct.gp* %50, i32 0, i32 4
  %51 = load %struct.av*, %struct.av** %gp_av, align 8
  store %struct.av* %51, %struct.av** %av, align 8
  %tobool49 = icmp ne %struct.av* %51, null
  br i1 %tobool49, label %if.then.50, label %if.end.137

if.then.50:                                       ; preds = %land.lhs.true.46
  %52 = load %struct.hv*, %struct.hv** %hv, align 8
  %tobool51 = icmp ne %struct.hv* %52, null
  br i1 %tobool51, label %lor.lhs.false, label %if.then.53

lor.lhs.false:                                    ; preds = %if.then.50
  %53 = load %struct.sv*, %struct.sv** %subgen, align 8
  %tobool52 = icmp ne %struct.sv* %53, null
  br i1 %tobool52, label %if.end.87, label %if.then.53

if.then.53:                                       ; preds = %lor.lhs.false, %if.then.50
  %54 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %call54 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i32 14, i32 1)
  %55 = bitcast %struct.sv** %call54 to %struct.gv**
  store %struct.gv** %55, %struct.gv*** %gvp, align 8
  %56 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %57 = load %struct.gv*, %struct.gv** %56, align 8
  store %struct.gv* %57, %struct.gv** %gv, align 8
  %58 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_flags55 = getelementptr inbounds %struct.gv, %struct.gv* %58, i32 0, i32 2
  %59 = load i32, i32* %sv_flags55, align 4
  %and56 = and i32 %59, 255
  %cmp57 = icmp ne i32 %and56, 13
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.53
  %60 = load %struct.gv*, %struct.gv** %gv, align 8
  %61 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  call void @Perl_gv_init(%struct.gv* %60, %struct.hv* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i64 14, i32 1)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.then.53
  %62 = load %struct.hv*, %struct.hv** %hv, align 8
  %tobool61 = icmp ne %struct.hv* %62, null
  br i1 %tobool61, label %if.end.78, label %if.then.62

if.then.62:                                       ; preds = %if.end.60
  %63 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any63 = getelementptr inbounds %struct.gv, %struct.gv* %63, i32 0, i32 0
  %64 = load %struct.xpvgv*, %struct.xpvgv** %sv_any63, align 8
  %xgv_gp64 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %64, i32 0, i32 7
  %65 = load %struct.gp*, %struct.gp** %xgv_gp64, align 8
  %gp_hv65 = getelementptr inbounds %struct.gp, %struct.gp* %65, i32 0, i32 5
  %66 = load %struct.hv*, %struct.hv** %gp_hv65, align 8
  %tobool66 = icmp ne %struct.hv* %66, null
  br i1 %tobool66, label %cond.true.67, label %cond.false.71

cond.true.67:                                     ; preds = %if.then.62
  %67 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any68 = getelementptr inbounds %struct.gv, %struct.gv* %67, i32 0, i32 0
  %68 = load %struct.xpvgv*, %struct.xpvgv** %sv_any68, align 8
  %xgv_gp69 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %68, i32 0, i32 7
  %69 = load %struct.gp*, %struct.gp** %xgv_gp69, align 8
  %gp_hv70 = getelementptr inbounds %struct.gp, %struct.gp* %69, i32 0, i32 5
  %70 = load %struct.hv*, %struct.hv** %gp_hv70, align 8
  br label %cond.end.76

cond.false.71:                                    ; preds = %if.then.62
  %71 = load %struct.gv*, %struct.gv** %gv, align 8
  %call72 = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %71)
  %sv_any73 = getelementptr inbounds %struct.gv, %struct.gv* %call72, i32 0, i32 0
  %72 = load %struct.xpvgv*, %struct.xpvgv** %sv_any73, align 8
  %xgv_gp74 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %72, i32 0, i32 7
  %73 = load %struct.gp*, %struct.gp** %xgv_gp74, align 8
  %gp_hv75 = getelementptr inbounds %struct.gp, %struct.gp* %73, i32 0, i32 5
  %74 = load %struct.hv*, %struct.hv** %gp_hv75, align 8
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.71, %cond.true.67
  %cond77 = phi %struct.hv* [ %70, %cond.true.67 ], [ %74, %cond.false.71 ]
  store %struct.hv* %cond77, %struct.hv** %hv, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %cond.end.76, %if.end.60
  %75 = load %struct.sv*, %struct.sv** %subgen, align 8
  %tobool79 = icmp ne %struct.sv* %75, null
  br i1 %tobool79, label %if.end.86, label %if.then.80

if.then.80:                                       ; preds = %if.end.78
  %76 = load i32, i32* @PL_sub_generation, align 4
  %conv81 = zext i32 %76 to i64
  %call82 = call %struct.sv* @Perl_newSViv(i64 %conv81)
  store %struct.sv* %call82, %struct.sv** %subgen, align 8
  %77 = load %struct.sv*, %struct.sv** %subgen, align 8
  %78 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any83 = getelementptr inbounds %struct.gv, %struct.gv* %78, i32 0, i32 0
  %79 = load %struct.xpvgv*, %struct.xpvgv** %sv_any83, align 8
  %xgv_gp84 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %79, i32 0, i32 7
  %80 = load %struct.gp*, %struct.gp** %xgv_gp84, align 8
  %gp_sv85 = getelementptr inbounds %struct.gp, %struct.gp* %80, i32 0, i32 0
  store %struct.sv* %77, %struct.sv** %gp_sv85, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.80, %if.end.78
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %lor.lhs.false
  %81 = load %struct.hv*, %struct.hv** %hv, align 8
  %tobool88 = icmp ne %struct.hv* %81, null
  br i1 %tobool88, label %if.then.89, label %if.end.136

if.then.89:                                       ; preds = %if.end.87
  %82 = load %struct.av*, %struct.av** %av, align 8
  %sv_any91 = getelementptr inbounds %struct.av, %struct.av* %82, i32 0, i32 0
  %83 = load %struct.xpvav*, %struct.xpvav** %sv_any91, align 8
  %xav_array = getelementptr inbounds %struct.xpvav, %struct.xpvav* %83, i32 0, i32 0
  %84 = load i8*, i8** %xav_array, align 8
  %85 = bitcast i8* %84 to %struct.sv**
  store %struct.sv** %85, %struct.sv*** %svp90, align 8
  %86 = load %struct.av*, %struct.av** %av, align 8
  %sv_any92 = getelementptr inbounds %struct.av, %struct.av* %86, i32 0, i32 0
  %87 = load %struct.xpvav*, %struct.xpvav** %sv_any92, align 8
  %xav_fill = getelementptr inbounds %struct.xpvav, %struct.xpvav* %87, i32 0, i32 1
  %88 = load i64, i64* %xav_fill, align 8
  %add = add nsw i64 %88, 1
  %conv93 = trunc i64 %add to i32
  store i32 %conv93, i32* %items, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.134, %if.end.126, %if.then.89
  %89 = load i32, i32* %items, align 4
  %dec = add nsw i32 %89, -1
  store i32 %dec, i32* %items, align 4
  %tobool94 = icmp ne i32 %89, 0
  br i1 %tobool94, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %90 = load %struct.sv**, %struct.sv*** %svp90, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %90, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %svp90, align 8
  %91 = load %struct.sv*, %struct.sv** %90, align 8
  store %struct.sv* %91, %struct.sv** %sv95, align 8
  %92 = load %struct.sv*, %struct.sv** %sv95, align 8
  %call96 = call %struct.hv* @Perl_gv_stashsv(%struct.sv* %92, i32 0)
  store %struct.hv* %call96, %struct.hv** %basestash, align 8
  %93 = load %struct.hv*, %struct.hv** %basestash, align 8
  %tobool97 = icmp ne %struct.hv* %93, null
  br i1 %tobool97, label %if.end.127, label %if.then.98

if.then.98:                                       ; preds = %while.body
  %94 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %94, i32 0, i32 14
  %95 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp99 = icmp ne %struct.sv* %95, null
  br i1 %cmp99, label %land.lhs.true.101, label %lor.lhs.false.115

land.lhs.true.101:                                ; preds = %if.then.98
  %96 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings102 = getelementptr inbounds %struct.cop, %struct.cop* %96, i32 0, i32 14
  %97 = load %struct.sv*, %struct.sv** %cop_warnings102, align 8
  %cmp103 = icmp ne %struct.sv* %97, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp103, label %land.lhs.true.105, label %lor.lhs.false.115

land.lhs.true.105:                                ; preds = %land.lhs.true.101
  %98 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings106 = getelementptr inbounds %struct.cop, %struct.cop* %98, i32 0, i32 14
  %99 = load %struct.sv*, %struct.sv** %cop_warnings106, align 8
  %cmp107 = icmp eq %struct.sv* %99, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp107, label %if.then.123, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %land.lhs.true.105
  %100 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings110 = getelementptr inbounds %struct.cop, %struct.cop* %100, i32 0, i32 14
  %101 = load %struct.sv*, %struct.sv** %cop_warnings110, align 8
  %sv_any111 = getelementptr inbounds %struct.sv, %struct.sv* %101, i32 0, i32 0
  %102 = load i8*, i8** %sv_any111, align 8
  %103 = bitcast i8* %102 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %103, i32 0, i32 0
  %104 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %104, i64 3
  %105 = load i8, i8* %arrayidx, align 1
  %conv112 = sext i8 %105 to i32
  %and113 = and i32 %conv112, 1
  %tobool114 = icmp ne i32 %and113, 0
  br i1 %tobool114, label %if.then.123, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %lor.lhs.false.109, %land.lhs.true.101, %if.then.98
  %106 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings116 = getelementptr inbounds %struct.cop, %struct.cop* %106, i32 0, i32 14
  %107 = load %struct.sv*, %struct.sv** %cop_warnings116, align 8
  %cmp117 = icmp eq %struct.sv* %107, null
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.126

land.lhs.true.119:                                ; preds = %lor.lhs.false.115
  %108 = load i8, i8* @PL_dowarn, align 1
  %conv120 = zext i8 %108 to i32
  %and121 = and i32 %conv120, 1
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.126

if.then.123:                                      ; preds = %land.lhs.true.119, %lor.lhs.false.109, %land.lhs.true.105
  %109 = load %struct.sv*, %struct.sv** %sv95, align 8
  %110 = load %struct.hv*, %struct.hv** %stash.addr, align 8
  %sv_any124 = getelementptr inbounds %struct.hv, %struct.hv* %110, i32 0, i32 0
  %111 = load %struct.xpvhv*, %struct.xpvhv** %sv_any124, align 8
  %xhv_name125 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %111, i32 0, i32 10
  %112 = load i8*, i8** %xhv_name125, align 8
  call void (i32, i8*, ...) @Perl_warner(i32 28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.55, i32 0, i32 0), %struct.sv* %109, i8* %112)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.123, %land.lhs.true.119, %lor.lhs.false.115
  br label %while.cond

if.end.127:                                       ; preds = %while.body
  %113 = load %struct.hv*, %struct.hv** %basestash, align 8
  %114 = load i8*, i8** %name.addr, align 8
  %115 = load %struct.hv*, %struct.hv** %name_stash.addr, align 8
  %116 = load i32, i32* %len.addr, align 4
  %117 = load i32, i32* %level.addr, align 4
  %add128 = add nsw i32 %117, 1
  %call129 = call %struct.sv* @S_isa_lookup(%struct.hv* %113, i8* %114, %struct.hv* %115, i32 %116, i32 %add128)
  %cmp130 = icmp eq %struct.sv* @PL_sv_yes, %call129
  br i1 %cmp130, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %if.end.127
  %118 = load %struct.hv*, %struct.hv** %hv, align 8
  %119 = load i8*, i8** %name.addr, align 8
  %120 = load i32, i32* %len.addr, align 4
  %call133 = call %struct.sv** @Perl_hv_store(%struct.hv* %118, i8* %119, i32 %120, %struct.sv* @PL_sv_yes, i32 0)
  store %struct.sv* @PL_sv_yes, %struct.sv** %retval
  br label %return

if.end.134:                                       ; preds = %if.end.127
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %121 = load %struct.hv*, %struct.hv** %hv, align 8
  %122 = load i8*, i8** %name.addr, align 8
  %123 = load i32, i32* %len.addr, align 4
  %call135 = call %struct.sv** @Perl_hv_store(%struct.hv* %121, i8* %122, i32 %123, %struct.sv* @PL_sv_no, i32 0)
  br label %if.end.136

if.end.136:                                       ; preds = %while.end, %if.end.87
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %land.lhs.true.46, %land.lhs.true.43, %if.end.40
  store %struct.sv* @PL_sv_no, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end.137, %if.then.132, %if.then.36, %if.then.6, %if.then.2, %if.then
  %124 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %124
}

declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define void @Perl_boot_core_UNIVERSAL() #0 {
entry:
  %file = alloca i8*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %file, align 8
  %0 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), void (%struct.cv*)* @XS_UNIVERSAL_isa, i8* %0)
  %1 = load i8*, i8** %file, align 8
  %call1 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), void (%struct.cv*)* @XS_UNIVERSAL_can, i8* %1)
  %2 = load i8*, i8** %file, align 8
  %call2 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), void (%struct.cv*)* @XS_UNIVERSAL_VERSION, i8* %2)
  %3 = load i8*, i8** %file, align 8
  %call3 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (%struct.cv*)* @XS_utf8_is_utf8, i8* %3)
  %4 = load i8*, i8** %file, align 8
  %call4 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), void (%struct.cv*)* @XS_utf8_valid, i8* %4)
  %5 = load i8*, i8** %file, align 8
  %call5 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void (%struct.cv*)* @XS_utf8_encode, i8* %5)
  %6 = load i8*, i8** %file, align 8
  %call6 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void (%struct.cv*)* @XS_utf8_decode, i8* %6)
  %7 = load i8*, i8** %file, align 8
  %call7 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void (%struct.cv*)* @XS_utf8_upgrade, i8* %7)
  %8 = load i8*, i8** %file, align 8
  %call8 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), void (%struct.cv*)* @XS_utf8_downgrade, i8* %8)
  %9 = load i8*, i8** %file, align 8
  %call9 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), void (%struct.cv*)* @XS_utf8_native_to_unicode, i8* %9)
  %10 = load i8*, i8** %file, align 8
  %call10 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), void (%struct.cv*)* @XS_utf8_unicode_to_native, i8* %10)
  %11 = load i8*, i8** %file, align 8
  %call11 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), void (%struct.cv*)* @XS_Internals_SvREADONLY, i8* %11)
  %12 = bitcast %struct.cv* %call11 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  %13 = load i8*, i8** %file, align 8
  %call12 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), void (%struct.cv*)* @XS_Internals_SvREFCNT, i8* %13)
  %14 = bitcast %struct.cv* %call12 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  %15 = load i8*, i8** %file, align 8
  %call13 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), void (%struct.cv*)* @XS_Internals_hv_clear_placehold, i8* %15)
  %16 = bitcast %struct.cv* %call13 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  %17 = load i8*, i8** %file, align 8
  %call14 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), void (%struct.cv*)* @XS_PerlIO_get_layers, i8* %17)
  %18 = bitcast %struct.cv* %call14 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  %19 = load i8*, i8** %file, align 8
  %call15 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), void (%struct.cv*)* @XS_Regexp_DESTROY, i8* %19)
  %20 = load i8*, i8** %file, align 8
  %call16 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), void (%struct.cv*)* @XS_Internals_hash_seed, i8* %20)
  %21 = bitcast %struct.cv* %call16 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0))
  %22 = load i8*, i8** %file, align 8
  %call17 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), void (%struct.cv*)* @XS_Internals_rehash_seed, i8* %22)
  %23 = bitcast %struct.cv* %call17 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0))
  %24 = load i8*, i8** %file, align 8
  %call18 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), void (%struct.cv*)* @XS_Internals_HvREHASH, i8* %24)
  %25 = bitcast %struct.cv* %call18 to %struct.sv*
  call void @Perl_sv_setpv(%struct.sv* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  ret void
}

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

; Function Attrs: nounwind uwtable
define void @XS_UNIVERSAL_isa(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %name = alloca i8*, align 8
  %n_a = alloca i64, align 8
  %tmpXSoff = alloca i64, align 8
  %tmpXSoff68 = alloca i64, align 8
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
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
  %and = and i32 %13, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %14 = load %struct.sv*, %struct.sv** %sv, align 8
  %call = call i32 @Perl_mg_get(%struct.sv* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %15 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags10 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags10, align 4
  %and11 = and i32 %16, 118423552
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %lor.lhs.false, label %if.then.33

lor.lhs.false:                                    ; preds = %if.end.9
  %17 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags13 = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags13, align 4
  %and14 = and i32 %18, 524288
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.end.40, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %19 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %20, 262144
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true, label %lor.lhs.false.21

land.lhs.true:                                    ; preds = %lor.lhs.false.16
  %21 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 0
  %22 = load i8*, i8** %sv_any, align 8
  %23 = bitcast i8* %22 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %23, i32 0, i32 1
  %24 = load i64, i64* %xpv_cur, align 8
  %tobool20 = icmp ne i64 %24, 0
  br i1 %tobool20, label %if.end.40, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true, %lor.lhs.false.16
  %25 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags22 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags22, align 4
  %and23 = and i32 %26, 8192
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.then.33

land.lhs.true.25:                                 ; preds = %lor.lhs.false.21
  %27 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags26 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags26, align 4
  %and27 = and i32 %28, 67108864
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.then.33

land.lhs.true.29:                                 ; preds = %land.lhs.true.25
  %29 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any30 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any30, align 8
  %31 = bitcast i8* %30 to %struct.xpv*
  %xpv_cur31 = getelementptr inbounds %struct.xpv, %struct.xpv* %31, i32 0, i32 1
  %32 = load i64, i64* %xpv_cur31, align 8
  %tobool32 = icmp ne i64 %32, 0
  br i1 %tobool32, label %if.end.40, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.29, %land.lhs.true.25, %lor.lhs.false.21, %if.end.9
  %33 = load i32, i32* %ax, align 4
  %add34 = add nsw i32 %33, 0
  %idxprom35 = sext i32 %add34 to i64
  %34 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx36 = getelementptr inbounds %struct.sv*, %struct.sv** %34, i64 %idxprom35
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx36, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %36 = load i32, i32* %ax, align 4
  %idx.ext37 = sext i32 %36 to i64
  %add.ptr38 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %idx.ext37
  %37 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %37, 1
  %add.ptr39 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr38, i64 %sub
  store %struct.sv** %add.ptr39, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.end.40:                                        ; preds = %land.lhs.true.29, %land.lhs.true, %lor.lhs.false
  %38 = load i32, i32* %ax, align 4
  %add41 = add nsw i32 %38, 1
  %idxprom42 = sext i32 %add41 to i64
  %39 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx43 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i64 %idxprom42
  %40 = load %struct.sv*, %struct.sv** %arrayidx43, align 8
  %sv_flags44 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 2
  %41 = load i32, i32* %sv_flags44, align 4
  %and45 = and i32 %41, 262144
  %cmp46 = icmp eq i32 %and45, 262144
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.40
  %42 = load i32, i32* %ax, align 4
  %add48 = add nsw i32 %42, 1
  %idxprom49 = sext i32 %add48 to i64
  %43 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx50 = getelementptr inbounds %struct.sv*, %struct.sv** %43, i64 %idxprom49
  %44 = load %struct.sv*, %struct.sv** %arrayidx50, align 8
  %sv_any51 = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 0
  %45 = load i8*, i8** %sv_any51, align 8
  %46 = bitcast i8* %45 to %struct.xpv*
  %xpv_cur52 = getelementptr inbounds %struct.xpv, %struct.xpv* %46, i32 0, i32 1
  %47 = load i64, i64* %xpv_cur52, align 8
  store i64 %47, i64* %n_a, align 8
  %48 = load i32, i32* %ax, align 4
  %add53 = add nsw i32 %48, 1
  %idxprom54 = sext i32 %add53 to i64
  %49 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx55 = getelementptr inbounds %struct.sv*, %struct.sv** %49, i64 %idxprom54
  %50 = load %struct.sv*, %struct.sv** %arrayidx55, align 8
  %sv_any56 = getelementptr inbounds %struct.sv, %struct.sv* %50, i32 0, i32 0
  %51 = load i8*, i8** %sv_any56, align 8
  %52 = bitcast i8* %51 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %52, i32 0, i32 0
  %53 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.40
  %54 = load i32, i32* %ax, align 4
  %add57 = add nsw i32 %54, 1
  %idxprom58 = sext i32 %add57 to i64
  %55 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx59 = getelementptr inbounds %struct.sv*, %struct.sv** %55, i64 %idxprom58
  %56 = load %struct.sv*, %struct.sv** %arrayidx59, align 8
  %call60 = call i8* @Perl_sv_2pv_flags(%struct.sv* %56, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %53, %cond.true ], [ %call60, %cond.false ]
  store i8* %cond, i8** %name, align 8
  %57 = load %struct.sv*, %struct.sv** %sv, align 8
  %58 = load i8*, i8** %name, align 8
  %call61 = call signext i8 @Perl_sv_derived_from(%struct.sv* %57, i8* %58)
  %conv62 = sext i8 %call61 to i32
  %tobool63 = icmp ne i32 %conv62, 0
  %cond64 = select i1 %tobool63, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %59 = load i32, i32* %ax, align 4
  %add65 = add nsw i32 %59, 0
  %idxprom66 = sext i32 %add65 to i64
  %60 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx67 = getelementptr inbounds %struct.sv*, %struct.sv** %60, i64 %idxprom66
  store %struct.sv* %cond64, %struct.sv** %arrayidx67, align 8
  store i64 1, i64* %tmpXSoff68, align 8
  %61 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %62 = load i32, i32* %ax, align 4
  %idx.ext69 = sext i32 %62 to i64
  %add.ptr70 = getelementptr inbounds %struct.sv*, %struct.sv** %61, i64 %idx.ext69
  %63 = load i64, i64* %tmpXSoff68, align 8
  %sub71 = sub nsw i64 %63, 1
  %add.ptr72 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr70, i64 %sub71
  store %struct.sv** %add.ptr72, %struct.sv*** @PL_stack_sp, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then.33
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_UNIVERSAL_can(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %name = alloca i8*, align 8
  %rv = alloca %struct.sv*, align 8
  %pkg = alloca %struct.hv*, align 8
  %n_a = alloca i64, align 8
  %tmpXSoff = alloca i64, align 8
  %gv = alloca %struct.gv*, align 8
  %tmpXSoff92 = alloca i64, align 8
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
  store %struct.hv* null, %struct.hv** %pkg, align 8
  %8 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %8, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i32 0, i32 0))
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
  %and = and i32 %13, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %14 = load %struct.sv*, %struct.sv** %sv, align 8
  %call = call i32 @Perl_mg_get(%struct.sv* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %15 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags10 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags10, align 4
  %and11 = and i32 %16, 118423552
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %lor.lhs.false, label %if.then.33

lor.lhs.false:                                    ; preds = %if.end.9
  %17 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags13 = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags13, align 4
  %and14 = and i32 %18, 524288
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.end.40, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %19 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 2
  %20 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %20, 262144
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true, label %lor.lhs.false.21

land.lhs.true:                                    ; preds = %lor.lhs.false.16
  %21 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 0
  %22 = load i8*, i8** %sv_any, align 8
  %23 = bitcast i8* %22 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %23, i32 0, i32 1
  %24 = load i64, i64* %xpv_cur, align 8
  %tobool20 = icmp ne i64 %24, 0
  br i1 %tobool20, label %if.end.40, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true, %lor.lhs.false.16
  %25 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags22 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags22, align 4
  %and23 = and i32 %26, 8192
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.then.33

land.lhs.true.25:                                 ; preds = %lor.lhs.false.21
  %27 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags26 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 2
  %28 = load i32, i32* %sv_flags26, align 4
  %and27 = and i32 %28, 67108864
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.then.33

land.lhs.true.29:                                 ; preds = %land.lhs.true.25
  %29 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any30 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any30, align 8
  %31 = bitcast i8* %30 to %struct.xpv*
  %xpv_cur31 = getelementptr inbounds %struct.xpv, %struct.xpv* %31, i32 0, i32 1
  %32 = load i64, i64* %xpv_cur31, align 8
  %tobool32 = icmp ne i64 %32, 0
  br i1 %tobool32, label %if.end.40, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.29, %land.lhs.true.25, %lor.lhs.false.21, %if.end.9
  %33 = load i32, i32* %ax, align 4
  %add34 = add nsw i32 %33, 0
  %idxprom35 = sext i32 %add34 to i64
  %34 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx36 = getelementptr inbounds %struct.sv*, %struct.sv** %34, i64 %idxprom35
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx36, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %36 = load i32, i32* %ax, align 4
  %idx.ext37 = sext i32 %36 to i64
  %add.ptr38 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %idx.ext37
  %37 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %37, 1
  %add.ptr39 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr38, i64 %sub
  store %struct.sv** %add.ptr39, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.end.40:                                        ; preds = %land.lhs.true.29, %land.lhs.true, %lor.lhs.false
  %38 = load i32, i32* %ax, align 4
  %add41 = add nsw i32 %38, 1
  %idxprom42 = sext i32 %add41 to i64
  %39 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx43 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i64 %idxprom42
  %40 = load %struct.sv*, %struct.sv** %arrayidx43, align 8
  %sv_flags44 = getelementptr inbounds %struct.sv, %struct.sv* %40, i32 0, i32 2
  %41 = load i32, i32* %sv_flags44, align 4
  %and45 = and i32 %41, 262144
  %cmp46 = icmp eq i32 %and45, 262144
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.40
  %42 = load i32, i32* %ax, align 4
  %add48 = add nsw i32 %42, 1
  %idxprom49 = sext i32 %add48 to i64
  %43 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx50 = getelementptr inbounds %struct.sv*, %struct.sv** %43, i64 %idxprom49
  %44 = load %struct.sv*, %struct.sv** %arrayidx50, align 8
  %sv_any51 = getelementptr inbounds %struct.sv, %struct.sv* %44, i32 0, i32 0
  %45 = load i8*, i8** %sv_any51, align 8
  %46 = bitcast i8* %45 to %struct.xpv*
  %xpv_cur52 = getelementptr inbounds %struct.xpv, %struct.xpv* %46, i32 0, i32 1
  %47 = load i64, i64* %xpv_cur52, align 8
  store i64 %47, i64* %n_a, align 8
  %48 = load i32, i32* %ax, align 4
  %add53 = add nsw i32 %48, 1
  %idxprom54 = sext i32 %add53 to i64
  %49 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx55 = getelementptr inbounds %struct.sv*, %struct.sv** %49, i64 %idxprom54
  %50 = load %struct.sv*, %struct.sv** %arrayidx55, align 8
  %sv_any56 = getelementptr inbounds %struct.sv, %struct.sv* %50, i32 0, i32 0
  %51 = load i8*, i8** %sv_any56, align 8
  %52 = bitcast i8* %51 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %52, i32 0, i32 0
  %53 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.40
  %54 = load i32, i32* %ax, align 4
  %add57 = add nsw i32 %54, 1
  %idxprom58 = sext i32 %add57 to i64
  %55 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx59 = getelementptr inbounds %struct.sv*, %struct.sv** %55, i64 %idxprom58
  %56 = load %struct.sv*, %struct.sv** %arrayidx59, align 8
  %call60 = call i8* @Perl_sv_2pv_flags(%struct.sv* %56, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %53, %cond.true ], [ %call60, %cond.false ]
  store i8* %cond, i8** %name, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %rv, align 8
  %57 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags61 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 2
  %58 = load i32, i32* %sv_flags61, align 4
  %and62 = and i32 %58, 524288
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %cond.end
  %59 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any65 = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 0
  %60 = load i8*, i8** %sv_any65, align 8
  %61 = bitcast i8* %60 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %61, i32 0, i32 0
  %62 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %62, %struct.sv** %sv, align 8
  %63 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags66 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 2
  %64 = load i32, i32* %sv_flags66, align 4
  %and67 = and i32 %64, 4096
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.then.64
  %65 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any70 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 0
  %66 = load i8*, i8** %sv_any70, align 8
  %67 = bitcast i8* %66 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %67, i32 0, i32 6
  %68 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  store %struct.hv* %68, %struct.hv** %pkg, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.then.64
  br label %if.end.73

if.else:                                          ; preds = %cond.end
  %69 = load %struct.sv*, %struct.sv** %sv, align 8
  %call72 = call %struct.hv* @Perl_gv_stashsv(%struct.sv* %69, i32 0)
  store %struct.hv* %call72, %struct.hv** %pkg, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.else, %if.end.71
  %70 = load %struct.hv*, %struct.hv** %pkg, align 8
  %tobool74 = icmp ne %struct.hv* %70, null
  br i1 %tobool74, label %if.then.75, label %if.end.88

if.then.75:                                       ; preds = %if.end.73
  %71 = load %struct.hv*, %struct.hv** %pkg, align 8
  %72 = load i8*, i8** %name, align 8
  %call76 = call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %71, i8* %72, i32 0)
  store %struct.gv* %call76, %struct.gv** %gv, align 8
  %73 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool77 = icmp ne %struct.gv* %73, null
  br i1 %tobool77, label %land.lhs.true.78, label %if.end.87

land.lhs.true.78:                                 ; preds = %if.then.75
  %74 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_flags79 = getelementptr inbounds %struct.gv, %struct.gv* %74, i32 0, i32 2
  %75 = load i32, i32* %sv_flags79, align 4
  %and80 = and i32 %75, 255
  %cmp81 = icmp eq i32 %and80, 13
  br i1 %cmp81, label %if.then.83, label %if.end.87

if.then.83:                                       ; preds = %land.lhs.true.78
  %76 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any84 = getelementptr inbounds %struct.gv, %struct.gv* %76, i32 0, i32 0
  %77 = load %struct.xpvgv*, %struct.xpvgv** %sv_any84, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %77, i32 0, i32 7
  %78 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %78, i32 0, i32 7
  %79 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %80 = bitcast %struct.cv* %79 to %struct.sv*
  %call85 = call %struct.sv* @Perl_newRV(%struct.sv* %80)
  %call86 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call85)
  store %struct.sv* %call86, %struct.sv** %rv, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.83, %land.lhs.true.78, %if.then.75
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.73
  %81 = load %struct.sv*, %struct.sv** %rv, align 8
  %82 = load i32, i32* %ax, align 4
  %add89 = add nsw i32 %82, 0
  %idxprom90 = sext i32 %add89 to i64
  %83 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx91 = getelementptr inbounds %struct.sv*, %struct.sv** %83, i64 %idxprom90
  store %struct.sv* %81, %struct.sv** %arrayidx91, align 8
  store i64 1, i64* %tmpXSoff92, align 8
  %84 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %85 = load i32, i32* %ax, align 4
  %idx.ext93 = sext i32 %85 to i64
  %add.ptr94 = getelementptr inbounds %struct.sv*, %struct.sv** %84, i64 %idx.ext93
  %86 = load i64, i64* %tmpXSoff92, align 8
  %sub95 = sub nsw i64 %86, 1
  %add.ptr96 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr94, i64 %sub95
  store %struct.sv** %add.ptr96, %struct.sv*** @PL_stack_sp, align 8
  br label %return

return:                                           ; preds = %if.end.88, %if.then.33
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_UNIVERSAL_VERSION(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %pkg = alloca %struct.hv*, align 8
  %gvp = alloca %struct.gv**, align 8
  %gv = alloca %struct.gv*, align 8
  %sv = alloca %struct.sv*, align 8
  %undef = alloca i8*, align 8
  %nsv = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %req = alloca %struct.sv*, align 8
  %str = alloca i8*, align 8
  %str72 = alloca i8*, align 8
  %n = alloca double, align 8
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
  %8 = load i32, i32* %ax, align 4
  %add6 = add nsw i32 %8, 0
  %idxprom = sext i32 %add6 to i64
  %9 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 2
  %11 = load i32, i32* %sv_flags, align 4
  %and = and i32 %11, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %12, 0
  %idxprom8 = sext i32 %add7 to i64
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx9 = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %idxprom8
  %14 = load %struct.sv*, %struct.sv** %arrayidx9, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any, align 8
  %16 = bitcast i8* %15 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %16, i32 0, i32 0
  %17 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %17, %struct.sv** %sv, align 8
  %18 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags10 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags10, align 4
  %and11 = and i32 %19, 4096
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %if.then
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %20 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any14 = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any14, align 8
  %22 = bitcast i8* %21 to %struct.xpvmg*
  %xmg_stash = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %22, i32 0, i32 6
  %23 = load %struct.hv*, %struct.hv** %xmg_stash, align 8
  store %struct.hv* %23, %struct.hv** %pkg, align 8
  br label %if.end.18

if.else:                                          ; preds = %entry
  %24 = load i32, i32* %ax, align 4
  %add15 = add nsw i32 %24, 0
  %idxprom16 = sext i32 %add15 to i64
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom16
  %26 = load %struct.sv*, %struct.sv** %arrayidx17, align 8
  %call = call %struct.hv* @Perl_gv_stashsv(%struct.sv* %26, i32 0)
  store %struct.hv* %call, %struct.hv** %pkg, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.end
  %27 = load %struct.hv*, %struct.hv** %pkg, align 8
  %tobool19 = icmp ne %struct.hv* %27, null
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %28 = load %struct.hv*, %struct.hv** %pkg, align 8
  %call20 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i32 7, i32 0)
  %29 = bitcast %struct.sv** %call20 to %struct.gv**
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gv** [ %29, %cond.true ], [ null, %cond.false ]
  store %struct.gv** %cond, %struct.gv*** %gvp, align 8
  %30 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %tobool21 = icmp ne %struct.gv** %30, null
  br i1 %tobool21, label %land.lhs.true, label %if.else.32

land.lhs.true:                                    ; preds = %cond.end
  %31 = load %struct.gv**, %struct.gv*** %gvp, align 8
  %32 = load %struct.gv*, %struct.gv** %31, align 8
  store %struct.gv* %32, %struct.gv** %gv, align 8
  %sv_flags22 = getelementptr inbounds %struct.gv, %struct.gv* %32, i32 0, i32 2
  %33 = load i32, i32* %sv_flags22, align 4
  %and23 = and i32 %33, 255
  %cmp = icmp eq i32 %and23, 13
  br i1 %cmp, label %land.lhs.true.25, label %if.else.32

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %34 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any26 = getelementptr inbounds %struct.gv, %struct.gv* %34, i32 0, i32 0
  %35 = load %struct.xpvgv*, %struct.xpvgv** %sv_any26, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %35, i32 0, i32 7
  %36 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_sv = getelementptr inbounds %struct.gp, %struct.gp* %36, i32 0, i32 0
  %37 = load %struct.sv*, %struct.sv** %gp_sv, align 8
  store %struct.sv* %37, %struct.sv** %sv, align 8
  %sv_flags27 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 2
  %38 = load i32, i32* %sv_flags27, align 4
  %and28 = and i32 %38, 118423552
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %land.lhs.true.25
  %call31 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call31, %struct.sv** %nsv, align 8
  %39 = load %struct.sv*, %struct.sv** %nsv, align 8
  %40 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_setsv_flags(%struct.sv* %39, %struct.sv* %40, i32 2)
  %41 = load %struct.sv*, %struct.sv** %nsv, align 8
  store %struct.sv* %41, %struct.sv** %sv, align 8
  store i8* null, i8** %undef, align 8
  br label %if.end.33

if.else.32:                                       ; preds = %land.lhs.true.25, %land.lhs.true, %cond.end
  store %struct.sv* @PL_sv_undef, %struct.sv** %sv, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8** %undef, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.30
  %42 = load i32, i32* %items, align 4
  %cmp34 = icmp sgt i32 %42, 1
  br i1 %cmp34, label %if.then.36, label %if.end.208

if.then.36:                                       ; preds = %if.end.33
  %43 = load i32, i32* %ax, align 4
  %add37 = add nsw i32 %43, 1
  %idxprom38 = sext i32 %add37 to i64
  %44 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx39 = getelementptr inbounds %struct.sv*, %struct.sv** %44, i64 %idxprom38
  %45 = load %struct.sv*, %struct.sv** %arrayidx39, align 8
  store %struct.sv* %45, %struct.sv** %req, align 8
  %46 = load i8*, i8** %undef, align 8
  %tobool40 = icmp ne i8* %46, null
  br i1 %tobool40, label %if.then.41, label %if.end.63

if.then.41:                                       ; preds = %if.then.36
  %47 = load %struct.hv*, %struct.hv** %pkg, align 8
  %tobool42 = icmp ne %struct.hv* %47, null
  br i1 %tobool42, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %if.then.41
  %48 = load %struct.hv*, %struct.hv** %pkg, align 8
  %sv_any44 = getelementptr inbounds %struct.hv, %struct.hv* %48, i32 0, i32 0
  %49 = load %struct.xpvhv*, %struct.xpvhv** %sv_any44, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %49, i32 0, i32 10
  %50 = load i8*, i8** %xhv_name, align 8
  %51 = load %struct.hv*, %struct.hv** %pkg, align 8
  %sv_any45 = getelementptr inbounds %struct.hv, %struct.hv* %51, i32 0, i32 0
  %52 = load %struct.xpvhv*, %struct.xpvhv** %sv_any45, align 8
  %xhv_name46 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %52, i32 0, i32 10
  %53 = load i8*, i8** %xhv_name46, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.29, i32 0, i32 0), i8* %50, i8* %53)
  br label %if.end.62

if.else.47:                                       ; preds = %if.then.41
  %54 = load i32, i32* %ax, align 4
  %add48 = add nsw i32 %54, 0
  %idxprom49 = sext i32 %add48 to i64
  %55 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx50 = getelementptr inbounds %struct.sv*, %struct.sv** %55, i64 %idxprom49
  %56 = load %struct.sv*, %struct.sv** %arrayidx50, align 8
  store %struct.sv* %56, %struct.sv** @PL_Sv, align 8
  %57 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags51 = getelementptr inbounds %struct.sv, %struct.sv* %57, i32 0, i32 2
  %58 = load i32, i32* %sv_flags51, align 4
  %and52 = and i32 %58, 262144
  %cmp53 = icmp eq i32 %and52, 262144
  br i1 %cmp53, label %cond.true.55, label %cond.false.58

cond.true.55:                                     ; preds = %if.else.47
  %59 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any56 = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 0
  %60 = load i8*, i8** %sv_any56, align 8
  %61 = bitcast i8* %60 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %61, i32 0, i32 1
  %62 = load i64, i64* %xpv_cur, align 8
  store i64 %62, i64* %len, align 8
  %63 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any57 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 0
  %64 = load i8*, i8** %sv_any57, align 8
  %65 = bitcast i8* %64 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %65, i32 0, i32 0
  %66 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.60

cond.false.58:                                    ; preds = %if.else.47
  %67 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call59 = call i8* @Perl_sv_2pv_flags(%struct.sv* %67, i64* %len, i32 2)
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.58, %cond.true.55
  %cond61 = phi i8* [ %66, %cond.true.55 ], [ %call59, %cond.false.58 ]
  store i8* %cond61, i8** %str, align 8
  %68 = load i8*, i8** %str, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.30, i32 0, i32 0), i8* %68)
  br label %if.end.62

if.end.62:                                        ; preds = %cond.end.60, %if.then.43
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.36
  %69 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags64 = getelementptr inbounds %struct.sv, %struct.sv* %69, i32 0, i32 2
  %70 = load i32, i32* %sv_flags64, align 4
  %and65 = and i32 %70, 196608
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.end.139, label %land.lhs.true.67

land.lhs.true.67:                                 ; preds = %if.end.63
  %71 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags68 = getelementptr inbounds %struct.sv, %struct.sv* %71, i32 0, i32 2
  %72 = load i32, i32* %sv_flags68, align 4
  %and69 = and i32 %72, 262144
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.139

if.then.71:                                       ; preds = %land.lhs.true.67
  %73 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %73, %struct.sv** @PL_Sv, align 8
  %74 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags73 = getelementptr inbounds %struct.sv, %struct.sv* %74, i32 0, i32 2
  %75 = load i32, i32* %sv_flags73, align 4
  %and74 = and i32 %75, 262144
  %cmp75 = icmp eq i32 %and74, 262144
  br i1 %cmp75, label %cond.true.77, label %cond.false.82

cond.true.77:                                     ; preds = %if.then.71
  %76 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any78 = getelementptr inbounds %struct.sv, %struct.sv* %76, i32 0, i32 0
  %77 = load i8*, i8** %sv_any78, align 8
  %78 = bitcast i8* %77 to %struct.xpv*
  %xpv_cur79 = getelementptr inbounds %struct.xpv, %struct.xpv* %78, i32 0, i32 1
  %79 = load i64, i64* %xpv_cur79, align 8
  store i64 %79, i64* %len, align 8
  %80 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any80 = getelementptr inbounds %struct.sv, %struct.sv* %80, i32 0, i32 0
  %81 = load i8*, i8** %sv_any80, align 8
  %82 = bitcast i8* %81 to %struct.xpv*
  %xpv_pv81 = getelementptr inbounds %struct.xpv, %struct.xpv* %82, i32 0, i32 0
  %83 = load i8*, i8** %xpv_pv81, align 8
  br label %cond.end.84

cond.false.82:                                    ; preds = %if.then.71
  %84 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call83 = call i8* @Perl_sv_2pv_flags(%struct.sv* %84, i64* %len, i32 2)
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.true.77
  %cond85 = phi i8* [ %83, %cond.true.77 ], [ %call83, %cond.false.82 ]
  store i8* %cond85, i8** %str72, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.107, %cond.end.84
  %85 = load i64, i64* %len, align 8
  %tobool86 = icmp ne i64 %85, 0
  br i1 %tobool86, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %86 = load i64, i64* %len, align 8
  %dec = add i64 %86, -1
  store i64 %dec, i64* %len, align 8
  %87 = load i64, i64* %len, align 8
  %88 = load i8*, i8** %str72, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %88, i64 %87
  %89 = load i8, i8* %arrayidx87, align 1
  %conv88 = sext i8 %89 to i32
  %cmp89 = icmp sge i32 %conv88, 48
  br i1 %cmp89, label %land.lhs.true.91, label %land.lhs.true.96

land.lhs.true.91:                                 ; preds = %while.body
  %90 = load i64, i64* %len, align 8
  %91 = load i8*, i8** %str72, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %91, i64 %90
  %92 = load i8, i8* %arrayidx92, align 1
  %conv93 = sext i8 %92 to i32
  %cmp94 = icmp sle i32 %conv93, 57
  br i1 %cmp94, label %if.end.107, label %land.lhs.true.96

land.lhs.true.96:                                 ; preds = %land.lhs.true.91, %while.body
  %93 = load i64, i64* %len, align 8
  %94 = load i8*, i8** %str72, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %94, i64 %93
  %95 = load i8, i8* %arrayidx97, align 1
  %conv98 = sext i8 %95 to i32
  %cmp99 = icmp ne i32 %conv98, 46
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.107

land.lhs.true.101:                                ; preds = %land.lhs.true.96
  %96 = load i64, i64* %len, align 8
  %97 = load i8*, i8** %str72, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %97, i64 %96
  %98 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %98 to i32
  %cmp104 = icmp ne i32 %conv103, 95
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %land.lhs.true.101
  br label %while.end

if.end.107:                                       ; preds = %land.lhs.true.101, %land.lhs.true.96, %land.lhs.true.91
  br label %while.cond

while.end:                                        ; preds = %if.then.106, %while.cond
  %99 = load i64, i64* %len, align 8
  %tobool108 = icmp ne i64 %99, 0
  br i1 %tobool108, label %if.then.109, label %if.end.138

if.then.109:                                      ; preds = %while.end
  %100 = load %struct.sv*, %struct.sv** %req, align 8
  %sv_flags110 = getelementptr inbounds %struct.sv, %struct.sv* %100, i32 0, i32 2
  %101 = load i32, i32* %sv_flags110, align 4
  %and111 = and i32 %101, 131072
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %land.lhs.true.113, label %if.end.125

land.lhs.true.113:                                ; preds = %if.then.109
  %102 = load %struct.sv*, %struct.sv** %req, align 8
  %sv_flags114 = getelementptr inbounds %struct.sv, %struct.sv* %102, i32 0, i32 2
  %103 = load i32, i32* %sv_flags114, align 4
  %and115 = and i32 %103, 262144
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.then.117, label %if.end.125

if.then.117:                                      ; preds = %land.lhs.true.113
  %104 = load %struct.sv*, %struct.sv** %req, align 8
  %105 = load %struct.sv*, %struct.sv** %sv, align 8
  %call118 = call i32 @Perl_sv_cmp(%struct.sv* %104, %struct.sv* %105)
  %cmp119 = icmp eq i32 %call118, 1
  br i1 %cmp119, label %if.then.121, label %if.end.124

if.then.121:                                      ; preds = %if.then.117
  %106 = load %struct.hv*, %struct.hv** %pkg, align 8
  %sv_any122 = getelementptr inbounds %struct.hv, %struct.hv* %106, i32 0, i32 0
  %107 = load %struct.xpvhv*, %struct.xpvhv** %sv_any122, align 8
  %xhv_name123 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %107, i32 0, i32 10
  %108 = load i8*, i8** %xhv_name123, align 8
  %109 = load %struct.sv*, %struct.sv** %req, align 8
  %110 = load %struct.sv*, %struct.sv** %sv, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0), i8* %108, %struct.sv* %109, %struct.sv* %110)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.121, %if.then.117
  br label %finish

if.end.125:                                       ; preds = %land.lhs.true.113, %if.then.109
  %111 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags126 = getelementptr inbounds %struct.sv, %struct.sv* %111, i32 0, i32 2
  %112 = load i32, i32* %sv_flags126, align 4
  %and127 = and i32 %112, 255
  %cmp128 = icmp uge i32 %and127, 6
  br i1 %cmp128, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.125
  %113 = load %struct.sv*, %struct.sv** %sv, align 8
  %call130 = call signext i8 @Perl_sv_upgrade(%struct.sv* %113, i32 6)
  %conv131 = sext i8 %call130 to i32
  %tobool132 = icmp ne i32 %conv131, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.125
  %114 = phi i1 [ true, %if.end.125 ], [ %tobool132, %lor.rhs ]
  %lor.ext = zext i1 %114 to i32
  %115 = load %struct.sv*, %struct.sv** %sv, align 8
  %call133 = call double @Perl_str_to_version(%struct.sv* %115)
  %116 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any134 = getelementptr inbounds %struct.sv, %struct.sv* %116, i32 0, i32 0
  %117 = load i8*, i8** %sv_any134, align 8
  %118 = bitcast i8* %117 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %118, i32 0, i32 4
  store double %call133, double* %xnv_nv, align 8
  %119 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags135 = getelementptr inbounds %struct.sv, %struct.sv* %119, i32 0, i32 2
  %120 = load i32, i32* %sv_flags135, align 4
  %and136 = and i32 %120, -67371009
  store i32 %and136, i32* %sv_flags135, align 4
  %121 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags137 = getelementptr inbounds %struct.sv, %struct.sv* %121, i32 0, i32 2
  %122 = load i32, i32* %sv_flags137, align 4
  %or = or i32 %122, 33685504
  store i32 %or, i32* %sv_flags137, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %lor.end, %while.end
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %land.lhs.true.67, %if.end.63
  %123 = load %struct.sv*, %struct.sv** %req, align 8
  %sv_flags140 = getelementptr inbounds %struct.sv, %struct.sv* %123, i32 0, i32 2
  %124 = load i32, i32* %sv_flags140, align 4
  %and141 = and i32 %124, 131072
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %land.lhs.true.143, label %if.end.159

land.lhs.true.143:                                ; preds = %if.end.139
  %125 = load %struct.sv*, %struct.sv** %req, align 8
  %sv_flags144 = getelementptr inbounds %struct.sv, %struct.sv* %125, i32 0, i32 2
  %126 = load i32, i32* %sv_flags144, align 4
  %and145 = and i32 %126, 262144
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then.147, label %if.end.159

if.then.147:                                      ; preds = %land.lhs.true.143
  %127 = load %struct.sv*, %struct.sv** %req, align 8
  %sv_flags148 = getelementptr inbounds %struct.sv, %struct.sv* %127, i32 0, i32 2
  %128 = load i32, i32* %sv_flags148, align 4
  %and149 = and i32 %128, 131072
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %cond.true.151, label %cond.false.154

cond.true.151:                                    ; preds = %if.then.147
  %129 = load %struct.sv*, %struct.sv** %req, align 8
  %sv_any152 = getelementptr inbounds %struct.sv, %struct.sv* %129, i32 0, i32 0
  %130 = load i8*, i8** %sv_any152, align 8
  %131 = bitcast i8* %130 to %struct.xpvnv*
  %xnv_nv153 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %131, i32 0, i32 4
  %132 = load double, double* %xnv_nv153, align 8
  br label %cond.end.156

cond.false.154:                                   ; preds = %if.then.147
  %133 = load %struct.sv*, %struct.sv** %req, align 8
  %call155 = call double @Perl_sv_2nv(%struct.sv* %133)
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.154, %cond.true.151
  %cond157 = phi double [ %132, %cond.true.151 ], [ %call155, %cond.false.154 ]
  store double %cond157, double* %n, align 8
  %call158 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call158, %struct.sv** %req, align 8
  %134 = load %struct.sv*, %struct.sv** %req, align 8
  %135 = load double, double* %n, align 8
  call void @Perl_sv_setnv(%struct.sv* %134, double %135)
  br label %if.end.159

if.end.159:                                       ; preds = %cond.end.156, %land.lhs.true.143, %if.end.139
  %136 = load %struct.sv*, %struct.sv** %req, align 8
  %sv_flags160 = getelementptr inbounds %struct.sv, %struct.sv* %136, i32 0, i32 2
  %137 = load i32, i32* %sv_flags160, align 4
  %and161 = and i32 %137, 131072
  %tobool162 = icmp ne i32 %and161, 0
  br i1 %tobool162, label %cond.true.163, label %cond.false.166

cond.true.163:                                    ; preds = %if.end.159
  %138 = load %struct.sv*, %struct.sv** %req, align 8
  %sv_any164 = getelementptr inbounds %struct.sv, %struct.sv* %138, i32 0, i32 0
  %139 = load i8*, i8** %sv_any164, align 8
  %140 = bitcast i8* %139 to %struct.xpvnv*
  %xnv_nv165 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %140, i32 0, i32 4
  %141 = load double, double* %xnv_nv165, align 8
  br label %cond.end.168

cond.false.166:                                   ; preds = %if.end.159
  %142 = load %struct.sv*, %struct.sv** %req, align 8
  %call167 = call double @Perl_sv_2nv(%struct.sv* %142)
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.166, %cond.true.163
  %cond169 = phi double [ %141, %cond.true.163 ], [ %call167, %cond.false.166 ]
  %143 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags170 = getelementptr inbounds %struct.sv, %struct.sv* %143, i32 0, i32 2
  %144 = load i32, i32* %sv_flags170, align 4
  %and171 = and i32 %144, 131072
  %tobool172 = icmp ne i32 %and171, 0
  br i1 %tobool172, label %cond.true.173, label %cond.false.176

cond.true.173:                                    ; preds = %cond.end.168
  %145 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any174 = getelementptr inbounds %struct.sv, %struct.sv* %145, i32 0, i32 0
  %146 = load i8*, i8** %sv_any174, align 8
  %147 = bitcast i8* %146 to %struct.xpvnv*
  %xnv_nv175 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %147, i32 0, i32 4
  %148 = load double, double* %xnv_nv175, align 8
  br label %cond.end.178

cond.false.176:                                   ; preds = %cond.end.168
  %149 = load %struct.sv*, %struct.sv** %sv, align 8
  %call177 = call double @Perl_sv_2nv(%struct.sv* %149)
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.176, %cond.true.173
  %cond179 = phi double [ %148, %cond.true.173 ], [ %call177, %cond.false.176 ]
  %cmp180 = fcmp ogt double %cond169, %cond179
  br i1 %cmp180, label %if.then.182, label %if.end.207

if.then.182:                                      ; preds = %cond.end.178
  %150 = load %struct.hv*, %struct.hv** %pkg, align 8
  %sv_any183 = getelementptr inbounds %struct.hv, %struct.hv* %150, i32 0, i32 0
  %151 = load %struct.xpvhv*, %struct.xpvhv** %sv_any183, align 8
  %xhv_name184 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %151, i32 0, i32 10
  %152 = load i8*, i8** %xhv_name184, align 8
  %153 = load %struct.sv*, %struct.sv** %req, align 8
  %sv_flags185 = getelementptr inbounds %struct.sv, %struct.sv* %153, i32 0, i32 2
  %154 = load i32, i32* %sv_flags185, align 4
  %and186 = and i32 %154, 262144
  %cmp187 = icmp eq i32 %and186, 262144
  br i1 %cmp187, label %cond.true.189, label %cond.false.192

cond.true.189:                                    ; preds = %if.then.182
  %155 = load %struct.sv*, %struct.sv** %req, align 8
  %sv_any190 = getelementptr inbounds %struct.sv, %struct.sv* %155, i32 0, i32 0
  %156 = load i8*, i8** %sv_any190, align 8
  %157 = bitcast i8* %156 to %struct.xpv*
  %xpv_pv191 = getelementptr inbounds %struct.xpv, %struct.xpv* %157, i32 0, i32 0
  %158 = load i8*, i8** %xpv_pv191, align 8
  br label %cond.end.194

cond.false.192:                                   ; preds = %if.then.182
  %159 = load %struct.sv*, %struct.sv** %req, align 8
  %call193 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %159)
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.192, %cond.true.189
  %cond195 = phi i8* [ %158, %cond.true.189 ], [ %call193, %cond.false.192 ]
  %160 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags196 = getelementptr inbounds %struct.sv, %struct.sv* %160, i32 0, i32 2
  %161 = load i32, i32* %sv_flags196, align 4
  %and197 = and i32 %161, 262144
  %cmp198 = icmp eq i32 %and197, 262144
  br i1 %cmp198, label %cond.true.200, label %cond.false.203

cond.true.200:                                    ; preds = %cond.end.194
  %162 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any201 = getelementptr inbounds %struct.sv, %struct.sv* %162, i32 0, i32 0
  %163 = load i8*, i8** %sv_any201, align 8
  %164 = bitcast i8* %163 to %struct.xpv*
  %xpv_pv202 = getelementptr inbounds %struct.xpv, %struct.xpv* %164, i32 0, i32 0
  %165 = load i8*, i8** %xpv_pv202, align 8
  br label %cond.end.205

cond.false.203:                                   ; preds = %cond.end.194
  %166 = load %struct.sv*, %struct.sv** %sv, align 8
  %call204 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %166)
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.203, %cond.true.200
  %cond206 = phi i8* [ %165, %cond.true.200 ], [ %call204, %cond.false.203 ]
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.32, i32 0, i32 0), i8* %152, i8* %cond195, i8* %cond206)
  br label %if.end.207

if.end.207:                                       ; preds = %cond.end.205, %cond.end.178
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.end.33
  br label %finish

finish:                                           ; preds = %if.end.208, %if.end.124
  %167 = load %struct.sv*, %struct.sv** %sv, align 8
  %168 = load i32, i32* %ax, align 4
  %add209 = add nsw i32 %168, 0
  %idxprom210 = sext i32 %add209 to i64
  %169 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx211 = getelementptr inbounds %struct.sv*, %struct.sv** %169, i64 %idxprom210
  store %struct.sv* %167, %struct.sv** %arrayidx211, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %170 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %171 = load i32, i32* %ax, align 4
  %idx.ext212 = sext i32 %171 to i64
  %add.ptr213 = getelementptr inbounds %struct.sv*, %struct.sv** %170, i64 %idx.ext212
  %172 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %172, 1
  %add.ptr214 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr213, i64 %sub
  store %struct.sv** %add.ptr214, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_utf8_is_utf8(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  %tmpXSoff18 = alloca i64, align 8
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0))
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
  %and = and i32 %13, 536870912
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %14 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %14, 0
  %idxprom10 = sext i32 %add9 to i64
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx11 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idxprom10
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx11, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %16 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %17 = load i32, i32* %ax, align 4
  %idx.ext12 = sext i32 %17 to i64
  %add.ptr13 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %idx.ext12
  %18 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %18, 1
  %add.ptr14 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr13, i64 %sub
  store %struct.sv** %add.ptr14, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.else:                                          ; preds = %if.end
  %19 = load i32, i32* %ax, align 4
  %add15 = add nsw i32 %19, 0
  %idxprom16 = sext i32 %add15 to i64
  %20 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %20, i64 %idxprom16
  store %struct.sv* @PL_sv_no, %struct.sv** %arrayidx17, align 8
  store i64 1, i64* %tmpXSoff18, align 8
  %21 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %22 = load i32, i32* %ax, align 4
  %idx.ext19 = sext i32 %22 to i64
  %add.ptr20 = getelementptr inbounds %struct.sv*, %struct.sv** %21, i64 %idx.ext19
  %23 = load i64, i64* %tmpXSoff18, align 8
  %sub21 = sub nsw i64 %23, 1
  %add.ptr22 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr20, i64 %sub21
  store %struct.sv** %add.ptr22, %struct.sv*** @PL_stack_sp, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_utf8_valid(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  %tmpXSoff = alloca i64, align 8
  %tmpXSoff26 = alloca i64, align 8
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0))
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
  %and = and i32 %13, 262144
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
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %22, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %21, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %23 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags11 = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 2
  %24 = load i32, i32* %sv_flags11, align 4
  %and12 = and i32 %24, 536870912
  %tobool = icmp ne i32 %and12, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.16

lor.lhs.false:                                    ; preds = %cond.end
  %25 = load i8*, i8** %s, align 8
  %26 = load i64, i64* %len, align 8
  %call13 = call signext i8 @Perl_is_utf8_string(i8* %25, i64 %26)
  %conv14 = sext i8 %call13 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %lor.lhs.false, %cond.end
  %27 = load i32, i32* %ax, align 4
  %add17 = add nsw i32 %27, 0
  %idxprom18 = sext i32 %add17 to i64
  %28 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx19 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i64 %idxprom18
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx19, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %29 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %30 = load i32, i32* %ax, align 4
  %idx.ext20 = sext i32 %30 to i64
  %add.ptr21 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %idx.ext20
  %31 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %31, 1
  %add.ptr22 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr21, i64 %sub
  store %struct.sv** %add.ptr22, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %32 = load i32, i32* %ax, align 4
  %add23 = add nsw i32 %32, 0
  %idxprom24 = sext i32 %add23 to i64
  %33 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx25 = getelementptr inbounds %struct.sv*, %struct.sv** %33, i64 %idxprom24
  store %struct.sv* @PL_sv_no, %struct.sv** %arrayidx25, align 8
  store i64 1, i64* %tmpXSoff26, align 8
  %34 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %35 = load i32, i32* %ax, align 4
  %idx.ext27 = sext i32 %35 to i64
  %add.ptr28 = getelementptr inbounds %struct.sv*, %struct.sv** %34, i64 %idx.ext27
  %36 = load i64, i64* %tmpXSoff26, align 8
  %sub29 = sub nsw i64 %36, 1
  %add.ptr30 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr28, i64 %sub29
  store %struct.sv** %add.ptr30, %struct.sv*** @PL_stack_sp, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then.16
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_utf8_encode(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0))
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
  call void @Perl_sv_utf8_encode(%struct.sv* %12)
  store i64 0, i64* %tmpXSoff, align 8
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %14 = load i32, i32* %ax, align 4
  %idx.ext8 = sext i32 %14 to i64
  %add.ptr9 = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %idx.ext8
  %15 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %15, 1
  %add.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr9, i64 %sub
  store %struct.sv** %add.ptr10, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_utf8_decode(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %RETVAL = alloca i8, align 1
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0))
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
  %call = call signext i8 @Perl_sv_utf8_decode(%struct.sv* %12)
  store i8 %call, i8* %RETVAL, align 1
  %13 = load i8, i8* %RETVAL, align 1
  %conv8 = sext i8 %13 to i32
  %tobool = icmp ne i32 %conv8, 0
  %cond = select i1 %tobool, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %14 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %14, 0
  %idxprom10 = sext i32 %add9 to i64
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx11 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idxprom10
  store %struct.sv* %cond, %struct.sv** %arrayidx11, align 8
  %16 = load i32, i32* %ax, align 4
  %add12 = add nsw i32 %16, 0
  %idxprom13 = sext i32 %add12 to i64
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx14 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idxprom13
  %18 = load %struct.sv*, %struct.sv** %arrayidx14, align 8
  %call15 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %18)
  store i64 1, i64* %tmpXSoff, align 8
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %20 = load i32, i32* %ax, align 4
  %idx.ext16 = sext i32 %20 to i64
  %add.ptr17 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idx.ext16
  %21 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %21, 1
  %add.ptr18 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr17, i64 %sub
  store %struct.sv** %add.ptr18, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_utf8_upgrade(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %RETVAL = alloca i64, align 8
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
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %9, 0
  %idxprom = sext i32 %add7 to i64
  %10 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %11, %struct.sv** %sv, align 8
  %12 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_private = getelementptr inbounds %struct.op, %struct.op* %12, i32 0, i32 7
  %13 = load i8, i8* %op_private, align 1
  %conv8 = zext i8 %13 to i32
  %and = and i32 %conv8, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %14, i32 0, i32 3
  %15 = load i64, i64* %op_targ, align 8
  %16 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx9 = getelementptr inbounds %struct.sv*, %struct.sv** %16, i64 %15
  %17 = load %struct.sv*, %struct.sv** %arrayidx9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call %struct.sv* @Perl_sv_newmortal()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %17, %cond.true ], [ %call, %cond.false ]
  store %struct.sv* %cond, %struct.sv** %targ, align 8
  %18 = load %struct.sv*, %struct.sv** %sv, align 8
  %call10 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %18, i32 2)
  store i64 %call10, i64* %RETVAL, align 8
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %20 = load i32, i32* %ax, align 4
  %idx.ext11 = sext i32 %20 to i64
  %add.ptr12 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idx.ext11
  %add.ptr13 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr12, i64 -1
  store %struct.sv** %add.ptr13, %struct.sv*** %sp, align 8
  %21 = load %struct.sv*, %struct.sv** %targ, align 8
  %22 = load i64, i64* %RETVAL, align 8
  call void @Perl_sv_setiv(%struct.sv* %21, i64 %22)
  %23 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %23, i32 0, i32 2
  %24 = load i32, i32* %sv_flags, align 4
  %and14 = and i32 %24, 16384
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %cond.end
  %25 = load %struct.sv*, %struct.sv** %targ, align 8
  %call17 = call i32 @Perl_mg_set(%struct.sv* %25)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %cond.end
  %26 = load %struct.sv*, %struct.sv** %targ, align 8
  %27 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.sv*, %struct.sv** %27, i32 1
  store %struct.sv** %incdec.ptr19, %struct.sv*** %sp, align 8
  store %struct.sv* %26, %struct.sv** %incdec.ptr19, align 8
  store %struct.sv* %26, %struct.sv** %tmp
  %28 = load %struct.sv*, %struct.sv** %tmp
  store i64 1, i64* %tmpXSoff, align 8
  %29 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %30 = load i32, i32* %ax, align 4
  %idx.ext21 = sext i32 %30 to i64
  %add.ptr22 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %idx.ext21
  %31 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %31, 1
  %add.ptr23 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr22, i64 %sub
  store %struct.sv** %add.ptr23, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_utf8_downgrade(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %failok = alloca i8, align 1
  %RETVAL = alloca i8, align 1
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
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %10, 0
  %idxprom = sext i32 %add9 to i64
  %11 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 %idxprom
  %12 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %12, %struct.sv** %sv, align 8
  %13 = load i32, i32* %items, align 4
  %cmp10 = icmp slt i32 %13, 2
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  store i8 0, i8* %failok, align 1
  br label %if.end.24

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %ax, align 4
  %add13 = add nsw i32 %14, 1
  %idxprom14 = sext i32 %add13 to i64
  %15 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx15 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 %idxprom14
  %16 = load %struct.sv*, %struct.sv** %arrayidx15, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags, align 4
  %and = and i32 %17, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %18 = load i32, i32* %ax, align 4
  %add16 = add nsw i32 %18, 1
  %idxprom17 = sext i32 %add16 to i64
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx18 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idxprom17
  %20 = load %struct.sv*, %struct.sv** %arrayidx18, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any, align 8
  %22 = bitcast i8* %21 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %22, i32 0, i32 3
  %23 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %24 = load i32, i32* %ax, align 4
  %add19 = add nsw i32 %24, 1
  %idxprom20 = sext i32 %add19 to i64
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx21 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom20
  %26 = load %struct.sv*, %struct.sv** %arrayidx21, align 8
  %call = call i64 @Perl_sv_2iv(%struct.sv* %26)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %23, %cond.true ], [ %call, %cond.false ]
  %conv22 = trunc i64 %cond to i32
  %conv23 = trunc i32 %conv22 to i8
  store i8 %conv23, i8* %failok, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %cond.end, %if.then.12
  %27 = load %struct.sv*, %struct.sv** %sv, align 8
  %28 = load i8, i8* %failok, align 1
  %call25 = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %27, i8 signext %28)
  store i8 %call25, i8* %RETVAL, align 1
  %29 = load i8, i8* %RETVAL, align 1
  %conv26 = sext i8 %29 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  %cond28 = select i1 %tobool27, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %30 = load i32, i32* %ax, align 4
  %add29 = add nsw i32 %30, 0
  %idxprom30 = sext i32 %add29 to i64
  %31 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx31 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %idxprom30
  store %struct.sv* %cond28, %struct.sv** %arrayidx31, align 8
  %32 = load i32, i32* %ax, align 4
  %add32 = add nsw i32 %32, 0
  %idxprom33 = sext i32 %add32 to i64
  %33 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx34 = getelementptr inbounds %struct.sv*, %struct.sv** %33, i64 %idxprom33
  %34 = load %struct.sv*, %struct.sv** %arrayidx34, align 8
  %call35 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %34)
  store i64 1, i64* %tmpXSoff, align 8
  %35 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %36 = load i32, i32* %ax, align 4
  %idx.ext36 = sext i32 %36 to i64
  %add.ptr37 = getelementptr inbounds %struct.sv*, %struct.sv** %35, i64 %idx.ext36
  %37 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %37, 1
  %add.ptr38 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr37, i64 %sub
  store %struct.sv** %add.ptr38, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_utf8_native_to_unicode(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %uv = alloca i64, align 8
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
  %8 = load i32, i32* %ax, align 4
  %add6 = add nsw i32 %8, 0
  %idxprom = sext i32 %add6 to i64
  %9 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 2
  %11 = load i32, i32* %sv_flags, align 4
  %and = and i32 %11, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %12, 0
  %idxprom8 = sext i32 %add7 to i64
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx9 = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %idxprom8
  %14 = load %struct.sv*, %struct.sv** %arrayidx9, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any, align 8
  %16 = bitcast i8* %15 to %struct.xpvuv*
  %xuv_uv = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %16, i32 0, i32 3
  %17 = load i64, i64* %xuv_uv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %18, 0
  %idxprom11 = sext i32 %add10 to i64
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idxprom11
  %20 = load %struct.sv*, %struct.sv** %arrayidx12, align 8
  %call = call i64 @Perl_sv_2uv(%struct.sv* %20)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %17, %cond.true ], [ %call, %cond.false ]
  store i64 %cond, i64* %uv, align 8
  %21 = load i32, i32* %items, align 4
  %cmp = icmp sgt i32 %21, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %22 = load i64, i64* %uv, align 8
  %call14 = call %struct.sv* @Perl_newSViv(i64 %22)
  %call15 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call14)
  %23 = load i32, i32* %ax, align 4
  %add16 = add nsw i32 %23, 0
  %idxprom17 = sext i32 %add16 to i64
  %24 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx18 = getelementptr inbounds %struct.sv*, %struct.sv** %24, i64 %idxprom17
  store %struct.sv* %call15, %struct.sv** %arrayidx18, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %26 = load i32, i32* %ax, align 4
  %idx.ext19 = sext i32 %26 to i64
  %add.ptr20 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idx.ext19
  %27 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %27, 1
  %add.ptr21 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr20, i64 %sub
  store %struct.sv** %add.ptr21, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_utf8_unicode_to_native(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %uv = alloca i64, align 8
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
  %8 = load i32, i32* %ax, align 4
  %add6 = add nsw i32 %8, 0
  %idxprom = sext i32 %add6 to i64
  %9 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 2
  %11 = load i32, i32* %sv_flags, align 4
  %and = and i32 %11, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %12, 0
  %idxprom8 = sext i32 %add7 to i64
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx9 = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %idxprom8
  %14 = load %struct.sv*, %struct.sv** %arrayidx9, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any, align 8
  %16 = bitcast i8* %15 to %struct.xpvuv*
  %xuv_uv = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %16, i32 0, i32 3
  %17 = load i64, i64* %xuv_uv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %18, 0
  %idxprom11 = sext i32 %add10 to i64
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idxprom11
  %20 = load %struct.sv*, %struct.sv** %arrayidx12, align 8
  %call = call i64 @Perl_sv_2uv(%struct.sv* %20)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %17, %cond.true ], [ %call, %cond.false ]
  store i64 %cond, i64* %uv, align 8
  %21 = load i32, i32* %items, align 4
  %cmp = icmp sgt i32 %21, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %22 = load i64, i64* %uv, align 8
  %call14 = call %struct.sv* @Perl_newSViv(i64 %22)
  %call15 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call14)
  %23 = load i32, i32* %ax, align 4
  %add16 = add nsw i32 %23, 0
  %idxprom17 = sext i32 %add16 to i64
  %24 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx18 = getelementptr inbounds %struct.sv*, %struct.sv** %24, i64 %idxprom17
  store %struct.sv* %call15, %struct.sv** %arrayidx18, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %26 = load i32, i32* %ax, align 4
  %idx.ext19 = sext i32 %26 to i64
  %add.ptr20 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idx.ext19
  %27 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %27, 1
  %add.ptr21 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr20, i64 %sub
  store %struct.sv** %add.ptr21, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: nounwind uwtable
define void @XS_Internals_SvREADONLY(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  %tmpXSoff18 = alloca i64, align 8
  %tmpXSoff92 = alloca i64, align 8
  %tmpXSoff103 = alloca i64, align 8
  %tmpXSoff112 = alloca i64, align 8
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
  %8 = load i32, i32* %ax, align 4
  %add6 = add nsw i32 %8, 0
  %idxprom = sext i32 %add6 to i64
  %9 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any, align 8
  %12 = bitcast i8* %11 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %12, i32 0, i32 0
  %13 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %13, %struct.sv** %sv, align 8
  %14 = load i32, i32* %items, align 4
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %if.then, label %if.else.23

if.then:                                          ; preds = %entry
  %15 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags, align 4
  %and = and i32 %16, 8388608
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %17 = load i32, i32* %ax, align 4
  %add9 = add nsw i32 %17, 0
  %idxprom10 = sext i32 %add9 to i64
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx11 = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %idxprom10
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx11, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %20 = load i32, i32* %ax, align 4
  %idx.ext12 = sext i32 %20 to i64
  %add.ptr13 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idx.ext12
  %21 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %21, 1
  %add.ptr14 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr13, i64 %sub
  store %struct.sv** %add.ptr14, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.else:                                          ; preds = %if.then
  %22 = load i32, i32* %ax, align 4
  %add15 = add nsw i32 %22, 0
  %idxprom16 = sext i32 %add15 to i64
  %23 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx17 = getelementptr inbounds %struct.sv*, %struct.sv** %23, i64 %idxprom16
  store %struct.sv* @PL_sv_no, %struct.sv** %arrayidx17, align 8
  store i64 1, i64* %tmpXSoff18, align 8
  %24 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %25 = load i32, i32* %ax, align 4
  %idx.ext19 = sext i32 %25 to i64
  %add.ptr20 = getelementptr inbounds %struct.sv*, %struct.sv** %24, i64 %idx.ext19
  %26 = load i64, i64* %tmpXSoff18, align 8
  %sub21 = sub nsw i64 %26, 1
  %add.ptr22 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr20, i64 %sub21
  store %struct.sv** %add.ptr22, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.else.23:                                       ; preds = %entry
  %27 = load i32, i32* %items, align 4
  %cmp24 = icmp eq i32 %27, 2
  br i1 %cmp24, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.else.23
  %28 = load i32, i32* %ax, align 4
  %add27 = add nsw i32 %28, 1
  %idxprom28 = sext i32 %add27 to i64
  %29 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx29 = getelementptr inbounds %struct.sv*, %struct.sv** %29, i64 %idxprom28
  %30 = load %struct.sv*, %struct.sv** %arrayidx29, align 8
  %tobool30 = icmp ne %struct.sv* %30, null
  br i1 %tobool30, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.26
  br i1 false, label %if.then.87, label %if.else.97

cond.false:                                       ; preds = %if.then.26
  %31 = load i32, i32* %ax, align 4
  %add31 = add nsw i32 %31, 1
  %idxprom32 = sext i32 %add31 to i64
  %32 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx33 = getelementptr inbounds %struct.sv*, %struct.sv** %32, i64 %idxprom32
  %33 = load %struct.sv*, %struct.sv** %arrayidx33, align 8
  %sv_flags34 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 2
  %34 = load i32, i32* %sv_flags34, align 4
  %and35 = and i32 %34, 262144
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %cond.true.37, label %cond.false.53

cond.true.37:                                     ; preds = %cond.false
  %35 = load i32, i32* %ax, align 4
  %add38 = add nsw i32 %35, 1
  %idxprom39 = sext i32 %add38 to i64
  %36 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx40 = getelementptr inbounds %struct.sv*, %struct.sv** %36, i64 %idxprom39
  %37 = load %struct.sv*, %struct.sv** %arrayidx40, align 8
  %sv_any41 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 0
  %38 = load i8*, i8** %sv_any41, align 8
  %39 = bitcast i8* %38 to %struct.xpv*
  store %struct.xpv* %39, %struct.xpv** @PL_Xpv, align 8
  %tobool42 = icmp ne %struct.xpv* %39, null
  br i1 %tobool42, label %land.lhs.true, label %cond.false.52

land.lhs.true:                                    ; preds = %cond.true.37
  %40 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %40, i32 0, i32 1
  %41 = load i64, i64* %xpv_cur, align 8
  %cmp43 = icmp ugt i64 %41, 1
  br i1 %cmp43, label %cond.true.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %42 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur45 = getelementptr inbounds %struct.xpv, %struct.xpv* %42, i32 0, i32 1
  %43 = load i64, i64* %xpv_cur45, align 8
  %tobool46 = icmp ne i64 %43, 0
  br i1 %tobool46, label %land.lhs.true.47, label %cond.false.52

land.lhs.true.47:                                 ; preds = %lor.lhs.false
  %44 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %44, i32 0, i32 0
  %45 = load i8*, i8** %xpv_pv, align 8
  %46 = load i8, i8* %45, align 1
  %conv48 = sext i8 %46 to i32
  %cmp49 = icmp ne i32 %conv48, 48
  br i1 %cmp49, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %land.lhs.true.47, %land.lhs.true
  br i1 true, label %if.then.87, label %if.else.97

cond.false.52:                                    ; preds = %land.lhs.true.47, %lor.lhs.false, %cond.true.37
  br i1 false, label %if.then.87, label %if.else.97

cond.false.53:                                    ; preds = %cond.false
  %47 = load i32, i32* %ax, align 4
  %add54 = add nsw i32 %47, 1
  %idxprom55 = sext i32 %add54 to i64
  %48 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx56 = getelementptr inbounds %struct.sv*, %struct.sv** %48, i64 %idxprom55
  %49 = load %struct.sv*, %struct.sv** %arrayidx56, align 8
  %sv_flags57 = getelementptr inbounds %struct.sv, %struct.sv* %49, i32 0, i32 2
  %50 = load i32, i32* %sv_flags57, align 4
  %and58 = and i32 %50, 65536
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %cond.true.60, label %cond.false.67

cond.true.60:                                     ; preds = %cond.false.53
  %51 = load i32, i32* %ax, align 4
  %add61 = add nsw i32 %51, 1
  %idxprom62 = sext i32 %add61 to i64
  %52 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx63 = getelementptr inbounds %struct.sv*, %struct.sv** %52, i64 %idxprom62
  %53 = load %struct.sv*, %struct.sv** %arrayidx63, align 8
  %sv_any64 = getelementptr inbounds %struct.sv, %struct.sv* %53, i32 0, i32 0
  %54 = load i8*, i8** %sv_any64, align 8
  %55 = bitcast i8* %54 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %55, i32 0, i32 3
  %56 = load i64, i64* %xiv_iv, align 8
  %cmp65 = icmp ne i64 %56, 0
  br i1 %cmp65, label %if.then.87, label %if.else.97

cond.false.67:                                    ; preds = %cond.false.53
  %57 = load i32, i32* %ax, align 4
  %add68 = add nsw i32 %57, 1
  %idxprom69 = sext i32 %add68 to i64
  %58 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx70 = getelementptr inbounds %struct.sv*, %struct.sv** %58, i64 %idxprom69
  %59 = load %struct.sv*, %struct.sv** %arrayidx70, align 8
  %sv_flags71 = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 2
  %60 = load i32, i32* %sv_flags71, align 4
  %and72 = and i32 %60, 131072
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %cond.true.74, label %cond.false.81

cond.true.74:                                     ; preds = %cond.false.67
  %61 = load i32, i32* %ax, align 4
  %add75 = add nsw i32 %61, 1
  %idxprom76 = sext i32 %add75 to i64
  %62 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx77 = getelementptr inbounds %struct.sv*, %struct.sv** %62, i64 %idxprom76
  %63 = load %struct.sv*, %struct.sv** %arrayidx77, align 8
  %sv_any78 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 0
  %64 = load i8*, i8** %sv_any78, align 8
  %65 = bitcast i8* %64 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %65, i32 0, i32 4
  %66 = load double, double* %xnv_nv, align 8
  %cmp79 = fcmp une double %66, 0.000000e+00
  br i1 %cmp79, label %if.then.87, label %if.else.97

cond.false.81:                                    ; preds = %cond.false.67
  %67 = load i32, i32* %ax, align 4
  %add82 = add nsw i32 %67, 1
  %idxprom83 = sext i32 %add82 to i64
  %68 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx84 = getelementptr inbounds %struct.sv*, %struct.sv** %68, i64 %idxprom83
  %69 = load %struct.sv*, %struct.sv** %arrayidx84, align 8
  %call = call signext i8 @Perl_sv_2bool(%struct.sv* %69)
  %conv85 = sext i8 %call to i32
  %tobool86 = icmp ne i32 %conv85, 0
  br i1 %tobool86, label %if.then.87, label %if.else.97

if.then.87:                                       ; preds = %cond.false.81, %cond.true.74, %cond.true.60, %cond.false.52, %cond.true.51, %cond.true
  %70 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags88 = getelementptr inbounds %struct.sv, %struct.sv* %70, i32 0, i32 2
  %71 = load i32, i32* %sv_flags88, align 4
  %or = or i32 %71, 8388608
  store i32 %or, i32* %sv_flags88, align 4
  %72 = load i32, i32* %ax, align 4
  %add89 = add nsw i32 %72, 0
  %idxprom90 = sext i32 %add89 to i64
  %73 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx91 = getelementptr inbounds %struct.sv*, %struct.sv** %73, i64 %idxprom90
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx91, align 8
  store i64 1, i64* %tmpXSoff92, align 8
  %74 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %75 = load i32, i32* %ax, align 4
  %idx.ext93 = sext i32 %75 to i64
  %add.ptr94 = getelementptr inbounds %struct.sv*, %struct.sv** %74, i64 %idx.ext93
  %76 = load i64, i64* %tmpXSoff92, align 8
  %sub95 = sub nsw i64 %76, 1
  %add.ptr96 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr94, i64 %sub95
  store %struct.sv** %add.ptr96, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.else.97:                                       ; preds = %cond.false.81, %cond.true.74, %cond.true.60, %cond.false.52, %cond.true.51, %cond.true
  %77 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags98 = getelementptr inbounds %struct.sv, %struct.sv* %77, i32 0, i32 2
  %78 = load i32, i32* %sv_flags98, align 4
  %and99 = and i32 %78, -8388609
  store i32 %and99, i32* %sv_flags98, align 4
  %79 = load i32, i32* %ax, align 4
  %add100 = add nsw i32 %79, 0
  %idxprom101 = sext i32 %add100 to i64
  %80 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx102 = getelementptr inbounds %struct.sv*, %struct.sv** %80, i64 %idxprom101
  store %struct.sv* @PL_sv_no, %struct.sv** %arrayidx102, align 8
  store i64 1, i64* %tmpXSoff103, align 8
  %81 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %82 = load i32, i32* %ax, align 4
  %idx.ext104 = sext i32 %82 to i64
  %add.ptr105 = getelementptr inbounds %struct.sv*, %struct.sv** %81, i64 %idx.ext104
  %83 = load i64, i64* %tmpXSoff103, align 8
  %sub106 = sub nsw i64 %83, 1
  %add.ptr107 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr105, i64 %sub106
  store %struct.sv** %add.ptr107, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.end:                                           ; preds = %if.else.23
  br label %if.end.108

if.end.108:                                       ; preds = %if.end
  %84 = load i32, i32* %ax, align 4
  %add109 = add nsw i32 %84, 0
  %idxprom110 = sext i32 %add109 to i64
  %85 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx111 = getelementptr inbounds %struct.sv*, %struct.sv** %85, i64 %idxprom110
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx111, align 8
  store i64 1, i64* %tmpXSoff112, align 8
  %86 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %87 = load i32, i32* %ax, align 4
  %idx.ext113 = sext i32 %87 to i64
  %add.ptr114 = getelementptr inbounds %struct.sv*, %struct.sv** %86, i64 %idx.ext113
  %88 = load i64, i64* %tmpXSoff112, align 8
  %sub115 = sub nsw i64 %88, 1
  %add.ptr116 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr114, i64 %sub115
  store %struct.sv** %add.ptr116, %struct.sv*** @PL_stack_sp, align 8
  br label %return

return:                                           ; preds = %if.end.108, %if.else.97, %if.then.87, %if.else, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Internals_SvREFCNT(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  %tmpXSoff40 = alloca i64, align 8
  %tmpXSoff49 = alloca i64, align 8
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
  %8 = load i32, i32* %ax, align 4
  %add6 = add nsw i32 %8, 0
  %idxprom = sext i32 %add6 to i64
  %9 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any, align 8
  %12 = bitcast i8* %11 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %12, i32 0, i32 0
  %13 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  store %struct.sv* %13, %struct.sv** %sv, align 8
  %14 = load i32, i32* %items, align 4
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 1
  %16 = load i32, i32* %sv_refcnt, align 4
  %sub = sub i32 %16, 1
  %conv8 = zext i32 %sub to i64
  %call = call %struct.sv* @Perl_newSViv(i64 %conv8)
  %call9 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call)
  %17 = load i32, i32* %ax, align 4
  %add10 = add nsw i32 %17, 0
  %idxprom11 = sext i32 %add10 to i64
  %18 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx12 = getelementptr inbounds %struct.sv*, %struct.sv** %18, i64 %idxprom11
  store %struct.sv* %call9, %struct.sv** %arrayidx12, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %19 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %20 = load i32, i32* %ax, align 4
  %idx.ext13 = sext i32 %20 to i64
  %add.ptr14 = getelementptr inbounds %struct.sv*, %struct.sv** %19, i64 %idx.ext13
  %21 = load i64, i64* %tmpXSoff, align 8
  %sub15 = sub nsw i64 %21, 1
  %add.ptr16 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr14, i64 %sub15
  store %struct.sv** %add.ptr16, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.else:                                          ; preds = %entry
  %22 = load i32, i32* %items, align 4
  %cmp17 = icmp eq i32 %22, 2
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.else
  %23 = load i32, i32* %ax, align 4
  %add20 = add nsw i32 %23, 1
  %idxprom21 = sext i32 %add20 to i64
  %24 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx22 = getelementptr inbounds %struct.sv*, %struct.sv** %24, i64 %idxprom21
  %25 = load %struct.sv*, %struct.sv** %arrayidx22, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags, align 4
  %and = and i32 %26, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  %27 = load i32, i32* %ax, align 4
  %add23 = add nsw i32 %27, 1
  %idxprom24 = sext i32 %add23 to i64
  %28 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx25 = getelementptr inbounds %struct.sv*, %struct.sv** %28, i64 %idxprom24
  %29 = load %struct.sv*, %struct.sv** %arrayidx25, align 8
  %sv_any26 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any26, align 8
  %31 = bitcast i8* %30 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %31, i32 0, i32 3
  %32 = load i64, i64* %xiv_iv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  %33 = load i32, i32* %ax, align 4
  %add27 = add nsw i32 %33, 1
  %idxprom28 = sext i32 %add27 to i64
  %34 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx29 = getelementptr inbounds %struct.sv*, %struct.sv** %34, i64 %idxprom28
  %35 = load %struct.sv*, %struct.sv** %arrayidx29, align 8
  %call30 = call i64 @Perl_sv_2iv(%struct.sv* %35)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %32, %cond.true ], [ %call30, %cond.false ]
  %conv31 = trunc i64 %cond to i32
  %36 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_refcnt32 = getelementptr inbounds %struct.sv, %struct.sv* %36, i32 0, i32 1
  store i32 %conv31, i32* %sv_refcnt32, align 4
  %37 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_refcnt33 = getelementptr inbounds %struct.sv, %struct.sv* %37, i32 0, i32 1
  %38 = load i32, i32* %sv_refcnt33, align 4
  %conv34 = zext i32 %38 to i64
  %call35 = call %struct.sv* @Perl_newSViv(i64 %conv34)
  %call36 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call35)
  %39 = load i32, i32* %ax, align 4
  %add37 = add nsw i32 %39, 0
  %idxprom38 = sext i32 %add37 to i64
  %40 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx39 = getelementptr inbounds %struct.sv*, %struct.sv** %40, i64 %idxprom38
  store %struct.sv* %call36, %struct.sv** %arrayidx39, align 8
  store i64 1, i64* %tmpXSoff40, align 8
  %41 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %42 = load i32, i32* %ax, align 4
  %idx.ext41 = sext i32 %42 to i64
  %add.ptr42 = getelementptr inbounds %struct.sv*, %struct.sv** %41, i64 %idx.ext41
  %43 = load i64, i64* %tmpXSoff40, align 8
  %sub43 = sub nsw i64 %43, 1
  %add.ptr44 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr42, i64 %sub43
  store %struct.sv** %add.ptr44, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end
  %44 = load i32, i32* %ax, align 4
  %add46 = add nsw i32 %44, 0
  %idxprom47 = sext i32 %add46 to i64
  %45 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx48 = getelementptr inbounds %struct.sv*, %struct.sv** %45, i64 %idxprom47
  store %struct.sv* @PL_sv_undef, %struct.sv** %arrayidx48, align 8
  store i64 1, i64* %tmpXSoff49, align 8
  %46 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %47 = load i32, i32* %ax, align 4
  %idx.ext50 = sext i32 %47 to i64
  %add.ptr51 = getelementptr inbounds %struct.sv*, %struct.sv** %46, i64 %idx.ext50
  %48 = load i64, i64* %tmpXSoff49, align 8
  %sub52 = sub nsw i64 %48, 1
  %add.ptr53 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr51, i64 %sub52
  store %struct.sv** %add.ptr53, %struct.sv*** @PL_stack_sp, align 8
  br label %return

return:                                           ; preds = %if.end.45, %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Internals_hv_clear_placehold(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %hv = alloca %struct.hv*, align 8
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
  %8 = load i32, i32* %ax, align 4
  %add6 = add nsw i32 %8, 0
  %idxprom = sext i32 %add6 to i64
  %9 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any, align 8
  %12 = bitcast i8* %11 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %12, i32 0, i32 0
  %13 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %14 = bitcast %struct.sv* %13 to %struct.hv*
  store %struct.hv* %14, %struct.hv** %hv, align 8
  %15 = load i32, i32* %items, align 4
  %cmp = icmp ne i32 %15, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.hv*, %struct.hv** %hv, align 8
  call void @Perl_hv_clear_placeholders(%struct.hv* %16)
  store i64 0, i64* %tmpXSoff, align 8
  %17 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %18 = load i32, i32* %ax, align 4
  %idx.ext8 = sext i32 %18 to i64
  %add.ptr9 = getelementptr inbounds %struct.sv*, %struct.sv** %17, i64 %idx.ext8
  %19 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %19, 1
  %add.ptr10 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr9, i64 %sub
  store %struct.sv** %add.ptr10, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_PerlIO_get_layers(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %gv = alloca %struct.gv*, align 8
  %io = alloca %struct.io*, align 8
  %input = alloca i8, align 1
  %details = alloca i8, align 1
  %svp = alloca %struct.sv**, align 8
  %varp = alloca %struct.sv**, align 8
  %valp = alloca %struct.sv**, align 8
  %klen = alloca i64, align 8
  %key = alloca i8*, align 8
  %targ = alloca %struct.sv*, align 8
  %av = alloca %struct.av*, align 8
  %i = alloca i32, align 4
  %last = alloca i32, align 4
  %nitem = alloca i32, align 4
  %namsvp = alloca %struct.sv**, align 8
  %argsvp = alloca %struct.sv**, align 8
  %flgsvp = alloca %struct.sv**, align 8
  %namok = alloca i8, align 1
  %argok = alloca i8, align 1
  %flgok = alloca i8, align 1
  %tmp = alloca %struct.sv*, align 8
  %tmp325 = alloca %struct.sv*, align 8
  %tmp355 = alloca %struct.sv*, align 8
  %tmp367 = alloca %struct.sv*, align 8
  %tmp387 = alloca %struct.sv*, align 8
  %tmp402 = alloca %struct.sv*, align 8
  %tmp415 = alloca %struct.sv*, align 8
  %flags = alloca i64, align 8
  %tmp436 = alloca %struct.sv*, align 8
  %tmpXSoff = alloca i64, align 8
  %tmpXSoff454 = alloca i64, align 8
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
  %rem = srem i32 %9, 2
  %cmp7 = icmp eq i32 %rem, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  store i8 1, i8* %input, align 1
  store i8 0, i8* %details, align 1
  %10 = load i32, i32* %items, align 4
  %cmp9 = icmp sgt i32 %10, 1
  br i1 %cmp9, label %if.then.11, label %if.end.204

if.then.11:                                       ; preds = %if.end
  %11 = load %struct.sv**, %struct.sv*** %mark, align 8
  %add.ptr12 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i64 2
  store %struct.sv** %add.ptr12, %struct.sv*** %svp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %12 = load %struct.sv**, %struct.sv*** %svp, align 8
  %13 = load %struct.sv**, %struct.sv*** %sp, align 8
  %cmp13 = icmp ule %struct.sv** %12, %13
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.sv**, %struct.sv*** %svp, align 8
  store %struct.sv** %14, %struct.sv*** %varp, align 8
  %15 = load %struct.sv**, %struct.sv*** %svp, align 8
  %add.ptr15 = getelementptr inbounds %struct.sv*, %struct.sv** %15, i64 1
  store %struct.sv** %add.ptr15, %struct.sv*** %valp, align 8
  %16 = load %struct.sv**, %struct.sv*** %varp, align 8
  %17 = load %struct.sv*, %struct.sv** %16, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 2
  %18 = load i32, i32* %sv_flags, align 4
  %and = and i32 %18, 262144
  %cmp16 = icmp eq i32 %and, 262144
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %19 = load %struct.sv**, %struct.sv*** %varp, align 8
  %20 = load %struct.sv*, %struct.sv** %19, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %20, i32 0, i32 0
  %21 = load i8*, i8** %sv_any, align 8
  %22 = bitcast i8* %21 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %22, i32 0, i32 1
  %23 = load i64, i64* %xpv_cur, align 8
  store i64 %23, i64* %klen, align 8
  %24 = load %struct.sv**, %struct.sv*** %varp, align 8
  %25 = load %struct.sv*, %struct.sv** %24, align 8
  %sv_any18 = getelementptr inbounds %struct.sv, %struct.sv* %25, i32 0, i32 0
  %26 = load i8*, i8** %sv_any18, align 8
  %27 = bitcast i8* %26 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %27, i32 0, i32 0
  %28 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %29 = load %struct.sv**, %struct.sv*** %varp, align 8
  %30 = load %struct.sv*, %struct.sv** %29, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %30, i64* %klen, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %28, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %key, align 8
  %31 = load i8*, i8** %key, align 8
  %32 = load i8, i8* %31, align 1
  %conv19 = sext i8 %32 to i32
  switch i32 %conv19, label %sw.default [
    i32 105, label %sw.bb
    i32 111, label %sw.bb.74
    i32 100, label %sw.bb.138
  ]

sw.bb:                                            ; preds = %cond.end
  %33 = load i64, i64* %klen, align 8
  %cmp20 = icmp eq i64 %33, 5
  br i1 %cmp20, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %sw.bb
  %34 = load i8*, i8** %key, align 8
  %call22 = call i32 @memcmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i64 5)
  %tobool = icmp ne i32 %call22, 0
  br i1 %tobool, label %if.end.73, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true
  %35 = load %struct.sv**, %struct.sv*** %valp, align 8
  %36 = load %struct.sv*, %struct.sv** %35, align 8
  %tobool24 = icmp ne %struct.sv* %36, null
  br i1 %tobool24, label %cond.false.26, label %cond.true.25

cond.true.25:                                     ; preds = %if.then.23
  br label %cond.end.70

cond.false.26:                                    ; preds = %if.then.23
  %37 = load %struct.sv**, %struct.sv*** %valp, align 8
  %38 = load %struct.sv*, %struct.sv** %37, align 8
  %sv_flags27 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 2
  %39 = load i32, i32* %sv_flags27, align 4
  %and28 = and i32 %39, 262144
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %cond.true.30, label %cond.false.45

cond.true.30:                                     ; preds = %cond.false.26
  %40 = load %struct.sv**, %struct.sv*** %valp, align 8
  %41 = load %struct.sv*, %struct.sv** %40, align 8
  %sv_any31 = getelementptr inbounds %struct.sv, %struct.sv* %41, i32 0, i32 0
  %42 = load i8*, i8** %sv_any31, align 8
  %43 = bitcast i8* %42 to %struct.xpv*
  store %struct.xpv* %43, %struct.xpv** @PL_Xpv, align 8
  %tobool32 = icmp ne %struct.xpv* %43, null
  br i1 %tobool32, label %land.rhs, label %land.end.43

land.rhs:                                         ; preds = %cond.true.30
  %44 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur33 = getelementptr inbounds %struct.xpv, %struct.xpv* %44, i32 0, i32 1
  %45 = load i64, i64* %xpv_cur33, align 8
  %cmp34 = icmp ugt i64 %45, 1
  br i1 %cmp34, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %46 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur36 = getelementptr inbounds %struct.xpv, %struct.xpv* %46, i32 0, i32 1
  %47 = load i64, i64* %xpv_cur36, align 8
  %tobool37 = icmp ne i64 %47, 0
  br i1 %tobool37, label %land.rhs.38, label %land.end

land.rhs.38:                                      ; preds = %lor.rhs
  %48 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv39 = getelementptr inbounds %struct.xpv, %struct.xpv* %48, i32 0, i32 0
  %49 = load i8*, i8** %xpv_pv39, align 8
  %50 = load i8, i8* %49, align 1
  %conv40 = sext i8 %50 to i32
  %cmp41 = icmp ne i32 %conv40, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs.38, %lor.rhs
  %51 = phi i1 [ false, %lor.rhs ], [ %cmp41, %land.rhs.38 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %52 = phi i1 [ true, %land.rhs ], [ %51, %land.end ]
  br label %land.end.43

land.end.43:                                      ; preds = %lor.end, %cond.true.30
  %53 = phi i1 [ false, %cond.true.30 ], [ %52, %lor.end ]
  %cond44 = select i1 %53, i32 1, i32 0
  br label %cond.end.68

cond.false.45:                                    ; preds = %cond.false.26
  %54 = load %struct.sv**, %struct.sv*** %valp, align 8
  %55 = load %struct.sv*, %struct.sv** %54, align 8
  %sv_flags46 = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 2
  %56 = load i32, i32* %sv_flags46, align 4
  %and47 = and i32 %56, 65536
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %cond.false.45
  %57 = load %struct.sv**, %struct.sv*** %valp, align 8
  %58 = load %struct.sv*, %struct.sv** %57, align 8
  %sv_any50 = getelementptr inbounds %struct.sv, %struct.sv* %58, i32 0, i32 0
  %59 = load i8*, i8** %sv_any50, align 8
  %60 = bitcast i8* %59 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %60, i32 0, i32 3
  %61 = load i64, i64* %xiv_iv, align 8
  %cmp51 = icmp ne i64 %61, 0
  %conv52 = zext i1 %cmp51 to i32
  br label %cond.end.66

cond.false.53:                                    ; preds = %cond.false.45
  %62 = load %struct.sv**, %struct.sv*** %valp, align 8
  %63 = load %struct.sv*, %struct.sv** %62, align 8
  %sv_flags54 = getelementptr inbounds %struct.sv, %struct.sv* %63, i32 0, i32 2
  %64 = load i32, i32* %sv_flags54, align 4
  %and55 = and i32 %64, 131072
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %cond.true.57, label %cond.false.61

cond.true.57:                                     ; preds = %cond.false.53
  %65 = load %struct.sv**, %struct.sv*** %valp, align 8
  %66 = load %struct.sv*, %struct.sv** %65, align 8
  %sv_any58 = getelementptr inbounds %struct.sv, %struct.sv* %66, i32 0, i32 0
  %67 = load i8*, i8** %sv_any58, align 8
  %68 = bitcast i8* %67 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %68, i32 0, i32 4
  %69 = load double, double* %xnv_nv, align 8
  %cmp59 = fcmp une double %69, 0.000000e+00
  %conv60 = zext i1 %cmp59 to i32
  br label %cond.end.64

cond.false.61:                                    ; preds = %cond.false.53
  %70 = load %struct.sv**, %struct.sv*** %valp, align 8
  %71 = load %struct.sv*, %struct.sv** %70, align 8
  %call62 = call signext i8 @Perl_sv_2bool(%struct.sv* %71)
  %conv63 = sext i8 %call62 to i32
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.61, %cond.true.57
  %cond65 = phi i32 [ %conv60, %cond.true.57 ], [ %conv63, %cond.false.61 ]
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end.64, %cond.true.49
  %cond67 = phi i32 [ %conv52, %cond.true.49 ], [ %cond65, %cond.end.64 ]
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.end.66, %land.end.43
  %cond69 = phi i32 [ %cond44, %land.end.43 ], [ %cond67, %cond.end.66 ]
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end.68, %cond.true.25
  %cond71 = phi i32 [ 0, %cond.true.25 ], [ %cond69, %cond.end.68 ]
  %conv72 = trunc i32 %cond71 to i8
  store i8 %conv72, i8* %input, align 1
  br label %sw.epilog

if.end.73:                                        ; preds = %land.lhs.true, %sw.bb
  br label %fail

sw.bb.74:                                         ; preds = %cond.end
  %72 = load i64, i64* %klen, align 8
  %cmp75 = icmp eq i64 %72, 6
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.137

land.lhs.true.77:                                 ; preds = %sw.bb.74
  %73 = load i8*, i8** %key, align 8
  %call78 = call i32 @memcmp(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i64 6)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end.137, label %if.then.80

if.then.80:                                       ; preds = %land.lhs.true.77
  %74 = load %struct.sv**, %struct.sv*** %valp, align 8
  %75 = load %struct.sv*, %struct.sv** %74, align 8
  %tobool81 = icmp ne %struct.sv* %75, null
  br i1 %tobool81, label %cond.false.83, label %cond.true.82

cond.true.82:                                     ; preds = %if.then.80
  br label %cond.end.133

cond.false.83:                                    ; preds = %if.then.80
  %76 = load %struct.sv**, %struct.sv*** %valp, align 8
  %77 = load %struct.sv*, %struct.sv** %76, align 8
  %sv_flags84 = getelementptr inbounds %struct.sv, %struct.sv* %77, i32 0, i32 2
  %78 = load i32, i32* %sv_flags84, align 4
  %and85 = and i32 %78, 262144
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %cond.true.87, label %cond.false.106

cond.true.87:                                     ; preds = %cond.false.83
  %79 = load %struct.sv**, %struct.sv*** %valp, align 8
  %80 = load %struct.sv*, %struct.sv** %79, align 8
  %sv_any88 = getelementptr inbounds %struct.sv, %struct.sv* %80, i32 0, i32 0
  %81 = load i8*, i8** %sv_any88, align 8
  %82 = bitcast i8* %81 to %struct.xpv*
  store %struct.xpv* %82, %struct.xpv** @PL_Xpv, align 8
  %tobool89 = icmp ne %struct.xpv* %82, null
  br i1 %tobool89, label %land.rhs.90, label %land.end.104

land.rhs.90:                                      ; preds = %cond.true.87
  %83 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur91 = getelementptr inbounds %struct.xpv, %struct.xpv* %83, i32 0, i32 1
  %84 = load i64, i64* %xpv_cur91, align 8
  %cmp92 = icmp ugt i64 %84, 1
  br i1 %cmp92, label %lor.end.103, label %lor.rhs.94

lor.rhs.94:                                       ; preds = %land.rhs.90
  %85 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur95 = getelementptr inbounds %struct.xpv, %struct.xpv* %85, i32 0, i32 1
  %86 = load i64, i64* %xpv_cur95, align 8
  %tobool96 = icmp ne i64 %86, 0
  br i1 %tobool96, label %land.rhs.97, label %land.end.102

land.rhs.97:                                      ; preds = %lor.rhs.94
  %87 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv98 = getelementptr inbounds %struct.xpv, %struct.xpv* %87, i32 0, i32 0
  %88 = load i8*, i8** %xpv_pv98, align 8
  %89 = load i8, i8* %88, align 1
  %conv99 = sext i8 %89 to i32
  %cmp100 = icmp ne i32 %conv99, 48
  br label %land.end.102

land.end.102:                                     ; preds = %land.rhs.97, %lor.rhs.94
  %90 = phi i1 [ false, %lor.rhs.94 ], [ %cmp100, %land.rhs.97 ]
  br label %lor.end.103

lor.end.103:                                      ; preds = %land.end.102, %land.rhs.90
  %91 = phi i1 [ true, %land.rhs.90 ], [ %90, %land.end.102 ]
  br label %land.end.104

land.end.104:                                     ; preds = %lor.end.103, %cond.true.87
  %92 = phi i1 [ false, %cond.true.87 ], [ %91, %lor.end.103 ]
  %cond105 = select i1 %92, i32 1, i32 0
  br label %cond.end.131

cond.false.106:                                   ; preds = %cond.false.83
  %93 = load %struct.sv**, %struct.sv*** %valp, align 8
  %94 = load %struct.sv*, %struct.sv** %93, align 8
  %sv_flags107 = getelementptr inbounds %struct.sv, %struct.sv* %94, i32 0, i32 2
  %95 = load i32, i32* %sv_flags107, align 4
  %and108 = and i32 %95, 65536
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %cond.true.110, label %cond.false.115

cond.true.110:                                    ; preds = %cond.false.106
  %96 = load %struct.sv**, %struct.sv*** %valp, align 8
  %97 = load %struct.sv*, %struct.sv** %96, align 8
  %sv_any111 = getelementptr inbounds %struct.sv, %struct.sv* %97, i32 0, i32 0
  %98 = load i8*, i8** %sv_any111, align 8
  %99 = bitcast i8* %98 to %struct.xpviv*
  %xiv_iv112 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %99, i32 0, i32 3
  %100 = load i64, i64* %xiv_iv112, align 8
  %cmp113 = icmp ne i64 %100, 0
  %conv114 = zext i1 %cmp113 to i32
  br label %cond.end.129

cond.false.115:                                   ; preds = %cond.false.106
  %101 = load %struct.sv**, %struct.sv*** %valp, align 8
  %102 = load %struct.sv*, %struct.sv** %101, align 8
  %sv_flags116 = getelementptr inbounds %struct.sv, %struct.sv* %102, i32 0, i32 2
  %103 = load i32, i32* %sv_flags116, align 4
  %and117 = and i32 %103, 131072
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %cond.true.119, label %cond.false.124

cond.true.119:                                    ; preds = %cond.false.115
  %104 = load %struct.sv**, %struct.sv*** %valp, align 8
  %105 = load %struct.sv*, %struct.sv** %104, align 8
  %sv_any120 = getelementptr inbounds %struct.sv, %struct.sv* %105, i32 0, i32 0
  %106 = load i8*, i8** %sv_any120, align 8
  %107 = bitcast i8* %106 to %struct.xpvnv*
  %xnv_nv121 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %107, i32 0, i32 4
  %108 = load double, double* %xnv_nv121, align 8
  %cmp122 = fcmp une double %108, 0.000000e+00
  %conv123 = zext i1 %cmp122 to i32
  br label %cond.end.127

cond.false.124:                                   ; preds = %cond.false.115
  %109 = load %struct.sv**, %struct.sv*** %valp, align 8
  %110 = load %struct.sv*, %struct.sv** %109, align 8
  %call125 = call signext i8 @Perl_sv_2bool(%struct.sv* %110)
  %conv126 = sext i8 %call125 to i32
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.124, %cond.true.119
  %cond128 = phi i32 [ %conv123, %cond.true.119 ], [ %conv126, %cond.false.124 ]
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.end.127, %cond.true.110
  %cond130 = phi i32 [ %conv114, %cond.true.110 ], [ %cond128, %cond.end.127 ]
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.end.129, %land.end.104
  %cond132 = phi i32 [ %cond105, %land.end.104 ], [ %cond130, %cond.end.129 ]
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.end.131, %cond.true.82
  %cond134 = phi i32 [ 0, %cond.true.82 ], [ %cond132, %cond.end.131 ]
  %tobool135 = icmp ne i32 %cond134, 0
  %lnot = xor i1 %tobool135, true
  %lnot.ext = zext i1 %lnot to i32
  %conv136 = trunc i32 %lnot.ext to i8
  store i8 %conv136, i8* %input, align 1
  br label %sw.epilog

if.end.137:                                       ; preds = %land.lhs.true.77, %sw.bb.74
  br label %fail

sw.bb.138:                                        ; preds = %cond.end
  %111 = load i64, i64* %klen, align 8
  %cmp139 = icmp eq i64 %111, 7
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.200

land.lhs.true.141:                                ; preds = %sw.bb.138
  %112 = load i8*, i8** %key, align 8
  %call142 = call i32 @memcmp(i8* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i64 7)
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.end.200, label %if.then.144

if.then.144:                                      ; preds = %land.lhs.true.141
  %113 = load %struct.sv**, %struct.sv*** %valp, align 8
  %114 = load %struct.sv*, %struct.sv** %113, align 8
  %tobool145 = icmp ne %struct.sv* %114, null
  br i1 %tobool145, label %cond.false.147, label %cond.true.146

cond.true.146:                                    ; preds = %if.then.144
  br label %cond.end.197

cond.false.147:                                   ; preds = %if.then.144
  %115 = load %struct.sv**, %struct.sv*** %valp, align 8
  %116 = load %struct.sv*, %struct.sv** %115, align 8
  %sv_flags148 = getelementptr inbounds %struct.sv, %struct.sv* %116, i32 0, i32 2
  %117 = load i32, i32* %sv_flags148, align 4
  %and149 = and i32 %117, 262144
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %cond.true.151, label %cond.false.170

cond.true.151:                                    ; preds = %cond.false.147
  %118 = load %struct.sv**, %struct.sv*** %valp, align 8
  %119 = load %struct.sv*, %struct.sv** %118, align 8
  %sv_any152 = getelementptr inbounds %struct.sv, %struct.sv* %119, i32 0, i32 0
  %120 = load i8*, i8** %sv_any152, align 8
  %121 = bitcast i8* %120 to %struct.xpv*
  store %struct.xpv* %121, %struct.xpv** @PL_Xpv, align 8
  %tobool153 = icmp ne %struct.xpv* %121, null
  br i1 %tobool153, label %land.rhs.154, label %land.end.168

land.rhs.154:                                     ; preds = %cond.true.151
  %122 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur155 = getelementptr inbounds %struct.xpv, %struct.xpv* %122, i32 0, i32 1
  %123 = load i64, i64* %xpv_cur155, align 8
  %cmp156 = icmp ugt i64 %123, 1
  br i1 %cmp156, label %lor.end.167, label %lor.rhs.158

lor.rhs.158:                                      ; preds = %land.rhs.154
  %124 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur159 = getelementptr inbounds %struct.xpv, %struct.xpv* %124, i32 0, i32 1
  %125 = load i64, i64* %xpv_cur159, align 8
  %tobool160 = icmp ne i64 %125, 0
  br i1 %tobool160, label %land.rhs.161, label %land.end.166

land.rhs.161:                                     ; preds = %lor.rhs.158
  %126 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv162 = getelementptr inbounds %struct.xpv, %struct.xpv* %126, i32 0, i32 0
  %127 = load i8*, i8** %xpv_pv162, align 8
  %128 = load i8, i8* %127, align 1
  %conv163 = sext i8 %128 to i32
  %cmp164 = icmp ne i32 %conv163, 48
  br label %land.end.166

land.end.166:                                     ; preds = %land.rhs.161, %lor.rhs.158
  %129 = phi i1 [ false, %lor.rhs.158 ], [ %cmp164, %land.rhs.161 ]
  br label %lor.end.167

lor.end.167:                                      ; preds = %land.end.166, %land.rhs.154
  %130 = phi i1 [ true, %land.rhs.154 ], [ %129, %land.end.166 ]
  br label %land.end.168

land.end.168:                                     ; preds = %lor.end.167, %cond.true.151
  %131 = phi i1 [ false, %cond.true.151 ], [ %130, %lor.end.167 ]
  %cond169 = select i1 %131, i32 1, i32 0
  br label %cond.end.195

cond.false.170:                                   ; preds = %cond.false.147
  %132 = load %struct.sv**, %struct.sv*** %valp, align 8
  %133 = load %struct.sv*, %struct.sv** %132, align 8
  %sv_flags171 = getelementptr inbounds %struct.sv, %struct.sv* %133, i32 0, i32 2
  %134 = load i32, i32* %sv_flags171, align 4
  %and172 = and i32 %134, 65536
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %cond.true.174, label %cond.false.179

cond.true.174:                                    ; preds = %cond.false.170
  %135 = load %struct.sv**, %struct.sv*** %valp, align 8
  %136 = load %struct.sv*, %struct.sv** %135, align 8
  %sv_any175 = getelementptr inbounds %struct.sv, %struct.sv* %136, i32 0, i32 0
  %137 = load i8*, i8** %sv_any175, align 8
  %138 = bitcast i8* %137 to %struct.xpviv*
  %xiv_iv176 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %138, i32 0, i32 3
  %139 = load i64, i64* %xiv_iv176, align 8
  %cmp177 = icmp ne i64 %139, 0
  %conv178 = zext i1 %cmp177 to i32
  br label %cond.end.193

cond.false.179:                                   ; preds = %cond.false.170
  %140 = load %struct.sv**, %struct.sv*** %valp, align 8
  %141 = load %struct.sv*, %struct.sv** %140, align 8
  %sv_flags180 = getelementptr inbounds %struct.sv, %struct.sv* %141, i32 0, i32 2
  %142 = load i32, i32* %sv_flags180, align 4
  %and181 = and i32 %142, 131072
  %tobool182 = icmp ne i32 %and181, 0
  br i1 %tobool182, label %cond.true.183, label %cond.false.188

cond.true.183:                                    ; preds = %cond.false.179
  %143 = load %struct.sv**, %struct.sv*** %valp, align 8
  %144 = load %struct.sv*, %struct.sv** %143, align 8
  %sv_any184 = getelementptr inbounds %struct.sv, %struct.sv* %144, i32 0, i32 0
  %145 = load i8*, i8** %sv_any184, align 8
  %146 = bitcast i8* %145 to %struct.xpvnv*
  %xnv_nv185 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %146, i32 0, i32 4
  %147 = load double, double* %xnv_nv185, align 8
  %cmp186 = fcmp une double %147, 0.000000e+00
  %conv187 = zext i1 %cmp186 to i32
  br label %cond.end.191

cond.false.188:                                   ; preds = %cond.false.179
  %148 = load %struct.sv**, %struct.sv*** %valp, align 8
  %149 = load %struct.sv*, %struct.sv** %148, align 8
  %call189 = call signext i8 @Perl_sv_2bool(%struct.sv* %149)
  %conv190 = sext i8 %call189 to i32
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.188, %cond.true.183
  %cond192 = phi i32 [ %conv187, %cond.true.183 ], [ %conv190, %cond.false.188 ]
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.end.191, %cond.true.174
  %cond194 = phi i32 [ %conv178, %cond.true.174 ], [ %cond192, %cond.end.191 ]
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.end.193, %land.end.168
  %cond196 = phi i32 [ %cond169, %land.end.168 ], [ %cond194, %cond.end.193 ]
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.end.195, %cond.true.146
  %cond198 = phi i32 [ 0, %cond.true.146 ], [ %cond196, %cond.end.195 ]
  %conv199 = trunc i32 %cond198 to i8
  store i8 %conv199, i8* %details, align 1
  br label %sw.epilog

if.end.200:                                       ; preds = %land.lhs.true.141, %sw.bb.138
  br label %fail

sw.default:                                       ; preds = %cond.end
  br label %fail

fail:                                             ; preds = %sw.default, %if.end.200, %if.end.137, %if.end.73
  %150 = load i8*, i8** %key, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i32 0, i32 0), i8* %150)
  br label %sw.epilog

sw.epilog:                                        ; preds = %fail, %cond.end.197, %cond.end.133, %cond.end.70
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %151 = load %struct.sv**, %struct.sv*** %svp, align 8
  %add.ptr201 = getelementptr inbounds %struct.sv*, %struct.sv** %151, i64 2
  store %struct.sv** %add.ptr201, %struct.sv*** %svp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %152 = load i32, i32* %items, align 4
  %sub = sub nsw i32 %152, 1
  %153 = load %struct.sv**, %struct.sv*** %sp, align 8
  %idx.ext202 = sext i32 %sub to i64
  %idx.neg = sub i64 0, %idx.ext202
  %add.ptr203 = getelementptr inbounds %struct.sv*, %struct.sv** %153, i64 %idx.neg
  store %struct.sv** %add.ptr203, %struct.sv*** %sp, align 8
  br label %if.end.204

if.end.204:                                       ; preds = %for.end, %if.end
  %154 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr205 = getelementptr inbounds %struct.sv*, %struct.sv** %154, i32 -1
  store %struct.sv** %incdec.ptr205, %struct.sv*** %sp, align 8
  %155 = load %struct.sv*, %struct.sv** %154, align 8
  store %struct.sv* %155, %struct.sv** %sv, align 8
  %156 = load %struct.sv*, %struct.sv** %sv, align 8
  %157 = bitcast %struct.sv* %156 to %struct.gv*
  store %struct.gv* %157, %struct.gv** %gv, align 8
  %158 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags206 = getelementptr inbounds %struct.sv, %struct.sv* %158, i32 0, i32 2
  %159 = load i32, i32* %sv_flags206, align 4
  %and207 = and i32 %159, 255
  %cmp208 = icmp eq i32 %and207, 13
  br i1 %cmp208, label %if.end.227, label %if.then.210

if.then.210:                                      ; preds = %if.end.204
  %160 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags211 = getelementptr inbounds %struct.sv, %struct.sv* %160, i32 0, i32 2
  %161 = load i32, i32* %sv_flags211, align 4
  %and212 = and i32 %161, 524288
  %tobool213 = icmp ne i32 %and212, 0
  br i1 %tobool213, label %land.lhs.true.214, label %if.else

land.lhs.true.214:                                ; preds = %if.then.210
  %162 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any215 = getelementptr inbounds %struct.sv, %struct.sv* %162, i32 0, i32 0
  %163 = load i8*, i8** %sv_any215, align 8
  %164 = bitcast i8* %163 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %164, i32 0, i32 0
  %165 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %sv_flags216 = getelementptr inbounds %struct.sv, %struct.sv* %165, i32 0, i32 2
  %166 = load i32, i32* %sv_flags216, align 4
  %and217 = and i32 %166, 255
  %cmp218 = icmp eq i32 %and217, 13
  br i1 %cmp218, label %if.then.220, label %if.else

if.then.220:                                      ; preds = %land.lhs.true.214
  %167 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any221 = getelementptr inbounds %struct.sv, %struct.sv* %167, i32 0, i32 0
  %168 = load i8*, i8** %sv_any221, align 8
  %169 = bitcast i8* %168 to %struct.xrv*
  %xrv_rv222 = getelementptr inbounds %struct.xrv, %struct.xrv* %169, i32 0, i32 0
  %170 = load %struct.sv*, %struct.sv** %xrv_rv222, align 8
  %171 = bitcast %struct.sv* %170 to %struct.gv*
  store %struct.gv* %171, %struct.gv** %gv, align 8
  br label %if.end.226

if.else:                                          ; preds = %land.lhs.true.214, %if.then.210
  %172 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any223 = getelementptr inbounds %struct.sv, %struct.sv* %172, i32 0, i32 0
  %173 = load i8*, i8** %sv_any223, align 8
  %174 = bitcast i8* %173 to %struct.xpv*
  %xpv_pv224 = getelementptr inbounds %struct.xpv, %struct.xpv* %174, i32 0, i32 0
  %175 = load i8*, i8** %xpv_pv224, align 8
  %call225 = call %struct.gv* @Perl_gv_fetchpv(i8* %175, i32 0, i32 15)
  store %struct.gv* %call225, %struct.gv** %gv, align 8
  br label %if.end.226

if.end.226:                                       ; preds = %if.else, %if.then.220
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.end.204
  %176 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool228 = icmp ne %struct.gv* %176, null
  br i1 %tobool228, label %land.lhs.true.229, label %if.end.452

land.lhs.true.229:                                ; preds = %if.end.227
  %177 = load %struct.gv*, %struct.gv** %gv, align 8
  %tobool230 = icmp ne %struct.gv* %177, null
  br i1 %tobool230, label %land.lhs.true.231, label %cond.false.242

land.lhs.true.231:                                ; preds = %land.lhs.true.229
  %178 = load %struct.gv*, %struct.gv** %gv, align 8
  %179 = bitcast %struct.gv* %178 to %struct.sv*
  %sv_flags232 = getelementptr inbounds %struct.sv, %struct.sv* %179, i32 0, i32 2
  %180 = load i32, i32* %sv_flags232, align 4
  %and233 = and i32 %180, 255
  %cmp234 = icmp eq i32 %and233, 13
  br i1 %cmp234, label %land.lhs.true.236, label %cond.false.242

land.lhs.true.236:                                ; preds = %land.lhs.true.231
  %181 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any237 = getelementptr inbounds %struct.gv, %struct.gv* %181, i32 0, i32 0
  %182 = load %struct.xpvgv*, %struct.xpvgv** %sv_any237, align 8
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %182, i32 0, i32 7
  %183 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %tobool238 = icmp ne %struct.gp* %183, null
  br i1 %tobool238, label %cond.true.239, label %cond.false.242

cond.true.239:                                    ; preds = %land.lhs.true.236
  %184 = load %struct.gv*, %struct.gv** %gv, align 8
  %sv_any240 = getelementptr inbounds %struct.gv, %struct.gv* %184, i32 0, i32 0
  %185 = load %struct.xpvgv*, %struct.xpvgv** %sv_any240, align 8
  %xgv_gp241 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %185, i32 0, i32 7
  %186 = load %struct.gp*, %struct.gp** %xgv_gp241, align 8
  %gp_io = getelementptr inbounds %struct.gp, %struct.gp* %186, i32 0, i32 2
  %187 = load %struct.io*, %struct.io** %gp_io, align 8
  br label %cond.end.243

cond.false.242:                                   ; preds = %land.lhs.true.236, %land.lhs.true.231, %land.lhs.true.229
  br label %cond.end.243

cond.end.243:                                     ; preds = %cond.false.242, %cond.true.239
  %cond244 = phi %struct.io* [ %187, %cond.true.239 ], [ null, %cond.false.242 ]
  store %struct.io* %cond244, %struct.io** %io, align 8
  %tobool245 = icmp ne %struct.io* %cond244, null
  br i1 %tobool245, label %if.then.246, label %if.end.452

if.then.246:                                      ; preds = %cond.end.243
  %188 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %188, i32 0, i32 3
  %189 = load i64, i64* %op_targ, align 8
  %190 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %190, i64 %189
  %191 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %191, %struct.sv** %targ, align 8
  %192 = load i8, i8* %input, align 1
  %conv247 = sext i8 %192 to i32
  %tobool248 = icmp ne i32 %conv247, 0
  br i1 %tobool248, label %cond.true.249, label %cond.false.251

cond.true.249:                                    ; preds = %if.then.246
  %193 = load %struct.io*, %struct.io** %io, align 8
  %sv_any250 = getelementptr inbounds %struct.io, %struct.io* %193, i32 0, i32 0
  %194 = load %struct.xpvio*, %struct.xpvio** %sv_any250, align 8
  %xio_ifp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %194, i32 0, i32 7
  %195 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ifp, align 8
  br label %cond.end.253

cond.false.251:                                   ; preds = %if.then.246
  %196 = load %struct.io*, %struct.io** %io, align 8
  %sv_any252 = getelementptr inbounds %struct.io, %struct.io* %196, i32 0, i32 0
  %197 = load %struct.xpvio*, %struct.xpvio** %sv_any252, align 8
  %xio_ofp = getelementptr inbounds %struct.xpvio, %struct.xpvio* %197, i32 0, i32 8
  %198 = load %struct._PerlIO**, %struct._PerlIO*** %xio_ofp, align 8
  br label %cond.end.253

cond.end.253:                                     ; preds = %cond.false.251, %cond.true.249
  %cond254 = phi %struct._PerlIO** [ %195, %cond.true.249 ], [ %198, %cond.false.251 ]
  %call255 = call %struct.av* @PerlIO_get_layers(%struct._PerlIO** %cond254)
  store %struct.av* %call255, %struct.av** %av, align 8
  %199 = load %struct.av*, %struct.av** %av, align 8
  %call256 = call i32 @Perl_av_len(%struct.av* %199)
  store i32 %call256, i32* %last, align 4
  store i32 0, i32* %nitem, align 4
  %200 = load i32, i32* %last, align 4
  store i32 %200, i32* %i, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.443, %cond.end.253
  %201 = load i32, i32* %i, align 4
  %cmp258 = icmp sge i32 %201, 0
  br i1 %cmp258, label %for.body.260, label %for.end.445

for.body.260:                                     ; preds = %for.cond.257
  %202 = load %struct.av*, %struct.av** %av, align 8
  %203 = load i32, i32* %i, align 4
  %sub261 = sub nsw i32 %203, 2
  %call262 = call %struct.sv** @Perl_av_fetch(%struct.av* %202, i32 %sub261, i32 0)
  store %struct.sv** %call262, %struct.sv*** %namsvp, align 8
  %204 = load %struct.av*, %struct.av** %av, align 8
  %205 = load i32, i32* %i, align 4
  %sub263 = sub nsw i32 %205, 1
  %call264 = call %struct.sv** @Perl_av_fetch(%struct.av* %204, i32 %sub263, i32 0)
  store %struct.sv** %call264, %struct.sv*** %argsvp, align 8
  %206 = load %struct.av*, %struct.av** %av, align 8
  %207 = load i32, i32* %i, align 4
  %call265 = call %struct.sv** @Perl_av_fetch(%struct.av* %206, i32 %207, i32 0)
  store %struct.sv** %call265, %struct.sv*** %flgsvp, align 8
  %208 = load %struct.sv**, %struct.sv*** %namsvp, align 8
  %tobool266 = icmp ne %struct.sv** %208, null
  br i1 %tobool266, label %land.lhs.true.267, label %land.end.273

land.lhs.true.267:                                ; preds = %for.body.260
  %209 = load %struct.sv**, %struct.sv*** %namsvp, align 8
  %210 = load %struct.sv*, %struct.sv** %209, align 8
  %tobool268 = icmp ne %struct.sv* %210, null
  br i1 %tobool268, label %land.rhs.269, label %land.end.273

land.rhs.269:                                     ; preds = %land.lhs.true.267
  %211 = load %struct.sv**, %struct.sv*** %namsvp, align 8
  %212 = load %struct.sv*, %struct.sv** %211, align 8
  %sv_flags270 = getelementptr inbounds %struct.sv, %struct.sv* %212, i32 0, i32 2
  %213 = load i32, i32* %sv_flags270, align 4
  %and271 = and i32 %213, 262144
  %tobool272 = icmp ne i32 %and271, 0
  br label %land.end.273

land.end.273:                                     ; preds = %land.rhs.269, %land.lhs.true.267, %for.body.260
  %214 = phi i1 [ false, %land.lhs.true.267 ], [ false, %for.body.260 ], [ %tobool272, %land.rhs.269 ]
  %land.ext = zext i1 %214 to i32
  %conv274 = trunc i32 %land.ext to i8
  store i8 %conv274, i8* %namok, align 1
  %215 = load %struct.sv**, %struct.sv*** %argsvp, align 8
  %tobool275 = icmp ne %struct.sv** %215, null
  br i1 %tobool275, label %land.lhs.true.276, label %land.end.282

land.lhs.true.276:                                ; preds = %land.end.273
  %216 = load %struct.sv**, %struct.sv*** %argsvp, align 8
  %217 = load %struct.sv*, %struct.sv** %216, align 8
  %tobool277 = icmp ne %struct.sv* %217, null
  br i1 %tobool277, label %land.rhs.278, label %land.end.282

land.rhs.278:                                     ; preds = %land.lhs.true.276
  %218 = load %struct.sv**, %struct.sv*** %argsvp, align 8
  %219 = load %struct.sv*, %struct.sv** %218, align 8
  %sv_flags279 = getelementptr inbounds %struct.sv, %struct.sv* %219, i32 0, i32 2
  %220 = load i32, i32* %sv_flags279, align 4
  %and280 = and i32 %220, 262144
  %tobool281 = icmp ne i32 %and280, 0
  br label %land.end.282

land.end.282:                                     ; preds = %land.rhs.278, %land.lhs.true.276, %land.end.273
  %221 = phi i1 [ false, %land.lhs.true.276 ], [ false, %land.end.273 ], [ %tobool281, %land.rhs.278 ]
  %land.ext283 = zext i1 %221 to i32
  %conv284 = trunc i32 %land.ext283 to i8
  store i8 %conv284, i8* %argok, align 1
  %222 = load %struct.sv**, %struct.sv*** %flgsvp, align 8
  %tobool285 = icmp ne %struct.sv** %222, null
  br i1 %tobool285, label %land.lhs.true.286, label %land.end.292

land.lhs.true.286:                                ; preds = %land.end.282
  %223 = load %struct.sv**, %struct.sv*** %flgsvp, align 8
  %224 = load %struct.sv*, %struct.sv** %223, align 8
  %tobool287 = icmp ne %struct.sv* %224, null
  br i1 %tobool287, label %land.rhs.288, label %land.end.292

land.rhs.288:                                     ; preds = %land.lhs.true.286
  %225 = load %struct.sv**, %struct.sv*** %flgsvp, align 8
  %226 = load %struct.sv*, %struct.sv** %225, align 8
  %sv_flags289 = getelementptr inbounds %struct.sv, %struct.sv* %226, i32 0, i32 2
  %227 = load i32, i32* %sv_flags289, align 4
  %and290 = and i32 %227, 65536
  %tobool291 = icmp ne i32 %and290, 0
  br label %land.end.292

land.end.292:                                     ; preds = %land.rhs.288, %land.lhs.true.286, %land.end.282
  %228 = phi i1 [ false, %land.lhs.true.286 ], [ false, %land.end.282 ], [ %tobool291, %land.rhs.288 ]
  %land.ext293 = zext i1 %228 to i32
  %conv294 = trunc i32 %land.ext293 to i8
  store i8 %conv294, i8* %flgok, align 1
  %229 = load i8, i8* %details, align 1
  %tobool295 = icmp ne i8 %229, 0
  br i1 %tobool295, label %if.then.296, label %if.else.371

if.then.296:                                      ; preds = %land.end.292
  %230 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %231 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast297 = ptrtoint %struct.sv** %230 to i64
  %sub.ptr.rhs.cast298 = ptrtoint %struct.sv** %231 to i64
  %sub.ptr.sub299 = sub i64 %sub.ptr.lhs.cast297, %sub.ptr.rhs.cast298
  %sub.ptr.div300 = sdiv exact i64 %sub.ptr.sub299, 8
  %cmp301 = icmp slt i64 %sub.ptr.div300, 1
  br i1 %cmp301, label %if.then.303, label %if.end.305

if.then.303:                                      ; preds = %if.then.296
  %232 = load %struct.sv**, %struct.sv*** %sp, align 8
  %233 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call304 = call %struct.sv** @Perl_stack_grow(%struct.sv** %232, %struct.sv** %233, i32 1)
  store %struct.sv** %call304, %struct.sv*** %sp, align 8
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.303, %if.then.296
  %234 = load i8, i8* %namok, align 1
  %conv306 = sext i8 %234 to i32
  %tobool307 = icmp ne i32 %conv306, 0
  br i1 %tobool307, label %cond.true.308, label %cond.false.312

cond.true.308:                                    ; preds = %if.end.305
  %235 = load %struct.sv**, %struct.sv*** %namsvp, align 8
  %236 = load %struct.sv*, %struct.sv** %235, align 8
  %sv_any309 = getelementptr inbounds %struct.sv, %struct.sv* %236, i32 0, i32 0
  %237 = load i8*, i8** %sv_any309, align 8
  %238 = bitcast i8* %237 to %struct.xpv*
  %xpv_pv310 = getelementptr inbounds %struct.xpv, %struct.xpv* %238, i32 0, i32 0
  %239 = load i8*, i8** %xpv_pv310, align 8
  %call311 = call %struct.sv* @Perl_newSVpv(i8* %239, i64 0)
  br label %cond.end.313

cond.false.312:                                   ; preds = %if.end.305
  br label %cond.end.313

cond.end.313:                                     ; preds = %cond.false.312, %cond.true.308
  %cond314 = phi %struct.sv* [ %call311, %cond.true.308 ], [ @PL_sv_undef, %cond.false.312 ]
  %240 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr315 = getelementptr inbounds %struct.sv*, %struct.sv** %240, i32 1
  store %struct.sv** %incdec.ptr315, %struct.sv*** %sp, align 8
  store %struct.sv* %cond314, %struct.sv** %incdec.ptr315, align 8
  store %struct.sv* %cond314, %struct.sv** %tmp
  %241 = load %struct.sv*, %struct.sv** %tmp
  %242 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %243 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast316 = ptrtoint %struct.sv** %242 to i64
  %sub.ptr.rhs.cast317 = ptrtoint %struct.sv** %243 to i64
  %sub.ptr.sub318 = sub i64 %sub.ptr.lhs.cast316, %sub.ptr.rhs.cast317
  %sub.ptr.div319 = sdiv exact i64 %sub.ptr.sub318, 8
  %cmp320 = icmp slt i64 %sub.ptr.div319, 1
  br i1 %cmp320, label %if.then.322, label %if.end.324

if.then.322:                                      ; preds = %cond.end.313
  %244 = load %struct.sv**, %struct.sv*** %sp, align 8
  %245 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call323 = call %struct.sv** @Perl_stack_grow(%struct.sv** %244, %struct.sv** %245, i32 1)
  store %struct.sv** %call323, %struct.sv*** %sp, align 8
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.322, %cond.end.313
  %246 = load i8, i8* %argok, align 1
  %conv326 = sext i8 %246 to i32
  %tobool327 = icmp ne i32 %conv326, 0
  br i1 %tobool327, label %cond.true.328, label %cond.false.332

cond.true.328:                                    ; preds = %if.end.324
  %247 = load %struct.sv**, %struct.sv*** %argsvp, align 8
  %248 = load %struct.sv*, %struct.sv** %247, align 8
  %sv_any329 = getelementptr inbounds %struct.sv, %struct.sv* %248, i32 0, i32 0
  %249 = load i8*, i8** %sv_any329, align 8
  %250 = bitcast i8* %249 to %struct.xpv*
  %xpv_pv330 = getelementptr inbounds %struct.xpv, %struct.xpv* %250, i32 0, i32 0
  %251 = load i8*, i8** %xpv_pv330, align 8
  %call331 = call %struct.sv* @Perl_newSVpv(i8* %251, i64 0)
  br label %cond.end.333

cond.false.332:                                   ; preds = %if.end.324
  br label %cond.end.333

cond.end.333:                                     ; preds = %cond.false.332, %cond.true.328
  %cond334 = phi %struct.sv* [ %call331, %cond.true.328 ], [ @PL_sv_undef, %cond.false.332 ]
  %252 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr335 = getelementptr inbounds %struct.sv*, %struct.sv** %252, i32 1
  store %struct.sv** %incdec.ptr335, %struct.sv*** %sp, align 8
  store %struct.sv* %cond334, %struct.sv** %incdec.ptr335, align 8
  store %struct.sv* %cond334, %struct.sv** %tmp325
  %253 = load %struct.sv*, %struct.sv** %tmp325
  %254 = load i8, i8* %flgok, align 1
  %tobool336 = icmp ne i8 %254, 0
  br i1 %tobool336, label %if.then.337, label %if.else.357

if.then.337:                                      ; preds = %cond.end.333
  %255 = load %struct.sv*, %struct.sv** %targ, align 8
  %256 = load %struct.sv**, %struct.sv*** %flgsvp, align 8
  %257 = load %struct.sv*, %struct.sv** %256, align 8
  %sv_any338 = getelementptr inbounds %struct.sv, %struct.sv* %257, i32 0, i32 0
  %258 = load i8*, i8** %sv_any338, align 8
  %259 = bitcast i8* %258 to %struct.xpviv*
  %xiv_iv339 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %259, i32 0, i32 3
  %260 = load i64, i64* %xiv_iv339, align 8
  call void @Perl_sv_setiv(%struct.sv* %255, i64 %260)
  %261 = load %struct.sv*, %struct.sv** %targ, align 8
  %sv_flags340 = getelementptr inbounds %struct.sv, %struct.sv* %261, i32 0, i32 2
  %262 = load i32, i32* %sv_flags340, align 4
  %and341 = and i32 %262, 16384
  %tobool342 = icmp ne i32 %and341, 0
  br i1 %tobool342, label %if.then.343, label %if.end.345

if.then.343:                                      ; preds = %if.then.337
  %263 = load %struct.sv*, %struct.sv** %targ, align 8
  %call344 = call i32 @Perl_mg_set(%struct.sv* %263)
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.343, %if.then.337
  %264 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %265 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast346 = ptrtoint %struct.sv** %264 to i64
  %sub.ptr.rhs.cast347 = ptrtoint %struct.sv** %265 to i64
  %sub.ptr.sub348 = sub i64 %sub.ptr.lhs.cast346, %sub.ptr.rhs.cast347
  %sub.ptr.div349 = sdiv exact i64 %sub.ptr.sub348, 8
  %cmp350 = icmp slt i64 %sub.ptr.div349, 1
  br i1 %cmp350, label %if.then.352, label %if.end.354

if.then.352:                                      ; preds = %if.end.345
  %266 = load %struct.sv**, %struct.sv*** %sp, align 8
  %267 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call353 = call %struct.sv** @Perl_stack_grow(%struct.sv** %266, %struct.sv** %267, i32 1)
  store %struct.sv** %call353, %struct.sv*** %sp, align 8
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.352, %if.end.345
  %268 = load %struct.sv*, %struct.sv** %targ, align 8
  %269 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr356 = getelementptr inbounds %struct.sv*, %struct.sv** %269, i32 1
  store %struct.sv** %incdec.ptr356, %struct.sv*** %sp, align 8
  store %struct.sv* %268, %struct.sv** %incdec.ptr356, align 8
  store %struct.sv* %268, %struct.sv** %tmp355
  %270 = load %struct.sv*, %struct.sv** %tmp355
  br label %if.end.369

if.else.357:                                      ; preds = %cond.end.333
  %271 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %272 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast358 = ptrtoint %struct.sv** %271 to i64
  %sub.ptr.rhs.cast359 = ptrtoint %struct.sv** %272 to i64
  %sub.ptr.sub360 = sub i64 %sub.ptr.lhs.cast358, %sub.ptr.rhs.cast359
  %sub.ptr.div361 = sdiv exact i64 %sub.ptr.sub360, 8
  %cmp362 = icmp slt i64 %sub.ptr.div361, 1
  br i1 %cmp362, label %if.then.364, label %if.end.366

if.then.364:                                      ; preds = %if.else.357
  %273 = load %struct.sv**, %struct.sv*** %sp, align 8
  %274 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call365 = call %struct.sv** @Perl_stack_grow(%struct.sv** %273, %struct.sv** %274, i32 1)
  store %struct.sv** %call365, %struct.sv*** %sp, align 8
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.364, %if.else.357
  %275 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr368 = getelementptr inbounds %struct.sv*, %struct.sv** %275, i32 1
  store %struct.sv** %incdec.ptr368, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr368, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %tmp367
  %276 = load %struct.sv*, %struct.sv** %tmp367
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.366, %if.end.354
  %277 = load i32, i32* %nitem, align 4
  %add370 = add nsw i32 %277, 3
  store i32 %add370, i32* %nitem, align 4
  br label %if.end.442

if.else.371:                                      ; preds = %land.end.292
  %278 = load i8, i8* %namok, align 1
  %conv372 = sext i8 %278 to i32
  %tobool373 = icmp ne i32 %conv372, 0
  br i1 %tobool373, label %land.lhs.true.374, label %if.else.390

land.lhs.true.374:                                ; preds = %if.else.371
  %279 = load i8, i8* %argok, align 1
  %conv375 = sext i8 %279 to i32
  %tobool376 = icmp ne i32 %conv375, 0
  br i1 %tobool376, label %if.then.377, label %if.else.390

if.then.377:                                      ; preds = %land.lhs.true.374
  %280 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %281 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast378 = ptrtoint %struct.sv** %280 to i64
  %sub.ptr.rhs.cast379 = ptrtoint %struct.sv** %281 to i64
  %sub.ptr.sub380 = sub i64 %sub.ptr.lhs.cast378, %sub.ptr.rhs.cast379
  %sub.ptr.div381 = sdiv exact i64 %sub.ptr.sub380, 8
  %cmp382 = icmp slt i64 %sub.ptr.div381, 1
  br i1 %cmp382, label %if.then.384, label %if.end.386

if.then.384:                                      ; preds = %if.then.377
  %282 = load %struct.sv**, %struct.sv*** %sp, align 8
  %283 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call385 = call %struct.sv** @Perl_stack_grow(%struct.sv** %282, %struct.sv** %283, i32 1)
  store %struct.sv** %call385, %struct.sv*** %sp, align 8
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.384, %if.then.377
  %284 = load %struct.sv**, %struct.sv*** %namsvp, align 8
  %285 = load %struct.sv*, %struct.sv** %284, align 8
  %286 = load %struct.sv**, %struct.sv*** %argsvp, align 8
  %287 = load %struct.sv*, %struct.sv** %286, align 8
  %call388 = call %struct.sv* (i8*, ...) @Perl_newSVpvf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), %struct.sv* %285, %struct.sv* %287)
  %288 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr389 = getelementptr inbounds %struct.sv*, %struct.sv** %288, i32 1
  store %struct.sv** %incdec.ptr389, %struct.sv*** %sp, align 8
  store %struct.sv* %call388, %struct.sv** %incdec.ptr389, align 8
  store %struct.sv* %call388, %struct.sv** %tmp387
  %289 = load %struct.sv*, %struct.sv** %tmp387
  br label %if.end.418

if.else.390:                                      ; preds = %land.lhs.true.374, %if.else.371
  %290 = load i8, i8* %namok, align 1
  %tobool391 = icmp ne i8 %290, 0
  br i1 %tobool391, label %if.then.392, label %if.else.405

if.then.392:                                      ; preds = %if.else.390
  %291 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %292 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast393 = ptrtoint %struct.sv** %291 to i64
  %sub.ptr.rhs.cast394 = ptrtoint %struct.sv** %292 to i64
  %sub.ptr.sub395 = sub i64 %sub.ptr.lhs.cast393, %sub.ptr.rhs.cast394
  %sub.ptr.div396 = sdiv exact i64 %sub.ptr.sub395, 8
  %cmp397 = icmp slt i64 %sub.ptr.div396, 1
  br i1 %cmp397, label %if.then.399, label %if.end.401

if.then.399:                                      ; preds = %if.then.392
  %293 = load %struct.sv**, %struct.sv*** %sp, align 8
  %294 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call400 = call %struct.sv** @Perl_stack_grow(%struct.sv** %293, %struct.sv** %294, i32 1)
  store %struct.sv** %call400, %struct.sv*** %sp, align 8
  br label %if.end.401

if.end.401:                                       ; preds = %if.then.399, %if.then.392
  %295 = load %struct.sv**, %struct.sv*** %namsvp, align 8
  %296 = load %struct.sv*, %struct.sv** %295, align 8
  %call403 = call %struct.sv* (i8*, ...) @Perl_newSVpvf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), %struct.sv* %296)
  %297 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr404 = getelementptr inbounds %struct.sv*, %struct.sv** %297, i32 1
  store %struct.sv** %incdec.ptr404, %struct.sv*** %sp, align 8
  store %struct.sv* %call403, %struct.sv** %incdec.ptr404, align 8
  store %struct.sv* %call403, %struct.sv** %tmp402
  %298 = load %struct.sv*, %struct.sv** %tmp402
  br label %if.end.417

if.else.405:                                      ; preds = %if.else.390
  %299 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %300 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast406 = ptrtoint %struct.sv** %299 to i64
  %sub.ptr.rhs.cast407 = ptrtoint %struct.sv** %300 to i64
  %sub.ptr.sub408 = sub i64 %sub.ptr.lhs.cast406, %sub.ptr.rhs.cast407
  %sub.ptr.div409 = sdiv exact i64 %sub.ptr.sub408, 8
  %cmp410 = icmp slt i64 %sub.ptr.div409, 1
  br i1 %cmp410, label %if.then.412, label %if.end.414

if.then.412:                                      ; preds = %if.else.405
  %301 = load %struct.sv**, %struct.sv*** %sp, align 8
  %302 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call413 = call %struct.sv** @Perl_stack_grow(%struct.sv** %301, %struct.sv** %302, i32 1)
  store %struct.sv** %call413, %struct.sv*** %sp, align 8
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.412, %if.else.405
  %303 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr416 = getelementptr inbounds %struct.sv*, %struct.sv** %303, i32 1
  store %struct.sv** %incdec.ptr416, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr416, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %tmp415
  %304 = load %struct.sv*, %struct.sv** %tmp415
  br label %if.end.417

if.end.417:                                       ; preds = %if.end.414, %if.end.401
  br label %if.end.418

if.end.418:                                       ; preds = %if.end.417, %if.end.386
  %305 = load i32, i32* %nitem, align 4
  %inc = add nsw i32 %305, 1
  store i32 %inc, i32* %nitem, align 4
  %306 = load i8, i8* %flgok, align 1
  %tobool419 = icmp ne i8 %306, 0
  br i1 %tobool419, label %if.then.420, label %if.end.441

if.then.420:                                      ; preds = %if.end.418
  %307 = load %struct.sv**, %struct.sv*** %flgsvp, align 8
  %308 = load %struct.sv*, %struct.sv** %307, align 8
  %sv_any422 = getelementptr inbounds %struct.sv, %struct.sv* %308, i32 0, i32 0
  %309 = load i8*, i8** %sv_any422, align 8
  %310 = bitcast i8* %309 to %struct.xpviv*
  %xiv_iv423 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %310, i32 0, i32 3
  %311 = load i64, i64* %xiv_iv423, align 8
  store i64 %311, i64* %flags, align 8
  %312 = load i64, i64* %flags, align 8
  %and424 = and i64 %312, 32768
  %tobool425 = icmp ne i64 %and424, 0
  br i1 %tobool425, label %if.then.426, label %if.end.440

if.then.426:                                      ; preds = %if.then.420
  %313 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %314 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast427 = ptrtoint %struct.sv** %313 to i64
  %sub.ptr.rhs.cast428 = ptrtoint %struct.sv** %314 to i64
  %sub.ptr.sub429 = sub i64 %sub.ptr.lhs.cast427, %sub.ptr.rhs.cast428
  %sub.ptr.div430 = sdiv exact i64 %sub.ptr.sub429, 8
  %cmp431 = icmp slt i64 %sub.ptr.div430, 1
  br i1 %cmp431, label %if.then.433, label %if.end.435

if.then.433:                                      ; preds = %if.then.426
  %315 = load %struct.sv**, %struct.sv*** %sp, align 8
  %316 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call434 = call %struct.sv** @Perl_stack_grow(%struct.sv** %315, %struct.sv** %316, i32 1)
  store %struct.sv** %call434, %struct.sv*** %sp, align 8
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.433, %if.then.426
  %call437 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i64 4)
  %317 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr438 = getelementptr inbounds %struct.sv*, %struct.sv** %317, i32 1
  store %struct.sv** %incdec.ptr438, %struct.sv*** %sp, align 8
  store %struct.sv* %call437, %struct.sv** %incdec.ptr438, align 8
  store %struct.sv* %call437, %struct.sv** %tmp436
  %318 = load %struct.sv*, %struct.sv** %tmp436
  %319 = load i32, i32* %nitem, align 4
  %inc439 = add nsw i32 %319, 1
  store i32 %inc439, i32* %nitem, align 4
  br label %if.end.440

if.end.440:                                       ; preds = %if.end.435, %if.then.420
  br label %if.end.441

if.end.441:                                       ; preds = %if.end.440, %if.end.418
  br label %if.end.442

if.end.442:                                       ; preds = %if.end.441, %if.end.369
  br label %for.inc.443

for.inc.443:                                      ; preds = %if.end.442
  %320 = load i32, i32* %i, align 4
  %sub444 = sub nsw i32 %320, 3
  store i32 %sub444, i32* %i, align 4
  br label %for.cond.257

for.end.445:                                      ; preds = %for.cond.257
  %321 = load %struct.av*, %struct.av** %av, align 8
  %322 = bitcast %struct.av* %321 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %322)
  %323 = load i32, i32* %nitem, align 4
  %conv447 = sext i32 %323 to i64
  store i64 %conv447, i64* %tmpXSoff, align 8
  %324 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %325 = load i32, i32* %ax, align 4
  %idx.ext448 = sext i32 %325 to i64
  %add.ptr449 = getelementptr inbounds %struct.sv*, %struct.sv** %324, i64 %idx.ext448
  %326 = load i64, i64* %tmpXSoff, align 8
  %sub450 = sub nsw i64 %326, 1
  %add.ptr451 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr449, i64 %sub450
  store %struct.sv** %add.ptr451, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.end.452:                                       ; preds = %cond.end.243, %if.end.227
  store i64 0, i64* %tmpXSoff454, align 8
  %327 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %328 = load i32, i32* %ax, align 4
  %idx.ext455 = sext i32 %328 to i64
  %add.ptr456 = getelementptr inbounds %struct.sv*, %struct.sv** %327, i64 %idx.ext455
  %329 = load i64, i64* %tmpXSoff454, align 8
  %sub457 = sub nsw i64 %329, 1
  %add.ptr458 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr456, i64 %sub457
  store %struct.sv** %add.ptr458, %struct.sv*** @PL_stack_sp, align 8
  br label %return

return:                                           ; preds = %if.end.452, %for.end.445
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Regexp_DESTROY(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Internals_hash_seed(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %1 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %1, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %2 = load i32, i32* %1, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %0, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %3 = load %struct.sv**, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %call = call %struct.sv* @Perl_newSVuv(i64 0)
  %call1 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call)
  %5 = load i32, i32* %ax, align 4
  %add2 = add nsw i32 %5, 0
  %idxprom = sext i32 %add2 to i64
  %6 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %6, i64 %idxprom
  store %struct.sv* %call1, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %7 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %8 = load i32, i32* %ax, align 4
  %idx.ext3 = sext i32 %8 to i64
  %add.ptr4 = getelementptr inbounds %struct.sv*, %struct.sv** %7, i64 %idx.ext3
  %9 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %9, 1
  %add.ptr5 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr4, i64 %sub
  store %struct.sv** %add.ptr5, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Internals_rehash_seed(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %tmpXSoff = alloca i64, align 8
  store %struct.cv* %cv, %struct.cv** %cv.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %1 = load i32*, i32** @PL_markstack_ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %1, i32 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8
  %2 = load i32, i32* %1, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %0, i64 %idx.ext
  store %struct.sv** %add.ptr, %struct.sv*** %mark, align 8
  %3 = load %struct.sv**, %struct.sv*** %mark, align 8
  %4 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %ax, align 4
  %5 = load i64, i64* @PL_rehash_seed, align 8
  %call = call %struct.sv* @Perl_newSVuv(i64 %5)
  %call1 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call)
  %6 = load i32, i32* %ax, align 4
  %add2 = add nsw i32 %6, 0
  %idxprom = sext i32 %add2 to i64
  %7 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %7, i64 %idxprom
  store %struct.sv* %call1, %struct.sv** %arrayidx, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %8 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %9 = load i32, i32* %ax, align 4
  %idx.ext3 = sext i32 %9 to i64
  %add.ptr4 = getelementptr inbounds %struct.sv*, %struct.sv** %8, i64 %idx.ext3
  %10 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %10, 1
  %add.ptr5 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr4, i64 %sub
  store %struct.sv** %add.ptr5, %struct.sv*** @PL_stack_sp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @XS_Internals_HvREHASH(%struct.cv* %cv) #0 {
entry:
  %cv.addr = alloca %struct.cv*, align 8
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %ax = alloca i32, align 4
  %items = alloca i32, align 4
  %hv = alloca %struct.hv*, align 8
  %tmpXSoff = alloca i64, align 8
  %tmpXSoff29 = alloca i64, align 8
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
  %8 = load i32, i32* %ax, align 4
  %add6 = add nsw i32 %8, 0
  %idxprom = sext i32 %add6 to i64
  %9 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 2
  %11 = load i32, i32* %sv_flags, align 4
  %and = and i32 %11, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %ax, align 4
  %add7 = add nsw i32 %12, 0
  %idxprom8 = sext i32 %add7 to i64
  %13 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx9 = getelementptr inbounds %struct.sv*, %struct.sv** %13, i64 %idxprom8
  %14 = load %struct.sv*, %struct.sv** %arrayidx9, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %14, i32 0, i32 0
  %15 = load i8*, i8** %sv_any, align 8
  %16 = bitcast i8* %15 to %struct.xrv*
  %xrv_rv = getelementptr inbounds %struct.xrv, %struct.xrv* %16, i32 0, i32 0
  %17 = load %struct.sv*, %struct.sv** %xrv_rv, align 8
  %18 = bitcast %struct.sv* %17 to %struct.hv*
  store %struct.hv* %18, %struct.hv** %hv, align 8
  %19 = load i32, i32* %items, align 4
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %20 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_flags11 = getelementptr inbounds %struct.hv, %struct.hv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags11, align 4
  %and12 = and i32 %21, 255
  %cmp13 = icmp eq i32 %and12, 11
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true
  %22 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_flags16 = getelementptr inbounds %struct.hv, %struct.hv* %22, i32 0, i32 2
  %23 = load i32, i32* %sv_flags16, align 4
  %and17 = and i32 %23, 268435456
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.15
  %24 = load i32, i32* %ax, align 4
  %add20 = add nsw i32 %24, 0
  %idxprom21 = sext i32 %add20 to i64
  %25 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx22 = getelementptr inbounds %struct.sv*, %struct.sv** %25, i64 %idxprom21
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx22, align 8
  store i64 1, i64* %tmpXSoff, align 8
  %26 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %27 = load i32, i32* %ax, align 4
  %idx.ext23 = sext i32 %27 to i64
  %add.ptr24 = getelementptr inbounds %struct.sv*, %struct.sv** %26, i64 %idx.ext23
  %28 = load i64, i64* %tmpXSoff, align 8
  %sub = sub nsw i64 %28, 1
  %add.ptr25 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr24, i64 %sub
  store %struct.sv** %add.ptr25, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.else:                                          ; preds = %if.then.15
  %29 = load i32, i32* %ax, align 4
  %add26 = add nsw i32 %29, 0
  %idxprom27 = sext i32 %add26 to i64
  %30 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %arrayidx28 = getelementptr inbounds %struct.sv*, %struct.sv** %30, i64 %idxprom27
  store %struct.sv* @PL_sv_no, %struct.sv** %arrayidx28, align 8
  store i64 1, i64* %tmpXSoff29, align 8
  %31 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %32 = load i32, i32* %ax, align 4
  %idx.ext30 = sext i32 %32 to i64
  %add.ptr31 = getelementptr inbounds %struct.sv*, %struct.sv** %31, i64 %idx.ext30
  %33 = load i64, i64* %tmpXSoff29, align 8
  %sub32 = sub nsw i64 %33, 1
  %add.ptr33 = getelementptr inbounds %struct.sv*, %struct.sv** %add.ptr31, i64 %sub32
  store %struct.sv** %add.ptr33, %struct.sv*** @PL_stack_sp, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.34, %if.else, %if.then.19
  ret void
}

declare void @Perl_croak(i8*, ...) #1

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv*, i8*, i32) #1

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

declare %struct.sv* @Perl_newRV(%struct.sv*) #1

declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

declare %struct.sv* @Perl_sv_newmortal() #1

declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

declare i32 @Perl_sv_cmp(%struct.sv*, %struct.sv*) #1

declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

declare double @Perl_str_to_version(%struct.sv*) #1

declare double @Perl_sv_2nv(%struct.sv*) #1

declare void @Perl_sv_setnv(%struct.sv*, double) #1

declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #1

declare signext i8 @Perl_is_utf8_string(i8*, i64) #1

declare void @Perl_sv_utf8_encode(%struct.sv*) #1

declare signext i8 @Perl_sv_utf8_decode(%struct.sv*) #1

declare i64 @Perl_sv_utf8_upgrade_flags(%struct.sv*, i32) #1

declare void @Perl_sv_setiv(%struct.sv*, i64) #1

declare i32 @Perl_mg_set(%struct.sv*) #1

declare i64 @Perl_sv_2iv(%struct.sv*) #1

declare signext i8 @Perl_sv_utf8_downgrade(%struct.sv*, i8 signext) #1

declare i64 @Perl_sv_2uv(%struct.sv*) #1

declare %struct.sv* @Perl_newSViv(i64) #1

declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

declare void @Perl_hv_clear_placeholders(%struct.hv*) #1

declare i32 @memcmp(i8*, i8*, i64) #1

declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #1

declare %struct.av* @PerlIO_get_layers(%struct._PerlIO**) #1

declare i32 @Perl_av_len(%struct.av*) #1

declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

declare %struct.sv* @Perl_newSVpvf(i8*, ...) #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

declare void @Perl_sv_free(%struct.sv*) #1

declare %struct.sv* @Perl_newSVuv(i64) #1

declare void @Perl_hv_clear(%struct.hv*) #1

declare void @Perl_gv_init(%struct.gv*, %struct.hv*, i8*, i64, i32) #1

declare %struct.gv* @Perl_gv_HVadd(%struct.gv*) #1

declare void @Perl_warner(i32, i8*, ...) #1

declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
