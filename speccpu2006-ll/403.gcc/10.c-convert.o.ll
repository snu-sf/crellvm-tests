; ModuleID = 'c-convert.c'
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

@global_trees = external global [51 x %union.tree_node*], align 16
@.str = private unnamed_addr constant [41 x i8] c"void value not ignored as it ought to be\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"conversion to non-scalar type requested\00", align 1

; Function Attrs: nounwind uwtable
define %union.tree_node* @convert(%union.tree_node* %type, %union.tree_node* %expr) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %expr.addr = alloca %union.tree_node*, align 8
  %e = alloca %union.tree_node*, align 8
  %code = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %e, align 8
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common2 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %type3, align 8
  %cmp = icmp eq %union.tree_node* %2, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common4 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp8 = icmp eq i32 %bf.clear7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %code, align 4
  %cmp10 = icmp eq i32 %6, 0
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %7 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common12 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %type13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %type13, align 8
  %common14 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 2
  %bf.load16 = load i32, i32* %code15, align 8
  %bf.clear17 = and i32 %bf.load16, 255
  %cmp18 = icmp eq i32 %bf.clear17, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.9, %lor.lhs.false, %entry
  %9 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  store %union.tree_node* %9, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.11
  %10 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type19 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type19, i32 0, i32 15
  %11 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %12 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common20 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 1
  %13 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %type22 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %main_variant23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 15
  %14 = load %union.tree_node*, %union.tree_node** %main_variant23, align 8
  %cmp24 = icmp eq %union.tree_node* %11, %14
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end
  %15 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %16 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call = call %union.tree_node* @build1(i32 115, %union.tree_node* %15, %union.tree_node* %16)
  %call26 = call %union.tree_node* @fold(%union.tree_node* %call)
  store %union.tree_node* %call26, %union.tree_node** %retval
  br label %return

if.end.27:                                        ; preds = %if.end
  %17 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common28 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %type29 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 1
  %18 = load %union.tree_node*, %union.tree_node** %type29, align 8
  %common30 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %code31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 2
  %bf.load32 = load i32, i32* %code31, align 8
  %bf.clear33 = and i32 %bf.load32, 255
  %cmp34 = icmp eq i32 %bf.clear33, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.27
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  store %union.tree_node* %19, %union.tree_node** %retval
  br label %return

if.end.36:                                        ; preds = %if.end.27
  %20 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common37 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %type38 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common37, i32 0, i32 1
  %21 = load %union.tree_node*, %union.tree_node** %type38, align 8
  %common39 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %code40 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common39, i32 0, i32 2
  %bf.load41 = load i32, i32* %code40, align 8
  %bf.clear42 = and i32 %bf.load41, 255
  %cmp43 = icmp eq i32 %bf.clear42, 5
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.36
  call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0))
  %22 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  store %union.tree_node* %22, %union.tree_node** %retval
  br label %return

if.end.45:                                        ; preds = %if.end.36
  %23 = load i32, i32* %code, align 4
  %cmp46 = icmp eq i32 %23, 5
  br i1 %cmp46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.45
  %24 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %25 = load %union.tree_node*, %union.tree_node** %e, align 8
  %call48 = call %union.tree_node* @build1(i32 114, %union.tree_node* %24, %union.tree_node* %25)
  store %union.tree_node* %call48, %union.tree_node** %retval
  br label %return

if.end.49:                                        ; preds = %if.end.45
  %26 = load i32, i32* %code, align 4
  %cmp50 = icmp eq i32 %26, 6
  br i1 %cmp50, label %if.then.53, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.end.49
  %27 = load i32, i32* %code, align 4
  %cmp52 = icmp eq i32 %27, 10
  br i1 %cmp52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %lor.lhs.false.51, %if.end.49
  %28 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %29 = load %union.tree_node*, %union.tree_node** %e, align 8
  %call54 = call %union.tree_node* @convert_to_integer(%union.tree_node* %28, %union.tree_node* %29)
  %call55 = call %union.tree_node* @fold(%union.tree_node* %call54)
  store %union.tree_node* %call55, %union.tree_node** %retval
  br label %return

if.end.56:                                        ; preds = %lor.lhs.false.51
  %30 = load i32, i32* %code, align 4
  %cmp57 = icmp eq i32 %30, 11
  br i1 %cmp57, label %if.then.58, label %if.end.70

if.then.58:                                       ; preds = %if.end.56
  %31 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call59 = call %union.tree_node* @truthvalue_conversion(%union.tree_node* %31)
  store %union.tree_node* %call59, %union.tree_node** %t, align 8
  %32 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common60 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %code61 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common60, i32 0, i32 2
  %bf.load62 = load i32, i32* %code61, align 8
  %bf.clear63 = and i32 %bf.load62, 255
  %cmp64 = icmp eq i32 %bf.clear63, 115
  br i1 %cmp64, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %if.then.58
  %33 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %34 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp = bitcast %union.tree_node* %34 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %35 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %call66 = call %union.tree_node* @build1(i32 115, %union.tree_node* %33, %union.tree_node* %35)
  %call67 = call %union.tree_node* @fold(%union.tree_node* %call66)
  store %union.tree_node* %call67, %union.tree_node** %retval
  br label %return

if.else:                                          ; preds = %if.then.58
  %36 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %37 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call68 = call %union.tree_node* @build1(i32 115, %union.tree_node* %36, %union.tree_node* %37)
  %call69 = call %union.tree_node* @fold(%union.tree_node* %call68)
  store %union.tree_node* %call69, %union.tree_node** %retval
  br label %return

if.end.70:                                        ; preds = %if.end.56
  %38 = load i32, i32* %code, align 4
  %cmp71 = icmp eq i32 %38, 13
  br i1 %cmp71, label %if.then.74, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %if.end.70
  %39 = load i32, i32* %code, align 4
  %cmp73 = icmp eq i32 %39, 15
  br i1 %cmp73, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %lor.lhs.false.72, %if.end.70
  %40 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %41 = load %union.tree_node*, %union.tree_node** %e, align 8
  %call75 = call %union.tree_node* @convert_to_pointer(%union.tree_node* %40, %union.tree_node* %41)
  %call76 = call %union.tree_node* @fold(%union.tree_node* %call75)
  store %union.tree_node* %call76, %union.tree_node** %retval
  br label %return

if.end.77:                                        ; preds = %lor.lhs.false.72
  %42 = load i32, i32* %code, align 4
  %cmp78 = icmp eq i32 %42, 7
  br i1 %cmp78, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %if.end.77
  %43 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %44 = load %union.tree_node*, %union.tree_node** %e, align 8
  %call80 = call %union.tree_node* @convert_to_real(%union.tree_node* %43, %union.tree_node* %44)
  %call81 = call %union.tree_node* @fold(%union.tree_node* %call80)
  store %union.tree_node* %call81, %union.tree_node** %retval
  br label %return

if.end.82:                                        ; preds = %if.end.77
  %45 = load i32, i32* %code, align 4
  %cmp83 = icmp eq i32 %45, 8
  br i1 %cmp83, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.end.82
  %46 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %47 = load %union.tree_node*, %union.tree_node** %e, align 8
  %call85 = call %union.tree_node* @convert_to_complex(%union.tree_node* %46, %union.tree_node* %47)
  %call86 = call %union.tree_node* @fold(%union.tree_node* %call85)
  store %union.tree_node* %call86, %union.tree_node** %retval
  br label %return

if.end.87:                                        ; preds = %if.end.82
  %48 = load i32, i32* %code, align 4
  %cmp88 = icmp eq i32 %48, 9
  br i1 %cmp88, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %if.end.87
  %49 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %50 = load %union.tree_node*, %union.tree_node** %e, align 8
  %call90 = call %union.tree_node* @convert_to_vector(%union.tree_node* %49, %union.tree_node* %50)
  %call91 = call %union.tree_node* @fold(%union.tree_node* %call90)
  store %union.tree_node* %call91, %union.tree_node** %retval
  br label %return

if.end.92:                                        ; preds = %if.end.87
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0))
  %51 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  store %union.tree_node* %51, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.92, %if.then.89, %if.then.84, %if.then.79, %if.then.74, %if.else, %if.then.65, %if.then.53, %if.then.47, %if.then.44, %if.then.35, %if.then.25, %if.then
  %52 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %52
}

declare %union.tree_node* @fold(%union.tree_node*) #1

declare %union.tree_node* @build1(i32, %union.tree_node*, %union.tree_node*) #1

declare void @error(i8*, ...) #1

declare %union.tree_node* @convert_to_integer(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @truthvalue_conversion(%union.tree_node*) #1

declare %union.tree_node* @convert_to_pointer(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @convert_to_real(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @convert_to_complex(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @convert_to_vector(%union.tree_node*, %union.tree_node*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
