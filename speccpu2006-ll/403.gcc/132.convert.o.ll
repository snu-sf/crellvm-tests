; ModuleID = 'convert.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type opaque
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type opaque
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }

@target_flags = external global i32, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot convert to a pointer type\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@flag_float_store = external global i32, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"pointer value used where a floating point value was expected\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"aggregate value used where a float was expected\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"conversion to incomplete type\00", align 1
@tree_code_type = external global [256 x i8], align 16
@mode_bitsize = external constant [59 x i16], align 16
@mode_size = external constant [59 x i8], align 16
@.str.4 = private unnamed_addr constant [54 x i8] c"can't convert between vector values of different size\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"aggregate value used where an integer was expected\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"pointer value used where a complex was expected\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"aggregate value used where a complex was expected\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"can't convert value to a vector\00", align 1

; Function Attrs: nounwind uwtable
define %union.tree_node* @convert_to_pointer(%union.tree_node* %type, %union.tree_node* %expr) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %expr.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call = call i32 @integer_zerop(%union.tree_node* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %union.tree_node* @build_int_2_wide(i64 0, i64 0)
  store %union.tree_node* %call1, %union.tree_node** %expr.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %1, %union.tree_node** %type2, align 8
  %3 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  store %union.tree_node* %3, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common3 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %type4, align 8
  %common5 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 13, label %sw.bb
    i32 15, label %sw.bb
    i32 6, label %sw.bb.7
    i32 10, label %sw.bb.7
    i32 11, label %sw.bb.7
    i32 12, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %6 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call6 = call %union.tree_node* @build1(i32 115, %union.tree_node* %6, %union.tree_node* %7)
  store %union.tree_node* %call6, %union.tree_node** %retval
  br label %return

sw.bb.7:                                          ; preds = %if.end, %if.end, %if.end, %if.end
  %8 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common8 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %type9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %type9, align 8
  %type10 = bitcast %union.tree_node* %9 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type10, i32 0, i32 6
  %bf.load11 = load i32, i32* %precision, align 4
  %bf.clear12 = and i32 %bf.load11, 511
  %10 = load i32, i32* @target_flags, align 4
  %and = and i32 %10, 33554432
  %tobool13 = icmp ne i32 %and, 0
  %cond = select i1 %tobool13, i32 64, i32 32
  %cmp = icmp eq i32 %bf.clear12, %cond
  br i1 %cmp, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %sw.bb.7
  %11 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %12 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call15 = call %union.tree_node* @build1(i32 114, %union.tree_node* %11, %union.tree_node* %12)
  store %union.tree_node* %call15, %union.tree_node** %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb.7
  %13 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %14 = load i32, i32* @target_flags, align 4
  %and17 = and i32 %14, 33554432
  %tobool18 = icmp ne i32 %and17, 0
  %cond19 = select i1 %tobool18, i32 64, i32 32
  %call20 = call %union.tree_node* @type_for_size(i32 %cond19, i32 0)
  %15 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call21 = call %union.tree_node* @convert(%union.tree_node* %call20, %union.tree_node* %15)
  %call22 = call %union.tree_node* @convert_to_pointer(%union.tree_node* %13, %union.tree_node* %call21)
  store %union.tree_node* %call22, %union.tree_node** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  %16 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %call23 = call %union.tree_node* @convert_to_pointer(%union.tree_node* %16, %union.tree_node* %17)
  store %union.tree_node* %call23, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.16, %if.then.14, %sw.bb, %if.then
  %18 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %18
}

declare i32 @integer_zerop(%union.tree_node*) #1

declare %union.tree_node* @build_int_2_wide(i64, i64) #1

declare %union.tree_node* @build1(i32, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @type_for_size(i32, i32) #1

declare void @error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @convert_to_real(%union.tree_node* %type, %union.tree_node* %expr) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %expr.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type1, align 8
  %common2 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 7, label %sw.bb
    i32 6, label %sw.bb.3
    i32 10, label %sw.bb.3
    i32 11, label %sw.bb.3
    i32 12, label %sw.bb.3
    i32 8, label %sw.bb.5
    i32 13, label %sw.bb.13
    i32 15, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32, i32* @flag_float_store, align 4
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 114, i32 115
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call = call %union.tree_node* @build1(i32 %cond, %union.tree_node* %3, %union.tree_node* %4)
  store %union.tree_node* %call, %union.tree_node** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry, %entry, %entry, %entry
  %5 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %6 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call4 = call %union.tree_node* @build1(i32 76, %union.tree_node* %5, %union.tree_node* %6)
  store %union.tree_node* %call4, %union.tree_node** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %7 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %8 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common6 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %type7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %type7, align 8
  %common8 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type9, align 8
  %11 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call10 = call %union.tree_node* @build1(i32 127, %union.tree_node* %10, %union.tree_node* %11)
  %call11 = call %union.tree_node* @fold(%union.tree_node* %call10)
  %call12 = call %union.tree_node* @convert(%union.tree_node* %7, %union.tree_node* %call11)
  store %union.tree_node* %call12, %union.tree_node** %retval
  br label %return

sw.bb.13:                                         ; preds = %entry, %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0))
  %12 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %call14 = call %union.tree_node* @convert_to_real(%union.tree_node* %12, %union.tree_node* %13)
  store %union.tree_node* %call14, %union.tree_node** %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  %14 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %15 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %call15 = call %union.tree_node* @convert_to_real(%union.tree_node* %14, %union.tree_node* %15)
  store %union.tree_node* %call15, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.13, %sw.bb.5, %sw.bb.3, %sw.bb
  %16 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %16
}

declare %union.tree_node* @fold(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @convert_to_integer(%union.tree_node* %type, %union.tree_node* %expr) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %expr.addr = alloca %union.tree_node*, align 8
  %ex_form = alloca i32, align 4
  %intype = alloca %union.tree_node*, align 8
  %inprec = alloca i32, align 4
  %outprec = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  %arg0 = alloca %union.tree_node*, align 8
  %arg1 = alloca %union.tree_node*, align 8
  %arg0231 = alloca %union.tree_node*, align 8
  %arg1236 = alloca %union.tree_node*, align 8
  %typex = alloca %union.tree_node*, align 8
  %typex331 = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %ex_form, align 4
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %type2, align 8
  store %union.tree_node* %2, %union.tree_node** %intype, align 8
  %3 = load %union.tree_node*, %union.tree_node** %intype, align 8
  %type3 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i32 0, i32 6
  %bf.load4 = load i32, i32* %precision, align 4
  %bf.clear5 = and i32 %bf.load4, 511
  store i32 %bf.clear5, i32* %inprec, align 4
  %4 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type6 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %precision7 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i32 0, i32 6
  %bf.load8 = load i32, i32* %precision7, align 4
  %bf.clear9 = and i32 %bf.load8, 511
  store i32 %bf.clear9, i32* %outprec, align 4
  %5 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type10 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type10, i32 0, i32 2
  %6 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp = icmp ne %union.tree_node* %6, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  store %union.tree_node* %7, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %union.tree_node*, %union.tree_node** %intype, align 8
  %common11 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 2
  %bf.load13 = load i32, i32* %code12, align 8
  %bf.clear14 = and i32 %bf.load13, 255
  switch i32 %bf.clear14, label %sw.default.434 [
    i32 13, label %sw.bb
    i32 15, label %sw.bb
    i32 6, label %sw.bb.22
    i32 10, label %sw.bb.22
    i32 11, label %sw.bb.22
    i32 12, label %sw.bb.22
    i32 7, label %sw.bb.400
    i32 8, label %sw.bb.402
    i32 9, label %sw.bb.410
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %9 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call = call i32 @integer_zerop(%union.tree_node* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %sw.bb
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  store %union.tree_node* %10, %union.tree_node** %expr.addr, align 8
  br label %if.end.20

if.else:                                          ; preds = %sw.bb
  %11 = load i32, i32* @target_flags, align 4
  %and = and i32 %11, 33554432
  %tobool16 = icmp ne i32 %and, 0
  %cond = select i1 %tobool16, i32 64, i32 32
  %call17 = call %union.tree_node* @type_for_size(i32 %cond, i32 0)
  %12 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call18 = call %union.tree_node* @build1(i32 114, %union.tree_node* %call17, %union.tree_node* %12)
  %call19 = call %union.tree_node* @fold(%union.tree_node* %call18)
  store %union.tree_node* %call19, %union.tree_node** %expr.addr, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.15
  %13 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %14 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call21 = call %union.tree_node* @convert_to_integer(%union.tree_node* %13, %union.tree_node* %14)
  store %union.tree_node* %call21, %union.tree_node** %retval
  br label %return

sw.bb.22:                                         ; preds = %if.end, %if.end, %if.end, %if.end
  %15 = load i32, i32* %ex_form, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %16 to i32
  %cmp23 = icmp eq i32 %conv, 60
  br i1 %cmp23, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %sw.bb.22
  %17 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %18 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common26 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %type27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 1
  store %union.tree_node* %17, %union.tree_node** %type27, align 8
  %19 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  store %union.tree_node* %19, %union.tree_node** %retval
  br label %return

if.else.28:                                       ; preds = %sw.bb.22
  %20 = load i32, i32* %ex_form, align 4
  %cmp29 = icmp eq i32 %20, 93
  br i1 %cmp29, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.28
  %21 = load i32, i32* %ex_form, align 4
  %cmp31 = icmp eq i32 %21, 91
  br i1 %cmp31, label %if.then.42, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false
  %22 = load i32, i32* %ex_form, align 4
  %cmp34 = icmp eq i32 %22, 94
  br i1 %cmp34, label %if.then.42, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.33
  %23 = load i32, i32* %ex_form, align 4
  %cmp37 = icmp eq i32 %23, 92
  br i1 %cmp37, label %if.then.42, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.36
  %24 = load i32, i32* %ex_form, align 4
  %cmp40 = icmp eq i32 %24, 95
  br i1 %cmp40, label %if.then.42, label %if.else.57

if.then.42:                                       ; preds = %lor.lhs.false.39, %lor.lhs.false.36, %lor.lhs.false.33, %lor.lhs.false, %if.else.28
  %25 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %26 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp = bitcast %union.tree_node* %26 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx43 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %27 = load %union.tree_node*, %union.tree_node** %arrayidx43, align 8
  %call44 = call %union.tree_node* @convert(%union.tree_node* %25, %union.tree_node* %27)
  %28 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp45 = bitcast %union.tree_node* %28 to %struct.tree_exp*
  %operands46 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp45, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands46, i32 0, i64 0
  store %union.tree_node* %call44, %union.tree_node** %arrayidx47, align 8
  %29 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %30 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp48 = bitcast %union.tree_node* %30 to %struct.tree_exp*
  %operands49 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp48, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands49, i32 0, i64 1
  %31 = load %union.tree_node*, %union.tree_node** %arrayidx50, align 8
  %call51 = call %union.tree_node* @convert(%union.tree_node* %29, %union.tree_node* %31)
  %32 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp52 = bitcast %union.tree_node* %32 to %struct.tree_exp*
  %operands53 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp52, i32 0, i32 2
  %arrayidx54 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands53, i32 0, i64 1
  store %union.tree_node* %call51, %union.tree_node** %arrayidx54, align 8
  %33 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %34 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common55 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %type56 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common55, i32 0, i32 1
  store %union.tree_node* %33, %union.tree_node** %type56, align 8
  %35 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  store %union.tree_node* %35, %union.tree_node** %retval
  br label %return

if.else.57:                                       ; preds = %lor.lhs.false.39
  %36 = load i32, i32* %ex_form, align 4
  %cmp58 = icmp eq i32 %36, 96
  br i1 %cmp58, label %if.then.60, label %if.else.70

if.then.60:                                       ; preds = %if.else.57
  %37 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %38 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp61 = bitcast %union.tree_node* %38 to %struct.tree_exp*
  %operands62 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp61, i32 0, i32 2
  %arrayidx63 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands62, i32 0, i64 0
  %39 = load %union.tree_node*, %union.tree_node** %arrayidx63, align 8
  %call64 = call %union.tree_node* @convert(%union.tree_node* %37, %union.tree_node* %39)
  %40 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp65 = bitcast %union.tree_node* %40 to %struct.tree_exp*
  %operands66 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp65, i32 0, i32 2
  %arrayidx67 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands66, i32 0, i64 0
  store %union.tree_node* %call64, %union.tree_node** %arrayidx67, align 8
  %41 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %42 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common68 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %type69 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common68, i32 0, i32 1
  store %union.tree_node* %41, %union.tree_node** %type69, align 8
  %43 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  store %union.tree_node* %43, %union.tree_node** %retval
  br label %return

if.else.70:                                       ; preds = %if.else.57
  %44 = load i32, i32* %outprec, align 4
  %45 = load i32, i32* %inprec, align 4
  %cmp71 = icmp uge i32 %44, %45
  br i1 %cmp71, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %if.else.70
  %46 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %47 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call74 = call %union.tree_node* @build1(i32 115, %union.tree_node* %46, %union.tree_node* %47)
  store %union.tree_node* %call74, %union.tree_node** %retval
  br label %return

if.else.75:                                       ; preds = %if.else.70
  %48 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common76 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %code77 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common76, i32 0, i32 2
  %bf.load78 = load i32, i32* %code77, align 8
  %bf.clear79 = and i32 %bf.load78, 255
  %cmp80 = icmp eq i32 %bf.clear79, 10
  br i1 %cmp80, label %if.then.91, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %if.else.75
  %49 = load i32, i32* %outprec, align 4
  %50 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type83 = bitcast %union.tree_node* %50 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type83, i32 0, i32 6
  %bf.load84 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load84, 9
  %bf.clear85 = and i32 %bf.lshr, 127
  %idxprom86 = sext i32 %bf.clear85 to i64
  %arrayidx87 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom86
  %51 = load i16, i16* %arrayidx87, align 2
  %conv88 = zext i16 %51 to i32
  %cmp89 = icmp ne i32 %49, %conv88
  br i1 %cmp89, label %if.then.91, label %if.end.104

if.then.91:                                       ; preds = %lor.lhs.false.82, %if.else.75
  %52 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %53 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type92 = bitcast %union.tree_node* %53 to %struct.tree_type*
  %mode93 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type92, i32 0, i32 6
  %bf.load94 = load i32, i32* %mode93, align 4
  %bf.lshr95 = lshr i32 %bf.load94, 9
  %bf.clear96 = and i32 %bf.lshr95, 127
  %54 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common97 = bitcast %union.tree_node* %54 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common97, i32 0, i32 2
  %bf.load98 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr99 = lshr i32 %bf.load98, 13
  %bf.clear100 = and i32 %bf.lshr99, 1
  %call101 = call %union.tree_node* @type_for_mode(i32 %bf.clear96, i32 %bf.clear100)
  %55 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call102 = call %union.tree_node* @convert(%union.tree_node* %call101, %union.tree_node* %55)
  %call103 = call %union.tree_node* @build1(i32 115, %union.tree_node* %52, %union.tree_node* %call102)
  store %union.tree_node* %call103, %union.tree_node** %retval
  br label %return

if.end.104:                                       ; preds = %lor.lhs.false.82
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107
  %56 = load i32, i32* %ex_form, align 4
  switch i32 %56, label %sw.default [
    i32 83, label %sw.bb.109
    i32 82, label %sw.bb.132
    i32 79, label %sw.bb.185
    i32 78, label %sw.bb.185
    i32 61, label %sw.bb.185
    i32 59, label %sw.bb.230
    i32 60, label %sw.bb.230
    i32 88, label %sw.bb.230
    i32 86, label %sw.bb.230
    i32 87, label %sw.bb.230
    i32 89, label %sw.bb.230
    i32 77, label %sw.bb.330
    i32 90, label %sw.bb.330
    i32 115, label %sw.bb.379
    i32 51, label %sw.bb.385
  ]

sw.bb.109:                                        ; preds = %if.end.108
  %57 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp110 = bitcast %union.tree_node* %57 to %struct.tree_exp*
  %operands111 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp110, i32 0, i32 2
  %arrayidx112 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands111, i32 0, i64 1
  %58 = load %union.tree_node*, %union.tree_node** %arrayidx112, align 8
  %common113 = bitcast %union.tree_node* %58 to %struct.tree_common*
  %code114 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common113, i32 0, i32 2
  %bf.load115 = load i32, i32* %code114, align 8
  %bf.clear116 = and i32 %bf.load115, 255
  %cmp117 = icmp eq i32 %bf.clear116, 25
  br i1 %cmp117, label %land.lhs.true, label %if.end.131

land.lhs.true:                                    ; preds = %sw.bb.109
  %59 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp119 = bitcast %union.tree_node* %59 to %struct.tree_exp*
  %operands120 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp119, i32 0, i32 2
  %arrayidx121 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands120, i32 0, i64 1
  %60 = load %union.tree_node*, %union.tree_node** %arrayidx121, align 8
  %61 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp122 = bitcast %union.tree_node* %61 to %struct.tree_exp*
  %operands123 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp122, i32 0, i32 2
  %arrayidx124 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands123, i32 0, i64 1
  %62 = load %union.tree_node*, %union.tree_node** %arrayidx124, align 8
  %common125 = bitcast %union.tree_node* %62 to %struct.tree_common*
  %type126 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common125, i32 0, i32 1
  %63 = load %union.tree_node*, %union.tree_node** %type126, align 8
  %64 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 12), align 8
  %call127 = call %union.tree_node* @convert(%union.tree_node* %63, %union.tree_node* %64)
  %call128 = call i32 @tree_int_cst_lt(%union.tree_node* %60, %union.tree_node* %call127)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %land.lhs.true
  br label %trunc1

if.end.131:                                       ; preds = %land.lhs.true, %sw.bb.109
  br label %sw.epilog

sw.bb.132:                                        ; preds = %if.end.108
  %65 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp133 = bitcast %union.tree_node* %65 to %struct.tree_exp*
  %operands134 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp133, i32 0, i32 2
  %arrayidx135 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands134, i32 0, i64 1
  %66 = load %union.tree_node*, %union.tree_node** %arrayidx135, align 8
  %common136 = bitcast %union.tree_node* %66 to %struct.tree_common*
  %code137 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common136, i32 0, i32 2
  %bf.load138 = load i32, i32* %code137, align 8
  %bf.clear139 = and i32 %bf.load138, 255
  %cmp140 = icmp eq i32 %bf.clear139, 25
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.184

land.lhs.true.142:                                ; preds = %sw.bb.132
  %67 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp143 = bitcast %union.tree_node* %67 to %struct.tree_exp*
  %operands144 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp143, i32 0, i32 2
  %arrayidx145 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands144, i32 0, i64 1
  %68 = load %union.tree_node*, %union.tree_node** %arrayidx145, align 8
  %call146 = call i32 @tree_int_cst_sgn(%union.tree_node* %68)
  %cmp147 = icmp sge i32 %call146, 0
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.184

land.lhs.true.149:                                ; preds = %land.lhs.true.142
  %69 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common150 = bitcast %union.tree_node* %69 to %struct.tree_common*
  %unsigned_flag151 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common150, i32 0, i32 2
  %bf.load152 = load i32, i32* %unsigned_flag151, align 8
  %bf.lshr153 = lshr i32 %bf.load152, 13
  %bf.clear154 = and i32 %bf.lshr153, 1
  %tobool155 = icmp ne i32 %bf.clear154, 0
  br i1 %tobool155, label %land.lhs.true.156, label %if.end.184

land.lhs.true.156:                                ; preds = %land.lhs.true.149
  %70 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type157 = bitcast %union.tree_node* %70 to %struct.tree_type*
  %size158 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type157, i32 0, i32 2
  %71 = load %union.tree_node*, %union.tree_node** %size158, align 8
  %common159 = bitcast %union.tree_node* %71 to %struct.tree_common*
  %code160 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common159, i32 0, i32 2
  %bf.load161 = load i32, i32* %code160, align 8
  %bf.clear162 = and i32 %bf.load161, 255
  %cmp163 = icmp eq i32 %bf.clear162, 25
  br i1 %cmp163, label %if.then.165, label %if.end.184

if.then.165:                                      ; preds = %land.lhs.true.156
  %72 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp166 = bitcast %union.tree_node* %72 to %struct.tree_exp*
  %operands167 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp166, i32 0, i32 2
  %arrayidx168 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands167, i32 0, i64 1
  %73 = load %union.tree_node*, %union.tree_node** %arrayidx168, align 8
  %74 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type169 = bitcast %union.tree_node* %74 to %struct.tree_type*
  %size170 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type169, i32 0, i32 2
  %75 = load %union.tree_node*, %union.tree_node** %size170, align 8
  %call171 = call i32 @tree_int_cst_lt(%union.tree_node* %73, %union.tree_node* %75)
  %tobool172 = icmp ne i32 %call171, 0
  br i1 %tobool172, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %if.then.165
  br label %trunc1

if.else.174:                                      ; preds = %if.then.165
  %76 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %77 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %call175 = call %union.tree_node* @convert_to_integer(%union.tree_node* %76, %union.tree_node* %77)
  store %union.tree_node* %call175, %union.tree_node** %t, align 8
  %78 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common176 = bitcast %union.tree_node* %78 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common176, i32 0, i32 2
  %bf.load177 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr178 = lshr i32 %bf.load177, 8
  %bf.clear179 = and i32 %bf.lshr178, 1
  %tobool180 = icmp ne i32 %bf.clear179, 0
  br i1 %tobool180, label %if.then.181, label %if.else.183

if.then.181:                                      ; preds = %if.else.174
  %79 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %80 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %81 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call182 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 47, %union.tree_node* %79, %union.tree_node* %80, %union.tree_node* %81)
  store %union.tree_node* %call182, %union.tree_node** %retval
  br label %return

if.else.183:                                      ; preds = %if.else.174
  %82 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %82, %union.tree_node** %retval
  br label %return

if.end.184:                                       ; preds = %land.lhs.true.156, %land.lhs.true.149, %land.lhs.true.142, %sw.bb.132
  br label %sw.epilog

sw.bb.185:                                        ; preds = %if.end.108, %if.end.108, %if.end.108
  %83 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp186 = bitcast %union.tree_node* %83 to %struct.tree_exp*
  %operands187 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp186, i32 0, i32 2
  %arrayidx188 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands187, i32 0, i64 0
  %84 = load %union.tree_node*, %union.tree_node** %arrayidx188, align 8
  %85 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call189 = call %union.tree_node* @get_unwidened(%union.tree_node* %84, %union.tree_node* %85)
  store %union.tree_node* %call189, %union.tree_node** %arg0, align 8
  %86 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp190 = bitcast %union.tree_node* %86 to %struct.tree_exp*
  %operands191 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp190, i32 0, i32 2
  %arrayidx192 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands191, i32 0, i64 1
  %87 = load %union.tree_node*, %union.tree_node** %arrayidx192, align 8
  %88 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call193 = call %union.tree_node* @get_unwidened(%union.tree_node* %87, %union.tree_node* %88)
  store %union.tree_node* %call193, %union.tree_node** %arg1, align 8
  %89 = load i32, i32* %outprec, align 4
  %90 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %common194 = bitcast %union.tree_node* %90 to %struct.tree_common*
  %type195 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common194, i32 0, i32 1
  %91 = load %union.tree_node*, %union.tree_node** %type195, align 8
  %type196 = bitcast %union.tree_node* %91 to %struct.tree_type*
  %precision197 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type196, i32 0, i32 6
  %bf.load198 = load i32, i32* %precision197, align 4
  %bf.clear199 = and i32 %bf.load198, 511
  %cmp200 = icmp uge i32 %89, %bf.clear199
  br i1 %cmp200, label %land.lhs.true.202, label %if.end.229

land.lhs.true.202:                                ; preds = %sw.bb.185
  %92 = load i32, i32* %outprec, align 4
  %93 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %common203 = bitcast %union.tree_node* %93 to %struct.tree_common*
  %type204 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common203, i32 0, i32 1
  %94 = load %union.tree_node*, %union.tree_node** %type204, align 8
  %type205 = bitcast %union.tree_node* %94 to %struct.tree_type*
  %precision206 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type205, i32 0, i32 6
  %bf.load207 = load i32, i32* %precision206, align 4
  %bf.clear208 = and i32 %bf.load207, 511
  %cmp209 = icmp uge i32 %92, %bf.clear208
  br i1 %cmp209, label %land.lhs.true.211, label %if.end.229

land.lhs.true.211:                                ; preds = %land.lhs.true.202
  %95 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %common212 = bitcast %union.tree_node* %95 to %struct.tree_common*
  %type213 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common212, i32 0, i32 1
  %96 = load %union.tree_node*, %union.tree_node** %type213, align 8
  %common214 = bitcast %union.tree_node* %96 to %struct.tree_common*
  %unsigned_flag215 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common214, i32 0, i32 2
  %bf.load216 = load i32, i32* %unsigned_flag215, align 8
  %bf.lshr217 = lshr i32 %bf.load216, 13
  %bf.clear218 = and i32 %bf.lshr217, 1
  %97 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %common219 = bitcast %union.tree_node* %97 to %struct.tree_common*
  %type220 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common219, i32 0, i32 1
  %98 = load %union.tree_node*, %union.tree_node** %type220, align 8
  %common221 = bitcast %union.tree_node* %98 to %struct.tree_common*
  %unsigned_flag222 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common221, i32 0, i32 2
  %bf.load223 = load i32, i32* %unsigned_flag222, align 8
  %bf.lshr224 = lshr i32 %bf.load223, 13
  %bf.clear225 = and i32 %bf.lshr224, 1
  %cmp226 = icmp eq i32 %bf.clear218, %bf.clear225
  br i1 %cmp226, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %land.lhs.true.211
  br label %trunc1

if.end.229:                                       ; preds = %land.lhs.true.211, %land.lhs.true.202, %sw.bb.185
  br label %sw.epilog

sw.bb.230:                                        ; preds = %if.end.108, %if.end.108, %if.end.108, %if.end.108, %if.end.108, %if.end.108
  br label %trunc1

trunc1:                                           ; preds = %sw.bb.230, %if.then.228, %if.then.173, %if.then.130
  %99 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp232 = bitcast %union.tree_node* %99 to %struct.tree_exp*
  %operands233 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp232, i32 0, i32 2
  %arrayidx234 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands233, i32 0, i64 0
  %100 = load %union.tree_node*, %union.tree_node** %arrayidx234, align 8
  %101 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call235 = call %union.tree_node* @get_unwidened(%union.tree_node* %100, %union.tree_node* %101)
  store %union.tree_node* %call235, %union.tree_node** %arg0231, align 8
  %102 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp237 = bitcast %union.tree_node* %102 to %struct.tree_exp*
  %operands238 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp237, i32 0, i32 2
  %arrayidx239 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands238, i32 0, i64 1
  %103 = load %union.tree_node*, %union.tree_node** %arrayidx239, align 8
  %104 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call240 = call %union.tree_node* @get_unwidened(%union.tree_node* %103, %union.tree_node* %104)
  store %union.tree_node* %call240, %union.tree_node** %arg1236, align 8
  %105 = load i32, i32* %outprec, align 4
  %106 = load i32, i32* @target_flags, align 4
  %and241 = and i32 %106, 33554432
  %tobool242 = icmp ne i32 %and241, 0
  %cond243 = select i1 %tobool242, i32 64, i32 32
  %cmp244 = icmp uge i32 %105, %cond243
  br i1 %cmp244, label %if.then.265, label %lor.lhs.false.246

lor.lhs.false.246:                                ; preds = %trunc1
  br i1 true, label %if.then.265, label %lor.lhs.false.247

lor.lhs.false.247:                                ; preds = %lor.lhs.false.246
  %107 = load i32, i32* %inprec, align 4
  %108 = load %union.tree_node*, %union.tree_node** %arg0231, align 8
  %common248 = bitcast %union.tree_node* %108 to %struct.tree_common*
  %type249 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common248, i32 0, i32 1
  %109 = load %union.tree_node*, %union.tree_node** %type249, align 8
  %type250 = bitcast %union.tree_node* %109 to %struct.tree_type*
  %precision251 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type250, i32 0, i32 6
  %bf.load252 = load i32, i32* %precision251, align 4
  %bf.clear253 = and i32 %bf.load252, 511
  %cmp254 = icmp ugt i32 %107, %bf.clear253
  br i1 %cmp254, label %if.then.265, label %lor.lhs.false.256

lor.lhs.false.256:                                ; preds = %lor.lhs.false.247
  %110 = load i32, i32* %inprec, align 4
  %111 = load %union.tree_node*, %union.tree_node** %arg1236, align 8
  %common257 = bitcast %union.tree_node* %111 to %struct.tree_common*
  %type258 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common257, i32 0, i32 1
  %112 = load %union.tree_node*, %union.tree_node** %type258, align 8
  %type259 = bitcast %union.tree_node* %112 to %struct.tree_type*
  %precision260 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type259, i32 0, i32 6
  %bf.load261 = load i32, i32* %precision260, align 4
  %bf.clear262 = and i32 %bf.load261, 511
  %cmp263 = icmp ugt i32 %110, %bf.clear262
  br i1 %cmp263, label %if.then.265, label %if.end.329

if.then.265:                                      ; preds = %lor.lhs.false.256, %lor.lhs.false.247, %lor.lhs.false.246, %trunc1
  %113 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %113, %union.tree_node** %typex, align 8
  %114 = load %union.tree_node*, %union.tree_node** %typex, align 8
  %common266 = bitcast %union.tree_node* %114 to %struct.tree_common*
  %code267 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common266, i32 0, i32 2
  %bf.load268 = load i32, i32* %code267, align 8
  %bf.clear269 = and i32 %bf.load268, 255
  %cmp270 = icmp eq i32 %bf.clear269, 10
  br i1 %cmp270, label %if.then.272, label %if.end.283

if.then.272:                                      ; preds = %if.then.265
  %115 = load %union.tree_node*, %union.tree_node** %typex, align 8
  %type273 = bitcast %union.tree_node* %115 to %struct.tree_type*
  %precision274 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type273, i32 0, i32 6
  %bf.load275 = load i32, i32* %precision274, align 4
  %bf.clear276 = and i32 %bf.load275, 511
  %116 = load %union.tree_node*, %union.tree_node** %typex, align 8
  %common277 = bitcast %union.tree_node* %116 to %struct.tree_common*
  %unsigned_flag278 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common277, i32 0, i32 2
  %bf.load279 = load i32, i32* %unsigned_flag278, align 8
  %bf.lshr280 = lshr i32 %bf.load279, 13
  %bf.clear281 = and i32 %bf.lshr280, 1
  %call282 = call %union.tree_node* @type_for_size(i32 %bf.clear276, i32 %bf.clear281)
  store %union.tree_node* %call282, %union.tree_node** %typex, align 8
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.272, %if.then.265
  %117 = load %union.tree_node*, %union.tree_node** %typex, align 8
  %type284 = bitcast %union.tree_node* %117 to %struct.tree_type*
  %precision285 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type284, i32 0, i32 6
  %bf.load286 = load i32, i32* %precision285, align 4
  %bf.clear287 = and i32 %bf.load286, 511
  %118 = load i32, i32* %inprec, align 4
  %cmp288 = icmp ne i32 %bf.clear287, %118
  br i1 %cmp288, label %if.then.290, label %if.end.328

if.then.290:                                      ; preds = %if.end.283
  %119 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common291 = bitcast %union.tree_node* %119 to %struct.tree_common*
  %type292 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common291, i32 0, i32 1
  %120 = load %union.tree_node*, %union.tree_node** %type292, align 8
  %common293 = bitcast %union.tree_node* %120 to %struct.tree_common*
  %unsigned_flag294 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common293, i32 0, i32 2
  %bf.load295 = load i32, i32* %unsigned_flag294, align 8
  %bf.lshr296 = lshr i32 %bf.load295, 13
  %bf.clear297 = and i32 %bf.lshr296, 1
  %tobool298 = icmp ne i32 %bf.clear297, 0
  br i1 %tobool298, label %cond.true, label %lor.lhs.false.299

lor.lhs.false.299:                                ; preds = %if.then.290
  %121 = load %union.tree_node*, %union.tree_node** %arg0231, align 8
  %common300 = bitcast %union.tree_node* %121 to %struct.tree_common*
  %type301 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common300, i32 0, i32 1
  %122 = load %union.tree_node*, %union.tree_node** %type301, align 8
  %common302 = bitcast %union.tree_node* %122 to %struct.tree_common*
  %unsigned_flag303 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common302, i32 0, i32 2
  %bf.load304 = load i32, i32* %unsigned_flag303, align 8
  %bf.lshr305 = lshr i32 %bf.load304, 13
  %bf.clear306 = and i32 %bf.lshr305, 1
  %tobool307 = icmp ne i32 %bf.clear306, 0
  br i1 %tobool307, label %land.lhs.true.308, label %lor.lhs.false.317

land.lhs.true.308:                                ; preds = %lor.lhs.false.299
  %123 = load %union.tree_node*, %union.tree_node** %arg1236, align 8
  %common309 = bitcast %union.tree_node* %123 to %struct.tree_common*
  %type310 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common309, i32 0, i32 1
  %124 = load %union.tree_node*, %union.tree_node** %type310, align 8
  %common311 = bitcast %union.tree_node* %124 to %struct.tree_common*
  %unsigned_flag312 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common311, i32 0, i32 2
  %bf.load313 = load i32, i32* %unsigned_flag312, align 8
  %bf.lshr314 = lshr i32 %bf.load313, 13
  %bf.clear315 = and i32 %bf.lshr314, 1
  %tobool316 = icmp ne i32 %bf.clear315, 0
  br i1 %tobool316, label %cond.true, label %lor.lhs.false.317

lor.lhs.false.317:                                ; preds = %land.lhs.true.308, %lor.lhs.false.299
  %125 = load i32, i32* %ex_form, align 4
  %cmp318 = icmp eq i32 %125, 82
  br i1 %cmp318, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.317, %land.lhs.true.308, %if.then.290
  %126 = load %union.tree_node*, %union.tree_node** %typex, align 8
  %call320 = call %union.tree_node* @unsigned_type(%union.tree_node* %126)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.317
  %127 = load %union.tree_node*, %union.tree_node** %typex, align 8
  %call321 = call %union.tree_node* @signed_type(%union.tree_node* %127)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond322 = phi %union.tree_node* [ %call320, %cond.true ], [ %call321, %cond.false ]
  store %union.tree_node* %cond322, %union.tree_node** %typex, align 8
  %128 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %129 = load i32, i32* %ex_form, align 4
  %130 = load %union.tree_node*, %union.tree_node** %typex, align 8
  %131 = load %union.tree_node*, %union.tree_node** %typex, align 8
  %132 = load %union.tree_node*, %union.tree_node** %arg0231, align 8
  %call323 = call %union.tree_node* @convert(%union.tree_node* %131, %union.tree_node* %132)
  %133 = load %union.tree_node*, %union.tree_node** %typex, align 8
  %134 = load %union.tree_node*, %union.tree_node** %arg1236, align 8
  %call324 = call %union.tree_node* @convert(%union.tree_node* %133, %union.tree_node* %134)
  %call325 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 %129, %union.tree_node* %130, %union.tree_node* %call323, %union.tree_node* %call324, i32 0)
  %call326 = call %union.tree_node* @fold(%union.tree_node* %call325)
  %call327 = call %union.tree_node* @convert(%union.tree_node* %128, %union.tree_node* %call326)
  store %union.tree_node* %call327, %union.tree_node** %retval
  br label %return

if.end.328:                                       ; preds = %if.end.283
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.328, %lor.lhs.false.256
  br label %sw.epilog

sw.bb.330:                                        ; preds = %if.end.108, %if.end.108
  %135 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %135, %union.tree_node** %typex331, align 8
  %136 = load %union.tree_node*, %union.tree_node** %typex331, align 8
  %common332 = bitcast %union.tree_node* %136 to %struct.tree_common*
  %code333 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common332, i32 0, i32 2
  %bf.load334 = load i32, i32* %code333, align 8
  %bf.clear335 = and i32 %bf.load334, 255
  %cmp336 = icmp eq i32 %bf.clear335, 10
  br i1 %cmp336, label %if.then.338, label %if.end.349

if.then.338:                                      ; preds = %sw.bb.330
  %137 = load %union.tree_node*, %union.tree_node** %typex331, align 8
  %type339 = bitcast %union.tree_node* %137 to %struct.tree_type*
  %precision340 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type339, i32 0, i32 6
  %bf.load341 = load i32, i32* %precision340, align 4
  %bf.clear342 = and i32 %bf.load341, 511
  %138 = load %union.tree_node*, %union.tree_node** %typex331, align 8
  %common343 = bitcast %union.tree_node* %138 to %struct.tree_common*
  %unsigned_flag344 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common343, i32 0, i32 2
  %bf.load345 = load i32, i32* %unsigned_flag344, align 8
  %bf.lshr346 = lshr i32 %bf.load345, 13
  %bf.clear347 = and i32 %bf.lshr346, 1
  %call348 = call %union.tree_node* @type_for_size(i32 %bf.clear342, i32 %bf.clear347)
  store %union.tree_node* %call348, %union.tree_node** %typex331, align 8
  br label %if.end.349

if.end.349:                                       ; preds = %if.then.338, %sw.bb.330
  %139 = load %union.tree_node*, %union.tree_node** %typex331, align 8
  %type350 = bitcast %union.tree_node* %139 to %struct.tree_type*
  %precision351 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type350, i32 0, i32 6
  %bf.load352 = load i32, i32* %precision351, align 4
  %bf.clear353 = and i32 %bf.load352, 511
  %140 = load i32, i32* %inprec, align 4
  %cmp354 = icmp ne i32 %bf.clear353, %140
  br i1 %cmp354, label %if.then.356, label %if.end.378

if.then.356:                                      ; preds = %if.end.349
  %141 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common357 = bitcast %union.tree_node* %141 to %struct.tree_common*
  %type358 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common357, i32 0, i32 1
  %142 = load %union.tree_node*, %union.tree_node** %type358, align 8
  %common359 = bitcast %union.tree_node* %142 to %struct.tree_common*
  %unsigned_flag360 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common359, i32 0, i32 2
  %bf.load361 = load i32, i32* %unsigned_flag360, align 8
  %bf.lshr362 = lshr i32 %bf.load361, 13
  %bf.clear363 = and i32 %bf.lshr362, 1
  %tobool364 = icmp ne i32 %bf.clear363, 0
  br i1 %tobool364, label %cond.true.365, label %cond.false.367

cond.true.365:                                    ; preds = %if.then.356
  %143 = load %union.tree_node*, %union.tree_node** %typex331, align 8
  %call366 = call %union.tree_node* @unsigned_type(%union.tree_node* %143)
  br label %cond.end.369

cond.false.367:                                   ; preds = %if.then.356
  %144 = load %union.tree_node*, %union.tree_node** %typex331, align 8
  %call368 = call %union.tree_node* @signed_type(%union.tree_node* %144)
  br label %cond.end.369

cond.end.369:                                     ; preds = %cond.false.367, %cond.true.365
  %cond370 = phi %union.tree_node* [ %call366, %cond.true.365 ], [ %call368, %cond.false.367 ]
  store %union.tree_node* %cond370, %union.tree_node** %typex331, align 8
  %145 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %146 = load i32, i32* %ex_form, align 4
  %147 = load %union.tree_node*, %union.tree_node** %typex331, align 8
  %148 = load %union.tree_node*, %union.tree_node** %typex331, align 8
  %149 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp371 = bitcast %union.tree_node* %149 to %struct.tree_exp*
  %operands372 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp371, i32 0, i32 2
  %arrayidx373 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands372, i32 0, i64 0
  %150 = load %union.tree_node*, %union.tree_node** %arrayidx373, align 8
  %call374 = call %union.tree_node* @convert(%union.tree_node* %148, %union.tree_node* %150)
  %call375 = call %union.tree_node* @build1(i32 %146, %union.tree_node* %147, %union.tree_node* %call374)
  %call376 = call %union.tree_node* @fold(%union.tree_node* %call375)
  %call377 = call %union.tree_node* @convert(%union.tree_node* %145, %union.tree_node* %call376)
  store %union.tree_node* %call377, %union.tree_node** %retval
  br label %return

if.end.378:                                       ; preds = %if.end.349
  br label %sw.bb.379

sw.bb.379:                                        ; preds = %if.end.108, %if.end.378
  %151 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %152 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp380 = bitcast %union.tree_node* %152 to %struct.tree_exp*
  %operands381 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp380, i32 0, i32 2
  %arrayidx382 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands381, i32 0, i64 0
  %153 = load %union.tree_node*, %union.tree_node** %arrayidx382, align 8
  %154 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call383 = call %union.tree_node* @get_unwidened(%union.tree_node* %153, %union.tree_node* %154)
  %call384 = call %union.tree_node* @convert(%union.tree_node* %151, %union.tree_node* %call383)
  store %union.tree_node* %call384, %union.tree_node** %retval
  br label %return

sw.bb.385:                                        ; preds = %if.end.108
  %155 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %156 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp386 = bitcast %union.tree_node* %156 to %struct.tree_exp*
  %operands387 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp386, i32 0, i32 2
  %arrayidx388 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands387, i32 0, i64 0
  %157 = load %union.tree_node*, %union.tree_node** %arrayidx388, align 8
  %158 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %159 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp389 = bitcast %union.tree_node* %159 to %struct.tree_exp*
  %operands390 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp389, i32 0, i32 2
  %arrayidx391 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands390, i32 0, i64 1
  %160 = load %union.tree_node*, %union.tree_node** %arrayidx391, align 8
  %call392 = call %union.tree_node* @convert(%union.tree_node* %158, %union.tree_node* %160)
  %161 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %162 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp393 = bitcast %union.tree_node* %162 to %struct.tree_exp*
  %operands394 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp393, i32 0, i32 2
  %arrayidx395 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands394, i32 0, i64 2
  %163 = load %union.tree_node*, %union.tree_node** %arrayidx395, align 8
  %call396 = call %union.tree_node* @convert(%union.tree_node* %161, %union.tree_node* %163)
  %call397 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 51, %union.tree_node* %155, %union.tree_node* %157, %union.tree_node* %call392, %union.tree_node* %call396)
  %call398 = call %union.tree_node* @fold(%union.tree_node* %call397)
  store %union.tree_node* %call398, %union.tree_node** %retval
  br label %return

sw.default:                                       ; preds = %if.end.108
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.329, %if.end.229, %if.end.184, %if.end.131
  %164 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %165 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call399 = call %union.tree_node* @build1(i32 115, %union.tree_node* %164, %union.tree_node* %165)
  store %union.tree_node* %call399, %union.tree_node** %retval
  br label %return

sw.bb.400:                                        ; preds = %if.end
  %166 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %167 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call401 = call %union.tree_node* @build1(i32 72, %union.tree_node* %166, %union.tree_node* %167)
  store %union.tree_node* %call401, %union.tree_node** %retval
  br label %return

sw.bb.402:                                        ; preds = %if.end
  %168 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %169 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common403 = bitcast %union.tree_node* %169 to %struct.tree_common*
  %type404 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common403, i32 0, i32 1
  %170 = load %union.tree_node*, %union.tree_node** %type404, align 8
  %common405 = bitcast %union.tree_node* %170 to %struct.tree_common*
  %type406 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common405, i32 0, i32 1
  %171 = load %union.tree_node*, %union.tree_node** %type406, align 8
  %172 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call407 = call %union.tree_node* @build1(i32 127, %union.tree_node* %171, %union.tree_node* %172)
  %call408 = call %union.tree_node* @fold(%union.tree_node* %call407)
  %call409 = call %union.tree_node* @convert(%union.tree_node* %168, %union.tree_node* %call408)
  store %union.tree_node* %call409, %union.tree_node** %retval
  br label %return

sw.bb.410:                                        ; preds = %if.end
  %173 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type411 = bitcast %union.tree_node* %173 to %struct.tree_type*
  %mode412 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type411, i32 0, i32 6
  %bf.load413 = load i32, i32* %mode412, align 4
  %bf.lshr414 = lshr i32 %bf.load413, 9
  %bf.clear415 = and i32 %bf.lshr414, 127
  %idxprom416 = sext i32 %bf.clear415 to i64
  %arrayidx417 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom416
  %174 = load i8, i8* %arrayidx417, align 1
  %conv418 = zext i8 %174 to i32
  %175 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common419 = bitcast %union.tree_node* %175 to %struct.tree_common*
  %type420 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common419, i32 0, i32 1
  %176 = load %union.tree_node*, %union.tree_node** %type420, align 8
  %type421 = bitcast %union.tree_node* %176 to %struct.tree_type*
  %mode422 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type421, i32 0, i32 6
  %bf.load423 = load i32, i32* %mode422, align 4
  %bf.lshr424 = lshr i32 %bf.load423, 9
  %bf.clear425 = and i32 %bf.lshr424, 127
  %idxprom426 = sext i32 %bf.clear425 to i64
  %arrayidx427 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom426
  %177 = load i8, i8* %arrayidx427, align 1
  %conv428 = zext i8 %177 to i32
  %cmp429 = icmp ne i32 %conv418, %conv428
  br i1 %cmp429, label %if.then.431, label %if.end.432

if.then.431:                                      ; preds = %sw.bb.410
  call void (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0))
  %178 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  store %union.tree_node* %178, %union.tree_node** %retval
  br label %return

if.end.432:                                       ; preds = %sw.bb.410
  %179 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %180 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call433 = call %union.tree_node* @build1(i32 115, %union.tree_node* %179, %union.tree_node* %180)
  store %union.tree_node* %call433, %union.tree_node** %retval
  br label %return

sw.default.434:                                   ; preds = %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0))
  %181 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %182 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %call435 = call %union.tree_node* @convert(%union.tree_node* %181, %union.tree_node* %182)
  store %union.tree_node* %call435, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.default.434, %if.end.432, %if.then.431, %sw.bb.402, %sw.bb.400, %sw.epilog, %sw.bb.385, %sw.bb.379, %cond.end.369, %cond.end, %if.else.183, %if.then.181, %if.then.91, %if.then.73, %if.then.60, %if.then.42, %if.then.25, %if.end.20, %if.then
  %183 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %183
}

declare %union.tree_node* @type_for_mode(i32, i32) #1

declare i32 @tree_int_cst_lt(%union.tree_node*, %union.tree_node*) #1

declare i32 @tree_int_cst_sgn(%union.tree_node*) #1

declare %union.tree_node* @build(i32, %union.tree_node*, ...) #1

declare %union.tree_node* @get_unwidened(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @unsigned_type(%union.tree_node*) #1

declare %union.tree_node* @signed_type(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @convert_to_complex(%union.tree_node* %type, %union.tree_node* %expr) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %expr.addr = alloca %union.tree_node*, align 8
  %subtype = alloca %union.tree_node*, align 8
  %elt_type = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type1, align 8
  store %union.tree_node* %1, %union.tree_node** %subtype, align 8
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common2 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type3, align 8
  %common4 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 7, label %sw.bb
    i32 6, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 8, label %sw.bb.7
    i32 13, label %sw.bb.46
    i32 15, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  %4 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %5 = load %union.tree_node*, %union.tree_node** %subtype, align 8
  %6 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call = call %union.tree_node* @convert(%union.tree_node* %5, %union.tree_node* %6)
  %7 = load %union.tree_node*, %union.tree_node** %subtype, align 8
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %call5 = call %union.tree_node* @convert(%union.tree_node* %7, %union.tree_node* %8)
  %call6 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 125, %union.tree_node* %4, %union.tree_node* %call, %union.tree_node* %call5)
  store %union.tree_node* %call6, %union.tree_node** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %9 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common8 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type9, align 8
  %common10 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %type11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 1
  %11 = load %union.tree_node*, %union.tree_node** %type11, align 8
  store %union.tree_node* %11, %union.tree_node** %elt_type, align 8
  %12 = load %union.tree_node*, %union.tree_node** %elt_type, align 8
  %type12 = bitcast %union.tree_node* %12 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type12, i32 0, i32 15
  %13 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %14 = load %union.tree_node*, %union.tree_node** %subtype, align 8
  %type13 = bitcast %union.tree_node* %14 to %struct.tree_type*
  %main_variant14 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type13, i32 0, i32 15
  %15 = load %union.tree_node*, %union.tree_node** %main_variant14, align 8
  %cmp = icmp eq %union.tree_node* %13, %15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.7
  %16 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  store %union.tree_node* %16, %union.tree_node** %retval
  br label %return

if.else:                                          ; preds = %sw.bb.7
  %17 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common15 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 2
  %bf.load17 = load i32, i32* %code16, align 8
  %bf.clear18 = and i32 %bf.load17, 255
  %cmp19 = icmp eq i32 %bf.clear18, 125
  br i1 %cmp19, label %if.then.20, label %if.else.28

if.then.20:                                       ; preds = %if.else
  %18 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %19 = load %union.tree_node*, %union.tree_node** %subtype, align 8
  %20 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp = bitcast %union.tree_node* %20 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %21 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %call21 = call %union.tree_node* @convert(%union.tree_node* %19, %union.tree_node* %21)
  %22 = load %union.tree_node*, %union.tree_node** %subtype, align 8
  %23 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp22 = bitcast %union.tree_node* %23 to %struct.tree_exp*
  %operands23 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp22, i32 0, i32 2
  %arrayidx24 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands23, i32 0, i64 1
  %24 = load %union.tree_node*, %union.tree_node** %arrayidx24, align 8
  %call25 = call %union.tree_node* @convert(%union.tree_node* %22, %union.tree_node* %24)
  %call26 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 125, %union.tree_node* %18, %union.tree_node* %call21, %union.tree_node* %call25)
  %call27 = call %union.tree_node* @fold(%union.tree_node* %call26)
  store %union.tree_node* %call27, %union.tree_node** %retval
  br label %return

if.else.28:                                       ; preds = %if.else
  %25 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call29 = call %union.tree_node* @save_expr(%union.tree_node* %25)
  store %union.tree_node* %call29, %union.tree_node** %expr.addr, align 8
  %26 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %27 = load %union.tree_node*, %union.tree_node** %subtype, align 8
  %28 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common30 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %type31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 1
  %29 = load %union.tree_node*, %union.tree_node** %type31, align 8
  %common32 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %type33 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common32, i32 0, i32 1
  %30 = load %union.tree_node*, %union.tree_node** %type33, align 8
  %31 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call34 = call %union.tree_node* @build1(i32 127, %union.tree_node* %30, %union.tree_node* %31)
  %call35 = call %union.tree_node* @fold(%union.tree_node* %call34)
  %call36 = call %union.tree_node* @convert(%union.tree_node* %27, %union.tree_node* %call35)
  %32 = load %union.tree_node*, %union.tree_node** %subtype, align 8
  %33 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common37 = bitcast %union.tree_node* %33 to %struct.tree_common*
  %type38 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common37, i32 0, i32 1
  %34 = load %union.tree_node*, %union.tree_node** %type38, align 8
  %common39 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %type40 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common39, i32 0, i32 1
  %35 = load %union.tree_node*, %union.tree_node** %type40, align 8
  %36 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call41 = call %union.tree_node* @build1(i32 128, %union.tree_node* %35, %union.tree_node* %36)
  %call42 = call %union.tree_node* @fold(%union.tree_node* %call41)
  %call43 = call %union.tree_node* @convert(%union.tree_node* %32, %union.tree_node* %call42)
  %call44 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 125, %union.tree_node* %26, %union.tree_node* %call36, %union.tree_node* %call43)
  %call45 = call %union.tree_node* @fold(%union.tree_node* %call44)
  store %union.tree_node* %call45, %union.tree_node** %retval
  br label %return

sw.bb.46:                                         ; preds = %entry, %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0))
  %37 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %38 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %call47 = call %union.tree_node* @convert_to_complex(%union.tree_node* %37, %union.tree_node* %38)
  store %union.tree_node* %call47, %union.tree_node** %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0))
  %39 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %40 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %call48 = call %union.tree_node* @convert_to_complex(%union.tree_node* %39, %union.tree_node* %40)
  store %union.tree_node* %call48, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.46, %if.else.28, %if.then.20, %if.then, %sw.bb
  %41 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %41
}

declare %union.tree_node* @save_expr(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @convert_to_vector(%union.tree_node* %type, %union.tree_node* %expr) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %expr.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type1, align 8
  %common2 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 6, label %sw.bb
    i32 9, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type3 = bitcast %union.tree_node* %2 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i32 0, i32 6
  %bf.load4 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load4, 9
  %bf.clear5 = and i32 %bf.lshr, 127
  %idxprom = sext i32 %bf.clear5 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common6 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %type7, align 8
  %type8 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %mode9 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type8, i32 0, i32 6
  %bf.load10 = load i32, i32* %mode9, align 4
  %bf.lshr11 = lshr i32 %bf.load10, 9
  %bf.clear12 = and i32 %bf.lshr11, 127
  %idxprom13 = sext i32 %bf.clear12 to i64
  %arrayidx14 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom13
  %6 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %6 to i32
  %cmp = icmp ne i32 %conv, %conv15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0))
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  store %union.tree_node* %7, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %8 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %9 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call = call %union.tree_node* @build1(i32 115, %union.tree_node* %8, %union.tree_node* %9)
  store %union.tree_node* %call, %union.tree_node** %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0))
  %10 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %call17 = call %union.tree_node* @convert_to_vector(%union.tree_node* %10, %union.tree_node* %11)
  store %union.tree_node* %call17, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end, %if.then
  %12 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %12
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
