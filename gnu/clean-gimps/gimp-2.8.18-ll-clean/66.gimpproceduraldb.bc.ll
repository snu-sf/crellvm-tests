; ModuleID = './libgimp/gimpproceduraldb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParamDef = type { i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define i32 @gimp_procedural_db_proc_info(i8* %procedure, i8** %blurb, i8** %help, i8** %author, i8** %copyright, i8** %date, i32* %proc_type, i32* %num_args, i32* %num_values, %struct._GimpParamDef** %args, %struct._GimpParamDef** %return_vals) #0 {
entry:
  %retval = alloca i32, align 4
  %procedure.addr = alloca i8*, align 8
  %blurb.addr = alloca i8**, align 8
  %help.addr = alloca i8**, align 8
  %author.addr = alloca i8**, align 8
  %copyright.addr = alloca i8**, align 8
  %date.addr = alloca i8**, align 8
  %proc_type.addr = alloca i32*, align 8
  %num_args.addr = alloca i32*, align 8
  %num_values.addr = alloca i32*, align 8
  %args.addr = alloca %struct._GimpParamDef**, align 8
  %return_vals.addr = alloca %struct._GimpParamDef**, align 8
  %i = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %procedure, i8** %procedure.addr, align 8
  store i8** %blurb, i8*** %blurb.addr, align 8
  store i8** %help, i8*** %help.addr, align 8
  store i8** %author, i8*** %author.addr, align 8
  store i8** %copyright, i8*** %copyright.addr, align 8
  store i8** %date, i8*** %date.addr, align 8
  store i32* %proc_type, i32** %proc_type.addr, align 8
  store i32* %num_args, i32** %num_args.addr, align 8
  store i32* %num_values, i32** %num_values.addr, align 8
  store %struct._GimpParamDef** %args, %struct._GimpParamDef*** %args.addr, align 8
  store %struct._GimpParamDef** %return_vals, %struct._GimpParamDef*** %return_vals.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %procedure.addr, align 8
  %1 = load i8**, i8*** %blurb.addr, align 8
  %2 = load i8**, i8*** %help.addr, align 8
  %3 = load i8**, i8*** %author.addr, align 8
  %4 = load i8**, i8*** %copyright.addr, align 8
  %5 = load i8**, i8*** %date.addr, align 8
  %6 = load i32*, i32** %proc_type.addr, align 8
  %7 = load i32*, i32** %num_args.addr, align 8
  %8 = load i32*, i32** %num_values.addr, align 8
  %call = call i32 @_gimp_procedural_db_proc_info(i8* %0, i8** %1, i8** %2, i8** %3, i8** %4, i8** %5, i32* %6, i32* %7, i32* %8)
  store i32 %call, i32* %success, align 4
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %10 = load i32*, i32** %num_args.addr, align 8
  %11 = load i32, i32* %10, align 4
  %conv = sext i32 %11 to i64
  %call1 = call noalias i8* @g_malloc_n(i64 %conv, i64 24)
  %12 = bitcast i8* %call1 to %struct._GimpParamDef*
  %13 = load %struct._GimpParamDef**, %struct._GimpParamDef*** %args.addr, align 8
  store %struct._GimpParamDef* %12, %struct._GimpParamDef** %13, align 8
  %14 = load i32*, i32** %num_values.addr, align 8
  %15 = load i32, i32* %14, align 4
  %conv2 = sext i32 %15 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv2, i64 24)
  %16 = bitcast i8* %call3 to %struct._GimpParamDef*
  %17 = load %struct._GimpParamDef**, %struct._GimpParamDef*** %return_vals.addr, align 8
  store %struct._GimpParamDef* %16, %struct._GimpParamDef** %17, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %18 = load i32, i32* %i, align 4
  %19 = load i32*, i32** %num_args.addr, align 8
  %20 = load i32, i32* %19, align 4
  %cmp = icmp slt i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %procedure.addr, align 8
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct._GimpParamDef**, %struct._GimpParamDef*** %args.addr, align 8
  %25 = load %struct._GimpParamDef*, %struct._GimpParamDef** %24, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %25, i64 %idxprom
  %type = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx, i32 0, i32 0
  %26 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %26 to i64
  %27 = load %struct._GimpParamDef**, %struct._GimpParamDef*** %args.addr, align 8
  %28 = load %struct._GimpParamDef*, %struct._GimpParamDef** %27, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %28, i64 %idxprom5
  %name = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx6, i32 0, i32 1
  %29 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %29 to i64
  %30 = load %struct._GimpParamDef**, %struct._GimpParamDef*** %args.addr, align 8
  %31 = load %struct._GimpParamDef*, %struct._GimpParamDef** %30, align 8
  %arrayidx8 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %31, i64 %idxprom7
  %description = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx8, i32 0, i32 2
  %call9 = call i32 @gimp_procedural_db_proc_arg(i8* %21, i32 %22, i32* %type, i8** %name, i8** %description)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %for.body
  %32 = load %struct._GimpParamDef**, %struct._GimpParamDef*** %args.addr, align 8
  %33 = load %struct._GimpParamDef*, %struct._GimpParamDef** %32, align 8
  %34 = bitcast %struct._GimpParamDef* %33 to i8*
  call void @g_free(i8* %34)
  %35 = load %struct._GimpParamDef**, %struct._GimpParamDef*** %return_vals.addr, align 8
  %36 = load %struct._GimpParamDef*, %struct._GimpParamDef** %35, align 8
  %37 = bitcast %struct._GimpParamDef* %36 to i8*
  call void @g_free(i8* %37)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.29, %for.end
  %39 = load i32, i32* %i, align 4
  %40 = load i32*, i32** %num_values.addr, align 8
  %41 = load i32, i32* %40, align 4
  %cmp13 = icmp slt i32 %39, %41
  br i1 %cmp13, label %for.body.15, label %for.end.31

for.body.15:                                      ; preds = %for.cond.12
  %42 = load i8*, i8** %procedure.addr, align 8
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %44 to i64
  %45 = load %struct._GimpParamDef**, %struct._GimpParamDef*** %return_vals.addr, align 8
  %46 = load %struct._GimpParamDef*, %struct._GimpParamDef** %45, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %46, i64 %idxprom16
  %type18 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx17, i32 0, i32 0
  %47 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %47 to i64
  %48 = load %struct._GimpParamDef**, %struct._GimpParamDef*** %return_vals.addr, align 8
  %49 = load %struct._GimpParamDef*, %struct._GimpParamDef** %48, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %49, i64 %idxprom19
  %name21 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx20, i32 0, i32 1
  %50 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %50 to i64
  %51 = load %struct._GimpParamDef**, %struct._GimpParamDef*** %return_vals.addr, align 8
  %52 = load %struct._GimpParamDef*, %struct._GimpParamDef** %51, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %52, i64 %idxprom22
  %description24 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx23, i32 0, i32 2
  %call25 = call i32 @gimp_procedural_db_proc_val(i8* %42, i32 %43, i32* %type18, i8** %name21, i8** %description24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %for.body.15
  %53 = load %struct._GimpParamDef**, %struct._GimpParamDef*** %args.addr, align 8
  %54 = load %struct._GimpParamDef*, %struct._GimpParamDef** %53, align 8
  %55 = bitcast %struct._GimpParamDef* %54 to i8*
  call void @g_free(i8* %55)
  %56 = load %struct._GimpParamDef**, %struct._GimpParamDef*** %return_vals.addr, align 8
  %57 = load %struct._GimpParamDef*, %struct._GimpParamDef** %56, align 8
  %58 = bitcast %struct._GimpParamDef* %57 to i8*
  call void @g_free(i8* %58)
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %for.body.15
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %59 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %59, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.12

for.end.31:                                       ; preds = %for.cond.12
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.31, %entry
  %60 = load i32, i32* %success, align 4
  store i32 %60, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.27, %if.then.11
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare hidden i32 @_gimp_procedural_db_proc_info(i8*, i8**, i8**, i8**, i8**, i8**, i32*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_procedural_db_proc_arg(i8*, i32, i32*, i8**, i8**) #1

declare void @g_free(i8*) #1

declare i32 @gimp_procedural_db_proc_val(i8*, i32, i32*, i8**, i8**) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_procedural_db_get_data(i8* %identifier, i8* %data) #0 {
entry:
  %identifier.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %size = alloca i32, align 4
  %hack = alloca i8*, align 8
  %success = alloca i32, align 4
  store i8* %identifier, i8** %identifier.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %identifier.addr, align 8
  %call = call i32 @_gimp_procedural_db_get_data(i8* %0, i32* %size, i8** %hack)
  store i32 %call, i32* %success, align 4
  %1 = load i8*, i8** %hack, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i8*, i8** %hack, align 8
  %4 = load i32, i32* %size, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 %mul, i32 1, i1 false)
  %5 = load i8*, i8** %hack, align 8
  call void @g_free(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %success, align 4
  ret i32 %6
}

declare hidden i32 @_gimp_procedural_db_get_data(i8*, i32*, i8**) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_procedural_db_set_data(i8* %identifier, i8* %data, i32 %bytes) #0 {
entry:
  %identifier.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  store i8* %identifier, i8** %identifier.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  %0 = load i8*, i8** %identifier.addr, align 8
  %1 = load i32, i32* %bytes.addr, align 4
  %2 = load i8*, i8** %data.addr, align 8
  %call = call i32 @_gimp_procedural_db_set_data(i8* %0, i32 %1, i8* %2)
  ret i32 %call
}

declare hidden i32 @_gimp_procedural_db_set_data(i8*, i32, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
