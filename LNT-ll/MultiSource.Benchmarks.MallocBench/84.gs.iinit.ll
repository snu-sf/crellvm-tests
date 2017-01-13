; ModuleID = './MultiSource.Benchmarks.MallocBench/84.gs.iinit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@dstack = external global [0 x %struct.ref_s], align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/iinit.c\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"dict_put failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"errordict\00", align 1
@name_errordict = common global %struct.ref_s zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"ErrorNames\00", align 1
@name_ErrorNames = common global %struct.ref_s zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define void @initial_enter_name(i8* %nstr, %struct.ref_s* %pref) #0 {
entry:
  %nstr.addr = alloca i8*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %nref = alloca %struct.ref_s, align 8
  store i8* %nstr, i8** %nstr.addr, align 8
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8
  %0 = load i8*, i8** %nstr.addr, align 8
  %call = call i32 (i8*, %struct.ref_s*, ...) bitcast (i32 (...)* @name_enter to i32 (i8*, %struct.ref_s*, ...)*)(i8* %0, %struct.ref_s* %nref)
  %1 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %call1 = call i32 @dict_put(%struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i64 0), %struct.ref_s* %nref, %struct.ref_s* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i32 43)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare i32 @name_enter(...) #1

declare i32 @dict_put(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @initial_enter_op(i8* %nstr, i32 (%struct.ref_s*)* %proc) #0 {
entry:
  %nstr.addr = alloca i8*, align 8
  %proc.addr = alloca i32 (%struct.ref_s*)*, align 8
  %oper = alloca %struct.ref_s, align 8
  store i8* %nstr, i8** %nstr.addr, align 8
  store i32 (%struct.ref_s*)* %proc, i32 (%struct.ref_s*)** %proc.addr, align 8
  %0 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %proc.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %oper, i32 0, i32 0
  %opproc = bitcast %union.v* %value to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* %0, i32 (%struct.ref_s*)** %opproc, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %oper, i32 0, i32 1
  store i16 37, i16* %type_attrs, align 2
  %1 = load i8*, i8** %nstr.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %sub = sub nsw i32 %conv, 48
  %conv1 = trunc i32 %sub to i16
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %oper, i32 0, i32 2
  store i16 %conv1, i16* %size, align 2
  %call = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @interp_fix_op to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %oper)
  %3 = load i8*, i8** %nstr.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  call void @initial_enter_name(i8* %add.ptr, %struct.ref_s* %oper)
  ret void
}

declare i32 @interp_fix_op(...) #1

; Function Attrs: nounwind uwtable
define void @obj_init() #0 {
entry:
  %vmark = alloca %struct.ref_s, align 8
  %vnull = alloca %struct.ref_s, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vmark, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 0, i64* %intval, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vmark, i32 0, i32 1
  store i16 24, i16* %type_attrs, align 2
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vnull, i32 0, i32 0
  %intval2 = bitcast %union.v* %value1 to i64*
  store i64 0, i64* %intval2, align 8
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vnull, i32 0, i32 1
  store i16 32, i16* %type_attrs3, align 2
  %call = call i32 @dict_create(i32 401, %struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i64 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i64 1) to i8*), i8* bitcast ([0 x %struct.ref_s]* @dstack to i8*), i64 16, i32 8, i1 false)
  call void @initial_enter_name(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct.ref_s* %vmark)
  call void @initial_enter_name(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s* %vnull)
  %call4 = call i32 (i8*, %struct.ref_s*, ...) bitcast (i32 (...)* @name_enter to i32 (i8*, %struct.ref_s*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), %struct.ref_s* @name_errordict)
  %call5 = call i32 (i8*, %struct.ref_s*, ...) bitcast (i32 (...)* @name_enter to i32 (i8*, %struct.ref_s*, ...)*)(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct.ref_s* @name_ErrorNames)
  ret void
}

declare i32 @dict_create(i32, %struct.ref_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @op_init() #0 {
entry:
  call void (...) @zarith_op_init()
  call void (...) @zarray_op_init()
  call void (...) @zcontrol_op_init()
  call void (...) @zdict_op_init()
  call void (...) @zfile_op_init()
  call void (...) @zgeneric_op_init()
  call void (...) @zmath_op_init()
  call void (...) @zmisc_op_init()
  call void (...) @zpacked_op_init()
  call void (...) @zrelbit_op_init()
  call void (...) @zstack_op_init()
  call void (...) @zstring_op_init()
  call void (...) @ztype_op_init()
  call void (...) @zvmem_op_init()
  call void (...) @zchar_op_init()
  call void (...) @zcolor_op_init()
  call void (...) @zdevice_op_init()
  call void (...) @zfont_op_init()
  call void (...) @zgstate_op_init()
  call void (...) @zht_op_init()
  call void (...) @zmatrix_op_init()
  call void (...) @zpaint_op_init()
  call void (...) @zpath_op_init()
  call void (...) @zpath2_op_init()
  ret void
}

declare void @zarith_op_init(...) #1

declare void @zarray_op_init(...) #1

declare void @zcontrol_op_init(...) #1

declare void @zdict_op_init(...) #1

declare void @zfile_op_init(...) #1

declare void @zgeneric_op_init(...) #1

declare void @zmath_op_init(...) #1

declare void @zmisc_op_init(...) #1

declare void @zpacked_op_init(...) #1

declare void @zrelbit_op_init(...) #1

declare void @zstack_op_init(...) #1

declare void @zstring_op_init(...) #1

declare void @ztype_op_init(...) #1

declare void @zvmem_op_init(...) #1

declare void @zchar_op_init(...) #1

declare void @zcolor_op_init(...) #1

declare void @zdevice_op_init(...) #1

declare void @zfont_op_init(...) #1

declare void @zgstate_op_init(...) #1

declare void @zht_op_init(...) #1

declare void @zmatrix_op_init(...) #1

declare void @zpaint_op_init(...) #1

declare void @zpath_op_init(...) #1

declare void @zpath2_op_init(...) #1

; Function Attrs: nounwind uwtable
define void @z_op_init(%struct.op_def* %op_table) #0 {
entry:
  %op_table.addr = alloca %struct.op_def*, align 8
  %def = alloca %struct.op_def*, align 8
  store %struct.op_def* %op_table, %struct.op_def** %op_table.addr, align 8
  %0 = load %struct.op_def*, %struct.op_def** %op_table.addr, align 8
  store %struct.op_def* %0, %struct.op_def** %def, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.op_def*, %struct.op_def** %def, align 8
  %name = getelementptr inbounds %struct.op_def, %struct.op_def* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.op_def*, %struct.op_def** %def, align 8
  %name1 = getelementptr inbounds %struct.op_def, %struct.op_def* %3, i32 0, i32 0
  %4 = load i8*, i8** %name1, align 8
  %5 = load %struct.op_def*, %struct.op_def** %def, align 8
  %proc = getelementptr inbounds %struct.op_def, %struct.op_def* %5, i32 0, i32 1
  %6 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %proc, align 8
  call void @initial_enter_op(i8* %4, i32 (%struct.ref_s*)* %6)
  %7 = load %struct.op_def*, %struct.op_def** %def, align 8
  %incdec.ptr = getelementptr inbounds %struct.op_def, %struct.op_def* %7, i32 1
  store %struct.op_def* %incdec.ptr, %struct.op_def** %def, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
