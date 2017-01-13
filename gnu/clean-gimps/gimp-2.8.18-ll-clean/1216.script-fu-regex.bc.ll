; ModuleID = './plug-ins/script-fu/script-fu-regex.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scheme = type { i8* (i64)*, void (i8*)*, i32, i32, [50 x i8*], [50 x %struct.cell*], i32, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, i32, i32, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, i64, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, [64 x %struct.port], [64 x i32], i32, i32, i8, i8, [1024 x i8], [1024 x i8], %struct._IO_FILE*, i32, i32, %struct.cell*, i32, i8*, i64, %struct.scheme_interface*, i8*, i32, [2 x i32], i32 }
%struct.cell = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i32 }
%struct.port = type { i8, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct._IO_FILE*, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.scheme_interface = type { void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, double)*, %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*)*, %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*, i32)*, %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, %struct.cell* (%struct.scheme*, %struct.cell*)*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, i8*)*, void (%struct.scheme*, i32)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i8* (%struct.cell*)*, i32 (%struct.cell*)*, { i8, i64 } (%struct.cell*)*, i64 (%struct.cell*)*, double (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)*, i64 (%struct.cell*)*, void (%struct.cell*, %struct.cell*)*, %struct.cell* (%struct.cell*, i32)*, %struct.cell* (%struct.cell*, i32, %struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*, %struct.cell*)*, %struct.cell* (%struct.cell*, %struct.cell*)*, i32 (%struct.cell*)*, i8* (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i8* (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, void (%struct.cell*)*, void (%struct.scheme*, %struct._IO_FILE*)*, void (%struct.scheme*, i8*)* }
%struct._GRegex = type opaque
%struct._GMatchInfo = type opaque
%struct.num = type { i8, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct.anon.4 = type { %struct.cell*, %struct.cell* }

@.str = private unnamed_addr constant [9 x i8] c"re-match\00", align 1

; Function Attrs: nounwind uwtable
define void @script_fu_regex_init(%struct.scheme* %sc) #0 {
entry:
  %sc.addr = alloca %struct.scheme*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  %0 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %0, i32 0, i32 58
  %1 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %scheme_define = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1, i32 0, i32 0
  %2 = load void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)** %scheme_define, align 8
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %4 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %global_env = getelementptr inbounds %struct.scheme, %struct.scheme* %4, i32 0, i32 25
  %5 = load %struct.cell*, %struct.cell** %global_env, align 8
  %6 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr1 = getelementptr inbounds %struct.scheme, %struct.scheme* %6, i32 0, i32 58
  %7 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr1, align 8
  %mk_symbol = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %7, i32 0, i32 6
  %8 = load %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*)** %mk_symbol, align 8
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call = call %struct.cell* %8(%struct.scheme* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %10 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr2 = getelementptr inbounds %struct.scheme, %struct.scheme* %10, i32 0, i32 58
  %11 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr2, align 8
  %mk_foreign_func = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %11, i32 0, i32 12
  %12 = load %struct.cell* (%struct.scheme*, %struct.cell* (%struct.scheme*, %struct.cell*)*)*, %struct.cell* (%struct.scheme*, %struct.cell* (%struct.scheme*, %struct.cell*)*)** %mk_foreign_func, align 8
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call3 = call %struct.cell* %12(%struct.scheme* %13, %struct.cell* (%struct.scheme*, %struct.cell*)* @foreign_re_match)
  call void %2(%struct.scheme* %3, %struct.cell* %5, %struct.cell* %call, %struct.cell* %call3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.cell* @foreign_re_match(%struct.scheme* %sc, %struct.cell* %args) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %args.addr = alloca %struct.cell*, align 8
  %retval1 = alloca %struct.cell*, align 8
  %success = alloca i32, align 4
  %is_valid_utf8 = alloca i32, align 4
  %regex = alloca %struct._GRegex*, align 8
  %first_arg = alloca %struct.cell*, align 8
  %second_arg = alloca %struct.cell*, align 8
  %third_arg = alloca %struct.cell*, align 8
  %string = alloca i8*, align 8
  %pattern = alloca i8*, align 8
  %num = alloca i32, align 4
  %match_info = alloca %struct._GMatchInfo*, align 8
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %args, %struct.cell** %args.addr, align 8
  %0 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F = getelementptr inbounds %struct.scheme, %struct.scheme* %0, i32 0, i32 21
  %1 = load %struct.cell*, %struct.cell** %F, align 8
  store %struct.cell* %1, %struct.cell** %retval1, align 8
  %2 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %2, i32 0, i32 17
  %3 = load %struct.cell*, %struct.cell** %NIL, align 8
  store %struct.cell* %3, %struct.cell** %third_arg, align 8
  store i32 0, i32* %num, align 4
  %4 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL2 = getelementptr inbounds %struct.scheme, %struct.scheme* %5, i32 0, i32 17
  %6 = load %struct.cell*, %struct.cell** %NIL2, align 8
  %cmp = icmp ne %struct.cell* %4, %6
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %7, i32 0, i32 58
  %8 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %is_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %8, i32 0, i32 16
  %9 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string, align 8
  %10 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr3 = getelementptr inbounds %struct.scheme, %struct.scheme* %10, i32 0, i32 58
  %11 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr3, align 8
  %pair_car = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %11, i32 0, i32 36
  %12 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car, align 8
  %13 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call = call %struct.cell* %12(%struct.cell* %13)
  store %struct.cell* %call, %struct.cell** %first_arg, align 8
  %call4 = call i32 %9(%struct.cell* %call)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %land.lhs.true.5, label %if.then

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %14 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr6 = getelementptr inbounds %struct.scheme, %struct.scheme* %14, i32 0, i32 58
  %15 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr6, align 8
  %pair_cdr = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %15, i32 0, i32 37
  %16 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr, align 8
  %17 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call7 = call %struct.cell* %16(%struct.cell* %17)
  store %struct.cell* %call7, %struct.cell** %args.addr, align 8
  %tobool8 = icmp ne %struct.cell* %call7, null
  br i1 %tobool8, label %land.lhs.true.9, label %if.then

land.lhs.true.9:                                  ; preds = %land.lhs.true.5
  %18 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr10 = getelementptr inbounds %struct.scheme, %struct.scheme* %18, i32 0, i32 58
  %19 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr10, align 8
  %is_pair = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %19, i32 0, i32 35
  %20 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_pair, align 8
  %21 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call11 = call i32 %20(%struct.cell* %21)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.then

land.lhs.true.13:                                 ; preds = %land.lhs.true.9
  %22 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr14 = getelementptr inbounds %struct.scheme, %struct.scheme* %22, i32 0, i32 58
  %23 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr14, align 8
  %is_string15 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %23, i32 0, i32 16
  %24 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string15, align 8
  %25 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr16 = getelementptr inbounds %struct.scheme, %struct.scheme* %25, i32 0, i32 58
  %26 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr16, align 8
  %pair_car17 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %26, i32 0, i32 36
  %27 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car17, align 8
  %28 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call18 = call %struct.cell* %27(%struct.cell* %28)
  store %struct.cell* %call18, %struct.cell** %second_arg, align 8
  %call19 = call i32 %24(%struct.cell* %call18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.13, %land.lhs.true.9, %land.lhs.true.5, %land.lhs.true, %entry
  %29 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F21 = getelementptr inbounds %struct.scheme, %struct.scheme* %29, i32 0, i32 21
  %30 = load %struct.cell*, %struct.cell** %F21, align 8
  store %struct.cell* %30, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.13
  %31 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr22 = getelementptr inbounds %struct.scheme, %struct.scheme* %31, i32 0, i32 58
  %32 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr22, align 8
  %string_value = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %32, i32 0, i32 18
  %33 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value, align 8
  %34 = load %struct.cell*, %struct.cell** %first_arg, align 8
  %call23 = call i8* %33(%struct.cell* %34)
  store i8* %call23, i8** %pattern, align 8
  %35 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr24 = getelementptr inbounds %struct.scheme, %struct.scheme* %35, i32 0, i32 58
  %36 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr24, align 8
  %string_value25 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %36, i32 0, i32 18
  %37 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value25, align 8
  %38 = load %struct.cell*, %struct.cell** %second_arg, align 8
  %call26 = call i8* %37(%struct.cell* %38)
  store i8* %call26, i8** %string, align 8
  %39 = load i8*, i8** %string, align 8
  %call27 = call i32 @g_utf8_validate(i8* %39, i64 -1, i8** null)
  store i32 %call27, i32* %is_valid_utf8, align 4
  %40 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr28 = getelementptr inbounds %struct.scheme, %struct.scheme* %40, i32 0, i32 58
  %41 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr28, align 8
  %pair_cdr29 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %41, i32 0, i32 37
  %42 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr29, align 8
  %43 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call30 = call %struct.cell* %42(%struct.cell* %43)
  store %struct.cell* %call30, %struct.cell** %args.addr, align 8
  %44 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %45 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL31 = getelementptr inbounds %struct.scheme, %struct.scheme* %45, i32 0, i32 17
  %46 = load %struct.cell*, %struct.cell** %NIL31, align 8
  %cmp32 = icmp ne %struct.cell* %44, %46
  br i1 %cmp32, label %if.then.33, label %if.end.48

if.then.33:                                       ; preds = %if.end
  %47 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr34 = getelementptr inbounds %struct.scheme, %struct.scheme* %47, i32 0, i32 58
  %48 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr34, align 8
  %is_pair35 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %48, i32 0, i32 35
  %49 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_pair35, align 8
  %50 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call36 = call i32 %49(%struct.cell* %50)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.then.45

land.lhs.true.38:                                 ; preds = %if.then.33
  %51 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr39 = getelementptr inbounds %struct.scheme, %struct.scheme* %51, i32 0, i32 58
  %52 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr39, align 8
  %is_vector = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %52, i32 0, i32 28
  %53 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_vector, align 8
  %54 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr40 = getelementptr inbounds %struct.scheme, %struct.scheme* %54, i32 0, i32 58
  %55 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr40, align 8
  %pair_car41 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %55, i32 0, i32 36
  %56 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car41, align 8
  %57 = load %struct.cell*, %struct.cell** %args.addr, align 8
  %call42 = call %struct.cell* %56(%struct.cell* %57)
  store %struct.cell* %call42, %struct.cell** %third_arg, align 8
  %call43 = call i32 %53(%struct.cell* %call42)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.else, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.38, %if.then.33
  %58 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F46 = getelementptr inbounds %struct.scheme, %struct.scheme* %58, i32 0, i32 21
  %59 = load %struct.cell*, %struct.cell** %F46, align 8
  store %struct.cell* %59, %struct.cell** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.38
  %60 = load %struct.cell*, %struct.cell** %third_arg, align 8
  %_object = getelementptr inbounds %struct.cell, %struct.cell* %60, i32 0, i32 1
  %_number = bitcast %union.anon* %_object to %struct.num*
  %value = getelementptr inbounds %struct.num, %struct.num* %_number, i32 0, i32 1
  %ivalue = bitcast %union.anon.0* %value to i64*
  %61 = load i64, i64* %ivalue, align 8
  %conv = trunc i64 %61 to i32
  store i32 %conv, i32* %num, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end
  %62 = load i8*, i8** %pattern, align 8
  %call49 = call %struct._GRegex* @g_regex_new(i8* %62, i32 8, i32 0, %struct._GError** null)
  store %struct._GRegex* %call49, %struct._GRegex** %regex, align 8
  %63 = load %struct._GRegex*, %struct._GRegex** %regex, align 8
  %tobool50 = icmp ne %struct._GRegex* %63, null
  br i1 %tobool50, label %if.end.53, label %if.then.51

if.then.51:                                       ; preds = %if.end.48
  %64 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %F52 = getelementptr inbounds %struct.scheme, %struct.scheme* %64, i32 0, i32 21
  %65 = load %struct.cell*, %struct.cell** %F52, align 8
  store %struct.cell* %65, %struct.cell** %retval
  br label %return

if.end.53:                                        ; preds = %if.end.48
  %66 = load i32, i32* %num, align 4
  %tobool54 = icmp ne i32 %66, 0
  br i1 %tobool54, label %if.else.57, label %if.then.55

if.then.55:                                       ; preds = %if.end.53
  %67 = load %struct._GRegex*, %struct._GRegex** %regex, align 8
  %68 = load i8*, i8** %string, align 8
  %call56 = call i32 @g_regex_match(%struct._GRegex* %67, i8* %68, i32 0, %struct._GMatchInfo** null)
  store i32 %call56, i32* %success, align 4
  br label %if.end.80

if.else.57:                                       ; preds = %if.end.53
  %69 = load %struct._GRegex*, %struct._GRegex** %regex, align 8
  %70 = load i8*, i8** %string, align 8
  %call58 = call i32 @g_regex_match(%struct._GRegex* %69, i8* %70, i32 0, %struct._GMatchInfo** %match_info)
  store i32 %call58, i32* %success, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.57
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %num, align 4
  %cmp59 = icmp slt i32 %71, %72
  br i1 %cmp59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %73 = load %struct._GMatchInfo*, %struct._GMatchInfo** %match_info, align 8
  %74 = load i32, i32* %i, align 4
  %call61 = call i32 @g_match_info_fetch_pos(%struct._GMatchInfo* %73, i32 %74, i32* %start, i32* %end)
  %75 = load i32, i32* %is_valid_utf8, align 4
  %tobool62 = icmp ne i32 %75, 0
  br i1 %tobool62, label %if.then.63, label %if.end.70

if.then.63:                                       ; preds = %for.body
  %76 = load i8*, i8** %string, align 8
  %77 = load i8*, i8** %string, align 8
  %78 = load i32, i32* %start, align 4
  %idx.ext = sext i32 %78 to i64
  %add.ptr = getelementptr inbounds i8, i8* %77, i64 %idx.ext
  %call64 = call i64 @g_utf8_pointer_to_offset(i8* %76, i8* %add.ptr) #3
  %conv65 = trunc i64 %call64 to i32
  store i32 %conv65, i32* %start, align 4
  %79 = load i8*, i8** %string, align 8
  %80 = load i8*, i8** %string, align 8
  %81 = load i32, i32* %end, align 4
  %idx.ext66 = sext i32 %81 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %80, i64 %idx.ext66
  %call68 = call i64 @g_utf8_pointer_to_offset(i8* %79, i8* %add.ptr67) #3
  %conv69 = trunc i64 %call68 to i32
  store i32 %conv69, i32* %end, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.63, %for.body
  %82 = load %struct.cell*, %struct.cell** %third_arg, align 8
  %83 = load i32, i32* %i, align 4
  %84 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr71 = getelementptr inbounds %struct.scheme, %struct.scheme* %84, i32 0, i32 58
  %85 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr71, align 8
  %cons = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %85, i32 0, i32 1
  %86 = load %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)** %cons, align 8
  %87 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %88 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr72 = getelementptr inbounds %struct.scheme, %struct.scheme* %88, i32 0, i32 58
  %89 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr72, align 8
  %mk_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %89, i32 0, i32 4
  %90 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer, align 8
  %91 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %92 = load i32, i32* %start, align 4
  %conv73 = sext i32 %92 to i64
  %call74 = call %struct.cell* %90(%struct.scheme* %91, i64 %conv73)
  %93 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr75 = getelementptr inbounds %struct.scheme, %struct.scheme* %93, i32 0, i32 58
  %94 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr75, align 8
  %mk_integer76 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %94, i32 0, i32 4
  %95 = load %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, i64)** %mk_integer76, align 8
  %96 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %97 = load i32, i32* %end, align 4
  %conv77 = sext i32 %97 to i64
  %call78 = call %struct.cell* %95(%struct.scheme* %96, i64 %conv77)
  %call79 = call %struct.cell* %86(%struct.scheme* %87, %struct.cell* %call74, %struct.cell* %call78)
  call void @set_vector_elem(%struct.cell* %82, i32 %83, %struct.cell* %call79)
  br label %for.inc

for.inc:                                          ; preds = %if.end.70
  %98 = load i32, i32* %i, align 4
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %99 = load %struct._GMatchInfo*, %struct._GMatchInfo** %match_info, align 8
  call void @g_match_info_free(%struct._GMatchInfo* %99)
  br label %if.end.80

if.end.80:                                        ; preds = %for.end, %if.then.55
  %100 = load i32, i32* %success, align 4
  %tobool81 = icmp ne i32 %100, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.80
  %101 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %T = getelementptr inbounds %struct.scheme, %struct.scheme* %101, i32 0, i32 19
  %102 = load %struct.cell*, %struct.cell** %T, align 8
  store %struct.cell* %102, %struct.cell** %retval1, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.80
  %103 = load %struct._GRegex*, %struct._GRegex** %regex, align 8
  call void @g_regex_unref(%struct._GRegex* %103)
  %104 = load %struct.cell*, %struct.cell** %retval1, align 8
  store %struct.cell* %104, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end.83, %if.then.51, %if.then.45, %if.then
  %105 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %105
}

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

declare %struct._GRegex* @g_regex_new(i8*, i32, i32, %struct._GError**) #1

declare i32 @g_regex_match(%struct._GRegex*, i8*, i32, %struct._GMatchInfo**) #1

declare i32 @g_match_info_fetch_pos(%struct._GMatchInfo*, i32, i32*, i32*) #1

; Function Attrs: nounwind readonly
declare i64 @g_utf8_pointer_to_offset(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @set_vector_elem(%struct.cell* %vec, i32 %ielem, %struct.cell* %newel) #0 {
entry:
  %vec.addr = alloca %struct.cell*, align 8
  %ielem.addr = alloca i32, align 4
  %newel.addr = alloca %struct.cell*, align 8
  %n = alloca i32, align 4
  store %struct.cell* %vec, %struct.cell** %vec.addr, align 8
  store i32 %ielem, i32* %ielem.addr, align 4
  store %struct.cell* %newel, %struct.cell** %newel.addr, align 8
  %0 = load i32, i32* %ielem.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %n, align 4
  %1 = load i32, i32* %ielem.addr, align 4
  %rem = srem i32 %1, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.cell*, %struct.cell** %newel.addr, align 8
  %3 = load i32, i32* %n, align 4
  %add = add nsw i32 1, %3
  %idxprom = sext i32 %add to i64
  %4 = load %struct.cell*, %struct.cell** %vec.addr, align 8
  %arrayidx = getelementptr inbounds %struct.cell, %struct.cell* %4, i64 %idxprom
  %_object = getelementptr inbounds %struct.cell, %struct.cell* %arrayidx, i32 0, i32 1
  %_cons = bitcast %union.anon* %_object to %struct.anon.4*
  %_car = getelementptr inbounds %struct.anon.4, %struct.anon.4* %_cons, i32 0, i32 0
  store %struct.cell* %2, %struct.cell** %_car, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.cell*, %struct.cell** %newel.addr, align 8
  %6 = load i32, i32* %n, align 4
  %add1 = add nsw i32 1, %6
  %idxprom2 = sext i32 %add1 to i64
  %7 = load %struct.cell*, %struct.cell** %vec.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.cell, %struct.cell* %7, i64 %idxprom2
  %_object4 = getelementptr inbounds %struct.cell, %struct.cell* %arrayidx3, i32 0, i32 1
  %_cons5 = bitcast %union.anon* %_object4 to %struct.anon.4*
  %_cdr = getelementptr inbounds %struct.anon.4, %struct.anon.4* %_cons5, i32 0, i32 1
  store %struct.cell* %5, %struct.cell** %_cdr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @g_match_info_free(%struct._GMatchInfo*) #1

declare void @g_regex_unref(%struct._GRegex*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
