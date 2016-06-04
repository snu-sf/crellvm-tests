; ModuleID = 'pp_pack.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packsize_t = type { i8*, i32, i32 }
%struct.sv = type { i8*, i32, i32 }
%struct.op = type { %struct.op*, %struct.op*, {}*, i64, i16, i16, i8, i8 }
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
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.tempsym_t = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.xpv = type { i8*, i64, i64 }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvuv = type { i8*, i64, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }

@size_normal = global [53 x i8] c"\01\00\00\08\00\00\04\08\00\04\00\04\00\00\08\00\02\00\01\04\00\00\00\00\00\00\00\00\00\00\00\00\01\08\00\04\00\00\04\08\00\04\00\02\00\88\08\00\02\00\00\02\81", align 16
@size_shrieking = global [46 x i8] c"\04\00\00\08\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\08\00\00\00\00\00\00\02\00\00\00", align 16
@packsize = global [2 x %struct.packsize_t] [%struct.packsize_t { i8* getelementptr inbounds ([53 x i8], [53 x i8]* @size_normal, i32 0, i32 0), i32 67, i32 53 }, %struct.packsize_t { i8* getelementptr inbounds ([46 x i8], [46 x i8]* @size_shrieking, i32 0, i32 0), i32 73, i32 46 }], align 16
@PL_stack_sp = external global %struct.sv**, align 8
@PL_op = external global %struct.op*, align 8
@PL_curcop = external global %struct.cop*, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_stack_base = external global %struct.sv**, align 8
@PL_markstack_ptr = external global i32*, align 8
@PL_curpad = external global %struct.sv**, align 8
@PL_Sv = external global %struct.sv*, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_stack_max = external global %struct.sv**, align 8
@PL_tmps_ix = external global i32, align 4
@PL_tmps_max = external global i32, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid type '%c' in unpack\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"'@' outside of string in unpack\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"'X' outside of string in unpack\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"'x' outside of string in unpack\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"'/' must follow a numeric type in unpack\00", align 1
@PL_bitcount = external global i8*, align 8
@PL_hexdigit = external global i8*, align 8
@PL_dowarn = external global i8, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%.*lu\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Unterminated compressed integer in unpack\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"'P' must have an explicit size in unpack\00", align 1
@PL_uudmap = external global [256 x i8], align 16
@PL_uuemap = external constant [65 x i8], align 16
@.str.9 = private unnamed_addr constant [5 x i8] c"fFdD\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"cCsSiIlLnNUvVqQjJ\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Count after length/code in unpack\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"length/code after end of string in unpack\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Negative '/' count in unpack\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Code missing after '/' in unpack\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Invalid type ',' in %s\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"()-group starts with a count in %s\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Too deeply nested ()-groups in %s\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"sSiIlLxX\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"'%c' allowed only after types %s in %s\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"Duplicate modifier '%c' after '%c' in %s\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Malformed integer in [] in %s\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"'/' does not take a repeat count in %s\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"No group ending character '%c' found in template\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"pack/unpack repeat count overflow\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"Within []-length '*' not allowed in %s\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Invalid type '%c' in %s\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"Within []-length '%c' not allowed in %s\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"'X' outside of string in %s\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"0000\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"0000000000\00", align 1
@S_pack_rec.null10 = internal global [10 x i8] zeroinitializer, align 1
@S_pack_rec.space10 = internal global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), align 8
@.str.33 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"@Xxu\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"aAZ\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"'/' must be followed by 'a*', 'A*' or 'Z*' in pack\00", align 1
@PL_sv_no = external global %struct.sv, align 8
@.str.37 = private unnamed_addr constant [31 x i8] c"Code missing after '/' in pack\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Invalid type '%c' in pack\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"'%%' may not be used in pack\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"'X' outside of string in pack\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"Character in 'C' format wrapped in pack\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"Character in 'c' format wrapped in pack\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"Cannot compress negative numbers in pack\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"Can only compress unsigned integers in pack\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Cannot compress integer in pack\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"Attempt to pack pointer to temporary value\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Perl_unpack_str(i8* %pat, i8* %patend, i8* %s, i8* %strbeg, i8* %strend, i8** %new_s, i32 %ocnt, i32 %flags) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %patend.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %strbeg.addr = alloca i8*, align 8
  %strend.addr = alloca i8*, align 8
  %new_s.addr = alloca i8**, align 8
  %ocnt.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %sym = alloca %struct.tempsym_t, align 8
  store i8* %pat, i8** %pat.addr, align 8
  store i8* %patend, i8** %patend.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %strbeg, i8** %strbeg.addr, align 8
  store i8* %strend, i8** %strend.addr, align 8
  store i8** %new_s, i8*** %new_s.addr, align 8
  store i32 %ocnt, i32* %ocnt.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = bitcast %struct.tempsym_t* %sym to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 8, i1 false)
  %1 = load i8*, i8** %pat.addr, align 8
  %patptr = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %sym, i32 0, i32 0
  store i8* %1, i8** %patptr, align 8
  %2 = load i8*, i8** %patend.addr, align 8
  %patend1 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %sym, i32 0, i32 1
  store i8* %2, i8** %patend1, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %flags2 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %sym, i32 0, i32 8
  store i32 %3, i32* %flags2, align 4
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8*, i8** %strend.addr, align 8
  %call = call i32 @S_unpack_rec(%struct.tempsym_t* %sym, i8* %4, i8* %5, i8* %6, i8** null)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @S_unpack_rec(%struct.tempsym_t* %symptr, i8* %s, i8* %strbeg, i8* %strend, i8** %new_s) #0 {
entry:
  %symptr.addr = alloca %struct.tempsym_t*, align 8
  %s.addr = alloca i8*, align 8
  %strbeg.addr = alloca i8*, align 8
  %strend.addr = alloca i8*, align 8
  %new_s.addr = alloca i8**, align 8
  %sp = alloca %struct.sv**, align 8
  %datumtype = alloca i32, align 4
  %len = alloca i32, align 4
  %bits = alloca i32, align 4
  %str = alloca i8*, align 8
  %sv = alloca %struct.sv*, align 8
  %start_sp_offset = alloca i32, align 4
  %howlen = alloca i32, align 4
  %ai16 = alloca i16, align 2
  %au16 = alloca i16, align 2
  %ai32 = alloca i32, align 4
  %au32 = alloca i32, align 4
  %aquad = alloca i64, align 8
  %auquad = alloca i64, align 8
  %aint = alloca i32, align 4
  %auint = alloca i32, align 4
  %along = alloca i64, align 8
  %aulong = alloca i64, align 8
  %aptr = alloca i8*, align 8
  %afloat = alloca float, align 4
  %adouble = alloca double, align 8
  %aiv = alloca i64, align 8
  %auv = alloca i64, align 8
  %anv = alloca double, align 8
  %checksum = alloca i32, align 4
  %cuv = alloca i64, align 8
  %cdouble = alloca double, align 8
  %bits_in_uv = alloca i32, align 4
  %strrelbeg = alloca i8*, align 8
  %beyond = alloca i8, align 1
  %explicit_length = alloca i8, align 1
  %unpack_only_one = alloca i8, align 1
  %which = alloca i32, align 4
  %rawtype = alloca i32, align 4
  %offset = alloca i32, align 4
  %data = alloca i8, align 1
  %size42 = alloca i64, align 8
  %howmany = alloca i64, align 8
  %ss = alloca i8*, align 8
  %savsym = alloca %struct.tempsym_t, align 8
  %group_modifiers = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp280 = alloca %struct.sv*, align 8
  %tmp412 = alloca i64, align 8
  %tmp473 = alloca %struct.sv*, align 8
  %tmp497 = alloca i64, align 8
  %tmp558 = alloca %struct.sv*, align 8
  %alen = alloca i64, align 8
  %auv995 = alloca i64, align 8
  %bytes = alloca i32, align 4
  %t = alloca i8*, align 8
  %n_a = alloca i64, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %hunk = alloca [4 x i8], align 1
  %tmp1402 = alloca %struct.sv*, align 8
  %trouble = alloca double, align 8
  %mask = alloca i64, align 8
  %tmp1460 = alloca %struct.sv*, align 8
  store %struct.tempsym_t* %symptr, %struct.tempsym_t** %symptr.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %strbeg, i8** %strbeg.addr, align 8
  store i8* %strend, i8** %strend.addr, align 8
  store i8** %new_s, i8*** %new_s.addr, align 8
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  store i32 0, i32* %len, align 4
  store i32 0, i32* %bits, align 4
  %1 = load %struct.sv**, %struct.sv*** %sp, align 8
  %2 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %start_sp_offset, align 4
  store i32 0, i32* %checksum, align 4
  store i64 0, i64* %cuv, align 8
  store double 0.000000e+00, double* %cdouble, align 8
  store i32 64, i32* %bits_in_uv, align 4
  %3 = load i8*, i8** %s.addr, align 8
  store i8* %3, i8** %strrelbeg, align 8
  store i8 0, i8* %beyond, align 1
  %4 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %4, i32 0, i32 8
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 16
  %cmp = icmp ne i32 %and, 0
  %conv1 = zext i1 %cmp to i32
  %conv2 = trunc i32 %conv1 to i8
  store i8 %conv2, i8* %unpack_only_one, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.1508, %if.end.92, %entry
  %6 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %call = call signext i8 @S_next_symbol(%struct.tempsym_t* %6)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %while.body, label %while.end.1509

while.body:                                       ; preds = %while.cond
  %7 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %code = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %7, i32 0, i32 4
  %8 = load i32, i32* %code, align 4
  store i32 %8, i32* %datumtype, align 4
  %9 = load i8, i8* %unpack_only_one, align 1
  %conv3 = sext i8 %9 to i32
  %tobool4 = icmp ne i32 %conv3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %10 = load %struct.sv**, %struct.sv*** %sp, align 8
  %11 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast5 = ptrtoint %struct.sv** %10 to i64
  %sub.ptr.rhs.cast6 = ptrtoint %struct.sv** %11 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %sub.ptr.div8 = sdiv exact i64 %sub.ptr.sub7, 8
  %12 = load i32, i32* %start_sp_offset, align 4
  %add = add nsw i32 %12, 1
  %conv9 = sext i32 %add to i64
  %cmp10 = icmp eq i64 %sub.ptr.div8, %conv9
  br i1 %cmp10, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %13 = load i32, i32* %datumtype, align 4
  %cmp13 = icmp ne i32 %13, 47
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.12
  br label %while.end.1509

if.end:                                           ; preds = %land.lhs.true.12, %land.lhs.true, %while.body
  %14 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %howlen15 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %14, i32 0, i32 6
  %15 = load i32, i32* %howlen15, align 4
  store i32 %15, i32* %howlen, align 4
  switch i32 %15, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %16 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %length = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %16, i32 0, i32 5
  %17 = load i32, i32* %length, align 4
  store i32 %17, i32* %len, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %18 = load i8*, i8** %strend.addr, align 8
  %19 = load i8*, i8** %strbeg.addr, align 8
  %sub.ptr.lhs.cast17 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast18 = ptrtoint i8* %19 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %conv20 = trunc i64 %sub.ptr.sub19 to i32
  store i32 %conv20, i32* %len, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.16, %sw.bb
  store i8 1, i8* %explicit_length, align 1
  br label %redo_switch

redo_switch:                                      ; preds = %if.end.1506, %sw.epilog
  %20 = load i8*, i8** %s.addr, align 8
  %21 = load i8*, i8** %strend.addr, align 8
  %cmp21 = icmp uge i8* %20, %21
  %conv22 = zext i1 %cmp21 to i32
  %conv23 = trunc i32 %conv22 to i8
  store i8 %conv23, i8* %beyond, align 1
  %22 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %code24 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %22, i32 0, i32 4
  %23 = load i32, i32* %code24, align 4
  %and25 = and i32 %23, 256
  %tobool26 = icmp ne i32 %and25, 0
  %cond = select i1 %tobool26, i32 1, i32 0
  store i32 %cond, i32* %which, align 4
  %24 = load i32, i32* %datumtype, align 4
  %and27 = and i32 %24, 255
  store i32 %and27, i32* %rawtype, align 4
  %25 = load i32, i32* %rawtype, align 4
  %26 = load i32, i32* %which, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.packsize_t], [2 x %struct.packsize_t]* @packsize, i32 0, i64 %idxprom
  %first = getelementptr inbounds %struct.packsize_t, %struct.packsize_t* %arrayidx, i32 0, i32 1
  %27 = load i32, i32* %first, align 4
  %sub = sub nsw i32 %25, %27
  store i32 %sub, i32* %offset, align 4
  %28 = load i32, i32* %offset, align 4
  %cmp28 = icmp sge i32 %28, 0
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.86

land.lhs.true.30:                                 ; preds = %redo_switch
  %29 = load i32, i32* %offset, align 4
  %30 = load i32, i32* %which, align 4
  %idxprom31 = sext i32 %30 to i64
  %arrayidx32 = getelementptr inbounds [2 x %struct.packsize_t], [2 x %struct.packsize_t]* @packsize, i32 0, i64 %idxprom31
  %size = getelementptr inbounds %struct.packsize_t, %struct.packsize_t* %arrayidx32, i32 0, i32 2
  %31 = load i32, i32* %size, align 4
  %cmp33 = icmp slt i32 %29, %31
  br i1 %cmp33, label %if.then.35, label %if.end.86

if.then.35:                                       ; preds = %land.lhs.true.30
  %32 = load i32, i32* %offset, align 4
  %idxprom36 = sext i32 %32 to i64
  %33 = load i32, i32* %which, align 4
  %idxprom37 = sext i32 %33 to i64
  %arrayidx38 = getelementptr inbounds [2 x %struct.packsize_t], [2 x %struct.packsize_t]* @packsize, i32 0, i64 %idxprom37
  %array = getelementptr inbounds %struct.packsize_t, %struct.packsize_t* %arrayidx38, i32 0, i32 0
  %34 = load i8*, i8** %array, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %34, i64 %idxprom36
  %35 = load i8, i8* %arrayidx39, align 1
  store i8 %35, i8* %data, align 1
  %36 = load i8, i8* %data, align 1
  %tobool40 = icmp ne i8 %36, 0
  br i1 %tobool40, label %if.then.41, label %if.end.85

if.then.41:                                       ; preds = %if.then.35
  %37 = load i8, i8* %data, align 1
  %conv43 = zext i8 %37 to i32
  %and44 = and i32 %conv43, 63
  %conv45 = sext i32 %and44 to i64
  store i64 %conv45, i64* %size42, align 8
  %38 = load i8*, i8** %strend.addr, align 8
  %39 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast46 = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast47 = ptrtoint i8* %39 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %40 = load i64, i64* %size42, align 8
  %div = sdiv i64 %sub.ptr.sub48, %40
  store i64 %div, i64* %howmany, align 8
  %41 = load i32, i32* %len, align 4
  %conv49 = sext i32 %41 to i64
  %42 = load i64, i64* %howmany, align 8
  %cmp50 = icmp sgt i64 %conv49, %42
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.then.41
  %43 = load i64, i64* %howmany, align 8
  %conv53 = trunc i64 %43 to i32
  store i32 %conv53, i32* %len, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.then.41
  %44 = load i32, i32* %checksum, align 4
  %tobool55 = icmp ne i32 %44, 0
  br i1 %tobool55, label %lor.lhs.false, label %if.then.59

lor.lhs.false:                                    ; preds = %if.end.54
  %45 = load i8, i8* %data, align 1
  %conv56 = zext i8 %45 to i32
  %and57 = and i32 %conv56, 128
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.84

if.then.59:                                       ; preds = %lor.lhs.false, %if.end.54
  %46 = load i32, i32* %len, align 4
  %tobool60 = icmp ne i32 %46, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.68

land.lhs.true.61:                                 ; preds = %if.then.59
  %47 = load i8, i8* %unpack_only_one, align 1
  %conv62 = sext i8 %47 to i32
  %tobool63 = icmp ne i32 %conv62, 0
  br i1 %tobool63, label %land.lhs.true.64, label %if.end.68

land.lhs.true.64:                                 ; preds = %land.lhs.true.61
  %48 = load i32, i32* %rawtype, align 4
  %cmp65 = icmp ne i32 %48, 112
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true.64
  store i32 1, i32* %len, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %land.lhs.true.64, %land.lhs.true.61, %if.then.59
  %49 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %50 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast69 = ptrtoint %struct.sv** %49 to i64
  %sub.ptr.rhs.cast70 = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %sub.ptr.div72 = sdiv exact i64 %sub.ptr.sub71, 8
  %51 = load i32, i32* %len, align 4
  %conv73 = sext i32 %51 to i64
  %cmp74 = icmp slt i64 %sub.ptr.div72, %conv73
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.68
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  %53 = load %struct.sv**, %struct.sv*** %sp, align 8
  %54 = load i32, i32* %len, align 4
  %call77 = call %struct.sv** @Perl_stack_grow(%struct.sv** %52, %struct.sv** %53, i32 %54)
  store %struct.sv** %call77, %struct.sv*** %sp, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.end.68
  %55 = load i32, i32* @PL_tmps_ix, align 4
  %56 = load i32, i32* %len, align 4
  %add79 = add nsw i32 %55, %56
  %57 = load i32, i32* @PL_tmps_max, align 4
  %cmp80 = icmp sge i32 %add79, %57
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.78
  %58 = load i32, i32* %len, align 4
  call void @Perl_tmps_grow(i32 %58)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.78
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %lor.lhs.false
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.35
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %land.lhs.true.30, %redo_switch
  %59 = load i32, i32* %datumtype, align 4
  switch i32 %59, label %sw.default [
    i32 37, label %sw.bb.88
    i32 40, label %sw.bb.93
    i32 64, label %sw.bb.124
    i32 344, label %sw.bb.133
    i32 88, label %sw.bb.142
    i32 376, label %sw.bb.153
    i32 120, label %sw.bb.168
    i32 47, label %sw.bb.179
    i32 65, label %sw.bb.180
    i32 90, label %sw.bb.180
    i32 97, label %sw.bb.180
    i32 66, label %sw.bb.283
    i32 98, label %sw.bb.283
    i32 72, label %sw.bb.476
    i32 104, label %sw.bb.476
    i32 99, label %sw.bb.561
    i32 67, label %sw.bb.592
    i32 85, label %sw.bb.637
    i32 371, label %sw.bb.716
    i32 115, label %sw.bb.716
    i32 339, label %sw.bb.741
    i32 118, label %sw.bb.741
    i32 110, label %sw.bb.741
    i32 83, label %sw.bb.741
    i32 105, label %sw.bb.776
    i32 361, label %sw.bb.776
    i32 73, label %sw.bb.801
    i32 329, label %sw.bb.801
    i32 106, label %sw.bb.826
    i32 74, label %sw.bb.849
    i32 364, label %sw.bb.872
    i32 108, label %sw.bb.895
    i32 332, label %sw.bb.920
    i32 86, label %sw.bb.943
    i32 78, label %sw.bb.943
    i32 76, label %sw.bb.943
    i32 112, label %sw.bb.982
    i32 119, label %sw.bb.993
    i32 80, label %sw.bb.1072
    i32 113, label %sw.bb.1100
    i32 81, label %sw.bb.1134
    i32 102, label %sw.bb.1165
    i32 100, label %sw.bb.1183
    i32 70, label %sw.bb.1199
    i32 117, label %sw.bb.1215
  ]

sw.default:                                       ; preds = %if.end.86
  %60 = load i32, i32* %datumtype, align 4
  %and87 = and i32 %60, 255
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 %and87)
  br label %sw.bb.88

sw.bb.88:                                         ; preds = %if.end.86, %sw.default
  %61 = load i32, i32* %howlen, align 4
  %cmp89 = icmp eq i32 %61, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %sw.bb.88
  store i32 16, i32* %len, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %sw.bb.88
  %62 = load i32, i32* %len, align 4
  store i32 %62, i32* %checksum, align 4
  store i64 0, i64* %cuv, align 8
  store double 0.000000e+00, double* %cdouble, align 8
  br label %while.cond

sw.bb.93:                                         ; preds = %if.end.86
  %63 = load i8*, i8** %s.addr, align 8
  store i8* %63, i8** %ss, align 8
  %64 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %65 = bitcast %struct.tempsym_t* %savsym to i8*
  %66 = bitcast %struct.tempsym_t* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 56, i32 8, i1 false)
  %67 = load i32, i32* %datumtype, align 4
  %68 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags94 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %68, i32 0, i32 8
  %69 = load i32, i32* %flags94, align 4
  %neg = xor i32 %69, -1
  %and95 = and i32 %67, %neg
  %and96 = and i32 %and95, -256
  store i32 %and96, i32* %group_modifiers, align 4
  %70 = load i32, i32* %group_modifiers, align 4
  %71 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags97 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %71, i32 0, i32 8
  %72 = load i32, i32* %flags97, align 4
  %or = or i32 %72, %70
  store i32 %or, i32* %flags97, align 4
  %grpend = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %savsym, i32 0, i32 3
  %73 = load i8*, i8** %grpend, align 8
  %74 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %patend = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %74, i32 0, i32 1
  store i8* %73, i8** %patend, align 8
  %75 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %level = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %75, i32 0, i32 7
  %76 = load i32, i32* %level, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %level, align 4
  %77 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %77, %struct.sv*** @PL_stack_sp, align 8
  br label %while.cond.98

while.cond.98:                                    ; preds = %if.end.118, %sw.bb.93
  %78 = load i32, i32* %len, align 4
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %len, align 4
  %tobool99 = icmp ne i32 %78, 0
  br i1 %tobool99, label %while.body.100, label %while.end

while.body.100:                                   ; preds = %while.cond.98
  %grpbeg = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %savsym, i32 0, i32 2
  %79 = load i8*, i8** %grpbeg, align 8
  %80 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %patptr = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %80, i32 0, i32 0
  store i8* %79, i8** %patptr, align 8
  %81 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %82 = load i8*, i8** %ss, align 8
  %83 = load i8*, i8** %strbeg.addr, align 8
  %84 = load i8*, i8** %strend.addr, align 8
  %call101 = call i32 @S_unpack_rec(%struct.tempsym_t* %81, i8* %82, i8* %83, i8* %84, i8** %ss)
  %flags102 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %savsym, i32 0, i32 8
  %85 = load i32, i32* %flags102, align 4
  %and103 = and i32 %85, 8
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.else

if.then.105:                                      ; preds = %while.body.100
  %86 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags106 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %86, i32 0, i32 8
  %87 = load i32, i32* %flags106, align 4
  %or107 = or i32 %87, 8
  store i32 %or107, i32* %flags106, align 4
  br label %if.end.110

if.else:                                          ; preds = %while.body.100
  %88 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags108 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %88, i32 0, i32 8
  %89 = load i32, i32* %flags108, align 4
  %and109 = and i32 %89, -9
  store i32 %and109, i32* %flags108, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else, %if.then.105
  %90 = load i8*, i8** %ss, align 8
  %91 = load i8*, i8** %strend.addr, align 8
  %cmp111 = icmp eq i8* %90, %91
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.118

land.lhs.true.113:                                ; preds = %if.end.110
  %howlen114 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %savsym, i32 0, i32 6
  %92 = load i32, i32* %howlen114, align 4
  %cmp115 = icmp eq i32 %92, 2
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %land.lhs.true.113
  br label %while.end

if.end.118:                                       ; preds = %land.lhs.true.113, %if.end.110
  br label %while.cond.98

while.end:                                        ; preds = %if.then.117, %while.cond.98
  %93 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %93, %struct.sv*** %sp, align 8
  %94 = load i8*, i8** %ss, align 8
  store i8* %94, i8** %s.addr, align 8
  %95 = load i32, i32* %group_modifiers, align 4
  %neg119 = xor i32 %95, -1
  %96 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags120 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %96, i32 0, i32 8
  %97 = load i32, i32* %flags120, align 4
  %and121 = and i32 %97, %neg119
  store i32 %and121, i32* %flags120, align 4
  %98 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags122 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %98, i32 0, i32 8
  %99 = load i32, i32* %flags122, align 4
  %flags123 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %savsym, i32 0, i32 8
  store i32 %99, i32* %flags123, align 4
  %100 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %101 = bitcast %struct.tempsym_t* %100 to i8*
  %102 = bitcast %struct.tempsym_t* %savsym to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %102, i64 56, i32 8, i1 false)
  br label %sw.epilog.1405

sw.bb.124:                                        ; preds = %if.end.86
  %103 = load i32, i32* %len, align 4
  %conv125 = sext i32 %103 to i64
  %104 = load i8*, i8** %strend.addr, align 8
  %105 = load i8*, i8** %strrelbeg, align 8
  %sub.ptr.lhs.cast126 = ptrtoint i8* %104 to i64
  %sub.ptr.rhs.cast127 = ptrtoint i8* %105 to i64
  %sub.ptr.sub128 = sub i64 %sub.ptr.lhs.cast126, %sub.ptr.rhs.cast127
  %cmp129 = icmp sgt i64 %conv125, %sub.ptr.sub128
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %sw.bb.124
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %sw.bb.124
  %106 = load i8*, i8** %strrelbeg, align 8
  %107 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %107 to i64
  %add.ptr = getelementptr inbounds i8, i8* %106, i64 %idx.ext
  store i8* %add.ptr, i8** %s.addr, align 8
  br label %sw.epilog.1405

sw.bb.133:                                        ; preds = %if.end.86
  %108 = load i32, i32* %len, align 4
  %tobool134 = icmp ne i32 %108, 0
  br i1 %tobool134, label %if.end.136, label %if.then.135

if.then.135:                                      ; preds = %sw.bb.133
  store i32 1, i32* %len, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %sw.bb.133
  %109 = load i8*, i8** %s.addr, align 8
  %110 = load i8*, i8** %strbeg.addr, align 8
  %sub.ptr.lhs.cast137 = ptrtoint i8* %109 to i64
  %sub.ptr.rhs.cast138 = ptrtoint i8* %110 to i64
  %sub.ptr.sub139 = sub i64 %sub.ptr.lhs.cast137, %sub.ptr.rhs.cast138
  %111 = load i32, i32* %len, align 4
  %conv140 = sext i32 %111 to i64
  %rem = srem i64 %sub.ptr.sub139, %conv140
  %conv141 = trunc i64 %rem to i32
  store i32 %conv141, i32* %len, align 4
  br label %sw.bb.142

sw.bb.142:                                        ; preds = %if.end.86, %if.end.136
  %112 = load i32, i32* %len, align 4
  %conv143 = sext i32 %112 to i64
  %113 = load i8*, i8** %s.addr, align 8
  %114 = load i8*, i8** %strbeg.addr, align 8
  %sub.ptr.lhs.cast144 = ptrtoint i8* %113 to i64
  %sub.ptr.rhs.cast145 = ptrtoint i8* %114 to i64
  %sub.ptr.sub146 = sub i64 %sub.ptr.lhs.cast144, %sub.ptr.rhs.cast145
  %cmp147 = icmp sgt i64 %conv143, %sub.ptr.sub146
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %sw.bb.142
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %sw.bb.142
  %115 = load i32, i32* %len, align 4
  %116 = load i8*, i8** %s.addr, align 8
  %idx.ext151 = sext i32 %115 to i64
  %idx.neg = sub i64 0, %idx.ext151
  %add.ptr152 = getelementptr inbounds i8, i8* %116, i64 %idx.neg
  store i8* %add.ptr152, i8** %s.addr, align 8
  br label %sw.epilog.1405

sw.bb.153:                                        ; preds = %if.end.86
  %117 = load i32, i32* %len, align 4
  %tobool154 = icmp ne i32 %117, 0
  br i1 %tobool154, label %if.end.156, label %if.then.155

if.then.155:                                      ; preds = %sw.bb.153
  store i32 1, i32* %len, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %sw.bb.153
  %118 = load i8*, i8** %s.addr, align 8
  %119 = load i8*, i8** %strbeg.addr, align 8
  %sub.ptr.lhs.cast157 = ptrtoint i8* %118 to i64
  %sub.ptr.rhs.cast158 = ptrtoint i8* %119 to i64
  %sub.ptr.sub159 = sub i64 %sub.ptr.lhs.cast157, %sub.ptr.rhs.cast158
  %120 = load i32, i32* %len, align 4
  %conv160 = sext i32 %120 to i64
  %rem161 = srem i64 %sub.ptr.sub159, %conv160
  %conv162 = trunc i64 %rem161 to i32
  store i32 %conv162, i32* %aint, align 4
  %121 = load i32, i32* %aint, align 4
  %tobool163 = icmp ne i32 %121, 0
  br i1 %tobool163, label %if.then.164, label %if.else.166

if.then.164:                                      ; preds = %if.end.156
  %122 = load i32, i32* %len, align 4
  %123 = load i32, i32* %aint, align 4
  %sub165 = sub nsw i32 %122, %123
  store i32 %sub165, i32* %len, align 4
  br label %if.end.167

if.else.166:                                      ; preds = %if.end.156
  store i32 0, i32* %len, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.166, %if.then.164
  br label %sw.bb.168

sw.bb.168:                                        ; preds = %if.end.86, %if.end.167
  %124 = load i32, i32* %len, align 4
  %conv169 = sext i32 %124 to i64
  %125 = load i8*, i8** %strend.addr, align 8
  %126 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast170 = ptrtoint i8* %125 to i64
  %sub.ptr.rhs.cast171 = ptrtoint i8* %126 to i64
  %sub.ptr.sub172 = sub i64 %sub.ptr.lhs.cast170, %sub.ptr.rhs.cast171
  %cmp173 = icmp sgt i64 %conv169, %sub.ptr.sub172
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %sw.bb.168
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.175, %sw.bb.168
  %127 = load i32, i32* %len, align 4
  %128 = load i8*, i8** %s.addr, align 8
  %idx.ext177 = sext i32 %127 to i64
  %add.ptr178 = getelementptr inbounds i8, i8* %128, i64 %idx.ext177
  store i8* %add.ptr178, i8** %s.addr, align 8
  br label %sw.epilog.1405

sw.bb.179:                                        ; preds = %if.end.86
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0))
  br label %sw.epilog.1405

sw.bb.180:                                        ; preds = %if.end.86, %if.end.86, %if.end.86
  %129 = load i32, i32* %len, align 4
  %conv181 = sext i32 %129 to i64
  %130 = load i8*, i8** %strend.addr, align 8
  %131 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast182 = ptrtoint i8* %130 to i64
  %sub.ptr.rhs.cast183 = ptrtoint i8* %131 to i64
  %sub.ptr.sub184 = sub i64 %sub.ptr.lhs.cast182, %sub.ptr.rhs.cast183
  %cmp185 = icmp sgt i64 %conv181, %sub.ptr.sub184
  br i1 %cmp185, label %if.then.187, label %if.end.192

if.then.187:                                      ; preds = %sw.bb.180
  %132 = load i8*, i8** %strend.addr, align 8
  %133 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast188 = ptrtoint i8* %132 to i64
  %sub.ptr.rhs.cast189 = ptrtoint i8* %133 to i64
  %sub.ptr.sub190 = sub i64 %sub.ptr.lhs.cast188, %sub.ptr.rhs.cast189
  %conv191 = trunc i64 %sub.ptr.sub190 to i32
  store i32 %conv191, i32* %len, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.187, %sw.bb.180
  %134 = load i32, i32* %checksum, align 4
  %tobool193 = icmp ne i32 %134, 0
  br i1 %tobool193, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.192
  br label %uchar_checksum

if.end.195:                                       ; preds = %if.end.192
  %135 = load i8*, i8** %s.addr, align 8
  %136 = load i32, i32* %len, align 4
  %conv196 = sext i32 %136 to i64
  %call197 = call %struct.sv* @Perl_newSVpvn(i8* %135, i64 %conv196)
  store %struct.sv* %call197, %struct.sv** %sv, align 8
  %137 = load i32, i32* %len, align 4
  %cmp198 = icmp sgt i32 %137, 0
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.268

land.lhs.true.200:                                ; preds = %if.end.195
  %138 = load i32, i32* %datumtype, align 4
  %cmp201 = icmp eq i32 %138, 65
  br i1 %cmp201, label %if.then.206, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %land.lhs.true.200
  %139 = load i32, i32* %datumtype, align 4
  %cmp204 = icmp eq i32 %139, 90
  br i1 %cmp204, label %if.then.206, label %if.end.268

if.then.206:                                      ; preds = %lor.lhs.false.203, %land.lhs.true.200
  %140 = load i8*, i8** %s.addr, align 8
  store i8* %140, i8** %aptr, align 8
  %141 = load i32, i32* %datumtype, align 4
  %cmp207 = icmp eq i32 %141, 90
  br i1 %cmp207, label %if.then.209, label %if.else.225

if.then.209:                                      ; preds = %if.then.206
  %142 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %142, i32 0, i32 0
  %143 = load i8*, i8** %sv_any, align 8
  %144 = bitcast i8* %143 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %144, i32 0, i32 0
  %145 = load i8*, i8** %xpv_pv, align 8
  store i8* %145, i8** %s.addr, align 8
  br label %while.cond.210

while.cond.210:                                   ; preds = %while.body.212, %if.then.209
  %146 = load i8*, i8** %s.addr, align 8
  %147 = load i8, i8* %146, align 1
  %tobool211 = icmp ne i8 %147, 0
  br i1 %tobool211, label %while.body.212, label %while.end.213

while.body.212:                                   ; preds = %while.cond.210
  %148 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond.210

while.end.213:                                    ; preds = %while.cond.210
  %149 = load i32, i32* %howlen, align 4
  %cmp214 = icmp eq i32 %149, 2
  br i1 %cmp214, label %if.then.216, label %if.end.224

if.then.216:                                      ; preds = %while.end.213
  %150 = load i8*, i8** %s.addr, align 8
  %151 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any217 = getelementptr inbounds %struct.sv, %struct.sv* %151, i32 0, i32 0
  %152 = load i8*, i8** %sv_any217, align 8
  %153 = bitcast i8* %152 to %struct.xpv*
  %xpv_pv218 = getelementptr inbounds %struct.xpv, %struct.xpv* %153, i32 0, i32 0
  %154 = load i8*, i8** %xpv_pv218, align 8
  %sub.ptr.lhs.cast219 = ptrtoint i8* %150 to i64
  %sub.ptr.rhs.cast220 = ptrtoint i8* %154 to i64
  %sub.ptr.sub221 = sub i64 %sub.ptr.lhs.cast219, %sub.ptr.rhs.cast220
  %add222 = add nsw i64 %sub.ptr.sub221, 1
  %conv223 = trunc i64 %add222 to i32
  store i32 %conv223, i32* %len, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.216, %while.end.213
  br label %if.end.261

if.else.225:                                      ; preds = %if.then.206
  %155 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any226 = getelementptr inbounds %struct.sv, %struct.sv* %155, i32 0, i32 0
  %156 = load i8*, i8** %sv_any226, align 8
  %157 = bitcast i8* %156 to %struct.xpv*
  %xpv_pv227 = getelementptr inbounds %struct.xpv, %struct.xpv* %157, i32 0, i32 0
  %158 = load i8*, i8** %xpv_pv227, align 8
  %159 = load i32, i32* %len, align 4
  %idx.ext228 = sext i32 %159 to i64
  %add.ptr229 = getelementptr inbounds i8, i8* %158, i64 %idx.ext228
  %add.ptr230 = getelementptr inbounds i8, i8* %add.ptr229, i64 -1
  store i8* %add.ptr230, i8** %s.addr, align 8
  br label %while.cond.231

while.cond.231:                                   ; preds = %while.body.257, %if.else.225
  %160 = load i8*, i8** %s.addr, align 8
  %161 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any232 = getelementptr inbounds %struct.sv, %struct.sv* %161, i32 0, i32 0
  %162 = load i8*, i8** %sv_any232, align 8
  %163 = bitcast i8* %162 to %struct.xpv*
  %xpv_pv233 = getelementptr inbounds %struct.xpv, %struct.xpv* %163, i32 0, i32 0
  %164 = load i8*, i8** %xpv_pv233, align 8
  %cmp234 = icmp uge i8* %160, %164
  br i1 %cmp234, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.231
  %165 = load i8*, i8** %s.addr, align 8
  %166 = load i8, i8* %165, align 1
  %tobool236 = icmp ne i8 %166, 0
  br i1 %tobool236, label %lor.rhs, label %lor.end.256

lor.rhs:                                          ; preds = %land.rhs
  %167 = load i8*, i8** %s.addr, align 8
  %168 = load i8, i8* %167, align 1
  %conv237 = sext i8 %168 to i32
  %cmp238 = icmp eq i32 %conv237, 32
  br i1 %cmp238, label %lor.end, label %lor.lhs.false.240

lor.lhs.false.240:                                ; preds = %lor.rhs
  %169 = load i8*, i8** %s.addr, align 8
  %170 = load i8, i8* %169, align 1
  %conv241 = sext i8 %170 to i32
  %cmp242 = icmp eq i32 %conv241, 9
  br i1 %cmp242, label %lor.end, label %lor.lhs.false.244

lor.lhs.false.244:                                ; preds = %lor.lhs.false.240
  %171 = load i8*, i8** %s.addr, align 8
  %172 = load i8, i8* %171, align 1
  %conv245 = sext i8 %172 to i32
  %cmp246 = icmp eq i32 %conv245, 10
  br i1 %cmp246, label %lor.end, label %lor.lhs.false.248

lor.lhs.false.248:                                ; preds = %lor.lhs.false.244
  %173 = load i8*, i8** %s.addr, align 8
  %174 = load i8, i8* %173, align 1
  %conv249 = sext i8 %174 to i32
  %cmp250 = icmp eq i32 %conv249, 13
  br i1 %cmp250, label %lor.end, label %lor.rhs.252

lor.rhs.252:                                      ; preds = %lor.lhs.false.248
  %175 = load i8*, i8** %s.addr, align 8
  %176 = load i8, i8* %175, align 1
  %conv253 = sext i8 %176 to i32
  %cmp254 = icmp eq i32 %conv253, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.252, %lor.lhs.false.248, %lor.lhs.false.244, %lor.lhs.false.240, %lor.rhs
  %177 = phi i1 [ true, %lor.lhs.false.248 ], [ true, %lor.lhs.false.244 ], [ true, %lor.lhs.false.240 ], [ true, %lor.rhs ], [ %cmp254, %lor.rhs.252 ]
  br label %lor.end.256

lor.end.256:                                      ; preds = %lor.end, %land.rhs
  %178 = phi i1 [ true, %land.rhs ], [ %177, %lor.end ]
  br label %land.end

land.end:                                         ; preds = %lor.end.256, %while.cond.231
  %179 = phi i1 [ false, %while.cond.231 ], [ %178, %lor.end.256 ]
  br i1 %179, label %while.body.257, label %while.end.259

while.body.257:                                   ; preds = %land.end
  %180 = load i8*, i8** %s.addr, align 8
  %incdec.ptr258 = getelementptr inbounds i8, i8* %180, i32 -1
  store i8* %incdec.ptr258, i8** %s.addr, align 8
  br label %while.cond.231

while.end.259:                                    ; preds = %land.end
  %181 = load i8*, i8** %s.addr, align 8
  %incdec.ptr260 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %incdec.ptr260, i8** %s.addr, align 8
  store i8 0, i8* %incdec.ptr260, align 1
  br label %if.end.261

if.end.261:                                       ; preds = %while.end.259, %if.end.224
  %182 = load i8*, i8** %s.addr, align 8
  %183 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any262 = getelementptr inbounds %struct.sv, %struct.sv* %183, i32 0, i32 0
  %184 = load i8*, i8** %sv_any262, align 8
  %185 = bitcast i8* %184 to %struct.xpv*
  %xpv_pv263 = getelementptr inbounds %struct.xpv, %struct.xpv* %185, i32 0, i32 0
  %186 = load i8*, i8** %xpv_pv263, align 8
  %sub.ptr.lhs.cast264 = ptrtoint i8* %182 to i64
  %sub.ptr.rhs.cast265 = ptrtoint i8* %186 to i64
  %sub.ptr.sub266 = sub i64 %sub.ptr.lhs.cast264, %sub.ptr.rhs.cast265
  %187 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any267 = getelementptr inbounds %struct.sv, %struct.sv* %187, i32 0, i32 0
  %188 = load i8*, i8** %sv_any267, align 8
  %189 = bitcast i8* %188 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %189, i32 0, i32 1
  store i64 %sub.ptr.sub266, i64* %xpv_cur, align 8
  store i64 %sub.ptr.sub266, i64* %tmp
  %190 = load i64, i64* %tmp
  %191 = load i8*, i8** %aptr, align 8
  store i8* %191, i8** %s.addr, align 8
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.261, %lor.lhs.false.203, %if.end.195
  %192 = load i32, i32* %len, align 4
  %193 = load i8*, i8** %s.addr, align 8
  %idx.ext269 = sext i32 %192 to i64
  %add.ptr270 = getelementptr inbounds i8, i8* %193, i64 %idx.ext269
  store i8* %add.ptr270, i8** %s.addr, align 8
  %194 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %195 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast271 = ptrtoint %struct.sv** %194 to i64
  %sub.ptr.rhs.cast272 = ptrtoint %struct.sv** %195 to i64
  %sub.ptr.sub273 = sub i64 %sub.ptr.lhs.cast271, %sub.ptr.rhs.cast272
  %sub.ptr.div274 = sdiv exact i64 %sub.ptr.sub273, 8
  %cmp275 = icmp slt i64 %sub.ptr.div274, 1
  br i1 %cmp275, label %if.then.277, label %if.end.279

if.then.277:                                      ; preds = %if.end.268
  %196 = load %struct.sv**, %struct.sv*** %sp, align 8
  %197 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call278 = call %struct.sv** @Perl_stack_grow(%struct.sv** %196, %struct.sv** %197, i32 1)
  store %struct.sv** %call278, %struct.sv*** %sp, align 8
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.277, %if.end.268
  %198 = load %struct.sv*, %struct.sv** %sv, align 8
  %call281 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %198)
  %199 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr282 = getelementptr inbounds %struct.sv*, %struct.sv** %199, i32 1
  store %struct.sv** %incdec.ptr282, %struct.sv*** %sp, align 8
  store %struct.sv* %call281, %struct.sv** %incdec.ptr282, align 8
  store %struct.sv* %call281, %struct.sv** %tmp280
  %200 = load %struct.sv*, %struct.sv** %tmp280
  br label %sw.epilog.1405

sw.bb.283:                                        ; preds = %if.end.86, %if.end.86
  %201 = load i32, i32* %howlen, align 4
  %cmp284 = icmp eq i32 %201, 2
  br i1 %cmp284, label %if.then.293, label %lor.lhs.false.286

lor.lhs.false.286:                                ; preds = %sw.bb.283
  %202 = load i32, i32* %len, align 4
  %conv287 = sext i32 %202 to i64
  %203 = load i8*, i8** %strend.addr, align 8
  %204 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast288 = ptrtoint i8* %203 to i64
  %sub.ptr.rhs.cast289 = ptrtoint i8* %204 to i64
  %sub.ptr.sub290 = sub i64 %sub.ptr.lhs.cast288, %sub.ptr.rhs.cast289
  %mul = mul nsw i64 %sub.ptr.sub290, 8
  %cmp291 = icmp sgt i64 %conv287, %mul
  br i1 %cmp291, label %if.then.293, label %if.end.299

if.then.293:                                      ; preds = %lor.lhs.false.286, %sw.bb.283
  %205 = load i8*, i8** %strend.addr, align 8
  %206 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast294 = ptrtoint i8* %205 to i64
  %sub.ptr.rhs.cast295 = ptrtoint i8* %206 to i64
  %sub.ptr.sub296 = sub i64 %sub.ptr.lhs.cast294, %sub.ptr.rhs.cast295
  %mul297 = mul nsw i64 %sub.ptr.sub296, 8
  %conv298 = trunc i64 %mul297 to i32
  store i32 %conv298, i32* %len, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.293, %lor.lhs.false.286
  %207 = load i32, i32* %checksum, align 4
  %tobool300 = icmp ne i32 %207, 0
  br i1 %tobool300, label %if.then.301, label %if.end.408

if.then.301:                                      ; preds = %if.end.299
  %208 = load i8*, i8** @PL_bitcount, align 8
  %tobool302 = icmp ne i8* %208, null
  br i1 %tobool302, label %if.end.364, label %if.then.303

if.then.303:                                      ; preds = %if.then.301
  %call304 = call i8* @Perl_safesysmalloc(i64 256)
  store i8* %call304, i8** @PL_bitcount, align 8
  %209 = load i8*, i8** @PL_bitcount, align 8
  call void @llvm.memset.p0i8.i64(i8* %209, i8 0, i64 256, i32 1, i1 false)
  store i32 1, i32* %bits, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.303
  %210 = load i32, i32* %bits, align 4
  %cmp305 = icmp slt i32 %210, 256
  br i1 %cmp305, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %211 = load i32, i32* %bits, align 4
  %and307 = and i32 %211, 1
  %tobool308 = icmp ne i32 %and307, 0
  br i1 %tobool308, label %if.then.309, label %if.end.313

if.then.309:                                      ; preds = %for.body
  %212 = load i32, i32* %bits, align 4
  %idxprom310 = sext i32 %212 to i64
  %213 = load i8*, i8** @PL_bitcount, align 8
  %arrayidx311 = getelementptr inbounds i8, i8* %213, i64 %idxprom310
  %214 = load i8, i8* %arrayidx311, align 1
  %inc312 = add i8 %214, 1
  store i8 %inc312, i8* %arrayidx311, align 1
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.309, %for.body
  %215 = load i32, i32* %bits, align 4
  %and314 = and i32 %215, 2
  %tobool315 = icmp ne i32 %and314, 0
  br i1 %tobool315, label %if.then.316, label %if.end.320

if.then.316:                                      ; preds = %if.end.313
  %216 = load i32, i32* %bits, align 4
  %idxprom317 = sext i32 %216 to i64
  %217 = load i8*, i8** @PL_bitcount, align 8
  %arrayidx318 = getelementptr inbounds i8, i8* %217, i64 %idxprom317
  %218 = load i8, i8* %arrayidx318, align 1
  %inc319 = add i8 %218, 1
  store i8 %inc319, i8* %arrayidx318, align 1
  br label %if.end.320

if.end.320:                                       ; preds = %if.then.316, %if.end.313
  %219 = load i32, i32* %bits, align 4
  %and321 = and i32 %219, 4
  %tobool322 = icmp ne i32 %and321, 0
  br i1 %tobool322, label %if.then.323, label %if.end.327

if.then.323:                                      ; preds = %if.end.320
  %220 = load i32, i32* %bits, align 4
  %idxprom324 = sext i32 %220 to i64
  %221 = load i8*, i8** @PL_bitcount, align 8
  %arrayidx325 = getelementptr inbounds i8, i8* %221, i64 %idxprom324
  %222 = load i8, i8* %arrayidx325, align 1
  %inc326 = add i8 %222, 1
  store i8 %inc326, i8* %arrayidx325, align 1
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.323, %if.end.320
  %223 = load i32, i32* %bits, align 4
  %and328 = and i32 %223, 8
  %tobool329 = icmp ne i32 %and328, 0
  br i1 %tobool329, label %if.then.330, label %if.end.334

if.then.330:                                      ; preds = %if.end.327
  %224 = load i32, i32* %bits, align 4
  %idxprom331 = sext i32 %224 to i64
  %225 = load i8*, i8** @PL_bitcount, align 8
  %arrayidx332 = getelementptr inbounds i8, i8* %225, i64 %idxprom331
  %226 = load i8, i8* %arrayidx332, align 1
  %inc333 = add i8 %226, 1
  store i8 %inc333, i8* %arrayidx332, align 1
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.330, %if.end.327
  %227 = load i32, i32* %bits, align 4
  %and335 = and i32 %227, 16
  %tobool336 = icmp ne i32 %and335, 0
  br i1 %tobool336, label %if.then.337, label %if.end.341

if.then.337:                                      ; preds = %if.end.334
  %228 = load i32, i32* %bits, align 4
  %idxprom338 = sext i32 %228 to i64
  %229 = load i8*, i8** @PL_bitcount, align 8
  %arrayidx339 = getelementptr inbounds i8, i8* %229, i64 %idxprom338
  %230 = load i8, i8* %arrayidx339, align 1
  %inc340 = add i8 %230, 1
  store i8 %inc340, i8* %arrayidx339, align 1
  br label %if.end.341

if.end.341:                                       ; preds = %if.then.337, %if.end.334
  %231 = load i32, i32* %bits, align 4
  %and342 = and i32 %231, 32
  %tobool343 = icmp ne i32 %and342, 0
  br i1 %tobool343, label %if.then.344, label %if.end.348

if.then.344:                                      ; preds = %if.end.341
  %232 = load i32, i32* %bits, align 4
  %idxprom345 = sext i32 %232 to i64
  %233 = load i8*, i8** @PL_bitcount, align 8
  %arrayidx346 = getelementptr inbounds i8, i8* %233, i64 %idxprom345
  %234 = load i8, i8* %arrayidx346, align 1
  %inc347 = add i8 %234, 1
  store i8 %inc347, i8* %arrayidx346, align 1
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.344, %if.end.341
  %235 = load i32, i32* %bits, align 4
  %and349 = and i32 %235, 64
  %tobool350 = icmp ne i32 %and349, 0
  br i1 %tobool350, label %if.then.351, label %if.end.355

if.then.351:                                      ; preds = %if.end.348
  %236 = load i32, i32* %bits, align 4
  %idxprom352 = sext i32 %236 to i64
  %237 = load i8*, i8** @PL_bitcount, align 8
  %arrayidx353 = getelementptr inbounds i8, i8* %237, i64 %idxprom352
  %238 = load i8, i8* %arrayidx353, align 1
  %inc354 = add i8 %238, 1
  store i8 %inc354, i8* %arrayidx353, align 1
  br label %if.end.355

if.end.355:                                       ; preds = %if.then.351, %if.end.348
  %239 = load i32, i32* %bits, align 4
  %and356 = and i32 %239, 128
  %tobool357 = icmp ne i32 %and356, 0
  br i1 %tobool357, label %if.then.358, label %if.end.362

if.then.358:                                      ; preds = %if.end.355
  %240 = load i32, i32* %bits, align 4
  %idxprom359 = sext i32 %240 to i64
  %241 = load i8*, i8** @PL_bitcount, align 8
  %arrayidx360 = getelementptr inbounds i8, i8* %241, i64 %idxprom359
  %242 = load i8, i8* %arrayidx360, align 1
  %inc361 = add i8 %242, 1
  store i8 %inc361, i8* %arrayidx360, align 1
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.358, %if.end.355
  br label %for.inc

for.inc:                                          ; preds = %if.end.362
  %243 = load i32, i32* %bits, align 4
  %inc363 = add nsw i32 %243, 1
  store i32 %inc363, i32* %bits, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.364

if.end.364:                                       ; preds = %for.end, %if.then.301
  br label %while.cond.365

while.cond.365:                                   ; preds = %while.body.368, %if.end.364
  %244 = load i32, i32* %len, align 4
  %cmp366 = icmp sge i32 %244, 8
  br i1 %cmp366, label %while.body.368, label %while.end.375

while.body.368:                                   ; preds = %while.cond.365
  %245 = load i8*, i8** %s.addr, align 8
  %incdec.ptr369 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %incdec.ptr369, i8** %s.addr, align 8
  %246 = load i8, i8* %245, align 1
  %idxprom370 = zext i8 %246 to i64
  %247 = load i8*, i8** @PL_bitcount, align 8
  %arrayidx371 = getelementptr inbounds i8, i8* %247, i64 %idxprom370
  %248 = load i8, i8* %arrayidx371, align 1
  %conv372 = sext i8 %248 to i64
  %249 = load i64, i64* %cuv, align 8
  %add373 = add i64 %249, %conv372
  store i64 %add373, i64* %cuv, align 8
  %250 = load i32, i32* %len, align 4
  %sub374 = sub nsw i32 %250, 8
  store i32 %sub374, i32* %len, align 4
  br label %while.cond.365

while.end.375:                                    ; preds = %while.cond.365
  %251 = load i32, i32* %len, align 4
  %tobool376 = icmp ne i32 %251, 0
  br i1 %tobool376, label %if.then.377, label %if.end.407

if.then.377:                                      ; preds = %while.end.375
  %252 = load i8*, i8** %s.addr, align 8
  %incdec.ptr378 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %incdec.ptr378, i8** %s.addr, align 8
  %253 = load i8, i8* %252, align 1
  %conv379 = sext i8 %253 to i32
  store i32 %conv379, i32* %bits, align 4
  %254 = load i32, i32* %datumtype, align 4
  %cmp380 = icmp eq i32 %254, 98
  br i1 %cmp380, label %if.then.382, label %if.else.394

if.then.382:                                      ; preds = %if.then.377
  br label %while.cond.383

while.cond.383:                                   ; preds = %if.end.392, %if.then.382
  %255 = load i32, i32* %len, align 4
  %dec384 = add nsw i32 %255, -1
  store i32 %dec384, i32* %len, align 4
  %cmp385 = icmp sgt i32 %255, 0
  br i1 %cmp385, label %while.body.387, label %while.end.393

while.body.387:                                   ; preds = %while.cond.383
  %256 = load i32, i32* %bits, align 4
  %and388 = and i32 %256, 1
  %tobool389 = icmp ne i32 %and388, 0
  br i1 %tobool389, label %if.then.390, label %if.end.392

if.then.390:                                      ; preds = %while.body.387
  %257 = load i64, i64* %cuv, align 8
  %inc391 = add i64 %257, 1
  store i64 %inc391, i64* %cuv, align 8
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.390, %while.body.387
  %258 = load i32, i32* %bits, align 4
  %shr = ashr i32 %258, 1
  store i32 %shr, i32* %bits, align 4
  br label %while.cond.383

while.end.393:                                    ; preds = %while.cond.383
  br label %if.end.406

if.else.394:                                      ; preds = %if.then.377
  br label %while.cond.395

while.cond.395:                                   ; preds = %if.end.404, %if.else.394
  %259 = load i32, i32* %len, align 4
  %dec396 = add nsw i32 %259, -1
  store i32 %dec396, i32* %len, align 4
  %cmp397 = icmp sgt i32 %259, 0
  br i1 %cmp397, label %while.body.399, label %while.end.405

while.body.399:                                   ; preds = %while.cond.395
  %260 = load i32, i32* %bits, align 4
  %and400 = and i32 %260, 128
  %tobool401 = icmp ne i32 %and400, 0
  br i1 %tobool401, label %if.then.402, label %if.end.404

if.then.402:                                      ; preds = %while.body.399
  %261 = load i64, i64* %cuv, align 8
  %inc403 = add i64 %261, 1
  store i64 %inc403, i64* %cuv, align 8
  br label %if.end.404

if.end.404:                                       ; preds = %if.then.402, %while.body.399
  %262 = load i32, i32* %bits, align 4
  %shl = shl i32 %262, 1
  store i32 %shl, i32* %bits, align 4
  br label %while.cond.395

while.end.405:                                    ; preds = %while.cond.395
  br label %if.end.406

if.end.406:                                       ; preds = %while.end.405, %while.end.393
  br label %if.end.407

if.end.407:                                       ; preds = %if.end.406, %while.end.375
  br label %sw.epilog.1405

if.end.408:                                       ; preds = %if.end.299
  %263 = load i32, i32* %len, align 4
  %add409 = add nsw i32 %263, 1
  %conv410 = sext i32 %add409 to i64
  %call411 = call %struct.sv* @Perl_newSV(i64 %conv410)
  store %struct.sv* %call411, %struct.sv** %sv, align 8
  %264 = load i32, i32* %len, align 4
  %conv413 = sext i32 %264 to i64
  %265 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any414 = getelementptr inbounds %struct.sv, %struct.sv* %265, i32 0, i32 0
  %266 = load i8*, i8** %sv_any414, align 8
  %267 = bitcast i8* %266 to %struct.xpv*
  %xpv_cur415 = getelementptr inbounds %struct.xpv, %struct.xpv* %267, i32 0, i32 1
  store i64 %conv413, i64* %xpv_cur415, align 8
  store i64 %conv413, i64* %tmp412
  %268 = load i64, i64* %tmp412
  %269 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %269, i32 0, i32 2
  %270 = load i32, i32* %sv_flags, align 4
  %or416 = or i32 %270, 67371008
  store i32 %or416, i32* %sv_flags, align 4
  %271 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any417 = getelementptr inbounds %struct.sv, %struct.sv* %271, i32 0, i32 0
  %272 = load i8*, i8** %sv_any417, align 8
  %273 = bitcast i8* %272 to %struct.xpv*
  %xpv_pv418 = getelementptr inbounds %struct.xpv, %struct.xpv* %273, i32 0, i32 0
  %274 = load i8*, i8** %xpv_pv418, align 8
  store i8* %274, i8** %str, align 8
  %275 = load i32, i32* %datumtype, align 4
  %cmp419 = icmp eq i32 %275, 98
  br i1 %cmp419, label %if.then.421, label %if.else.441

if.then.421:                                      ; preds = %if.end.408
  %276 = load i32, i32* %len, align 4
  store i32 %276, i32* %aint, align 4
  store i32 0, i32* %len, align 4
  br label %for.cond.422

for.cond.422:                                     ; preds = %for.inc.438, %if.then.421
  %277 = load i32, i32* %len, align 4
  %278 = load i32, i32* %aint, align 4
  %cmp423 = icmp slt i32 %277, %278
  br i1 %cmp423, label %for.body.425, label %for.end.440

for.body.425:                                     ; preds = %for.cond.422
  %279 = load i32, i32* %len, align 4
  %and426 = and i32 %279, 7
  %tobool427 = icmp ne i32 %and426, 0
  br i1 %tobool427, label %if.then.428, label %if.else.430

if.then.428:                                      ; preds = %for.body.425
  %280 = load i32, i32* %bits, align 4
  %shr429 = ashr i32 %280, 1
  store i32 %shr429, i32* %bits, align 4
  br label %if.end.433

if.else.430:                                      ; preds = %for.body.425
  %281 = load i8*, i8** %s.addr, align 8
  %incdec.ptr431 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %incdec.ptr431, i8** %s.addr, align 8
  %282 = load i8, i8* %281, align 1
  %conv432 = sext i8 %282 to i32
  store i32 %conv432, i32* %bits, align 4
  br label %if.end.433

if.end.433:                                       ; preds = %if.else.430, %if.then.428
  %283 = load i32, i32* %bits, align 4
  %and434 = and i32 %283, 1
  %add435 = add nsw i32 48, %and434
  %conv436 = trunc i32 %add435 to i8
  %284 = load i8*, i8** %str, align 8
  %incdec.ptr437 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %incdec.ptr437, i8** %str, align 8
  store i8 %conv436, i8* %284, align 1
  br label %for.inc.438

for.inc.438:                                      ; preds = %if.end.433
  %285 = load i32, i32* %len, align 4
  %inc439 = add nsw i32 %285, 1
  store i32 %inc439, i32* %len, align 4
  br label %for.cond.422

for.end.440:                                      ; preds = %for.cond.422
  br label %if.end.463

if.else.441:                                      ; preds = %if.end.408
  %286 = load i32, i32* %len, align 4
  store i32 %286, i32* %aint, align 4
  store i32 0, i32* %len, align 4
  br label %for.cond.442

for.cond.442:                                     ; preds = %for.inc.460, %if.else.441
  %287 = load i32, i32* %len, align 4
  %288 = load i32, i32* %aint, align 4
  %cmp443 = icmp slt i32 %287, %288
  br i1 %cmp443, label %for.body.445, label %for.end.462

for.body.445:                                     ; preds = %for.cond.442
  %289 = load i32, i32* %len, align 4
  %and446 = and i32 %289, 7
  %tobool447 = icmp ne i32 %and446, 0
  br i1 %tobool447, label %if.then.448, label %if.else.450

if.then.448:                                      ; preds = %for.body.445
  %290 = load i32, i32* %bits, align 4
  %shl449 = shl i32 %290, 1
  store i32 %shl449, i32* %bits, align 4
  br label %if.end.453

if.else.450:                                      ; preds = %for.body.445
  %291 = load i8*, i8** %s.addr, align 8
  %incdec.ptr451 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %incdec.ptr451, i8** %s.addr, align 8
  %292 = load i8, i8* %291, align 1
  %conv452 = sext i8 %292 to i32
  store i32 %conv452, i32* %bits, align 4
  br label %if.end.453

if.end.453:                                       ; preds = %if.else.450, %if.then.448
  %293 = load i32, i32* %bits, align 4
  %and454 = and i32 %293, 128
  %cmp455 = icmp ne i32 %and454, 0
  %conv456 = zext i1 %cmp455 to i32
  %add457 = add nsw i32 48, %conv456
  %conv458 = trunc i32 %add457 to i8
  %294 = load i8*, i8** %str, align 8
  %incdec.ptr459 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %incdec.ptr459, i8** %str, align 8
  store i8 %conv458, i8* %294, align 1
  br label %for.inc.460

for.inc.460:                                      ; preds = %if.end.453
  %295 = load i32, i32* %len, align 4
  %inc461 = add nsw i32 %295, 1
  store i32 %inc461, i32* %len, align 4
  br label %for.cond.442

for.end.462:                                      ; preds = %for.cond.442
  br label %if.end.463

if.end.463:                                       ; preds = %for.end.462, %for.end.440
  %296 = load i8*, i8** %str, align 8
  store i8 0, i8* %296, align 1
  %297 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %298 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast464 = ptrtoint %struct.sv** %297 to i64
  %sub.ptr.rhs.cast465 = ptrtoint %struct.sv** %298 to i64
  %sub.ptr.sub466 = sub i64 %sub.ptr.lhs.cast464, %sub.ptr.rhs.cast465
  %sub.ptr.div467 = sdiv exact i64 %sub.ptr.sub466, 8
  %cmp468 = icmp slt i64 %sub.ptr.div467, 1
  br i1 %cmp468, label %if.then.470, label %if.end.472

if.then.470:                                      ; preds = %if.end.463
  %299 = load %struct.sv**, %struct.sv*** %sp, align 8
  %300 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call471 = call %struct.sv** @Perl_stack_grow(%struct.sv** %299, %struct.sv** %300, i32 1)
  store %struct.sv** %call471, %struct.sv*** %sp, align 8
  br label %if.end.472

if.end.472:                                       ; preds = %if.then.470, %if.end.463
  %301 = load %struct.sv*, %struct.sv** %sv, align 8
  %call474 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %301)
  %302 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr475 = getelementptr inbounds %struct.sv*, %struct.sv** %302, i32 1
  store %struct.sv** %incdec.ptr475, %struct.sv*** %sp, align 8
  store %struct.sv* %call474, %struct.sv** %incdec.ptr475, align 8
  store %struct.sv* %call474, %struct.sv** %tmp473
  %303 = load %struct.sv*, %struct.sv** %tmp473
  br label %sw.epilog.1405

sw.bb.476:                                        ; preds = %if.end.86, %if.end.86
  %304 = load i32, i32* %howlen, align 4
  %cmp477 = icmp eq i32 %304, 2
  br i1 %cmp477, label %if.then.487, label %lor.lhs.false.479

lor.lhs.false.479:                                ; preds = %sw.bb.476
  %305 = load i32, i32* %len, align 4
  %conv480 = sext i32 %305 to i64
  %306 = load i8*, i8** %strend.addr, align 8
  %307 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast481 = ptrtoint i8* %306 to i64
  %sub.ptr.rhs.cast482 = ptrtoint i8* %307 to i64
  %sub.ptr.sub483 = sub i64 %sub.ptr.lhs.cast481, %sub.ptr.rhs.cast482
  %mul484 = mul nsw i64 %sub.ptr.sub483, 2
  %cmp485 = icmp sgt i64 %conv480, %mul484
  br i1 %cmp485, label %if.then.487, label %if.end.493

if.then.487:                                      ; preds = %lor.lhs.false.479, %sw.bb.476
  %308 = load i8*, i8** %strend.addr, align 8
  %309 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast488 = ptrtoint i8* %308 to i64
  %sub.ptr.rhs.cast489 = ptrtoint i8* %309 to i64
  %sub.ptr.sub490 = sub i64 %sub.ptr.lhs.cast488, %sub.ptr.rhs.cast489
  %mul491 = mul nsw i64 %sub.ptr.sub490, 2
  %conv492 = trunc i64 %mul491 to i32
  store i32 %conv492, i32* %len, align 4
  br label %if.end.493

if.end.493:                                       ; preds = %if.then.487, %lor.lhs.false.479
  %310 = load i32, i32* %len, align 4
  %add494 = add nsw i32 %310, 1
  %conv495 = sext i32 %add494 to i64
  %call496 = call %struct.sv* @Perl_newSV(i64 %conv495)
  store %struct.sv* %call496, %struct.sv** %sv, align 8
  %311 = load i32, i32* %len, align 4
  %conv498 = sext i32 %311 to i64
  %312 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any499 = getelementptr inbounds %struct.sv, %struct.sv* %312, i32 0, i32 0
  %313 = load i8*, i8** %sv_any499, align 8
  %314 = bitcast i8* %313 to %struct.xpv*
  %xpv_cur500 = getelementptr inbounds %struct.xpv, %struct.xpv* %314, i32 0, i32 1
  store i64 %conv498, i64* %xpv_cur500, align 8
  store i64 %conv498, i64* %tmp497
  %315 = load i64, i64* %tmp497
  %316 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags501 = getelementptr inbounds %struct.sv, %struct.sv* %316, i32 0, i32 2
  %317 = load i32, i32* %sv_flags501, align 4
  %or502 = or i32 %317, 67371008
  store i32 %or502, i32* %sv_flags501, align 4
  %318 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any503 = getelementptr inbounds %struct.sv, %struct.sv* %318, i32 0, i32 0
  %319 = load i8*, i8** %sv_any503, align 8
  %320 = bitcast i8* %319 to %struct.xpv*
  %xpv_pv504 = getelementptr inbounds %struct.xpv, %struct.xpv* %320, i32 0, i32 0
  %321 = load i8*, i8** %xpv_pv504, align 8
  store i8* %321, i8** %str, align 8
  %322 = load i32, i32* %datumtype, align 4
  %cmp505 = icmp eq i32 %322, 104
  br i1 %cmp505, label %if.then.507, label %if.else.527

if.then.507:                                      ; preds = %if.end.493
  %323 = load i32, i32* %len, align 4
  store i32 %323, i32* %aint, align 4
  store i32 0, i32* %len, align 4
  br label %for.cond.508

for.cond.508:                                     ; preds = %for.inc.524, %if.then.507
  %324 = load i32, i32* %len, align 4
  %325 = load i32, i32* %aint, align 4
  %cmp509 = icmp slt i32 %324, %325
  br i1 %cmp509, label %for.body.511, label %for.end.526

for.body.511:                                     ; preds = %for.cond.508
  %326 = load i32, i32* %len, align 4
  %and512 = and i32 %326, 1
  %tobool513 = icmp ne i32 %and512, 0
  br i1 %tobool513, label %if.then.514, label %if.else.516

if.then.514:                                      ; preds = %for.body.511
  %327 = load i32, i32* %bits, align 4
  %shr515 = ashr i32 %327, 4
  store i32 %shr515, i32* %bits, align 4
  br label %if.end.519

if.else.516:                                      ; preds = %for.body.511
  %328 = load i8*, i8** %s.addr, align 8
  %incdec.ptr517 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %incdec.ptr517, i8** %s.addr, align 8
  %329 = load i8, i8* %328, align 1
  %conv518 = sext i8 %329 to i32
  store i32 %conv518, i32* %bits, align 4
  br label %if.end.519

if.end.519:                                       ; preds = %if.else.516, %if.then.514
  %330 = load i32, i32* %bits, align 4
  %and520 = and i32 %330, 15
  %idxprom521 = sext i32 %and520 to i64
  %331 = load i8*, i8** @PL_hexdigit, align 8
  %arrayidx522 = getelementptr inbounds i8, i8* %331, i64 %idxprom521
  %332 = load i8, i8* %arrayidx522, align 1
  %333 = load i8*, i8** %str, align 8
  %incdec.ptr523 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %incdec.ptr523, i8** %str, align 8
  store i8 %332, i8* %333, align 1
  br label %for.inc.524

for.inc.524:                                      ; preds = %if.end.519
  %334 = load i32, i32* %len, align 4
  %inc525 = add nsw i32 %334, 1
  store i32 %inc525, i32* %len, align 4
  br label %for.cond.508

for.end.526:                                      ; preds = %for.cond.508
  br label %if.end.548

if.else.527:                                      ; preds = %if.end.493
  %335 = load i32, i32* %len, align 4
  store i32 %335, i32* %aint, align 4
  store i32 0, i32* %len, align 4
  br label %for.cond.528

for.cond.528:                                     ; preds = %for.inc.545, %if.else.527
  %336 = load i32, i32* %len, align 4
  %337 = load i32, i32* %aint, align 4
  %cmp529 = icmp slt i32 %336, %337
  br i1 %cmp529, label %for.body.531, label %for.end.547

for.body.531:                                     ; preds = %for.cond.528
  %338 = load i32, i32* %len, align 4
  %and532 = and i32 %338, 1
  %tobool533 = icmp ne i32 %and532, 0
  br i1 %tobool533, label %if.then.534, label %if.else.536

if.then.534:                                      ; preds = %for.body.531
  %339 = load i32, i32* %bits, align 4
  %shl535 = shl i32 %339, 4
  store i32 %shl535, i32* %bits, align 4
  br label %if.end.539

if.else.536:                                      ; preds = %for.body.531
  %340 = load i8*, i8** %s.addr, align 8
  %incdec.ptr537 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %incdec.ptr537, i8** %s.addr, align 8
  %341 = load i8, i8* %340, align 1
  %conv538 = sext i8 %341 to i32
  store i32 %conv538, i32* %bits, align 4
  br label %if.end.539

if.end.539:                                       ; preds = %if.else.536, %if.then.534
  %342 = load i32, i32* %bits, align 4
  %shr540 = ashr i32 %342, 4
  %and541 = and i32 %shr540, 15
  %idxprom542 = sext i32 %and541 to i64
  %343 = load i8*, i8** @PL_hexdigit, align 8
  %arrayidx543 = getelementptr inbounds i8, i8* %343, i64 %idxprom542
  %344 = load i8, i8* %arrayidx543, align 1
  %345 = load i8*, i8** %str, align 8
  %incdec.ptr544 = getelementptr inbounds i8, i8* %345, i32 1
  store i8* %incdec.ptr544, i8** %str, align 8
  store i8 %344, i8* %345, align 1
  br label %for.inc.545

for.inc.545:                                      ; preds = %if.end.539
  %346 = load i32, i32* %len, align 4
  %inc546 = add nsw i32 %346, 1
  store i32 %inc546, i32* %len, align 4
  br label %for.cond.528

for.end.547:                                      ; preds = %for.cond.528
  br label %if.end.548

if.end.548:                                       ; preds = %for.end.547, %for.end.526
  %347 = load i8*, i8** %str, align 8
  store i8 0, i8* %347, align 1
  %348 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %349 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast549 = ptrtoint %struct.sv** %348 to i64
  %sub.ptr.rhs.cast550 = ptrtoint %struct.sv** %349 to i64
  %sub.ptr.sub551 = sub i64 %sub.ptr.lhs.cast549, %sub.ptr.rhs.cast550
  %sub.ptr.div552 = sdiv exact i64 %sub.ptr.sub551, 8
  %cmp553 = icmp slt i64 %sub.ptr.div552, 1
  br i1 %cmp553, label %if.then.555, label %if.end.557

if.then.555:                                      ; preds = %if.end.548
  %350 = load %struct.sv**, %struct.sv*** %sp, align 8
  %351 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call556 = call %struct.sv** @Perl_stack_grow(%struct.sv** %350, %struct.sv** %351, i32 1)
  store %struct.sv** %call556, %struct.sv*** %sp, align 8
  br label %if.end.557

if.end.557:                                       ; preds = %if.then.555, %if.end.548
  %352 = load %struct.sv*, %struct.sv** %sv, align 8
  %call559 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %352)
  %353 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr560 = getelementptr inbounds %struct.sv*, %struct.sv** %353, i32 1
  store %struct.sv** %incdec.ptr560, %struct.sv*** %sp, align 8
  store %struct.sv* %call559, %struct.sv** %incdec.ptr560, align 8
  store %struct.sv* %call559, %struct.sv** %tmp558
  %354 = load %struct.sv*, %struct.sv** %tmp558
  br label %sw.epilog.1405

sw.bb.561:                                        ; preds = %if.end.86
  br label %while.cond.562

while.cond.562:                                   ; preds = %if.end.590, %sw.bb.561
  %355 = load i32, i32* %len, align 4
  %dec563 = add nsw i32 %355, -1
  store i32 %dec563, i32* %len, align 4
  %cmp564 = icmp sgt i32 %355, 0
  br i1 %cmp564, label %while.body.566, label %while.end.591

while.body.566:                                   ; preds = %while.cond.562
  %356 = load i8*, i8** %s.addr, align 8
  %incdec.ptr567 = getelementptr inbounds i8, i8* %356, i32 1
  store i8* %incdec.ptr567, i8** %s.addr, align 8
  %357 = load i8, i8* %356, align 1
  %conv568 = sext i8 %357 to i32
  store i32 %conv568, i32* %aint, align 4
  %358 = load i32, i32* %aint, align 4
  %cmp569 = icmp sge i32 %358, 128
  br i1 %cmp569, label %if.then.571, label %if.end.573

if.then.571:                                      ; preds = %while.body.566
  %359 = load i32, i32* %aint, align 4
  %sub572 = sub nsw i32 %359, 256
  store i32 %sub572, i32* %aint, align 4
  br label %if.end.573

if.end.573:                                       ; preds = %if.then.571, %while.body.566
  %360 = load i32, i32* %checksum, align 4
  %tobool574 = icmp ne i32 %360, 0
  br i1 %tobool574, label %if.else.580, label %if.then.575

if.then.575:                                      ; preds = %if.end.573
  %361 = load i32, i32* %aint, align 4
  %conv576 = sext i32 %361 to i64
  %call577 = call %struct.sv* @Perl_newSViv(i64 %conv576)
  %call578 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call577)
  %362 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr579 = getelementptr inbounds %struct.sv*, %struct.sv** %362, i32 1
  store %struct.sv** %incdec.ptr579, %struct.sv*** %sp, align 8
  store %struct.sv* %call578, %struct.sv** %incdec.ptr579, align 8
  br label %if.end.590

if.else.580:                                      ; preds = %if.end.573
  %363 = load i32, i32* %checksum, align 4
  %cmp581 = icmp sgt i32 %363, 64
  br i1 %cmp581, label %if.then.583, label %if.else.586

if.then.583:                                      ; preds = %if.else.580
  %364 = load i32, i32* %aint, align 4
  %conv584 = sitofp i32 %364 to double
  %365 = load double, double* %cdouble, align 8
  %add585 = fadd double %365, %conv584
  store double %add585, double* %cdouble, align 8
  br label %if.end.589

if.else.586:                                      ; preds = %if.else.580
  %366 = load i32, i32* %aint, align 4
  %conv587 = sext i32 %366 to i64
  %367 = load i64, i64* %cuv, align 8
  %add588 = add i64 %367, %conv587
  store i64 %add588, i64* %cuv, align 8
  br label %if.end.589

if.end.589:                                       ; preds = %if.else.586, %if.then.583
  br label %if.end.590

if.end.590:                                       ; preds = %if.end.589, %if.then.575
  br label %while.cond.562

while.end.591:                                    ; preds = %while.cond.562
  br label %sw.epilog.1405

sw.bb.592:                                        ; preds = %if.end.86
  br label %unpack_C

unpack_C:                                         ; preds = %if.then.651, %sw.bb.592
  %368 = load i32, i32* %len, align 4
  %cmp593 = icmp eq i32 %368, 0
  br i1 %cmp593, label %if.then.595, label %if.end.601

if.then.595:                                      ; preds = %unpack_C
  %369 = load i8, i8* %explicit_length, align 1
  %tobool596 = icmp ne i8 %369, 0
  br i1 %tobool596, label %if.then.597, label %if.end.600

if.then.597:                                      ; preds = %if.then.595
  %370 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags598 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %370, i32 0, i32 8
  %371 = load i32, i32* %flags598, align 4
  %and599 = and i32 %371, -9
  store i32 %and599, i32* %flags598, align 4
  br label %if.end.600

if.end.600:                                       ; preds = %if.then.597, %if.then.595
  br label %sw.epilog.1405

if.end.601:                                       ; preds = %unpack_C
  %372 = load i32, i32* %checksum, align 4
  %tobool602 = icmp ne i32 %372, 0
  br i1 %tobool602, label %if.then.603, label %if.else.622

if.then.603:                                      ; preds = %if.end.601
  br label %uchar_checksum

uchar_checksum:                                   ; preds = %if.then.603, %if.then.194
  br label %while.cond.604

while.cond.604:                                   ; preds = %if.end.620, %uchar_checksum
  %373 = load i32, i32* %len, align 4
  %dec605 = add nsw i32 %373, -1
  store i32 %dec605, i32* %len, align 4
  %cmp606 = icmp sgt i32 %373, 0
  br i1 %cmp606, label %while.body.608, label %while.end.621

while.body.608:                                   ; preds = %while.cond.604
  %374 = load i8*, i8** %s.addr, align 8
  %incdec.ptr609 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %incdec.ptr609, i8** %s.addr, align 8
  %375 = load i8, i8* %374, align 1
  %conv610 = sext i8 %375 to i32
  %and611 = and i32 %conv610, 255
  store i32 %and611, i32* %auint, align 4
  %376 = load i32, i32* %checksum, align 4
  %cmp612 = icmp sgt i32 %376, 64
  br i1 %cmp612, label %if.then.614, label %if.else.617

if.then.614:                                      ; preds = %while.body.608
  %377 = load i32, i32* %auint, align 4
  %conv615 = uitofp i32 %377 to double
  %378 = load double, double* %cdouble, align 8
  %add616 = fadd double %378, %conv615
  store double %add616, double* %cdouble, align 8
  br label %if.end.620

if.else.617:                                      ; preds = %while.body.608
  %379 = load i32, i32* %auint, align 4
  %conv618 = zext i32 %379 to i64
  %380 = load i64, i64* %cuv, align 8
  %add619 = add i64 %380, %conv618
  store i64 %add619, i64* %cuv, align 8
  br label %if.end.620

if.end.620:                                       ; preds = %if.else.617, %if.then.614
  br label %while.cond.604

while.end.621:                                    ; preds = %while.cond.604
  br label %if.end.636

if.else.622:                                      ; preds = %if.end.601
  br label %while.cond.623

while.cond.623:                                   ; preds = %while.body.627, %if.else.622
  %381 = load i32, i32* %len, align 4
  %dec624 = add nsw i32 %381, -1
  store i32 %dec624, i32* %len, align 4
  %cmp625 = icmp sgt i32 %381, 0
  br i1 %cmp625, label %while.body.627, label %while.end.635

while.body.627:                                   ; preds = %while.cond.623
  %382 = load i8*, i8** %s.addr, align 8
  %incdec.ptr628 = getelementptr inbounds i8, i8* %382, i32 1
  store i8* %incdec.ptr628, i8** %s.addr, align 8
  %383 = load i8, i8* %382, align 1
  %conv629 = sext i8 %383 to i32
  %and630 = and i32 %conv629, 255
  store i32 %and630, i32* %auint, align 4
  %384 = load i32, i32* %auint, align 4
  %conv631 = zext i32 %384 to i64
  %call632 = call %struct.sv* @Perl_newSViv(i64 %conv631)
  %call633 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call632)
  %385 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr634 = getelementptr inbounds %struct.sv*, %struct.sv** %385, i32 1
  store %struct.sv** %incdec.ptr634, %struct.sv*** %sp, align 8
  store %struct.sv* %call633, %struct.sv** %incdec.ptr634, align 8
  br label %while.cond.623

while.end.635:                                    ; preds = %while.cond.623
  br label %if.end.636

if.end.636:                                       ; preds = %while.end.635, %while.end.621
  br label %sw.epilog.1405

sw.bb.637:                                        ; preds = %if.end.86
  %386 = load i32, i32* %len, align 4
  %cmp638 = icmp eq i32 %386, 0
  br i1 %cmp638, label %if.then.640, label %if.end.646

if.then.640:                                      ; preds = %sw.bb.637
  %387 = load i8, i8* %explicit_length, align 1
  %tobool641 = icmp ne i8 %387, 0
  br i1 %tobool641, label %if.then.642, label %if.end.645

if.then.642:                                      ; preds = %if.then.640
  %388 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags643 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %388, i32 0, i32 8
  %389 = load i32, i32* %flags643, align 4
  %or644 = or i32 %389, 8
  store i32 %or644, i32* %flags643, align 4
  br label %if.end.645

if.end.645:                                       ; preds = %if.then.642, %if.then.640
  br label %sw.epilog.1405

if.end.646:                                       ; preds = %sw.bb.637
  %390 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags647 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %390, i32 0, i32 8
  %391 = load i32, i32* %flags647, align 4
  %and648 = and i32 %391, 8
  %cmp649 = icmp eq i32 %and648, 0
  br i1 %cmp649, label %if.then.651, label %if.end.652

if.then.651:                                      ; preds = %if.end.646
  br label %unpack_C

if.end.652:                                       ; preds = %if.end.646
  br label %while.cond.653

while.cond.653:                                   ; preds = %if.end.714, %if.end.652
  %392 = load i32, i32* %len, align 4
  %dec654 = add nsw i32 %392, -1
  store i32 %dec654, i32* %len, align 4
  %cmp655 = icmp sgt i32 %392, 0
  br i1 %cmp655, label %land.rhs.657, label %land.end.660

land.rhs.657:                                     ; preds = %while.cond.653
  %393 = load i8*, i8** %s.addr, align 8
  %394 = load i8*, i8** %strend.addr, align 8
  %cmp658 = icmp ult i8* %393, %394
  br label %land.end.660

land.end.660:                                     ; preds = %land.rhs.657, %while.cond.653
  %395 = phi i1 [ false, %while.cond.653 ], [ %cmp658, %land.rhs.657 ]
  br i1 %395, label %while.body.661, label %while.end.715

while.body.661:                                   ; preds = %land.end.660
  %396 = load i8*, i8** %s.addr, align 8
  %397 = load i8*, i8** %strend.addr, align 8
  %398 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast663 = ptrtoint i8* %397 to i64
  %sub.ptr.rhs.cast664 = ptrtoint i8* %398 to i64
  %sub.ptr.sub665 = sub i64 %sub.ptr.lhs.cast663, %sub.ptr.rhs.cast664
  %399 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %399, i32 0, i32 14
  %400 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp666 = icmp ne %struct.sv* %400, null
  br i1 %cmp666, label %land.lhs.true.668, label %lor.rhs.684

land.lhs.true.668:                                ; preds = %while.body.661
  %401 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings669 = getelementptr inbounds %struct.cop, %struct.cop* %401, i32 0, i32 14
  %402 = load %struct.sv*, %struct.sv** %cop_warnings669, align 8
  %cmp670 = icmp ne %struct.sv* %402, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp670, label %land.lhs.true.672, label %lor.rhs.684

land.lhs.true.672:                                ; preds = %land.lhs.true.668
  %403 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings673 = getelementptr inbounds %struct.cop, %struct.cop* %403, i32 0, i32 14
  %404 = load %struct.sv*, %struct.sv** %cop_warnings673, align 8
  %cmp674 = icmp eq %struct.sv* %404, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp674, label %lor.end.693, label %lor.lhs.false.676

lor.lhs.false.676:                                ; preds = %land.lhs.true.672
  %405 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings677 = getelementptr inbounds %struct.cop, %struct.cop* %405, i32 0, i32 14
  %406 = load %struct.sv*, %struct.sv** %cop_warnings677, align 8
  %sv_any678 = getelementptr inbounds %struct.sv, %struct.sv* %406, i32 0, i32 0
  %407 = load i8*, i8** %sv_any678, align 8
  %408 = bitcast i8* %407 to %struct.xpv*
  %xpv_pv679 = getelementptr inbounds %struct.xpv, %struct.xpv* %408, i32 0, i32 0
  %409 = load i8*, i8** %xpv_pv679, align 8
  %arrayidx680 = getelementptr inbounds i8, i8* %409, i64 11
  %410 = load i8, i8* %arrayidx680, align 1
  %conv681 = sext i8 %410 to i32
  %and682 = and i32 %conv681, 1
  %tobool683 = icmp ne i32 %and682, 0
  br i1 %tobool683, label %lor.end.693, label %lor.rhs.684

lor.rhs.684:                                      ; preds = %lor.lhs.false.676, %land.lhs.true.668, %while.body.661
  %411 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings685 = getelementptr inbounds %struct.cop, %struct.cop* %411, i32 0, i32 14
  %412 = load %struct.sv*, %struct.sv** %cop_warnings685, align 8
  %cmp686 = icmp eq %struct.sv* %412, null
  br i1 %cmp686, label %land.rhs.688, label %land.end.692

land.rhs.688:                                     ; preds = %lor.rhs.684
  %413 = load i8, i8* @PL_dowarn, align 1
  %conv689 = zext i8 %413 to i32
  %and690 = and i32 %conv689, 1
  %tobool691 = icmp ne i32 %and690, 0
  br label %land.end.692

land.end.692:                                     ; preds = %land.rhs.688, %lor.rhs.684
  %414 = phi i1 [ false, %lor.rhs.684 ], [ %tobool691, %land.rhs.688 ]
  br label %lor.end.693

lor.end.693:                                      ; preds = %land.end.692, %lor.lhs.false.676, %land.lhs.true.672
  %415 = phi i1 [ true, %lor.lhs.false.676 ], [ true, %land.lhs.true.672 ], [ %414, %land.end.692 ]
  %cond694 = select i1 %415, i32 0, i32 105
  %call695 = call i64 @Perl_utf8n_to_uvuni(i8* %396, i64 %sub.ptr.sub665, i64* %alen, i32 %cond694)
  %conv696 = trunc i64 %call695 to i32
  store i32 %conv696, i32* %auint, align 4
  %416 = load i64, i64* %alen, align 8
  store i64 %416, i64* %along, align 8
  %417 = load i64, i64* %along, align 8
  %418 = load i8*, i8** %s.addr, align 8
  %add.ptr697 = getelementptr inbounds i8, i8* %418, i64 %417
  store i8* %add.ptr697, i8** %s.addr, align 8
  %419 = load i32, i32* %checksum, align 4
  %tobool698 = icmp ne i32 %419, 0
  br i1 %tobool698, label %if.else.704, label %if.then.699

if.then.699:                                      ; preds = %lor.end.693
  %420 = load i32, i32* %auint, align 4
  %conv700 = zext i32 %420 to i64
  %call701 = call %struct.sv* @Perl_newSVuv(i64 %conv700)
  %call702 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call701)
  %421 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr703 = getelementptr inbounds %struct.sv*, %struct.sv** %421, i32 1
  store %struct.sv** %incdec.ptr703, %struct.sv*** %sp, align 8
  store %struct.sv* %call702, %struct.sv** %incdec.ptr703, align 8
  br label %if.end.714

if.else.704:                                      ; preds = %lor.end.693
  %422 = load i32, i32* %checksum, align 4
  %cmp705 = icmp sgt i32 %422, 64
  br i1 %cmp705, label %if.then.707, label %if.else.710

if.then.707:                                      ; preds = %if.else.704
  %423 = load i32, i32* %auint, align 4
  %conv708 = uitofp i32 %423 to double
  %424 = load double, double* %cdouble, align 8
  %add709 = fadd double %424, %conv708
  store double %add709, double* %cdouble, align 8
  br label %if.end.713

if.else.710:                                      ; preds = %if.else.704
  %425 = load i32, i32* %auint, align 4
  %conv711 = zext i32 %425 to i64
  %426 = load i64, i64* %cuv, align 8
  %add712 = add i64 %426, %conv711
  store i64 %add712, i64* %cuv, align 8
  br label %if.end.713

if.end.713:                                       ; preds = %if.else.710, %if.then.707
  br label %if.end.714

if.end.714:                                       ; preds = %if.end.713, %if.then.699
  br label %while.cond.653

while.end.715:                                    ; preds = %land.end.660
  br label %sw.epilog.1405

sw.bb.716:                                        ; preds = %if.end.86, %if.end.86
  br label %while.cond.717

while.cond.717:                                   ; preds = %if.end.739, %sw.bb.716
  %427 = load i32, i32* %len, align 4
  %dec718 = add nsw i32 %427, -1
  store i32 %dec718, i32* %len, align 4
  %cmp719 = icmp sgt i32 %427, 0
  br i1 %cmp719, label %while.body.721, label %while.end.740

while.body.721:                                   ; preds = %while.cond.717
  %428 = bitcast i16* %ai16 to i8*
  %429 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %428, i8* %429, i64 2, i32 1, i1 false)
  %430 = load i8*, i8** %s.addr, align 8
  %add.ptr722 = getelementptr inbounds i8, i8* %430, i64 2
  store i8* %add.ptr722, i8** %s.addr, align 8
  %431 = load i32, i32* %checksum, align 4
  %tobool723 = icmp ne i32 %431, 0
  br i1 %tobool723, label %if.else.729, label %if.then.724

if.then.724:                                      ; preds = %while.body.721
  %432 = load i16, i16* %ai16, align 2
  %conv725 = sext i16 %432 to i64
  %call726 = call %struct.sv* @Perl_newSViv(i64 %conv725)
  %call727 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call726)
  %433 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr728 = getelementptr inbounds %struct.sv*, %struct.sv** %433, i32 1
  store %struct.sv** %incdec.ptr728, %struct.sv*** %sp, align 8
  store %struct.sv* %call727, %struct.sv** %incdec.ptr728, align 8
  br label %if.end.739

if.else.729:                                      ; preds = %while.body.721
  %434 = load i32, i32* %checksum, align 4
  %cmp730 = icmp sgt i32 %434, 64
  br i1 %cmp730, label %if.then.732, label %if.else.735

if.then.732:                                      ; preds = %if.else.729
  %435 = load i16, i16* %ai16, align 2
  %conv733 = sitofp i16 %435 to double
  %436 = load double, double* %cdouble, align 8
  %add734 = fadd double %436, %conv733
  store double %add734, double* %cdouble, align 8
  br label %if.end.738

if.else.735:                                      ; preds = %if.else.729
  %437 = load i16, i16* %ai16, align 2
  %conv736 = sext i16 %437 to i64
  %438 = load i64, i64* %cuv, align 8
  %add737 = add i64 %438, %conv736
  store i64 %add737, i64* %cuv, align 8
  br label %if.end.738

if.end.738:                                       ; preds = %if.else.735, %if.then.732
  br label %if.end.739

if.end.739:                                       ; preds = %if.end.738, %if.then.724
  br label %while.cond.717

while.end.740:                                    ; preds = %while.cond.717
  br label %sw.epilog.1405

sw.bb.741:                                        ; preds = %if.end.86, %if.end.86, %if.end.86, %if.end.86
  br label %while.cond.742

while.cond.742:                                   ; preds = %if.end.774, %sw.bb.741
  %439 = load i32, i32* %len, align 4
  %dec743 = add nsw i32 %439, -1
  store i32 %dec743, i32* %len, align 4
  %cmp744 = icmp sgt i32 %439, 0
  br i1 %cmp744, label %while.body.746, label %while.end.775

while.body.746:                                   ; preds = %while.cond.742
  %440 = bitcast i16* %au16 to i8*
  %441 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %440, i8* %441, i64 2, i32 1, i1 false)
  %442 = load i8*, i8** %s.addr, align 8
  %add.ptr747 = getelementptr inbounds i8, i8* %442, i64 2
  store i8* %add.ptr747, i8** %s.addr, align 8
  %443 = load i32, i32* %datumtype, align 4
  %cmp748 = icmp eq i32 %443, 110
  br i1 %cmp748, label %if.then.750, label %if.end.752

if.then.750:                                      ; preds = %while.body.746
  %444 = load i16, i16* %au16, align 2
  %call751 = call signext i16 @Perl_my_swap(i16 signext %444)
  store i16 %call751, i16* %au16, align 2
  br label %if.end.752

if.end.752:                                       ; preds = %if.then.750, %while.body.746
  %445 = load i32, i32* %datumtype, align 4
  %cmp753 = icmp eq i32 %445, 118
  br i1 %cmp753, label %if.then.755, label %if.end.757

if.then.755:                                      ; preds = %if.end.752
  %446 = load i16, i16* %au16, align 2
  %call756 = call signext i16 @vtohs(i16 signext %446)
  store i16 %call756, i16* %au16, align 2
  br label %if.end.757

if.end.757:                                       ; preds = %if.then.755, %if.end.752
  %447 = load i32, i32* %checksum, align 4
  %tobool758 = icmp ne i32 %447, 0
  br i1 %tobool758, label %if.else.764, label %if.then.759

if.then.759:                                      ; preds = %if.end.757
  %448 = load i16, i16* %au16, align 2
  %conv760 = zext i16 %448 to i64
  %call761 = call %struct.sv* @Perl_newSViv(i64 %conv760)
  %call762 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call761)
  %449 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr763 = getelementptr inbounds %struct.sv*, %struct.sv** %449, i32 1
  store %struct.sv** %incdec.ptr763, %struct.sv*** %sp, align 8
  store %struct.sv* %call762, %struct.sv** %incdec.ptr763, align 8
  br label %if.end.774

if.else.764:                                      ; preds = %if.end.757
  %450 = load i32, i32* %checksum, align 4
  %cmp765 = icmp sgt i32 %450, 64
  br i1 %cmp765, label %if.then.767, label %if.else.770

if.then.767:                                      ; preds = %if.else.764
  %451 = load i16, i16* %au16, align 2
  %conv768 = uitofp i16 %451 to double
  %452 = load double, double* %cdouble, align 8
  %add769 = fadd double %452, %conv768
  store double %add769, double* %cdouble, align 8
  br label %if.end.773

if.else.770:                                      ; preds = %if.else.764
  %453 = load i16, i16* %au16, align 2
  %conv771 = zext i16 %453 to i64
  %454 = load i64, i64* %cuv, align 8
  %add772 = add i64 %454, %conv771
  store i64 %add772, i64* %cuv, align 8
  br label %if.end.773

if.end.773:                                       ; preds = %if.else.770, %if.then.767
  br label %if.end.774

if.end.774:                                       ; preds = %if.end.773, %if.then.759
  br label %while.cond.742

while.end.775:                                    ; preds = %while.cond.742
  br label %sw.epilog.1405

sw.bb.776:                                        ; preds = %if.end.86, %if.end.86
  br label %while.cond.777

while.cond.777:                                   ; preds = %if.end.799, %sw.bb.776
  %455 = load i32, i32* %len, align 4
  %dec778 = add nsw i32 %455, -1
  store i32 %dec778, i32* %len, align 4
  %cmp779 = icmp sgt i32 %455, 0
  br i1 %cmp779, label %while.body.781, label %while.end.800

while.body.781:                                   ; preds = %while.cond.777
  %456 = bitcast i32* %aint to i8*
  %457 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %456, i8* %457, i64 4, i32 1, i1 false)
  %458 = load i8*, i8** %s.addr, align 8
  %add.ptr782 = getelementptr inbounds i8, i8* %458, i64 4
  store i8* %add.ptr782, i8** %s.addr, align 8
  %459 = load i32, i32* %checksum, align 4
  %tobool783 = icmp ne i32 %459, 0
  br i1 %tobool783, label %if.else.789, label %if.then.784

if.then.784:                                      ; preds = %while.body.781
  %460 = load i32, i32* %aint, align 4
  %conv785 = sext i32 %460 to i64
  %call786 = call %struct.sv* @Perl_newSViv(i64 %conv785)
  %call787 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call786)
  %461 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr788 = getelementptr inbounds %struct.sv*, %struct.sv** %461, i32 1
  store %struct.sv** %incdec.ptr788, %struct.sv*** %sp, align 8
  store %struct.sv* %call787, %struct.sv** %incdec.ptr788, align 8
  br label %if.end.799

if.else.789:                                      ; preds = %while.body.781
  %462 = load i32, i32* %checksum, align 4
  %cmp790 = icmp sgt i32 %462, 64
  br i1 %cmp790, label %if.then.792, label %if.else.795

if.then.792:                                      ; preds = %if.else.789
  %463 = load i32, i32* %aint, align 4
  %conv793 = sitofp i32 %463 to double
  %464 = load double, double* %cdouble, align 8
  %add794 = fadd double %464, %conv793
  store double %add794, double* %cdouble, align 8
  br label %if.end.798

if.else.795:                                      ; preds = %if.else.789
  %465 = load i32, i32* %aint, align 4
  %conv796 = sext i32 %465 to i64
  %466 = load i64, i64* %cuv, align 8
  %add797 = add i64 %466, %conv796
  store i64 %add797, i64* %cuv, align 8
  br label %if.end.798

if.end.798:                                       ; preds = %if.else.795, %if.then.792
  br label %if.end.799

if.end.799:                                       ; preds = %if.end.798, %if.then.784
  br label %while.cond.777

while.end.800:                                    ; preds = %while.cond.777
  br label %sw.epilog.1405

sw.bb.801:                                        ; preds = %if.end.86, %if.end.86
  br label %while.cond.802

while.cond.802:                                   ; preds = %if.end.824, %sw.bb.801
  %467 = load i32, i32* %len, align 4
  %dec803 = add nsw i32 %467, -1
  store i32 %dec803, i32* %len, align 4
  %cmp804 = icmp sgt i32 %467, 0
  br i1 %cmp804, label %while.body.806, label %while.end.825

while.body.806:                                   ; preds = %while.cond.802
  %468 = bitcast i32* %auint to i8*
  %469 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %468, i8* %469, i64 4, i32 1, i1 false)
  %470 = load i8*, i8** %s.addr, align 8
  %add.ptr807 = getelementptr inbounds i8, i8* %470, i64 4
  store i8* %add.ptr807, i8** %s.addr, align 8
  %471 = load i32, i32* %checksum, align 4
  %tobool808 = icmp ne i32 %471, 0
  br i1 %tobool808, label %if.else.814, label %if.then.809

if.then.809:                                      ; preds = %while.body.806
  %472 = load i32, i32* %auint, align 4
  %conv810 = zext i32 %472 to i64
  %call811 = call %struct.sv* @Perl_newSVuv(i64 %conv810)
  %call812 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call811)
  %473 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr813 = getelementptr inbounds %struct.sv*, %struct.sv** %473, i32 1
  store %struct.sv** %incdec.ptr813, %struct.sv*** %sp, align 8
  store %struct.sv* %call812, %struct.sv** %incdec.ptr813, align 8
  br label %if.end.824

if.else.814:                                      ; preds = %while.body.806
  %474 = load i32, i32* %checksum, align 4
  %cmp815 = icmp sgt i32 %474, 64
  br i1 %cmp815, label %if.then.817, label %if.else.820

if.then.817:                                      ; preds = %if.else.814
  %475 = load i32, i32* %auint, align 4
  %conv818 = uitofp i32 %475 to double
  %476 = load double, double* %cdouble, align 8
  %add819 = fadd double %476, %conv818
  store double %add819, double* %cdouble, align 8
  br label %if.end.823

if.else.820:                                      ; preds = %if.else.814
  %477 = load i32, i32* %auint, align 4
  %conv821 = zext i32 %477 to i64
  %478 = load i64, i64* %cuv, align 8
  %add822 = add i64 %478, %conv821
  store i64 %add822, i64* %cuv, align 8
  br label %if.end.823

if.end.823:                                       ; preds = %if.else.820, %if.then.817
  br label %if.end.824

if.end.824:                                       ; preds = %if.end.823, %if.then.809
  br label %while.cond.802

while.end.825:                                    ; preds = %while.cond.802
  br label %sw.epilog.1405

sw.bb.826:                                        ; preds = %if.end.86
  br label %while.cond.827

while.cond.827:                                   ; preds = %if.end.847, %sw.bb.826
  %479 = load i32, i32* %len, align 4
  %dec828 = add nsw i32 %479, -1
  store i32 %dec828, i32* %len, align 4
  %cmp829 = icmp sgt i32 %479, 0
  br i1 %cmp829, label %while.body.831, label %while.end.848

while.body.831:                                   ; preds = %while.cond.827
  %480 = bitcast i64* %aiv to i8*
  %481 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %480, i8* %481, i64 8, i32 1, i1 false)
  %482 = load i8*, i8** %s.addr, align 8
  %add.ptr832 = getelementptr inbounds i8, i8* %482, i64 8
  store i8* %add.ptr832, i8** %s.addr, align 8
  %483 = load i32, i32* %checksum, align 4
  %tobool833 = icmp ne i32 %483, 0
  br i1 %tobool833, label %if.else.838, label %if.then.834

if.then.834:                                      ; preds = %while.body.831
  %484 = load i64, i64* %aiv, align 8
  %call835 = call %struct.sv* @Perl_newSViv(i64 %484)
  %call836 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call835)
  %485 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr837 = getelementptr inbounds %struct.sv*, %struct.sv** %485, i32 1
  store %struct.sv** %incdec.ptr837, %struct.sv*** %sp, align 8
  store %struct.sv* %call836, %struct.sv** %incdec.ptr837, align 8
  br label %if.end.847

if.else.838:                                      ; preds = %while.body.831
  %486 = load i32, i32* %checksum, align 4
  %cmp839 = icmp sgt i32 %486, 64
  br i1 %cmp839, label %if.then.841, label %if.else.844

if.then.841:                                      ; preds = %if.else.838
  %487 = load i64, i64* %aiv, align 8
  %conv842 = sitofp i64 %487 to double
  %488 = load double, double* %cdouble, align 8
  %add843 = fadd double %488, %conv842
  store double %add843, double* %cdouble, align 8
  br label %if.end.846

if.else.844:                                      ; preds = %if.else.838
  %489 = load i64, i64* %aiv, align 8
  %490 = load i64, i64* %cuv, align 8
  %add845 = add i64 %490, %489
  store i64 %add845, i64* %cuv, align 8
  br label %if.end.846

if.end.846:                                       ; preds = %if.else.844, %if.then.841
  br label %if.end.847

if.end.847:                                       ; preds = %if.end.846, %if.then.834
  br label %while.cond.827

while.end.848:                                    ; preds = %while.cond.827
  br label %sw.epilog.1405

sw.bb.849:                                        ; preds = %if.end.86
  br label %while.cond.850

while.cond.850:                                   ; preds = %if.end.870, %sw.bb.849
  %491 = load i32, i32* %len, align 4
  %dec851 = add nsw i32 %491, -1
  store i32 %dec851, i32* %len, align 4
  %cmp852 = icmp sgt i32 %491, 0
  br i1 %cmp852, label %while.body.854, label %while.end.871

while.body.854:                                   ; preds = %while.cond.850
  %492 = bitcast i64* %auv to i8*
  %493 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %492, i8* %493, i64 8, i32 1, i1 false)
  %494 = load i8*, i8** %s.addr, align 8
  %add.ptr855 = getelementptr inbounds i8, i8* %494, i64 8
  store i8* %add.ptr855, i8** %s.addr, align 8
  %495 = load i32, i32* %checksum, align 4
  %tobool856 = icmp ne i32 %495, 0
  br i1 %tobool856, label %if.else.861, label %if.then.857

if.then.857:                                      ; preds = %while.body.854
  %496 = load i64, i64* %auv, align 8
  %call858 = call %struct.sv* @Perl_newSVuv(i64 %496)
  %call859 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call858)
  %497 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr860 = getelementptr inbounds %struct.sv*, %struct.sv** %497, i32 1
  store %struct.sv** %incdec.ptr860, %struct.sv*** %sp, align 8
  store %struct.sv* %call859, %struct.sv** %incdec.ptr860, align 8
  br label %if.end.870

if.else.861:                                      ; preds = %while.body.854
  %498 = load i32, i32* %checksum, align 4
  %cmp862 = icmp sgt i32 %498, 64
  br i1 %cmp862, label %if.then.864, label %if.else.867

if.then.864:                                      ; preds = %if.else.861
  %499 = load i64, i64* %auv, align 8
  %conv865 = uitofp i64 %499 to double
  %500 = load double, double* %cdouble, align 8
  %add866 = fadd double %500, %conv865
  store double %add866, double* %cdouble, align 8
  br label %if.end.869

if.else.867:                                      ; preds = %if.else.861
  %501 = load i64, i64* %auv, align 8
  %502 = load i64, i64* %cuv, align 8
  %add868 = add i64 %502, %501
  store i64 %add868, i64* %cuv, align 8
  br label %if.end.869

if.end.869:                                       ; preds = %if.else.867, %if.then.864
  br label %if.end.870

if.end.870:                                       ; preds = %if.end.869, %if.then.857
  br label %while.cond.850

while.end.871:                                    ; preds = %while.cond.850
  br label %sw.epilog.1405

sw.bb.872:                                        ; preds = %if.end.86
  br label %while.cond.873

while.cond.873:                                   ; preds = %if.end.893, %sw.bb.872
  %503 = load i32, i32* %len, align 4
  %dec874 = add nsw i32 %503, -1
  store i32 %dec874, i32* %len, align 4
  %cmp875 = icmp sgt i32 %503, 0
  br i1 %cmp875, label %while.body.877, label %while.end.894

while.body.877:                                   ; preds = %while.cond.873
  %504 = bitcast i64* %along to i8*
  %505 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %504, i8* %505, i64 8, i32 1, i1 false)
  %506 = load i8*, i8** %s.addr, align 8
  %add.ptr878 = getelementptr inbounds i8, i8* %506, i64 8
  store i8* %add.ptr878, i8** %s.addr, align 8
  %507 = load i32, i32* %checksum, align 4
  %tobool879 = icmp ne i32 %507, 0
  br i1 %tobool879, label %if.else.884, label %if.then.880

if.then.880:                                      ; preds = %while.body.877
  %508 = load i64, i64* %along, align 8
  %call881 = call %struct.sv* @Perl_newSViv(i64 %508)
  %call882 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call881)
  %509 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr883 = getelementptr inbounds %struct.sv*, %struct.sv** %509, i32 1
  store %struct.sv** %incdec.ptr883, %struct.sv*** %sp, align 8
  store %struct.sv* %call882, %struct.sv** %incdec.ptr883, align 8
  br label %if.end.893

if.else.884:                                      ; preds = %while.body.877
  %510 = load i32, i32* %checksum, align 4
  %cmp885 = icmp sgt i32 %510, 64
  br i1 %cmp885, label %if.then.887, label %if.else.890

if.then.887:                                      ; preds = %if.else.884
  %511 = load i64, i64* %along, align 8
  %conv888 = sitofp i64 %511 to double
  %512 = load double, double* %cdouble, align 8
  %add889 = fadd double %512, %conv888
  store double %add889, double* %cdouble, align 8
  br label %if.end.892

if.else.890:                                      ; preds = %if.else.884
  %513 = load i64, i64* %along, align 8
  %514 = load i64, i64* %cuv, align 8
  %add891 = add i64 %514, %513
  store i64 %add891, i64* %cuv, align 8
  br label %if.end.892

if.end.892:                                       ; preds = %if.else.890, %if.then.887
  br label %if.end.893

if.end.893:                                       ; preds = %if.end.892, %if.then.880
  br label %while.cond.873

while.end.894:                                    ; preds = %while.cond.873
  br label %sw.epilog.1405

sw.bb.895:                                        ; preds = %if.end.86
  br label %while.cond.896

while.cond.896:                                   ; preds = %if.end.918, %sw.bb.895
  %515 = load i32, i32* %len, align 4
  %dec897 = add nsw i32 %515, -1
  store i32 %dec897, i32* %len, align 4
  %cmp898 = icmp sgt i32 %515, 0
  br i1 %cmp898, label %while.body.900, label %while.end.919

while.body.900:                                   ; preds = %while.cond.896
  %516 = bitcast i32* %ai32 to i8*
  %517 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %516, i8* %517, i64 4, i32 1, i1 false)
  %518 = load i8*, i8** %s.addr, align 8
  %add.ptr901 = getelementptr inbounds i8, i8* %518, i64 4
  store i8* %add.ptr901, i8** %s.addr, align 8
  %519 = load i32, i32* %checksum, align 4
  %tobool902 = icmp ne i32 %519, 0
  br i1 %tobool902, label %if.else.908, label %if.then.903

if.then.903:                                      ; preds = %while.body.900
  %520 = load i32, i32* %ai32, align 4
  %conv904 = sext i32 %520 to i64
  %call905 = call %struct.sv* @Perl_newSViv(i64 %conv904)
  %call906 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call905)
  %521 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr907 = getelementptr inbounds %struct.sv*, %struct.sv** %521, i32 1
  store %struct.sv** %incdec.ptr907, %struct.sv*** %sp, align 8
  store %struct.sv* %call906, %struct.sv** %incdec.ptr907, align 8
  br label %if.end.918

if.else.908:                                      ; preds = %while.body.900
  %522 = load i32, i32* %checksum, align 4
  %cmp909 = icmp sgt i32 %522, 64
  br i1 %cmp909, label %if.then.911, label %if.else.914

if.then.911:                                      ; preds = %if.else.908
  %523 = load i32, i32* %ai32, align 4
  %conv912 = sitofp i32 %523 to double
  %524 = load double, double* %cdouble, align 8
  %add913 = fadd double %524, %conv912
  store double %add913, double* %cdouble, align 8
  br label %if.end.917

if.else.914:                                      ; preds = %if.else.908
  %525 = load i32, i32* %ai32, align 4
  %conv915 = sext i32 %525 to i64
  %526 = load i64, i64* %cuv, align 8
  %add916 = add i64 %526, %conv915
  store i64 %add916, i64* %cuv, align 8
  br label %if.end.917

if.end.917:                                       ; preds = %if.else.914, %if.then.911
  br label %if.end.918

if.end.918:                                       ; preds = %if.end.917, %if.then.903
  br label %while.cond.896

while.end.919:                                    ; preds = %while.cond.896
  br label %sw.epilog.1405

sw.bb.920:                                        ; preds = %if.end.86
  br label %while.cond.921

while.cond.921:                                   ; preds = %if.end.941, %sw.bb.920
  %527 = load i32, i32* %len, align 4
  %dec922 = add nsw i32 %527, -1
  store i32 %dec922, i32* %len, align 4
  %cmp923 = icmp sgt i32 %527, 0
  br i1 %cmp923, label %while.body.925, label %while.end.942

while.body.925:                                   ; preds = %while.cond.921
  %528 = bitcast i64* %aulong to i8*
  %529 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %528, i8* %529, i64 8, i32 1, i1 false)
  %530 = load i8*, i8** %s.addr, align 8
  %add.ptr926 = getelementptr inbounds i8, i8* %530, i64 8
  store i8* %add.ptr926, i8** %s.addr, align 8
  %531 = load i32, i32* %checksum, align 4
  %tobool927 = icmp ne i32 %531, 0
  br i1 %tobool927, label %if.else.932, label %if.then.928

if.then.928:                                      ; preds = %while.body.925
  %532 = load i64, i64* %aulong, align 8
  %call929 = call %struct.sv* @Perl_newSVuv(i64 %532)
  %call930 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call929)
  %533 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr931 = getelementptr inbounds %struct.sv*, %struct.sv** %533, i32 1
  store %struct.sv** %incdec.ptr931, %struct.sv*** %sp, align 8
  store %struct.sv* %call930, %struct.sv** %incdec.ptr931, align 8
  br label %if.end.941

if.else.932:                                      ; preds = %while.body.925
  %534 = load i32, i32* %checksum, align 4
  %cmp933 = icmp sgt i32 %534, 64
  br i1 %cmp933, label %if.then.935, label %if.else.938

if.then.935:                                      ; preds = %if.else.932
  %535 = load i64, i64* %aulong, align 8
  %conv936 = uitofp i64 %535 to double
  %536 = load double, double* %cdouble, align 8
  %add937 = fadd double %536, %conv936
  store double %add937, double* %cdouble, align 8
  br label %if.end.940

if.else.938:                                      ; preds = %if.else.932
  %537 = load i64, i64* %aulong, align 8
  %538 = load i64, i64* %cuv, align 8
  %add939 = add i64 %538, %537
  store i64 %add939, i64* %cuv, align 8
  br label %if.end.940

if.end.940:                                       ; preds = %if.else.938, %if.then.935
  br label %if.end.941

if.end.941:                                       ; preds = %if.end.940, %if.then.928
  br label %while.cond.921

while.end.942:                                    ; preds = %while.cond.921
  br label %sw.epilog.1405

sw.bb.943:                                        ; preds = %if.end.86, %if.end.86, %if.end.86
  br label %while.cond.944

while.cond.944:                                   ; preds = %if.end.980, %sw.bb.943
  %539 = load i32, i32* %len, align 4
  %dec945 = add nsw i32 %539, -1
  store i32 %dec945, i32* %len, align 4
  %cmp946 = icmp sgt i32 %539, 0
  br i1 %cmp946, label %while.body.948, label %while.end.981

while.body.948:                                   ; preds = %while.cond.944
  %540 = bitcast i32* %au32 to i8*
  %541 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %540, i8* %541, i64 4, i32 1, i1 false)
  %542 = load i8*, i8** %s.addr, align 8
  %add.ptr949 = getelementptr inbounds i8, i8* %542, i64 4
  store i8* %add.ptr949, i8** %s.addr, align 8
  %543 = load i32, i32* %datumtype, align 4
  %cmp950 = icmp eq i32 %543, 78
  br i1 %cmp950, label %if.then.952, label %if.end.956

if.then.952:                                      ; preds = %while.body.948
  %544 = load i32, i32* %au32, align 4
  %conv953 = zext i32 %544 to i64
  %call954 = call i64 @Perl_my_ntohl(i64 %conv953)
  %conv955 = trunc i64 %call954 to i32
  store i32 %conv955, i32* %au32, align 4
  br label %if.end.956

if.end.956:                                       ; preds = %if.then.952, %while.body.948
  %545 = load i32, i32* %datumtype, align 4
  %cmp957 = icmp eq i32 %545, 86
  br i1 %cmp957, label %if.then.959, label %if.end.963

if.then.959:                                      ; preds = %if.end.956
  %546 = load i32, i32* %au32, align 4
  %conv960 = zext i32 %546 to i64
  %call961 = call i64 @vtohl(i64 %conv960)
  %conv962 = trunc i64 %call961 to i32
  store i32 %conv962, i32* %au32, align 4
  br label %if.end.963

if.end.963:                                       ; preds = %if.then.959, %if.end.956
  %547 = load i32, i32* %checksum, align 4
  %tobool964 = icmp ne i32 %547, 0
  br i1 %tobool964, label %if.else.970, label %if.then.965

if.then.965:                                      ; preds = %if.end.963
  %548 = load i32, i32* %au32, align 4
  %conv966 = zext i32 %548 to i64
  %call967 = call %struct.sv* @Perl_newSVuv(i64 %conv966)
  %call968 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call967)
  %549 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr969 = getelementptr inbounds %struct.sv*, %struct.sv** %549, i32 1
  store %struct.sv** %incdec.ptr969, %struct.sv*** %sp, align 8
  store %struct.sv* %call968, %struct.sv** %incdec.ptr969, align 8
  br label %if.end.980

if.else.970:                                      ; preds = %if.end.963
  %550 = load i32, i32* %checksum, align 4
  %cmp971 = icmp sgt i32 %550, 64
  br i1 %cmp971, label %if.then.973, label %if.else.976

if.then.973:                                      ; preds = %if.else.970
  %551 = load i32, i32* %au32, align 4
  %conv974 = uitofp i32 %551 to double
  %552 = load double, double* %cdouble, align 8
  %add975 = fadd double %552, %conv974
  store double %add975, double* %cdouble, align 8
  br label %if.end.979

if.else.976:                                      ; preds = %if.else.970
  %553 = load i32, i32* %au32, align 4
  %conv977 = zext i32 %553 to i64
  %554 = load i64, i64* %cuv, align 8
  %add978 = add i64 %554, %conv977
  store i64 %add978, i64* %cuv, align 8
  br label %if.end.979

if.end.979:                                       ; preds = %if.else.976, %if.then.973
  br label %if.end.980

if.end.980:                                       ; preds = %if.end.979, %if.then.965
  br label %while.cond.944

while.end.981:                                    ; preds = %while.cond.944
  br label %sw.epilog.1405

sw.bb.982:                                        ; preds = %if.end.86
  br label %while.cond.983

while.cond.983:                                   ; preds = %while.body.987, %sw.bb.982
  %555 = load i32, i32* %len, align 4
  %dec984 = add nsw i32 %555, -1
  store i32 %dec984, i32* %len, align 4
  %cmp985 = icmp sgt i32 %555, 0
  br i1 %cmp985, label %while.body.987, label %while.end.992

while.body.987:                                   ; preds = %while.cond.983
  %556 = bitcast i8** %aptr to i8*
  %557 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %556, i8* %557, i64 8, i32 1, i1 false)
  %558 = load i8*, i8** %s.addr, align 8
  %add.ptr988 = getelementptr inbounds i8, i8* %558, i64 8
  store i8* %add.ptr988, i8** %s.addr, align 8
  %559 = load i8*, i8** %aptr, align 8
  %call989 = call %struct.sv* @Perl_newSVpv(i8* %559, i64 0)
  %call990 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call989)
  %560 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr991 = getelementptr inbounds %struct.sv*, %struct.sv** %560, i32 1
  store %struct.sv** %incdec.ptr991, %struct.sv*** %sp, align 8
  store %struct.sv* %call990, %struct.sv** %incdec.ptr991, align 8
  br label %while.cond.983

while.end.992:                                    ; preds = %while.cond.983
  br label %sw.epilog.1405

sw.bb.993:                                        ; preds = %if.end.86
  store i64 0, i64* %auv995, align 8
  store i32 0, i32* %bytes, align 4
  br label %while.cond.997

while.cond.997:                                   ; preds = %if.end.1064, %sw.bb.993
  %561 = load i32, i32* %len, align 4
  %cmp998 = icmp sgt i32 %561, 0
  br i1 %cmp998, label %land.rhs.1000, label %land.end.1003

land.rhs.1000:                                    ; preds = %while.cond.997
  %562 = load i8*, i8** %s.addr, align 8
  %563 = load i8*, i8** %strend.addr, align 8
  %cmp1001 = icmp ult i8* %562, %563
  br label %land.end.1003

land.end.1003:                                    ; preds = %land.rhs.1000, %while.cond.997
  %564 = phi i1 [ false, %while.cond.997 ], [ %cmp1001, %land.rhs.1000 ]
  br i1 %564, label %while.body.1004, label %while.end.1065

while.body.1004:                                  ; preds = %land.end.1003
  %565 = load i64, i64* %auv995, align 8
  %shl1005 = shl i64 %565, 7
  %566 = load i8*, i8** %s.addr, align 8
  %567 = load i8, i8* %566, align 1
  %conv1006 = sext i8 %567 to i32
  %and1007 = and i32 %conv1006, 127
  %conv1008 = sext i32 %and1007 to i64
  %or1009 = or i64 %shl1005, %conv1008
  store i64 %or1009, i64* %auv995, align 8
  %568 = load i8*, i8** %s.addr, align 8
  %incdec.ptr1010 = getelementptr inbounds i8, i8* %568, i32 1
  store i8* %incdec.ptr1010, i8** %s.addr, align 8
  %569 = load i8, i8* %568, align 1
  %conv1011 = zext i8 %569 to i32
  %cmp1012 = icmp slt i32 %conv1011, 128
  br i1 %cmp1012, label %if.then.1014, label %if.else.1019

if.then.1014:                                     ; preds = %while.body.1004
  store i32 0, i32* %bytes, align 4
  %570 = load i64, i64* %auv995, align 8
  %call1015 = call %struct.sv* @Perl_newSVuv(i64 %570)
  %call1016 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1015)
  %571 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1017 = getelementptr inbounds %struct.sv*, %struct.sv** %571, i32 1
  store %struct.sv** %incdec.ptr1017, %struct.sv*** %sp, align 8
  store %struct.sv* %call1016, %struct.sv** %incdec.ptr1017, align 8
  %572 = load i32, i32* %len, align 4
  %dec1018 = add nsw i32 %572, -1
  store i32 %dec1018, i32* %len, align 4
  store i64 0, i64* %auv995, align 8
  br label %if.end.1064

if.else.1019:                                     ; preds = %while.body.1004
  %573 = load i32, i32* %bytes, align 4
  %inc1020 = add i32 %573, 1
  store i32 %inc1020, i32* %bytes, align 4
  %conv1021 = zext i32 %inc1020 to i64
  %cmp1022 = icmp uge i64 %conv1021, 8
  br i1 %cmp1022, label %if.then.1024, label %if.end.1063

if.then.1024:                                     ; preds = %if.else.1019
  %574 = load i64, i64* %auv995, align 8
  %call1027 = call %struct.sv* (i8*, ...) @Perl_newSVpvf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 20, i64 %574)
  store %struct.sv* %call1027, %struct.sv** %sv, align 8
  br label %while.cond.1028

while.cond.1028:                                  ; preds = %if.end.1041, %if.then.1024
  %575 = load i8*, i8** %s.addr, align 8
  %576 = load i8*, i8** %strend.addr, align 8
  %cmp1029 = icmp ult i8* %575, %576
  br i1 %cmp1029, label %while.body.1031, label %while.end.1042

while.body.1031:                                  ; preds = %while.cond.1028
  %577 = load %struct.sv*, %struct.sv** %sv, align 8
  %578 = load i8*, i8** %s.addr, align 8
  %579 = load i8, i8* %578, align 1
  %conv1032 = sext i8 %579 to i32
  %and1033 = and i32 %conv1032, 127
  %conv1034 = trunc i32 %and1033 to i8
  %call1035 = call %struct.sv* @S_mul128(%struct.sv* %577, i8 zeroext %conv1034)
  store %struct.sv* %call1035, %struct.sv** %sv, align 8
  %580 = load i8*, i8** %s.addr, align 8
  %incdec.ptr1036 = getelementptr inbounds i8, i8* %580, i32 1
  store i8* %incdec.ptr1036, i8** %s.addr, align 8
  %581 = load i8, i8* %580, align 1
  %conv1037 = sext i8 %581 to i32
  %and1038 = and i32 %conv1037, 128
  %tobool1039 = icmp ne i32 %and1038, 0
  br i1 %tobool1039, label %if.end.1041, label %if.then.1040

if.then.1040:                                     ; preds = %while.body.1031
  store i32 0, i32* %bytes, align 4
  br label %while.end.1042

if.end.1041:                                      ; preds = %while.body.1031
  br label %while.cond.1028

while.end.1042:                                   ; preds = %if.then.1040, %while.cond.1028
  %582 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags1043 = getelementptr inbounds %struct.sv, %struct.sv* %582, i32 0, i32 2
  %583 = load i32, i32* %sv_flags1043, align 4
  %and1044 = and i32 %583, 262144
  %cmp1045 = icmp eq i32 %and1044, 262144
  br i1 %cmp1045, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end.1042
  %584 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any1047 = getelementptr inbounds %struct.sv, %struct.sv* %584, i32 0, i32 0
  %585 = load i8*, i8** %sv_any1047, align 8
  %586 = bitcast i8* %585 to %struct.xpv*
  %xpv_cur1048 = getelementptr inbounds %struct.xpv, %struct.xpv* %586, i32 0, i32 1
  %587 = load i64, i64* %xpv_cur1048, align 8
  store i64 %587, i64* %n_a, align 8
  %588 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any1049 = getelementptr inbounds %struct.sv, %struct.sv* %588, i32 0, i32 0
  %589 = load i8*, i8** %sv_any1049, align 8
  %590 = bitcast i8* %589 to %struct.xpv*
  %xpv_pv1050 = getelementptr inbounds %struct.xpv, %struct.xpv* %590, i32 0, i32 0
  %591 = load i8*, i8** %xpv_pv1050, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.end.1042
  %592 = load %struct.sv*, %struct.sv** %sv, align 8
  %call1051 = call i8* @Perl_sv_2pv_flags(%struct.sv* %592, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1052 = phi i8* [ %591, %cond.true ], [ %call1051, %cond.false ]
  store i8* %cond1052, i8** %t, align 8
  br label %while.cond.1053

while.cond.1053:                                  ; preds = %while.body.1057, %cond.end
  %593 = load i8*, i8** %t, align 8
  %594 = load i8, i8* %593, align 1
  %conv1054 = sext i8 %594 to i32
  %cmp1055 = icmp eq i32 %conv1054, 48
  br i1 %cmp1055, label %while.body.1057, label %while.end.1059

while.body.1057:                                  ; preds = %while.cond.1053
  %595 = load i8*, i8** %t, align 8
  %incdec.ptr1058 = getelementptr inbounds i8, i8* %595, i32 1
  store i8* %incdec.ptr1058, i8** %t, align 8
  br label %while.cond.1053

while.end.1059:                                   ; preds = %while.cond.1053
  %596 = load %struct.sv*, %struct.sv** %sv, align 8
  %597 = load i8*, i8** %t, align 8
  call void @Perl_sv_chop(%struct.sv* %596, i8* %597)
  %598 = load %struct.sv*, %struct.sv** %sv, align 8
  %call1060 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %598)
  %599 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1061 = getelementptr inbounds %struct.sv*, %struct.sv** %599, i32 1
  store %struct.sv** %incdec.ptr1061, %struct.sv*** %sp, align 8
  store %struct.sv* %call1060, %struct.sv** %incdec.ptr1061, align 8
  %600 = load i32, i32* %len, align 4
  %dec1062 = add nsw i32 %600, -1
  store i32 %dec1062, i32* %len, align 4
  store i64 0, i64* %auv995, align 8
  br label %if.end.1063

if.end.1063:                                      ; preds = %while.end.1059, %if.else.1019
  br label %if.end.1064

if.end.1064:                                      ; preds = %if.end.1063, %if.then.1014
  br label %while.cond.997

while.end.1065:                                   ; preds = %land.end.1003
  %601 = load i8*, i8** %s.addr, align 8
  %602 = load i8*, i8** %strend.addr, align 8
  %cmp1066 = icmp uge i8* %601, %602
  br i1 %cmp1066, label %land.lhs.true.1068, label %if.end.1071

land.lhs.true.1068:                               ; preds = %while.end.1065
  %603 = load i32, i32* %bytes, align 4
  %tobool1069 = icmp ne i32 %603, 0
  br i1 %tobool1069, label %if.then.1070, label %if.end.1071

if.then.1070:                                     ; preds = %land.lhs.true.1068
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.1071

if.end.1071:                                      ; preds = %if.then.1070, %land.lhs.true.1068, %while.end.1065
  br label %sw.epilog.1405

sw.bb.1072:                                       ; preds = %if.end.86
  %604 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %howlen1073 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %604, i32 0, i32 6
  %605 = load i32, i32* %howlen1073, align 4
  %cmp1074 = icmp eq i32 %605, 2
  br i1 %cmp1074, label %if.then.1076, label %if.end.1077

if.then.1076:                                     ; preds = %sw.bb.1072
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.1077

if.end.1077:                                      ; preds = %if.then.1076, %sw.bb.1072
  %606 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %607 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast1078 = ptrtoint %struct.sv** %606 to i64
  %sub.ptr.rhs.cast1079 = ptrtoint %struct.sv** %607 to i64
  %sub.ptr.sub1080 = sub i64 %sub.ptr.lhs.cast1078, %sub.ptr.rhs.cast1079
  %sub.ptr.div1081 = sdiv exact i64 %sub.ptr.sub1080, 8
  %cmp1082 = icmp slt i64 %sub.ptr.div1081, 1
  br i1 %cmp1082, label %if.then.1084, label %if.end.1086

if.then.1084:                                     ; preds = %if.end.1077
  %608 = load %struct.sv**, %struct.sv*** %sp, align 8
  %609 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call1085 = call %struct.sv** @Perl_stack_grow(%struct.sv** %608, %struct.sv** %609, i32 1)
  store %struct.sv** %call1085, %struct.sv*** %sp, align 8
  br label %if.end.1086

if.end.1086:                                      ; preds = %if.then.1084, %if.end.1077
  %610 = load i8*, i8** %strend.addr, align 8
  %611 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast1087 = ptrtoint i8* %610 to i64
  %sub.ptr.rhs.cast1088 = ptrtoint i8* %611 to i64
  %sub.ptr.sub1089 = sub i64 %sub.ptr.lhs.cast1087, %sub.ptr.rhs.cast1088
  %cmp1090 = icmp ugt i64 8, %sub.ptr.sub1089
  br i1 %cmp1090, label %if.then.1092, label %if.else.1093

if.then.1092:                                     ; preds = %if.end.1086
  br label %sw.epilog.1405

if.else.1093:                                     ; preds = %if.end.1086
  %612 = bitcast i8** %aptr to i8*
  %613 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %612, i8* %613, i64 8, i32 1, i1 false)
  %614 = load i8*, i8** %s.addr, align 8
  %add.ptr1094 = getelementptr inbounds i8, i8* %614, i64 8
  store i8* %add.ptr1094, i8** %s.addr, align 8
  br label %if.end.1095

if.end.1095:                                      ; preds = %if.else.1093
  %615 = load i8*, i8** %aptr, align 8
  %616 = load i32, i32* %len, align 4
  %conv1096 = sext i32 %616 to i64
  %call1097 = call %struct.sv* @Perl_newSVpvn(i8* %615, i64 %conv1096)
  %call1098 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1097)
  %617 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1099 = getelementptr inbounds %struct.sv*, %struct.sv** %617, i32 1
  store %struct.sv** %incdec.ptr1099, %struct.sv*** %sp, align 8
  store %struct.sv* %call1098, %struct.sv** %incdec.ptr1099, align 8
  br label %sw.epilog.1405

sw.bb.1100:                                       ; preds = %if.end.86
  br label %while.cond.1101

while.cond.1101:                                  ; preds = %if.end.1132, %sw.bb.1100
  %618 = load i32, i32* %len, align 4
  %dec1102 = add nsw i32 %618, -1
  store i32 %dec1102, i32* %len, align 4
  %cmp1103 = icmp sgt i32 %618, 0
  br i1 %cmp1103, label %while.body.1105, label %while.end.1133

while.body.1105:                                  ; preds = %while.cond.1101
  %619 = bitcast i64* %aquad to i8*
  %620 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %619, i8* %620, i64 8, i32 1, i1 false)
  %621 = load i8*, i8** %s.addr, align 8
  %add.ptr1106 = getelementptr inbounds i8, i8* %621, i64 8
  store i8* %add.ptr1106, i8** %s.addr, align 8
  %622 = load i32, i32* %checksum, align 4
  %tobool1107 = icmp ne i32 %622, 0
  br i1 %tobool1107, label %if.else.1123, label %if.then.1108

if.then.1108:                                     ; preds = %while.body.1105
  %623 = load i64, i64* %aquad, align 8
  %cmp1109 = icmp sge i64 %623, -9223372036854775808
  br i1 %cmp1109, label %land.lhs.true.1111, label %cond.false.1116

land.lhs.true.1111:                               ; preds = %if.then.1108
  %624 = load i64, i64* %aquad, align 8
  %cmp1112 = icmp sle i64 %624, 9223372036854775807
  br i1 %cmp1112, label %cond.true.1114, label %cond.false.1116

cond.true.1114:                                   ; preds = %land.lhs.true.1111
  %625 = load i64, i64* %aquad, align 8
  %call1115 = call %struct.sv* @Perl_newSViv(i64 %625)
  br label %cond.end.1119

cond.false.1116:                                  ; preds = %land.lhs.true.1111, %if.then.1108
  %626 = load i64, i64* %aquad, align 8
  %conv1117 = sitofp i64 %626 to double
  %call1118 = call %struct.sv* @Perl_newSVnv(double %conv1117)
  br label %cond.end.1119

cond.end.1119:                                    ; preds = %cond.false.1116, %cond.true.1114
  %cond1120 = phi %struct.sv* [ %call1115, %cond.true.1114 ], [ %call1118, %cond.false.1116 ]
  %call1121 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %cond1120)
  %627 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1122 = getelementptr inbounds %struct.sv*, %struct.sv** %627, i32 1
  store %struct.sv** %incdec.ptr1122, %struct.sv*** %sp, align 8
  store %struct.sv* %call1121, %struct.sv** %incdec.ptr1122, align 8
  br label %if.end.1132

if.else.1123:                                     ; preds = %while.body.1105
  %628 = load i32, i32* %checksum, align 4
  %cmp1124 = icmp sgt i32 %628, 64
  br i1 %cmp1124, label %if.then.1126, label %if.else.1129

if.then.1126:                                     ; preds = %if.else.1123
  %629 = load i64, i64* %aquad, align 8
  %conv1127 = sitofp i64 %629 to double
  %630 = load double, double* %cdouble, align 8
  %add1128 = fadd double %630, %conv1127
  store double %add1128, double* %cdouble, align 8
  br label %if.end.1131

if.else.1129:                                     ; preds = %if.else.1123
  %631 = load i64, i64* %aquad, align 8
  %632 = load i64, i64* %cuv, align 8
  %add1130 = add i64 %632, %631
  store i64 %add1130, i64* %cuv, align 8
  br label %if.end.1131

if.end.1131:                                      ; preds = %if.else.1129, %if.then.1126
  br label %if.end.1132

if.end.1132:                                      ; preds = %if.end.1131, %cond.end.1119
  br label %while.cond.1101

while.end.1133:                                   ; preds = %while.cond.1101
  br label %sw.epilog.1405

sw.bb.1134:                                       ; preds = %if.end.86
  br label %while.cond.1135

while.cond.1135:                                  ; preds = %if.end.1163, %sw.bb.1134
  %633 = load i32, i32* %len, align 4
  %dec1136 = add nsw i32 %633, -1
  store i32 %dec1136, i32* %len, align 4
  %cmp1137 = icmp sgt i32 %633, 0
  br i1 %cmp1137, label %while.body.1139, label %while.end.1164

while.body.1139:                                  ; preds = %while.cond.1135
  %634 = bitcast i64* %auquad to i8*
  %635 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %634, i8* %635, i64 8, i32 1, i1 false)
  %636 = load i8*, i8** %s.addr, align 8
  %add.ptr1140 = getelementptr inbounds i8, i8* %636, i64 8
  store i8* %add.ptr1140, i8** %s.addr, align 8
  %637 = load i32, i32* %checksum, align 4
  %tobool1141 = icmp ne i32 %637, 0
  br i1 %tobool1141, label %if.else.1154, label %if.then.1142

if.then.1142:                                     ; preds = %while.body.1139
  %638 = load i64, i64* %auquad, align 8
  %cmp1143 = icmp ule i64 %638, -1
  br i1 %cmp1143, label %cond.true.1145, label %cond.false.1147

cond.true.1145:                                   ; preds = %if.then.1142
  %639 = load i64, i64* %auquad, align 8
  %call1146 = call %struct.sv* @Perl_newSVuv(i64 %639)
  br label %cond.end.1150

cond.false.1147:                                  ; preds = %if.then.1142
  %640 = load i64, i64* %auquad, align 8
  %conv1148 = uitofp i64 %640 to double
  %call1149 = call %struct.sv* @Perl_newSVnv(double %conv1148)
  br label %cond.end.1150

cond.end.1150:                                    ; preds = %cond.false.1147, %cond.true.1145
  %cond1151 = phi %struct.sv* [ %call1146, %cond.true.1145 ], [ %call1149, %cond.false.1147 ]
  %call1152 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %cond1151)
  %641 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1153 = getelementptr inbounds %struct.sv*, %struct.sv** %641, i32 1
  store %struct.sv** %incdec.ptr1153, %struct.sv*** %sp, align 8
  store %struct.sv* %call1152, %struct.sv** %incdec.ptr1153, align 8
  br label %if.end.1163

if.else.1154:                                     ; preds = %while.body.1139
  %642 = load i32, i32* %checksum, align 4
  %cmp1155 = icmp sgt i32 %642, 64
  br i1 %cmp1155, label %if.then.1157, label %if.else.1160

if.then.1157:                                     ; preds = %if.else.1154
  %643 = load i64, i64* %auquad, align 8
  %conv1158 = uitofp i64 %643 to double
  %644 = load double, double* %cdouble, align 8
  %add1159 = fadd double %644, %conv1158
  store double %add1159, double* %cdouble, align 8
  br label %if.end.1162

if.else.1160:                                     ; preds = %if.else.1154
  %645 = load i64, i64* %auquad, align 8
  %646 = load i64, i64* %cuv, align 8
  %add1161 = add i64 %646, %645
  store i64 %add1161, i64* %cuv, align 8
  br label %if.end.1162

if.end.1162:                                      ; preds = %if.else.1160, %if.then.1157
  br label %if.end.1163

if.end.1163:                                      ; preds = %if.end.1162, %cond.end.1150
  br label %while.cond.1135

while.end.1164:                                   ; preds = %while.cond.1135
  br label %sw.epilog.1405

sw.bb.1165:                                       ; preds = %if.end.86
  br label %while.cond.1166

while.cond.1166:                                  ; preds = %if.end.1181, %sw.bb.1165
  %647 = load i32, i32* %len, align 4
  %dec1167 = add nsw i32 %647, -1
  store i32 %dec1167, i32* %len, align 4
  %cmp1168 = icmp sgt i32 %647, 0
  br i1 %cmp1168, label %while.body.1170, label %while.end.1182

while.body.1170:                                  ; preds = %while.cond.1166
  %648 = bitcast float* %afloat to i8*
  %649 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %648, i8* %649, i64 4, i32 1, i1 false)
  %650 = load i8*, i8** %s.addr, align 8
  %add.ptr1171 = getelementptr inbounds i8, i8* %650, i64 4
  store i8* %add.ptr1171, i8** %s.addr, align 8
  %651 = load i32, i32* %checksum, align 4
  %tobool1172 = icmp ne i32 %651, 0
  br i1 %tobool1172, label %if.else.1178, label %if.then.1173

if.then.1173:                                     ; preds = %while.body.1170
  %652 = load float, float* %afloat, align 4
  %conv1174 = fpext float %652 to double
  %call1175 = call %struct.sv* @Perl_newSVnv(double %conv1174)
  %call1176 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1175)
  %653 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1177 = getelementptr inbounds %struct.sv*, %struct.sv** %653, i32 1
  store %struct.sv** %incdec.ptr1177, %struct.sv*** %sp, align 8
  store %struct.sv* %call1176, %struct.sv** %incdec.ptr1177, align 8
  br label %if.end.1181

if.else.1178:                                     ; preds = %while.body.1170
  %654 = load float, float* %afloat, align 4
  %conv1179 = fpext float %654 to double
  %655 = load double, double* %cdouble, align 8
  %add1180 = fadd double %655, %conv1179
  store double %add1180, double* %cdouble, align 8
  br label %if.end.1181

if.end.1181:                                      ; preds = %if.else.1178, %if.then.1173
  br label %while.cond.1166

while.end.1182:                                   ; preds = %while.cond.1166
  br label %sw.epilog.1405

sw.bb.1183:                                       ; preds = %if.end.86
  br label %while.cond.1184

while.cond.1184:                                  ; preds = %if.end.1197, %sw.bb.1183
  %656 = load i32, i32* %len, align 4
  %dec1185 = add nsw i32 %656, -1
  store i32 %dec1185, i32* %len, align 4
  %cmp1186 = icmp sgt i32 %656, 0
  br i1 %cmp1186, label %while.body.1188, label %while.end.1198

while.body.1188:                                  ; preds = %while.cond.1184
  %657 = bitcast double* %adouble to i8*
  %658 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %657, i8* %658, i64 8, i32 1, i1 false)
  %659 = load i8*, i8** %s.addr, align 8
  %add.ptr1189 = getelementptr inbounds i8, i8* %659, i64 8
  store i8* %add.ptr1189, i8** %s.addr, align 8
  %660 = load i32, i32* %checksum, align 4
  %tobool1190 = icmp ne i32 %660, 0
  br i1 %tobool1190, label %if.else.1195, label %if.then.1191

if.then.1191:                                     ; preds = %while.body.1188
  %661 = load double, double* %adouble, align 8
  %call1192 = call %struct.sv* @Perl_newSVnv(double %661)
  %call1193 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1192)
  %662 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1194 = getelementptr inbounds %struct.sv*, %struct.sv** %662, i32 1
  store %struct.sv** %incdec.ptr1194, %struct.sv*** %sp, align 8
  store %struct.sv* %call1193, %struct.sv** %incdec.ptr1194, align 8
  br label %if.end.1197

if.else.1195:                                     ; preds = %while.body.1188
  %663 = load double, double* %adouble, align 8
  %664 = load double, double* %cdouble, align 8
  %add1196 = fadd double %664, %663
  store double %add1196, double* %cdouble, align 8
  br label %if.end.1197

if.end.1197:                                      ; preds = %if.else.1195, %if.then.1191
  br label %while.cond.1184

while.end.1198:                                   ; preds = %while.cond.1184
  br label %sw.epilog.1405

sw.bb.1199:                                       ; preds = %if.end.86
  br label %while.cond.1200

while.cond.1200:                                  ; preds = %if.end.1213, %sw.bb.1199
  %665 = load i32, i32* %len, align 4
  %dec1201 = add nsw i32 %665, -1
  store i32 %dec1201, i32* %len, align 4
  %cmp1202 = icmp sgt i32 %665, 0
  br i1 %cmp1202, label %while.body.1204, label %while.end.1214

while.body.1204:                                  ; preds = %while.cond.1200
  %666 = bitcast double* %anv to i8*
  %667 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %666, i8* %667, i64 8, i32 1, i1 false)
  %668 = load i8*, i8** %s.addr, align 8
  %add.ptr1205 = getelementptr inbounds i8, i8* %668, i64 8
  store i8* %add.ptr1205, i8** %s.addr, align 8
  %669 = load i32, i32* %checksum, align 4
  %tobool1206 = icmp ne i32 %669, 0
  br i1 %tobool1206, label %if.else.1211, label %if.then.1207

if.then.1207:                                     ; preds = %while.body.1204
  %670 = load double, double* %anv, align 8
  %call1208 = call %struct.sv* @Perl_newSVnv(double %670)
  %call1209 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1208)
  %671 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1210 = getelementptr inbounds %struct.sv*, %struct.sv** %671, i32 1
  store %struct.sv** %incdec.ptr1210, %struct.sv*** %sp, align 8
  store %struct.sv* %call1209, %struct.sv** %incdec.ptr1210, align 8
  br label %if.end.1213

if.else.1211:                                     ; preds = %while.body.1204
  %672 = load double, double* %anv, align 8
  %673 = load double, double* %cdouble, align 8
  %add1212 = fadd double %673, %672
  store double %add1212, double* %cdouble, align 8
  br label %if.end.1213

if.end.1213:                                      ; preds = %if.else.1211, %if.then.1207
  br label %while.cond.1200

while.end.1214:                                   ; preds = %while.cond.1200
  br label %sw.epilog.1405

sw.bb.1215:                                       ; preds = %if.end.86
  %674 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @PL_uudmap, i32 0, i64 77), align 1
  %conv1216 = sext i8 %674 to i32
  %cmp1217 = icmp eq i32 %conv1216, 0
  br i1 %cmp1217, label %if.then.1219, label %if.end.1234

if.then.1219:                                     ; preds = %sw.bb.1215
  store i32 0, i32* %i, align 4
  br label %for.cond.1221

for.cond.1221:                                    ; preds = %for.inc.1231, %if.then.1219
  %675 = load i32, i32* %i, align 4
  %conv1222 = sext i32 %675 to i64
  %cmp1223 = icmp ult i64 %conv1222, 65
  br i1 %cmp1223, label %for.body.1225, label %for.end.1233

for.body.1225:                                    ; preds = %for.cond.1221
  %676 = load i32, i32* %i, align 4
  %conv1226 = trunc i32 %676 to i8
  %677 = load i32, i32* %i, align 4
  %idxprom1227 = sext i32 %677 to i64
  %arrayidx1228 = getelementptr inbounds [65 x i8], [65 x i8]* @PL_uuemap, i32 0, i64 %idxprom1227
  %678 = load i8, i8* %arrayidx1228, align 1
  %idxprom1229 = zext i8 %678 to i64
  %arrayidx1230 = getelementptr inbounds [256 x i8], [256 x i8]* @PL_uudmap, i32 0, i64 %idxprom1229
  store i8 %conv1226, i8* %arrayidx1230, align 1
  br label %for.inc.1231

for.inc.1231:                                     ; preds = %for.body.1225
  %679 = load i32, i32* %i, align 4
  %add1232 = add nsw i32 %679, 1
  store i32 %add1232, i32* %i, align 4
  br label %for.cond.1221

for.end.1233:                                     ; preds = %for.cond.1221
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @PL_uudmap, i32 0, i64 32), align 1
  br label %if.end.1234

if.end.1234:                                      ; preds = %for.end.1233, %sw.bb.1215
  %680 = load i8*, i8** %strend.addr, align 8
  %681 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast1235 = ptrtoint i8* %680 to i64
  %sub.ptr.rhs.cast1236 = ptrtoint i8* %681 to i64
  %sub.ptr.sub1237 = sub i64 %sub.ptr.lhs.cast1235, %sub.ptr.rhs.cast1236
  %mul1238 = mul nsw i64 %sub.ptr.sub1237, 3
  %div1239 = sdiv i64 %mul1238, 4
  store i64 %div1239, i64* %along, align 8
  %682 = load i64, i64* %along, align 8
  %call1240 = call %struct.sv* @Perl_newSV(i64 %682)
  store %struct.sv* %call1240, %struct.sv** %sv, align 8
  %683 = load i64, i64* %along, align 8
  %tobool1241 = icmp ne i64 %683, 0
  br i1 %tobool1241, label %if.then.1242, label %if.end.1245

if.then.1242:                                     ; preds = %if.end.1234
  %684 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags1243 = getelementptr inbounds %struct.sv, %struct.sv* %684, i32 0, i32 2
  %685 = load i32, i32* %sv_flags1243, align 4
  %or1244 = or i32 %685, 67371008
  store i32 %or1244, i32* %sv_flags1243, align 4
  br label %if.end.1245

if.end.1245:                                      ; preds = %if.then.1242, %if.end.1234
  br label %while.cond.1246

while.cond.1246:                                  ; preds = %if.end.1391, %if.end.1245
  %686 = load i8*, i8** %s.addr, align 8
  %687 = load i8*, i8** %strend.addr, align 8
  %cmp1247 = icmp ult i8* %686, %687
  br i1 %cmp1247, label %land.lhs.true.1249, label %land.end.1262

land.lhs.true.1249:                               ; preds = %while.cond.1246
  %688 = load i8*, i8** %s.addr, align 8
  %689 = load i8, i8* %688, align 1
  %conv1250 = sext i8 %689 to i32
  %cmp1251 = icmp sgt i32 %conv1250, 32
  br i1 %cmp1251, label %land.rhs.1253, label %land.end.1262

land.rhs.1253:                                    ; preds = %land.lhs.true.1249
  %690 = load i8*, i8** %s.addr, align 8
  %691 = load i8, i8* %690, align 1
  %conv1254 = sext i8 %691 to i32
  %cmp1255 = icmp sge i32 %conv1254, 32
  br i1 %cmp1255, label %land.rhs.1257, label %land.end.1261

land.rhs.1257:                                    ; preds = %land.rhs.1253
  %692 = load i8*, i8** %s.addr, align 8
  %693 = load i8, i8* %692, align 1
  %conv1258 = sext i8 %693 to i32
  %cmp1259 = icmp slt i32 %conv1258, 97
  br label %land.end.1261

land.end.1261:                                    ; preds = %land.rhs.1257, %land.rhs.1253
  %694 = phi i1 [ false, %land.rhs.1253 ], [ %cmp1259, %land.rhs.1257 ]
  br label %land.end.1262

land.end.1262:                                    ; preds = %land.end.1261, %land.lhs.true.1249, %while.cond.1246
  %695 = phi i1 [ false, %land.lhs.true.1249 ], [ false, %while.cond.1246 ], [ %694, %land.end.1261 ]
  br i1 %695, label %while.body.1263, label %while.end.1392

while.body.1263:                                  ; preds = %land.end.1262
  %arrayidx1269 = getelementptr inbounds [4 x i8], [4 x i8]* %hunk, i32 0, i64 3
  store i8 0, i8* %arrayidx1269, align 1
  %696 = load i8*, i8** %s.addr, align 8
  %incdec.ptr1270 = getelementptr inbounds i8, i8* %696, i32 1
  store i8* %incdec.ptr1270, i8** %s.addr, align 8
  %697 = load i8, i8* %696, align 1
  %idxprom1271 = zext i8 %697 to i64
  %arrayidx1272 = getelementptr inbounds [256 x i8], [256 x i8]* @PL_uudmap, i32 0, i64 %idxprom1271
  %698 = load i8, i8* %arrayidx1272, align 1
  %conv1273 = sext i8 %698 to i32
  %and1274 = and i32 %conv1273, 63
  store i32 %and1274, i32* %len, align 4
  br label %while.cond.1275

while.cond.1275:                                  ; preds = %cond.end.1369, %while.body.1263
  %699 = load i32, i32* %len, align 4
  %cmp1276 = icmp sgt i32 %699, 0
  br i1 %cmp1276, label %while.body.1278, label %while.end.1373

while.body.1278:                                  ; preds = %while.cond.1275
  %700 = load i8*, i8** %s.addr, align 8
  %701 = load i8*, i8** %strend.addr, align 8
  %cmp1279 = icmp ult i8* %700, %701
  br i1 %cmp1279, label %land.lhs.true.1281, label %if.else.1295

land.lhs.true.1281:                               ; preds = %while.body.1278
  %702 = load i8*, i8** %s.addr, align 8
  %703 = load i8, i8* %702, align 1
  %conv1282 = sext i8 %703 to i32
  %cmp1283 = icmp sge i32 %conv1282, 32
  br i1 %cmp1283, label %land.lhs.true.1285, label %if.else.1295

land.lhs.true.1285:                               ; preds = %land.lhs.true.1281
  %704 = load i8*, i8** %s.addr, align 8
  %705 = load i8, i8* %704, align 1
  %conv1286 = sext i8 %705 to i32
  %cmp1287 = icmp slt i32 %conv1286, 97
  br i1 %cmp1287, label %if.then.1289, label %if.else.1295

if.then.1289:                                     ; preds = %land.lhs.true.1285
  %706 = load i8*, i8** %s.addr, align 8
  %incdec.ptr1290 = getelementptr inbounds i8, i8* %706, i32 1
  store i8* %incdec.ptr1290, i8** %s.addr, align 8
  %707 = load i8, i8* %706, align 1
  %idxprom1291 = zext i8 %707 to i64
  %arrayidx1292 = getelementptr inbounds [256 x i8], [256 x i8]* @PL_uudmap, i32 0, i64 %idxprom1291
  %708 = load i8, i8* %arrayidx1292, align 1
  %conv1293 = sext i8 %708 to i32
  %and1294 = and i32 %conv1293, 63
  store i32 %and1294, i32* %a, align 4
  br label %if.end.1296

if.else.1295:                                     ; preds = %land.lhs.true.1285, %land.lhs.true.1281, %while.body.1278
  store i32 0, i32* %a, align 4
  br label %if.end.1296

if.end.1296:                                      ; preds = %if.else.1295, %if.then.1289
  %709 = load i8*, i8** %s.addr, align 8
  %710 = load i8*, i8** %strend.addr, align 8
  %cmp1297 = icmp ult i8* %709, %710
  br i1 %cmp1297, label %land.lhs.true.1299, label %if.else.1313

land.lhs.true.1299:                               ; preds = %if.end.1296
  %711 = load i8*, i8** %s.addr, align 8
  %712 = load i8, i8* %711, align 1
  %conv1300 = sext i8 %712 to i32
  %cmp1301 = icmp sge i32 %conv1300, 32
  br i1 %cmp1301, label %land.lhs.true.1303, label %if.else.1313

land.lhs.true.1303:                               ; preds = %land.lhs.true.1299
  %713 = load i8*, i8** %s.addr, align 8
  %714 = load i8, i8* %713, align 1
  %conv1304 = sext i8 %714 to i32
  %cmp1305 = icmp slt i32 %conv1304, 97
  br i1 %cmp1305, label %if.then.1307, label %if.else.1313

if.then.1307:                                     ; preds = %land.lhs.true.1303
  %715 = load i8*, i8** %s.addr, align 8
  %incdec.ptr1308 = getelementptr inbounds i8, i8* %715, i32 1
  store i8* %incdec.ptr1308, i8** %s.addr, align 8
  %716 = load i8, i8* %715, align 1
  %idxprom1309 = zext i8 %716 to i64
  %arrayidx1310 = getelementptr inbounds [256 x i8], [256 x i8]* @PL_uudmap, i32 0, i64 %idxprom1309
  %717 = load i8, i8* %arrayidx1310, align 1
  %conv1311 = sext i8 %717 to i32
  %and1312 = and i32 %conv1311, 63
  store i32 %and1312, i32* %b, align 4
  br label %if.end.1314

if.else.1313:                                     ; preds = %land.lhs.true.1303, %land.lhs.true.1299, %if.end.1296
  store i32 0, i32* %b, align 4
  br label %if.end.1314

if.end.1314:                                      ; preds = %if.else.1313, %if.then.1307
  %718 = load i8*, i8** %s.addr, align 8
  %719 = load i8*, i8** %strend.addr, align 8
  %cmp1315 = icmp ult i8* %718, %719
  br i1 %cmp1315, label %land.lhs.true.1317, label %if.else.1331

land.lhs.true.1317:                               ; preds = %if.end.1314
  %720 = load i8*, i8** %s.addr, align 8
  %721 = load i8, i8* %720, align 1
  %conv1318 = sext i8 %721 to i32
  %cmp1319 = icmp sge i32 %conv1318, 32
  br i1 %cmp1319, label %land.lhs.true.1321, label %if.else.1331

land.lhs.true.1321:                               ; preds = %land.lhs.true.1317
  %722 = load i8*, i8** %s.addr, align 8
  %723 = load i8, i8* %722, align 1
  %conv1322 = sext i8 %723 to i32
  %cmp1323 = icmp slt i32 %conv1322, 97
  br i1 %cmp1323, label %if.then.1325, label %if.else.1331

if.then.1325:                                     ; preds = %land.lhs.true.1321
  %724 = load i8*, i8** %s.addr, align 8
  %incdec.ptr1326 = getelementptr inbounds i8, i8* %724, i32 1
  store i8* %incdec.ptr1326, i8** %s.addr, align 8
  %725 = load i8, i8* %724, align 1
  %idxprom1327 = zext i8 %725 to i64
  %arrayidx1328 = getelementptr inbounds [256 x i8], [256 x i8]* @PL_uudmap, i32 0, i64 %idxprom1327
  %726 = load i8, i8* %arrayidx1328, align 1
  %conv1329 = sext i8 %726 to i32
  %and1330 = and i32 %conv1329, 63
  store i32 %and1330, i32* %c, align 4
  br label %if.end.1332

if.else.1331:                                     ; preds = %land.lhs.true.1321, %land.lhs.true.1317, %if.end.1314
  store i32 0, i32* %c, align 4
  br label %if.end.1332

if.end.1332:                                      ; preds = %if.else.1331, %if.then.1325
  %727 = load i8*, i8** %s.addr, align 8
  %728 = load i8*, i8** %strend.addr, align 8
  %cmp1333 = icmp ult i8* %727, %728
  br i1 %cmp1333, label %land.lhs.true.1335, label %if.else.1349

land.lhs.true.1335:                               ; preds = %if.end.1332
  %729 = load i8*, i8** %s.addr, align 8
  %730 = load i8, i8* %729, align 1
  %conv1336 = sext i8 %730 to i32
  %cmp1337 = icmp sge i32 %conv1336, 32
  br i1 %cmp1337, label %land.lhs.true.1339, label %if.else.1349

land.lhs.true.1339:                               ; preds = %land.lhs.true.1335
  %731 = load i8*, i8** %s.addr, align 8
  %732 = load i8, i8* %731, align 1
  %conv1340 = sext i8 %732 to i32
  %cmp1341 = icmp slt i32 %conv1340, 97
  br i1 %cmp1341, label %if.then.1343, label %if.else.1349

if.then.1343:                                     ; preds = %land.lhs.true.1339
  %733 = load i8*, i8** %s.addr, align 8
  %incdec.ptr1344 = getelementptr inbounds i8, i8* %733, i32 1
  store i8* %incdec.ptr1344, i8** %s.addr, align 8
  %734 = load i8, i8* %733, align 1
  %idxprom1345 = zext i8 %734 to i64
  %arrayidx1346 = getelementptr inbounds [256 x i8], [256 x i8]* @PL_uudmap, i32 0, i64 %idxprom1345
  %735 = load i8, i8* %arrayidx1346, align 1
  %conv1347 = sext i8 %735 to i32
  %and1348 = and i32 %conv1347, 63
  store i32 %and1348, i32* %d, align 4
  br label %if.end.1350

if.else.1349:                                     ; preds = %land.lhs.true.1339, %land.lhs.true.1335, %if.end.1332
  store i32 0, i32* %d, align 4
  br label %if.end.1350

if.end.1350:                                      ; preds = %if.else.1349, %if.then.1343
  %736 = load i32, i32* %a, align 4
  %shl1351 = shl i32 %736, 2
  %737 = load i32, i32* %b, align 4
  %shr1352 = ashr i32 %737, 4
  %or1353 = or i32 %shl1351, %shr1352
  %conv1354 = trunc i32 %or1353 to i8
  %arrayidx1355 = getelementptr inbounds [4 x i8], [4 x i8]* %hunk, i32 0, i64 0
  store i8 %conv1354, i8* %arrayidx1355, align 1
  %738 = load i32, i32* %b, align 4
  %shl1356 = shl i32 %738, 4
  %739 = load i32, i32* %c, align 4
  %shr1357 = ashr i32 %739, 2
  %or1358 = or i32 %shl1356, %shr1357
  %conv1359 = trunc i32 %or1358 to i8
  %arrayidx1360 = getelementptr inbounds [4 x i8], [4 x i8]* %hunk, i32 0, i64 1
  store i8 %conv1359, i8* %arrayidx1360, align 1
  %740 = load i32, i32* %c, align 4
  %shl1361 = shl i32 %740, 6
  %741 = load i32, i32* %d, align 4
  %or1362 = or i32 %shl1361, %741
  %conv1363 = trunc i32 %or1362 to i8
  %arrayidx1364 = getelementptr inbounds [4 x i8], [4 x i8]* %hunk, i32 0, i64 2
  store i8 %conv1363, i8* %arrayidx1364, align 1
  %742 = load %struct.sv*, %struct.sv** %sv, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %hunk, i32 0, i32 0
  %743 = load i32, i32* %len, align 4
  %cmp1365 = icmp sgt i32 %743, 3
  br i1 %cmp1365, label %cond.true.1367, label %cond.false.1368

cond.true.1367:                                   ; preds = %if.end.1350
  br label %cond.end.1369

cond.false.1368:                                  ; preds = %if.end.1350
  %744 = load i32, i32* %len, align 4
  br label %cond.end.1369

cond.end.1369:                                    ; preds = %cond.false.1368, %cond.true.1367
  %cond1370 = phi i32 [ 3, %cond.true.1367 ], [ %744, %cond.false.1368 ]
  %conv1371 = sext i32 %cond1370 to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %742, i8* %arraydecay, i64 %conv1371, i32 2)
  %745 = load i32, i32* %len, align 4
  %sub1372 = sub nsw i32 %745, 3
  store i32 %sub1372, i32* %len, align 4
  br label %while.cond.1275

while.end.1373:                                   ; preds = %while.cond.1275
  %746 = load i8*, i8** %s.addr, align 8
  %747 = load i8, i8* %746, align 1
  %conv1374 = sext i8 %747 to i32
  %cmp1375 = icmp eq i32 %conv1374, 10
  br i1 %cmp1375, label %if.then.1377, label %if.else.1379

if.then.1377:                                     ; preds = %while.end.1373
  %748 = load i8*, i8** %s.addr, align 8
  %incdec.ptr1378 = getelementptr inbounds i8, i8* %748, i32 1
  store i8* %incdec.ptr1378, i8** %s.addr, align 8
  br label %if.end.1391

if.else.1379:                                     ; preds = %while.end.1373
  %749 = load i8*, i8** %s.addr, align 8
  %add.ptr1380 = getelementptr inbounds i8, i8* %749, i64 1
  %750 = load i8*, i8** %strend.addr, align 8
  %cmp1381 = icmp ult i8* %add.ptr1380, %750
  br i1 %cmp1381, label %land.lhs.true.1383, label %if.end.1390

land.lhs.true.1383:                               ; preds = %if.else.1379
  %751 = load i8*, i8** %s.addr, align 8
  %arrayidx1384 = getelementptr inbounds i8, i8* %751, i64 1
  %752 = load i8, i8* %arrayidx1384, align 1
  %conv1385 = sext i8 %752 to i32
  %cmp1386 = icmp eq i32 %conv1385, 10
  br i1 %cmp1386, label %if.then.1388, label %if.end.1390

if.then.1388:                                     ; preds = %land.lhs.true.1383
  %753 = load i8*, i8** %s.addr, align 8
  %add.ptr1389 = getelementptr inbounds i8, i8* %753, i64 2
  store i8* %add.ptr1389, i8** %s.addr, align 8
  br label %if.end.1390

if.end.1390:                                      ; preds = %if.then.1388, %land.lhs.true.1383, %if.else.1379
  br label %if.end.1391

if.end.1391:                                      ; preds = %if.end.1390, %if.then.1377
  br label %while.cond.1246

while.end.1392:                                   ; preds = %land.end.1262
  %754 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %755 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast1393 = ptrtoint %struct.sv** %754 to i64
  %sub.ptr.rhs.cast1394 = ptrtoint %struct.sv** %755 to i64
  %sub.ptr.sub1395 = sub i64 %sub.ptr.lhs.cast1393, %sub.ptr.rhs.cast1394
  %sub.ptr.div1396 = sdiv exact i64 %sub.ptr.sub1395, 8
  %cmp1397 = icmp slt i64 %sub.ptr.div1396, 1
  br i1 %cmp1397, label %if.then.1399, label %if.end.1401

if.then.1399:                                     ; preds = %while.end.1392
  %756 = load %struct.sv**, %struct.sv*** %sp, align 8
  %757 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call1400 = call %struct.sv** @Perl_stack_grow(%struct.sv** %756, %struct.sv** %757, i32 1)
  store %struct.sv** %call1400, %struct.sv*** %sp, align 8
  br label %if.end.1401

if.end.1401:                                      ; preds = %if.then.1399, %while.end.1392
  %758 = load %struct.sv*, %struct.sv** %sv, align 8
  %call1403 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %758)
  %759 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1404 = getelementptr inbounds %struct.sv*, %struct.sv** %759, i32 1
  store %struct.sv** %incdec.ptr1404, %struct.sv*** %sp, align 8
  store %struct.sv* %call1403, %struct.sv** %incdec.ptr1404, align 8
  store %struct.sv* %call1403, %struct.sv** %tmp1402
  %760 = load %struct.sv*, %struct.sv** %tmp1402
  br label %sw.epilog.1405

sw.epilog.1405:                                   ; preds = %if.end.1401, %while.end.1214, %while.end.1198, %while.end.1182, %while.end.1164, %while.end.1133, %if.end.1095, %if.then.1092, %if.end.1071, %while.end.992, %while.end.981, %while.end.942, %while.end.919, %while.end.894, %while.end.871, %while.end.848, %while.end.825, %while.end.800, %while.end.775, %while.end.740, %while.end.715, %if.end.645, %if.end.636, %if.end.600, %while.end.591, %if.end.557, %if.end.472, %if.end.407, %if.end.279, %sw.bb.179, %if.end.176, %if.end.150, %if.end.132, %while.end
  %761 = load i32, i32* %checksum, align 4
  %tobool1406 = icmp ne i32 %761, 0
  br i1 %tobool1406, label %if.then.1407, label %if.end.1463

if.then.1407:                                     ; preds = %sw.epilog.1405
  %762 = load i32, i32* %datumtype, align 4
  %and1408 = and i32 %762, 255
  %call1409 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %and1408)
  %tobool1410 = icmp ne i8* %call1409, null
  br i1 %tobool1410, label %if.then.1418, label %lor.lhs.false.1411

lor.lhs.false.1411:                               ; preds = %if.then.1407
  %763 = load i32, i32* %checksum, align 4
  %cmp1412 = icmp sgt i32 %763, 64
  br i1 %cmp1412, label %land.lhs.true.1414, label %if.else.1440

land.lhs.true.1414:                               ; preds = %lor.lhs.false.1411
  %764 = load i32, i32* %datumtype, align 4
  %and1415 = and i32 %764, 255
  %call1416 = call i8* @strchr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 %and1415)
  %tobool1417 = icmp ne i8* %call1416, null
  br i1 %tobool1417, label %if.then.1418, label %if.else.1440

if.then.1418:                                     ; preds = %land.lhs.true.1414, %if.then.1407
  %765 = load i32, i32* %checksum, align 4
  %and1420 = and i32 %765, 15
  %shl1421 = shl i32 1, %and1420
  %conv1422 = sitofp i32 %shl1421 to double
  store double %conv1422, double* %adouble, align 8
  br label %while.cond.1423

while.cond.1423:                                  ; preds = %while.body.1426, %if.then.1418
  %766 = load i32, i32* %checksum, align 4
  %cmp1424 = icmp sge i32 %766, 16
  br i1 %cmp1424, label %while.body.1426, label %while.end.1429

while.body.1426:                                  ; preds = %while.cond.1423
  %767 = load i32, i32* %checksum, align 4
  %sub1427 = sub nsw i32 %767, 16
  store i32 %sub1427, i32* %checksum, align 4
  %768 = load double, double* %adouble, align 8
  %mul1428 = fmul double %768, 6.553600e+04
  store double %mul1428, double* %adouble, align 8
  br label %while.cond.1423

while.end.1429:                                   ; preds = %while.cond.1423
  br label %while.cond.1430

while.cond.1430:                                  ; preds = %while.body.1433, %while.end.1429
  %769 = load double, double* %cdouble, align 8
  %cmp1431 = fcmp olt double %769, 0.000000e+00
  br i1 %cmp1431, label %while.body.1433, label %while.end.1435

while.body.1433:                                  ; preds = %while.cond.1430
  %770 = load double, double* %adouble, align 8
  %771 = load double, double* %cdouble, align 8
  %add1434 = fadd double %771, %770
  store double %add1434, double* %cdouble, align 8
  br label %while.cond.1430

while.end.1435:                                   ; preds = %while.cond.1430
  %772 = load double, double* %cdouble, align 8
  %773 = load double, double* %adouble, align 8
  %div1436 = fdiv double %772, %773
  %call1437 = call double @modf(double %div1436, double* %trouble) #1
  %774 = load double, double* %adouble, align 8
  %mul1438 = fmul double %call1437, %774
  store double %mul1438, double* %cdouble, align 8
  %775 = load double, double* %cdouble, align 8
  %call1439 = call %struct.sv* @Perl_newSVnv(double %775)
  store %struct.sv* %call1439, %struct.sv** %sv, align 8
  br label %if.end.1450

if.else.1440:                                     ; preds = %land.lhs.true.1414, %lor.lhs.false.1411
  %776 = load i32, i32* %checksum, align 4
  %cmp1441 = icmp slt i32 %776, 64
  br i1 %cmp1441, label %if.then.1443, label %if.end.1448

if.then.1443:                                     ; preds = %if.else.1440
  %777 = load i32, i32* %checksum, align 4
  %sh_prom = zext i32 %777 to i64
  %shl1445 = shl i64 1, %sh_prom
  %sub1446 = sub i64 %shl1445, 1
  store i64 %sub1446, i64* %mask, align 8
  %778 = load i64, i64* %mask, align 8
  %779 = load i64, i64* %cuv, align 8
  %and1447 = and i64 %779, %778
  store i64 %and1447, i64* %cuv, align 8
  br label %if.end.1448

if.end.1448:                                      ; preds = %if.then.1443, %if.else.1440
  %780 = load i64, i64* %cuv, align 8
  %call1449 = call %struct.sv* @Perl_newSVuv(i64 %780)
  store %struct.sv* %call1449, %struct.sv** %sv, align 8
  br label %if.end.1450

if.end.1450:                                      ; preds = %if.end.1448, %while.end.1435
  %781 = load %struct.sv**, %struct.sv*** @PL_stack_max, align 8
  %782 = load %struct.sv**, %struct.sv*** %sp, align 8
  %sub.ptr.lhs.cast1451 = ptrtoint %struct.sv** %781 to i64
  %sub.ptr.rhs.cast1452 = ptrtoint %struct.sv** %782 to i64
  %sub.ptr.sub1453 = sub i64 %sub.ptr.lhs.cast1451, %sub.ptr.rhs.cast1452
  %sub.ptr.div1454 = sdiv exact i64 %sub.ptr.sub1453, 8
  %cmp1455 = icmp slt i64 %sub.ptr.div1454, 1
  br i1 %cmp1455, label %if.then.1457, label %if.end.1459

if.then.1457:                                     ; preds = %if.end.1450
  %783 = load %struct.sv**, %struct.sv*** %sp, align 8
  %784 = load %struct.sv**, %struct.sv*** %sp, align 8
  %call1458 = call %struct.sv** @Perl_stack_grow(%struct.sv** %783, %struct.sv** %784, i32 1)
  store %struct.sv** %call1458, %struct.sv*** %sp, align 8
  br label %if.end.1459

if.end.1459:                                      ; preds = %if.then.1457, %if.end.1450
  %785 = load %struct.sv*, %struct.sv** %sv, align 8
  %call1461 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %785)
  %786 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1462 = getelementptr inbounds %struct.sv*, %struct.sv** %786, i32 1
  store %struct.sv** %incdec.ptr1462, %struct.sv*** %sp, align 8
  store %struct.sv* %call1461, %struct.sv** %incdec.ptr1462, align 8
  store %struct.sv* %call1461, %struct.sv** %tmp1460
  %787 = load %struct.sv*, %struct.sv** %tmp1460
  store i32 0, i32* %checksum, align 4
  br label %if.end.1463

if.end.1463:                                      ; preds = %if.end.1459, %sw.epilog.1405
  %788 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags1464 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %788, i32 0, i32 8
  %789 = load i32, i32* %flags1464, align 4
  %and1465 = and i32 %789, 4
  %tobool1466 = icmp ne i32 %and1465, 0
  br i1 %tobool1466, label %if.then.1467, label %if.end.1508

if.then.1467:                                     ; preds = %if.end.1463
  %790 = load %struct.sv**, %struct.sv*** %sp, align 8
  %791 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast1468 = ptrtoint %struct.sv** %790 to i64
  %sub.ptr.rhs.cast1469 = ptrtoint %struct.sv** %791 to i64
  %sub.ptr.sub1470 = sub i64 %sub.ptr.lhs.cast1468, %sub.ptr.rhs.cast1469
  %sub.ptr.div1471 = sdiv exact i64 %sub.ptr.sub1470, 8
  %792 = load i32, i32* %start_sp_offset, align 4
  %conv1472 = sext i32 %792 to i64
  %sub1473 = sub nsw i64 %sub.ptr.div1471, %conv1472
  %cmp1474 = icmp sle i64 %sub1473, 0
  br i1 %cmp1474, label %if.then.1476, label %if.end.1477

if.then.1476:                                     ; preds = %if.then.1467
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.1477

if.end.1477:                                      ; preds = %if.then.1476, %if.then.1467
  %793 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %call1478 = call signext i8 @S_next_symbol(%struct.tempsym_t* %793)
  %tobool1479 = icmp ne i8 %call1478, 0
  br i1 %tobool1479, label %if.then.1480, label %if.else.1505

if.then.1480:                                     ; preds = %if.end.1477
  %794 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %howlen1481 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %794, i32 0, i32 6
  %795 = load i32, i32* %howlen1481, align 4
  %cmp1482 = icmp eq i32 %795, 1
  br i1 %cmp1482, label %if.then.1484, label %if.end.1485

if.then.1484:                                     ; preds = %if.then.1480
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.1485

if.end.1485:                                      ; preds = %if.then.1484, %if.then.1480
  %796 = load i8, i8* %beyond, align 1
  %tobool1486 = icmp ne i8 %796, 0
  br i1 %tobool1486, label %if.then.1487, label %if.else.1488

if.then.1487:                                     ; preds = %if.end.1485
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.1504

if.else.1488:                                     ; preds = %if.end.1485
  %797 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1489 = getelementptr inbounds %struct.sv*, %struct.sv** %797, i32 -1
  store %struct.sv** %incdec.ptr1489, %struct.sv*** %sp, align 8
  %798 = load %struct.sv*, %struct.sv** %797, align 8
  store %struct.sv* %798, %struct.sv** @PL_Sv, align 8
  %799 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags1490 = getelementptr inbounds %struct.sv, %struct.sv* %799, i32 0, i32 2
  %800 = load i32, i32* %sv_flags1490, align 4
  %and1491 = and i32 %800, 65536
  %tobool1492 = icmp ne i32 %and1491, 0
  br i1 %tobool1492, label %cond.true.1493, label %cond.false.1495

cond.true.1493:                                   ; preds = %if.else.1488
  %801 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any1494 = getelementptr inbounds %struct.sv, %struct.sv* %801, i32 0, i32 0
  %802 = load i8*, i8** %sv_any1494, align 8
  %803 = bitcast i8* %802 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %803, i32 0, i32 3
  %804 = load i64, i64* %xiv_iv, align 8
  br label %cond.end.1497

cond.false.1495:                                  ; preds = %if.else.1488
  %805 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call1496 = call i64 @Perl_sv_2iv(%struct.sv* %805)
  br label %cond.end.1497

cond.end.1497:                                    ; preds = %cond.false.1495, %cond.true.1493
  %cond1498 = phi i64 [ %804, %cond.true.1493 ], [ %call1496, %cond.false.1495 ]
  %conv1499 = trunc i64 %cond1498 to i32
  store i32 %conv1499, i32* %len, align 4
  %806 = load i32, i32* %len, align 4
  %cmp1500 = icmp slt i32 %806, 0
  br i1 %cmp1500, label %if.then.1502, label %if.end.1503

if.then.1502:                                     ; preds = %cond.end.1497
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.1503

if.end.1503:                                      ; preds = %if.then.1502, %cond.end.1497
  br label %if.end.1504

if.end.1504:                                      ; preds = %if.end.1503, %if.then.1487
  br label %if.end.1506

if.else.1505:                                     ; preds = %if.end.1477
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.1506

if.end.1506:                                      ; preds = %if.else.1505, %if.end.1504
  %807 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %code1507 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %807, i32 0, i32 4
  %808 = load i32, i32* %code1507, align 4
  store i32 %808, i32* %datumtype, align 4
  store i8 0, i8* %explicit_length, align 1
  br label %redo_switch

if.end.1508:                                      ; preds = %if.end.1463
  br label %while.cond

while.end.1509:                                   ; preds = %if.then, %while.cond
  %809 = load i8**, i8*** %new_s.addr, align 8
  %tobool1510 = icmp ne i8** %809, null
  br i1 %tobool1510, label %if.then.1511, label %if.end.1512

if.then.1511:                                     ; preds = %while.end.1509
  %810 = load i8*, i8** %s.addr, align 8
  %811 = load i8**, i8*** %new_s.addr, align 8
  store i8* %810, i8** %811, align 8
  br label %if.end.1512

if.end.1512:                                      ; preds = %if.then.1511, %while.end.1509
  %812 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %812, %struct.sv*** @PL_stack_sp, align 8
  %813 = load %struct.sv**, %struct.sv*** %sp, align 8
  %814 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %sub.ptr.lhs.cast1513 = ptrtoint %struct.sv** %813 to i64
  %sub.ptr.rhs.cast1514 = ptrtoint %struct.sv** %814 to i64
  %sub.ptr.sub1515 = sub i64 %sub.ptr.lhs.cast1513, %sub.ptr.rhs.cast1514
  %sub.ptr.div1516 = sdiv exact i64 %sub.ptr.sub1515, 8
  %815 = load i32, i32* %start_sp_offset, align 4
  %conv1517 = sext i32 %815 to i64
  %sub1518 = sub nsw i64 %sub.ptr.div1516, %conv1517
  %conv1519 = trunc i64 %sub1518 to i32
  ret i32 %conv1519
}

; Function Attrs: nounwind uwtable
define i32 @Perl_unpackstring(i8* %pat, i8* %patend, i8* %s, i8* %strend, i32 %flags) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %patend.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %strend.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %sym = alloca %struct.tempsym_t, align 8
  store i8* %pat, i8** %pat.addr, align 8
  store i8* %patend, i8** %patend.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %strend, i8** %strend.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = bitcast %struct.tempsym_t* %sym to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 8, i1 false)
  %1 = load i8*, i8** %pat.addr, align 8
  %patptr = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %sym, i32 0, i32 0
  store i8* %1, i8** %patptr, align 8
  %2 = load i8*, i8** %patend.addr, align 8
  %patend1 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %sym, i32 0, i32 1
  store i8* %2, i8** %patend1, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %flags2 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %sym, i32 0, i32 8
  store i32 %3, i32* %flags2, align 4
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8*, i8** %strend.addr, align 8
  %call = call i32 @S_unpack_rec(%struct.tempsym_t* %sym, i8* %4, i8* %5, i8* %6, i8** null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_unpack() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %right = alloca %struct.sv*, align 8
  %left = alloca %struct.sv*, align 8
  %gimme = alloca i32, align 4
  %llen = alloca i64, align 8
  %rlen = alloca i64, align 8
  %pat = alloca i8*, align 8
  %s = alloca i8*, align 8
  %strend = alloca i8*, align 8
  %patend = alloca i8*, align 8
  %cnt = alloca i32, align 4
  %0 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %0, %struct.sv*** %sp, align 8
  %1 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %1, i32 -1
  store %struct.sv** %incdec.ptr, %struct.sv*** %sp, align 8
  %2 = load %struct.sv*, %struct.sv** %1, align 8
  store %struct.sv* %2, %struct.sv** %right, align 8
  %3 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.sv*, %struct.sv** %3, i32 -1
  store %struct.sv** %incdec.ptr1, %struct.sv*** %sp, align 8
  %4 = load %struct.sv*, %struct.sv** %3, align 8
  store %struct.sv* %4, %struct.sv** %left, align 8
  %5 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 6
  %6 = load i8, i8* %op_flags, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 3
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.19

cond.false:                                       ; preds = %entry
  %7 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags3 = getelementptr inbounds %struct.op, %struct.op* %7, i32 0, i32 6
  %8 = load i8, i8* %op_flags3, align 1
  %conv4 = zext i8 %8 to i32
  %and5 = and i32 %conv4, 3
  %cmp6 = icmp eq i32 %and5, 2
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.false
  br label %cond.end.17

cond.false.9:                                     ; preds = %cond.false
  %9 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_flags10 = getelementptr inbounds %struct.op, %struct.op* %9, i32 0, i32 6
  %10 = load i8, i8* %op_flags10, align 1
  %conv11 = zext i8 %10 to i32
  %and12 = and i32 %conv11, 3
  %cmp13 = icmp eq i32 %and12, 3
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false.9
  br label %cond.end

cond.false.16:                                    ; preds = %cond.false.9
  %call = call i32 @Perl_block_gimme()
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond = phi i32 [ 1, %cond.true.15 ], [ %call, %cond.false.16 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end, %cond.true.8
  %cond18 = phi i32 [ 0, %cond.true.8 ], [ %cond, %cond.end ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end.17, %cond.true
  %cond20 = phi i32 [ 128, %cond.true ], [ %cond18, %cond.end.17 ]
  store i32 %cond20, i32* %gimme, align 4
  %11 = load %struct.sv*, %struct.sv** %left, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 2
  %12 = load i32, i32* %sv_flags, align 4
  %and21 = and i32 %12, 262144
  %cmp22 = icmp eq i32 %and21, 262144
  br i1 %cmp22, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.end.19
  %13 = load %struct.sv*, %struct.sv** %left, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 0
  %14 = load i8*, i8** %sv_any, align 8
  %15 = bitcast i8* %14 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %15, i32 0, i32 1
  %16 = load i64, i64* %xpv_cur, align 8
  store i64 %16, i64* %llen, align 8
  %17 = load %struct.sv*, %struct.sv** %left, align 8
  %sv_any25 = getelementptr inbounds %struct.sv, %struct.sv* %17, i32 0, i32 0
  %18 = load i8*, i8** %sv_any25, align 8
  %19 = bitcast i8* %18 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %19, i32 0, i32 0
  %20 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end.28

cond.false.26:                                    ; preds = %cond.end.19
  %21 = load %struct.sv*, %struct.sv** %left, align 8
  %call27 = call i8* @Perl_sv_2pv_flags(%struct.sv* %21, i64* %llen, i32 2)
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.24
  %cond29 = phi i8* [ %20, %cond.true.24 ], [ %call27, %cond.false.26 ]
  store i8* %cond29, i8** %pat, align 8
  %22 = load %struct.sv*, %struct.sv** %right, align 8
  %sv_flags30 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 2
  %23 = load i32, i32* %sv_flags30, align 4
  %and31 = and i32 %23, 262144
  %cmp32 = icmp eq i32 %and31, 262144
  br i1 %cmp32, label %cond.true.34, label %cond.false.39

cond.true.34:                                     ; preds = %cond.end.28
  %24 = load %struct.sv*, %struct.sv** %right, align 8
  %sv_any35 = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 0
  %25 = load i8*, i8** %sv_any35, align 8
  %26 = bitcast i8* %25 to %struct.xpv*
  %xpv_cur36 = getelementptr inbounds %struct.xpv, %struct.xpv* %26, i32 0, i32 1
  %27 = load i64, i64* %xpv_cur36, align 8
  store i64 %27, i64* %rlen, align 8
  %28 = load %struct.sv*, %struct.sv** %right, align 8
  %sv_any37 = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 0
  %29 = load i8*, i8** %sv_any37, align 8
  %30 = bitcast i8* %29 to %struct.xpv*
  %xpv_pv38 = getelementptr inbounds %struct.xpv, %struct.xpv* %30, i32 0, i32 0
  %31 = load i8*, i8** %xpv_pv38, align 8
  br label %cond.end.41

cond.false.39:                                    ; preds = %cond.end.28
  %32 = load %struct.sv*, %struct.sv** %right, align 8
  %call40 = call i8* @Perl_sv_2pv_flags(%struct.sv* %32, i64* %rlen, i32 2)
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.34
  %cond42 = phi i8* [ %31, %cond.true.34 ], [ %call40, %cond.false.39 ]
  store i8* %cond42, i8** %s, align 8
  %33 = load i8*, i8** %s, align 8
  %34 = load i64, i64* %rlen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %add.ptr, i8** %strend, align 8
  %35 = load i8*, i8** %pat, align 8
  %36 = load i64, i64* %llen, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %add.ptr43, i8** %patend, align 8
  %37 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %37, %struct.sv*** @PL_stack_sp, align 8
  %38 = load i8*, i8** %pat, align 8
  %39 = load i8*, i8** %patend, align 8
  %40 = load i8*, i8** %s, align 8
  %41 = load i8*, i8** %strend, align 8
  %42 = load i32, i32* %gimme, align 4
  %cmp44 = icmp eq i32 %42, 0
  %cond46 = select i1 %cmp44, i32 16, i32 0
  %43 = load %struct.sv*, %struct.sv** %right, align 8
  %sv_flags47 = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 2
  %44 = load i32, i32* %sv_flags47, align 4
  %and48 = and i32 %44, 536870912
  %tobool = icmp ne i32 %and48, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.41
  %45 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %op_private = getelementptr inbounds %struct.cop, %struct.cop* %45, i32 0, i32 7
  %46 = load i8, i8* %op_private, align 1
  %conv49 = zext i8 %46 to i32
  %and50 = and i32 %conv49, 8
  %tobool51 = icmp ne i32 %and50, 0
  %lnot = xor i1 %tobool51, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.41
  %47 = phi i1 [ false, %cond.end.41 ], [ %lnot, %land.rhs ]
  %cond52 = select i1 %47, i32 8, i32 0
  %or = or i32 %cond46, %cond52
  %call53 = call i32 @Perl_unpackstring(i8* %38, i8* %39, i8* %40, i8* %41, i32 %or)
  store i32 %call53, i32* %cnt, align 4
  %48 = load %struct.sv**, %struct.sv*** @PL_stack_sp, align 8
  store %struct.sv** %48, %struct.sv*** %sp, align 8
  %49 = load i32, i32* %cnt, align 4
  %tobool54 = icmp ne i32 %49, 0
  br i1 %tobool54, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.end
  %50 = load i32, i32* %gimme, align 4
  %cmp55 = icmp eq i32 %50, 0
  br i1 %cmp55, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %51 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr57 = getelementptr inbounds %struct.sv*, %struct.sv** %51, i32 1
  store %struct.sv** %incdec.ptr57, %struct.sv*** %sp, align 8
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr57, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %land.end
  %52 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %52, %struct.sv*** @PL_stack_sp, align 8
  %53 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %53, i32 0, i32 0
  %54 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %54
}

declare i32 @Perl_block_gimme() #2

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #2

; Function Attrs: nounwind uwtable
define void @Perl_pack_cat(%struct.sv* %cat, i8* %pat, i8* %patend, %struct.sv** %beglist, %struct.sv** %endlist, %struct.sv*** %next_in_list, i32 %flags) #0 {
entry:
  %cat.addr = alloca %struct.sv*, align 8
  %pat.addr = alloca i8*, align 8
  %patend.addr = alloca i8*, align 8
  %beglist.addr = alloca %struct.sv**, align 8
  %endlist.addr = alloca %struct.sv**, align 8
  %next_in_list.addr = alloca %struct.sv***, align 8
  %flags.addr = alloca i32, align 4
  %sym = alloca %struct.tempsym_t, align 8
  store %struct.sv* %cat, %struct.sv** %cat.addr, align 8
  store i8* %pat, i8** %pat.addr, align 8
  store i8* %patend, i8** %patend.addr, align 8
  store %struct.sv** %beglist, %struct.sv*** %beglist.addr, align 8
  store %struct.sv** %endlist, %struct.sv*** %endlist.addr, align 8
  store %struct.sv*** %next_in_list, %struct.sv**** %next_in_list.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = bitcast %struct.tempsym_t* %sym to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 8, i1 false)
  %1 = load i8*, i8** %pat.addr, align 8
  %patptr = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %sym, i32 0, i32 0
  store i8* %1, i8** %patptr, align 8
  %2 = load i8*, i8** %patend.addr, align 8
  %patend1 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %sym, i32 0, i32 1
  store i8* %2, i8** %patend1, align 8
  %flags2 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %sym, i32 0, i32 8
  store i32 1, i32* %flags2, align 4
  %3 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %4 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %5 = load %struct.sv**, %struct.sv*** %endlist.addr, align 8
  %call = call %struct.sv** @S_pack_rec(%struct.sv* %3, %struct.tempsym_t* %sym, %struct.sv** %4, %struct.sv** %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.sv** @S_pack_rec(%struct.sv* %cat, %struct.tempsym_t* %symptr, %struct.sv** %beglist, %struct.sv** %endlist) #0 {
entry:
  %cat.addr = alloca %struct.sv*, align 8
  %symptr.addr = alloca %struct.tempsym_t*, align 8
  %beglist.addr = alloca %struct.sv**, align 8
  %endlist.addr = alloca %struct.sv**, align 8
  %items = alloca i32, align 4
  %fromlen = alloca i64, align 8
  %len = alloca i32, align 4
  %fromstr = alloca %struct.sv*, align 8
  %found = alloca i8, align 1
  %achar = alloca i8, align 1
  %ai16 = alloca i16, align 2
  %au16 = alloca i16, align 2
  %ai32 = alloca i32, align 4
  %au32 = alloca i32, align 4
  %aquad = alloca i64, align 8
  %auquad = alloca i64, align 8
  %aint = alloca i32, align 4
  %auint = alloca i32, align 4
  %along = alloca i64, align 8
  %aulong = alloca i64, align 8
  %aptr = alloca i8*, align 8
  %afloat = alloca float, align 4
  %adouble = alloca double, align 8
  %aiv = alloca i64, align 8
  %auv = alloca i64, align 8
  %anv = alloca double, align 8
  %strrelbeg = alloca i32, align 4
  %lookahead = alloca %struct.tempsym_t, align 8
  %lengthcode = alloca %struct.sv*, align 8
  %datumtype = alloca i32, align 4
  %howlen = alloca i32, align 4
  %savsym = alloca %struct.tempsym_t, align 8
  %group_modifiers = alloca i32, align 4
  %str = alloca i8*, align 8
  %saveitems = alloca i32, align 4
  %str345 = alloca i8*, align 8
  %saveitems346 = alloca i32, align 4
  %tmp = alloca i64, align 8
  %buf = alloca [10 x i8], align 1
  %in = alloca i8*, align 8
  %auv1088 = alloca i64, align 8
  %from = alloca i8*, align 8
  %result = alloca i8*, align 8
  %in1122 = alloca i8*, align 8
  %norm = alloca %struct.sv*, align 8
  %len1125 = alloca i64, align 8
  %done = alloca i8, align 1
  %buf1170 = alloca [155 x i8], align 16
  %in1172 = alloca i8*, align 8
  %next = alloca double, align 8
  %from1207 = alloca i8*, align 8
  %result1209 = alloca i8*, align 8
  %in1211 = alloca i8*, align 8
  %norm1213 = alloca %struct.sv*, align 8
  %len1215 = alloca i64, align 8
  %done1217 = alloca i8, align 1
  %n_a = alloca i64, align 8
  %todo = alloca i32, align 4
  store %struct.sv* %cat, %struct.sv** %cat.addr, align 8
  store %struct.tempsym_t* %symptr, %struct.tempsym_t** %symptr.addr, align 8
  store %struct.sv** %beglist, %struct.sv*** %beglist.addr, align 8
  store %struct.sv** %endlist, %struct.sv*** %endlist.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 0
  %1 = load i8*, i8** %sv_any, align 8
  %2 = bitcast i8* %1 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %2, i32 0, i32 1
  %3 = load i64, i64* %xpv_cur, align 8
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %strrelbeg, align 4
  %4 = load %struct.sv**, %struct.sv*** %endlist.addr, align 8
  %5 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv1 = trunc i64 %sub.ptr.div to i32
  store i32 %conv1, i32* %items, align 4
  %6 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %call = call signext i8 @S_next_symbol(%struct.tempsym_t* %6)
  store i8 %call, i8* %found, align 1
  %7 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %level = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %7, i32 0, i32 7
  %8 = load i32, i32* %level, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load i8, i8* %found, align 1
  %conv3 = sext i8 %9 to i32
  %tobool = icmp ne i32 %conv3, 0
  br i1 %tobool, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %10 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %code = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %10, i32 0, i32 4
  %11 = load i32, i32* %code, align 4
  %cmp5 = icmp eq i32 %11, 85
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  %12 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 2
  %13 = load i32, i32* %sv_flags, align 4
  %or = or i32 %13, 536870912
  store i32 %or, i32* %sv_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.1719, %if.end
  %14 = load i8, i8* %found, align 1
  %tobool7 = icmp ne i8 %14, 0
  br i1 %tobool7, label %while.body, label %while.end.1720

while.body:                                       ; preds = %while.cond
  store %struct.sv* null, %struct.sv** %lengthcode, align 8
  %15 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %code8 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %15, i32 0, i32 4
  %16 = load i32, i32* %code8, align 4
  store i32 %16, i32* %datumtype, align 4
  %17 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %howlen9 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %17, i32 0, i32 6
  %18 = load i32, i32* %howlen9, align 4
  store i32 %18, i32* %howlen, align 4
  switch i32 %18, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  %19 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %length = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %19, i32 0, i32 5
  %20 = load i32, i32* %length, align 4
  store i32 %20, i32* %len, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %while.body
  %21 = load i32, i32* %datumtype, align 4
  %and = and i32 %21, 255
  %call11 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 %and)
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.10
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.10
  %22 = load i32, i32* %items, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %22, %cond.false ]
  store i32 %cond, i32* %len, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %cond.end, %sw.bb
  %23 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %24 = bitcast %struct.tempsym_t* %lookahead to i8*
  %25 = bitcast %struct.tempsym_t* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 56, i32 8, i1 false)
  %call13 = call signext i8 @S_next_symbol(%struct.tempsym_t* %lookahead)
  store i8 %call13, i8* %found, align 1
  %26 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %26, i32 0, i32 8
  %27 = load i32, i32* %flags, align 4
  %and14 = and i32 %27, 4
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.43

if.then.16:                                       ; preds = %sw.epilog
  %28 = load i8, i8* %found, align 1
  %tobool17 = icmp ne i8 %28, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.16
  %code19 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %lookahead, i32 0, i32 4
  %29 = load i32, i32* %code19, align 4
  %call20 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 %29)
  %cmp21 = icmp eq i8* null, %call20
  br i1 %cmp21, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.18
  %howlen23 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %lookahead, i32 0, i32 6
  %30 = load i32, i32* %howlen23, align 4
  %cmp24 = icmp ne i32 2, %30
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false, %if.then.18
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %lor.lhs.false
  %31 = load i32, i32* %items, align 4
  %cmp28 = icmp sgt i32 %31, 0
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %if.end.27
  %32 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %33 = load %struct.sv*, %struct.sv** %32, align 8
  br label %cond.end.32

cond.false.31:                                    ; preds = %if.end.27
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi %struct.sv* [ %33, %cond.true.30 ], [ @PL_sv_no, %cond.false.31 ]
  %call34 = call i64 @Perl_sv_len(%struct.sv* %cond33)
  %code35 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %lookahead, i32 0, i32 4
  %34 = load i32, i32* %code35, align 4
  %cmp36 = icmp eq i32 %34, 90
  %cond38 = select i1 %cmp36, i32 1, i32 0
  %conv39 = sext i32 %cond38 to i64
  %add = add i64 %call34, %conv39
  %call40 = call %struct.sv* @Perl_newSViv(i64 %add)
  %call41 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call40)
  store %struct.sv* %call41, %struct.sv** %lengthcode, align 8
  br label %if.end.42

if.else:                                          ; preds = %if.then.16
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %cond.end.32
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %sw.epilog
  %35 = load i32, i32* %datumtype, align 4
  switch i32 %35, label %sw.default [
    i32 37, label %sw.bb.45
    i32 64, label %sw.bb.46
    i32 40, label %sw.bb.62
    i32 344, label %sw.bb.86
    i32 88, label %sw.bb.94
    i32 376, label %sw.bb.109
    i32 120, label %sw.bb.123
    i32 65, label %sw.bb.131
    i32 90, label %sw.bb.131
    i32 97, label %sw.bb.131
    i32 66, label %sw.bb.209
    i32 98, label %sw.bb.209
    i32 72, label %sw.bb.344
    i32 104, label %sw.bb.344
    i32 67, label %sw.bb.525
    i32 99, label %sw.bb.525
    i32 85, label %sw.bb.642
    i32 102, label %sw.bb.737
    i32 100, label %sw.bb.767
    i32 70, label %sw.bb.797
    i32 110, label %sw.bb.827
    i32 118, label %sw.bb.859
    i32 339, label %sw.bb.891
    i32 83, label %sw.bb.891
    i32 371, label %sw.bb.922
    i32 115, label %sw.bb.922
    i32 73, label %sw.bb.953
    i32 329, label %sw.bb.953
    i32 106, label %sw.bb.984
    i32 74, label %sw.bb.1014
    i32 119, label %sw.bb.1044
    i32 105, label %sw.bb.1261
    i32 361, label %sw.bb.1261
    i32 78, label %sw.bb.1292
    i32 86, label %sw.bb.1326
    i32 332, label %sw.bb.1360
    i32 76, label %sw.bb.1390
    i32 364, label %sw.bb.1421
    i32 108, label %sw.bb.1451
    i32 81, label %sw.bb.1482
    i32 113, label %sw.bb.1512
    i32 80, label %sw.bb.1542
    i32 112, label %sw.bb.1543
    i32 117, label %sw.bb.1653
  ]

sw.default:                                       ; preds = %if.end.43
  %36 = load i32, i32* %datumtype, align 4
  %and44 = and i32 %36, 255
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0), i32 %and44)
  br label %sw.bb.45

sw.bb.45:                                         ; preds = %if.end.43, %sw.default
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i32 0, i32 0))
  br label %sw.bb.46

sw.bb.46:                                         ; preds = %if.end.43, %sw.bb.45
  %37 = load i32, i32* %strrelbeg, align 4
  %conv47 = sext i32 %37 to i64
  %38 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any48 = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 0
  %39 = load i8*, i8** %sv_any48, align 8
  %40 = bitcast i8* %39 to %struct.xpv*
  %xpv_cur49 = getelementptr inbounds %struct.xpv, %struct.xpv* %40, i32 0, i32 1
  %41 = load i64, i64* %xpv_cur49, align 8
  %sub = sub i64 %conv47, %41
  %42 = load i32, i32* %len, align 4
  %conv50 = sext i32 %42 to i64
  %add51 = add i64 %conv50, %sub
  %conv52 = trunc i64 %add51 to i32
  store i32 %conv52, i32* %len, align 4
  %43 = load i32, i32* %len, align 4
  %cmp53 = icmp sgt i32 %43, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %sw.bb.46
  br label %grow

if.end.56:                                        ; preds = %sw.bb.46
  %44 = load i32, i32* %len, align 4
  %sub57 = sub nsw i32 0, %44
  store i32 %sub57, i32* %len, align 4
  %45 = load i32, i32* %len, align 4
  %cmp58 = icmp sgt i32 %45, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.56
  br label %shrink

if.end.61:                                        ; preds = %if.end.56
  br label %sw.epilog.1719

sw.bb.62:                                         ; preds = %if.end.43
  %46 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %47 = bitcast %struct.tempsym_t* %savsym to i8*
  %48 = bitcast %struct.tempsym_t* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 56, i32 8, i1 false)
  %49 = load i32, i32* %datumtype, align 4
  %50 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags63 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %50, i32 0, i32 8
  %51 = load i32, i32* %flags63, align 4
  %neg = xor i32 %51, -1
  %and64 = and i32 %49, %neg
  %and65 = and i32 %and64, -256
  store i32 %and65, i32* %group_modifiers, align 4
  %52 = load i32, i32* %group_modifiers, align 4
  %53 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags66 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %53, i32 0, i32 8
  %54 = load i32, i32* %flags66, align 4
  %or67 = or i32 %54, %52
  store i32 %or67, i32* %flags66, align 4
  %grpend = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %savsym, i32 0, i32 3
  %55 = load i8*, i8** %grpend, align 8
  %56 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %patend = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %56, i32 0, i32 1
  store i8* %55, i8** %patend, align 8
  %57 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %level68 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %57, i32 0, i32 7
  %58 = load i32, i32* %level68, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %level68, align 4
  br label %while.cond.69

while.cond.69:                                    ; preds = %if.end.80, %sw.bb.62
  %59 = load i32, i32* %len, align 4
  %dec = add nsw i32 %59, -1
  store i32 %dec, i32* %len, align 4
  %tobool70 = icmp ne i32 %59, 0
  br i1 %tobool70, label %while.body.71, label %while.end

while.body.71:                                    ; preds = %while.cond.69
  %grpbeg = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %savsym, i32 0, i32 2
  %60 = load i8*, i8** %grpbeg, align 8
  %61 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %patptr = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %61, i32 0, i32 0
  store i8* %60, i8** %patptr, align 8
  %62 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %63 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %64 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %65 = load %struct.sv**, %struct.sv*** %endlist.addr, align 8
  %call72 = call %struct.sv** @S_pack_rec(%struct.sv* %62, %struct.tempsym_t* %63, %struct.sv** %64, %struct.sv** %65)
  store %struct.sv** %call72, %struct.sv*** %beglist.addr, align 8
  %howlen73 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %savsym, i32 0, i32 6
  %66 = load i32, i32* %howlen73, align 4
  %cmp74 = icmp eq i32 %66, 2
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.80

land.lhs.true.76:                                 ; preds = %while.body.71
  %67 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %68 = load %struct.sv**, %struct.sv*** %endlist.addr, align 8
  %cmp77 = icmp eq %struct.sv** %67, %68
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %land.lhs.true.76
  br label %while.end

if.end.80:                                        ; preds = %land.lhs.true.76, %while.body.71
  br label %while.cond.69

while.end:                                        ; preds = %if.then.79, %while.cond.69
  %69 = load i32, i32* %group_modifiers, align 4
  %neg81 = xor i32 %69, -1
  %70 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags82 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %70, i32 0, i32 8
  %71 = load i32, i32* %flags82, align 4
  %and83 = and i32 %71, %neg81
  store i32 %and83, i32* %flags82, align 4
  %72 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags84 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %72, i32 0, i32 8
  %73 = load i32, i32* %flags84, align 4
  %flags85 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %lookahead, i32 0, i32 8
  store i32 %73, i32* %flags85, align 4
  %74 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %75 = bitcast %struct.tempsym_t* %74 to i8*
  %76 = bitcast %struct.tempsym_t* %savsym to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 56, i32 8, i1 false)
  br label %sw.epilog.1719

sw.bb.86:                                         ; preds = %if.end.43
  %77 = load i32, i32* %len, align 4
  %tobool87 = icmp ne i32 %77, 0
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %sw.bb.86
  store i32 1, i32* %len, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %sw.bb.86
  %78 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any90 = getelementptr inbounds %struct.sv, %struct.sv* %78, i32 0, i32 0
  %79 = load i8*, i8** %sv_any90, align 8
  %80 = bitcast i8* %79 to %struct.xpv*
  %xpv_cur91 = getelementptr inbounds %struct.xpv, %struct.xpv* %80, i32 0, i32 1
  %81 = load i64, i64* %xpv_cur91, align 8
  %82 = load i32, i32* %len, align 4
  %conv92 = sext i32 %82 to i64
  %rem = urem i64 %81, %conv92
  %conv93 = trunc i64 %rem to i32
  store i32 %conv93, i32* %len, align 4
  br label %sw.bb.94

sw.bb.94:                                         ; preds = %if.end.43, %if.end.89
  br label %shrink

shrink:                                           ; preds = %sw.bb.94, %if.then.60
  %83 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any95 = getelementptr inbounds %struct.sv, %struct.sv* %83, i32 0, i32 0
  %84 = load i8*, i8** %sv_any95, align 8
  %85 = bitcast i8* %84 to %struct.xpv*
  %xpv_cur96 = getelementptr inbounds %struct.xpv, %struct.xpv* %85, i32 0, i32 1
  %86 = load i64, i64* %xpv_cur96, align 8
  %conv97 = trunc i64 %86 to i32
  %87 = load i32, i32* %len, align 4
  %cmp98 = icmp slt i32 %conv97, %87
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %shrink
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %shrink
  %88 = load i32, i32* %len, align 4
  %conv102 = sext i32 %88 to i64
  %89 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any103 = getelementptr inbounds %struct.sv, %struct.sv* %89, i32 0, i32 0
  %90 = load i8*, i8** %sv_any103, align 8
  %91 = bitcast i8* %90 to %struct.xpv*
  %xpv_cur104 = getelementptr inbounds %struct.xpv, %struct.xpv* %91, i32 0, i32 1
  %92 = load i64, i64* %xpv_cur104, align 8
  %sub105 = sub i64 %92, %conv102
  store i64 %sub105, i64* %xpv_cur104, align 8
  %93 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any106 = getelementptr inbounds %struct.sv, %struct.sv* %93, i32 0, i32 0
  %94 = load i8*, i8** %sv_any106, align 8
  %95 = bitcast i8* %94 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %95, i32 0, i32 0
  %96 = load i8*, i8** %xpv_pv, align 8
  %97 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any107 = getelementptr inbounds %struct.sv, %struct.sv* %97, i32 0, i32 0
  %98 = load i8*, i8** %sv_any107, align 8
  %99 = bitcast i8* %98 to %struct.xpv*
  %xpv_cur108 = getelementptr inbounds %struct.xpv, %struct.xpv* %99, i32 0, i32 1
  %100 = load i64, i64* %xpv_cur108, align 8
  %add.ptr = getelementptr inbounds i8, i8* %96, i64 %100
  store i8 0, i8* %add.ptr, align 1
  br label %sw.epilog.1719

sw.bb.109:                                        ; preds = %if.end.43
  %101 = load i32, i32* %len, align 4
  %tobool110 = icmp ne i32 %101, 0
  br i1 %tobool110, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %sw.bb.109
  store i32 1, i32* %len, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %sw.bb.109
  %102 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any113 = getelementptr inbounds %struct.sv, %struct.sv* %102, i32 0, i32 0
  %103 = load i8*, i8** %sv_any113, align 8
  %104 = bitcast i8* %103 to %struct.xpv*
  %xpv_cur114 = getelementptr inbounds %struct.xpv, %struct.xpv* %104, i32 0, i32 1
  %105 = load i64, i64* %xpv_cur114, align 8
  %106 = load i32, i32* %len, align 4
  %conv115 = sext i32 %106 to i64
  %rem116 = urem i64 %105, %conv115
  %conv117 = trunc i64 %rem116 to i32
  store i32 %conv117, i32* %aint, align 4
  %107 = load i32, i32* %aint, align 4
  %tobool118 = icmp ne i32 %107, 0
  br i1 %tobool118, label %if.then.119, label %if.else.121

if.then.119:                                      ; preds = %if.end.112
  %108 = load i32, i32* %len, align 4
  %109 = load i32, i32* %aint, align 4
  %sub120 = sub nsw i32 %108, %109
  store i32 %sub120, i32* %len, align 4
  br label %if.end.122

if.else.121:                                      ; preds = %if.end.112
  store i32 0, i32* %len, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.then.119
  br label %sw.bb.123

sw.bb.123:                                        ; preds = %if.end.43, %if.end.122
  br label %grow

grow:                                             ; preds = %sw.bb.123, %if.then.55
  br label %while.cond.124

while.cond.124:                                   ; preds = %while.body.127, %grow
  %110 = load i32, i32* %len, align 4
  %cmp125 = icmp sge i32 %110, 10
  br i1 %cmp125, label %while.body.127, label %while.end.129

while.body.127:                                   ; preds = %while.cond.124
  %111 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @S_pack_rec.null10, i32 0, i32 0), i64 10, i32 2)
  %112 = load i32, i32* %len, align 4
  %sub128 = sub nsw i32 %112, 10
  store i32 %sub128, i32* %len, align 4
  br label %while.cond.124

while.end.129:                                    ; preds = %while.cond.124
  %113 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %114 = load i32, i32* %len, align 4
  %conv130 = sext i32 %114 to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @S_pack_rec.null10, i32 0, i32 0), i64 %conv130, i32 2)
  br label %sw.epilog.1719

sw.bb.131:                                        ; preds = %if.end.43, %if.end.43, %if.end.43
  %115 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool132 = icmp ne %struct.sv* %115, null
  br i1 %tobool132, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %sw.bb.131
  %116 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.142

cond.false.134:                                   ; preds = %sw.bb.131
  %117 = load i32, i32* %items, align 4
  %dec135 = add nsw i32 %117, -1
  store i32 %dec135, i32* %items, align 4
  %cmp136 = icmp sgt i32 %117, 0
  br i1 %cmp136, label %cond.true.138, label %cond.false.139

cond.true.138:                                    ; preds = %cond.false.134
  %118 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv*, %struct.sv** %118, i32 1
  store %struct.sv** %incdec.ptr, %struct.sv*** %beglist.addr, align 8
  %119 = load %struct.sv*, %struct.sv** %118, align 8
  br label %cond.end.140

cond.false.139:                                   ; preds = %cond.false.134
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.139, %cond.true.138
  %cond141 = phi %struct.sv* [ %119, %cond.true.138 ], [ @PL_sv_no, %cond.false.139 ]
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.end.140, %cond.true.133
  %cond143 = phi %struct.sv* [ %116, %cond.true.133 ], [ %cond141, %cond.end.140 ]
  store %struct.sv* %cond143, %struct.sv** %fromstr, align 8
  %120 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags144 = getelementptr inbounds %struct.sv, %struct.sv* %120, i32 0, i32 2
  %121 = load i32, i32* %sv_flags144, align 4
  %and145 = and i32 %121, 262144
  %cmp146 = icmp eq i32 %and145, 262144
  br i1 %cmp146, label %cond.true.148, label %cond.false.153

cond.true.148:                                    ; preds = %cond.end.142
  %122 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any149 = getelementptr inbounds %struct.sv, %struct.sv* %122, i32 0, i32 0
  %123 = load i8*, i8** %sv_any149, align 8
  %124 = bitcast i8* %123 to %struct.xpv*
  %xpv_cur150 = getelementptr inbounds %struct.xpv, %struct.xpv* %124, i32 0, i32 1
  %125 = load i64, i64* %xpv_cur150, align 8
  store i64 %125, i64* %fromlen, align 8
  %126 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any151 = getelementptr inbounds %struct.sv, %struct.sv* %126, i32 0, i32 0
  %127 = load i8*, i8** %sv_any151, align 8
  %128 = bitcast i8* %127 to %struct.xpv*
  %xpv_pv152 = getelementptr inbounds %struct.xpv, %struct.xpv* %128, i32 0, i32 0
  %129 = load i8*, i8** %xpv_pv152, align 8
  br label %cond.end.155

cond.false.153:                                   ; preds = %cond.end.142
  %130 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call154 = call i8* @Perl_sv_2pv_flags(%struct.sv* %130, i64* %fromlen, i32 2)
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.153, %cond.true.148
  %cond156 = phi i8* [ %129, %cond.true.148 ], [ %call154, %cond.false.153 ]
  store i8* %cond156, i8** %aptr, align 8
  %131 = load i32, i32* %howlen, align 4
  %cmp157 = icmp eq i32 %131, 2
  br i1 %cmp157, label %if.then.159, label %if.end.166

if.then.159:                                      ; preds = %cond.end.155
  %132 = load i64, i64* %fromlen, align 8
  %conv160 = trunc i64 %132 to i32
  store i32 %conv160, i32* %len, align 4
  %133 = load i32, i32* %datumtype, align 4
  %cmp161 = icmp eq i32 %133, 90
  br i1 %cmp161, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %if.then.159
  %134 = load i32, i32* %len, align 4
  %inc164 = add nsw i32 %134, 1
  store i32 %inc164, i32* %len, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %if.then.159
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %cond.end.155
  %135 = load i64, i64* %fromlen, align 8
  %conv167 = trunc i64 %135 to i32
  %136 = load i32, i32* %len, align 4
  %cmp168 = icmp sge i32 %conv167, %136
  br i1 %cmp168, label %if.then.170, label %if.else.185

if.then.170:                                      ; preds = %if.end.166
  %137 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %138 = load i8*, i8** %aptr, align 8
  %139 = load i32, i32* %len, align 4
  %conv171 = sext i32 %139 to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %137, i8* %138, i64 %conv171, i32 2)
  %140 = load i32, i32* %datumtype, align 4
  %cmp172 = icmp eq i32 %140, 90
  br i1 %cmp172, label %land.lhs.true.174, label %if.end.184

land.lhs.true.174:                                ; preds = %if.then.170
  %141 = load i32, i32* %len, align 4
  %cmp175 = icmp sgt i32 %141, 0
  br i1 %cmp175, label %if.then.177, label %if.end.184

if.then.177:                                      ; preds = %land.lhs.true.174
  %142 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any178 = getelementptr inbounds %struct.sv, %struct.sv* %142, i32 0, i32 0
  %143 = load i8*, i8** %sv_any178, align 8
  %144 = bitcast i8* %143 to %struct.xpv*
  %xpv_pv179 = getelementptr inbounds %struct.xpv, %struct.xpv* %144, i32 0, i32 0
  %145 = load i8*, i8** %xpv_pv179, align 8
  %146 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any180 = getelementptr inbounds %struct.sv, %struct.sv* %146, i32 0, i32 0
  %147 = load i8*, i8** %sv_any180, align 8
  %148 = bitcast i8* %147 to %struct.xpv*
  %xpv_cur181 = getelementptr inbounds %struct.xpv, %struct.xpv* %148, i32 0, i32 1
  %149 = load i64, i64* %xpv_cur181, align 8
  %add.ptr182 = getelementptr inbounds i8, i8* %145, i64 %149
  %add.ptr183 = getelementptr inbounds i8, i8* %add.ptr182, i64 -1
  store i8 0, i8* %add.ptr183, align 1
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.177, %land.lhs.true.174, %if.then.170
  br label %if.end.208

if.else.185:                                      ; preds = %if.end.166
  %150 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %151 = load i8*, i8** %aptr, align 8
  %152 = load i64, i64* %fromlen, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %150, i8* %151, i64 %152, i32 2)
  %153 = load i64, i64* %fromlen, align 8
  %154 = load i32, i32* %len, align 4
  %conv186 = sext i32 %154 to i64
  %sub187 = sub i64 %conv186, %153
  %conv188 = trunc i64 %sub187 to i32
  store i32 %conv188, i32* %len, align 4
  %155 = load i32, i32* %datumtype, align 4
  %cmp189 = icmp eq i32 %155, 65
  br i1 %cmp189, label %if.then.191, label %if.else.199

if.then.191:                                      ; preds = %if.else.185
  br label %while.cond.192

while.cond.192:                                   ; preds = %while.body.195, %if.then.191
  %156 = load i32, i32* %len, align 4
  %cmp193 = icmp sge i32 %156, 10
  br i1 %cmp193, label %while.body.195, label %while.end.197

while.body.195:                                   ; preds = %while.cond.192
  %157 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %158 = load i8*, i8** @S_pack_rec.space10, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %157, i8* %158, i64 10, i32 2)
  %159 = load i32, i32* %len, align 4
  %sub196 = sub nsw i32 %159, 10
  store i32 %sub196, i32* %len, align 4
  br label %while.cond.192

while.end.197:                                    ; preds = %while.cond.192
  %160 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %161 = load i8*, i8** @S_pack_rec.space10, align 8
  %162 = load i32, i32* %len, align 4
  %conv198 = sext i32 %162 to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %160, i8* %161, i64 %conv198, i32 2)
  br label %if.end.207

if.else.199:                                      ; preds = %if.else.185
  br label %while.cond.200

while.cond.200:                                   ; preds = %while.body.203, %if.else.199
  %163 = load i32, i32* %len, align 4
  %cmp201 = icmp sge i32 %163, 10
  br i1 %cmp201, label %while.body.203, label %while.end.205

while.body.203:                                   ; preds = %while.cond.200
  %164 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @S_pack_rec.null10, i32 0, i32 0), i64 10, i32 2)
  %165 = load i32, i32* %len, align 4
  %sub204 = sub nsw i32 %165, 10
  store i32 %sub204, i32* %len, align 4
  br label %while.cond.200

while.end.205:                                    ; preds = %while.cond.200
  %166 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %167 = load i32, i32* %len, align 4
  %conv206 = sext i32 %167 to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %166, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @S_pack_rec.null10, i32 0, i32 0), i64 %conv206, i32 2)
  br label %if.end.207

if.end.207:                                       ; preds = %while.end.205, %while.end.197
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.end.184
  br label %sw.epilog.1719

sw.bb.209:                                        ; preds = %if.end.43, %if.end.43
  %168 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool210 = icmp ne %struct.sv* %168, null
  br i1 %tobool210, label %cond.true.211, label %cond.false.212

cond.true.211:                                    ; preds = %sw.bb.209
  %169 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.221

cond.false.212:                                   ; preds = %sw.bb.209
  %170 = load i32, i32* %items, align 4
  %dec213 = add nsw i32 %170, -1
  store i32 %dec213, i32* %items, align 4
  %cmp214 = icmp sgt i32 %170, 0
  br i1 %cmp214, label %cond.true.216, label %cond.false.218

cond.true.216:                                    ; preds = %cond.false.212
  %171 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr217 = getelementptr inbounds %struct.sv*, %struct.sv** %171, i32 1
  store %struct.sv** %incdec.ptr217, %struct.sv*** %beglist.addr, align 8
  %172 = load %struct.sv*, %struct.sv** %171, align 8
  br label %cond.end.219

cond.false.218:                                   ; preds = %cond.false.212
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.218, %cond.true.216
  %cond220 = phi %struct.sv* [ %172, %cond.true.216 ], [ @PL_sv_no, %cond.false.218 ]
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.end.219, %cond.true.211
  %cond222 = phi %struct.sv* [ %169, %cond.true.211 ], [ %cond220, %cond.end.219 ]
  store %struct.sv* %cond222, %struct.sv** %fromstr, align 8
  %173 = load i32, i32* %items, align 4
  store i32 %173, i32* %saveitems, align 4
  %174 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags223 = getelementptr inbounds %struct.sv, %struct.sv* %174, i32 0, i32 2
  %175 = load i32, i32* %sv_flags223, align 4
  %and224 = and i32 %175, 262144
  %cmp225 = icmp eq i32 %and224, 262144
  br i1 %cmp225, label %cond.true.227, label %cond.false.232

cond.true.227:                                    ; preds = %cond.end.221
  %176 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any228 = getelementptr inbounds %struct.sv, %struct.sv* %176, i32 0, i32 0
  %177 = load i8*, i8** %sv_any228, align 8
  %178 = bitcast i8* %177 to %struct.xpv*
  %xpv_cur229 = getelementptr inbounds %struct.xpv, %struct.xpv* %178, i32 0, i32 1
  %179 = load i64, i64* %xpv_cur229, align 8
  store i64 %179, i64* %fromlen, align 8
  %180 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any230 = getelementptr inbounds %struct.sv, %struct.sv* %180, i32 0, i32 0
  %181 = load i8*, i8** %sv_any230, align 8
  %182 = bitcast i8* %181 to %struct.xpv*
  %xpv_pv231 = getelementptr inbounds %struct.xpv, %struct.xpv* %182, i32 0, i32 0
  %183 = load i8*, i8** %xpv_pv231, align 8
  br label %cond.end.234

cond.false.232:                                   ; preds = %cond.end.221
  %184 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call233 = call i8* @Perl_sv_2pv_flags(%struct.sv* %184, i64* %fromlen, i32 2)
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.232, %cond.true.227
  %cond235 = phi i8* [ %183, %cond.true.227 ], [ %call233, %cond.false.232 ]
  store i8* %cond235, i8** %str, align 8
  %185 = load i32, i32* %howlen, align 4
  %cmp236 = icmp eq i32 %185, 2
  br i1 %cmp236, label %if.then.238, label %if.end.240

if.then.238:                                      ; preds = %cond.end.234
  %186 = load i64, i64* %fromlen, align 8
  %conv239 = trunc i64 %186 to i32
  store i32 %conv239, i32* %len, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.238, %cond.end.234
  %187 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any241 = getelementptr inbounds %struct.sv, %struct.sv* %187, i32 0, i32 0
  %188 = load i8*, i8** %sv_any241, align 8
  %189 = bitcast i8* %188 to %struct.xpv*
  %xpv_cur242 = getelementptr inbounds %struct.xpv, %struct.xpv* %189, i32 0, i32 1
  %190 = load i64, i64* %xpv_cur242, align 8
  %conv243 = trunc i64 %190 to i32
  store i32 %conv243, i32* %aint, align 4
  %191 = load i32, i32* %len, align 4
  %add244 = add nsw i32 %191, 7
  %div = sdiv i32 %add244, 8
  %conv245 = sext i32 %div to i64
  %192 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any246 = getelementptr inbounds %struct.sv, %struct.sv* %192, i32 0, i32 0
  %193 = load i8*, i8** %sv_any246, align 8
  %194 = bitcast i8* %193 to %struct.xpv*
  %xpv_cur247 = getelementptr inbounds %struct.xpv, %struct.xpv* %194, i32 0, i32 1
  %195 = load i64, i64* %xpv_cur247, align 8
  %add248 = add i64 %195, %conv245
  store i64 %add248, i64* %xpv_cur247, align 8
  %196 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any249 = getelementptr inbounds %struct.sv, %struct.sv* %196, i32 0, i32 0
  %197 = load i8*, i8** %sv_any249, align 8
  %198 = bitcast i8* %197 to %struct.xpv*
  %xpv_len = getelementptr inbounds %struct.xpv, %struct.xpv* %198, i32 0, i32 2
  %199 = load i64, i64* %xpv_len, align 8
  %200 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any250 = getelementptr inbounds %struct.sv, %struct.sv* %200, i32 0, i32 0
  %201 = load i8*, i8** %sv_any250, align 8
  %202 = bitcast i8* %201 to %struct.xpv*
  %xpv_cur251 = getelementptr inbounds %struct.xpv, %struct.xpv* %202, i32 0, i32 1
  %203 = load i64, i64* %xpv_cur251, align 8
  %add252 = add i64 %203, 1
  %cmp253 = icmp ult i64 %199, %add252
  br i1 %cmp253, label %cond.true.255, label %cond.false.260

cond.true.255:                                    ; preds = %if.end.240
  %204 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %205 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any256 = getelementptr inbounds %struct.sv, %struct.sv* %205, i32 0, i32 0
  %206 = load i8*, i8** %sv_any256, align 8
  %207 = bitcast i8* %206 to %struct.xpv*
  %xpv_cur257 = getelementptr inbounds %struct.xpv, %struct.xpv* %207, i32 0, i32 1
  %208 = load i64, i64* %xpv_cur257, align 8
  %add258 = add i64 %208, 1
  %call259 = call i8* @Perl_sv_grow(%struct.sv* %204, i64 %add258)
  br label %cond.end.263

cond.false.260:                                   ; preds = %if.end.240
  %209 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any261 = getelementptr inbounds %struct.sv, %struct.sv* %209, i32 0, i32 0
  %210 = load i8*, i8** %sv_any261, align 8
  %211 = bitcast i8* %210 to %struct.xpv*
  %xpv_pv262 = getelementptr inbounds %struct.xpv, %struct.xpv* %211, i32 0, i32 0
  %212 = load i8*, i8** %xpv_pv262, align 8
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.false.260, %cond.true.255
  %cond264 = phi i8* [ %call259, %cond.true.255 ], [ %212, %cond.false.260 ]
  %213 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any265 = getelementptr inbounds %struct.sv, %struct.sv* %213, i32 0, i32 0
  %214 = load i8*, i8** %sv_any265, align 8
  %215 = bitcast i8* %214 to %struct.xpv*
  %xpv_pv266 = getelementptr inbounds %struct.xpv, %struct.xpv* %215, i32 0, i32 0
  %216 = load i8*, i8** %xpv_pv266, align 8
  %217 = load i32, i32* %aint, align 4
  %idx.ext = sext i32 %217 to i64
  %add.ptr267 = getelementptr inbounds i8, i8* %216, i64 %idx.ext
  store i8* %add.ptr267, i8** %aptr, align 8
  %218 = load i32, i32* %len, align 4
  %219 = load i64, i64* %fromlen, align 8
  %conv268 = trunc i64 %219 to i32
  %cmp269 = icmp sgt i32 %218, %conv268
  br i1 %cmp269, label %if.then.271, label %if.end.273

if.then.271:                                      ; preds = %cond.end.263
  %220 = load i64, i64* %fromlen, align 8
  %conv272 = trunc i64 %220 to i32
  store i32 %conv272, i32* %len, align 4
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.271, %cond.end.263
  %221 = load i32, i32* %len, align 4
  store i32 %221, i32* %aint, align 4
  store i32 0, i32* %items, align 4
  %222 = load i32, i32* %datumtype, align 4
  %cmp274 = icmp eq i32 %222, 66
  br i1 %cmp274, label %if.then.276, label %if.else.292

if.then.276:                                      ; preds = %if.end.273
  store i32 0, i32* %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.291, %if.then.276
  %223 = load i32, i32* %len, align 4
  %inc277 = add nsw i32 %223, 1
  store i32 %inc277, i32* %len, align 4
  %224 = load i32, i32* %aint, align 4
  %cmp278 = icmp slt i32 %223, %224
  br i1 %cmp278, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %225 = load i8*, i8** %str, align 8
  %incdec.ptr280 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %incdec.ptr280, i8** %str, align 8
  %226 = load i8, i8* %225, align 1
  %conv281 = sext i8 %226 to i32
  %and282 = and i32 %conv281, 1
  %227 = load i32, i32* %items, align 4
  %or283 = or i32 %227, %and282
  store i32 %or283, i32* %items, align 4
  %228 = load i32, i32* %len, align 4
  %and284 = and i32 %228, 7
  %tobool285 = icmp ne i32 %and284, 0
  br i1 %tobool285, label %if.then.286, label %if.else.287

if.then.286:                                      ; preds = %for.body
  %229 = load i32, i32* %items, align 4
  %shl = shl i32 %229, 1
  store i32 %shl, i32* %items, align 4
  br label %if.end.291

if.else.287:                                      ; preds = %for.body
  %230 = load i32, i32* %items, align 4
  %and288 = and i32 %230, 255
  %conv289 = trunc i32 %and288 to i8
  %231 = load i8*, i8** %aptr, align 8
  %incdec.ptr290 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %incdec.ptr290, i8** %aptr, align 8
  store i8 %conv289, i8* %231, align 1
  store i32 0, i32* %items, align 4
  br label %if.end.291

if.end.291:                                       ; preds = %if.else.287, %if.then.286
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.314

if.else.292:                                      ; preds = %if.end.273
  store i32 0, i32* %len, align 4
  br label %for.cond.293

for.cond.293:                                     ; preds = %if.end.312, %if.else.292
  %232 = load i32, i32* %len, align 4
  %inc294 = add nsw i32 %232, 1
  store i32 %inc294, i32* %len, align 4
  %233 = load i32, i32* %aint, align 4
  %cmp295 = icmp slt i32 %232, %233
  br i1 %cmp295, label %for.body.297, label %for.end.313

for.body.297:                                     ; preds = %for.cond.293
  %234 = load i8*, i8** %str, align 8
  %incdec.ptr298 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %incdec.ptr298, i8** %str, align 8
  %235 = load i8, i8* %234, align 1
  %conv299 = sext i8 %235 to i32
  %and300 = and i32 %conv299, 1
  %tobool301 = icmp ne i32 %and300, 0
  br i1 %tobool301, label %if.then.302, label %if.end.304

if.then.302:                                      ; preds = %for.body.297
  %236 = load i32, i32* %items, align 4
  %or303 = or i32 %236, 128
  store i32 %or303, i32* %items, align 4
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.302, %for.body.297
  %237 = load i32, i32* %len, align 4
  %and305 = and i32 %237, 7
  %tobool306 = icmp ne i32 %and305, 0
  br i1 %tobool306, label %if.then.307, label %if.else.308

if.then.307:                                      ; preds = %if.end.304
  %238 = load i32, i32* %items, align 4
  %shr = ashr i32 %238, 1
  store i32 %shr, i32* %items, align 4
  br label %if.end.312

if.else.308:                                      ; preds = %if.end.304
  %239 = load i32, i32* %items, align 4
  %and309 = and i32 %239, 255
  %conv310 = trunc i32 %and309 to i8
  %240 = load i8*, i8** %aptr, align 8
  %incdec.ptr311 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %incdec.ptr311, i8** %aptr, align 8
  store i8 %conv310, i8* %240, align 1
  store i32 0, i32* %items, align 4
  br label %if.end.312

if.end.312:                                       ; preds = %if.else.308, %if.then.307
  br label %for.cond.293

for.end.313:                                      ; preds = %for.cond.293
  br label %if.end.314

if.end.314:                                       ; preds = %for.end.313, %for.end
  %241 = load i32, i32* %aint, align 4
  %and315 = and i32 %241, 7
  %tobool316 = icmp ne i32 %and315, 0
  br i1 %tobool316, label %if.then.317, label %if.end.332

if.then.317:                                      ; preds = %if.end.314
  %242 = load i32, i32* %datumtype, align 4
  %cmp318 = icmp eq i32 %242, 66
  br i1 %cmp318, label %if.then.320, label %if.else.324

if.then.320:                                      ; preds = %if.then.317
  %243 = load i32, i32* %aint, align 4
  %and321 = and i32 %243, 7
  %sub322 = sub nsw i32 7, %and321
  %244 = load i32, i32* %items, align 4
  %shl323 = shl i32 %244, %sub322
  store i32 %shl323, i32* %items, align 4
  br label %if.end.328

if.else.324:                                      ; preds = %if.then.317
  %245 = load i32, i32* %aint, align 4
  %and325 = and i32 %245, 7
  %sub326 = sub nsw i32 7, %and325
  %246 = load i32, i32* %items, align 4
  %shr327 = ashr i32 %246, %sub326
  store i32 %shr327, i32* %items, align 4
  br label %if.end.328

if.end.328:                                       ; preds = %if.else.324, %if.then.320
  %247 = load i32, i32* %items, align 4
  %and329 = and i32 %247, 255
  %conv330 = trunc i32 %and329 to i8
  %248 = load i8*, i8** %aptr, align 8
  %incdec.ptr331 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %incdec.ptr331, i8** %aptr, align 8
  store i8 %conv330, i8* %248, align 1
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.328, %if.end.314
  %249 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any333 = getelementptr inbounds %struct.sv, %struct.sv* %249, i32 0, i32 0
  %250 = load i8*, i8** %sv_any333, align 8
  %251 = bitcast i8* %250 to %struct.xpv*
  %xpv_pv334 = getelementptr inbounds %struct.xpv, %struct.xpv* %251, i32 0, i32 0
  %252 = load i8*, i8** %xpv_pv334, align 8
  %253 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any335 = getelementptr inbounds %struct.sv, %struct.sv* %253, i32 0, i32 0
  %254 = load i8*, i8** %sv_any335, align 8
  %255 = bitcast i8* %254 to %struct.xpv*
  %xpv_cur336 = getelementptr inbounds %struct.xpv, %struct.xpv* %255, i32 0, i32 1
  %256 = load i64, i64* %xpv_cur336, align 8
  %add.ptr337 = getelementptr inbounds i8, i8* %252, i64 %256
  store i8* %add.ptr337, i8** %str, align 8
  br label %while.cond.338

while.cond.338:                                   ; preds = %while.body.341, %if.end.332
  %257 = load i8*, i8** %aptr, align 8
  %258 = load i8*, i8** %str, align 8
  %cmp339 = icmp ule i8* %257, %258
  br i1 %cmp339, label %while.body.341, label %while.end.343

while.body.341:                                   ; preds = %while.cond.338
  %259 = load i8*, i8** %aptr, align 8
  %incdec.ptr342 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %incdec.ptr342, i8** %aptr, align 8
  store i8 0, i8* %259, align 1
  br label %while.cond.338

while.end.343:                                    ; preds = %while.cond.338
  %260 = load i32, i32* %saveitems, align 4
  store i32 %260, i32* %items, align 4
  br label %sw.epilog.1719

sw.bb.344:                                        ; preds = %if.end.43, %if.end.43
  %261 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool347 = icmp ne %struct.sv* %261, null
  br i1 %tobool347, label %cond.true.348, label %cond.false.349

cond.true.348:                                    ; preds = %sw.bb.344
  %262 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.358

cond.false.349:                                   ; preds = %sw.bb.344
  %263 = load i32, i32* %items, align 4
  %dec350 = add nsw i32 %263, -1
  store i32 %dec350, i32* %items, align 4
  %cmp351 = icmp sgt i32 %263, 0
  br i1 %cmp351, label %cond.true.353, label %cond.false.355

cond.true.353:                                    ; preds = %cond.false.349
  %264 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr354 = getelementptr inbounds %struct.sv*, %struct.sv** %264, i32 1
  store %struct.sv** %incdec.ptr354, %struct.sv*** %beglist.addr, align 8
  %265 = load %struct.sv*, %struct.sv** %264, align 8
  br label %cond.end.356

cond.false.355:                                   ; preds = %cond.false.349
  br label %cond.end.356

cond.end.356:                                     ; preds = %cond.false.355, %cond.true.353
  %cond357 = phi %struct.sv* [ %265, %cond.true.353 ], [ @PL_sv_no, %cond.false.355 ]
  br label %cond.end.358

cond.end.358:                                     ; preds = %cond.end.356, %cond.true.348
  %cond359 = phi %struct.sv* [ %262, %cond.true.348 ], [ %cond357, %cond.end.356 ]
  store %struct.sv* %cond359, %struct.sv** %fromstr, align 8
  %266 = load i32, i32* %items, align 4
  store i32 %266, i32* %saveitems346, align 4
  %267 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags360 = getelementptr inbounds %struct.sv, %struct.sv* %267, i32 0, i32 2
  %268 = load i32, i32* %sv_flags360, align 4
  %and361 = and i32 %268, 262144
  %cmp362 = icmp eq i32 %and361, 262144
  br i1 %cmp362, label %cond.true.364, label %cond.false.369

cond.true.364:                                    ; preds = %cond.end.358
  %269 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any365 = getelementptr inbounds %struct.sv, %struct.sv* %269, i32 0, i32 0
  %270 = load i8*, i8** %sv_any365, align 8
  %271 = bitcast i8* %270 to %struct.xpv*
  %xpv_cur366 = getelementptr inbounds %struct.xpv, %struct.xpv* %271, i32 0, i32 1
  %272 = load i64, i64* %xpv_cur366, align 8
  store i64 %272, i64* %fromlen, align 8
  %273 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any367 = getelementptr inbounds %struct.sv, %struct.sv* %273, i32 0, i32 0
  %274 = load i8*, i8** %sv_any367, align 8
  %275 = bitcast i8* %274 to %struct.xpv*
  %xpv_pv368 = getelementptr inbounds %struct.xpv, %struct.xpv* %275, i32 0, i32 0
  %276 = load i8*, i8** %xpv_pv368, align 8
  br label %cond.end.371

cond.false.369:                                   ; preds = %cond.end.358
  %277 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call370 = call i8* @Perl_sv_2pv_flags(%struct.sv* %277, i64* %fromlen, i32 2)
  br label %cond.end.371

cond.end.371:                                     ; preds = %cond.false.369, %cond.true.364
  %cond372 = phi i8* [ %276, %cond.true.364 ], [ %call370, %cond.false.369 ]
  store i8* %cond372, i8** %str345, align 8
  %278 = load i32, i32* %howlen, align 4
  %cmp373 = icmp eq i32 %278, 2
  br i1 %cmp373, label %if.then.375, label %if.end.377

if.then.375:                                      ; preds = %cond.end.371
  %279 = load i64, i64* %fromlen, align 8
  %conv376 = trunc i64 %279 to i32
  store i32 %conv376, i32* %len, align 4
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.375, %cond.end.371
  %280 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any378 = getelementptr inbounds %struct.sv, %struct.sv* %280, i32 0, i32 0
  %281 = load i8*, i8** %sv_any378, align 8
  %282 = bitcast i8* %281 to %struct.xpv*
  %xpv_cur379 = getelementptr inbounds %struct.xpv, %struct.xpv* %282, i32 0, i32 1
  %283 = load i64, i64* %xpv_cur379, align 8
  %conv380 = trunc i64 %283 to i32
  store i32 %conv380, i32* %aint, align 4
  %284 = load i32, i32* %len, align 4
  %add381 = add nsw i32 %284, 1
  %div382 = sdiv i32 %add381, 2
  %conv383 = sext i32 %div382 to i64
  %285 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any384 = getelementptr inbounds %struct.sv, %struct.sv* %285, i32 0, i32 0
  %286 = load i8*, i8** %sv_any384, align 8
  %287 = bitcast i8* %286 to %struct.xpv*
  %xpv_cur385 = getelementptr inbounds %struct.xpv, %struct.xpv* %287, i32 0, i32 1
  %288 = load i64, i64* %xpv_cur385, align 8
  %add386 = add i64 %288, %conv383
  store i64 %add386, i64* %xpv_cur385, align 8
  %289 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any387 = getelementptr inbounds %struct.sv, %struct.sv* %289, i32 0, i32 0
  %290 = load i8*, i8** %sv_any387, align 8
  %291 = bitcast i8* %290 to %struct.xpv*
  %xpv_len388 = getelementptr inbounds %struct.xpv, %struct.xpv* %291, i32 0, i32 2
  %292 = load i64, i64* %xpv_len388, align 8
  %293 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any389 = getelementptr inbounds %struct.sv, %struct.sv* %293, i32 0, i32 0
  %294 = load i8*, i8** %sv_any389, align 8
  %295 = bitcast i8* %294 to %struct.xpv*
  %xpv_cur390 = getelementptr inbounds %struct.xpv, %struct.xpv* %295, i32 0, i32 1
  %296 = load i64, i64* %xpv_cur390, align 8
  %add391 = add i64 %296, 1
  %cmp392 = icmp ult i64 %292, %add391
  br i1 %cmp392, label %cond.true.394, label %cond.false.399

cond.true.394:                                    ; preds = %if.end.377
  %297 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %298 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any395 = getelementptr inbounds %struct.sv, %struct.sv* %298, i32 0, i32 0
  %299 = load i8*, i8** %sv_any395, align 8
  %300 = bitcast i8* %299 to %struct.xpv*
  %xpv_cur396 = getelementptr inbounds %struct.xpv, %struct.xpv* %300, i32 0, i32 1
  %301 = load i64, i64* %xpv_cur396, align 8
  %add397 = add i64 %301, 1
  %call398 = call i8* @Perl_sv_grow(%struct.sv* %297, i64 %add397)
  br label %cond.end.402

cond.false.399:                                   ; preds = %if.end.377
  %302 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any400 = getelementptr inbounds %struct.sv, %struct.sv* %302, i32 0, i32 0
  %303 = load i8*, i8** %sv_any400, align 8
  %304 = bitcast i8* %303 to %struct.xpv*
  %xpv_pv401 = getelementptr inbounds %struct.xpv, %struct.xpv* %304, i32 0, i32 0
  %305 = load i8*, i8** %xpv_pv401, align 8
  br label %cond.end.402

cond.end.402:                                     ; preds = %cond.false.399, %cond.true.394
  %cond403 = phi i8* [ %call398, %cond.true.394 ], [ %305, %cond.false.399 ]
  %306 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any404 = getelementptr inbounds %struct.sv, %struct.sv* %306, i32 0, i32 0
  %307 = load i8*, i8** %sv_any404, align 8
  %308 = bitcast i8* %307 to %struct.xpv*
  %xpv_pv405 = getelementptr inbounds %struct.xpv, %struct.xpv* %308, i32 0, i32 0
  %309 = load i8*, i8** %xpv_pv405, align 8
  %310 = load i32, i32* %aint, align 4
  %idx.ext406 = sext i32 %310 to i64
  %add.ptr407 = getelementptr inbounds i8, i8* %309, i64 %idx.ext406
  store i8* %add.ptr407, i8** %aptr, align 8
  %311 = load i32, i32* %len, align 4
  %312 = load i64, i64* %fromlen, align 8
  %conv408 = trunc i64 %312 to i32
  %cmp409 = icmp sgt i32 %311, %conv408
  br i1 %cmp409, label %if.then.411, label %if.end.413

if.then.411:                                      ; preds = %cond.end.402
  %313 = load i64, i64* %fromlen, align 8
  %conv412 = trunc i64 %313 to i32
  store i32 %conv412, i32* %len, align 4
  br label %if.end.413

if.end.413:                                       ; preds = %if.then.411, %cond.end.402
  %314 = load i32, i32* %len, align 4
  store i32 %314, i32* %aint, align 4
  store i32 0, i32* %items, align 4
  %315 = load i32, i32* %datumtype, align 4
  %cmp414 = icmp eq i32 %315, 72
  br i1 %cmp414, label %if.then.416, label %if.else.460

if.then.416:                                      ; preds = %if.end.413
  store i32 0, i32* %len, align 4
  br label %for.cond.417

for.cond.417:                                     ; preds = %if.end.458, %if.then.416
  %316 = load i32, i32* %len, align 4
  %inc418 = add nsw i32 %316, 1
  store i32 %inc418, i32* %len, align 4
  %317 = load i32, i32* %aint, align 4
  %cmp419 = icmp slt i32 %316, %317
  br i1 %cmp419, label %for.body.421, label %for.end.459

for.body.421:                                     ; preds = %for.cond.417
  %318 = load i8*, i8** %str345, align 8
  %319 = load i8, i8* %318, align 1
  %conv422 = sext i8 %319 to i32
  %cmp423 = icmp sge i32 %conv422, 65
  br i1 %cmp423, label %land.lhs.true.425, label %lor.lhs.false.429

land.lhs.true.425:                                ; preds = %for.body.421
  %320 = load i8*, i8** %str345, align 8
  %321 = load i8, i8* %320, align 1
  %conv426 = sext i8 %321 to i32
  %cmp427 = icmp sle i32 %conv426, 90
  br i1 %cmp427, label %if.then.437, label %lor.lhs.false.429

lor.lhs.false.429:                                ; preds = %land.lhs.true.425, %for.body.421
  %322 = load i8*, i8** %str345, align 8
  %323 = load i8, i8* %322, align 1
  %conv430 = sext i8 %323 to i32
  %cmp431 = icmp sge i32 %conv430, 97
  br i1 %cmp431, label %land.lhs.true.433, label %if.else.444

land.lhs.true.433:                                ; preds = %lor.lhs.false.429
  %324 = load i8*, i8** %str345, align 8
  %325 = load i8, i8* %324, align 1
  %conv434 = sext i8 %325 to i32
  %cmp435 = icmp sle i32 %conv434, 122
  br i1 %cmp435, label %if.then.437, label %if.else.444

if.then.437:                                      ; preds = %land.lhs.true.433, %land.lhs.true.425
  %326 = load i8*, i8** %str345, align 8
  %incdec.ptr438 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %incdec.ptr438, i8** %str345, align 8
  %327 = load i8, i8* %326, align 1
  %conv439 = sext i8 %327 to i32
  %and440 = and i32 %conv439, 15
  %add441 = add nsw i32 %and440, 9
  %and442 = and i32 %add441, 15
  %328 = load i32, i32* %items, align 4
  %or443 = or i32 %328, %and442
  store i32 %or443, i32* %items, align 4
  br label %if.end.449

if.else.444:                                      ; preds = %land.lhs.true.433, %lor.lhs.false.429
  %329 = load i8*, i8** %str345, align 8
  %incdec.ptr445 = getelementptr inbounds i8, i8* %329, i32 1
  store i8* %incdec.ptr445, i8** %str345, align 8
  %330 = load i8, i8* %329, align 1
  %conv446 = sext i8 %330 to i32
  %and447 = and i32 %conv446, 15
  %331 = load i32, i32* %items, align 4
  %or448 = or i32 %331, %and447
  store i32 %or448, i32* %items, align 4
  br label %if.end.449

if.end.449:                                       ; preds = %if.else.444, %if.then.437
  %332 = load i32, i32* %len, align 4
  %and450 = and i32 %332, 1
  %tobool451 = icmp ne i32 %and450, 0
  br i1 %tobool451, label %if.then.452, label %if.else.454

if.then.452:                                      ; preds = %if.end.449
  %333 = load i32, i32* %items, align 4
  %shl453 = shl i32 %333, 4
  store i32 %shl453, i32* %items, align 4
  br label %if.end.458

if.else.454:                                      ; preds = %if.end.449
  %334 = load i32, i32* %items, align 4
  %and455 = and i32 %334, 255
  %conv456 = trunc i32 %and455 to i8
  %335 = load i8*, i8** %aptr, align 8
  %incdec.ptr457 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %incdec.ptr457, i8** %aptr, align 8
  store i8 %conv456, i8* %335, align 1
  store i32 0, i32* %items, align 4
  br label %if.end.458

if.end.458:                                       ; preds = %if.else.454, %if.then.452
  br label %for.cond.417

for.end.459:                                      ; preds = %for.cond.417
  br label %if.end.506

if.else.460:                                      ; preds = %if.end.413
  store i32 0, i32* %len, align 4
  br label %for.cond.461

for.cond.461:                                     ; preds = %if.end.504, %if.else.460
  %336 = load i32, i32* %len, align 4
  %inc462 = add nsw i32 %336, 1
  store i32 %inc462, i32* %len, align 4
  %337 = load i32, i32* %aint, align 4
  %cmp463 = icmp slt i32 %336, %337
  br i1 %cmp463, label %for.body.465, label %for.end.505

for.body.465:                                     ; preds = %for.cond.461
  %338 = load i8*, i8** %str345, align 8
  %339 = load i8, i8* %338, align 1
  %conv466 = sext i8 %339 to i32
  %cmp467 = icmp sge i32 %conv466, 65
  br i1 %cmp467, label %land.lhs.true.469, label %lor.lhs.false.473

land.lhs.true.469:                                ; preds = %for.body.465
  %340 = load i8*, i8** %str345, align 8
  %341 = load i8, i8* %340, align 1
  %conv470 = sext i8 %341 to i32
  %cmp471 = icmp sle i32 %conv470, 90
  br i1 %cmp471, label %if.then.481, label %lor.lhs.false.473

lor.lhs.false.473:                                ; preds = %land.lhs.true.469, %for.body.465
  %342 = load i8*, i8** %str345, align 8
  %343 = load i8, i8* %342, align 1
  %conv474 = sext i8 %343 to i32
  %cmp475 = icmp sge i32 %conv474, 97
  br i1 %cmp475, label %land.lhs.true.477, label %if.else.489

land.lhs.true.477:                                ; preds = %lor.lhs.false.473
  %344 = load i8*, i8** %str345, align 8
  %345 = load i8, i8* %344, align 1
  %conv478 = sext i8 %345 to i32
  %cmp479 = icmp sle i32 %conv478, 122
  br i1 %cmp479, label %if.then.481, label %if.else.489

if.then.481:                                      ; preds = %land.lhs.true.477, %land.lhs.true.469
  %346 = load i8*, i8** %str345, align 8
  %incdec.ptr482 = getelementptr inbounds i8, i8* %346, i32 1
  store i8* %incdec.ptr482, i8** %str345, align 8
  %347 = load i8, i8* %346, align 1
  %conv483 = sext i8 %347 to i32
  %and484 = and i32 %conv483, 15
  %add485 = add nsw i32 %and484, 9
  %and486 = and i32 %add485, 15
  %shl487 = shl i32 %and486, 4
  %348 = load i32, i32* %items, align 4
  %or488 = or i32 %348, %shl487
  store i32 %or488, i32* %items, align 4
  br label %if.end.495

if.else.489:                                      ; preds = %land.lhs.true.477, %lor.lhs.false.473
  %349 = load i8*, i8** %str345, align 8
  %incdec.ptr490 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %incdec.ptr490, i8** %str345, align 8
  %350 = load i8, i8* %349, align 1
  %conv491 = sext i8 %350 to i32
  %and492 = and i32 %conv491, 15
  %shl493 = shl i32 %and492, 4
  %351 = load i32, i32* %items, align 4
  %or494 = or i32 %351, %shl493
  store i32 %or494, i32* %items, align 4
  br label %if.end.495

if.end.495:                                       ; preds = %if.else.489, %if.then.481
  %352 = load i32, i32* %len, align 4
  %and496 = and i32 %352, 1
  %tobool497 = icmp ne i32 %and496, 0
  br i1 %tobool497, label %if.then.498, label %if.else.500

if.then.498:                                      ; preds = %if.end.495
  %353 = load i32, i32* %items, align 4
  %shr499 = ashr i32 %353, 4
  store i32 %shr499, i32* %items, align 4
  br label %if.end.504

if.else.500:                                      ; preds = %if.end.495
  %354 = load i32, i32* %items, align 4
  %and501 = and i32 %354, 255
  %conv502 = trunc i32 %and501 to i8
  %355 = load i8*, i8** %aptr, align 8
  %incdec.ptr503 = getelementptr inbounds i8, i8* %355, i32 1
  store i8* %incdec.ptr503, i8** %aptr, align 8
  store i8 %conv502, i8* %355, align 1
  store i32 0, i32* %items, align 4
  br label %if.end.504

if.end.504:                                       ; preds = %if.else.500, %if.then.498
  br label %for.cond.461

for.end.505:                                      ; preds = %for.cond.461
  br label %if.end.506

if.end.506:                                       ; preds = %for.end.505, %for.end.459
  %356 = load i32, i32* %aint, align 4
  %and507 = and i32 %356, 1
  %tobool508 = icmp ne i32 %and507, 0
  br i1 %tobool508, label %if.then.509, label %if.end.513

if.then.509:                                      ; preds = %if.end.506
  %357 = load i32, i32* %items, align 4
  %and510 = and i32 %357, 255
  %conv511 = trunc i32 %and510 to i8
  %358 = load i8*, i8** %aptr, align 8
  %incdec.ptr512 = getelementptr inbounds i8, i8* %358, i32 1
  store i8* %incdec.ptr512, i8** %aptr, align 8
  store i8 %conv511, i8* %358, align 1
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.509, %if.end.506
  %359 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any514 = getelementptr inbounds %struct.sv, %struct.sv* %359, i32 0, i32 0
  %360 = load i8*, i8** %sv_any514, align 8
  %361 = bitcast i8* %360 to %struct.xpv*
  %xpv_pv515 = getelementptr inbounds %struct.xpv, %struct.xpv* %361, i32 0, i32 0
  %362 = load i8*, i8** %xpv_pv515, align 8
  %363 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any516 = getelementptr inbounds %struct.sv, %struct.sv* %363, i32 0, i32 0
  %364 = load i8*, i8** %sv_any516, align 8
  %365 = bitcast i8* %364 to %struct.xpv*
  %xpv_cur517 = getelementptr inbounds %struct.xpv, %struct.xpv* %365, i32 0, i32 1
  %366 = load i64, i64* %xpv_cur517, align 8
  %add.ptr518 = getelementptr inbounds i8, i8* %362, i64 %366
  store i8* %add.ptr518, i8** %str345, align 8
  br label %while.cond.519

while.cond.519:                                   ; preds = %while.body.522, %if.end.513
  %367 = load i8*, i8** %aptr, align 8
  %368 = load i8*, i8** %str345, align 8
  %cmp520 = icmp ule i8* %367, %368
  br i1 %cmp520, label %while.body.522, label %while.end.524

while.body.522:                                   ; preds = %while.cond.519
  %369 = load i8*, i8** %aptr, align 8
  %incdec.ptr523 = getelementptr inbounds i8, i8* %369, i32 1
  store i8* %incdec.ptr523, i8** %aptr, align 8
  store i8 0, i8* %369, align 1
  br label %while.cond.519

while.end.524:                                    ; preds = %while.cond.519
  %370 = load i32, i32* %saveitems346, align 4
  store i32 %370, i32* %items, align 4
  br label %sw.epilog.1719

sw.bb.525:                                        ; preds = %if.end.43, %if.end.43
  br label %while.cond.526

while.cond.526:                                   ; preds = %sw.epilog.640, %sw.bb.525
  %371 = load i32, i32* %len, align 4
  %dec527 = add nsw i32 %371, -1
  store i32 %dec527, i32* %len, align 4
  %cmp528 = icmp sgt i32 %371, 0
  br i1 %cmp528, label %while.body.530, label %while.end.641

while.body.530:                                   ; preds = %while.cond.526
  %372 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool531 = icmp ne %struct.sv* %372, null
  br i1 %tobool531, label %cond.true.532, label %cond.false.533

cond.true.532:                                    ; preds = %while.body.530
  %373 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.542

cond.false.533:                                   ; preds = %while.body.530
  %374 = load i32, i32* %items, align 4
  %dec534 = add nsw i32 %374, -1
  store i32 %dec534, i32* %items, align 4
  %cmp535 = icmp sgt i32 %374, 0
  br i1 %cmp535, label %cond.true.537, label %cond.false.539

cond.true.537:                                    ; preds = %cond.false.533
  %375 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr538 = getelementptr inbounds %struct.sv*, %struct.sv** %375, i32 1
  store %struct.sv** %incdec.ptr538, %struct.sv*** %beglist.addr, align 8
  %376 = load %struct.sv*, %struct.sv** %375, align 8
  br label %cond.end.540

cond.false.539:                                   ; preds = %cond.false.533
  br label %cond.end.540

cond.end.540:                                     ; preds = %cond.false.539, %cond.true.537
  %cond541 = phi %struct.sv* [ %376, %cond.true.537 ], [ @PL_sv_no, %cond.false.539 ]
  br label %cond.end.542

cond.end.542:                                     ; preds = %cond.end.540, %cond.true.532
  %cond543 = phi %struct.sv* [ %373, %cond.true.532 ], [ %cond541, %cond.end.540 ]
  store %struct.sv* %cond543, %struct.sv** %fromstr, align 8
  %377 = load i32, i32* %datumtype, align 4
  %and544 = and i32 %377, 255
  switch i32 %and544, label %sw.epilog.640 [
    i32 67, label %sw.bb.545
    i32 99, label %sw.bb.591
  ]

sw.bb.545:                                        ; preds = %cond.end.542
  %378 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags546 = getelementptr inbounds %struct.sv, %struct.sv* %378, i32 0, i32 2
  %379 = load i32, i32* %sv_flags546, align 4
  %and547 = and i32 %379, 65536
  %tobool548 = icmp ne i32 %and547, 0
  br i1 %tobool548, label %cond.true.549, label %cond.false.551

cond.true.549:                                    ; preds = %sw.bb.545
  %380 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any550 = getelementptr inbounds %struct.sv, %struct.sv* %380, i32 0, i32 0
  %381 = load i8*, i8** %sv_any550, align 8
  %382 = bitcast i8* %381 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %382, i32 0, i32 3
  %383 = load i64, i64* %xiv_iv, align 8
  br label %cond.end.553

cond.false.551:                                   ; preds = %sw.bb.545
  %384 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call552 = call i64 @Perl_sv_2iv(%struct.sv* %384)
  br label %cond.end.553

cond.end.553:                                     ; preds = %cond.false.551, %cond.true.549
  %cond554 = phi i64 [ %383, %cond.true.549 ], [ %call552, %cond.false.551 ]
  %conv555 = trunc i64 %cond554 to i32
  store i32 %conv555, i32* %aint, align 4
  %385 = load i32, i32* %aint, align 4
  %cmp556 = icmp slt i32 %385, 0
  br i1 %cmp556, label %land.lhs.true.561, label %lor.lhs.false.558

lor.lhs.false.558:                                ; preds = %cond.end.553
  %386 = load i32, i32* %aint, align 4
  %cmp559 = icmp sgt i32 %386, 255
  br i1 %cmp559, label %land.lhs.true.561, label %if.end.588

land.lhs.true.561:                                ; preds = %lor.lhs.false.558, %cond.end.553
  %387 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %387, i32 0, i32 14
  %388 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp562 = icmp ne %struct.sv* %388, null
  br i1 %cmp562, label %land.lhs.true.564, label %lor.lhs.false.579

land.lhs.true.564:                                ; preds = %land.lhs.true.561
  %389 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings565 = getelementptr inbounds %struct.cop, %struct.cop* %389, i32 0, i32 14
  %390 = load %struct.sv*, %struct.sv** %cop_warnings565, align 8
  %cmp566 = icmp ne %struct.sv* %390, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp566, label %land.lhs.true.568, label %lor.lhs.false.579

land.lhs.true.568:                                ; preds = %land.lhs.true.564
  %391 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings569 = getelementptr inbounds %struct.cop, %struct.cop* %391, i32 0, i32 14
  %392 = load %struct.sv*, %struct.sv** %cop_warnings569, align 8
  %cmp570 = icmp eq %struct.sv* %392, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp570, label %if.then.587, label %lor.lhs.false.572

lor.lhs.false.572:                                ; preds = %land.lhs.true.568
  %393 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings573 = getelementptr inbounds %struct.cop, %struct.cop* %393, i32 0, i32 14
  %394 = load %struct.sv*, %struct.sv** %cop_warnings573, align 8
  %sv_any574 = getelementptr inbounds %struct.sv, %struct.sv* %394, i32 0, i32 0
  %395 = load i8*, i8** %sv_any574, align 8
  %396 = bitcast i8* %395 to %struct.xpv*
  %xpv_pv575 = getelementptr inbounds %struct.xpv, %struct.xpv* %396, i32 0, i32 0
  %397 = load i8*, i8** %xpv_pv575, align 8
  %arrayidx = getelementptr inbounds i8, i8* %397, i64 4
  %398 = load i8, i8* %arrayidx, align 1
  %conv576 = sext i8 %398 to i32
  %and577 = and i32 %conv576, 1
  %tobool578 = icmp ne i32 %and577, 0
  br i1 %tobool578, label %if.then.587, label %lor.lhs.false.579

lor.lhs.false.579:                                ; preds = %lor.lhs.false.572, %land.lhs.true.564, %land.lhs.true.561
  %399 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings580 = getelementptr inbounds %struct.cop, %struct.cop* %399, i32 0, i32 14
  %400 = load %struct.sv*, %struct.sv** %cop_warnings580, align 8
  %cmp581 = icmp eq %struct.sv* %400, null
  br i1 %cmp581, label %land.lhs.true.583, label %if.end.588

land.lhs.true.583:                                ; preds = %lor.lhs.false.579
  %401 = load i8, i8* @PL_dowarn, align 1
  %conv584 = zext i8 %401 to i32
  %and585 = and i32 %conv584, 1
  %tobool586 = icmp ne i32 %and585, 0
  br i1 %tobool586, label %if.then.587, label %if.end.588

if.then.587:                                      ; preds = %land.lhs.true.583, %lor.lhs.false.572, %land.lhs.true.568
  call void (i32, i8*, ...) @Perl_warner(i32 16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.588

if.end.588:                                       ; preds = %if.then.587, %land.lhs.true.583, %lor.lhs.false.579, %lor.lhs.false.558
  %402 = load i32, i32* %aint, align 4
  %and589 = and i32 %402, 255
  %conv590 = trunc i32 %and589 to i8
  store i8 %conv590, i8* %achar, align 1
  %403 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %403, i8* %achar, i64 1, i32 2)
  br label %sw.epilog.640

sw.bb.591:                                        ; preds = %cond.end.542
  %404 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags592 = getelementptr inbounds %struct.sv, %struct.sv* %404, i32 0, i32 2
  %405 = load i32, i32* %sv_flags592, align 4
  %and593 = and i32 %405, 65536
  %tobool594 = icmp ne i32 %and593, 0
  br i1 %tobool594, label %cond.true.595, label %cond.false.598

cond.true.595:                                    ; preds = %sw.bb.591
  %406 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any596 = getelementptr inbounds %struct.sv, %struct.sv* %406, i32 0, i32 0
  %407 = load i8*, i8** %sv_any596, align 8
  %408 = bitcast i8* %407 to %struct.xpviv*
  %xiv_iv597 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %408, i32 0, i32 3
  %409 = load i64, i64* %xiv_iv597, align 8
  br label %cond.end.600

cond.false.598:                                   ; preds = %sw.bb.591
  %410 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call599 = call i64 @Perl_sv_2iv(%struct.sv* %410)
  br label %cond.end.600

cond.end.600:                                     ; preds = %cond.false.598, %cond.true.595
  %cond601 = phi i64 [ %409, %cond.true.595 ], [ %call599, %cond.false.598 ]
  %conv602 = trunc i64 %cond601 to i32
  store i32 %conv602, i32* %aint, align 4
  %411 = load i32, i32* %aint, align 4
  %cmp603 = icmp slt i32 %411, -128
  br i1 %cmp603, label %land.lhs.true.608, label %lor.lhs.false.605

lor.lhs.false.605:                                ; preds = %cond.end.600
  %412 = load i32, i32* %aint, align 4
  %cmp606 = icmp sgt i32 %412, 127
  br i1 %cmp606, label %land.lhs.true.608, label %if.end.637

land.lhs.true.608:                                ; preds = %lor.lhs.false.605, %cond.end.600
  %413 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings609 = getelementptr inbounds %struct.cop, %struct.cop* %413, i32 0, i32 14
  %414 = load %struct.sv*, %struct.sv** %cop_warnings609, align 8
  %cmp610 = icmp ne %struct.sv* %414, null
  br i1 %cmp610, label %land.lhs.true.612, label %lor.lhs.false.628

land.lhs.true.612:                                ; preds = %land.lhs.true.608
  %415 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings613 = getelementptr inbounds %struct.cop, %struct.cop* %415, i32 0, i32 14
  %416 = load %struct.sv*, %struct.sv** %cop_warnings613, align 8
  %cmp614 = icmp ne %struct.sv* %416, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp614, label %land.lhs.true.616, label %lor.lhs.false.628

land.lhs.true.616:                                ; preds = %land.lhs.true.612
  %417 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings617 = getelementptr inbounds %struct.cop, %struct.cop* %417, i32 0, i32 14
  %418 = load %struct.sv*, %struct.sv** %cop_warnings617, align 8
  %cmp618 = icmp eq %struct.sv* %418, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp618, label %if.then.636, label %lor.lhs.false.620

lor.lhs.false.620:                                ; preds = %land.lhs.true.616
  %419 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings621 = getelementptr inbounds %struct.cop, %struct.cop* %419, i32 0, i32 14
  %420 = load %struct.sv*, %struct.sv** %cop_warnings621, align 8
  %sv_any622 = getelementptr inbounds %struct.sv, %struct.sv* %420, i32 0, i32 0
  %421 = load i8*, i8** %sv_any622, align 8
  %422 = bitcast i8* %421 to %struct.xpv*
  %xpv_pv623 = getelementptr inbounds %struct.xpv, %struct.xpv* %422, i32 0, i32 0
  %423 = load i8*, i8** %xpv_pv623, align 8
  %arrayidx624 = getelementptr inbounds i8, i8* %423, i64 4
  %424 = load i8, i8* %arrayidx624, align 1
  %conv625 = sext i8 %424 to i32
  %and626 = and i32 %conv625, 1
  %tobool627 = icmp ne i32 %and626, 0
  br i1 %tobool627, label %if.then.636, label %lor.lhs.false.628

lor.lhs.false.628:                                ; preds = %lor.lhs.false.620, %land.lhs.true.612, %land.lhs.true.608
  %425 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings629 = getelementptr inbounds %struct.cop, %struct.cop* %425, i32 0, i32 14
  %426 = load %struct.sv*, %struct.sv** %cop_warnings629, align 8
  %cmp630 = icmp eq %struct.sv* %426, null
  br i1 %cmp630, label %land.lhs.true.632, label %if.end.637

land.lhs.true.632:                                ; preds = %lor.lhs.false.628
  %427 = load i8, i8* @PL_dowarn, align 1
  %conv633 = zext i8 %427 to i32
  %and634 = and i32 %conv633, 1
  %tobool635 = icmp ne i32 %and634, 0
  br i1 %tobool635, label %if.then.636, label %if.end.637

if.then.636:                                      ; preds = %land.lhs.true.632, %lor.lhs.false.620, %land.lhs.true.616
  call void (i32, i8*, ...) @Perl_warner(i32 16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.637

if.end.637:                                       ; preds = %if.then.636, %land.lhs.true.632, %lor.lhs.false.628, %lor.lhs.false.605
  %428 = load i32, i32* %aint, align 4
  %and638 = and i32 %428, 255
  %conv639 = trunc i32 %and638 to i8
  store i8 %conv639, i8* %achar, align 1
  %429 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %429, i8* %achar, i64 1, i32 2)
  br label %sw.epilog.640

sw.epilog.640:                                    ; preds = %cond.end.542, %if.end.637, %if.end.588
  br label %while.cond.526

while.end.641:                                    ; preds = %while.cond.526
  br label %sw.epilog.1719

sw.bb.642:                                        ; preds = %if.end.43
  br label %while.cond.643

while.cond.643:                                   ; preds = %lor.end, %sw.bb.642
  %430 = load i32, i32* %len, align 4
  %dec644 = add nsw i32 %430, -1
  store i32 %dec644, i32* %len, align 4
  %cmp645 = icmp sgt i32 %430, 0
  br i1 %cmp645, label %while.body.647, label %while.end.731

while.body.647:                                   ; preds = %while.cond.643
  %431 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool648 = icmp ne %struct.sv* %431, null
  br i1 %tobool648, label %cond.true.649, label %cond.false.650

cond.true.649:                                    ; preds = %while.body.647
  %432 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.659

cond.false.650:                                   ; preds = %while.body.647
  %433 = load i32, i32* %items, align 4
  %dec651 = add nsw i32 %433, -1
  store i32 %dec651, i32* %items, align 4
  %cmp652 = icmp sgt i32 %433, 0
  br i1 %cmp652, label %cond.true.654, label %cond.false.656

cond.true.654:                                    ; preds = %cond.false.650
  %434 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr655 = getelementptr inbounds %struct.sv*, %struct.sv** %434, i32 1
  store %struct.sv** %incdec.ptr655, %struct.sv*** %beglist.addr, align 8
  %435 = load %struct.sv*, %struct.sv** %434, align 8
  br label %cond.end.657

cond.false.656:                                   ; preds = %cond.false.650
  br label %cond.end.657

cond.end.657:                                     ; preds = %cond.false.656, %cond.true.654
  %cond658 = phi %struct.sv* [ %435, %cond.true.654 ], [ @PL_sv_no, %cond.false.656 ]
  br label %cond.end.659

cond.end.659:                                     ; preds = %cond.end.657, %cond.true.649
  %cond660 = phi %struct.sv* [ %432, %cond.true.649 ], [ %cond658, %cond.end.657 ]
  store %struct.sv* %cond660, %struct.sv** %fromstr, align 8
  %436 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags661 = getelementptr inbounds %struct.sv, %struct.sv* %436, i32 0, i32 2
  %437 = load i32, i32* %sv_flags661, align 4
  %and662 = and i32 %437, 65536
  %tobool663 = icmp ne i32 %and662, 0
  br i1 %tobool663, label %cond.true.664, label %cond.false.666

cond.true.664:                                    ; preds = %cond.end.659
  %438 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any665 = getelementptr inbounds %struct.sv, %struct.sv* %438, i32 0, i32 0
  %439 = load i8*, i8** %sv_any665, align 8
  %440 = bitcast i8* %439 to %struct.xpvuv*
  %xuv_uv = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %440, i32 0, i32 3
  %441 = load i64, i64* %xuv_uv, align 8
  br label %cond.end.668

cond.false.666:                                   ; preds = %cond.end.659
  %442 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call667 = call i64 @Perl_sv_2uv(%struct.sv* %442)
  br label %cond.end.668

cond.end.668:                                     ; preds = %cond.false.666, %cond.true.664
  %cond669 = phi i64 [ %441, %cond.true.664 ], [ %call667, %cond.false.666 ]
  %conv670 = trunc i64 %cond669 to i32
  store i32 %conv670, i32* %auint, align 4
  %443 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any671 = getelementptr inbounds %struct.sv, %struct.sv* %443, i32 0, i32 0
  %444 = load i8*, i8** %sv_any671, align 8
  %445 = bitcast i8* %444 to %struct.xpv*
  %xpv_len672 = getelementptr inbounds %struct.xpv, %struct.xpv* %445, i32 0, i32 2
  %446 = load i64, i64* %xpv_len672, align 8
  %447 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any673 = getelementptr inbounds %struct.sv, %struct.sv* %447, i32 0, i32 0
  %448 = load i8*, i8** %sv_any673, align 8
  %449 = bitcast i8* %448 to %struct.xpv*
  %xpv_cur674 = getelementptr inbounds %struct.xpv, %struct.xpv* %449, i32 0, i32 1
  %450 = load i64, i64* %xpv_cur674, align 8
  %add675 = add i64 %450, 13
  %add676 = add i64 %add675, 1
  %cmp677 = icmp ult i64 %446, %add676
  br i1 %cmp677, label %cond.true.679, label %cond.false.685

cond.true.679:                                    ; preds = %cond.end.668
  %451 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %452 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any680 = getelementptr inbounds %struct.sv, %struct.sv* %452, i32 0, i32 0
  %453 = load i8*, i8** %sv_any680, align 8
  %454 = bitcast i8* %453 to %struct.xpv*
  %xpv_cur681 = getelementptr inbounds %struct.xpv, %struct.xpv* %454, i32 0, i32 1
  %455 = load i64, i64* %xpv_cur681, align 8
  %add682 = add i64 %455, 13
  %add683 = add i64 %add682, 1
  %call684 = call i8* @Perl_sv_grow(%struct.sv* %451, i64 %add683)
  br label %cond.end.688

cond.false.685:                                   ; preds = %cond.end.668
  %456 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any686 = getelementptr inbounds %struct.sv, %struct.sv* %456, i32 0, i32 0
  %457 = load i8*, i8** %sv_any686, align 8
  %458 = bitcast i8* %457 to %struct.xpv*
  %xpv_pv687 = getelementptr inbounds %struct.xpv, %struct.xpv* %458, i32 0, i32 0
  %459 = load i8*, i8** %xpv_pv687, align 8
  br label %cond.end.688

cond.end.688:                                     ; preds = %cond.false.685, %cond.true.679
  %cond689 = phi i8* [ %call684, %cond.true.679 ], [ %459, %cond.false.685 ]
  %460 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any690 = getelementptr inbounds %struct.sv, %struct.sv* %460, i32 0, i32 0
  %461 = load i8*, i8** %sv_any690, align 8
  %462 = bitcast i8* %461 to %struct.xpv*
  %xpv_pv691 = getelementptr inbounds %struct.xpv, %struct.xpv* %462, i32 0, i32 0
  %463 = load i8*, i8** %xpv_pv691, align 8
  %464 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any692 = getelementptr inbounds %struct.sv, %struct.sv* %464, i32 0, i32 0
  %465 = load i8*, i8** %sv_any692, align 8
  %466 = bitcast i8* %465 to %struct.xpv*
  %xpv_cur693 = getelementptr inbounds %struct.xpv, %struct.xpv* %466, i32 0, i32 1
  %467 = load i64, i64* %xpv_cur693, align 8
  %add.ptr694 = getelementptr inbounds i8, i8* %463, i64 %467
  %468 = load i32, i32* %auint, align 4
  %conv695 = zext i32 %468 to i64
  %469 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings696 = getelementptr inbounds %struct.cop, %struct.cop* %469, i32 0, i32 14
  %470 = load %struct.sv*, %struct.sv** %cop_warnings696, align 8
  %cmp697 = icmp ne %struct.sv* %470, null
  br i1 %cmp697, label %land.lhs.true.699, label %lor.rhs

land.lhs.true.699:                                ; preds = %cond.end.688
  %471 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings700 = getelementptr inbounds %struct.cop, %struct.cop* %471, i32 0, i32 14
  %472 = load %struct.sv*, %struct.sv** %cop_warnings700, align 8
  %cmp701 = icmp ne %struct.sv* %472, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp701, label %land.lhs.true.703, label %lor.rhs

land.lhs.true.703:                                ; preds = %land.lhs.true.699
  %473 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings704 = getelementptr inbounds %struct.cop, %struct.cop* %473, i32 0, i32 14
  %474 = load %struct.sv*, %struct.sv** %cop_warnings704, align 8
  %cmp705 = icmp eq %struct.sv* %474, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp705, label %lor.end, label %lor.lhs.false.707

lor.lhs.false.707:                                ; preds = %land.lhs.true.703
  %475 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings708 = getelementptr inbounds %struct.cop, %struct.cop* %475, i32 0, i32 14
  %476 = load %struct.sv*, %struct.sv** %cop_warnings708, align 8
  %sv_any709 = getelementptr inbounds %struct.sv, %struct.sv* %476, i32 0, i32 0
  %477 = load i8*, i8** %sv_any709, align 8
  %478 = bitcast i8* %477 to %struct.xpv*
  %xpv_pv710 = getelementptr inbounds %struct.xpv, %struct.xpv* %478, i32 0, i32 0
  %479 = load i8*, i8** %xpv_pv710, align 8
  %arrayidx711 = getelementptr inbounds i8, i8* %479, i64 11
  %480 = load i8, i8* %arrayidx711, align 1
  %conv712 = sext i8 %480 to i32
  %and713 = and i32 %conv712, 1
  %tobool714 = icmp ne i32 %and713, 0
  br i1 %tobool714, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.707, %land.lhs.true.699, %cond.end.688
  %481 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings715 = getelementptr inbounds %struct.cop, %struct.cop* %481, i32 0, i32 14
  %482 = load %struct.sv*, %struct.sv** %cop_warnings715, align 8
  %cmp716 = icmp eq %struct.sv* %482, null
  br i1 %cmp716, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %483 = load i8, i8* @PL_dowarn, align 1
  %conv718 = zext i8 %483 to i32
  %and719 = and i32 %conv718, 1
  %tobool720 = icmp ne i32 %and719, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %484 = phi i1 [ false, %lor.rhs ], [ %tobool720, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false.707, %land.lhs.true.703
  %485 = phi i1 [ true, %lor.lhs.false.707 ], [ true, %land.lhs.true.703 ], [ %484, %land.end ]
  %cond721 = select i1 %485, i32 0, i32 15
  %conv722 = sext i32 %cond721 to i64
  %call723 = call i8* @Perl_uvchr_to_utf8_flags(i8* %add.ptr694, i64 %conv695, i64 %conv722)
  %486 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any724 = getelementptr inbounds %struct.sv, %struct.sv* %486, i32 0, i32 0
  %487 = load i8*, i8** %sv_any724, align 8
  %488 = bitcast i8* %487 to %struct.xpv*
  %xpv_pv725 = getelementptr inbounds %struct.xpv, %struct.xpv* %488, i32 0, i32 0
  %489 = load i8*, i8** %xpv_pv725, align 8
  %sub.ptr.lhs.cast726 = ptrtoint i8* %call723 to i64
  %sub.ptr.rhs.cast727 = ptrtoint i8* %489 to i64
  %sub.ptr.sub728 = sub i64 %sub.ptr.lhs.cast726, %sub.ptr.rhs.cast727
  %490 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any729 = getelementptr inbounds %struct.sv, %struct.sv* %490, i32 0, i32 0
  %491 = load i8*, i8** %sv_any729, align 8
  %492 = bitcast i8* %491 to %struct.xpv*
  %xpv_cur730 = getelementptr inbounds %struct.xpv, %struct.xpv* %492, i32 0, i32 1
  store i64 %sub.ptr.sub728, i64* %xpv_cur730, align 8
  store i64 %sub.ptr.sub728, i64* %tmp
  %493 = load i64, i64* %tmp
  br label %while.cond.643

while.end.731:                                    ; preds = %while.cond.643
  %494 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any732 = getelementptr inbounds %struct.sv, %struct.sv* %494, i32 0, i32 0
  %495 = load i8*, i8** %sv_any732, align 8
  %496 = bitcast i8* %495 to %struct.xpv*
  %xpv_pv733 = getelementptr inbounds %struct.xpv, %struct.xpv* %496, i32 0, i32 0
  %497 = load i8*, i8** %xpv_pv733, align 8
  %498 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any734 = getelementptr inbounds %struct.sv, %struct.sv* %498, i32 0, i32 0
  %499 = load i8*, i8** %sv_any734, align 8
  %500 = bitcast i8* %499 to %struct.xpv*
  %xpv_cur735 = getelementptr inbounds %struct.xpv, %struct.xpv* %500, i32 0, i32 1
  %501 = load i64, i64* %xpv_cur735, align 8
  %add.ptr736 = getelementptr inbounds i8, i8* %497, i64 %501
  store i8 0, i8* %add.ptr736, align 1
  br label %sw.epilog.1719

sw.bb.737:                                        ; preds = %if.end.43
  br label %while.cond.738

while.cond.738:                                   ; preds = %cond.end.763, %sw.bb.737
  %502 = load i32, i32* %len, align 4
  %dec739 = add nsw i32 %502, -1
  store i32 %dec739, i32* %len, align 4
  %cmp740 = icmp sgt i32 %502, 0
  br i1 %cmp740, label %while.body.742, label %while.end.766

while.body.742:                                   ; preds = %while.cond.738
  %503 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool743 = icmp ne %struct.sv* %503, null
  br i1 %tobool743, label %cond.true.744, label %cond.false.745

cond.true.744:                                    ; preds = %while.body.742
  %504 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.754

cond.false.745:                                   ; preds = %while.body.742
  %505 = load i32, i32* %items, align 4
  %dec746 = add nsw i32 %505, -1
  store i32 %dec746, i32* %items, align 4
  %cmp747 = icmp sgt i32 %505, 0
  br i1 %cmp747, label %cond.true.749, label %cond.false.751

cond.true.749:                                    ; preds = %cond.false.745
  %506 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr750 = getelementptr inbounds %struct.sv*, %struct.sv** %506, i32 1
  store %struct.sv** %incdec.ptr750, %struct.sv*** %beglist.addr, align 8
  %507 = load %struct.sv*, %struct.sv** %506, align 8
  br label %cond.end.752

cond.false.751:                                   ; preds = %cond.false.745
  br label %cond.end.752

cond.end.752:                                     ; preds = %cond.false.751, %cond.true.749
  %cond753 = phi %struct.sv* [ %507, %cond.true.749 ], [ @PL_sv_no, %cond.false.751 ]
  br label %cond.end.754

cond.end.754:                                     ; preds = %cond.end.752, %cond.true.744
  %cond755 = phi %struct.sv* [ %504, %cond.true.744 ], [ %cond753, %cond.end.752 ]
  store %struct.sv* %cond755, %struct.sv** %fromstr, align 8
  %508 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags756 = getelementptr inbounds %struct.sv, %struct.sv* %508, i32 0, i32 2
  %509 = load i32, i32* %sv_flags756, align 4
  %and757 = and i32 %509, 131072
  %tobool758 = icmp ne i32 %and757, 0
  br i1 %tobool758, label %cond.true.759, label %cond.false.761

cond.true.759:                                    ; preds = %cond.end.754
  %510 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any760 = getelementptr inbounds %struct.sv, %struct.sv* %510, i32 0, i32 0
  %511 = load i8*, i8** %sv_any760, align 8
  %512 = bitcast i8* %511 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %512, i32 0, i32 4
  %513 = load double, double* %xnv_nv, align 8
  br label %cond.end.763

cond.false.761:                                   ; preds = %cond.end.754
  %514 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call762 = call double @Perl_sv_2nv(%struct.sv* %514)
  br label %cond.end.763

cond.end.763:                                     ; preds = %cond.false.761, %cond.true.759
  %cond764 = phi double [ %513, %cond.true.759 ], [ %call762, %cond.false.761 ]
  %conv765 = fptrunc double %cond764 to float
  store float %conv765, float* %afloat, align 4
  %515 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %516 = bitcast float* %afloat to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %515, i8* %516, i64 4, i32 2)
  br label %while.cond.738

while.end.766:                                    ; preds = %while.cond.738
  br label %sw.epilog.1719

sw.bb.767:                                        ; preds = %if.end.43
  br label %while.cond.768

while.cond.768:                                   ; preds = %cond.end.794, %sw.bb.767
  %517 = load i32, i32* %len, align 4
  %dec769 = add nsw i32 %517, -1
  store i32 %dec769, i32* %len, align 4
  %cmp770 = icmp sgt i32 %517, 0
  br i1 %cmp770, label %while.body.772, label %while.end.796

while.body.772:                                   ; preds = %while.cond.768
  %518 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool773 = icmp ne %struct.sv* %518, null
  br i1 %tobool773, label %cond.true.774, label %cond.false.775

cond.true.774:                                    ; preds = %while.body.772
  %519 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.784

cond.false.775:                                   ; preds = %while.body.772
  %520 = load i32, i32* %items, align 4
  %dec776 = add nsw i32 %520, -1
  store i32 %dec776, i32* %items, align 4
  %cmp777 = icmp sgt i32 %520, 0
  br i1 %cmp777, label %cond.true.779, label %cond.false.781

cond.true.779:                                    ; preds = %cond.false.775
  %521 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr780 = getelementptr inbounds %struct.sv*, %struct.sv** %521, i32 1
  store %struct.sv** %incdec.ptr780, %struct.sv*** %beglist.addr, align 8
  %522 = load %struct.sv*, %struct.sv** %521, align 8
  br label %cond.end.782

cond.false.781:                                   ; preds = %cond.false.775
  br label %cond.end.782

cond.end.782:                                     ; preds = %cond.false.781, %cond.true.779
  %cond783 = phi %struct.sv* [ %522, %cond.true.779 ], [ @PL_sv_no, %cond.false.781 ]
  br label %cond.end.784

cond.end.784:                                     ; preds = %cond.end.782, %cond.true.774
  %cond785 = phi %struct.sv* [ %519, %cond.true.774 ], [ %cond783, %cond.end.782 ]
  store %struct.sv* %cond785, %struct.sv** %fromstr, align 8
  %523 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags786 = getelementptr inbounds %struct.sv, %struct.sv* %523, i32 0, i32 2
  %524 = load i32, i32* %sv_flags786, align 4
  %and787 = and i32 %524, 131072
  %tobool788 = icmp ne i32 %and787, 0
  br i1 %tobool788, label %cond.true.789, label %cond.false.792

cond.true.789:                                    ; preds = %cond.end.784
  %525 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any790 = getelementptr inbounds %struct.sv, %struct.sv* %525, i32 0, i32 0
  %526 = load i8*, i8** %sv_any790, align 8
  %527 = bitcast i8* %526 to %struct.xpvnv*
  %xnv_nv791 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %527, i32 0, i32 4
  %528 = load double, double* %xnv_nv791, align 8
  br label %cond.end.794

cond.false.792:                                   ; preds = %cond.end.784
  %529 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call793 = call double @Perl_sv_2nv(%struct.sv* %529)
  br label %cond.end.794

cond.end.794:                                     ; preds = %cond.false.792, %cond.true.789
  %cond795 = phi double [ %528, %cond.true.789 ], [ %call793, %cond.false.792 ]
  store double %cond795, double* %adouble, align 8
  %530 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %531 = bitcast double* %adouble to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %530, i8* %531, i64 8, i32 2)
  br label %while.cond.768

while.end.796:                                    ; preds = %while.cond.768
  br label %sw.epilog.1719

sw.bb.797:                                        ; preds = %if.end.43
  %532 = bitcast double* %anv to i8*
  call void @llvm.memset.p0i8.i64(i8* %532, i8 0, i64 8, i32 1, i1 false)
  br label %while.cond.798

while.cond.798:                                   ; preds = %cond.end.824, %sw.bb.797
  %533 = load i32, i32* %len, align 4
  %dec799 = add nsw i32 %533, -1
  store i32 %dec799, i32* %len, align 4
  %cmp800 = icmp sgt i32 %533, 0
  br i1 %cmp800, label %while.body.802, label %while.end.826

while.body.802:                                   ; preds = %while.cond.798
  %534 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool803 = icmp ne %struct.sv* %534, null
  br i1 %tobool803, label %cond.true.804, label %cond.false.805

cond.true.804:                                    ; preds = %while.body.802
  %535 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.814

cond.false.805:                                   ; preds = %while.body.802
  %536 = load i32, i32* %items, align 4
  %dec806 = add nsw i32 %536, -1
  store i32 %dec806, i32* %items, align 4
  %cmp807 = icmp sgt i32 %536, 0
  br i1 %cmp807, label %cond.true.809, label %cond.false.811

cond.true.809:                                    ; preds = %cond.false.805
  %537 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr810 = getelementptr inbounds %struct.sv*, %struct.sv** %537, i32 1
  store %struct.sv** %incdec.ptr810, %struct.sv*** %beglist.addr, align 8
  %538 = load %struct.sv*, %struct.sv** %537, align 8
  br label %cond.end.812

cond.false.811:                                   ; preds = %cond.false.805
  br label %cond.end.812

cond.end.812:                                     ; preds = %cond.false.811, %cond.true.809
  %cond813 = phi %struct.sv* [ %538, %cond.true.809 ], [ @PL_sv_no, %cond.false.811 ]
  br label %cond.end.814

cond.end.814:                                     ; preds = %cond.end.812, %cond.true.804
  %cond815 = phi %struct.sv* [ %535, %cond.true.804 ], [ %cond813, %cond.end.812 ]
  store %struct.sv* %cond815, %struct.sv** %fromstr, align 8
  %539 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags816 = getelementptr inbounds %struct.sv, %struct.sv* %539, i32 0, i32 2
  %540 = load i32, i32* %sv_flags816, align 4
  %and817 = and i32 %540, 131072
  %tobool818 = icmp ne i32 %and817, 0
  br i1 %tobool818, label %cond.true.819, label %cond.false.822

cond.true.819:                                    ; preds = %cond.end.814
  %541 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any820 = getelementptr inbounds %struct.sv, %struct.sv* %541, i32 0, i32 0
  %542 = load i8*, i8** %sv_any820, align 8
  %543 = bitcast i8* %542 to %struct.xpvnv*
  %xnv_nv821 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %543, i32 0, i32 4
  %544 = load double, double* %xnv_nv821, align 8
  br label %cond.end.824

cond.false.822:                                   ; preds = %cond.end.814
  %545 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call823 = call double @Perl_sv_2nv(%struct.sv* %545)
  br label %cond.end.824

cond.end.824:                                     ; preds = %cond.false.822, %cond.true.819
  %cond825 = phi double [ %544, %cond.true.819 ], [ %call823, %cond.false.822 ]
  store double %cond825, double* %anv, align 8
  %546 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %547 = bitcast double* %anv to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %546, i8* %547, i64 8, i32 2)
  br label %while.cond.798

while.end.826:                                    ; preds = %while.cond.798
  br label %sw.epilog.1719

sw.bb.827:                                        ; preds = %if.end.43
  br label %while.cond.828

while.cond.828:                                   ; preds = %cond.end.854, %sw.bb.827
  %548 = load i32, i32* %len, align 4
  %dec829 = add nsw i32 %548, -1
  store i32 %dec829, i32* %len, align 4
  %cmp830 = icmp sgt i32 %548, 0
  br i1 %cmp830, label %while.body.832, label %while.end.858

while.body.832:                                   ; preds = %while.cond.828
  %549 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool833 = icmp ne %struct.sv* %549, null
  br i1 %tobool833, label %cond.true.834, label %cond.false.835

cond.true.834:                                    ; preds = %while.body.832
  %550 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.844

cond.false.835:                                   ; preds = %while.body.832
  %551 = load i32, i32* %items, align 4
  %dec836 = add nsw i32 %551, -1
  store i32 %dec836, i32* %items, align 4
  %cmp837 = icmp sgt i32 %551, 0
  br i1 %cmp837, label %cond.true.839, label %cond.false.841

cond.true.839:                                    ; preds = %cond.false.835
  %552 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr840 = getelementptr inbounds %struct.sv*, %struct.sv** %552, i32 1
  store %struct.sv** %incdec.ptr840, %struct.sv*** %beglist.addr, align 8
  %553 = load %struct.sv*, %struct.sv** %552, align 8
  br label %cond.end.842

cond.false.841:                                   ; preds = %cond.false.835
  br label %cond.end.842

cond.end.842:                                     ; preds = %cond.false.841, %cond.true.839
  %cond843 = phi %struct.sv* [ %553, %cond.true.839 ], [ @PL_sv_no, %cond.false.841 ]
  br label %cond.end.844

cond.end.844:                                     ; preds = %cond.end.842, %cond.true.834
  %cond845 = phi %struct.sv* [ %550, %cond.true.834 ], [ %cond843, %cond.end.842 ]
  store %struct.sv* %cond845, %struct.sv** %fromstr, align 8
  %554 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags846 = getelementptr inbounds %struct.sv, %struct.sv* %554, i32 0, i32 2
  %555 = load i32, i32* %sv_flags846, align 4
  %and847 = and i32 %555, 65536
  %tobool848 = icmp ne i32 %and847, 0
  br i1 %tobool848, label %cond.true.849, label %cond.false.852

cond.true.849:                                    ; preds = %cond.end.844
  %556 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any850 = getelementptr inbounds %struct.sv, %struct.sv* %556, i32 0, i32 0
  %557 = load i8*, i8** %sv_any850, align 8
  %558 = bitcast i8* %557 to %struct.xpviv*
  %xiv_iv851 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %558, i32 0, i32 3
  %559 = load i64, i64* %xiv_iv851, align 8
  br label %cond.end.854

cond.false.852:                                   ; preds = %cond.end.844
  %560 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call853 = call i64 @Perl_sv_2iv(%struct.sv* %560)
  br label %cond.end.854

cond.end.854:                                     ; preds = %cond.false.852, %cond.true.849
  %cond855 = phi i64 [ %559, %cond.true.849 ], [ %call853, %cond.false.852 ]
  %conv856 = trunc i64 %cond855 to i16
  store i16 %conv856, i16* %ai16, align 2
  %561 = load i16, i16* %ai16, align 2
  %call857 = call signext i16 @Perl_my_swap(i16 signext %561)
  store i16 %call857, i16* %ai16, align 2
  %562 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %563 = bitcast i16* %ai16 to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %562, i8* %563, i64 2, i32 2)
  br label %while.cond.828

while.end.858:                                    ; preds = %while.cond.828
  br label %sw.epilog.1719

sw.bb.859:                                        ; preds = %if.end.43
  br label %while.cond.860

while.cond.860:                                   ; preds = %cond.end.886, %sw.bb.859
  %564 = load i32, i32* %len, align 4
  %dec861 = add nsw i32 %564, -1
  store i32 %dec861, i32* %len, align 4
  %cmp862 = icmp sgt i32 %564, 0
  br i1 %cmp862, label %while.body.864, label %while.end.890

while.body.864:                                   ; preds = %while.cond.860
  %565 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool865 = icmp ne %struct.sv* %565, null
  br i1 %tobool865, label %cond.true.866, label %cond.false.867

cond.true.866:                                    ; preds = %while.body.864
  %566 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.876

cond.false.867:                                   ; preds = %while.body.864
  %567 = load i32, i32* %items, align 4
  %dec868 = add nsw i32 %567, -1
  store i32 %dec868, i32* %items, align 4
  %cmp869 = icmp sgt i32 %567, 0
  br i1 %cmp869, label %cond.true.871, label %cond.false.873

cond.true.871:                                    ; preds = %cond.false.867
  %568 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr872 = getelementptr inbounds %struct.sv*, %struct.sv** %568, i32 1
  store %struct.sv** %incdec.ptr872, %struct.sv*** %beglist.addr, align 8
  %569 = load %struct.sv*, %struct.sv** %568, align 8
  br label %cond.end.874

cond.false.873:                                   ; preds = %cond.false.867
  br label %cond.end.874

cond.end.874:                                     ; preds = %cond.false.873, %cond.true.871
  %cond875 = phi %struct.sv* [ %569, %cond.true.871 ], [ @PL_sv_no, %cond.false.873 ]
  br label %cond.end.876

cond.end.876:                                     ; preds = %cond.end.874, %cond.true.866
  %cond877 = phi %struct.sv* [ %566, %cond.true.866 ], [ %cond875, %cond.end.874 ]
  store %struct.sv* %cond877, %struct.sv** %fromstr, align 8
  %570 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags878 = getelementptr inbounds %struct.sv, %struct.sv* %570, i32 0, i32 2
  %571 = load i32, i32* %sv_flags878, align 4
  %and879 = and i32 %571, 65536
  %tobool880 = icmp ne i32 %and879, 0
  br i1 %tobool880, label %cond.true.881, label %cond.false.884

cond.true.881:                                    ; preds = %cond.end.876
  %572 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any882 = getelementptr inbounds %struct.sv, %struct.sv* %572, i32 0, i32 0
  %573 = load i8*, i8** %sv_any882, align 8
  %574 = bitcast i8* %573 to %struct.xpviv*
  %xiv_iv883 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %574, i32 0, i32 3
  %575 = load i64, i64* %xiv_iv883, align 8
  br label %cond.end.886

cond.false.884:                                   ; preds = %cond.end.876
  %576 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call885 = call i64 @Perl_sv_2iv(%struct.sv* %576)
  br label %cond.end.886

cond.end.886:                                     ; preds = %cond.false.884, %cond.true.881
  %cond887 = phi i64 [ %575, %cond.true.881 ], [ %call885, %cond.false.884 ]
  %conv888 = trunc i64 %cond887 to i16
  store i16 %conv888, i16* %ai16, align 2
  %577 = load i16, i16* %ai16, align 2
  %call889 = call signext i16 @htovs(i16 signext %577)
  store i16 %call889, i16* %ai16, align 2
  %578 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %579 = bitcast i16* %ai16 to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %578, i8* %579, i64 2, i32 2)
  br label %while.cond.860

while.end.890:                                    ; preds = %while.cond.860
  br label %sw.epilog.1719

sw.bb.891:                                        ; preds = %if.end.43, %if.end.43
  br label %while.cond.892

while.cond.892:                                   ; preds = %cond.end.918, %sw.bb.891
  %580 = load i32, i32* %len, align 4
  %dec893 = add nsw i32 %580, -1
  store i32 %dec893, i32* %len, align 4
  %cmp894 = icmp sgt i32 %580, 0
  br i1 %cmp894, label %while.body.896, label %while.end.921

while.body.896:                                   ; preds = %while.cond.892
  %581 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool897 = icmp ne %struct.sv* %581, null
  br i1 %tobool897, label %cond.true.898, label %cond.false.899

cond.true.898:                                    ; preds = %while.body.896
  %582 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.908

cond.false.899:                                   ; preds = %while.body.896
  %583 = load i32, i32* %items, align 4
  %dec900 = add nsw i32 %583, -1
  store i32 %dec900, i32* %items, align 4
  %cmp901 = icmp sgt i32 %583, 0
  br i1 %cmp901, label %cond.true.903, label %cond.false.905

cond.true.903:                                    ; preds = %cond.false.899
  %584 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr904 = getelementptr inbounds %struct.sv*, %struct.sv** %584, i32 1
  store %struct.sv** %incdec.ptr904, %struct.sv*** %beglist.addr, align 8
  %585 = load %struct.sv*, %struct.sv** %584, align 8
  br label %cond.end.906

cond.false.905:                                   ; preds = %cond.false.899
  br label %cond.end.906

cond.end.906:                                     ; preds = %cond.false.905, %cond.true.903
  %cond907 = phi %struct.sv* [ %585, %cond.true.903 ], [ @PL_sv_no, %cond.false.905 ]
  br label %cond.end.908

cond.end.908:                                     ; preds = %cond.end.906, %cond.true.898
  %cond909 = phi %struct.sv* [ %582, %cond.true.898 ], [ %cond907, %cond.end.906 ]
  store %struct.sv* %cond909, %struct.sv** %fromstr, align 8
  %586 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags910 = getelementptr inbounds %struct.sv, %struct.sv* %586, i32 0, i32 2
  %587 = load i32, i32* %sv_flags910, align 4
  %and911 = and i32 %587, 65536
  %tobool912 = icmp ne i32 %and911, 0
  br i1 %tobool912, label %cond.true.913, label %cond.false.916

cond.true.913:                                    ; preds = %cond.end.908
  %588 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any914 = getelementptr inbounds %struct.sv, %struct.sv* %588, i32 0, i32 0
  %589 = load i8*, i8** %sv_any914, align 8
  %590 = bitcast i8* %589 to %struct.xpvuv*
  %xuv_uv915 = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %590, i32 0, i32 3
  %591 = load i64, i64* %xuv_uv915, align 8
  br label %cond.end.918

cond.false.916:                                   ; preds = %cond.end.908
  %592 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call917 = call i64 @Perl_sv_2uv(%struct.sv* %592)
  br label %cond.end.918

cond.end.918:                                     ; preds = %cond.false.916, %cond.true.913
  %cond919 = phi i64 [ %591, %cond.true.913 ], [ %call917, %cond.false.916 ]
  %conv920 = trunc i64 %cond919 to i16
  store i16 %conv920, i16* %au16, align 2
  %593 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %594 = bitcast i16* %au16 to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %593, i8* %594, i64 2, i32 2)
  br label %while.cond.892

while.end.921:                                    ; preds = %while.cond.892
  br label %sw.epilog.1719

sw.bb.922:                                        ; preds = %if.end.43, %if.end.43
  br label %while.cond.923

while.cond.923:                                   ; preds = %cond.end.949, %sw.bb.922
  %595 = load i32, i32* %len, align 4
  %dec924 = add nsw i32 %595, -1
  store i32 %dec924, i32* %len, align 4
  %cmp925 = icmp sgt i32 %595, 0
  br i1 %cmp925, label %while.body.927, label %while.end.952

while.body.927:                                   ; preds = %while.cond.923
  %596 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool928 = icmp ne %struct.sv* %596, null
  br i1 %tobool928, label %cond.true.929, label %cond.false.930

cond.true.929:                                    ; preds = %while.body.927
  %597 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.939

cond.false.930:                                   ; preds = %while.body.927
  %598 = load i32, i32* %items, align 4
  %dec931 = add nsw i32 %598, -1
  store i32 %dec931, i32* %items, align 4
  %cmp932 = icmp sgt i32 %598, 0
  br i1 %cmp932, label %cond.true.934, label %cond.false.936

cond.true.934:                                    ; preds = %cond.false.930
  %599 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr935 = getelementptr inbounds %struct.sv*, %struct.sv** %599, i32 1
  store %struct.sv** %incdec.ptr935, %struct.sv*** %beglist.addr, align 8
  %600 = load %struct.sv*, %struct.sv** %599, align 8
  br label %cond.end.937

cond.false.936:                                   ; preds = %cond.false.930
  br label %cond.end.937

cond.end.937:                                     ; preds = %cond.false.936, %cond.true.934
  %cond938 = phi %struct.sv* [ %600, %cond.true.934 ], [ @PL_sv_no, %cond.false.936 ]
  br label %cond.end.939

cond.end.939:                                     ; preds = %cond.end.937, %cond.true.929
  %cond940 = phi %struct.sv* [ %597, %cond.true.929 ], [ %cond938, %cond.end.937 ]
  store %struct.sv* %cond940, %struct.sv** %fromstr, align 8
  %601 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags941 = getelementptr inbounds %struct.sv, %struct.sv* %601, i32 0, i32 2
  %602 = load i32, i32* %sv_flags941, align 4
  %and942 = and i32 %602, 65536
  %tobool943 = icmp ne i32 %and942, 0
  br i1 %tobool943, label %cond.true.944, label %cond.false.947

cond.true.944:                                    ; preds = %cond.end.939
  %603 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any945 = getelementptr inbounds %struct.sv, %struct.sv* %603, i32 0, i32 0
  %604 = load i8*, i8** %sv_any945, align 8
  %605 = bitcast i8* %604 to %struct.xpviv*
  %xiv_iv946 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %605, i32 0, i32 3
  %606 = load i64, i64* %xiv_iv946, align 8
  br label %cond.end.949

cond.false.947:                                   ; preds = %cond.end.939
  %607 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call948 = call i64 @Perl_sv_2iv(%struct.sv* %607)
  br label %cond.end.949

cond.end.949:                                     ; preds = %cond.false.947, %cond.true.944
  %cond950 = phi i64 [ %606, %cond.true.944 ], [ %call948, %cond.false.947 ]
  %conv951 = trunc i64 %cond950 to i16
  store i16 %conv951, i16* %ai16, align 2
  %608 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %609 = bitcast i16* %ai16 to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %608, i8* %609, i64 2, i32 2)
  br label %while.cond.923

while.end.952:                                    ; preds = %while.cond.923
  br label %sw.epilog.1719

sw.bb.953:                                        ; preds = %if.end.43, %if.end.43
  br label %while.cond.954

while.cond.954:                                   ; preds = %cond.end.980, %sw.bb.953
  %610 = load i32, i32* %len, align 4
  %dec955 = add nsw i32 %610, -1
  store i32 %dec955, i32* %len, align 4
  %cmp956 = icmp sgt i32 %610, 0
  br i1 %cmp956, label %while.body.958, label %while.end.983

while.body.958:                                   ; preds = %while.cond.954
  %611 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool959 = icmp ne %struct.sv* %611, null
  br i1 %tobool959, label %cond.true.960, label %cond.false.961

cond.true.960:                                    ; preds = %while.body.958
  %612 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.970

cond.false.961:                                   ; preds = %while.body.958
  %613 = load i32, i32* %items, align 4
  %dec962 = add nsw i32 %613, -1
  store i32 %dec962, i32* %items, align 4
  %cmp963 = icmp sgt i32 %613, 0
  br i1 %cmp963, label %cond.true.965, label %cond.false.967

cond.true.965:                                    ; preds = %cond.false.961
  %614 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr966 = getelementptr inbounds %struct.sv*, %struct.sv** %614, i32 1
  store %struct.sv** %incdec.ptr966, %struct.sv*** %beglist.addr, align 8
  %615 = load %struct.sv*, %struct.sv** %614, align 8
  br label %cond.end.968

cond.false.967:                                   ; preds = %cond.false.961
  br label %cond.end.968

cond.end.968:                                     ; preds = %cond.false.967, %cond.true.965
  %cond969 = phi %struct.sv* [ %615, %cond.true.965 ], [ @PL_sv_no, %cond.false.967 ]
  br label %cond.end.970

cond.end.970:                                     ; preds = %cond.end.968, %cond.true.960
  %cond971 = phi %struct.sv* [ %612, %cond.true.960 ], [ %cond969, %cond.end.968 ]
  store %struct.sv* %cond971, %struct.sv** %fromstr, align 8
  %616 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags972 = getelementptr inbounds %struct.sv, %struct.sv* %616, i32 0, i32 2
  %617 = load i32, i32* %sv_flags972, align 4
  %and973 = and i32 %617, 65536
  %tobool974 = icmp ne i32 %and973, 0
  br i1 %tobool974, label %cond.true.975, label %cond.false.978

cond.true.975:                                    ; preds = %cond.end.970
  %618 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any976 = getelementptr inbounds %struct.sv, %struct.sv* %618, i32 0, i32 0
  %619 = load i8*, i8** %sv_any976, align 8
  %620 = bitcast i8* %619 to %struct.xpvuv*
  %xuv_uv977 = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %620, i32 0, i32 3
  %621 = load i64, i64* %xuv_uv977, align 8
  br label %cond.end.980

cond.false.978:                                   ; preds = %cond.end.970
  %622 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call979 = call i64 @Perl_sv_2uv(%struct.sv* %622)
  br label %cond.end.980

cond.end.980:                                     ; preds = %cond.false.978, %cond.true.975
  %cond981 = phi i64 [ %621, %cond.true.975 ], [ %call979, %cond.false.978 ]
  %conv982 = trunc i64 %cond981 to i32
  store i32 %conv982, i32* %auint, align 4
  %623 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %624 = bitcast i32* %auint to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %623, i8* %624, i64 4, i32 2)
  br label %while.cond.954

while.end.983:                                    ; preds = %while.cond.954
  br label %sw.epilog.1719

sw.bb.984:                                        ; preds = %if.end.43
  br label %while.cond.985

while.cond.985:                                   ; preds = %cond.end.1011, %sw.bb.984
  %625 = load i32, i32* %len, align 4
  %dec986 = add nsw i32 %625, -1
  store i32 %dec986, i32* %len, align 4
  %cmp987 = icmp sgt i32 %625, 0
  br i1 %cmp987, label %while.body.989, label %while.end.1013

while.body.989:                                   ; preds = %while.cond.985
  %626 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool990 = icmp ne %struct.sv* %626, null
  br i1 %tobool990, label %cond.true.991, label %cond.false.992

cond.true.991:                                    ; preds = %while.body.989
  %627 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.1001

cond.false.992:                                   ; preds = %while.body.989
  %628 = load i32, i32* %items, align 4
  %dec993 = add nsw i32 %628, -1
  store i32 %dec993, i32* %items, align 4
  %cmp994 = icmp sgt i32 %628, 0
  br i1 %cmp994, label %cond.true.996, label %cond.false.998

cond.true.996:                                    ; preds = %cond.false.992
  %629 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr997 = getelementptr inbounds %struct.sv*, %struct.sv** %629, i32 1
  store %struct.sv** %incdec.ptr997, %struct.sv*** %beglist.addr, align 8
  %630 = load %struct.sv*, %struct.sv** %629, align 8
  br label %cond.end.999

cond.false.998:                                   ; preds = %cond.false.992
  br label %cond.end.999

cond.end.999:                                     ; preds = %cond.false.998, %cond.true.996
  %cond1000 = phi %struct.sv* [ %630, %cond.true.996 ], [ @PL_sv_no, %cond.false.998 ]
  br label %cond.end.1001

cond.end.1001:                                    ; preds = %cond.end.999, %cond.true.991
  %cond1002 = phi %struct.sv* [ %627, %cond.true.991 ], [ %cond1000, %cond.end.999 ]
  store %struct.sv* %cond1002, %struct.sv** %fromstr, align 8
  %631 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1003 = getelementptr inbounds %struct.sv, %struct.sv* %631, i32 0, i32 2
  %632 = load i32, i32* %sv_flags1003, align 4
  %and1004 = and i32 %632, 65536
  %tobool1005 = icmp ne i32 %and1004, 0
  br i1 %tobool1005, label %cond.true.1006, label %cond.false.1009

cond.true.1006:                                   ; preds = %cond.end.1001
  %633 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1007 = getelementptr inbounds %struct.sv, %struct.sv* %633, i32 0, i32 0
  %634 = load i8*, i8** %sv_any1007, align 8
  %635 = bitcast i8* %634 to %struct.xpviv*
  %xiv_iv1008 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %635, i32 0, i32 3
  %636 = load i64, i64* %xiv_iv1008, align 8
  br label %cond.end.1011

cond.false.1009:                                  ; preds = %cond.end.1001
  %637 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1010 = call i64 @Perl_sv_2iv(%struct.sv* %637)
  br label %cond.end.1011

cond.end.1011:                                    ; preds = %cond.false.1009, %cond.true.1006
  %cond1012 = phi i64 [ %636, %cond.true.1006 ], [ %call1010, %cond.false.1009 ]
  store i64 %cond1012, i64* %aiv, align 8
  %638 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %639 = bitcast i64* %aiv to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %638, i8* %639, i64 8, i32 2)
  br label %while.cond.985

while.end.1013:                                   ; preds = %while.cond.985
  br label %sw.epilog.1719

sw.bb.1014:                                       ; preds = %if.end.43
  br label %while.cond.1015

while.cond.1015:                                  ; preds = %cond.end.1041, %sw.bb.1014
  %640 = load i32, i32* %len, align 4
  %dec1016 = add nsw i32 %640, -1
  store i32 %dec1016, i32* %len, align 4
  %cmp1017 = icmp sgt i32 %640, 0
  br i1 %cmp1017, label %while.body.1019, label %while.end.1043

while.body.1019:                                  ; preds = %while.cond.1015
  %641 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool1020 = icmp ne %struct.sv* %641, null
  br i1 %tobool1020, label %cond.true.1021, label %cond.false.1022

cond.true.1021:                                   ; preds = %while.body.1019
  %642 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.1031

cond.false.1022:                                  ; preds = %while.body.1019
  %643 = load i32, i32* %items, align 4
  %dec1023 = add nsw i32 %643, -1
  store i32 %dec1023, i32* %items, align 4
  %cmp1024 = icmp sgt i32 %643, 0
  br i1 %cmp1024, label %cond.true.1026, label %cond.false.1028

cond.true.1026:                                   ; preds = %cond.false.1022
  %644 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr1027 = getelementptr inbounds %struct.sv*, %struct.sv** %644, i32 1
  store %struct.sv** %incdec.ptr1027, %struct.sv*** %beglist.addr, align 8
  %645 = load %struct.sv*, %struct.sv** %644, align 8
  br label %cond.end.1029

cond.false.1028:                                  ; preds = %cond.false.1022
  br label %cond.end.1029

cond.end.1029:                                    ; preds = %cond.false.1028, %cond.true.1026
  %cond1030 = phi %struct.sv* [ %645, %cond.true.1026 ], [ @PL_sv_no, %cond.false.1028 ]
  br label %cond.end.1031

cond.end.1031:                                    ; preds = %cond.end.1029, %cond.true.1021
  %cond1032 = phi %struct.sv* [ %642, %cond.true.1021 ], [ %cond1030, %cond.end.1029 ]
  store %struct.sv* %cond1032, %struct.sv** %fromstr, align 8
  %646 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1033 = getelementptr inbounds %struct.sv, %struct.sv* %646, i32 0, i32 2
  %647 = load i32, i32* %sv_flags1033, align 4
  %and1034 = and i32 %647, 65536
  %tobool1035 = icmp ne i32 %and1034, 0
  br i1 %tobool1035, label %cond.true.1036, label %cond.false.1039

cond.true.1036:                                   ; preds = %cond.end.1031
  %648 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1037 = getelementptr inbounds %struct.sv, %struct.sv* %648, i32 0, i32 0
  %649 = load i8*, i8** %sv_any1037, align 8
  %650 = bitcast i8* %649 to %struct.xpvuv*
  %xuv_uv1038 = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %650, i32 0, i32 3
  %651 = load i64, i64* %xuv_uv1038, align 8
  br label %cond.end.1041

cond.false.1039:                                  ; preds = %cond.end.1031
  %652 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1040 = call i64 @Perl_sv_2uv(%struct.sv* %652)
  br label %cond.end.1041

cond.end.1041:                                    ; preds = %cond.false.1039, %cond.true.1036
  %cond1042 = phi i64 [ %651, %cond.true.1036 ], [ %call1040, %cond.false.1039 ]
  store i64 %cond1042, i64* %auv, align 8
  %653 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %654 = bitcast i64* %auv to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %653, i8* %654, i64 8, i32 2)
  br label %while.cond.1015

while.end.1043:                                   ; preds = %while.cond.1015
  br label %sw.epilog.1719

sw.bb.1044:                                       ; preds = %if.end.43
  br label %while.cond.1045

while.cond.1045:                                  ; preds = %if.end.1259, %sw.bb.1044
  %655 = load i32, i32* %len, align 4
  %dec1046 = add nsw i32 %655, -1
  store i32 %dec1046, i32* %len, align 4
  %cmp1047 = icmp sgt i32 %655, 0
  br i1 %cmp1047, label %while.body.1049, label %while.end.1260

while.body.1049:                                  ; preds = %while.cond.1045
  %656 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool1050 = icmp ne %struct.sv* %656, null
  br i1 %tobool1050, label %cond.true.1051, label %cond.false.1052

cond.true.1051:                                   ; preds = %while.body.1049
  %657 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.1061

cond.false.1052:                                  ; preds = %while.body.1049
  %658 = load i32, i32* %items, align 4
  %dec1053 = add nsw i32 %658, -1
  store i32 %dec1053, i32* %items, align 4
  %cmp1054 = icmp sgt i32 %658, 0
  br i1 %cmp1054, label %cond.true.1056, label %cond.false.1058

cond.true.1056:                                   ; preds = %cond.false.1052
  %659 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr1057 = getelementptr inbounds %struct.sv*, %struct.sv** %659, i32 1
  store %struct.sv** %incdec.ptr1057, %struct.sv*** %beglist.addr, align 8
  %660 = load %struct.sv*, %struct.sv** %659, align 8
  br label %cond.end.1059

cond.false.1058:                                  ; preds = %cond.false.1052
  br label %cond.end.1059

cond.end.1059:                                    ; preds = %cond.false.1058, %cond.true.1056
  %cond1060 = phi %struct.sv* [ %660, %cond.true.1056 ], [ @PL_sv_no, %cond.false.1058 ]
  br label %cond.end.1061

cond.end.1061:                                    ; preds = %cond.end.1059, %cond.true.1051
  %cond1062 = phi %struct.sv* [ %657, %cond.true.1051 ], [ %cond1060, %cond.end.1059 ]
  store %struct.sv* %cond1062, %struct.sv** %fromstr, align 8
  %661 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1063 = getelementptr inbounds %struct.sv, %struct.sv* %661, i32 0, i32 2
  %662 = load i32, i32* %sv_flags1063, align 4
  %and1064 = and i32 %662, 131072
  %tobool1065 = icmp ne i32 %and1064, 0
  br i1 %tobool1065, label %cond.true.1066, label %cond.false.1069

cond.true.1066:                                   ; preds = %cond.end.1061
  %663 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1067 = getelementptr inbounds %struct.sv, %struct.sv* %663, i32 0, i32 0
  %664 = load i8*, i8** %sv_any1067, align 8
  %665 = bitcast i8* %664 to %struct.xpvnv*
  %xnv_nv1068 = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %665, i32 0, i32 4
  %666 = load double, double* %xnv_nv1068, align 8
  br label %cond.end.1071

cond.false.1069:                                  ; preds = %cond.end.1061
  %667 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1070 = call double @Perl_sv_2nv(%struct.sv* %667)
  br label %cond.end.1071

cond.end.1071:                                    ; preds = %cond.false.1069, %cond.true.1066
  %cond1072 = phi double [ %666, %cond.true.1066 ], [ %call1070, %cond.false.1069 ]
  store double %cond1072, double* %anv, align 8
  %668 = load double, double* %anv, align 8
  %cmp1073 = fcmp olt double %668, 0.000000e+00
  br i1 %cmp1073, label %if.then.1075, label %if.end.1076

if.then.1075:                                     ; preds = %cond.end.1071
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.1076

if.end.1076:                                      ; preds = %if.then.1075, %cond.end.1071
  %669 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1077 = getelementptr inbounds %struct.sv, %struct.sv* %669, i32 0, i32 2
  %670 = load i32, i32* %sv_flags1077, align 4
  %and1078 = and i32 %670, 65536
  %tobool1079 = icmp ne i32 %and1078, 0
  br i1 %tobool1079, label %if.then.1083, label %lor.lhs.false.1080

lor.lhs.false.1080:                               ; preds = %if.end.1076
  %671 = load double, double* %anv, align 8
  %cmp1081 = fcmp olt double %671, 0x43F0000000000000
  br i1 %cmp1081, label %if.then.1083, label %if.else.1114

if.then.1083:                                     ; preds = %lor.lhs.false.1080, %if.end.1076
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %add.ptr1086 = getelementptr inbounds i8, i8* %arraydecay, i64 10
  store i8* %add.ptr1086, i8** %in, align 8
  %672 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1089 = getelementptr inbounds %struct.sv, %struct.sv* %672, i32 0, i32 2
  %673 = load i32, i32* %sv_flags1089, align 4
  %and1090 = and i32 %673, 65536
  %tobool1091 = icmp ne i32 %and1090, 0
  br i1 %tobool1091, label %cond.true.1092, label %cond.false.1095

cond.true.1092:                                   ; preds = %if.then.1083
  %674 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1093 = getelementptr inbounds %struct.sv, %struct.sv* %674, i32 0, i32 0
  %675 = load i8*, i8** %sv_any1093, align 8
  %676 = bitcast i8* %675 to %struct.xpvuv*
  %xuv_uv1094 = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %676, i32 0, i32 3
  %677 = load i64, i64* %xuv_uv1094, align 8
  br label %cond.end.1097

cond.false.1095:                                  ; preds = %if.then.1083
  %678 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1096 = call i64 @Perl_sv_2uv(%struct.sv* %678)
  br label %cond.end.1097

cond.end.1097:                                    ; preds = %cond.false.1095, %cond.true.1092
  %cond1098 = phi i64 [ %677, %cond.true.1092 ], [ %call1096, %cond.false.1095 ]
  store i64 %cond1098, i64* %auv1088, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end.1097
  %679 = load i64, i64* %auv1088, align 8
  %and1099 = and i64 %679, 127
  %or1100 = or i64 %and1099, 128
  %conv1101 = trunc i64 %or1100 to i8
  %680 = load i8*, i8** %in, align 8
  %incdec.ptr1102 = getelementptr inbounds i8, i8* %680, i32 -1
  store i8* %incdec.ptr1102, i8** %in, align 8
  store i8 %conv1101, i8* %incdec.ptr1102, align 1
  %681 = load i64, i64* %auv1088, align 8
  %shr1103 = lshr i64 %681, 7
  store i64 %shr1103, i64* %auv1088, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %682 = load i64, i64* %auv1088, align 8
  %tobool1104 = icmp ne i64 %682, 0
  br i1 %tobool1104, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %arrayidx1105 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i64 9
  %683 = load i8, i8* %arrayidx1105, align 1
  %conv1106 = sext i8 %683 to i32
  %and1107 = and i32 %conv1106, 127
  %conv1108 = trunc i32 %and1107 to i8
  store i8 %conv1108, i8* %arrayidx1105, align 1
  %684 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %685 = load i8*, i8** %in, align 8
  %arraydecay1109 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %add.ptr1110 = getelementptr inbounds i8, i8* %arraydecay1109, i64 10
  %686 = load i8*, i8** %in, align 8
  %sub.ptr.lhs.cast1111 = ptrtoint i8* %add.ptr1110 to i64
  %sub.ptr.rhs.cast1112 = ptrtoint i8* %686 to i64
  %sub.ptr.sub1113 = sub i64 %sub.ptr.lhs.cast1111, %sub.ptr.rhs.cast1112
  call void @Perl_sv_catpvn_flags(%struct.sv* %684, i8* %685, i64 %sub.ptr.sub1113, i32 2)
  br label %if.end.1259

if.else.1114:                                     ; preds = %lor.lhs.false.1080
  %687 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1115 = getelementptr inbounds %struct.sv, %struct.sv* %687, i32 0, i32 2
  %688 = load i32, i32* %sv_flags1115, align 4
  %and1116 = and i32 %688, 67108864
  %tobool1117 = icmp ne i32 %and1116, 0
  br i1 %tobool1117, label %if.then.1118, label %if.else.1164

if.then.1118:                                     ; preds = %if.else.1114
  %689 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1127 = getelementptr inbounds %struct.sv, %struct.sv* %689, i32 0, i32 2
  %690 = load i32, i32* %sv_flags1127, align 4
  %and1128 = and i32 %690, 262144
  %cmp1129 = icmp eq i32 %and1128, 262144
  br i1 %cmp1129, label %cond.true.1131, label %cond.false.1136

cond.true.1131:                                   ; preds = %if.then.1118
  %691 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1132 = getelementptr inbounds %struct.sv, %struct.sv* %691, i32 0, i32 0
  %692 = load i8*, i8** %sv_any1132, align 8
  %693 = bitcast i8* %692 to %struct.xpv*
  %xpv_cur1133 = getelementptr inbounds %struct.xpv, %struct.xpv* %693, i32 0, i32 1
  %694 = load i64, i64* %xpv_cur1133, align 8
  store i64 %694, i64* %len1125, align 8
  %695 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1134 = getelementptr inbounds %struct.sv, %struct.sv* %695, i32 0, i32 0
  %696 = load i8*, i8** %sv_any1134, align 8
  %697 = bitcast i8* %696 to %struct.xpv*
  %xpv_pv1135 = getelementptr inbounds %struct.xpv, %struct.xpv* %697, i32 0, i32 0
  %698 = load i8*, i8** %xpv_pv1135, align 8
  br label %cond.end.1138

cond.false.1136:                                  ; preds = %if.then.1118
  %699 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1137 = call i8* @Perl_sv_2pv_flags(%struct.sv* %699, i64* %len1125, i32 2)
  br label %cond.end.1138

cond.end.1138:                                    ; preds = %cond.false.1136, %cond.true.1131
  %cond1139 = phi i8* [ %698, %cond.true.1131 ], [ %call1137, %cond.false.1136 ]
  store i8* %cond1139, i8** %from, align 8
  %700 = load i8*, i8** %from, align 8
  %701 = load i64, i64* %len1125, align 8
  %call1140 = call %struct.sv* @S_is_an_int(i8* %700, i64 %701)
  store %struct.sv* %call1140, %struct.sv** %norm, align 8
  %cmp1141 = icmp eq %struct.sv* %call1140, null
  br i1 %cmp1141, label %if.then.1143, label %if.end.1144

if.then.1143:                                     ; preds = %cond.end.1138
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.1144

if.end.1144:                                      ; preds = %if.then.1143, %cond.end.1138
  %702 = load i64, i64* %len1125, align 8
  %mul = mul i64 %702, 1
  %call1145 = call i8* @Perl_safesysmalloc(i64 %mul)
  store i8* %call1145, i8** %result, align 8
  %703 = load i8*, i8** %result, align 8
  %704 = load i64, i64* %len1125, align 8
  %add.ptr1146 = getelementptr inbounds i8, i8* %703, i64 %704
  store i8* %add.ptr1146, i8** %in1122, align 8
  store i8 0, i8* %done, align 1
  br label %while.cond.1147

while.cond.1147:                                  ; preds = %while.body.1149, %if.end.1144
  %705 = load i8, i8* %done, align 1
  %tobool1148 = icmp ne i8 %705, 0
  %lnot = xor i1 %tobool1148, true
  br i1 %lnot, label %while.body.1149, label %while.end.1154

while.body.1149:                                  ; preds = %while.cond.1147
  %706 = load %struct.sv*, %struct.sv** %norm, align 8
  %call1150 = call i32 @S_div128(%struct.sv* %706, i8* %done)
  %or1151 = or i32 %call1150, 128
  %conv1152 = trunc i32 %or1151 to i8
  %707 = load i8*, i8** %in1122, align 8
  %incdec.ptr1153 = getelementptr inbounds i8, i8* %707, i32 -1
  store i8* %incdec.ptr1153, i8** %in1122, align 8
  store i8 %conv1152, i8* %incdec.ptr1153, align 1
  br label %while.cond.1147

while.end.1154:                                   ; preds = %while.cond.1147
  %708 = load i64, i64* %len1125, align 8
  %sub1155 = sub i64 %708, 1
  %709 = load i8*, i8** %result, align 8
  %arrayidx1156 = getelementptr inbounds i8, i8* %709, i64 %sub1155
  %710 = load i8, i8* %arrayidx1156, align 1
  %conv1157 = sext i8 %710 to i32
  %and1158 = and i32 %conv1157, 127
  %conv1159 = trunc i32 %and1158 to i8
  store i8 %conv1159, i8* %arrayidx1156, align 1
  %711 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %712 = load i8*, i8** %in1122, align 8
  %713 = load i8*, i8** %result, align 8
  %714 = load i64, i64* %len1125, align 8
  %add.ptr1160 = getelementptr inbounds i8, i8* %713, i64 %714
  %715 = load i8*, i8** %in1122, align 8
  %sub.ptr.lhs.cast1161 = ptrtoint i8* %add.ptr1160 to i64
  %sub.ptr.rhs.cast1162 = ptrtoint i8* %715 to i64
  %sub.ptr.sub1163 = sub i64 %sub.ptr.lhs.cast1161, %sub.ptr.rhs.cast1162
  call void @Perl_sv_catpvn_flags(%struct.sv* %711, i8* %712, i64 %sub.ptr.sub1163, i32 2)
  %716 = load i8*, i8** %result, align 8
  call void @Perl_safesysfree(i8* %716)
  %717 = load %struct.sv*, %struct.sv** %norm, align 8
  call void @Perl_sv_free(%struct.sv* %717)
  br label %if.end.1258

if.else.1164:                                     ; preds = %if.else.1114
  %718 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1165 = getelementptr inbounds %struct.sv, %struct.sv* %718, i32 0, i32 2
  %719 = load i32, i32* %sv_flags1165, align 4
  %and1166 = and i32 %719, 33554432
  %tobool1167 = icmp ne i32 %and1166, 0
  br i1 %tobool1167, label %if.then.1168, label %if.else.1205

if.then.1168:                                     ; preds = %if.else.1164
  %arraydecay1173 = getelementptr inbounds [155 x i8], [155 x i8]* %buf1170, i32 0, i32 0
  %add.ptr1174 = getelementptr inbounds i8, i8* %arraydecay1173, i64 155
  store i8* %add.ptr1174, i8** %in1172, align 8
  %720 = load double, double* %anv, align 8
  %call1175 = call double @floor(double %720) #5
  store double %call1175, double* %anv, align 8
  br label %do.body.1176

do.body.1176:                                     ; preds = %do.cond.1192, %if.then.1168
  %721 = load double, double* %anv, align 8
  %div1178 = fdiv double %721, 1.280000e+02
  %call1179 = call double @floor(double %div1178) #5
  store double %call1179, double* %next, align 8
  %722 = load i8*, i8** %in1172, align 8
  %arraydecay1180 = getelementptr inbounds [155 x i8], [155 x i8]* %buf1170, i32 0, i32 0
  %cmp1181 = icmp ule i8* %722, %arraydecay1180
  br i1 %cmp1181, label %if.then.1183, label %if.end.1184

if.then.1183:                                     ; preds = %do.body.1176
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.1184

if.end.1184:                                      ; preds = %if.then.1183, %do.body.1176
  %723 = load double, double* %anv, align 8
  %724 = load double, double* %next, align 8
  %mul1185 = fmul double %724, 1.280000e+02
  %sub1186 = fsub double %723, %mul1185
  %conv1187 = fptoui double %sub1186 to i8
  %conv1188 = zext i8 %conv1187 to i32
  %or1189 = or i32 %conv1188, 128
  %conv1190 = trunc i32 %or1189 to i8
  %725 = load i8*, i8** %in1172, align 8
  %incdec.ptr1191 = getelementptr inbounds i8, i8* %725, i32 -1
  store i8* %incdec.ptr1191, i8** %in1172, align 8
  store i8 %conv1190, i8* %incdec.ptr1191, align 1
  %726 = load double, double* %next, align 8
  store double %726, double* %anv, align 8
  br label %do.cond.1192

do.cond.1192:                                     ; preds = %if.end.1184
  %727 = load double, double* %anv, align 8
  %cmp1193 = fcmp ogt double %727, 0.000000e+00
  br i1 %cmp1193, label %do.body.1176, label %do.end.1195

do.end.1195:                                      ; preds = %do.cond.1192
  %arrayidx1196 = getelementptr inbounds [155 x i8], [155 x i8]* %buf1170, i32 0, i64 154
  %728 = load i8, i8* %arrayidx1196, align 1
  %conv1197 = sext i8 %728 to i32
  %and1198 = and i32 %conv1197, 127
  %conv1199 = trunc i32 %and1198 to i8
  store i8 %conv1199, i8* %arrayidx1196, align 1
  %729 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %730 = load i8*, i8** %in1172, align 8
  %arraydecay1200 = getelementptr inbounds [155 x i8], [155 x i8]* %buf1170, i32 0, i32 0
  %add.ptr1201 = getelementptr inbounds i8, i8* %arraydecay1200, i64 155
  %731 = load i8*, i8** %in1172, align 8
  %sub.ptr.lhs.cast1202 = ptrtoint i8* %add.ptr1201 to i64
  %sub.ptr.rhs.cast1203 = ptrtoint i8* %731 to i64
  %sub.ptr.sub1204 = sub i64 %sub.ptr.lhs.cast1202, %sub.ptr.rhs.cast1203
  call void @Perl_sv_catpvn_flags(%struct.sv* %729, i8* %730, i64 %sub.ptr.sub1204, i32 2)
  br label %if.end.1257

if.else.1205:                                     ; preds = %if.else.1164
  %732 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1218 = getelementptr inbounds %struct.sv, %struct.sv* %732, i32 0, i32 2
  %733 = load i32, i32* %sv_flags1218, align 4
  %and1219 = and i32 %733, 262144
  %cmp1220 = icmp eq i32 %and1219, 262144
  br i1 %cmp1220, label %cond.true.1222, label %cond.false.1227

cond.true.1222:                                   ; preds = %if.else.1205
  %734 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1223 = getelementptr inbounds %struct.sv, %struct.sv* %734, i32 0, i32 0
  %735 = load i8*, i8** %sv_any1223, align 8
  %736 = bitcast i8* %735 to %struct.xpv*
  %xpv_cur1224 = getelementptr inbounds %struct.xpv, %struct.xpv* %736, i32 0, i32 1
  %737 = load i64, i64* %xpv_cur1224, align 8
  store i64 %737, i64* %len1215, align 8
  %738 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1225 = getelementptr inbounds %struct.sv, %struct.sv* %738, i32 0, i32 0
  %739 = load i8*, i8** %sv_any1225, align 8
  %740 = bitcast i8* %739 to %struct.xpv*
  %xpv_pv1226 = getelementptr inbounds %struct.xpv, %struct.xpv* %740, i32 0, i32 0
  %741 = load i8*, i8** %xpv_pv1226, align 8
  br label %cond.end.1229

cond.false.1227:                                  ; preds = %if.else.1205
  %742 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1228 = call i8* @Perl_sv_2pv_flags(%struct.sv* %742, i64* %len1215, i32 2)
  br label %cond.end.1229

cond.end.1229:                                    ; preds = %cond.false.1227, %cond.true.1222
  %cond1230 = phi i8* [ %741, %cond.true.1222 ], [ %call1228, %cond.false.1227 ]
  store i8* %cond1230, i8** %from1207, align 8
  %743 = load i8*, i8** %from1207, align 8
  %744 = load i64, i64* %len1215, align 8
  %call1231 = call %struct.sv* @S_is_an_int(i8* %743, i64 %744)
  store %struct.sv* %call1231, %struct.sv** %norm1213, align 8
  %cmp1232 = icmp eq %struct.sv* %call1231, null
  br i1 %cmp1232, label %if.then.1234, label %if.end.1235

if.then.1234:                                     ; preds = %cond.end.1229
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.1235

if.end.1235:                                      ; preds = %if.then.1234, %cond.end.1229
  %745 = load i64, i64* %len1215, align 8
  %mul1236 = mul i64 %745, 1
  %call1237 = call i8* @Perl_safesysmalloc(i64 %mul1236)
  store i8* %call1237, i8** %result1209, align 8
  %746 = load i8*, i8** %result1209, align 8
  %747 = load i64, i64* %len1215, align 8
  %add.ptr1238 = getelementptr inbounds i8, i8* %746, i64 %747
  store i8* %add.ptr1238, i8** %in1211, align 8
  store i8 0, i8* %done1217, align 1
  br label %while.cond.1239

while.cond.1239:                                  ; preds = %while.body.1242, %if.end.1235
  %748 = load i8, i8* %done1217, align 1
  %tobool1240 = icmp ne i8 %748, 0
  %lnot1241 = xor i1 %tobool1240, true
  br i1 %lnot1241, label %while.body.1242, label %while.end.1247

while.body.1242:                                  ; preds = %while.cond.1239
  %749 = load %struct.sv*, %struct.sv** %norm1213, align 8
  %call1243 = call i32 @S_div128(%struct.sv* %749, i8* %done1217)
  %or1244 = or i32 %call1243, 128
  %conv1245 = trunc i32 %or1244 to i8
  %750 = load i8*, i8** %in1211, align 8
  %incdec.ptr1246 = getelementptr inbounds i8, i8* %750, i32 -1
  store i8* %incdec.ptr1246, i8** %in1211, align 8
  store i8 %conv1245, i8* %incdec.ptr1246, align 1
  br label %while.cond.1239

while.end.1247:                                   ; preds = %while.cond.1239
  %751 = load i64, i64* %len1215, align 8
  %sub1248 = sub i64 %751, 1
  %752 = load i8*, i8** %result1209, align 8
  %arrayidx1249 = getelementptr inbounds i8, i8* %752, i64 %sub1248
  %753 = load i8, i8* %arrayidx1249, align 1
  %conv1250 = sext i8 %753 to i32
  %and1251 = and i32 %conv1250, 127
  %conv1252 = trunc i32 %and1251 to i8
  store i8 %conv1252, i8* %arrayidx1249, align 1
  %754 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %755 = load i8*, i8** %in1211, align 8
  %756 = load i8*, i8** %result1209, align 8
  %757 = load i64, i64* %len1215, align 8
  %add.ptr1253 = getelementptr inbounds i8, i8* %756, i64 %757
  %758 = load i8*, i8** %in1211, align 8
  %sub.ptr.lhs.cast1254 = ptrtoint i8* %add.ptr1253 to i64
  %sub.ptr.rhs.cast1255 = ptrtoint i8* %758 to i64
  %sub.ptr.sub1256 = sub i64 %sub.ptr.lhs.cast1254, %sub.ptr.rhs.cast1255
  call void @Perl_sv_catpvn_flags(%struct.sv* %754, i8* %755, i64 %sub.ptr.sub1256, i32 2)
  %759 = load i8*, i8** %result1209, align 8
  call void @Perl_safesysfree(i8* %759)
  %760 = load %struct.sv*, %struct.sv** %norm1213, align 8
  call void @Perl_sv_free(%struct.sv* %760)
  br label %if.end.1257

if.end.1257:                                      ; preds = %while.end.1247, %do.end.1195
  br label %if.end.1258

if.end.1258:                                      ; preds = %if.end.1257, %while.end.1154
  br label %if.end.1259

if.end.1259:                                      ; preds = %if.end.1258, %do.end
  br label %while.cond.1045

while.end.1260:                                   ; preds = %while.cond.1045
  br label %sw.epilog.1719

sw.bb.1261:                                       ; preds = %if.end.43, %if.end.43
  br label %while.cond.1262

while.cond.1262:                                  ; preds = %cond.end.1288, %sw.bb.1261
  %761 = load i32, i32* %len, align 4
  %dec1263 = add nsw i32 %761, -1
  store i32 %dec1263, i32* %len, align 4
  %cmp1264 = icmp sgt i32 %761, 0
  br i1 %cmp1264, label %while.body.1266, label %while.end.1291

while.body.1266:                                  ; preds = %while.cond.1262
  %762 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool1267 = icmp ne %struct.sv* %762, null
  br i1 %tobool1267, label %cond.true.1268, label %cond.false.1269

cond.true.1268:                                   ; preds = %while.body.1266
  %763 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.1278

cond.false.1269:                                  ; preds = %while.body.1266
  %764 = load i32, i32* %items, align 4
  %dec1270 = add nsw i32 %764, -1
  store i32 %dec1270, i32* %items, align 4
  %cmp1271 = icmp sgt i32 %764, 0
  br i1 %cmp1271, label %cond.true.1273, label %cond.false.1275

cond.true.1273:                                   ; preds = %cond.false.1269
  %765 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr1274 = getelementptr inbounds %struct.sv*, %struct.sv** %765, i32 1
  store %struct.sv** %incdec.ptr1274, %struct.sv*** %beglist.addr, align 8
  %766 = load %struct.sv*, %struct.sv** %765, align 8
  br label %cond.end.1276

cond.false.1275:                                  ; preds = %cond.false.1269
  br label %cond.end.1276

cond.end.1276:                                    ; preds = %cond.false.1275, %cond.true.1273
  %cond1277 = phi %struct.sv* [ %766, %cond.true.1273 ], [ @PL_sv_no, %cond.false.1275 ]
  br label %cond.end.1278

cond.end.1278:                                    ; preds = %cond.end.1276, %cond.true.1268
  %cond1279 = phi %struct.sv* [ %763, %cond.true.1268 ], [ %cond1277, %cond.end.1276 ]
  store %struct.sv* %cond1279, %struct.sv** %fromstr, align 8
  %767 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1280 = getelementptr inbounds %struct.sv, %struct.sv* %767, i32 0, i32 2
  %768 = load i32, i32* %sv_flags1280, align 4
  %and1281 = and i32 %768, 65536
  %tobool1282 = icmp ne i32 %and1281, 0
  br i1 %tobool1282, label %cond.true.1283, label %cond.false.1286

cond.true.1283:                                   ; preds = %cond.end.1278
  %769 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1284 = getelementptr inbounds %struct.sv, %struct.sv* %769, i32 0, i32 0
  %770 = load i8*, i8** %sv_any1284, align 8
  %771 = bitcast i8* %770 to %struct.xpviv*
  %xiv_iv1285 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %771, i32 0, i32 3
  %772 = load i64, i64* %xiv_iv1285, align 8
  br label %cond.end.1288

cond.false.1286:                                  ; preds = %cond.end.1278
  %773 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1287 = call i64 @Perl_sv_2iv(%struct.sv* %773)
  br label %cond.end.1288

cond.end.1288:                                    ; preds = %cond.false.1286, %cond.true.1283
  %cond1289 = phi i64 [ %772, %cond.true.1283 ], [ %call1287, %cond.false.1286 ]
  %conv1290 = trunc i64 %cond1289 to i32
  store i32 %conv1290, i32* %aint, align 4
  %774 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %775 = bitcast i32* %aint to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %774, i8* %775, i64 4, i32 2)
  br label %while.cond.1262

while.end.1291:                                   ; preds = %while.cond.1262
  br label %sw.epilog.1719

sw.bb.1292:                                       ; preds = %if.end.43
  br label %while.cond.1293

while.cond.1293:                                  ; preds = %cond.end.1319, %sw.bb.1292
  %776 = load i32, i32* %len, align 4
  %dec1294 = add nsw i32 %776, -1
  store i32 %dec1294, i32* %len, align 4
  %cmp1295 = icmp sgt i32 %776, 0
  br i1 %cmp1295, label %while.body.1297, label %while.end.1325

while.body.1297:                                  ; preds = %while.cond.1293
  %777 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool1298 = icmp ne %struct.sv* %777, null
  br i1 %tobool1298, label %cond.true.1299, label %cond.false.1300

cond.true.1299:                                   ; preds = %while.body.1297
  %778 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.1309

cond.false.1300:                                  ; preds = %while.body.1297
  %779 = load i32, i32* %items, align 4
  %dec1301 = add nsw i32 %779, -1
  store i32 %dec1301, i32* %items, align 4
  %cmp1302 = icmp sgt i32 %779, 0
  br i1 %cmp1302, label %cond.true.1304, label %cond.false.1306

cond.true.1304:                                   ; preds = %cond.false.1300
  %780 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr1305 = getelementptr inbounds %struct.sv*, %struct.sv** %780, i32 1
  store %struct.sv** %incdec.ptr1305, %struct.sv*** %beglist.addr, align 8
  %781 = load %struct.sv*, %struct.sv** %780, align 8
  br label %cond.end.1307

cond.false.1306:                                  ; preds = %cond.false.1300
  br label %cond.end.1307

cond.end.1307:                                    ; preds = %cond.false.1306, %cond.true.1304
  %cond1308 = phi %struct.sv* [ %781, %cond.true.1304 ], [ @PL_sv_no, %cond.false.1306 ]
  br label %cond.end.1309

cond.end.1309:                                    ; preds = %cond.end.1307, %cond.true.1299
  %cond1310 = phi %struct.sv* [ %778, %cond.true.1299 ], [ %cond1308, %cond.end.1307 ]
  store %struct.sv* %cond1310, %struct.sv** %fromstr, align 8
  %782 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1311 = getelementptr inbounds %struct.sv, %struct.sv* %782, i32 0, i32 2
  %783 = load i32, i32* %sv_flags1311, align 4
  %and1312 = and i32 %783, 65536
  %tobool1313 = icmp ne i32 %and1312, 0
  br i1 %tobool1313, label %cond.true.1314, label %cond.false.1317

cond.true.1314:                                   ; preds = %cond.end.1309
  %784 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1315 = getelementptr inbounds %struct.sv, %struct.sv* %784, i32 0, i32 0
  %785 = load i8*, i8** %sv_any1315, align 8
  %786 = bitcast i8* %785 to %struct.xpvuv*
  %xuv_uv1316 = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %786, i32 0, i32 3
  %787 = load i64, i64* %xuv_uv1316, align 8
  br label %cond.end.1319

cond.false.1317:                                  ; preds = %cond.end.1309
  %788 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1318 = call i64 @Perl_sv_2uv(%struct.sv* %788)
  br label %cond.end.1319

cond.end.1319:                                    ; preds = %cond.false.1317, %cond.true.1314
  %cond1320 = phi i64 [ %787, %cond.true.1314 ], [ %call1318, %cond.false.1317 ]
  %conv1321 = trunc i64 %cond1320 to i32
  store i32 %conv1321, i32* %au32, align 4
  %789 = load i32, i32* %au32, align 4
  %conv1322 = zext i32 %789 to i64
  %call1323 = call i64 @Perl_my_htonl(i64 %conv1322)
  %conv1324 = trunc i64 %call1323 to i32
  store i32 %conv1324, i32* %au32, align 4
  %790 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %791 = bitcast i32* %au32 to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %790, i8* %791, i64 4, i32 2)
  br label %while.cond.1293

while.end.1325:                                   ; preds = %while.cond.1293
  br label %sw.epilog.1719

sw.bb.1326:                                       ; preds = %if.end.43
  br label %while.cond.1327

while.cond.1327:                                  ; preds = %cond.end.1353, %sw.bb.1326
  %792 = load i32, i32* %len, align 4
  %dec1328 = add nsw i32 %792, -1
  store i32 %dec1328, i32* %len, align 4
  %cmp1329 = icmp sgt i32 %792, 0
  br i1 %cmp1329, label %while.body.1331, label %while.end.1359

while.body.1331:                                  ; preds = %while.cond.1327
  %793 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool1332 = icmp ne %struct.sv* %793, null
  br i1 %tobool1332, label %cond.true.1333, label %cond.false.1334

cond.true.1333:                                   ; preds = %while.body.1331
  %794 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.1343

cond.false.1334:                                  ; preds = %while.body.1331
  %795 = load i32, i32* %items, align 4
  %dec1335 = add nsw i32 %795, -1
  store i32 %dec1335, i32* %items, align 4
  %cmp1336 = icmp sgt i32 %795, 0
  br i1 %cmp1336, label %cond.true.1338, label %cond.false.1340

cond.true.1338:                                   ; preds = %cond.false.1334
  %796 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr1339 = getelementptr inbounds %struct.sv*, %struct.sv** %796, i32 1
  store %struct.sv** %incdec.ptr1339, %struct.sv*** %beglist.addr, align 8
  %797 = load %struct.sv*, %struct.sv** %796, align 8
  br label %cond.end.1341

cond.false.1340:                                  ; preds = %cond.false.1334
  br label %cond.end.1341

cond.end.1341:                                    ; preds = %cond.false.1340, %cond.true.1338
  %cond1342 = phi %struct.sv* [ %797, %cond.true.1338 ], [ @PL_sv_no, %cond.false.1340 ]
  br label %cond.end.1343

cond.end.1343:                                    ; preds = %cond.end.1341, %cond.true.1333
  %cond1344 = phi %struct.sv* [ %794, %cond.true.1333 ], [ %cond1342, %cond.end.1341 ]
  store %struct.sv* %cond1344, %struct.sv** %fromstr, align 8
  %798 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1345 = getelementptr inbounds %struct.sv, %struct.sv* %798, i32 0, i32 2
  %799 = load i32, i32* %sv_flags1345, align 4
  %and1346 = and i32 %799, 65536
  %tobool1347 = icmp ne i32 %and1346, 0
  br i1 %tobool1347, label %cond.true.1348, label %cond.false.1351

cond.true.1348:                                   ; preds = %cond.end.1343
  %800 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1349 = getelementptr inbounds %struct.sv, %struct.sv* %800, i32 0, i32 0
  %801 = load i8*, i8** %sv_any1349, align 8
  %802 = bitcast i8* %801 to %struct.xpvuv*
  %xuv_uv1350 = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %802, i32 0, i32 3
  %803 = load i64, i64* %xuv_uv1350, align 8
  br label %cond.end.1353

cond.false.1351:                                  ; preds = %cond.end.1343
  %804 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1352 = call i64 @Perl_sv_2uv(%struct.sv* %804)
  br label %cond.end.1353

cond.end.1353:                                    ; preds = %cond.false.1351, %cond.true.1348
  %cond1354 = phi i64 [ %803, %cond.true.1348 ], [ %call1352, %cond.false.1351 ]
  %conv1355 = trunc i64 %cond1354 to i32
  store i32 %conv1355, i32* %au32, align 4
  %805 = load i32, i32* %au32, align 4
  %conv1356 = zext i32 %805 to i64
  %call1357 = call i64 @htovl(i64 %conv1356)
  %conv1358 = trunc i64 %call1357 to i32
  store i32 %conv1358, i32* %au32, align 4
  %806 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %807 = bitcast i32* %au32 to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %806, i8* %807, i64 4, i32 2)
  br label %while.cond.1327

while.end.1359:                                   ; preds = %while.cond.1327
  br label %sw.epilog.1719

sw.bb.1360:                                       ; preds = %if.end.43
  br label %while.cond.1361

while.cond.1361:                                  ; preds = %cond.end.1387, %sw.bb.1360
  %808 = load i32, i32* %len, align 4
  %dec1362 = add nsw i32 %808, -1
  store i32 %dec1362, i32* %len, align 4
  %cmp1363 = icmp sgt i32 %808, 0
  br i1 %cmp1363, label %while.body.1365, label %while.end.1389

while.body.1365:                                  ; preds = %while.cond.1361
  %809 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool1366 = icmp ne %struct.sv* %809, null
  br i1 %tobool1366, label %cond.true.1367, label %cond.false.1368

cond.true.1367:                                   ; preds = %while.body.1365
  %810 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.1377

cond.false.1368:                                  ; preds = %while.body.1365
  %811 = load i32, i32* %items, align 4
  %dec1369 = add nsw i32 %811, -1
  store i32 %dec1369, i32* %items, align 4
  %cmp1370 = icmp sgt i32 %811, 0
  br i1 %cmp1370, label %cond.true.1372, label %cond.false.1374

cond.true.1372:                                   ; preds = %cond.false.1368
  %812 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr1373 = getelementptr inbounds %struct.sv*, %struct.sv** %812, i32 1
  store %struct.sv** %incdec.ptr1373, %struct.sv*** %beglist.addr, align 8
  %813 = load %struct.sv*, %struct.sv** %812, align 8
  br label %cond.end.1375

cond.false.1374:                                  ; preds = %cond.false.1368
  br label %cond.end.1375

cond.end.1375:                                    ; preds = %cond.false.1374, %cond.true.1372
  %cond1376 = phi %struct.sv* [ %813, %cond.true.1372 ], [ @PL_sv_no, %cond.false.1374 ]
  br label %cond.end.1377

cond.end.1377:                                    ; preds = %cond.end.1375, %cond.true.1367
  %cond1378 = phi %struct.sv* [ %810, %cond.true.1367 ], [ %cond1376, %cond.end.1375 ]
  store %struct.sv* %cond1378, %struct.sv** %fromstr, align 8
  %814 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1379 = getelementptr inbounds %struct.sv, %struct.sv* %814, i32 0, i32 2
  %815 = load i32, i32* %sv_flags1379, align 4
  %and1380 = and i32 %815, 65536
  %tobool1381 = icmp ne i32 %and1380, 0
  br i1 %tobool1381, label %cond.true.1382, label %cond.false.1385

cond.true.1382:                                   ; preds = %cond.end.1377
  %816 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1383 = getelementptr inbounds %struct.sv, %struct.sv* %816, i32 0, i32 0
  %817 = load i8*, i8** %sv_any1383, align 8
  %818 = bitcast i8* %817 to %struct.xpvuv*
  %xuv_uv1384 = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %818, i32 0, i32 3
  %819 = load i64, i64* %xuv_uv1384, align 8
  br label %cond.end.1387

cond.false.1385:                                  ; preds = %cond.end.1377
  %820 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1386 = call i64 @Perl_sv_2uv(%struct.sv* %820)
  br label %cond.end.1387

cond.end.1387:                                    ; preds = %cond.false.1385, %cond.true.1382
  %cond1388 = phi i64 [ %819, %cond.true.1382 ], [ %call1386, %cond.false.1385 ]
  store i64 %cond1388, i64* %aulong, align 8
  %821 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %822 = bitcast i64* %aulong to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %821, i8* %822, i64 8, i32 2)
  br label %while.cond.1361

while.end.1389:                                   ; preds = %while.cond.1361
  br label %sw.epilog.1719

sw.bb.1390:                                       ; preds = %if.end.43
  br label %while.cond.1391

while.cond.1391:                                  ; preds = %cond.end.1417, %sw.bb.1390
  %823 = load i32, i32* %len, align 4
  %dec1392 = add nsw i32 %823, -1
  store i32 %dec1392, i32* %len, align 4
  %cmp1393 = icmp sgt i32 %823, 0
  br i1 %cmp1393, label %while.body.1395, label %while.end.1420

while.body.1395:                                  ; preds = %while.cond.1391
  %824 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool1396 = icmp ne %struct.sv* %824, null
  br i1 %tobool1396, label %cond.true.1397, label %cond.false.1398

cond.true.1397:                                   ; preds = %while.body.1395
  %825 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.1407

cond.false.1398:                                  ; preds = %while.body.1395
  %826 = load i32, i32* %items, align 4
  %dec1399 = add nsw i32 %826, -1
  store i32 %dec1399, i32* %items, align 4
  %cmp1400 = icmp sgt i32 %826, 0
  br i1 %cmp1400, label %cond.true.1402, label %cond.false.1404

cond.true.1402:                                   ; preds = %cond.false.1398
  %827 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr1403 = getelementptr inbounds %struct.sv*, %struct.sv** %827, i32 1
  store %struct.sv** %incdec.ptr1403, %struct.sv*** %beglist.addr, align 8
  %828 = load %struct.sv*, %struct.sv** %827, align 8
  br label %cond.end.1405

cond.false.1404:                                  ; preds = %cond.false.1398
  br label %cond.end.1405

cond.end.1405:                                    ; preds = %cond.false.1404, %cond.true.1402
  %cond1406 = phi %struct.sv* [ %828, %cond.true.1402 ], [ @PL_sv_no, %cond.false.1404 ]
  br label %cond.end.1407

cond.end.1407:                                    ; preds = %cond.end.1405, %cond.true.1397
  %cond1408 = phi %struct.sv* [ %825, %cond.true.1397 ], [ %cond1406, %cond.end.1405 ]
  store %struct.sv* %cond1408, %struct.sv** %fromstr, align 8
  %829 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1409 = getelementptr inbounds %struct.sv, %struct.sv* %829, i32 0, i32 2
  %830 = load i32, i32* %sv_flags1409, align 4
  %and1410 = and i32 %830, 65536
  %tobool1411 = icmp ne i32 %and1410, 0
  br i1 %tobool1411, label %cond.true.1412, label %cond.false.1415

cond.true.1412:                                   ; preds = %cond.end.1407
  %831 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1413 = getelementptr inbounds %struct.sv, %struct.sv* %831, i32 0, i32 0
  %832 = load i8*, i8** %sv_any1413, align 8
  %833 = bitcast i8* %832 to %struct.xpvuv*
  %xuv_uv1414 = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %833, i32 0, i32 3
  %834 = load i64, i64* %xuv_uv1414, align 8
  br label %cond.end.1417

cond.false.1415:                                  ; preds = %cond.end.1407
  %835 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1416 = call i64 @Perl_sv_2uv(%struct.sv* %835)
  br label %cond.end.1417

cond.end.1417:                                    ; preds = %cond.false.1415, %cond.true.1412
  %cond1418 = phi i64 [ %834, %cond.true.1412 ], [ %call1416, %cond.false.1415 ]
  %conv1419 = trunc i64 %cond1418 to i32
  store i32 %conv1419, i32* %au32, align 4
  %836 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %837 = bitcast i32* %au32 to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %836, i8* %837, i64 4, i32 2)
  br label %while.cond.1391

while.end.1420:                                   ; preds = %while.cond.1391
  br label %sw.epilog.1719

sw.bb.1421:                                       ; preds = %if.end.43
  br label %while.cond.1422

while.cond.1422:                                  ; preds = %cond.end.1448, %sw.bb.1421
  %838 = load i32, i32* %len, align 4
  %dec1423 = add nsw i32 %838, -1
  store i32 %dec1423, i32* %len, align 4
  %cmp1424 = icmp sgt i32 %838, 0
  br i1 %cmp1424, label %while.body.1426, label %while.end.1450

while.body.1426:                                  ; preds = %while.cond.1422
  %839 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool1427 = icmp ne %struct.sv* %839, null
  br i1 %tobool1427, label %cond.true.1428, label %cond.false.1429

cond.true.1428:                                   ; preds = %while.body.1426
  %840 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.1438

cond.false.1429:                                  ; preds = %while.body.1426
  %841 = load i32, i32* %items, align 4
  %dec1430 = add nsw i32 %841, -1
  store i32 %dec1430, i32* %items, align 4
  %cmp1431 = icmp sgt i32 %841, 0
  br i1 %cmp1431, label %cond.true.1433, label %cond.false.1435

cond.true.1433:                                   ; preds = %cond.false.1429
  %842 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr1434 = getelementptr inbounds %struct.sv*, %struct.sv** %842, i32 1
  store %struct.sv** %incdec.ptr1434, %struct.sv*** %beglist.addr, align 8
  %843 = load %struct.sv*, %struct.sv** %842, align 8
  br label %cond.end.1436

cond.false.1435:                                  ; preds = %cond.false.1429
  br label %cond.end.1436

cond.end.1436:                                    ; preds = %cond.false.1435, %cond.true.1433
  %cond1437 = phi %struct.sv* [ %843, %cond.true.1433 ], [ @PL_sv_no, %cond.false.1435 ]
  br label %cond.end.1438

cond.end.1438:                                    ; preds = %cond.end.1436, %cond.true.1428
  %cond1439 = phi %struct.sv* [ %840, %cond.true.1428 ], [ %cond1437, %cond.end.1436 ]
  store %struct.sv* %cond1439, %struct.sv** %fromstr, align 8
  %844 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1440 = getelementptr inbounds %struct.sv, %struct.sv* %844, i32 0, i32 2
  %845 = load i32, i32* %sv_flags1440, align 4
  %and1441 = and i32 %845, 65536
  %tobool1442 = icmp ne i32 %and1441, 0
  br i1 %tobool1442, label %cond.true.1443, label %cond.false.1446

cond.true.1443:                                   ; preds = %cond.end.1438
  %846 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1444 = getelementptr inbounds %struct.sv, %struct.sv* %846, i32 0, i32 0
  %847 = load i8*, i8** %sv_any1444, align 8
  %848 = bitcast i8* %847 to %struct.xpviv*
  %xiv_iv1445 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %848, i32 0, i32 3
  %849 = load i64, i64* %xiv_iv1445, align 8
  br label %cond.end.1448

cond.false.1446:                                  ; preds = %cond.end.1438
  %850 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1447 = call i64 @Perl_sv_2iv(%struct.sv* %850)
  br label %cond.end.1448

cond.end.1448:                                    ; preds = %cond.false.1446, %cond.true.1443
  %cond1449 = phi i64 [ %849, %cond.true.1443 ], [ %call1447, %cond.false.1446 ]
  store i64 %cond1449, i64* %along, align 8
  %851 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %852 = bitcast i64* %along to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %851, i8* %852, i64 8, i32 2)
  br label %while.cond.1422

while.end.1450:                                   ; preds = %while.cond.1422
  br label %sw.epilog.1719

sw.bb.1451:                                       ; preds = %if.end.43
  br label %while.cond.1452

while.cond.1452:                                  ; preds = %cond.end.1478, %sw.bb.1451
  %853 = load i32, i32* %len, align 4
  %dec1453 = add nsw i32 %853, -1
  store i32 %dec1453, i32* %len, align 4
  %cmp1454 = icmp sgt i32 %853, 0
  br i1 %cmp1454, label %while.body.1456, label %while.end.1481

while.body.1456:                                  ; preds = %while.cond.1452
  %854 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool1457 = icmp ne %struct.sv* %854, null
  br i1 %tobool1457, label %cond.true.1458, label %cond.false.1459

cond.true.1458:                                   ; preds = %while.body.1456
  %855 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.1468

cond.false.1459:                                  ; preds = %while.body.1456
  %856 = load i32, i32* %items, align 4
  %dec1460 = add nsw i32 %856, -1
  store i32 %dec1460, i32* %items, align 4
  %cmp1461 = icmp sgt i32 %856, 0
  br i1 %cmp1461, label %cond.true.1463, label %cond.false.1465

cond.true.1463:                                   ; preds = %cond.false.1459
  %857 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr1464 = getelementptr inbounds %struct.sv*, %struct.sv** %857, i32 1
  store %struct.sv** %incdec.ptr1464, %struct.sv*** %beglist.addr, align 8
  %858 = load %struct.sv*, %struct.sv** %857, align 8
  br label %cond.end.1466

cond.false.1465:                                  ; preds = %cond.false.1459
  br label %cond.end.1466

cond.end.1466:                                    ; preds = %cond.false.1465, %cond.true.1463
  %cond1467 = phi %struct.sv* [ %858, %cond.true.1463 ], [ @PL_sv_no, %cond.false.1465 ]
  br label %cond.end.1468

cond.end.1468:                                    ; preds = %cond.end.1466, %cond.true.1458
  %cond1469 = phi %struct.sv* [ %855, %cond.true.1458 ], [ %cond1467, %cond.end.1466 ]
  store %struct.sv* %cond1469, %struct.sv** %fromstr, align 8
  %859 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1470 = getelementptr inbounds %struct.sv, %struct.sv* %859, i32 0, i32 2
  %860 = load i32, i32* %sv_flags1470, align 4
  %and1471 = and i32 %860, 65536
  %tobool1472 = icmp ne i32 %and1471, 0
  br i1 %tobool1472, label %cond.true.1473, label %cond.false.1476

cond.true.1473:                                   ; preds = %cond.end.1468
  %861 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1474 = getelementptr inbounds %struct.sv, %struct.sv* %861, i32 0, i32 0
  %862 = load i8*, i8** %sv_any1474, align 8
  %863 = bitcast i8* %862 to %struct.xpviv*
  %xiv_iv1475 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %863, i32 0, i32 3
  %864 = load i64, i64* %xiv_iv1475, align 8
  br label %cond.end.1478

cond.false.1476:                                  ; preds = %cond.end.1468
  %865 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1477 = call i64 @Perl_sv_2iv(%struct.sv* %865)
  br label %cond.end.1478

cond.end.1478:                                    ; preds = %cond.false.1476, %cond.true.1473
  %cond1479 = phi i64 [ %864, %cond.true.1473 ], [ %call1477, %cond.false.1476 ]
  %conv1480 = trunc i64 %cond1479 to i32
  store i32 %conv1480, i32* %ai32, align 4
  %866 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %867 = bitcast i32* %ai32 to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %866, i8* %867, i64 4, i32 2)
  br label %while.cond.1452

while.end.1481:                                   ; preds = %while.cond.1452
  br label %sw.epilog.1719

sw.bb.1482:                                       ; preds = %if.end.43
  br label %while.cond.1483

while.cond.1483:                                  ; preds = %cond.end.1509, %sw.bb.1482
  %868 = load i32, i32* %len, align 4
  %dec1484 = add nsw i32 %868, -1
  store i32 %dec1484, i32* %len, align 4
  %cmp1485 = icmp sgt i32 %868, 0
  br i1 %cmp1485, label %while.body.1487, label %while.end.1511

while.body.1487:                                  ; preds = %while.cond.1483
  %869 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool1488 = icmp ne %struct.sv* %869, null
  br i1 %tobool1488, label %cond.true.1489, label %cond.false.1490

cond.true.1489:                                   ; preds = %while.body.1487
  %870 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.1499

cond.false.1490:                                  ; preds = %while.body.1487
  %871 = load i32, i32* %items, align 4
  %dec1491 = add nsw i32 %871, -1
  store i32 %dec1491, i32* %items, align 4
  %cmp1492 = icmp sgt i32 %871, 0
  br i1 %cmp1492, label %cond.true.1494, label %cond.false.1496

cond.true.1494:                                   ; preds = %cond.false.1490
  %872 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr1495 = getelementptr inbounds %struct.sv*, %struct.sv** %872, i32 1
  store %struct.sv** %incdec.ptr1495, %struct.sv*** %beglist.addr, align 8
  %873 = load %struct.sv*, %struct.sv** %872, align 8
  br label %cond.end.1497

cond.false.1496:                                  ; preds = %cond.false.1490
  br label %cond.end.1497

cond.end.1497:                                    ; preds = %cond.false.1496, %cond.true.1494
  %cond1498 = phi %struct.sv* [ %873, %cond.true.1494 ], [ @PL_sv_no, %cond.false.1496 ]
  br label %cond.end.1499

cond.end.1499:                                    ; preds = %cond.end.1497, %cond.true.1489
  %cond1500 = phi %struct.sv* [ %870, %cond.true.1489 ], [ %cond1498, %cond.end.1497 ]
  store %struct.sv* %cond1500, %struct.sv** %fromstr, align 8
  %874 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1501 = getelementptr inbounds %struct.sv, %struct.sv* %874, i32 0, i32 2
  %875 = load i32, i32* %sv_flags1501, align 4
  %and1502 = and i32 %875, 65536
  %tobool1503 = icmp ne i32 %and1502, 0
  br i1 %tobool1503, label %cond.true.1504, label %cond.false.1507

cond.true.1504:                                   ; preds = %cond.end.1499
  %876 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1505 = getelementptr inbounds %struct.sv, %struct.sv* %876, i32 0, i32 0
  %877 = load i8*, i8** %sv_any1505, align 8
  %878 = bitcast i8* %877 to %struct.xpvuv*
  %xuv_uv1506 = getelementptr inbounds %struct.xpvuv, %struct.xpvuv* %878, i32 0, i32 3
  %879 = load i64, i64* %xuv_uv1506, align 8
  br label %cond.end.1509

cond.false.1507:                                  ; preds = %cond.end.1499
  %880 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1508 = call i64 @Perl_sv_2uv(%struct.sv* %880)
  br label %cond.end.1509

cond.end.1509:                                    ; preds = %cond.false.1507, %cond.true.1504
  %cond1510 = phi i64 [ %879, %cond.true.1504 ], [ %call1508, %cond.false.1507 ]
  store i64 %cond1510, i64* %auquad, align 8
  %881 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %882 = bitcast i64* %auquad to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %881, i8* %882, i64 8, i32 2)
  br label %while.cond.1483

while.end.1511:                                   ; preds = %while.cond.1483
  br label %sw.epilog.1719

sw.bb.1512:                                       ; preds = %if.end.43
  br label %while.cond.1513

while.cond.1513:                                  ; preds = %cond.end.1539, %sw.bb.1512
  %883 = load i32, i32* %len, align 4
  %dec1514 = add nsw i32 %883, -1
  store i32 %dec1514, i32* %len, align 4
  %cmp1515 = icmp sgt i32 %883, 0
  br i1 %cmp1515, label %while.body.1517, label %while.end.1541

while.body.1517:                                  ; preds = %while.cond.1513
  %884 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool1518 = icmp ne %struct.sv* %884, null
  br i1 %tobool1518, label %cond.true.1519, label %cond.false.1520

cond.true.1519:                                   ; preds = %while.body.1517
  %885 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.1529

cond.false.1520:                                  ; preds = %while.body.1517
  %886 = load i32, i32* %items, align 4
  %dec1521 = add nsw i32 %886, -1
  store i32 %dec1521, i32* %items, align 4
  %cmp1522 = icmp sgt i32 %886, 0
  br i1 %cmp1522, label %cond.true.1524, label %cond.false.1526

cond.true.1524:                                   ; preds = %cond.false.1520
  %887 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr1525 = getelementptr inbounds %struct.sv*, %struct.sv** %887, i32 1
  store %struct.sv** %incdec.ptr1525, %struct.sv*** %beglist.addr, align 8
  %888 = load %struct.sv*, %struct.sv** %887, align 8
  br label %cond.end.1527

cond.false.1526:                                  ; preds = %cond.false.1520
  br label %cond.end.1527

cond.end.1527:                                    ; preds = %cond.false.1526, %cond.true.1524
  %cond1528 = phi %struct.sv* [ %888, %cond.true.1524 ], [ @PL_sv_no, %cond.false.1526 ]
  br label %cond.end.1529

cond.end.1529:                                    ; preds = %cond.end.1527, %cond.true.1519
  %cond1530 = phi %struct.sv* [ %885, %cond.true.1519 ], [ %cond1528, %cond.end.1527 ]
  store %struct.sv* %cond1530, %struct.sv** %fromstr, align 8
  %889 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1531 = getelementptr inbounds %struct.sv, %struct.sv* %889, i32 0, i32 2
  %890 = load i32, i32* %sv_flags1531, align 4
  %and1532 = and i32 %890, 65536
  %tobool1533 = icmp ne i32 %and1532, 0
  br i1 %tobool1533, label %cond.true.1534, label %cond.false.1537

cond.true.1534:                                   ; preds = %cond.end.1529
  %891 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1535 = getelementptr inbounds %struct.sv, %struct.sv* %891, i32 0, i32 0
  %892 = load i8*, i8** %sv_any1535, align 8
  %893 = bitcast i8* %892 to %struct.xpviv*
  %xiv_iv1536 = getelementptr inbounds %struct.xpviv, %struct.xpviv* %893, i32 0, i32 3
  %894 = load i64, i64* %xiv_iv1536, align 8
  br label %cond.end.1539

cond.false.1537:                                  ; preds = %cond.end.1529
  %895 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1538 = call i64 @Perl_sv_2iv(%struct.sv* %895)
  br label %cond.end.1539

cond.end.1539:                                    ; preds = %cond.false.1537, %cond.true.1534
  %cond1540 = phi i64 [ %894, %cond.true.1534 ], [ %call1538, %cond.false.1537 ]
  store i64 %cond1540, i64* %aquad, align 8
  %896 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %897 = bitcast i64* %aquad to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %896, i8* %897, i64 8, i32 2)
  br label %while.cond.1513

while.end.1541:                                   ; preds = %while.cond.1513
  br label %sw.epilog.1719

sw.bb.1542:                                       ; preds = %if.end.43
  store i32 1, i32* %len, align 4
  br label %sw.bb.1543

sw.bb.1543:                                       ; preds = %if.end.43, %sw.bb.1542
  br label %while.cond.1544

while.cond.1544:                                  ; preds = %if.end.1651, %sw.bb.1543
  %898 = load i32, i32* %len, align 4
  %dec1545 = add nsw i32 %898, -1
  store i32 %dec1545, i32* %len, align 4
  %cmp1546 = icmp sgt i32 %898, 0
  br i1 %cmp1546, label %while.body.1548, label %while.end.1652

while.body.1548:                                  ; preds = %while.cond.1544
  %899 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool1549 = icmp ne %struct.sv* %899, null
  br i1 %tobool1549, label %cond.true.1550, label %cond.false.1551

cond.true.1550:                                   ; preds = %while.body.1548
  %900 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.1560

cond.false.1551:                                  ; preds = %while.body.1548
  %901 = load i32, i32* %items, align 4
  %dec1552 = add nsw i32 %901, -1
  store i32 %dec1552, i32* %items, align 4
  %cmp1553 = icmp sgt i32 %901, 0
  br i1 %cmp1553, label %cond.true.1555, label %cond.false.1557

cond.true.1555:                                   ; preds = %cond.false.1551
  %902 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr1556 = getelementptr inbounds %struct.sv*, %struct.sv** %902, i32 1
  store %struct.sv** %incdec.ptr1556, %struct.sv*** %beglist.addr, align 8
  %903 = load %struct.sv*, %struct.sv** %902, align 8
  br label %cond.end.1558

cond.false.1557:                                  ; preds = %cond.false.1551
  br label %cond.end.1558

cond.end.1558:                                    ; preds = %cond.false.1557, %cond.true.1555
  %cond1559 = phi %struct.sv* [ %903, %cond.true.1555 ], [ @PL_sv_no, %cond.false.1557 ]
  br label %cond.end.1560

cond.end.1560:                                    ; preds = %cond.end.1558, %cond.true.1550
  %cond1561 = phi %struct.sv* [ %900, %cond.true.1550 ], [ %cond1559, %cond.end.1558 ]
  store %struct.sv* %cond1561, %struct.sv** %fromstr, align 8
  %904 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1562 = getelementptr inbounds %struct.sv, %struct.sv* %904, i32 0, i32 2
  %905 = load i32, i32* %sv_flags1562, align 4
  %and1563 = and i32 %905, 8192
  %tobool1564 = icmp ne i32 %and1563, 0
  br i1 %tobool1564, label %if.then.1565, label %if.end.1567

if.then.1565:                                     ; preds = %cond.end.1560
  %906 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1566 = call i32 @Perl_mg_get(%struct.sv* %906)
  br label %if.end.1567

if.end.1567:                                      ; preds = %if.then.1565, %cond.end.1560
  %907 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1568 = getelementptr inbounds %struct.sv, %struct.sv* %907, i32 0, i32 2
  %908 = load i32, i32* %sv_flags1568, align 4
  %and1569 = and i32 %908, 118423552
  %tobool1570 = icmp ne i32 %and1569, 0
  br i1 %tobool1570, label %if.else.1572, label %if.then.1571

if.then.1571:                                     ; preds = %if.end.1567
  store i8* null, i8** %aptr, align 8
  br label %if.end.1651

if.else.1572:                                     ; preds = %if.end.1567
  %909 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1574 = getelementptr inbounds %struct.cop, %struct.cop* %909, i32 0, i32 14
  %910 = load %struct.sv*, %struct.sv** %cop_warnings1574, align 8
  %cmp1575 = icmp ne %struct.sv* %910, null
  br i1 %cmp1575, label %land.lhs.true.1577, label %lor.lhs.false.1593

land.lhs.true.1577:                               ; preds = %if.else.1572
  %911 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1578 = getelementptr inbounds %struct.cop, %struct.cop* %911, i32 0, i32 14
  %912 = load %struct.sv*, %struct.sv** %cop_warnings1578, align 8
  %cmp1579 = icmp ne %struct.sv* %912, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp1579, label %land.lhs.true.1581, label %lor.lhs.false.1593

land.lhs.true.1581:                               ; preds = %land.lhs.true.1577
  %913 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1582 = getelementptr inbounds %struct.cop, %struct.cop* %913, i32 0, i32 14
  %914 = load %struct.sv*, %struct.sv** %cop_warnings1582, align 8
  %cmp1583 = icmp eq %struct.sv* %914, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp1583, label %land.lhs.true.1601, label %lor.lhs.false.1585

lor.lhs.false.1585:                               ; preds = %land.lhs.true.1581
  %915 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1586 = getelementptr inbounds %struct.cop, %struct.cop* %915, i32 0, i32 14
  %916 = load %struct.sv*, %struct.sv** %cop_warnings1586, align 8
  %sv_any1587 = getelementptr inbounds %struct.sv, %struct.sv* %916, i32 0, i32 0
  %917 = load i8*, i8** %sv_any1587, align 8
  %918 = bitcast i8* %917 to %struct.xpv*
  %xpv_pv1588 = getelementptr inbounds %struct.xpv, %struct.xpv* %918, i32 0, i32 0
  %919 = load i8*, i8** %xpv_pv1588, align 8
  %arrayidx1589 = getelementptr inbounds i8, i8* %919, i64 4
  %920 = load i8, i8* %arrayidx1589, align 1
  %conv1590 = sext i8 %920 to i32
  %and1591 = and i32 %conv1590, 1
  %tobool1592 = icmp ne i32 %and1591, 0
  br i1 %tobool1592, label %land.lhs.true.1601, label %lor.lhs.false.1593

lor.lhs.false.1593:                               ; preds = %lor.lhs.false.1585, %land.lhs.true.1577, %if.else.1572
  %921 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings1594 = getelementptr inbounds %struct.cop, %struct.cop* %921, i32 0, i32 14
  %922 = load %struct.sv*, %struct.sv** %cop_warnings1594, align 8
  %cmp1595 = icmp eq %struct.sv* %922, null
  br i1 %cmp1595, label %land.lhs.true.1597, label %if.end.1614

land.lhs.true.1597:                               ; preds = %lor.lhs.false.1593
  %923 = load i8, i8* @PL_dowarn, align 1
  %conv1598 = zext i8 %923 to i32
  %and1599 = and i32 %conv1598, 1
  %tobool1600 = icmp ne i32 %and1599, 0
  br i1 %tobool1600, label %land.lhs.true.1601, label %if.end.1614

land.lhs.true.1601:                               ; preds = %land.lhs.true.1597, %lor.lhs.false.1585, %land.lhs.true.1581
  %924 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1602 = getelementptr inbounds %struct.sv, %struct.sv* %924, i32 0, i32 2
  %925 = load i32, i32* %sv_flags1602, align 4
  %and1603 = and i32 %925, 2048
  %tobool1604 = icmp ne i32 %and1603, 0
  br i1 %tobool1604, label %if.then.1613, label %lor.lhs.false.1605

lor.lhs.false.1605:                               ; preds = %land.lhs.true.1601
  %926 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1606 = getelementptr inbounds %struct.sv, %struct.sv* %926, i32 0, i32 2
  %927 = load i32, i32* %sv_flags1606, align 4
  %and1607 = and i32 %927, 512
  %tobool1608 = icmp ne i32 %and1607, 0
  br i1 %tobool1608, label %land.lhs.true.1609, label %if.end.1614

land.lhs.true.1609:                               ; preds = %lor.lhs.false.1605
  %928 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1610 = getelementptr inbounds %struct.sv, %struct.sv* %928, i32 0, i32 2
  %929 = load i32, i32* %sv_flags1610, align 4
  %and1611 = and i32 %929, 8388608
  %tobool1612 = icmp ne i32 %and1611, 0
  br i1 %tobool1612, label %if.end.1614, label %if.then.1613

if.then.1613:                                     ; preds = %land.lhs.true.1609, %land.lhs.true.1601
  call void (i32, i8*, ...) @Perl_warner(i32 16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.1614

if.end.1614:                                      ; preds = %if.then.1613, %land.lhs.true.1609, %lor.lhs.false.1605, %land.lhs.true.1597, %lor.lhs.false.1593
  %930 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1615 = getelementptr inbounds %struct.sv, %struct.sv* %930, i32 0, i32 2
  %931 = load i32, i32* %sv_flags1615, align 4
  %and1616 = and i32 %931, 262144
  %tobool1617 = icmp ne i32 %and1616, 0
  br i1 %tobool1617, label %if.then.1622, label %lor.lhs.false.1618

lor.lhs.false.1618:                               ; preds = %if.end.1614
  %932 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1619 = getelementptr inbounds %struct.sv, %struct.sv* %932, i32 0, i32 2
  %933 = load i32, i32* %sv_flags1619, align 4
  %and1620 = and i32 %933, 196608
  %tobool1621 = icmp ne i32 %and1620, 0
  br i1 %tobool1621, label %if.then.1622, label %if.else.1636

if.then.1622:                                     ; preds = %lor.lhs.false.1618, %if.end.1614
  %934 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1623 = getelementptr inbounds %struct.sv, %struct.sv* %934, i32 0, i32 2
  %935 = load i32, i32* %sv_flags1623, align 4
  %and1624 = and i32 %935, 262144
  %cmp1625 = icmp eq i32 %and1624, 262144
  br i1 %cmp1625, label %cond.true.1627, label %cond.false.1632

cond.true.1627:                                   ; preds = %if.then.1622
  %936 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1628 = getelementptr inbounds %struct.sv, %struct.sv* %936, i32 0, i32 0
  %937 = load i8*, i8** %sv_any1628, align 8
  %938 = bitcast i8* %937 to %struct.xpv*
  %xpv_cur1629 = getelementptr inbounds %struct.xpv, %struct.xpv* %938, i32 0, i32 1
  %939 = load i64, i64* %xpv_cur1629, align 8
  store i64 %939, i64* %n_a, align 8
  %940 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1630 = getelementptr inbounds %struct.sv, %struct.sv* %940, i32 0, i32 0
  %941 = load i8*, i8** %sv_any1630, align 8
  %942 = bitcast i8* %941 to %struct.xpv*
  %xpv_pv1631 = getelementptr inbounds %struct.xpv, %struct.xpv* %942, i32 0, i32 0
  %943 = load i8*, i8** %xpv_pv1631, align 8
  br label %cond.end.1634

cond.false.1632:                                  ; preds = %if.then.1622
  %944 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1633 = call i8* @Perl_sv_2pv_flags(%struct.sv* %944, i64* %n_a, i32 0)
  br label %cond.end.1634

cond.end.1634:                                    ; preds = %cond.false.1632, %cond.true.1627
  %cond1635 = phi i8* [ %943, %cond.true.1627 ], [ %call1633, %cond.false.1632 ]
  store i8* %cond1635, i8** %aptr, align 8
  br label %if.end.1650

if.else.1636:                                     ; preds = %lor.lhs.false.1618
  %945 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1637 = getelementptr inbounds %struct.sv, %struct.sv* %945, i32 0, i32 2
  %946 = load i32, i32* %sv_flags1637, align 4
  %and1638 = and i32 %946, 10223616
  %cmp1639 = icmp eq i32 %and1638, 262144
  br i1 %cmp1639, label %cond.true.1641, label %cond.false.1646

cond.true.1641:                                   ; preds = %if.else.1636
  %947 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1642 = getelementptr inbounds %struct.sv, %struct.sv* %947, i32 0, i32 0
  %948 = load i8*, i8** %sv_any1642, align 8
  %949 = bitcast i8* %948 to %struct.xpv*
  %xpv_cur1643 = getelementptr inbounds %struct.xpv, %struct.xpv* %949, i32 0, i32 1
  %950 = load i64, i64* %xpv_cur1643, align 8
  store i64 %950, i64* %n_a, align 8
  %951 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1644 = getelementptr inbounds %struct.sv, %struct.sv* %951, i32 0, i32 0
  %952 = load i8*, i8** %sv_any1644, align 8
  %953 = bitcast i8* %952 to %struct.xpv*
  %xpv_pv1645 = getelementptr inbounds %struct.xpv, %struct.xpv* %953, i32 0, i32 0
  %954 = load i8*, i8** %xpv_pv1645, align 8
  br label %cond.end.1648

cond.false.1646:                                  ; preds = %if.else.1636
  %955 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1647 = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %955, i64* %n_a, i32 0)
  br label %cond.end.1648

cond.end.1648:                                    ; preds = %cond.false.1646, %cond.true.1641
  %cond1649 = phi i8* [ %954, %cond.true.1641 ], [ %call1647, %cond.false.1646 ]
  store i8* %cond1649, i8** %aptr, align 8
  br label %if.end.1650

if.end.1650:                                      ; preds = %cond.end.1648, %cond.end.1634
  br label %if.end.1651

if.end.1651:                                      ; preds = %if.end.1650, %if.then.1571
  %956 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %957 = bitcast i8** %aptr to i8*
  call void @Perl_sv_catpvn_flags(%struct.sv* %956, i8* %957, i64 8, i32 2)
  br label %while.cond.1544

while.end.1652:                                   ; preds = %while.cond.1544
  br label %sw.epilog.1719

sw.bb.1653:                                       ; preds = %if.end.43
  %958 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  %tobool1654 = icmp ne %struct.sv* %958, null
  br i1 %tobool1654, label %cond.true.1655, label %cond.false.1656

cond.true.1655:                                   ; preds = %sw.bb.1653
  %959 = load %struct.sv*, %struct.sv** %lengthcode, align 8
  br label %cond.end.1665

cond.false.1656:                                  ; preds = %sw.bb.1653
  %960 = load i32, i32* %items, align 4
  %dec1657 = add nsw i32 %960, -1
  store i32 %dec1657, i32* %items, align 4
  %cmp1658 = icmp sgt i32 %960, 0
  br i1 %cmp1658, label %cond.true.1660, label %cond.false.1662

cond.true.1660:                                   ; preds = %cond.false.1656
  %961 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %incdec.ptr1661 = getelementptr inbounds %struct.sv*, %struct.sv** %961, i32 1
  store %struct.sv** %incdec.ptr1661, %struct.sv*** %beglist.addr, align 8
  %962 = load %struct.sv*, %struct.sv** %961, align 8
  br label %cond.end.1663

cond.false.1662:                                  ; preds = %cond.false.1656
  br label %cond.end.1663

cond.end.1663:                                    ; preds = %cond.false.1662, %cond.true.1660
  %cond1664 = phi %struct.sv* [ %962, %cond.true.1660 ], [ @PL_sv_no, %cond.false.1662 ]
  br label %cond.end.1665

cond.end.1665:                                    ; preds = %cond.end.1663, %cond.true.1655
  %cond1666 = phi %struct.sv* [ %959, %cond.true.1655 ], [ %cond1664, %cond.end.1663 ]
  store %struct.sv* %cond1666, %struct.sv** %fromstr, align 8
  %963 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_flags1667 = getelementptr inbounds %struct.sv, %struct.sv* %963, i32 0, i32 2
  %964 = load i32, i32* %sv_flags1667, align 4
  %and1668 = and i32 %964, 262144
  %cmp1669 = icmp eq i32 %and1668, 262144
  br i1 %cmp1669, label %cond.true.1671, label %cond.false.1676

cond.true.1671:                                   ; preds = %cond.end.1665
  %965 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1672 = getelementptr inbounds %struct.sv, %struct.sv* %965, i32 0, i32 0
  %966 = load i8*, i8** %sv_any1672, align 8
  %967 = bitcast i8* %966 to %struct.xpv*
  %xpv_cur1673 = getelementptr inbounds %struct.xpv, %struct.xpv* %967, i32 0, i32 1
  %968 = load i64, i64* %xpv_cur1673, align 8
  store i64 %968, i64* %fromlen, align 8
  %969 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %sv_any1674 = getelementptr inbounds %struct.sv, %struct.sv* %969, i32 0, i32 0
  %970 = load i8*, i8** %sv_any1674, align 8
  %971 = bitcast i8* %970 to %struct.xpv*
  %xpv_pv1675 = getelementptr inbounds %struct.xpv, %struct.xpv* %971, i32 0, i32 0
  %972 = load i8*, i8** %xpv_pv1675, align 8
  br label %cond.end.1678

cond.false.1676:                                  ; preds = %cond.end.1665
  %973 = load %struct.sv*, %struct.sv** %fromstr, align 8
  %call1677 = call i8* @Perl_sv_2pv_flags(%struct.sv* %973, i64* %fromlen, i32 2)
  br label %cond.end.1678

cond.end.1678:                                    ; preds = %cond.false.1676, %cond.true.1671
  %cond1679 = phi i8* [ %972, %cond.true.1671 ], [ %call1677, %cond.false.1676 ]
  store i8* %cond1679, i8** %aptr, align 8
  %974 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any1680 = getelementptr inbounds %struct.sv, %struct.sv* %974, i32 0, i32 0
  %975 = load i8*, i8** %sv_any1680, align 8
  %976 = bitcast i8* %975 to %struct.xpv*
  %xpv_len1681 = getelementptr inbounds %struct.xpv, %struct.xpv* %976, i32 0, i32 2
  %977 = load i64, i64* %xpv_len1681, align 8
  %978 = load i64, i64* %fromlen, align 8
  %mul1682 = mul i64 %978, 4
  %div1683 = udiv i64 %mul1682, 3
  %cmp1684 = icmp ult i64 %977, %div1683
  br i1 %cmp1684, label %cond.true.1686, label %cond.false.1690

cond.true.1686:                                   ; preds = %cond.end.1678
  %979 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %980 = load i64, i64* %fromlen, align 8
  %mul1687 = mul i64 %980, 4
  %div1688 = udiv i64 %mul1687, 3
  %call1689 = call i8* @Perl_sv_grow(%struct.sv* %979, i64 %div1688)
  br label %cond.end.1693

cond.false.1690:                                  ; preds = %cond.end.1678
  %981 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %sv_any1691 = getelementptr inbounds %struct.sv, %struct.sv* %981, i32 0, i32 0
  %982 = load i8*, i8** %sv_any1691, align 8
  %983 = bitcast i8* %982 to %struct.xpv*
  %xpv_pv1692 = getelementptr inbounds %struct.xpv, %struct.xpv* %983, i32 0, i32 0
  %984 = load i8*, i8** %xpv_pv1692, align 8
  br label %cond.end.1693

cond.end.1693:                                    ; preds = %cond.false.1690, %cond.true.1686
  %cond1694 = phi i8* [ %call1689, %cond.true.1686 ], [ %984, %cond.false.1690 ]
  %985 = load i32, i32* %len, align 4
  %cmp1695 = icmp sle i32 %985, 2
  br i1 %cmp1695, label %if.then.1697, label %if.else.1698

if.then.1697:                                     ; preds = %cond.end.1693
  store i32 45, i32* %len, align 4
  br label %if.end.1701

if.else.1698:                                     ; preds = %cond.end.1693
  %986 = load i32, i32* %len, align 4
  %div1699 = sdiv i32 %986, 3
  %mul1700 = mul nsw i32 %div1699, 3
  store i32 %mul1700, i32* %len, align 4
  br label %if.end.1701

if.end.1701:                                      ; preds = %if.else.1698, %if.then.1697
  br label %while.cond.1702

while.cond.1702:                                  ; preds = %if.end.1713, %if.end.1701
  %987 = load i64, i64* %fromlen, align 8
  %cmp1703 = icmp ugt i64 %987, 0
  br i1 %cmp1703, label %while.body.1705, label %while.end.1718

while.body.1705:                                  ; preds = %while.cond.1702
  %988 = load i64, i64* %fromlen, align 8
  %conv1707 = trunc i64 %988 to i32
  %989 = load i32, i32* %len, align 4
  %cmp1708 = icmp sgt i32 %conv1707, %989
  br i1 %cmp1708, label %if.then.1710, label %if.else.1711

if.then.1710:                                     ; preds = %while.body.1705
  %990 = load i32, i32* %len, align 4
  store i32 %990, i32* %todo, align 4
  br label %if.end.1713

if.else.1711:                                     ; preds = %while.body.1705
  %991 = load i64, i64* %fromlen, align 8
  %conv1712 = trunc i64 %991 to i32
  store i32 %conv1712, i32* %todo, align 4
  br label %if.end.1713

if.end.1713:                                      ; preds = %if.else.1711, %if.then.1710
  %992 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %993 = load i8*, i8** %aptr, align 8
  %994 = load i32, i32* %todo, align 4
  call void @S_doencodes(%struct.sv* %992, i8* %993, i32 %994)
  %995 = load i32, i32* %todo, align 4
  %conv1714 = sext i32 %995 to i64
  %996 = load i64, i64* %fromlen, align 8
  %sub1715 = sub i64 %996, %conv1714
  store i64 %sub1715, i64* %fromlen, align 8
  %997 = load i32, i32* %todo, align 4
  %998 = load i8*, i8** %aptr, align 8
  %idx.ext1716 = sext i32 %997 to i64
  %add.ptr1717 = getelementptr inbounds i8, i8* %998, i64 %idx.ext1716
  store i8* %add.ptr1717, i8** %aptr, align 8
  br label %while.cond.1702

while.end.1718:                                   ; preds = %while.cond.1702
  br label %sw.epilog.1719

sw.epilog.1719:                                   ; preds = %while.end.1718, %while.end.1652, %while.end.1541, %while.end.1511, %while.end.1481, %while.end.1450, %while.end.1420, %while.end.1389, %while.end.1359, %while.end.1325, %while.end.1291, %while.end.1260, %while.end.1043, %while.end.1013, %while.end.983, %while.end.952, %while.end.921, %while.end.890, %while.end.858, %while.end.826, %while.end.796, %while.end.766, %while.end.731, %while.end.641, %while.end.524, %while.end.343, %if.end.208, %while.end.129, %if.end.101, %while.end, %if.end.61
  %999 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %1000 = bitcast %struct.tempsym_t* %999 to i8*
  %1001 = bitcast %struct.tempsym_t* %lookahead to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1000, i8* %1001, i64 56, i32 8, i1 false)
  br label %while.cond

while.end.1720:                                   ; preds = %while.cond
  %1002 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  ret %struct.sv** %1002
}

; Function Attrs: nounwind uwtable
define void @Perl_packlist(%struct.sv* %cat, i8* %pat, i8* %patend, %struct.sv** %beglist, %struct.sv** %endlist) #0 {
entry:
  %cat.addr = alloca %struct.sv*, align 8
  %pat.addr = alloca i8*, align 8
  %patend.addr = alloca i8*, align 8
  %beglist.addr = alloca %struct.sv**, align 8
  %endlist.addr = alloca %struct.sv**, align 8
  %sym = alloca %struct.tempsym_t, align 8
  store %struct.sv* %cat, %struct.sv** %cat.addr, align 8
  store i8* %pat, i8** %pat.addr, align 8
  store i8* %patend, i8** %patend.addr, align 8
  store %struct.sv** %beglist, %struct.sv*** %beglist.addr, align 8
  store %struct.sv** %endlist, %struct.sv*** %endlist.addr, align 8
  %0 = bitcast %struct.tempsym_t* %sym to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 8, i1 false)
  %1 = load i8*, i8** %pat.addr, align 8
  %patptr = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %sym, i32 0, i32 0
  store i8* %1, i8** %patptr, align 8
  %2 = load i8*, i8** %patend.addr, align 8
  %patend1 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %sym, i32 0, i32 1
  store i8* %2, i8** %patend1, align 8
  %flags = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %sym, i32 0, i32 8
  store i32 1, i32* %flags, align 4
  %3 = load %struct.sv*, %struct.sv** %cat.addr, align 8
  %4 = load %struct.sv**, %struct.sv*** %beglist.addr, align 8
  %5 = load %struct.sv**, %struct.sv*** %endlist.addr, align 8
  %call = call %struct.sv** @S_pack_rec(%struct.sv* %3, %struct.tempsym_t* %sym, %struct.sv** %4, %struct.sv** %5)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.op* @Perl_pp_pack() #0 {
entry:
  %sp = alloca %struct.sv**, align 8
  %mark = alloca %struct.sv**, align 8
  %origmark = alloca i32, align 4
  %targ = alloca %struct.sv*, align 8
  %cat = alloca %struct.sv*, align 8
  %fromlen = alloca i64, align 8
  %pat = alloca i8*, align 8
  %patend = alloca i8*, align 8
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
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %origmark, align 4
  %6 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_targ = getelementptr inbounds %struct.op, %struct.op* %6, i32 0, i32 3
  %7 = load i64, i64* %op_targ, align 8
  %8 = load %struct.sv**, %struct.sv*** @PL_curpad, align 8
  %arrayidx = getelementptr inbounds %struct.sv*, %struct.sv** %8, i64 %7
  %9 = load %struct.sv*, %struct.sv** %arrayidx, align 8
  store %struct.sv* %9, %struct.sv** %targ, align 8
  %10 = load %struct.sv*, %struct.sv** %targ, align 8
  store %struct.sv* %10, %struct.sv** %cat, align 8
  %11 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.sv*, %struct.sv** %11, i32 1
  store %struct.sv** %incdec.ptr1, %struct.sv*** %mark, align 8
  %12 = load %struct.sv*, %struct.sv** %incdec.ptr1, align 8
  store %struct.sv* %12, %struct.sv** @PL_Sv, align 8
  %13 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %13, i32 0, i32 2
  %14 = load i32, i32* %sv_flags, align 4
  %and = and i32 %14, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 0
  %16 = load i8*, i8** %sv_any, align 8
  %17 = bitcast i8* %16 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %17, i32 0, i32 1
  %18 = load i64, i64* %xpv_cur, align 8
  store i64 %18, i64* %fromlen, align 8
  %19 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_any3 = getelementptr inbounds %struct.sv, %struct.sv* %19, i32 0, i32 0
  %20 = load i8*, i8** %sv_any3, align 8
  %21 = bitcast i8* %20 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %21, i32 0, i32 0
  %22 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %23 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %23, i64* %fromlen, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %22, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %pat, align 8
  %24 = load i8*, i8** %pat, align 8
  %25 = load i64, i64* %fromlen, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %add.ptr4, i8** %patend, align 8
  %26 = load %struct.sv**, %struct.sv*** %mark, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.sv*, %struct.sv** %26, i32 1
  store %struct.sv** %incdec.ptr5, %struct.sv*** %mark, align 8
  %27 = load %struct.sv*, %struct.sv** %cat, align 8
  call void @Perl_sv_setpvn(%struct.sv* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 0)
  %28 = load %struct.sv*, %struct.sv** %cat, align 8
  %29 = load i8*, i8** %pat, align 8
  %30 = load i8*, i8** %patend, align 8
  %31 = load %struct.sv**, %struct.sv*** %mark, align 8
  %32 = load %struct.sv**, %struct.sv*** %sp, align 8
  %add.ptr6 = getelementptr inbounds %struct.sv*, %struct.sv** %32, i64 1
  call void @Perl_packlist(%struct.sv* %28, i8* %29, i8* %30, %struct.sv** %31, %struct.sv** %add.ptr6)
  %33 = load %struct.sv*, %struct.sv** %cat, align 8
  %sv_flags7 = getelementptr inbounds %struct.sv, %struct.sv* %33, i32 0, i32 2
  %34 = load i32, i32* %sv_flags7, align 4
  %and8 = and i32 %34, 16384
  %tobool = icmp ne i32 %and8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %35 = load %struct.sv*, %struct.sv** %cat, align 8
  %call9 = call i32 @Perl_mg_set(%struct.sv* %35)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %36 = load %struct.sv**, %struct.sv*** @PL_stack_base, align 8
  %37 = load i32, i32* %origmark, align 4
  %idx.ext10 = sext i32 %37 to i64
  %add.ptr11 = getelementptr inbounds %struct.sv*, %struct.sv** %36, i64 %idx.ext10
  store %struct.sv** %add.ptr11, %struct.sv*** %sp, align 8
  %38 = load %struct.sv*, %struct.sv** %cat, align 8
  %39 = load %struct.sv**, %struct.sv*** %sp, align 8
  %incdec.ptr12 = getelementptr inbounds %struct.sv*, %struct.sv** %39, i32 1
  store %struct.sv** %incdec.ptr12, %struct.sv*** %sp, align 8
  store %struct.sv* %38, %struct.sv** %incdec.ptr12, align 8
  %40 = load %struct.sv**, %struct.sv*** %sp, align 8
  store %struct.sv** %40, %struct.sv*** @PL_stack_sp, align 8
  %41 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_next = getelementptr inbounds %struct.op, %struct.op* %41, i32 0, i32 0
  %42 = load %struct.op*, %struct.op** %op_next, align 8
  ret %struct.op* %42
}

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #2

declare i32 @Perl_mg_set(%struct.sv*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @S_next_symbol(%struct.tempsym_t* %symptr) #0 {
entry:
  %retval = alloca i8, align 1
  %symptr.addr = alloca %struct.tempsym_t*, align 8
  %patptr = alloca i8*, align 8
  %patend = alloca i8*, align 8
  %code = alloca i32, align 4
  %inherited_modifiers = alloca i32, align 4
  %allowed = alloca i8*, align 8
  %modifier = alloca i32, align 4
  %lenptr = alloca i8*, align 8
  %savsym = alloca %struct.tempsym_t, align 8
  store %struct.tempsym_t* %symptr, %struct.tempsym_t** %symptr.addr, align 8
  %0 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %patptr1 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %0, i32 0, i32 0
  %1 = load i8*, i8** %patptr1, align 8
  store i8* %1, i8** %patptr, align 8
  %2 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %patend2 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %2, i32 0, i32 1
  %3 = load i8*, i8** %patend2, align 8
  store i8* %3, i8** %patend, align 8
  %4 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %4, i32 0, i32 8
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, -5
  store i32 %and, i32* %flags, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.322, %if.end.75, %entry
  %6 = load i8*, i8** %patptr, align 8
  %7 = load i8*, i8** %patend, align 8
  %cmp = icmp ult i8* %6, %7
  br i1 %cmp, label %while.body, label %while.end.323

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %patptr, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %cmp3 = icmp eq i32 %conv, 32
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %10 = load i8*, i8** %patptr, align 8
  %11 = load i8, i8* %10, align 1
  %conv5 = sext i8 %11 to i32
  %cmp6 = icmp eq i32 %conv5, 9
  br i1 %cmp6, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %12 = load i8*, i8** %patptr, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv9, 10
  br i1 %cmp10, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.8
  %14 = load i8*, i8** %patptr, align 8
  %15 = load i8, i8* %14, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp eq i32 %conv13, 13
  br i1 %cmp14, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %16 = load i8*, i8** %patptr, align 8
  %17 = load i8, i8* %16, align 1
  %conv17 = sext i8 %17 to i32
  %cmp18 = icmp eq i32 %conv17, 12
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false.8, %lor.lhs.false, %while.body
  %18 = load i8*, i8** %patptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %patptr, align 8
  br label %if.end.322

if.else:                                          ; preds = %lor.lhs.false.16
  %19 = load i8*, i8** %patptr, align 8
  %20 = load i8, i8* %19, align 1
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp eq i32 %conv20, 35
  br i1 %cmp21, label %if.then.23, label %if.else.37

if.then.23:                                       ; preds = %if.else
  %21 = load i8*, i8** %patptr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr24, i8** %patptr, align 8
  br label %while.cond.25

while.cond.25:                                    ; preds = %while.body.31, %if.then.23
  %22 = load i8*, i8** %patptr, align 8
  %23 = load i8*, i8** %patend, align 8
  %cmp26 = icmp ult i8* %22, %23
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.25
  %24 = load i8*, i8** %patptr, align 8
  %25 = load i8, i8* %24, align 1
  %conv28 = sext i8 %25 to i32
  %cmp29 = icmp ne i32 %conv28, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.25
  %26 = phi i1 [ false, %while.cond.25 ], [ %cmp29, %land.rhs ]
  br i1 %26, label %while.body.31, label %while.end

while.body.31:                                    ; preds = %land.end
  %27 = load i8*, i8** %patptr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr32, i8** %patptr, align 8
  br label %while.cond.25

while.end:                                        ; preds = %land.end
  %28 = load i8*, i8** %patptr, align 8
  %29 = load i8*, i8** %patend, align 8
  %cmp33 = icmp ult i8* %28, %29
  br i1 %cmp33, label %if.then.35, label %if.end

if.then.35:                                       ; preds = %while.end
  %30 = load i8*, i8** %patptr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr36, i8** %patptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.35, %while.end
  br label %if.end.321

if.else.37:                                       ; preds = %if.else
  %31 = load i8*, i8** %patptr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr38, i8** %patptr, align 8
  %32 = load i8, i8* %31, align 1
  %conv39 = sext i8 %32 to i32
  %and40 = and i32 %conv39, 255
  store i32 %and40, i32* %code, align 4
  store i32 0, i32* %inherited_modifiers, align 4
  %33 = load i32, i32* %code, align 4
  %cmp41 = icmp eq i32 %33, 44
  br i1 %cmp41, label %if.then.43, label %if.end.76

if.then.43:                                       ; preds = %if.else.37
  %34 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags44 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %34, i32 0, i32 8
  %35 = load i32, i32* %flags44, align 4
  %and45 = and i32 %35, 2
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %if.then.43
  %36 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %36, i32 0, i32 14
  %37 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp48 = icmp ne %struct.sv* %37, null
  br i1 %cmp48, label %land.lhs.true.50, label %lor.lhs.false.62

land.lhs.true.50:                                 ; preds = %land.lhs.true
  %38 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings51 = getelementptr inbounds %struct.cop, %struct.cop* %38, i32 0, i32 14
  %39 = load %struct.sv*, %struct.sv** %cop_warnings51, align 8
  %cmp52 = icmp ne %struct.sv* %39, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp52, label %land.lhs.true.54, label %lor.lhs.false.62

land.lhs.true.54:                                 ; preds = %land.lhs.true.50
  %40 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings55 = getelementptr inbounds %struct.cop, %struct.cop* %40, i32 0, i32 14
  %41 = load %struct.sv*, %struct.sv** %cop_warnings55, align 8
  %cmp56 = icmp eq %struct.sv* %41, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp56, label %if.then.70, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %land.lhs.true.54
  %42 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings59 = getelementptr inbounds %struct.cop, %struct.cop* %42, i32 0, i32 14
  %43 = load %struct.sv*, %struct.sv** %cop_warnings59, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %43, i32 0, i32 0
  %44 = load i8*, i8** %sv_any, align 8
  %45 = bitcast i8* %44 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %45, i32 0, i32 0
  %46 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %46, i64 10
  %47 = load i8, i8* %arrayidx, align 1
  %conv60 = sext i8 %47 to i32
  %and61 = and i32 %conv60, 16
  %tobool = icmp ne i32 %and61, 0
  br i1 %tobool, label %if.then.70, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.58, %land.lhs.true.50, %land.lhs.true
  %48 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings63 = getelementptr inbounds %struct.cop, %struct.cop* %48, i32 0, i32 14
  %49 = load %struct.sv*, %struct.sv** %cop_warnings63, align 8
  %cmp64 = icmp eq %struct.sv* %49, null
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.75

land.lhs.true.66:                                 ; preds = %lor.lhs.false.62
  %50 = load i8, i8* @PL_dowarn, align 1
  %conv67 = zext i8 %50 to i32
  %and68 = and i32 %conv67, 1
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %land.lhs.true.66, %lor.lhs.false.58, %land.lhs.true.54
  %51 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags71 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %51, i32 0, i32 8
  %52 = load i32, i32* %flags71, align 4
  %or = or i32 %52, 2
  store i32 %or, i32* %flags71, align 4
  %53 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags72 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %53, i32 0, i32 8
  %54 = load i32, i32* %flags72, align 4
  %and73 = and i32 %54, 1
  %tobool74 = icmp ne i32 %and73, 0
  %cond = select i1 %tobool74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)
  call void (i32, i8*, ...) @Perl_warner(i32 42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i8* %cond)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.70, %land.lhs.true.66, %lor.lhs.false.62, %if.then.43
  br label %while.cond

if.end.76:                                        ; preds = %if.else.37
  %55 = load i32, i32* %code, align 4
  %cmp77 = icmp eq i32 %55, 40
  br i1 %cmp77, label %if.then.79, label %if.end.109

if.then.79:                                       ; preds = %if.end.76
  %56 = load i8*, i8** %patptr, align 8
  %57 = load i8, i8* %56, align 1
  %conv80 = sext i8 %57 to i32
  %cmp81 = icmp sge i32 %conv80, 48
  br i1 %cmp81, label %land.lhs.true.83, label %lor.lhs.false.87

land.lhs.true.83:                                 ; preds = %if.then.79
  %58 = load i8*, i8** %patptr, align 8
  %59 = load i8, i8* %58, align 1
  %conv84 = sext i8 %59 to i32
  %cmp85 = icmp sle i32 %conv84, 57
  br i1 %cmp85, label %if.then.95, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %land.lhs.true.83, %if.then.79
  %60 = load i8*, i8** %patptr, align 8
  %61 = load i8, i8* %60, align 1
  %conv88 = sext i8 %61 to i32
  %cmp89 = icmp eq i32 %conv88, 42
  br i1 %cmp89, label %if.then.95, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %lor.lhs.false.87
  %62 = load i8*, i8** %patptr, align 8
  %63 = load i8, i8* %62, align 1
  %conv92 = sext i8 %63 to i32
  %cmp93 = icmp eq i32 %conv92, 91
  br i1 %cmp93, label %if.then.95, label %if.end.100

if.then.95:                                       ; preds = %lor.lhs.false.91, %lor.lhs.false.87, %land.lhs.true.83
  %64 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags96 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %64, i32 0, i32 8
  %65 = load i32, i32* %flags96, align 4
  %and97 = and i32 %65, 1
  %tobool98 = icmp ne i32 %and97, 0
  %cond99 = select i1 %tobool98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i8* %cond99)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.95, %lor.lhs.false.91
  %66 = load i8*, i8** %patptr, align 8
  %67 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %grpbeg = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %67, i32 0, i32 2
  store i8* %66, i8** %grpbeg, align 8
  %68 = load i8*, i8** %patptr, align 8
  %69 = load i8*, i8** %patend, align 8
  %call = call i8* @S_group_end(i8* %68, i8* %69, i8 signext 41)
  %70 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %grpend = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %70, i32 0, i32 3
  store i8* %call, i8** %grpend, align 8
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1
  store i8* %add.ptr, i8** %patptr, align 8
  %71 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %level = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %71, i32 0, i32 7
  %72 = load i32, i32* %level, align 4
  %cmp101 = icmp sge i32 %72, 100
  br i1 %cmp101, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %if.end.100
  %73 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags104 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %73, i32 0, i32 8
  %74 = load i32, i32* %flags104, align 4
  %and105 = and i32 %74, 1
  %tobool106 = icmp ne i32 %and105, 0
  %cond107 = select i1 %tobool106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0), i8* %cond107)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.103, %if.end.100
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.76
  br label %while.cond.110

while.cond.110:                                   ; preds = %if.end.167, %if.end.109
  %75 = load i8*, i8** %patptr, align 8
  %76 = load i8*, i8** %patend, align 8
  %cmp111 = icmp ult i8* %75, %76
  br i1 %cmp111, label %while.body.113, label %while.end.170

while.body.113:                                   ; preds = %while.cond.110
  store i32 0, i32* %modifier, align 4
  %77 = load i8*, i8** %patptr, align 8
  %78 = load i8, i8* %77, align 1
  %conv114 = sext i8 %78 to i32
  switch i32 %conv114, label %sw.default [
    i32 33, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body.113
  store i32 256, i32* %modifier, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8** %allowed, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body.113
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %79 = load i32, i32* %modifier, align 4
  %cmp115 = icmp eq i32 %79, 0
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %sw.epilog
  br label %while.end.170

if.end.118:                                       ; preds = %sw.epilog
  %80 = load i8*, i8** %allowed, align 8
  %81 = load i32, i32* %code, align 4
  %and119 = and i32 %81, 255
  %call120 = call i8* @strchr(i8* %80, i32 %and119)
  %tobool121 = icmp ne i8* %call120, null
  br i1 %tobool121, label %if.end.128, label %if.then.122

if.then.122:                                      ; preds = %if.end.118
  %82 = load i8*, i8** %patptr, align 8
  %83 = load i8, i8* %82, align 1
  %conv123 = sext i8 %83 to i32
  %84 = load i8*, i8** %allowed, align 8
  %85 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags124 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %85, i32 0, i32 8
  %86 = load i32, i32* %flags124, align 4
  %and125 = and i32 %86, 1
  %tobool126 = icmp ne i32 %and125, 0
  %cond127 = select i1 %tobool126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i32 0, i32 0), i32 %conv123, i8* %84, i8* %cond127)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.122, %if.end.118
  %87 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings129 = getelementptr inbounds %struct.cop, %struct.cop* %87, i32 0, i32 14
  %88 = load %struct.sv*, %struct.sv** %cop_warnings129, align 8
  %cmp130 = icmp ne %struct.sv* %88, null
  br i1 %cmp130, label %land.lhs.true.132, label %lor.lhs.false.148

land.lhs.true.132:                                ; preds = %if.end.128
  %89 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings133 = getelementptr inbounds %struct.cop, %struct.cop* %89, i32 0, i32 14
  %90 = load %struct.sv*, %struct.sv** %cop_warnings133, align 8
  %cmp134 = icmp ne %struct.sv* %90, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp134, label %land.lhs.true.136, label %lor.lhs.false.148

land.lhs.true.136:                                ; preds = %land.lhs.true.132
  %91 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings137 = getelementptr inbounds %struct.cop, %struct.cop* %91, i32 0, i32 14
  %92 = load %struct.sv*, %struct.sv** %cop_warnings137, align 8
  %cmp138 = icmp eq %struct.sv* %92, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp138, label %if.then.156, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %land.lhs.true.136
  %93 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings141 = getelementptr inbounds %struct.cop, %struct.cop* %93, i32 0, i32 14
  %94 = load %struct.sv*, %struct.sv** %cop_warnings141, align 8
  %sv_any142 = getelementptr inbounds %struct.sv, %struct.sv* %94, i32 0, i32 0
  %95 = load i8*, i8** %sv_any142, align 8
  %96 = bitcast i8* %95 to %struct.xpv*
  %xpv_pv143 = getelementptr inbounds %struct.xpv, %struct.xpv* %96, i32 0, i32 0
  %97 = load i8*, i8** %xpv_pv143, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %97, i64 10
  %98 = load i8, i8* %arrayidx144, align 1
  %conv145 = sext i8 %98 to i32
  %and146 = and i32 %conv145, 16
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %if.then.156, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %lor.lhs.false.140, %land.lhs.true.132, %if.end.128
  %99 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings149 = getelementptr inbounds %struct.cop, %struct.cop* %99, i32 0, i32 14
  %100 = load %struct.sv*, %struct.sv** %cop_warnings149, align 8
  %cmp150 = icmp eq %struct.sv* %100, null
  br i1 %cmp150, label %land.lhs.true.152, label %if.end.167

land.lhs.true.152:                                ; preds = %lor.lhs.false.148
  %101 = load i8, i8* @PL_dowarn, align 1
  %conv153 = zext i8 %101 to i32
  %and154 = and i32 %conv153, 1
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.167

if.then.156:                                      ; preds = %land.lhs.true.152, %lor.lhs.false.140, %land.lhs.true.136
  %102 = load i32, i32* %code, align 4
  %103 = load i32, i32* %modifier, align 4
  %and157 = and i32 %102, %103
  %tobool158 = icmp ne i32 %and157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.166

if.then.159:                                      ; preds = %if.then.156
  %104 = load i8*, i8** %patptr, align 8
  %105 = load i8, i8* %104, align 1
  %conv160 = sext i8 %105 to i32
  %106 = load i32, i32* %code, align 4
  %and161 = and i32 %106, 255
  %107 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags162 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %107, i32 0, i32 8
  %108 = load i32, i32* %flags162, align 4
  %and163 = and i32 %108, 1
  %tobool164 = icmp ne i32 %and163, 0
  %cond165 = select i1 %tobool164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)
  call void (i32, i8*, ...) @Perl_warner(i32 42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0), i32 %conv160, i32 %and161, i8* %cond165)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.159, %if.then.156
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %land.lhs.true.152, %lor.lhs.false.148
  %109 = load i32, i32* %modifier, align 4
  %110 = load i32, i32* %code, align 4
  %or168 = or i32 %110, %109
  store i32 %or168, i32* %code, align 4
  %111 = load i8*, i8** %patptr, align 8
  %incdec.ptr169 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr169, i8** %patptr, align 8
  br label %while.cond.110

while.end.170:                                    ; preds = %if.then.117, %while.cond.110
  %112 = load i32, i32* %inherited_modifiers, align 4
  %113 = load i32, i32* %code, align 4
  %or171 = or i32 %113, %112
  store i32 %or171, i32* %code, align 4
  %114 = load i8*, i8** %patptr, align 8
  %115 = load i8*, i8** %patend, align 8
  %cmp172 = icmp ult i8* %114, %115
  br i1 %cmp172, label %if.then.174, label %if.else.315

if.then.174:                                      ; preds = %while.end.170
  %116 = load i8*, i8** %patptr, align 8
  %117 = load i8, i8* %116, align 1
  %conv175 = sext i8 %117 to i32
  %cmp176 = icmp sge i32 %conv175, 48
  br i1 %cmp176, label %land.lhs.true.178, label %if.else.184

land.lhs.true.178:                                ; preds = %if.then.174
  %118 = load i8*, i8** %patptr, align 8
  %119 = load i8, i8* %118, align 1
  %conv179 = sext i8 %119 to i32
  %cmp180 = icmp sle i32 %conv179, 57
  br i1 %cmp180, label %if.then.182, label %if.else.184

if.then.182:                                      ; preds = %land.lhs.true.178
  %120 = load i8*, i8** %patptr, align 8
  %121 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %length = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %121, i32 0, i32 5
  %call183 = call i8* @S_get_num(i8* %120, i32* %length)
  store i8* %call183, i8** %patptr, align 8
  %122 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %howlen = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %122, i32 0, i32 6
  store i32 1, i32* %howlen, align 4
  br label %if.end.231

if.else.184:                                      ; preds = %land.lhs.true.178, %if.then.174
  %123 = load i8*, i8** %patptr, align 8
  %124 = load i8, i8* %123, align 1
  %conv185 = sext i8 %124 to i32
  %cmp186 = icmp eq i32 %conv185, 42
  br i1 %cmp186, label %if.then.188, label %if.else.191

if.then.188:                                      ; preds = %if.else.184
  %125 = load i8*, i8** %patptr, align 8
  %incdec.ptr189 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr189, i8** %patptr, align 8
  %126 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %howlen190 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %126, i32 0, i32 6
  store i32 2, i32* %howlen190, align 4
  br label %if.end.230

if.else.191:                                      ; preds = %if.else.184
  %127 = load i8*, i8** %patptr, align 8
  %128 = load i8, i8* %127, align 1
  %conv192 = sext i8 %128 to i32
  %cmp193 = icmp eq i32 %conv192, 91
  br i1 %cmp193, label %if.then.195, label %if.else.226

if.then.195:                                      ; preds = %if.else.191
  %129 = load i8*, i8** %patptr, align 8
  %incdec.ptr196 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr196, i8** %patptr, align 8
  store i8* %incdec.ptr196, i8** %lenptr, align 8
  %130 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %howlen197 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %130, i32 0, i32 6
  store i32 1, i32* %howlen197, align 4
  %131 = load i8*, i8** %patptr, align 8
  %132 = load i8*, i8** %patend, align 8
  %call198 = call i8* @S_group_end(i8* %131, i8* %132, i8 signext 93)
  %add.ptr199 = getelementptr inbounds i8, i8* %call198, i64 1
  store i8* %add.ptr199, i8** %patptr, align 8
  %133 = load i8*, i8** %lenptr, align 8
  %134 = load i8, i8* %133, align 1
  %conv200 = sext i8 %134 to i32
  %cmp201 = icmp sge i32 %conv200, 48
  br i1 %cmp201, label %land.lhs.true.203, label %if.else.219

land.lhs.true.203:                                ; preds = %if.then.195
  %135 = load i8*, i8** %lenptr, align 8
  %136 = load i8, i8* %135, align 1
  %conv204 = sext i8 %136 to i32
  %cmp205 = icmp sle i32 %conv204, 57
  br i1 %cmp205, label %if.then.207, label %if.else.219

if.then.207:                                      ; preds = %land.lhs.true.203
  %137 = load i8*, i8** %lenptr, align 8
  %138 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %length208 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %138, i32 0, i32 5
  %call209 = call i8* @S_get_num(i8* %137, i32* %length208)
  store i8* %call209, i8** %lenptr, align 8
  %139 = load i8*, i8** %lenptr, align 8
  %140 = load i8, i8* %139, align 1
  %conv210 = sext i8 %140 to i32
  %cmp211 = icmp ne i32 %conv210, 93
  br i1 %cmp211, label %if.then.213, label %if.end.218

if.then.213:                                      ; preds = %if.then.207
  %141 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags214 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %141, i32 0, i32 8
  %142 = load i32, i32* %flags214, align 4
  %and215 = and i32 %142, 1
  %tobool216 = icmp ne i32 %and215, 0
  %cond217 = select i1 %tobool216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), i8* %cond217)
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.213, %if.then.207
  br label %if.end.225

if.else.219:                                      ; preds = %land.lhs.true.203, %if.then.195
  %143 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %144 = bitcast %struct.tempsym_t* %savsym to i8*
  %145 = bitcast %struct.tempsym_t* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 56, i32 8, i1 false)
  %146 = load i8*, i8** %patptr, align 8
  %add.ptr220 = getelementptr inbounds i8, i8* %146, i64 -1
  %147 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %patend221 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %147, i32 0, i32 1
  store i8* %add.ptr220, i8** %patend221, align 8
  %148 = load i8*, i8** %lenptr, align 8
  %149 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %patptr222 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %149, i32 0, i32 0
  store i8* %148, i8** %patptr222, align 8
  %150 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %call223 = call i32 @S_measure_struct(%struct.tempsym_t* %150)
  %length224 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %savsym, i32 0, i32 5
  store i32 %call223, i32* %length224, align 4
  %151 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %152 = bitcast %struct.tempsym_t* %151 to i8*
  %153 = bitcast %struct.tempsym_t* %savsym to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %152, i8* %153, i64 56, i32 8, i1 false)
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.219, %if.end.218
  br label %if.end.229

if.else.226:                                      ; preds = %if.else.191
  %154 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %howlen227 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %154, i32 0, i32 6
  store i32 0, i32* %howlen227, align 4
  %155 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %length228 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %155, i32 0, i32 5
  store i32 1, i32* %length228, align 4
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.226, %if.end.225
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.then.188
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.182
  br label %while.cond.232

while.cond.232:                                   ; preds = %if.end.313, %if.end.231
  %156 = load i8*, i8** %patptr, align 8
  %157 = load i8*, i8** %patend, align 8
  %cmp233 = icmp ult i8* %156, %157
  br i1 %cmp233, label %while.body.235, label %while.end.314

while.body.235:                                   ; preds = %while.cond.232
  %158 = load i8*, i8** %patptr, align 8
  %159 = load i8, i8* %158, align 1
  %conv236 = sext i8 %159 to i32
  %cmp237 = icmp eq i32 %conv236, 32
  br i1 %cmp237, label %if.then.255, label %lor.lhs.false.239

lor.lhs.false.239:                                ; preds = %while.body.235
  %160 = load i8*, i8** %patptr, align 8
  %161 = load i8, i8* %160, align 1
  %conv240 = sext i8 %161 to i32
  %cmp241 = icmp eq i32 %conv240, 9
  br i1 %cmp241, label %if.then.255, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %lor.lhs.false.239
  %162 = load i8*, i8** %patptr, align 8
  %163 = load i8, i8* %162, align 1
  %conv244 = sext i8 %163 to i32
  %cmp245 = icmp eq i32 %conv244, 10
  br i1 %cmp245, label %if.then.255, label %lor.lhs.false.247

lor.lhs.false.247:                                ; preds = %lor.lhs.false.243
  %164 = load i8*, i8** %patptr, align 8
  %165 = load i8, i8* %164, align 1
  %conv248 = sext i8 %165 to i32
  %cmp249 = icmp eq i32 %conv248, 13
  br i1 %cmp249, label %if.then.255, label %lor.lhs.false.251

lor.lhs.false.251:                                ; preds = %lor.lhs.false.247
  %166 = load i8*, i8** %patptr, align 8
  %167 = load i8, i8* %166, align 1
  %conv252 = sext i8 %167 to i32
  %cmp253 = icmp eq i32 %conv252, 12
  br i1 %cmp253, label %if.then.255, label %if.else.257

if.then.255:                                      ; preds = %lor.lhs.false.251, %lor.lhs.false.247, %lor.lhs.false.243, %lor.lhs.false.239, %while.body.235
  %168 = load i8*, i8** %patptr, align 8
  %incdec.ptr256 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %incdec.ptr256, i8** %patptr, align 8
  br label %if.end.313

if.else.257:                                      ; preds = %lor.lhs.false.251
  %169 = load i8*, i8** %patptr, align 8
  %170 = load i8, i8* %169, align 1
  %conv258 = sext i8 %170 to i32
  %cmp259 = icmp eq i32 %conv258, 35
  br i1 %cmp259, label %if.then.261, label %if.else.279

if.then.261:                                      ; preds = %if.else.257
  %171 = load i8*, i8** %patptr, align 8
  %incdec.ptr262 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %incdec.ptr262, i8** %patptr, align 8
  br label %while.cond.263

while.cond.263:                                   ; preds = %while.body.271, %if.then.261
  %172 = load i8*, i8** %patptr, align 8
  %173 = load i8*, i8** %patend, align 8
  %cmp264 = icmp ult i8* %172, %173
  br i1 %cmp264, label %land.rhs.266, label %land.end.270

land.rhs.266:                                     ; preds = %while.cond.263
  %174 = load i8*, i8** %patptr, align 8
  %175 = load i8, i8* %174, align 1
  %conv267 = sext i8 %175 to i32
  %cmp268 = icmp ne i32 %conv267, 10
  br label %land.end.270

land.end.270:                                     ; preds = %land.rhs.266, %while.cond.263
  %176 = phi i1 [ false, %while.cond.263 ], [ %cmp268, %land.rhs.266 ]
  br i1 %176, label %while.body.271, label %while.end.273

while.body.271:                                   ; preds = %land.end.270
  %177 = load i8*, i8** %patptr, align 8
  %incdec.ptr272 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %incdec.ptr272, i8** %patptr, align 8
  br label %while.cond.263

while.end.273:                                    ; preds = %land.end.270
  %178 = load i8*, i8** %patptr, align 8
  %179 = load i8*, i8** %patend, align 8
  %cmp274 = icmp ult i8* %178, %179
  br i1 %cmp274, label %if.then.276, label %if.end.278

if.then.276:                                      ; preds = %while.end.273
  %180 = load i8*, i8** %patptr, align 8
  %incdec.ptr277 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %incdec.ptr277, i8** %patptr, align 8
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.276, %while.end.273
  br label %if.end.312

if.else.279:                                      ; preds = %if.else.257
  %181 = load i8*, i8** %patptr, align 8
  %182 = load i8, i8* %181, align 1
  %conv280 = sext i8 %182 to i32
  %cmp281 = icmp eq i32 %conv280, 47
  br i1 %cmp281, label %if.then.283, label %if.end.311

if.then.283:                                      ; preds = %if.else.279
  %183 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags284 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %183, i32 0, i32 8
  %184 = load i32, i32* %flags284, align 4
  %or285 = or i32 %184, 4
  store i32 %or285, i32* %flags284, align 4
  %185 = load i8*, i8** %patptr, align 8
  %incdec.ptr286 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %incdec.ptr286, i8** %patptr, align 8
  %186 = load i8*, i8** %patptr, align 8
  %187 = load i8*, i8** %patend, align 8
  %cmp287 = icmp ult i8* %186, %187
  br i1 %cmp287, label %land.lhs.true.289, label %if.end.310

land.lhs.true.289:                                ; preds = %if.then.283
  %188 = load i8*, i8** %patptr, align 8
  %189 = load i8, i8* %188, align 1
  %conv290 = sext i8 %189 to i32
  %cmp291 = icmp sge i32 %conv290, 48
  br i1 %cmp291, label %land.lhs.true.293, label %lor.lhs.false.297

land.lhs.true.293:                                ; preds = %land.lhs.true.289
  %190 = load i8*, i8** %patptr, align 8
  %191 = load i8, i8* %190, align 1
  %conv294 = sext i8 %191 to i32
  %cmp295 = icmp sle i32 %conv294, 57
  br i1 %cmp295, label %if.then.305, label %lor.lhs.false.297

lor.lhs.false.297:                                ; preds = %land.lhs.true.293, %land.lhs.true.289
  %192 = load i8*, i8** %patptr, align 8
  %193 = load i8, i8* %192, align 1
  %conv298 = sext i8 %193 to i32
  %cmp299 = icmp eq i32 %conv298, 42
  br i1 %cmp299, label %if.then.305, label %lor.lhs.false.301

lor.lhs.false.301:                                ; preds = %lor.lhs.false.297
  %194 = load i8*, i8** %patptr, align 8
  %195 = load i8, i8* %194, align 1
  %conv302 = sext i8 %195 to i32
  %cmp303 = icmp eq i32 %conv302, 91
  br i1 %cmp303, label %if.then.305, label %if.end.310

if.then.305:                                      ; preds = %lor.lhs.false.301, %lor.lhs.false.297, %land.lhs.true.293
  %196 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags306 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %196, i32 0, i32 8
  %197 = load i32, i32* %flags306, align 4
  %and307 = and i32 %197, 1
  %tobool308 = icmp ne i32 %and307, 0
  %cond309 = select i1 %tobool308, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0), i8* %cond309)
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.305, %lor.lhs.false.301, %if.then.283
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.else.279
  br label %while.end.314

if.end.312:                                       ; preds = %if.end.278
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.312, %if.then.255
  br label %while.cond.232

while.end.314:                                    ; preds = %if.end.311, %while.cond.232
  br label %if.end.318

if.else.315:                                      ; preds = %while.end.170
  %198 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %howlen316 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %198, i32 0, i32 6
  store i32 0, i32* %howlen316, align 4
  %199 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %length317 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %199, i32 0, i32 5
  store i32 1, i32* %length317, align 4
  br label %if.end.318

if.end.318:                                       ; preds = %if.else.315, %while.end.314
  %200 = load i32, i32* %code, align 4
  %201 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %code319 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %201, i32 0, i32 4
  store i32 %200, i32* %code319, align 4
  %202 = load i8*, i8** %patptr, align 8
  %203 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %patptr320 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %203, i32 0, i32 0
  store i8* %202, i8** %patptr320, align 8
  store i8 1, i8* %retval
  br label %return

if.end.321:                                       ; preds = %if.end
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.then
  br label %while.cond

while.end.323:                                    ; preds = %while.cond
  %204 = load i8*, i8** %patptr, align 8
  %205 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %patptr324 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %205, i32 0, i32 0
  store i8* %204, i8** %patptr324, align 8
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %while.end.323, %if.end.318
  %206 = load i8, i8* %retval
  ret i8 %206
}

declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #2

declare void @Perl_tmps_grow(i32) #2

declare void @Perl_croak(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #2

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #2

declare i8* @Perl_safesysmalloc(i64) #2

declare %struct.sv* @Perl_newSV(i64) #2

declare %struct.sv* @Perl_newSViv(i64) #2

declare i64 @Perl_utf8n_to_uvuni(i8*, i64, i64*, i32) #2

declare %struct.sv* @Perl_newSVuv(i64) #2

declare signext i16 @Perl_my_swap(i16 signext) #2

declare signext i16 @vtohs(i16 signext) #2

declare i64 @Perl_my_ntohl(i64) #2

declare i64 @vtohl(i64) #2

declare %struct.sv* @Perl_newSVpv(i8*, i64) #2

declare %struct.sv* @Perl_newSVpvf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.sv* @S_mul128(%struct.sv* %sv, i8 zeroext %m) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %m.addr = alloca i8, align 1
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %i = alloca i32, align 4
  %tmpNew = alloca %struct.sv*, align 8
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i8 %m, i8* %m.addr, align 1
  %0 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %4, i32 0, i32 1
  %5 = load i64, i64* %xpv_cur, align 8
  store i64 %5, i64* %len, align 8
  %6 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any1, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 0
  %9 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %10, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %s, align 8
  store i32 0, i32* %i, align 4
  %11 = load i8*, i8** %s, align 8
  %call2 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i64 4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call3 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i64 10)
  store %struct.sv* %call3, %struct.sv** %tmpNew, align 8
  %12 = load %struct.sv*, %struct.sv** %tmpNew, align 8
  %13 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_catsv_flags(%struct.sv* %12, %struct.sv* %13, i32 2)
  %14 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_free(%struct.sv* %14)
  %15 = load %struct.sv*, %struct.sv** %tmpNew, align 8
  store %struct.sv* %15, %struct.sv** %sv.addr, align 8
  %16 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_flags4 = getelementptr inbounds %struct.sv, %struct.sv* %16, i32 0, i32 2
  %17 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %17, 262144
  %cmp6 = icmp eq i32 %and5, 262144
  br i1 %cmp6, label %cond.true.7, label %cond.false.12

cond.true.7:                                      ; preds = %if.then
  %18 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any8 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any8, align 8
  %20 = bitcast i8* %19 to %struct.xpv*
  %xpv_cur9 = getelementptr inbounds %struct.xpv, %struct.xpv* %20, i32 0, i32 1
  %21 = load i64, i64* %xpv_cur9, align 8
  store i64 %21, i64* %len, align 8
  %22 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %22, i32 0, i32 0
  %23 = load i8*, i8** %sv_any10, align 8
  %24 = bitcast i8* %23 to %struct.xpv*
  %xpv_pv11 = getelementptr inbounds %struct.xpv, %struct.xpv* %24, i32 0, i32 0
  %25 = load i8*, i8** %xpv_pv11, align 8
  br label %cond.end.14

cond.false.12:                                    ; preds = %if.then
  %26 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %call13 = call i8* @Perl_sv_2pv_flags(%struct.sv* %26, i64* %len, i32 2)
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.12, %cond.true.7
  %cond15 = phi i8* [ %25, %cond.true.7 ], [ %call13, %cond.false.12 ]
  store i8* %cond15, i8** %s, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.14, %cond.end
  %27 = load i8*, i8** %s, align 8
  %28 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %28
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr16, i8** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %29 = load i8*, i8** %t, align 8
  %30 = load i8, i8* %29, align 1
  %tobool17 = icmp ne i8 %30, 0
  %lnot = xor i1 %tobool17, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %incdec.ptr, i8** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.18

while.cond.18:                                    ; preds = %while.body.20, %while.end
  %32 = load i8*, i8** %t, align 8
  %33 = load i8*, i8** %s, align 8
  %cmp19 = icmp ugt i8* %32, %33
  br i1 %cmp19, label %while.body.20, label %while.end.28

while.body.20:                                    ; preds = %while.cond.18
  %34 = load i8*, i8** %t, align 8
  %35 = load i8, i8* %34, align 1
  %conv = sext i8 %35 to i32
  %sub = sub nsw i32 %conv, 48
  %shl = shl i32 %sub, 7
  %36 = load i8, i8* %m.addr, align 1
  %conv21 = zext i8 %36 to i32
  %add = add nsw i32 %shl, %conv21
  store i32 %add, i32* %i, align 4
  %37 = load i32, i32* %i, align 4
  %rem = urem i32 %37, 10
  %conv22 = trunc i32 %rem to i8
  %conv23 = sext i8 %conv22 to i32
  %add24 = add nsw i32 48, %conv23
  %conv25 = trunc i32 %add24 to i8
  %38 = load i8*, i8** %t, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %incdec.ptr26, i8** %t, align 8
  store i8 %conv25, i8* %38, align 1
  %39 = load i32, i32* %i, align 4
  %div = udiv i32 %39, 10
  %conv27 = trunc i32 %div to i8
  store i8 %conv27, i8* %m.addr, align 1
  br label %while.cond.18

while.end.28:                                     ; preds = %while.cond.18
  %40 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  ret %struct.sv* %40
}

declare void @Perl_sv_chop(%struct.sv*, i8*) #2

declare %struct.sv* @Perl_newSVnv(double) #2

declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #2

declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind
declare double @modf(double, double*) #3

declare i64 @Perl_sv_2iv(%struct.sv*) #2

declare void @Perl_warner(i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i8* @S_group_end(i8* %patptr, i8* %patend, i8 signext %ender) #0 {
entry:
  %retval = alloca i8*, align 8
  %patptr.addr = alloca i8*, align 8
  %patend.addr = alloca i8*, align 8
  %ender.addr = alloca i8, align 1
  %c = alloca i8, align 1
  store i8* %patptr, i8** %patptr.addr, align 8
  store i8* %patend, i8** %patend.addr, align 8
  store i8 %ender, i8* %ender.addr, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.52, %while.end, %if.then, %entry
  %0 = load i8*, i8** %patptr.addr, align 8
  %1 = load i8*, i8** %patend.addr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %while.body, label %while.end.53

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %patptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %patptr.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %c, align 1
  %4 = load i8, i8* %c, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 32
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %5 = load i8, i8* %c, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 9
  br i1 %cmp4, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %6 = load i8, i8* %c, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp eq i32 %conv7, 10
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %7 = load i8, i8* %c, align 1
  %conv11 = sext i8 %7 to i32
  %cmp12 = icmp eq i32 %conv11, 13
  br i1 %cmp12, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.10
  %8 = load i8, i8* %c, align 1
  %conv15 = sext i8 %8 to i32
  %cmp16 = icmp eq i32 %conv15, 12
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.14, %lor.lhs.false.10, %lor.lhs.false.6, %lor.lhs.false, %while.body
  br label %while.cond

if.else:                                          ; preds = %lor.lhs.false.14
  %9 = load i8, i8* %c, align 1
  %conv18 = sext i8 %9 to i32
  %10 = load i8, i8* %ender.addr, align 1
  %conv19 = sext i8 %10 to i32
  %cmp20 = icmp eq i32 %conv18, %conv19
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else
  %11 = load i8*, i8** %patptr.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 -1
  store i8* %add.ptr, i8** %retval
  br label %return

if.else.23:                                       ; preds = %if.else
  %12 = load i8, i8* %c, align 1
  %conv24 = sext i8 %12 to i32
  %cmp25 = icmp eq i32 %conv24, 35
  br i1 %cmp25, label %if.then.27, label %if.else.36

if.then.27:                                       ; preds = %if.else.23
  br label %while.cond.28

while.cond.28:                                    ; preds = %while.body.34, %if.then.27
  %13 = load i8*, i8** %patptr.addr, align 8
  %14 = load i8*, i8** %patend.addr, align 8
  %cmp29 = icmp ult i8* %13, %14
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.28
  %15 = load i8*, i8** %patptr.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv31 = sext i8 %16 to i32
  %cmp32 = icmp ne i32 %conv31, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.28
  %17 = phi i1 [ false, %while.cond.28 ], [ %cmp32, %land.rhs ]
  br i1 %17, label %while.body.34, label %while.end

while.body.34:                                    ; preds = %land.end
  %18 = load i8*, i8** %patptr.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr35, i8** %patptr.addr, align 8
  br label %while.cond.28

while.end:                                        ; preds = %land.end
  br label %while.cond

if.else.36:                                       ; preds = %if.else.23
  %19 = load i8, i8* %c, align 1
  %conv37 = sext i8 %19 to i32
  %cmp38 = icmp eq i32 %conv37, 40
  br i1 %cmp38, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %if.else.36
  %20 = load i8*, i8** %patptr.addr, align 8
  %21 = load i8*, i8** %patend.addr, align 8
  %call = call i8* @S_group_end(i8* %20, i8* %21, i8 signext 41)
  %add.ptr41 = getelementptr inbounds i8, i8* %call, i64 1
  store i8* %add.ptr41, i8** %patptr.addr, align 8
  br label %if.end.49

if.else.42:                                       ; preds = %if.else.36
  %22 = load i8, i8* %c, align 1
  %conv43 = sext i8 %22 to i32
  %cmp44 = icmp eq i32 %conv43, 91
  br i1 %cmp44, label %if.then.46, label %if.end

if.then.46:                                       ; preds = %if.else.42
  %23 = load i8*, i8** %patptr.addr, align 8
  %24 = load i8*, i8** %patend.addr, align 8
  %call47 = call i8* @S_group_end(i8* %23, i8* %24, i8 signext 93)
  %add.ptr48 = getelementptr inbounds i8, i8* %call47, i64 1
  store i8* %add.ptr48, i8** %patptr.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.46, %if.else.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end, %if.then.40
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51
  br label %while.cond

while.end.53:                                     ; preds = %while.cond
  %25 = load i8, i8* %ender.addr, align 1
  %conv54 = sext i8 %25 to i32
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0), i32 %conv54)
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end.53, %if.then.22
  %26 = load i8*, i8** %retval
  ret i8* %26
}

; Function Attrs: nounwind uwtable
define internal i8* @S_get_num(i8* %patptr, i32* %lenptr) #0 {
entry:
  %patptr.addr = alloca i8*, align 8
  %lenptr.addr = alloca i32*, align 8
  %len = alloca i32, align 4
  store i8* %patptr, i8** %patptr.addr, align 8
  store i32* %lenptr, i32** %lenptr.addr, align 8
  %0 = load i8*, i8** %patptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %patptr.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %sub = sub nsw i32 %conv, 48
  store i32 %sub, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %patptr.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp sge i32 %conv1, 48
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %patptr.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp sle i32 %conv3, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %len, align 4
  %cmp6 = icmp sge i32 %7, 214748364
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load i32, i32* %len, align 4
  %mul = mul nsw i32 %8, 10
  %9 = load i8*, i8** %patptr.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %patptr.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv9 = sext i8 %10 to i32
  %sub10 = sub nsw i32 %conv9, 48
  %add = add nsw i32 %mul, %sub10
  store i32 %add, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %len, align 4
  %12 = load i32*, i32** %lenptr.addr, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i8*, i8** %patptr.addr, align 8
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define internal i32 @S_measure_struct(%struct.tempsym_t* %symptr) #0 {
entry:
  %symptr.addr = alloca %struct.tempsym_t*, align 8
  %len = alloca i32, align 4
  %total = alloca i32, align 4
  %star = alloca i32, align 4
  %size = alloca i32, align 4
  %which = alloca i32, align 4
  %offset = alloca i32, align 4
  %savsym = alloca %struct.tempsym_t, align 8
  store %struct.tempsym_t* %symptr, %struct.tempsym_t** %symptr.addr, align 8
  store i32 0, i32* %len, align 4
  store i32 0, i32* %total, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.65, %entry
  %0 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %call = call signext i8 @S_next_symbol(%struct.tempsym_t* %0)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %code = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %1, i32 0, i32 4
  %2 = load i32, i32* %code, align 4
  %and = and i32 %2, 256
  %tobool1 = icmp ne i32 %and, 0
  %cond = select i1 %tobool1, i32 1, i32 0
  store i32 %cond, i32* %which, align 4
  %3 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %code2 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %3, i32 0, i32 4
  %4 = load i32, i32* %code2, align 4
  %and3 = and i32 %4, 255
  %5 = load i32, i32* %which, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.packsize_t], [2 x %struct.packsize_t]* @packsize, i32 0, i64 %idxprom
  %first = getelementptr inbounds %struct.packsize_t, %struct.packsize_t* %arrayidx, i32 0, i32 1
  %6 = load i32, i32* %first, align 4
  %sub = sub nsw i32 %and3, %6
  store i32 %sub, i32* %offset, align 4
  %7 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %howlen = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %7, i32 0, i32 6
  %8 = load i32, i32* %howlen, align 4
  switch i32 %8, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  %9 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %length = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %9, i32 0, i32 5
  %10 = load i32, i32* %length, align 4
  store i32 %10, i32* %len, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  %11 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %11, i32 0, i32 8
  %12 = load i32, i32* %flags, align 4
  %and5 = and i32 %12, 1
  %tobool6 = icmp ne i32 %and5, 0
  %cond7 = select i1 %tobool6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0), i8* %cond7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb.4, %sw.bb
  %13 = load i32, i32* %offset, align 4
  %cmp = icmp sge i32 %13, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.epilog
  %14 = load i32, i32* %offset, align 4
  %15 = load i32, i32* %which, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [2 x %struct.packsize_t], [2 x %struct.packsize_t]* @packsize, i32 0, i64 %idxprom8
  %size10 = getelementptr inbounds %struct.packsize_t, %struct.packsize_t* %arrayidx9, i32 0, i32 2
  %16 = load i32, i32* %size10, align 4
  %cmp11 = icmp slt i32 %14, %16
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, i32* %offset, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load i32, i32* %which, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [2 x %struct.packsize_t], [2 x %struct.packsize_t]* @packsize, i32 0, i64 %idxprom13
  %array = getelementptr inbounds %struct.packsize_t, %struct.packsize_t* %arrayidx14, i32 0, i32 0
  %19 = load i8*, i8** %array, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %19, i64 %idxprom12
  %20 = load i8, i8* %arrayidx15, align 1
  %conv = zext i8 %20 to i32
  %and16 = and i32 %conv, 63
  store i32 %and16, i32* %size, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %sw.epilog
  store i32 0, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load i32, i32* %size, align 4
  %tobool17 = icmp ne i32 %21, 0
  br i1 %tobool17, label %if.end.65, label %if.then.18

if.then.18:                                       ; preds = %if.end
  %22 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %code19 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %22, i32 0, i32 4
  %23 = load i32, i32* %code19, align 4
  switch i32 %23, label %sw.default [
    i32 64, label %sw.bb.26
    i32 47, label %sw.bb.26
    i32 85, label %sw.bb.26
    i32 119, label %sw.bb.26
    i32 117, label %sw.bb.26
    i32 37, label %sw.bb.32
    i32 40, label %sw.bb.33
    i32 344, label %sw.bb.35
    i32 88, label %sw.bb.39
    i32 376, label %sw.bb.48
    i32 120, label %sw.bb.58
    i32 65, label %sw.bb.58
    i32 90, label %sw.bb.58
    i32 97, label %sw.bb.58
    i32 99, label %sw.bb.58
    i32 67, label %sw.bb.58
    i32 66, label %sw.bb.59
    i32 98, label %sw.bb.59
    i32 72, label %sw.bb.60
    i32 104, label %sw.bb.60
    i32 80, label %sw.bb.63
  ]

sw.default:                                       ; preds = %if.then.18
  %24 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %code20 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %24, i32 0, i32 4
  %25 = load i32, i32* %code20, align 4
  %and21 = and i32 %25, 255
  %26 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags22 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %26, i32 0, i32 8
  %27 = load i32, i32* %flags22, align 4
  %and23 = and i32 %27, 1
  %tobool24 = icmp ne i32 %and23, 0
  %cond25 = select i1 %tobool24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), i32 %and21, i8* %cond25)
  br label %sw.bb.26

sw.bb.26:                                         ; preds = %if.then.18, %if.then.18, %if.then.18, %if.then.18, %if.then.18, %sw.default
  %28 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %code27 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %28, i32 0, i32 4
  %29 = load i32, i32* %code27, align 4
  %30 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags28 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %30, i32 0, i32 8
  %31 = load i32, i32* %flags28, align 4
  %and29 = and i32 %31, 1
  %tobool30 = icmp ne i32 %and29, 0
  %cond31 = select i1 %tobool30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i32 %29, i8* %cond31)
  br label %sw.bb.32

sw.bb.32:                                         ; preds = %if.then.18, %sw.bb.26
  store i32 0, i32* %size, align 4
  br label %sw.epilog.64

sw.bb.33:                                         ; preds = %if.then.18
  %32 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %33 = bitcast %struct.tempsym_t* %savsym to i8*
  %34 = bitcast %struct.tempsym_t* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 56, i32 8, i1 false)
  %grpbeg = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %savsym, i32 0, i32 2
  %35 = load i8*, i8** %grpbeg, align 8
  %36 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %patptr = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %36, i32 0, i32 0
  store i8* %35, i8** %patptr, align 8
  %grpend = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %savsym, i32 0, i32 3
  %37 = load i8*, i8** %grpend, align 8
  %38 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %patend = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %38, i32 0, i32 1
  store i8* %37, i8** %patend, align 8
  %39 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %call34 = call i32 @S_measure_struct(%struct.tempsym_t* %39)
  store i32 %call34, i32* %size, align 4
  %40 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %41 = bitcast %struct.tempsym_t* %40 to i8*
  %42 = bitcast %struct.tempsym_t* %savsym to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 56, i32 8, i1 false)
  br label %sw.epilog.64

sw.bb.35:                                         ; preds = %if.then.18
  %43 = load i32, i32* %len, align 4
  %tobool36 = icmp ne i32 %43, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %sw.bb.35
  store i32 1, i32* %len, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %sw.bb.35
  %44 = load i32, i32* %total, align 4
  %45 = load i32, i32* %len, align 4
  %rem = srem i32 %44, %45
  store i32 %rem, i32* %len, align 4
  br label %sw.bb.39

sw.bb.39:                                         ; preds = %if.then.18, %if.end.38
  store i32 -1, i32* %size, align 4
  %46 = load i32, i32* %total, align 4
  %47 = load i32, i32* %len, align 4
  %cmp40 = icmp slt i32 %46, %47
  br i1 %cmp40, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %sw.bb.39
  %48 = load %struct.tempsym_t*, %struct.tempsym_t** %symptr.addr, align 8
  %flags43 = getelementptr inbounds %struct.tempsym_t, %struct.tempsym_t* %48, i32 0, i32 8
  %49 = load i32, i32* %flags43, align 4
  %and44 = and i32 %49, 1
  %tobool45 = icmp ne i32 %and44, 0
  %cond46 = select i1 %tobool45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0), i8* %cond46)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.42, %sw.bb.39
  br label %sw.epilog.64

sw.bb.48:                                         ; preds = %if.then.18
  %50 = load i32, i32* %len, align 4
  %tobool49 = icmp ne i32 %50, 0
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %sw.bb.48
  store i32 1, i32* %len, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %sw.bb.48
  %51 = load i32, i32* %total, align 4
  %52 = load i32, i32* %len, align 4
  %rem52 = srem i32 %51, %52
  store i32 %rem52, i32* %star, align 4
  %53 = load i32, i32* %star, align 4
  %tobool53 = icmp ne i32 %53, 0
  br i1 %tobool53, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %if.end.51
  %54 = load i32, i32* %len, align 4
  %55 = load i32, i32* %star, align 4
  %sub55 = sub nsw i32 %54, %55
  store i32 %sub55, i32* %len, align 4
  br label %if.end.57

if.else.56:                                       ; preds = %if.end.51
  store i32 0, i32* %len, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %if.then.54
  br label %sw.bb.58

sw.bb.58:                                         ; preds = %if.then.18, %if.then.18, %if.then.18, %if.then.18, %if.then.18, %if.then.18, %if.end.57
  store i32 1, i32* %size, align 4
  br label %sw.epilog.64

sw.bb.59:                                         ; preds = %if.then.18, %if.then.18
  %56 = load i32, i32* %len, align 4
  %add = add nsw i32 %56, 7
  %div = sdiv i32 %add, 8
  store i32 %div, i32* %len, align 4
  store i32 1, i32* %size, align 4
  br label %sw.epilog.64

sw.bb.60:                                         ; preds = %if.then.18, %if.then.18
  %57 = load i32, i32* %len, align 4
  %add61 = add nsw i32 %57, 1
  %div62 = sdiv i32 %add61, 2
  store i32 %div62, i32* %len, align 4
  store i32 1, i32* %size, align 4
  br label %sw.epilog.64

sw.bb.63:                                         ; preds = %if.then.18
  store i32 1, i32* %len, align 4
  store i32 8, i32* %size, align 4
  br label %sw.epilog.64

sw.epilog.64:                                     ; preds = %sw.bb.63, %sw.bb.60, %sw.bb.59, %sw.bb.58, %if.end.47, %sw.bb.33, %sw.bb.32
  br label %if.end.65

if.end.65:                                        ; preds = %sw.epilog.64, %if.end
  %58 = load i32, i32* %len, align 4
  %59 = load i32, i32* %size, align 4
  %mul = mul nsw i32 %58, %59
  %60 = load i32, i32* %total, align 4
  %add66 = add nsw i32 %60, %mul
  store i32 %add66, i32* %total, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %61 = load i32, i32* %total, align 4
  ret i32 %61
}

declare i32 @strncmp(i8*, i8*, i64) #2

declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #2

declare void @Perl_sv_free(%struct.sv*) #2

declare i64 @Perl_sv_len(%struct.sv*) #2

declare i8* @Perl_sv_grow(%struct.sv*, i64) #2

declare i64 @Perl_sv_2uv(%struct.sv*) #2

declare i8* @Perl_uvchr_to_utf8_flags(i8*, i64, i64) #2

declare double @Perl_sv_2nv(%struct.sv*) #2

declare signext i16 @htovs(i16 signext) #2

; Function Attrs: nounwind uwtable
define internal %struct.sv* @S_is_an_int(i8* %s, i64 %l) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %s.addr = alloca i8*, align 8
  %l.addr = alloca i64, align 8
  %n_a = alloca i64, align 8
  %result = alloca %struct.sv*, align 8
  %result_c = alloca i8*, align 8
  %out = alloca i8*, align 8
  %skip = alloca i8, align 1
  %ignore = alloca i8, align 1
  %tmp = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %l, i64* %l.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i64, i64* %l.addr, align 8
  %call = call %struct.sv* @Perl_newSVpvn(i8* %0, i64 %1)
  store %struct.sv* %call, %struct.sv** %result, align 8
  %2 = load %struct.sv*, %struct.sv** %result, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and = and i32 %3, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.sv*, %struct.sv** %result, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 0
  %5 = load i8*, i8** %sv_any, align 8
  %6 = bitcast i8* %5 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %6, i32 0, i32 1
  %7 = load i64, i64* %xpv_cur, align 8
  store i64 %7, i64* %n_a, align 8
  %8 = load %struct.sv*, %struct.sv** %result, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 0
  %9 = load i8*, i8** %sv_any1, align 8
  %10 = bitcast i8* %9 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %10, i32 0, i32 0
  %11 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load %struct.sv*, %struct.sv** %result, align 8
  %call2 = call i8* @Perl_sv_2pv_flags(%struct.sv* %12, i64* %n_a, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %11, %cond.true ], [ %call2, %cond.false ]
  store i8* %cond, i8** %result_c, align 8
  %13 = load i8*, i8** %result_c, align 8
  store i8* %13, i8** %out, align 8
  store i8 1, i8* %skip, align 1
  store i8 0, i8* %ignore, align 1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %cond.end
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i8, i8* %14, align 1
  %tobool = icmp ne i8 %15, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %s.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.bb
    i32 43, label %sw.bb.3
    i32 48, label %sw.bb.5
    i32 49, label %sw.bb.5
    i32 50, label %sw.bb.5
    i32 51, label %sw.bb.5
    i32 52, label %sw.bb.5
    i32 53, label %sw.bb.5
    i32 54, label %sw.bb.5
    i32 55, label %sw.bb.5
    i32 56, label %sw.bb.5
    i32 57, label %sw.bb.5
    i32 46, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %while.body
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  %18 = load i8, i8* %skip, align 1
  %tobool4 = icmp ne i8 %18, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.3
  %19 = load %struct.sv*, %struct.sv** %result, align 8
  call void @Perl_sv_free(%struct.sv* %19)
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.3
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  store i8 0, i8* %skip, align 1
  %20 = load i8, i8* %ignore, align 1
  %tobool6 = icmp ne i8 %20, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %sw.bb.5
  %21 = load i8*, i8** %s.addr, align 8
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %out, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %out, align 8
  store i8 %22, i8* %23, align 1
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %sw.bb.5
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  store i8 1, i8* %ignore, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %24 = load %struct.sv*, %struct.sv** %result, align 8
  call void @Perl_sv_free(%struct.sv* %24)
  store %struct.sv* null, %struct.sv** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.9, %if.end.8, %if.end, %sw.bb
  %25 = load i8*, i8** %s.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr10, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load i8*, i8** %out, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr11, i8** %out, align 8
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %out, align 8
  %28 = load i8*, i8** %result_c, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %29 = load %struct.sv*, %struct.sv** %result, align 8
  %sv_any12 = getelementptr inbounds %struct.sv, %struct.sv* %29, i32 0, i32 0
  %30 = load i8*, i8** %sv_any12, align 8
  %31 = bitcast i8* %30 to %struct.xpv*
  %xpv_cur13 = getelementptr inbounds %struct.xpv, %struct.xpv* %31, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %xpv_cur13, align 8
  store i64 %sub.ptr.sub, i64* %tmp
  %32 = load i64, i64* %tmp
  %33 = load %struct.sv*, %struct.sv** %result, align 8
  store %struct.sv* %33, %struct.sv** %retval
  br label %return

return:                                           ; preds = %while.end, %sw.default, %if.then
  %34 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %34
}

; Function Attrs: nounwind uwtable
define internal i32 @S_div128(%struct.sv* %pnum, i8* %done) #0 {
entry:
  %pnum.addr = alloca %struct.sv*, align 8
  %done.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  %m = alloca i32, align 4
  %r = alloca i32, align 4
  %t = alloca i8*, align 8
  %i = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.sv* %pnum, %struct.sv** %pnum.addr, align 8
  store i8* %done, i8** %done.addr, align 8
  %0 = load %struct.sv*, %struct.sv** %pnum.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 262144
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sv*, %struct.sv** %pnum.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 0
  %3 = load i8*, i8** %sv_any, align 8
  %4 = bitcast i8* %3 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %4, i32 0, i32 1
  %5 = load i64, i64* %xpv_cur, align 8
  store i64 %5, i64* %len, align 8
  %6 = load %struct.sv*, %struct.sv** %pnum.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any1, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 0
  %9 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.sv*, %struct.sv** %pnum.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %10, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %s, align 8
  store i32 0, i32* %m, align 4
  store i32 0, i32* %r, align 4
  %11 = load i8*, i8** %s, align 8
  store i8* %11, i8** %t, align 8
  %12 = load i8*, i8** %done.addr, align 8
  store i8 1, i8* %12, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end
  %13 = load i8*, i8** %t, align 8
  %14 = load i8, i8* %13, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %15, 10
  %16 = load i8*, i8** %t, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %sub = sub nsw i32 %conv, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* %i, align 4
  %18 = load i32, i32* %i, align 4
  %and2 = and i32 %18, 127
  store i32 %and2, i32* %m, align 4
  %19 = load i32, i32* %i, align 4
  %shr = ashr i32 %19, 7
  store i32 %shr, i32* %r, align 4
  %20 = load i32, i32* %r, align 4
  %tobool3 = icmp ne i32 %20, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %21 = load i8*, i8** %done.addr, align 8
  store i8 0, i8* %21, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %22 = load i32, i32* %r, align 4
  %add4 = add nsw i32 48, %22
  %conv5 = trunc i32 %add4 to i8
  %23 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %t, align 8
  store i8 %conv5, i8* %23, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i8*, i8** %t, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr6, i8** %t, align 8
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %t, align 8
  %26 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %27 = load %struct.sv*, %struct.sv** %pnum.addr, align 8
  %sv_any7 = getelementptr inbounds %struct.sv, %struct.sv* %27, i32 0, i32 0
  %28 = load i8*, i8** %sv_any7, align 8
  %29 = bitcast i8* %28 to %struct.xpv*
  %xpv_cur8 = getelementptr inbounds %struct.xpv, %struct.xpv* %29, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %xpv_cur8, align 8
  store i64 %sub.ptr.sub, i64* %tmp
  %30 = load i64, i64* %tmp
  %31 = load i32, i32* %m, align 4
  ret i32 %31
}

declare void @Perl_safesysfree(i8*) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #4

declare i64 @Perl_my_htonl(i64) #2

declare i64 @htovl(i64) #2

declare i32 @Perl_mg_get(%struct.sv*) #2

declare i8* @Perl_sv_pvn_force_flags(%struct.sv*, i64*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @S_doencodes(%struct.sv* %sv, i8* %s, i32 %len) #0 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %hunk = alloca [5 x i8], align 1
  %r = alloca i8, align 1
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [65 x i8], [65 x i8]* @PL_uuemap, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %hunk, i32 0, i32 0
  store i8 %1, i8* %arraydecay, align 1
  %2 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %arraydecay1 = getelementptr inbounds [5 x i8], [5 x i8]* %hunk, i32 0, i32 0
  call void @Perl_sv_catpvn_flags(%struct.sv* %2, i8* %arraydecay1, i64 1, i32 2)
  %arrayidx2 = getelementptr inbounds [5 x i8], [5 x i8]* %hunk, i32 0, i64 4
  store i8 0, i8* %arrayidx2, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %len.addr, align 4
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %shr = ashr i32 %conv, 2
  %and = and i32 63, %shr
  %idxprom3 = sext i32 %and to i64
  %arrayidx4 = getelementptr inbounds [65 x i8], [65 x i8]* @PL_uuemap, i32 0, i64 %idxprom3
  %6 = load i8, i8* %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [5 x i8], [5 x i8]* %hunk, i32 0, i64 0
  store i8 %6, i8* %arrayidx5, align 1
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %shl = shl i32 %conv6, 4
  %and7 = and i32 %shl, 48
  %9 = load i8*, i8** %s.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %10 to i32
  %shr10 = ashr i32 %conv9, 4
  %and11 = and i32 %shr10, 15
  %or = or i32 %and7, %and11
  %and12 = and i32 63, %or
  %idxprom13 = sext i32 %and12 to i64
  %arrayidx14 = getelementptr inbounds [65 x i8], [65 x i8]* @PL_uuemap, i32 0, i64 %idxprom13
  %11 = load i8, i8* %arrayidx14, align 1
  %arrayidx15 = getelementptr inbounds [5 x i8], [5 x i8]* %hunk, i32 0, i64 1
  store i8 %11, i8* %arrayidx15, align 1
  %12 = load i8*, i8** %s.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %13 to i32
  %shl18 = shl i32 %conv17, 2
  %and19 = and i32 %shl18, 60
  %14 = load i8*, i8** %s.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %15 to i32
  %shr22 = ashr i32 %conv21, 6
  %and23 = and i32 %shr22, 3
  %or24 = or i32 %and19, %and23
  %and25 = and i32 63, %or24
  %idxprom26 = sext i32 %and25 to i64
  %arrayidx27 = getelementptr inbounds [65 x i8], [65 x i8]* @PL_uuemap, i32 0, i64 %idxprom26
  %16 = load i8, i8* %arrayidx27, align 1
  %arrayidx28 = getelementptr inbounds [5 x i8], [5 x i8]* %hunk, i32 0, i64 2
  store i8 %16, i8* %arrayidx28, align 1
  %17 = load i8*, i8** %s.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %18 to i32
  %and31 = and i32 %conv30, 63
  %and32 = and i32 63, %and31
  %idxprom33 = sext i32 %and32 to i64
  %arrayidx34 = getelementptr inbounds [65 x i8], [65 x i8]* @PL_uuemap, i32 0, i64 %idxprom33
  %19 = load i8, i8* %arrayidx34, align 1
  %arrayidx35 = getelementptr inbounds [5 x i8], [5 x i8]* %hunk, i32 0, i64 3
  store i8 %19, i8* %arrayidx35, align 1
  %20 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %arraydecay36 = getelementptr inbounds [5 x i8], [5 x i8]* %hunk, i32 0, i32 0
  call void @Perl_sv_catpvn_flags(%struct.sv* %20, i8* %arraydecay36, i64 4, i32 2)
  %21 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 3
  store i8* %add.ptr, i8** %s.addr, align 8
  %22 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %22, 3
  store i32 %sub, i32* %len.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %len.addr, align 4
  %cmp37 = icmp sgt i32 %23, 0
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %24 = load i32, i32* %len.addr, align 4
  %cmp39 = icmp sgt i32 %24, 1
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %25 = load i8*, i8** %s.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %26 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv42, %cond.true ], [ 0, %cond.false ]
  %conv43 = trunc i32 %cond to i8
  store i8 %conv43, i8* %r, align 1
  %27 = load i8*, i8** %s.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv44 = sext i8 %28 to i32
  %shr45 = ashr i32 %conv44, 2
  %and46 = and i32 63, %shr45
  %idxprom47 = sext i32 %and46 to i64
  %arrayidx48 = getelementptr inbounds [65 x i8], [65 x i8]* @PL_uuemap, i32 0, i64 %idxprom47
  %29 = load i8, i8* %arrayidx48, align 1
  %arrayidx49 = getelementptr inbounds [5 x i8], [5 x i8]* %hunk, i32 0, i64 0
  store i8 %29, i8* %arrayidx49, align 1
  %30 = load i8*, i8** %s.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv50 = sext i8 %31 to i32
  %shl51 = shl i32 %conv50, 4
  %and52 = and i32 %shl51, 48
  %32 = load i8, i8* %r, align 1
  %conv53 = sext i8 %32 to i32
  %shr54 = ashr i32 %conv53, 4
  %and55 = and i32 %shr54, 15
  %or56 = or i32 %and52, %and55
  %and57 = and i32 63, %or56
  %idxprom58 = sext i32 %and57 to i64
  %arrayidx59 = getelementptr inbounds [65 x i8], [65 x i8]* @PL_uuemap, i32 0, i64 %idxprom58
  %33 = load i8, i8* %arrayidx59, align 1
  %arrayidx60 = getelementptr inbounds [5 x i8], [5 x i8]* %hunk, i32 0, i64 1
  store i8 %33, i8* %arrayidx60, align 1
  %34 = load i8, i8* %r, align 1
  %conv61 = sext i8 %34 to i32
  %shl62 = shl i32 %conv61, 2
  %and63 = and i32 %shl62, 60
  %and64 = and i32 63, %and63
  %idxprom65 = sext i32 %and64 to i64
  %arrayidx66 = getelementptr inbounds [65 x i8], [65 x i8]* @PL_uuemap, i32 0, i64 %idxprom65
  %35 = load i8, i8* %arrayidx66, align 1
  %arrayidx67 = getelementptr inbounds [5 x i8], [5 x i8]* %hunk, i32 0, i64 2
  store i8 %35, i8* %arrayidx67, align 1
  %36 = load i8, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @PL_uuemap, i32 0, i64 0), align 1
  %arrayidx68 = getelementptr inbounds [5 x i8], [5 x i8]* %hunk, i32 0, i64 3
  store i8 %36, i8* %arrayidx68, align 1
  %37 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  %arraydecay69 = getelementptr inbounds [5 x i8], [5 x i8]* %hunk, i32 0, i32 0
  call void @Perl_sv_catpvn_flags(%struct.sv* %37, i8* %arraydecay69, i64 4, i32 2)
  br label %if.end

if.end:                                           ; preds = %cond.end, %while.end
  %38 = load %struct.sv*, %struct.sv** %sv.addr, align 8
  call void @Perl_sv_catpvn_flags(%struct.sv* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), i64 1, i32 2)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
