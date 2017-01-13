; ModuleID = './app/plug-in/plug-in-params.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GPParam = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParasite = type { i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Plug-In\00", align 1
@__func__.plug_in_params_to_args = private unnamed_addr constant [23 x i8] c"plug_in_params_to_args\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"(pspecs != NULL && n_pspecs > 0) || (pspecs == NULL && n_pspecs == 0)\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"(params != NULL && n_params > 0) || (params == NULL && n_params == 0)\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: unhandled GIMP_PDB_INT32 type: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"plug-in-params.c\00", align 1
@__func__.plug_in_args_to_params = private unnamed_addr constant [23 x i8] c"plug_in_args_to_params\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"args != NULL\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GValueArray* @plug_in_params_to_args(%struct._GParamSpec** %pspecs, i32 %n_pspecs, %struct._GPParam* %params, i32 %n_params, i32 %return_values, i32 %full_copy) #0 {
entry:
  %retval = alloca %struct._GValueArray*, align 8
  %pspecs.addr = alloca %struct._GParamSpec**, align 8
  %n_pspecs.addr = alloca i32, align 4
  %params.addr = alloca %struct._GPParam*, align 8
  %n_params.addr = alloca i32, align 4
  %return_values.addr = alloca i32, align 4
  %full_copy.addr = alloca i32, align 4
  %args = alloca %struct._GValueArray*, align 8
  %i = alloca i32, align 4
  %value = alloca %struct._GValue, align 8
  %type = alloca i64, align 8
  %count = alloca i32, align 4
  %pspec_index = alloca i32, align 4
  %pspec_arg_type = alloca i32, align 4
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__val61 = alloca %struct._GValue*, align 8
  %__t63 = alloca i64, align 8
  %__r65 = alloca i32, align 4
  %tmp76 = alloca i32, align 4
  %__val85 = alloca %struct._GValue*, align 8
  %__t87 = alloca i64, align 8
  %__r89 = alloca i32, align 4
  %tmp100 = alloca i32, align 4
  %__val109 = alloca %struct._GValue*, align 8
  %__t111 = alloca i64, align 8
  %__r113 = alloca i32, align 4
  %tmp124 = alloca i32, align 4
  store %struct._GParamSpec** %pspecs, %struct._GParamSpec*** %pspecs.addr, align 8
  store i32 %n_pspecs, i32* %n_pspecs.addr, align 4
  store %struct._GPParam* %params, %struct._GPParam** %params.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  store i32 %return_values, i32* %return_values.addr, align 4
  store i32 %full_copy, i32* %full_copy.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  %cmp = icmp ne %struct._GParamSpec** %0, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %n_pspecs.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.body
  %2 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  %cmp2 = icmp eq %struct._GParamSpec** %2, null
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %n_pspecs.addr, align 4
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.3, %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.plug_in_params_to_args, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %4 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %cmp6 = icmp ne %struct._GPParam* %4, null
  br i1 %cmp6, label %land.lhs.true.7, label %lor.lhs.false.9

land.lhs.true.7:                                  ; preds = %do.body.5
  %5 = load i32, i32* %n_params.addr, align 4
  %cmp8 = icmp sgt i32 %5, 0
  br i1 %cmp8, label %if.then.13, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true.7, %do.body.5
  %6 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %cmp10 = icmp eq %struct._GPParam* %6, null
  br i1 %cmp10, label %land.lhs.true.11, label %if.else.14

land.lhs.true.11:                                 ; preds = %lor.lhs.false.9
  %7 = load i32, i32* %n_params.addr, align 4
  %cmp12 = icmp eq i32 %7, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true.11, %land.lhs.true.7
  br label %if.end.15

if.else.14:                                       ; preds = %land.lhs.true.11, %lor.lhs.false.9
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.plug_in_params_to_args, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %8 = load i32, i32* %n_params.addr, align 4
  %call = call %struct._GValueArray* @g_value_array_new(i32 %8)
  store %struct._GValueArray* %call, %struct._GValueArray** %args, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n_params.addr, align 4
  %cmp17 = icmp slt i32 %9, %10
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 24, i32 8, i1 false)
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GPParam, %struct._GPParam* %13, i64 %idxprom
  %type18 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx, i32 0, i32 0
  %14 = load i32, i32* %type18, align 4
  %call19 = call i64 @gimp_pdb_compat_arg_type_to_gtype(i32 %14)
  store i64 %call19, i64* %type, align 8
  %15 = load i32, i32* %i, align 4
  %cmp20 = icmp sgt i32 %15, 0
  br i1 %cmp20, label %if.then.22, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %for.body
  %16 = load i32, i32* %return_values.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end.43, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false.21, %for.body
  %17 = load i32, i32* %i, align 4
  store i32 %17, i32* %pspec_index, align 4
  %18 = load i32, i32* %return_values.addr, align 4
  %tobool23 = icmp ne i32 %18, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.22
  %19 = load i32, i32* %pspec_index, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %pspec_index, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.22
  %20 = load i32, i32* %pspec_index, align 4
  %21 = load i32, i32* %n_pspecs.addr, align 4
  %cmp26 = icmp slt i32 %20, %21
  br i1 %cmp26, label %if.then.27, label %if.end.42

if.then.27:                                       ; preds = %if.end.25
  %22 = load i32, i32* %pspec_index, align 4
  %idxprom28 = sext i32 %22 to i64
  %23 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %23, i64 %idxprom28
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx29, align 8
  %25 = bitcast %struct._GParamSpec* %24 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 76)
  %26 = bitcast %struct._GTypeInstance* %call30 to %struct._GParamSpec*
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %26, i32 0, i32 3
  %27 = load i64, i64* %value_type, align 8
  %call31 = call i32 @gimp_pdb_compat_arg_type_from_gtype(i64 %27)
  store i32 %call31, i32* %pspec_arg_type, align 4
  %28 = load i32, i32* %pspec_arg_type, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %29 to i64
  %30 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %30, i64 %idxprom32
  %type34 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx33, i32 0, i32 0
  %31 = load i32, i32* %type34, align 4
  %cmp35 = icmp eq i32 %28, %31
  br i1 %cmp35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %if.then.27
  %32 = load i32, i32* %pspec_index, align 4
  %idxprom37 = sext i32 %32 to i64
  %33 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %33, i64 %idxprom37
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx38, align 8
  %35 = bitcast %struct._GParamSpec* %34 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 76)
  %36 = bitcast %struct._GTypeInstance* %call39 to %struct._GParamSpec*
  %value_type40 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 3
  %37 = load i64, i64* %value_type40, align 8
  store i64 %37, i64* %type, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %if.then.27
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.25
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %lor.lhs.false.21
  %38 = load i64, i64* %type, align 8
  %call44 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %38)
  %39 = load i64, i64* %type, align 8
  %call45 = call i32 @gimp_pdb_compat_arg_type_from_gtype(i64 %39)
  switch i32 %call45, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.141
    i32 2, label %sw.bb.145
    i32 3, label %sw.bb.150
    i32 4, label %sw.bb.154
    i32 5, label %sw.bb.166
    i32 6, label %sw.bb.183
    i32 7, label %sw.bb.202
    i32 8, label %sw.bb.221
    i32 9, label %sw.bb.240
    i32 10, label %sw.bb.259
    i32 11, label %sw.bb.263
    i32 12, label %sw.bb.267
    i32 13, label %sw.bb.271
    i32 14, label %sw.bb.275
    i32 15, label %sw.bb.279
    i32 16, label %sw.bb.283
    i32 17, label %sw.bb.287
    i32 18, label %sw.bb.291
    i32 19, label %sw.bb.310
    i32 20, label %sw.bb.314
    i32 21, label %sw.bb.326
    i32 22, label %sw.bb.330
  ]

sw.bb:                                            ; preds = %if.end.43
  store %struct._GValue* %value, %struct._GValue** %__val, align 8
  store i64 24, i64* %__t, align 8
  %40 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool46 = icmp ne %struct._GValue* %40, null
  br i1 %tobool46, label %if.else.48, label %if.then.47

if.then.47:                                       ; preds = %sw.bb
  store i32 0, i32* %__r, align 4
  br label %if.end.54

if.else.48:                                       ; preds = %sw.bb
  %41 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %41, i32 0, i32 0
  %42 = load i64, i64* %g_type, align 8
  %43 = load i64, i64* %__t, align 8
  %cmp49 = icmp eq i64 %42, %43
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.48
  store i32 1, i32* %__r, align 4
  br label %if.end.53

if.else.51:                                       ; preds = %if.else.48
  %44 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %45 = load i64, i64* %__t, align 8
  %call52 = call i32 @g_type_check_value_holds(%struct._GValue* %44, i64 %45) #4
  store i32 %call52, i32* %__r, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.then.50
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.47
  %46 = load i32, i32* %__r, align 4
  store i32 %46, i32* %tmp
  %47 = load i32, i32* %tmp
  %tobool55 = icmp ne i32 %47, 0
  br i1 %tobool55, label %if.then.56, label %if.else.59

if.then.56:                                       ; preds = %if.end.54
  %48 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %48 to i64
  %49 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %49, i64 %idxprom57
  %data = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx58, i32 0, i32 1
  %d_int32 = bitcast %union.anon.0* %data to i32*
  %50 = load i32, i32* %d_int32, align 4
  call void @g_value_set_int(%struct._GValue* %value, i32 %50)
  br label %if.end.140

if.else.59:                                       ; preds = %if.end.54
  store %struct._GValue* %value, %struct._GValue** %__val61, align 8
  store i64 28, i64* %__t63, align 8
  %51 = load %struct._GValue*, %struct._GValue** %__val61, align 8
  %tobool66 = icmp ne %struct._GValue* %51, null
  br i1 %tobool66, label %if.else.68, label %if.then.67

if.then.67:                                       ; preds = %if.else.59
  store i32 0, i32* %__r65, align 4
  br label %if.end.75

if.else.68:                                       ; preds = %if.else.59
  %52 = load %struct._GValue*, %struct._GValue** %__val61, align 8
  %g_type69 = getelementptr inbounds %struct._GValue, %struct._GValue* %52, i32 0, i32 0
  %53 = load i64, i64* %g_type69, align 8
  %54 = load i64, i64* %__t63, align 8
  %cmp70 = icmp eq i64 %53, %54
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.else.68
  store i32 1, i32* %__r65, align 4
  br label %if.end.74

if.else.72:                                       ; preds = %if.else.68
  %55 = load %struct._GValue*, %struct._GValue** %__val61, align 8
  %56 = load i64, i64* %__t63, align 8
  %call73 = call i32 @g_type_check_value_holds(%struct._GValue* %55, i64 %56) #4
  store i32 %call73, i32* %__r65, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.71
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.67
  %57 = load i32, i32* %__r65, align 4
  store i32 %57, i32* %tmp76
  %58 = load i32, i32* %tmp76
  %tobool77 = icmp ne i32 %58, 0
  br i1 %tobool77, label %if.then.78, label %if.else.83

if.then.78:                                       ; preds = %if.end.75
  %59 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %59 to i64
  %60 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %60, i64 %idxprom79
  %data81 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx80, i32 0, i32 1
  %d_int3282 = bitcast %union.anon.0* %data81 to i32*
  %61 = load i32, i32* %d_int3282, align 4
  call void @g_value_set_uint(%struct._GValue* %value, i32 %61)
  br label %if.end.139

if.else.83:                                       ; preds = %if.end.75
  store %struct._GValue* %value, %struct._GValue** %__val85, align 8
  store i64 48, i64* %__t87, align 8
  %62 = load %struct._GValue*, %struct._GValue** %__val85, align 8
  %tobool90 = icmp ne %struct._GValue* %62, null
  br i1 %tobool90, label %if.else.92, label %if.then.91

if.then.91:                                       ; preds = %if.else.83
  store i32 0, i32* %__r89, align 4
  br label %if.end.99

if.else.92:                                       ; preds = %if.else.83
  %63 = load %struct._GValue*, %struct._GValue** %__val85, align 8
  %g_type93 = getelementptr inbounds %struct._GValue, %struct._GValue* %63, i32 0, i32 0
  %64 = load i64, i64* %g_type93, align 8
  %65 = load i64, i64* %__t87, align 8
  %cmp94 = icmp eq i64 %64, %65
  br i1 %cmp94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %if.else.92
  store i32 1, i32* %__r89, align 4
  br label %if.end.98

if.else.96:                                       ; preds = %if.else.92
  %66 = load %struct._GValue*, %struct._GValue** %__val85, align 8
  %67 = load i64, i64* %__t87, align 8
  %call97 = call i32 @g_type_check_value_holds(%struct._GValue* %66, i64 %67) #4
  store i32 %call97, i32* %__r89, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.96, %if.then.95
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.91
  %68 = load i32, i32* %__r89, align 4
  store i32 %68, i32* %tmp100
  %69 = load i32, i32* %tmp100
  %tobool101 = icmp ne i32 %69, 0
  br i1 %tobool101, label %if.then.102, label %if.else.107

if.then.102:                                      ; preds = %if.end.99
  %70 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %70 to i64
  %71 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx104 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %71, i64 %idxprom103
  %data105 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx104, i32 0, i32 1
  %d_int32106 = bitcast %union.anon.0* %data105 to i32*
  %72 = load i32, i32* %d_int32106, align 4
  call void @g_value_set_enum(%struct._GValue* %value, i32 %72)
  br label %if.end.138

if.else.107:                                      ; preds = %if.end.99
  store %struct._GValue* %value, %struct._GValue** %__val109, align 8
  store i64 20, i64* %__t111, align 8
  %73 = load %struct._GValue*, %struct._GValue** %__val109, align 8
  %tobool114 = icmp ne %struct._GValue* %73, null
  br i1 %tobool114, label %if.else.116, label %if.then.115

if.then.115:                                      ; preds = %if.else.107
  store i32 0, i32* %__r113, align 4
  br label %if.end.123

if.else.116:                                      ; preds = %if.else.107
  %74 = load %struct._GValue*, %struct._GValue** %__val109, align 8
  %g_type117 = getelementptr inbounds %struct._GValue, %struct._GValue* %74, i32 0, i32 0
  %75 = load i64, i64* %g_type117, align 8
  %76 = load i64, i64* %__t111, align 8
  %cmp118 = icmp eq i64 %75, %76
  br i1 %cmp118, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.else.116
  store i32 1, i32* %__r113, align 4
  br label %if.end.122

if.else.120:                                      ; preds = %if.else.116
  %77 = load %struct._GValue*, %struct._GValue** %__val109, align 8
  %78 = load i64, i64* %__t111, align 8
  %call121 = call i32 @g_type_check_value_holds(%struct._GValue* %77, i64 %78) #4
  store i32 %call121, i32* %__r113, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.120, %if.then.119
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.115
  %79 = load i32, i32* %__r113, align 4
  store i32 %79, i32* %tmp124
  %80 = load i32, i32* %tmp124
  %tobool125 = icmp ne i32 %80, 0
  br i1 %tobool125, label %if.then.126, label %if.else.132

if.then.126:                                      ; preds = %if.end.123
  %81 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %81 to i64
  %82 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx128 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %82, i64 %idxprom127
  %data129 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx128, i32 0, i32 1
  %d_int32130 = bitcast %union.anon.0* %data129 to i32*
  %83 = load i32, i32* %d_int32130, align 4
  %tobool131 = icmp ne i32 %83, 0
  %cond = select i1 %tobool131, i32 1, i32 0
  call void @g_value_set_boolean(%struct._GValue* %value, i32 %cond)
  br label %if.end.137

if.else.132:                                      ; preds = %if.end.123
  %g_type133 = getelementptr inbounds %struct._GValue, %struct._GValue* %value, i32 0, i32 0
  %84 = load i64, i64* %g_type133, align 8
  %call134 = call i8* @g_type_name(i64 %84)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.plug_in_params_to_args, i32 0, i32 0), i8* %call134)
  br label %do.body.135

do.body.135:                                      ; preds = %if.else.132
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.plug_in_params_to_args, i32 0, i32 0))
  %85 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  store %struct._GValueArray* %85, %struct._GValueArray** %retval
  br label %return

do.end.136:                                       ; No predecessors!
  br label %if.end.137

if.end.137:                                       ; preds = %do.end.136, %if.then.126
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.102
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.78
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.then.56
  br label %sw.epilog

sw.bb.141:                                        ; preds = %if.end.43
  %86 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %86 to i64
  %87 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx143 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %87, i64 %idxprom142
  %data144 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx143, i32 0, i32 1
  %d_int16 = bitcast %union.anon.0* %data144 to i16*
  %88 = load i16, i16* %d_int16, align 2
  %conv = sext i16 %88 to i32
  call void @g_value_set_int(%struct._GValue* %value, i32 %conv)
  br label %sw.epilog

sw.bb.145:                                        ; preds = %if.end.43
  %89 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %89 to i64
  %90 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx147 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %90, i64 %idxprom146
  %data148 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx147, i32 0, i32 1
  %d_int8 = bitcast %union.anon.0* %data148 to i8*
  %91 = load i8, i8* %d_int8, align 1
  %conv149 = zext i8 %91 to i32
  call void @g_value_set_uint(%struct._GValue* %value, i32 %conv149)
  br label %sw.epilog

sw.bb.150:                                        ; preds = %if.end.43
  %92 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %92 to i64
  %93 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx152 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %93, i64 %idxprom151
  %data153 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx152, i32 0, i32 1
  %d_float = bitcast %union.anon.0* %data153 to double*
  %94 = load double, double* %d_float, align 8
  call void @g_value_set_double(%struct._GValue* %value, double %94)
  br label %sw.epilog

sw.bb.154:                                        ; preds = %if.end.43
  %95 = load i32, i32* %full_copy.addr, align 4
  %tobool155 = icmp ne i32 %95, 0
  br i1 %tobool155, label %if.then.156, label %if.else.160

if.then.156:                                      ; preds = %sw.bb.154
  %96 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %96 to i64
  %97 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx158 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %97, i64 %idxprom157
  %data159 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx158, i32 0, i32 1
  %d_string = bitcast %union.anon.0* %data159 to i8**
  %98 = load i8*, i8** %d_string, align 8
  call void @g_value_set_string(%struct._GValue* %value, i8* %98)
  br label %if.end.165

if.else.160:                                      ; preds = %sw.bb.154
  %99 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %99 to i64
  %100 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx162 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %100, i64 %idxprom161
  %data163 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx162, i32 0, i32 1
  %d_string164 = bitcast %union.anon.0* %data163 to i8**
  %101 = load i8*, i8** %d_string164, align 8
  call void @g_value_set_static_string(%struct._GValue* %value, i8* %101)
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.160, %if.then.156
  br label %sw.epilog

sw.bb.166:                                        ; preds = %if.end.43
  %102 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %102, 1
  %idxprom167 = sext i32 %sub to i64
  %103 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %103, i32 0, i32 1
  %104 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx168 = getelementptr inbounds %struct._GValue, %struct._GValue* %104, i64 %idxprom167
  %call169 = call i32 @g_value_get_int(%struct._GValue* %arrayidx168)
  store i32 %call169, i32* %count, align 4
  %105 = load i32, i32* %full_copy.addr, align 4
  %tobool170 = icmp ne i32 %105, 0
  br i1 %tobool170, label %if.then.171, label %if.else.176

if.then.171:                                      ; preds = %sw.bb.166
  %106 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %106 to i64
  %107 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx173 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %107, i64 %idxprom172
  %data174 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx173, i32 0, i32 1
  %d_int32array = bitcast %union.anon.0* %data174 to i32**
  %108 = load i32*, i32** %d_int32array, align 8
  %109 = load i32, i32* %count, align 4
  %conv175 = sext i32 %109 to i64
  call void @gimp_value_set_int32array(%struct._GValue* %value, i32* %108, i64 %conv175)
  br label %if.end.182

if.else.176:                                      ; preds = %sw.bb.166
  %110 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %110 to i64
  %111 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx178 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %111, i64 %idxprom177
  %data179 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx178, i32 0, i32 1
  %d_int32array180 = bitcast %union.anon.0* %data179 to i32**
  %112 = load i32*, i32** %d_int32array180, align 8
  %113 = load i32, i32* %count, align 4
  %conv181 = sext i32 %113 to i64
  call void @gimp_value_set_static_int32array(%struct._GValue* %value, i32* %112, i64 %conv181)
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.176, %if.then.171
  br label %sw.epilog

sw.bb.183:                                        ; preds = %if.end.43
  %114 = load i32, i32* %i, align 4
  %sub184 = sub nsw i32 %114, 1
  %idxprom185 = sext i32 %sub184 to i64
  %115 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values186 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %115, i32 0, i32 1
  %116 = load %struct._GValue*, %struct._GValue** %values186, align 8
  %arrayidx187 = getelementptr inbounds %struct._GValue, %struct._GValue* %116, i64 %idxprom185
  %call188 = call i32 @g_value_get_int(%struct._GValue* %arrayidx187)
  store i32 %call188, i32* %count, align 4
  %117 = load i32, i32* %full_copy.addr, align 4
  %tobool189 = icmp ne i32 %117, 0
  br i1 %tobool189, label %if.then.190, label %if.else.195

if.then.190:                                      ; preds = %sw.bb.183
  %118 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %118 to i64
  %119 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx192 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %119, i64 %idxprom191
  %data193 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx192, i32 0, i32 1
  %d_int16array = bitcast %union.anon.0* %data193 to i16**
  %120 = load i16*, i16** %d_int16array, align 8
  %121 = load i32, i32* %count, align 4
  %conv194 = sext i32 %121 to i64
  call void @gimp_value_set_int16array(%struct._GValue* %value, i16* %120, i64 %conv194)
  br label %if.end.201

if.else.195:                                      ; preds = %sw.bb.183
  %122 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %122 to i64
  %123 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx197 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %123, i64 %idxprom196
  %data198 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx197, i32 0, i32 1
  %d_int16array199 = bitcast %union.anon.0* %data198 to i16**
  %124 = load i16*, i16** %d_int16array199, align 8
  %125 = load i32, i32* %count, align 4
  %conv200 = sext i32 %125 to i64
  call void @gimp_value_set_static_int16array(%struct._GValue* %value, i16* %124, i64 %conv200)
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.195, %if.then.190
  br label %sw.epilog

sw.bb.202:                                        ; preds = %if.end.43
  %126 = load i32, i32* %i, align 4
  %sub203 = sub nsw i32 %126, 1
  %idxprom204 = sext i32 %sub203 to i64
  %127 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values205 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %127, i32 0, i32 1
  %128 = load %struct._GValue*, %struct._GValue** %values205, align 8
  %arrayidx206 = getelementptr inbounds %struct._GValue, %struct._GValue* %128, i64 %idxprom204
  %call207 = call i32 @g_value_get_int(%struct._GValue* %arrayidx206)
  store i32 %call207, i32* %count, align 4
  %129 = load i32, i32* %full_copy.addr, align 4
  %tobool208 = icmp ne i32 %129, 0
  br i1 %tobool208, label %if.then.209, label %if.else.214

if.then.209:                                      ; preds = %sw.bb.202
  %130 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %130 to i64
  %131 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx211 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %131, i64 %idxprom210
  %data212 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx211, i32 0, i32 1
  %d_int8array = bitcast %union.anon.0* %data212 to i8**
  %132 = load i8*, i8** %d_int8array, align 8
  %133 = load i32, i32* %count, align 4
  %conv213 = sext i32 %133 to i64
  call void @gimp_value_set_int8array(%struct._GValue* %value, i8* %132, i64 %conv213)
  br label %if.end.220

if.else.214:                                      ; preds = %sw.bb.202
  %134 = load i32, i32* %i, align 4
  %idxprom215 = sext i32 %134 to i64
  %135 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx216 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %135, i64 %idxprom215
  %data217 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx216, i32 0, i32 1
  %d_int8array218 = bitcast %union.anon.0* %data217 to i8**
  %136 = load i8*, i8** %d_int8array218, align 8
  %137 = load i32, i32* %count, align 4
  %conv219 = sext i32 %137 to i64
  call void @gimp_value_set_static_int8array(%struct._GValue* %value, i8* %136, i64 %conv219)
  br label %if.end.220

if.end.220:                                       ; preds = %if.else.214, %if.then.209
  br label %sw.epilog

sw.bb.221:                                        ; preds = %if.end.43
  %138 = load i32, i32* %i, align 4
  %sub222 = sub nsw i32 %138, 1
  %idxprom223 = sext i32 %sub222 to i64
  %139 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values224 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %139, i32 0, i32 1
  %140 = load %struct._GValue*, %struct._GValue** %values224, align 8
  %arrayidx225 = getelementptr inbounds %struct._GValue, %struct._GValue* %140, i64 %idxprom223
  %call226 = call i32 @g_value_get_int(%struct._GValue* %arrayidx225)
  store i32 %call226, i32* %count, align 4
  %141 = load i32, i32* %full_copy.addr, align 4
  %tobool227 = icmp ne i32 %141, 0
  br i1 %tobool227, label %if.then.228, label %if.else.233

if.then.228:                                      ; preds = %sw.bb.221
  %142 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %142 to i64
  %143 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx230 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %143, i64 %idxprom229
  %data231 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx230, i32 0, i32 1
  %d_floatarray = bitcast %union.anon.0* %data231 to double**
  %144 = load double*, double** %d_floatarray, align 8
  %145 = load i32, i32* %count, align 4
  %conv232 = sext i32 %145 to i64
  call void @gimp_value_set_floatarray(%struct._GValue* %value, double* %144, i64 %conv232)
  br label %if.end.239

if.else.233:                                      ; preds = %sw.bb.221
  %146 = load i32, i32* %i, align 4
  %idxprom234 = sext i32 %146 to i64
  %147 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx235 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %147, i64 %idxprom234
  %data236 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx235, i32 0, i32 1
  %d_floatarray237 = bitcast %union.anon.0* %data236 to double**
  %148 = load double*, double** %d_floatarray237, align 8
  %149 = load i32, i32* %count, align 4
  %conv238 = sext i32 %149 to i64
  call void @gimp_value_set_static_floatarray(%struct._GValue* %value, double* %148, i64 %conv238)
  br label %if.end.239

if.end.239:                                       ; preds = %if.else.233, %if.then.228
  br label %sw.epilog

sw.bb.240:                                        ; preds = %if.end.43
  %150 = load i32, i32* %i, align 4
  %sub241 = sub nsw i32 %150, 1
  %idxprom242 = sext i32 %sub241 to i64
  %151 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values243 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %151, i32 0, i32 1
  %152 = load %struct._GValue*, %struct._GValue** %values243, align 8
  %arrayidx244 = getelementptr inbounds %struct._GValue, %struct._GValue* %152, i64 %idxprom242
  %call245 = call i32 @g_value_get_int(%struct._GValue* %arrayidx244)
  store i32 %call245, i32* %count, align 4
  %153 = load i32, i32* %full_copy.addr, align 4
  %tobool246 = icmp ne i32 %153, 0
  br i1 %tobool246, label %if.then.247, label %if.else.252

if.then.247:                                      ; preds = %sw.bb.240
  %154 = load i32, i32* %i, align 4
  %idxprom248 = sext i32 %154 to i64
  %155 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx249 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %155, i64 %idxprom248
  %data250 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx249, i32 0, i32 1
  %d_stringarray = bitcast %union.anon.0* %data250 to i8***
  %156 = load i8**, i8*** %d_stringarray, align 8
  %157 = load i32, i32* %count, align 4
  %conv251 = sext i32 %157 to i64
  call void @gimp_value_set_stringarray(%struct._GValue* %value, i8** %156, i64 %conv251)
  br label %if.end.258

if.else.252:                                      ; preds = %sw.bb.240
  %158 = load i32, i32* %i, align 4
  %idxprom253 = sext i32 %158 to i64
  %159 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx254 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %159, i64 %idxprom253
  %data255 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx254, i32 0, i32 1
  %d_stringarray256 = bitcast %union.anon.0* %data255 to i8***
  %160 = load i8**, i8*** %d_stringarray256, align 8
  %161 = load i32, i32* %count, align 4
  %conv257 = sext i32 %161 to i64
  call void @gimp_value_set_static_stringarray(%struct._GValue* %value, i8** %160, i64 %conv257)
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.252, %if.then.247
  br label %sw.epilog

sw.bb.259:                                        ; preds = %if.end.43
  %162 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %162 to i64
  %163 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx261 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %163, i64 %idxprom260
  %data262 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx261, i32 0, i32 1
  %d_color = bitcast %union.anon.0* %data262 to %struct._GimpRGB*
  call void @gimp_value_set_rgb(%struct._GValue* %value, %struct._GimpRGB* %d_color)
  br label %sw.epilog

sw.bb.263:                                        ; preds = %if.end.43
  %164 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %164 to i64
  %165 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx265 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %165, i64 %idxprom264
  %data266 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx265, i32 0, i32 1
  %d_item = bitcast %union.anon.0* %data266 to i32*
  %166 = load i32, i32* %d_item, align 4
  call void @g_value_set_int(%struct._GValue* %value, i32 %166)
  br label %sw.epilog

sw.bb.267:                                        ; preds = %if.end.43
  %167 = load i32, i32* %i, align 4
  %idxprom268 = sext i32 %167 to i64
  %168 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx269 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %168, i64 %idxprom268
  %data270 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx269, i32 0, i32 1
  %d_display = bitcast %union.anon.0* %data270 to i32*
  %169 = load i32, i32* %d_display, align 4
  call void @g_value_set_int(%struct._GValue* %value, i32 %169)
  br label %sw.epilog

sw.bb.271:                                        ; preds = %if.end.43
  %170 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %170 to i64
  %171 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx273 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %171, i64 %idxprom272
  %data274 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx273, i32 0, i32 1
  %d_image = bitcast %union.anon.0* %data274 to i32*
  %172 = load i32, i32* %d_image, align 4
  call void @g_value_set_int(%struct._GValue* %value, i32 %172)
  br label %sw.epilog

sw.bb.275:                                        ; preds = %if.end.43
  %173 = load i32, i32* %i, align 4
  %idxprom276 = sext i32 %173 to i64
  %174 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx277 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %174, i64 %idxprom276
  %data278 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx277, i32 0, i32 1
  %d_layer = bitcast %union.anon.0* %data278 to i32*
  %175 = load i32, i32* %d_layer, align 4
  call void @g_value_set_int(%struct._GValue* %value, i32 %175)
  br label %sw.epilog

sw.bb.279:                                        ; preds = %if.end.43
  %176 = load i32, i32* %i, align 4
  %idxprom280 = sext i32 %176 to i64
  %177 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx281 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %177, i64 %idxprom280
  %data282 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx281, i32 0, i32 1
  %d_channel = bitcast %union.anon.0* %data282 to i32*
  %178 = load i32, i32* %d_channel, align 4
  call void @g_value_set_int(%struct._GValue* %value, i32 %178)
  br label %sw.epilog

sw.bb.283:                                        ; preds = %if.end.43
  %179 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %179 to i64
  %180 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx285 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %180, i64 %idxprom284
  %data286 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx285, i32 0, i32 1
  %d_drawable = bitcast %union.anon.0* %data286 to i32*
  %181 = load i32, i32* %d_drawable, align 4
  call void @g_value_set_int(%struct._GValue* %value, i32 %181)
  br label %sw.epilog

sw.bb.287:                                        ; preds = %if.end.43
  %182 = load i32, i32* %i, align 4
  %idxprom288 = sext i32 %182 to i64
  %183 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx289 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %183, i64 %idxprom288
  %data290 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx289, i32 0, i32 1
  %d_selection = bitcast %union.anon.0* %data290 to i32*
  %184 = load i32, i32* %d_selection, align 4
  call void @g_value_set_int(%struct._GValue* %value, i32 %184)
  br label %sw.epilog

sw.bb.291:                                        ; preds = %if.end.43
  %185 = load i32, i32* %i, align 4
  %sub292 = sub nsw i32 %185, 1
  %idxprom293 = sext i32 %sub292 to i64
  %186 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values294 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %186, i32 0, i32 1
  %187 = load %struct._GValue*, %struct._GValue** %values294, align 8
  %arrayidx295 = getelementptr inbounds %struct._GValue, %struct._GValue* %187, i64 %idxprom293
  %call296 = call i32 @g_value_get_int(%struct._GValue* %arrayidx295)
  store i32 %call296, i32* %count, align 4
  %188 = load i32, i32* %full_copy.addr, align 4
  %tobool297 = icmp ne i32 %188, 0
  br i1 %tobool297, label %if.then.298, label %if.else.303

if.then.298:                                      ; preds = %sw.bb.291
  %189 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %189 to i64
  %190 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx300 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %190, i64 %idxprom299
  %data301 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx300, i32 0, i32 1
  %d_colorarray = bitcast %union.anon.0* %data301 to %struct._GimpRGB**
  %191 = load %struct._GimpRGB*, %struct._GimpRGB** %d_colorarray, align 8
  %192 = load i32, i32* %count, align 4
  %conv302 = sext i32 %192 to i64
  call void @gimp_value_set_colorarray(%struct._GValue* %value, %struct._GimpRGB* %191, i64 %conv302)
  br label %if.end.309

if.else.303:                                      ; preds = %sw.bb.291
  %193 = load i32, i32* %i, align 4
  %idxprom304 = sext i32 %193 to i64
  %194 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx305 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %194, i64 %idxprom304
  %data306 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx305, i32 0, i32 1
  %d_colorarray307 = bitcast %union.anon.0* %data306 to %struct._GimpRGB**
  %195 = load %struct._GimpRGB*, %struct._GimpRGB** %d_colorarray307, align 8
  %196 = load i32, i32* %count, align 4
  %conv308 = sext i32 %196 to i64
  call void @gimp_value_set_static_colorarray(%struct._GValue* %value, %struct._GimpRGB* %195, i64 %conv308)
  br label %if.end.309

if.end.309:                                       ; preds = %if.else.303, %if.then.298
  br label %sw.epilog

sw.bb.310:                                        ; preds = %if.end.43
  %197 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %197 to i64
  %198 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx312 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %198, i64 %idxprom311
  %data313 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx312, i32 0, i32 1
  %d_vectors = bitcast %union.anon.0* %data313 to i32*
  %199 = load i32, i32* %d_vectors, align 4
  call void @g_value_set_int(%struct._GValue* %value, i32 %199)
  br label %sw.epilog

sw.bb.314:                                        ; preds = %if.end.43
  %200 = load i32, i32* %full_copy.addr, align 4
  %tobool315 = icmp ne i32 %200, 0
  br i1 %tobool315, label %if.then.316, label %if.else.320

if.then.316:                                      ; preds = %sw.bb.314
  %201 = load i32, i32* %i, align 4
  %idxprom317 = sext i32 %201 to i64
  %202 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx318 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %202, i64 %idxprom317
  %data319 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx318, i32 0, i32 1
  %d_parasite = bitcast %union.anon.0* %data319 to %struct._GimpParasite*
  %203 = bitcast %struct._GimpParasite* %d_parasite to i8*
  call void @g_value_set_boxed(%struct._GValue* %value, i8* %203)
  br label %if.end.325

if.else.320:                                      ; preds = %sw.bb.314
  %204 = load i32, i32* %i, align 4
  %idxprom321 = sext i32 %204 to i64
  %205 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx322 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %205, i64 %idxprom321
  %data323 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx322, i32 0, i32 1
  %d_parasite324 = bitcast %union.anon.0* %data323 to %struct._GimpParasite*
  %206 = bitcast %struct._GimpParasite* %d_parasite324 to i8*
  call void @g_value_set_static_boxed(%struct._GValue* %value, i8* %206)
  br label %if.end.325

if.end.325:                                       ; preds = %if.else.320, %if.then.316
  br label %sw.epilog

sw.bb.326:                                        ; preds = %if.end.43
  %207 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %207 to i64
  %208 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx328 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %208, i64 %idxprom327
  %data329 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx328, i32 0, i32 1
  %d_status = bitcast %union.anon.0* %data329 to i32*
  %209 = load i32, i32* %d_status, align 4
  call void @g_value_set_enum(%struct._GValue* %value, i32 %209)
  br label %sw.epilog

sw.bb.330:                                        ; preds = %if.end.43
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.43, %sw.bb.330, %sw.bb.326, %if.end.325, %sw.bb.310, %if.end.309, %sw.bb.287, %sw.bb.283, %sw.bb.279, %sw.bb.275, %sw.bb.271, %sw.bb.267, %sw.bb.263, %sw.bb.259, %if.end.258, %if.end.239, %if.end.220, %if.end.201, %if.end.182, %if.end.165, %sw.bb.150, %sw.bb.145, %sw.bb.141, %if.end.140
  %210 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %call331 = call %struct._GValueArray* @g_value_array_append(%struct._GValueArray* %210, %struct._GValue* %value)
  call void @g_value_unset(%struct._GValue* %value)
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %211 = load i32, i32* %i, align 4
  %inc = add nsw i32 %211, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %212 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  store %struct._GValueArray* %212, %struct._GValueArray** %retval
  br label %return

return:                                           ; preds = %for.end, %do.body.135, %if.else.14, %if.else
  %213 = load %struct._GValueArray*, %struct._GValueArray** %retval
  ret %struct._GValueArray* %213
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GValueArray* @g_value_array_new(i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i64 @gimp_pdb_compat_arg_type_to_gtype(i32) #1

declare i32 @gimp_pdb_compat_arg_type_from_gtype(i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #3

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_uint(%struct._GValue*, i32) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_printerr(i8*, ...) #1

declare i8* @g_type_name(i64) #1

declare void @g_log(i8*, i32, i8*, ...) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_static_string(%struct._GValue*, i8*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare void @gimp_value_set_int32array(%struct._GValue*, i32*, i64) #1

declare void @gimp_value_set_static_int32array(%struct._GValue*, i32*, i64) #1

declare void @gimp_value_set_int16array(%struct._GValue*, i16*, i64) #1

declare void @gimp_value_set_static_int16array(%struct._GValue*, i16*, i64) #1

declare void @gimp_value_set_int8array(%struct._GValue*, i8*, i64) #1

declare void @gimp_value_set_static_int8array(%struct._GValue*, i8*, i64) #1

declare void @gimp_value_set_floatarray(%struct._GValue*, double*, i64) #1

declare void @gimp_value_set_static_floatarray(%struct._GValue*, double*, i64) #1

declare void @gimp_value_set_stringarray(%struct._GValue*, i8**, i64) #1

declare void @gimp_value_set_static_stringarray(%struct._GValue*, i8**, i64) #1

declare void @gimp_value_set_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare void @gimp_value_set_colorarray(%struct._GValue*, %struct._GimpRGB*, i64) #1

declare void @gimp_value_set_static_colorarray(%struct._GValue*, %struct._GimpRGB*, i64) #1

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare void @g_value_set_static_boxed(%struct._GValue*, i8*) #1

declare %struct._GValueArray* @g_value_array_append(%struct._GValueArray*, %struct._GValue*) #1

declare void @g_value_unset(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define %struct._GPParam* @plug_in_args_to_params(%struct._GValueArray* %args, i32 %full_copy) #0 {
entry:
  %retval = alloca %struct._GPParam*, align 8
  %args.addr = alloca %struct._GValueArray*, align 8
  %full_copy.addr = alloca i32, align 4
  %params = alloca %struct._GPParam*, align 8
  %i = alloca i32, align 4
  %value = alloca %struct._GValue*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__val27 = alloca %struct._GValue*, align 8
  %__t29 = alloca i64, align 8
  %__r31 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %__val53 = alloca %struct._GValue*, align 8
  %__t55 = alloca i64, align 8
  %__r57 = alloca i32, align 4
  %tmp69 = alloca i32, align 4
  %__val79 = alloca %struct._GValue*, align 8
  %__t81 = alloca i64, align 8
  %__r83 = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  store %struct._GValueArray* %args, %struct._GValueArray** %args.addr, align 8
  store i32 %full_copy, i32* %full_copy.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %cmp = icmp ne %struct._GValueArray* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.plug_in_args_to_params, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GPParam* null, %struct._GPParam** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 0
  %2 = load i32, i32* %n_values, align 4
  %conv = zext i32 %2 to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv, i64 40)
  %3 = bitcast i8* %call to %struct._GPParam*
  store %struct._GPParam* %3, %struct._GPParam** %params, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %n_values1 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %5, i32 0, i32 0
  %6 = load i32, i32* %n_values1, align 4
  %cmp2 = icmp ult i32 %4, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._GValueArray*, %struct._GValueArray** %args.addr, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %8, i32 0, i32 1
  %9 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %9, i64 %idxprom
  store %struct._GValue* %arrayidx, %struct._GValue** %value, align 8
  %10 = load %struct._GValue*, %struct._GValue** %value, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %call4 = call i32 @gimp_pdb_compat_arg_type_from_gtype(i64 %11)
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx6 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %13, i64 %idxprom5
  %type = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx6, i32 0, i32 0
  store i32 %call4, i32* %type, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx8 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %15, i64 %idxprom7
  %type9 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx8, i32 0, i32 0
  %16 = load i32, i32* %type9, align 4
  switch i32 %16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.112
    i32 2, label %sw.bb.118
    i32 3, label %sw.bb.124
    i32 4, label %sw.bb.129
    i32 5, label %sw.bb.143
    i32 6, label %sw.bb.157
    i32 7, label %sw.bb.171
    i32 8, label %sw.bb.185
    i32 9, label %sw.bb.199
    i32 10, label %sw.bb.213
    i32 11, label %sw.bb.217
    i32 12, label %sw.bb.222
    i32 13, label %sw.bb.227
    i32 14, label %sw.bb.232
    i32 15, label %sw.bb.237
    i32 16, label %sw.bb.242
    i32 17, label %sw.bb.247
    i32 18, label %sw.bb.252
    i32 19, label %sw.bb.266
    i32 20, label %sw.bb.271
    i32 21, label %sw.bb.327
    i32 22, label %sw.bb.332
  ]

sw.bb:                                            ; preds = %for.body
  %17 = load %struct._GValue*, %struct._GValue** %value, align 8
  store %struct._GValue* %17, %struct._GValue** %__val, align 8
  store i64 24, i64* %__t, align 8
  %18 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %18, null
  br i1 %tobool, label %if.else.11, label %if.then.10

if.then.10:                                       ; preds = %sw.bb
  store i32 0, i32* %__r, align 4
  br label %if.end.19

if.else.11:                                       ; preds = %sw.bb
  %19 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type12 = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type12, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp13 = icmp eq i64 %20, %21
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.11
  store i32 1, i32* %__r, align 4
  br label %if.end.18

if.else.16:                                       ; preds = %if.else.11
  %22 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %23 = load i64, i64* %__t, align 8
  %call17 = call i32 @g_type_check_value_holds(%struct._GValue* %22, i64 %23) #4
  store i32 %call17, i32* %__r, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.10
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool20 = icmp ne i32 %25, 0
  br i1 %tobool20, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %if.end.19
  %26 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call22 = call i32 @g_value_get_int(%struct._GValue* %26)
  %27 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx24 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %28, i64 %idxprom23
  %data = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx24, i32 0, i32 1
  %d_int32 = bitcast %union.anon.0* %data to i32*
  store i32 %call22, i32* %d_int32, align 4
  br label %if.end.111

if.else.25:                                       ; preds = %if.end.19
  %29 = load %struct._GValue*, %struct._GValue** %value, align 8
  store %struct._GValue* %29, %struct._GValue** %__val27, align 8
  store i64 28, i64* %__t29, align 8
  %30 = load %struct._GValue*, %struct._GValue** %__val27, align 8
  %tobool32 = icmp ne %struct._GValue* %30, null
  br i1 %tobool32, label %if.else.34, label %if.then.33

if.then.33:                                       ; preds = %if.else.25
  store i32 0, i32* %__r31, align 4
  br label %if.end.42

if.else.34:                                       ; preds = %if.else.25
  %31 = load %struct._GValue*, %struct._GValue** %__val27, align 8
  %g_type35 = getelementptr inbounds %struct._GValue, %struct._GValue* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type35, align 8
  %33 = load i64, i64* %__t29, align 8
  %cmp36 = icmp eq i64 %32, %33
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else.34
  store i32 1, i32* %__r31, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %if.else.34
  %34 = load %struct._GValue*, %struct._GValue** %__val27, align 8
  %35 = load i64, i64* %__t29, align 8
  %call40 = call i32 @g_type_check_value_holds(%struct._GValue* %34, i64 %35) #4
  store i32 %call40, i32* %__r31, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.33
  %36 = load i32, i32* %__r31, align 4
  store i32 %36, i32* %tmp43
  %37 = load i32, i32* %tmp43
  %tobool44 = icmp ne i32 %37, 0
  br i1 %tobool44, label %if.then.45, label %if.else.51

if.then.45:                                       ; preds = %if.end.42
  %38 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call46 = call i32 @g_value_get_uint(%struct._GValue* %38)
  %39 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %39 to i64
  %40 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx48 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %40, i64 %idxprom47
  %data49 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx48, i32 0, i32 1
  %d_int3250 = bitcast %union.anon.0* %data49 to i32*
  store i32 %call46, i32* %d_int3250, align 4
  br label %if.end.110

if.else.51:                                       ; preds = %if.end.42
  %41 = load %struct._GValue*, %struct._GValue** %value, align 8
  store %struct._GValue* %41, %struct._GValue** %__val53, align 8
  store i64 48, i64* %__t55, align 8
  %42 = load %struct._GValue*, %struct._GValue** %__val53, align 8
  %tobool58 = icmp ne %struct._GValue* %42, null
  br i1 %tobool58, label %if.else.60, label %if.then.59

if.then.59:                                       ; preds = %if.else.51
  store i32 0, i32* %__r57, align 4
  br label %if.end.68

if.else.60:                                       ; preds = %if.else.51
  %43 = load %struct._GValue*, %struct._GValue** %__val53, align 8
  %g_type61 = getelementptr inbounds %struct._GValue, %struct._GValue* %43, i32 0, i32 0
  %44 = load i64, i64* %g_type61, align 8
  %45 = load i64, i64* %__t55, align 8
  %cmp62 = icmp eq i64 %44, %45
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.else.60
  store i32 1, i32* %__r57, align 4
  br label %if.end.67

if.else.65:                                       ; preds = %if.else.60
  %46 = load %struct._GValue*, %struct._GValue** %__val53, align 8
  %47 = load i64, i64* %__t55, align 8
  %call66 = call i32 @g_type_check_value_holds(%struct._GValue* %46, i64 %47) #4
  store i32 %call66, i32* %__r57, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.64
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.59
  %48 = load i32, i32* %__r57, align 4
  store i32 %48, i32* %tmp69
  %49 = load i32, i32* %tmp69
  %tobool70 = icmp ne i32 %49, 0
  br i1 %tobool70, label %if.then.71, label %if.else.77

if.then.71:                                       ; preds = %if.end.68
  %50 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call72 = call i32 @g_value_get_enum(%struct._GValue* %50)
  %51 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %51 to i64
  %52 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx74 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %52, i64 %idxprom73
  %data75 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx74, i32 0, i32 1
  %d_int3276 = bitcast %union.anon.0* %data75 to i32*
  store i32 %call72, i32* %d_int3276, align 4
  br label %if.end.109

if.else.77:                                       ; preds = %if.end.68
  %53 = load %struct._GValue*, %struct._GValue** %value, align 8
  store %struct._GValue* %53, %struct._GValue** %__val79, align 8
  store i64 20, i64* %__t81, align 8
  %54 = load %struct._GValue*, %struct._GValue** %__val79, align 8
  %tobool84 = icmp ne %struct._GValue* %54, null
  br i1 %tobool84, label %if.else.86, label %if.then.85

if.then.85:                                       ; preds = %if.else.77
  store i32 0, i32* %__r83, align 4
  br label %if.end.94

if.else.86:                                       ; preds = %if.else.77
  %55 = load %struct._GValue*, %struct._GValue** %__val79, align 8
  %g_type87 = getelementptr inbounds %struct._GValue, %struct._GValue* %55, i32 0, i32 0
  %56 = load i64, i64* %g_type87, align 8
  %57 = load i64, i64* %__t81, align 8
  %cmp88 = icmp eq i64 %56, %57
  br i1 %cmp88, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %if.else.86
  store i32 1, i32* %__r83, align 4
  br label %if.end.93

if.else.91:                                       ; preds = %if.else.86
  %58 = load %struct._GValue*, %struct._GValue** %__val79, align 8
  %59 = load i64, i64* %__t81, align 8
  %call92 = call i32 @g_type_check_value_holds(%struct._GValue* %58, i64 %59) #4
  store i32 %call92, i32* %__r83, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.90
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.85
  %60 = load i32, i32* %__r83, align 4
  store i32 %60, i32* %tmp95
  %61 = load i32, i32* %tmp95
  %tobool96 = icmp ne i32 %61, 0
  br i1 %tobool96, label %if.then.97, label %if.else.103

if.then.97:                                       ; preds = %if.end.94
  %62 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call98 = call i32 @g_value_get_boolean(%struct._GValue* %62)
  %63 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %63 to i64
  %64 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx100 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %64, i64 %idxprom99
  %data101 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx100, i32 0, i32 1
  %d_int32102 = bitcast %union.anon.0* %data101 to i32*
  store i32 %call98, i32* %d_int32102, align 4
  br label %if.end.108

if.else.103:                                      ; preds = %if.end.94
  %65 = load %struct._GValue*, %struct._GValue** %value, align 8
  %g_type104 = getelementptr inbounds %struct._GValue, %struct._GValue* %65, i32 0, i32 0
  %66 = load i64, i64* %g_type104, align 8
  %call105 = call i8* @g_type_name(i64 %66)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.plug_in_args_to_params, i32 0, i32 0), i8* %call105)
  br label %do.body.106

do.body.106:                                      ; preds = %if.else.103
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 295, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.plug_in_args_to_params, i32 0, i32 0))
  %67 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  store %struct._GPParam* %67, %struct._GPParam** %retval
  br label %return

do.end.107:                                       ; No predecessors!
  br label %if.end.108

if.end.108:                                       ; preds = %do.end.107, %if.then.97
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.71
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.45
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.21
  br label %sw.epilog

sw.bb.112:                                        ; preds = %for.body
  %68 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call113 = call i32 @g_value_get_int(%struct._GValue* %68)
  %conv114 = trunc i32 %call113 to i16
  %69 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %69 to i64
  %70 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx116 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %70, i64 %idxprom115
  %data117 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx116, i32 0, i32 1
  %d_int16 = bitcast %union.anon.0* %data117 to i16*
  store i16 %conv114, i16* %d_int16, align 2
  br label %sw.epilog

sw.bb.118:                                        ; preds = %for.body
  %71 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call119 = call i32 @g_value_get_uint(%struct._GValue* %71)
  %conv120 = trunc i32 %call119 to i8
  %72 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %72 to i64
  %73 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx122 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %73, i64 %idxprom121
  %data123 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx122, i32 0, i32 1
  %d_int8 = bitcast %union.anon.0* %data123 to i8*
  store i8 %conv120, i8* %d_int8, align 1
  br label %sw.epilog

sw.bb.124:                                        ; preds = %for.body
  %74 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call125 = call double @g_value_get_double(%struct._GValue* %74)
  %75 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %75 to i64
  %76 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx127 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %76, i64 %idxprom126
  %data128 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx127, i32 0, i32 1
  %d_float = bitcast %union.anon.0* %data128 to double*
  store double %call125, double* %d_float, align 8
  br label %sw.epilog

sw.bb.129:                                        ; preds = %for.body
  %77 = load i32, i32* %full_copy.addr, align 4
  %tobool130 = icmp ne i32 %77, 0
  br i1 %tobool130, label %if.then.131, label %if.else.136

if.then.131:                                      ; preds = %sw.bb.129
  %78 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call132 = call i8* @g_value_dup_string(%struct._GValue* %78)
  %79 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %79 to i64
  %80 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx134 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %80, i64 %idxprom133
  %data135 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx134, i32 0, i32 1
  %d_string = bitcast %union.anon.0* %data135 to i8**
  store i8* %call132, i8** %d_string, align 8
  br label %if.end.142

if.else.136:                                      ; preds = %sw.bb.129
  %81 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call137 = call i8* @g_value_get_string(%struct._GValue* %81)
  %82 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %82 to i64
  %83 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx139 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %83, i64 %idxprom138
  %data140 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx139, i32 0, i32 1
  %d_string141 = bitcast %union.anon.0* %data140 to i8**
  store i8* %call137, i8** %d_string141, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.136, %if.then.131
  br label %sw.epilog

sw.bb.143:                                        ; preds = %for.body
  %84 = load i32, i32* %full_copy.addr, align 4
  %tobool144 = icmp ne i32 %84, 0
  br i1 %tobool144, label %if.then.145, label %if.else.150

if.then.145:                                      ; preds = %sw.bb.143
  %85 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call146 = call i32* @gimp_value_dup_int32array(%struct._GValue* %85)
  %86 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %86 to i64
  %87 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx148 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %87, i64 %idxprom147
  %data149 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx148, i32 0, i32 1
  %d_int32array = bitcast %union.anon.0* %data149 to i32**
  store i32* %call146, i32** %d_int32array, align 8
  br label %if.end.156

if.else.150:                                      ; preds = %sw.bb.143
  %88 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call151 = call i32* @gimp_value_get_int32array(%struct._GValue* %88)
  %89 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %89 to i64
  %90 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx153 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %90, i64 %idxprom152
  %data154 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx153, i32 0, i32 1
  %d_int32array155 = bitcast %union.anon.0* %data154 to i32**
  store i32* %call151, i32** %d_int32array155, align 8
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.150, %if.then.145
  br label %sw.epilog

sw.bb.157:                                        ; preds = %for.body
  %91 = load i32, i32* %full_copy.addr, align 4
  %tobool158 = icmp ne i32 %91, 0
  br i1 %tobool158, label %if.then.159, label %if.else.164

if.then.159:                                      ; preds = %sw.bb.157
  %92 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call160 = call i16* @gimp_value_dup_int16array(%struct._GValue* %92)
  %93 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %93 to i64
  %94 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx162 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %94, i64 %idxprom161
  %data163 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx162, i32 0, i32 1
  %d_int16array = bitcast %union.anon.0* %data163 to i16**
  store i16* %call160, i16** %d_int16array, align 8
  br label %if.end.170

if.else.164:                                      ; preds = %sw.bb.157
  %95 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call165 = call i16* @gimp_value_get_int16array(%struct._GValue* %95)
  %96 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %96 to i64
  %97 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx167 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %97, i64 %idxprom166
  %data168 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx167, i32 0, i32 1
  %d_int16array169 = bitcast %union.anon.0* %data168 to i16**
  store i16* %call165, i16** %d_int16array169, align 8
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.164, %if.then.159
  br label %sw.epilog

sw.bb.171:                                        ; preds = %for.body
  %98 = load i32, i32* %full_copy.addr, align 4
  %tobool172 = icmp ne i32 %98, 0
  br i1 %tobool172, label %if.then.173, label %if.else.178

if.then.173:                                      ; preds = %sw.bb.171
  %99 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call174 = call i8* @gimp_value_dup_int8array(%struct._GValue* %99)
  %100 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %100 to i64
  %101 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx176 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %101, i64 %idxprom175
  %data177 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx176, i32 0, i32 1
  %d_int8array = bitcast %union.anon.0* %data177 to i8**
  store i8* %call174, i8** %d_int8array, align 8
  br label %if.end.184

if.else.178:                                      ; preds = %sw.bb.171
  %102 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call179 = call i8* @gimp_value_get_int8array(%struct._GValue* %102)
  %103 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %103 to i64
  %104 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx181 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %104, i64 %idxprom180
  %data182 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx181, i32 0, i32 1
  %d_int8array183 = bitcast %union.anon.0* %data182 to i8**
  store i8* %call179, i8** %d_int8array183, align 8
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.178, %if.then.173
  br label %sw.epilog

sw.bb.185:                                        ; preds = %for.body
  %105 = load i32, i32* %full_copy.addr, align 4
  %tobool186 = icmp ne i32 %105, 0
  br i1 %tobool186, label %if.then.187, label %if.else.192

if.then.187:                                      ; preds = %sw.bb.185
  %106 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call188 = call double* @gimp_value_dup_floatarray(%struct._GValue* %106)
  %107 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %107 to i64
  %108 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx190 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %108, i64 %idxprom189
  %data191 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx190, i32 0, i32 1
  %d_floatarray = bitcast %union.anon.0* %data191 to double**
  store double* %call188, double** %d_floatarray, align 8
  br label %if.end.198

if.else.192:                                      ; preds = %sw.bb.185
  %109 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call193 = call double* @gimp_value_get_floatarray(%struct._GValue* %109)
  %110 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %110 to i64
  %111 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx195 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %111, i64 %idxprom194
  %data196 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx195, i32 0, i32 1
  %d_floatarray197 = bitcast %union.anon.0* %data196 to double**
  store double* %call193, double** %d_floatarray197, align 8
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.192, %if.then.187
  br label %sw.epilog

sw.bb.199:                                        ; preds = %for.body
  %112 = load i32, i32* %full_copy.addr, align 4
  %tobool200 = icmp ne i32 %112, 0
  br i1 %tobool200, label %if.then.201, label %if.else.206

if.then.201:                                      ; preds = %sw.bb.199
  %113 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call202 = call i8** @gimp_value_dup_stringarray(%struct._GValue* %113)
  %114 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %114 to i64
  %115 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx204 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %115, i64 %idxprom203
  %data205 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx204, i32 0, i32 1
  %d_stringarray = bitcast %union.anon.0* %data205 to i8***
  store i8** %call202, i8*** %d_stringarray, align 8
  br label %if.end.212

if.else.206:                                      ; preds = %sw.bb.199
  %116 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call207 = call i8** @gimp_value_get_stringarray(%struct._GValue* %116)
  %117 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %117 to i64
  %118 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx209 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %118, i64 %idxprom208
  %data210 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx209, i32 0, i32 1
  %d_stringarray211 = bitcast %union.anon.0* %data210 to i8***
  store i8** %call207, i8*** %d_stringarray211, align 8
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.206, %if.then.201
  br label %sw.epilog

sw.bb.213:                                        ; preds = %for.body
  %119 = load %struct._GValue*, %struct._GValue** %value, align 8
  %120 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %120 to i64
  %121 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx215 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %121, i64 %idxprom214
  %data216 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx215, i32 0, i32 1
  %d_color = bitcast %union.anon.0* %data216 to %struct._GimpRGB*
  call void @gimp_value_get_rgb(%struct._GValue* %119, %struct._GimpRGB* %d_color)
  br label %sw.epilog

sw.bb.217:                                        ; preds = %for.body
  %122 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call218 = call i32 @g_value_get_int(%struct._GValue* %122)
  %123 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %123 to i64
  %124 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx220 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %124, i64 %idxprom219
  %data221 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx220, i32 0, i32 1
  %d_item = bitcast %union.anon.0* %data221 to i32*
  store i32 %call218, i32* %d_item, align 4
  br label %sw.epilog

sw.bb.222:                                        ; preds = %for.body
  %125 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call223 = call i32 @g_value_get_int(%struct._GValue* %125)
  %126 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %126 to i64
  %127 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx225 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %127, i64 %idxprom224
  %data226 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx225, i32 0, i32 1
  %d_display = bitcast %union.anon.0* %data226 to i32*
  store i32 %call223, i32* %d_display, align 4
  br label %sw.epilog

sw.bb.227:                                        ; preds = %for.body
  %128 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call228 = call i32 @g_value_get_int(%struct._GValue* %128)
  %129 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %129 to i64
  %130 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx230 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %130, i64 %idxprom229
  %data231 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx230, i32 0, i32 1
  %d_image = bitcast %union.anon.0* %data231 to i32*
  store i32 %call228, i32* %d_image, align 4
  br label %sw.epilog

sw.bb.232:                                        ; preds = %for.body
  %131 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call233 = call i32 @g_value_get_int(%struct._GValue* %131)
  %132 = load i32, i32* %i, align 4
  %idxprom234 = sext i32 %132 to i64
  %133 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx235 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %133, i64 %idxprom234
  %data236 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx235, i32 0, i32 1
  %d_layer = bitcast %union.anon.0* %data236 to i32*
  store i32 %call233, i32* %d_layer, align 4
  br label %sw.epilog

sw.bb.237:                                        ; preds = %for.body
  %134 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call238 = call i32 @g_value_get_int(%struct._GValue* %134)
  %135 = load i32, i32* %i, align 4
  %idxprom239 = sext i32 %135 to i64
  %136 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx240 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %136, i64 %idxprom239
  %data241 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx240, i32 0, i32 1
  %d_channel = bitcast %union.anon.0* %data241 to i32*
  store i32 %call238, i32* %d_channel, align 4
  br label %sw.epilog

sw.bb.242:                                        ; preds = %for.body
  %137 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call243 = call i32 @g_value_get_int(%struct._GValue* %137)
  %138 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %138 to i64
  %139 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx245 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %139, i64 %idxprom244
  %data246 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx245, i32 0, i32 1
  %d_drawable = bitcast %union.anon.0* %data246 to i32*
  store i32 %call243, i32* %d_drawable, align 4
  br label %sw.epilog

sw.bb.247:                                        ; preds = %for.body
  %140 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call248 = call i32 @g_value_get_int(%struct._GValue* %140)
  %141 = load i32, i32* %i, align 4
  %idxprom249 = sext i32 %141 to i64
  %142 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx250 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %142, i64 %idxprom249
  %data251 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx250, i32 0, i32 1
  %d_selection = bitcast %union.anon.0* %data251 to i32*
  store i32 %call248, i32* %d_selection, align 4
  br label %sw.epilog

sw.bb.252:                                        ; preds = %for.body
  %143 = load i32, i32* %full_copy.addr, align 4
  %tobool253 = icmp ne i32 %143, 0
  br i1 %tobool253, label %if.then.254, label %if.else.259

if.then.254:                                      ; preds = %sw.bb.252
  %144 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call255 = call %struct._GimpRGB* @gimp_value_dup_colorarray(%struct._GValue* %144)
  %145 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %145 to i64
  %146 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx257 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %146, i64 %idxprom256
  %data258 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx257, i32 0, i32 1
  %d_colorarray = bitcast %union.anon.0* %data258 to %struct._GimpRGB**
  store %struct._GimpRGB* %call255, %struct._GimpRGB** %d_colorarray, align 8
  br label %if.end.265

if.else.259:                                      ; preds = %sw.bb.252
  %147 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call260 = call %struct._GimpRGB* @gimp_value_get_colorarray(%struct._GValue* %147)
  %148 = load i32, i32* %i, align 4
  %idxprom261 = sext i32 %148 to i64
  %149 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx262 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %149, i64 %idxprom261
  %data263 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx262, i32 0, i32 1
  %d_colorarray264 = bitcast %union.anon.0* %data263 to %struct._GimpRGB**
  store %struct._GimpRGB* %call260, %struct._GimpRGB** %d_colorarray264, align 8
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.259, %if.then.254
  br label %sw.epilog

sw.bb.266:                                        ; preds = %for.body
  %150 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call267 = call i32 @g_value_get_int(%struct._GValue* %150)
  %151 = load i32, i32* %i, align 4
  %idxprom268 = sext i32 %151 to i64
  %152 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx269 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %152, i64 %idxprom268
  %data270 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx269, i32 0, i32 1
  %d_vectors = bitcast %union.anon.0* %data270 to i32*
  store i32 %call267, i32* %d_vectors, align 4
  br label %sw.epilog

sw.bb.271:                                        ; preds = %for.body
  %153 = load i32, i32* %full_copy.addr, align 4
  %tobool273 = icmp ne i32 %153, 0
  br i1 %tobool273, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.271
  %154 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call274 = call i8* @g_value_dup_boxed(%struct._GValue* %154)
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.271
  %155 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call275 = call i8* @g_value_get_boxed(%struct._GValue* %155)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call274, %cond.true ], [ %call275, %cond.false ]
  %156 = bitcast i8* %cond to %struct._GimpParasite*
  store %struct._GimpParasite* %156, %struct._GimpParasite** %parasite, align 8
  %157 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool276 = icmp ne %struct._GimpParasite* %157, null
  br i1 %tobool276, label %if.then.277, label %if.else.305

if.then.277:                                      ; preds = %cond.end
  %158 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %name = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %158, i32 0, i32 0
  %159 = load i8*, i8** %name, align 8
  %160 = load i32, i32* %i, align 4
  %idxprom278 = sext i32 %160 to i64
  %161 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx279 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %161, i64 %idxprom278
  %data280 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx279, i32 0, i32 1
  %d_parasite = bitcast %union.anon.0* %data280 to %struct._GimpParasite*
  %name281 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite, i32 0, i32 0
  store i8* %159, i8** %name281, align 8
  %162 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %flags = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %162, i32 0, i32 1
  %163 = load i32, i32* %flags, align 4
  %164 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %164 to i64
  %165 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx283 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %165, i64 %idxprom282
  %data284 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx283, i32 0, i32 1
  %d_parasite285 = bitcast %union.anon.0* %data284 to %struct._GimpParasite*
  %flags286 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite285, i32 0, i32 1
  store i32 %163, i32* %flags286, align 4
  %166 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %size = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %166, i32 0, i32 2
  %167 = load i32, i32* %size, align 4
  %168 = load i32, i32* %i, align 4
  %idxprom287 = sext i32 %168 to i64
  %169 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx288 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %169, i64 %idxprom287
  %data289 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx288, i32 0, i32 1
  %d_parasite290 = bitcast %union.anon.0* %data289 to %struct._GimpParasite*
  %size291 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite290, i32 0, i32 2
  store i32 %167, i32* %size291, align 4
  %170 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %data292 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %170, i32 0, i32 3
  %171 = load i8*, i8** %data292, align 8
  %172 = load i32, i32* %i, align 4
  %idxprom293 = sext i32 %172 to i64
  %173 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx294 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %173, i64 %idxprom293
  %data295 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx294, i32 0, i32 1
  %d_parasite296 = bitcast %union.anon.0* %data295 to %struct._GimpParasite*
  %data297 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite296, i32 0, i32 3
  store i8* %171, i8** %data297, align 8
  %174 = load i32, i32* %full_copy.addr, align 4
  %tobool298 = icmp ne i32 %174, 0
  br i1 %tobool298, label %if.then.299, label %if.end.304

if.then.299:                                      ; preds = %if.then.277
  %175 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %name300 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %175, i32 0, i32 0
  store i8* null, i8** %name300, align 8
  %176 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %flags301 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %176, i32 0, i32 1
  store i32 0, i32* %flags301, align 4
  %177 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %size302 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %177, i32 0, i32 2
  store i32 0, i32* %size302, align 4
  %178 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %data303 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %178, i32 0, i32 3
  store i8* null, i8** %data303, align 8
  %179 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %179)
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.299, %if.then.277
  br label %if.end.326

if.else.305:                                      ; preds = %cond.end
  %180 = load i32, i32* %i, align 4
  %idxprom306 = sext i32 %180 to i64
  %181 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx307 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %181, i64 %idxprom306
  %data308 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx307, i32 0, i32 1
  %d_parasite309 = bitcast %union.anon.0* %data308 to %struct._GimpParasite*
  %name310 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite309, i32 0, i32 0
  store i8* null, i8** %name310, align 8
  %182 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %182 to i64
  %183 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx312 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %183, i64 %idxprom311
  %data313 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx312, i32 0, i32 1
  %d_parasite314 = bitcast %union.anon.0* %data313 to %struct._GimpParasite*
  %flags315 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite314, i32 0, i32 1
  store i32 0, i32* %flags315, align 4
  %184 = load i32, i32* %i, align 4
  %idxprom316 = sext i32 %184 to i64
  %185 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx317 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %185, i64 %idxprom316
  %data318 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx317, i32 0, i32 1
  %d_parasite319 = bitcast %union.anon.0* %data318 to %struct._GimpParasite*
  %size320 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite319, i32 0, i32 2
  store i32 0, i32* %size320, align 4
  %186 = load i32, i32* %i, align 4
  %idxprom321 = sext i32 %186 to i64
  %187 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx322 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %187, i64 %idxprom321
  %data323 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx322, i32 0, i32 1
  %d_parasite324 = bitcast %union.anon.0* %data323 to %struct._GimpParasite*
  %data325 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite324, i32 0, i32 3
  store i8* null, i8** %data325, align 8
  br label %if.end.326

if.end.326:                                       ; preds = %if.else.305, %if.end.304
  br label %sw.epilog

sw.bb.327:                                        ; preds = %for.body
  %188 = load %struct._GValue*, %struct._GValue** %value, align 8
  %call328 = call i32 @g_value_get_enum(%struct._GValue* %188)
  %189 = load i32, i32* %i, align 4
  %idxprom329 = sext i32 %189 to i64
  %190 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %arrayidx330 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %190, i64 %idxprom329
  %data331 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx330, i32 0, i32 1
  %d_status = bitcast %union.anon.0* %data331 to i32*
  store i32 %call328, i32* %d_status, align 4
  br label %sw.epilog

sw.bb.332:                                        ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.332, %sw.bb.327, %if.end.326, %sw.bb.266, %if.end.265, %sw.bb.247, %sw.bb.242, %sw.bb.237, %sw.bb.232, %sw.bb.227, %sw.bb.222, %sw.bb.217, %sw.bb.213, %if.end.212, %if.end.198, %if.end.184, %if.end.170, %if.end.156, %if.end.142, %sw.bb.124, %sw.bb.118, %sw.bb.112, %if.end.111
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %191 = load i32, i32* %i, align 4
  %inc = add nsw i32 %191, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %192 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  store %struct._GPParam* %192, %struct._GPParam** %retval
  br label %return

return:                                           ; preds = %for.end, %do.body.106, %if.else
  %193 = load %struct._GPParam*, %struct._GPParam** %retval
  ret %struct._GPParam* %193
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i32 @g_value_get_uint(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i32* @gimp_value_dup_int32array(%struct._GValue*) #1

declare i32* @gimp_value_get_int32array(%struct._GValue*) #1

declare i16* @gimp_value_dup_int16array(%struct._GValue*) #1

declare i16* @gimp_value_get_int16array(%struct._GValue*) #1

declare i8* @gimp_value_dup_int8array(%struct._GValue*) #1

declare i8* @gimp_value_get_int8array(%struct._GValue*) #1

declare double* @gimp_value_dup_floatarray(%struct._GValue*) #1

declare double* @gimp_value_get_floatarray(%struct._GValue*) #1

declare i8** @gimp_value_dup_stringarray(%struct._GValue*) #1

declare i8** @gimp_value_get_stringarray(%struct._GValue*) #1

declare void @gimp_value_get_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare %struct._GimpRGB* @gimp_value_dup_colorarray(%struct._GValue*) #1

declare %struct._GimpRGB* @gimp_value_get_colorarray(%struct._GValue*) #1

declare i8* @g_value_dup_boxed(%struct._GValue*) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
