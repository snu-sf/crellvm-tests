; ModuleID = './lib/useropt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pair_htable = type opaque
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"unknown user option `%s'\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Known User Options\00", align 1

; Function Attrs: nounwind uwtable
define %struct.pair_htable* @user_options_table_new() #0 {
entry:
  %call = call %struct.pair_htable* @pair_table_new()
  ret %struct.pair_htable* %call
}

declare %struct.pair_htable* @pair_table_new() #1

; Function Attrs: nounwind uwtable
define void @user_options_table_free(%struct.pair_htable* %table) #0 {
entry:
  %table.addr = alloca %struct.pair_htable*, align 8
  store %struct.pair_htable* %table, %struct.pair_htable** %table.addr, align 8
  %0 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  call void @pair_table_free(%struct.pair_htable* %0)
  ret void
}

declare void @pair_table_free(%struct.pair_htable*) #1

; Function Attrs: nounwind uwtable
define void @user_option_add(%struct.a2ps_job* %job, i8* %key, i8* %value) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %user_options = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 5
  %1 = load %struct.pair_htable*, %struct.pair_htable** %user_options, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i8*, i8** %value.addr, align 8
  call void @pair_add(%struct.pair_htable* %1, i8* %2, i8* %3)
  ret void
}

declare void @pair_add(%struct.pair_htable*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @user_option_get(%struct.a2ps_job* %job, i8* %shortcut) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %shortcut.addr = alloca i8*, align 8
  %res = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %shortcut, i8** %shortcut.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %user_options = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 5
  %1 = load %struct.pair_htable*, %struct.pair_htable** %user_options, align 8
  %2 = load i8*, i8** %shortcut.addr, align 8
  %call = call i8* @pair_get(%struct.pair_htable* %1, i8* %2)
  store i8* %call, i8** %res, align 8
  %3 = load i8*, i8** %res, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #3
  %4 = load i8*, i8** %shortcut.addr, align 8
  %call2 = call i8* @quotearg(i8* %4)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call1, i8* %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %res, align 8
  ret i8* %5
}

declare i8* @pair_get(%struct.pair_htable*, i8*) #1

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @quotearg(i8*) #1

; Function Attrs: nounwind uwtable
define void @user_options_list_short(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* %call, %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %1)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %user_options = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 5
  %3 = load %struct.pair_htable*, %struct.pair_htable** %user_options, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @pair_table_list_short(%struct.pair_htable* %3, %struct._IO_FILE* %4)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare void @pair_table_list_short(%struct.pair_htable*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @user_options_list_long(%struct.a2ps_job* %job, %struct._IO_FILE* %stream) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* %call, %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %1)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %user_options = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 5
  %3 = load %struct.pair_htable*, %struct.pair_htable** %user_options, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @pair_table_list_long(%struct.pair_htable* %3, %struct._IO_FILE* %4)
  ret void
}

declare void @pair_table_list_long(%struct.pair_htable*, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
