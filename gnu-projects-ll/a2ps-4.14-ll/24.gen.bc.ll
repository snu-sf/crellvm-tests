; ModuleID = './lib/gen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.file_job = type { i8*, i8*, i8*, i8*, i8, %struct.tm, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"ps\00", align 1

; Function Attrs: nounwind uwtable
define void @a2ps_print_char(%struct.a2ps_job* %job, i32 %c, i32 %new_face) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %c.addr = alloca i32, align 4
  %new_face.addr = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i32 %new_face, i32* %new_face.addr, align 4
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %output_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 26
  %1 = load i32, i32* %output_format, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %3 = load i32, i32* %c.addr, align 4
  %4 = load i32, i32* %new_face.addr, align 4
  call void @ps_print_char(%struct.a2ps_job* %2, i32 %3, i32 %4)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @abort() #3
  unreachable

sw.epilog:                                        ; preds = %sw.bb
  ret void
}

declare void @ps_print_char(%struct.a2ps_job*, i32, i32) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: nounwind uwtable
define void @a2ps_print_string(%struct.a2ps_job* %job, i8* %string, i32 %new_face) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %string.addr = alloca i8*, align 8
  %new_face.addr = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %new_face, i32* %new_face.addr, align 4
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %output_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 26
  %1 = load i32, i32* %output_format, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %2 = load i8*, i8** %string.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %5 = load i8*, i8** %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %new_face.addr, align 4
  call void @ps_print_char(%struct.a2ps_job* %4, i32 %conv, i32 %7)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @abort() #3
  unreachable

sw.epilog:                                        ; preds = %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @a2ps_print_buffer(%struct.a2ps_job* %job, i8* %buffer, i64 %start, i64 %end, i32 %new_face) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %buffer.addr = alloca i8*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %new_face.addr = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i32 %new_face, i32* %new_face.addr, align 4
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %output_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 26
  %1 = load i32, i32* %output_format, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i64, i64* %start.addr, align 8
  store i64 %2, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %end.addr, align 8
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %6 = load i64, i64* %i, align 8
  %7 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %6
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = load i32, i32* %new_face.addr, align 4
  call void @ps_print_char(%struct.a2ps_job* %5, i32 %conv, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @abort() #3
  unreachable

sw.epilog:                                        ; preds = %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @a2ps_open_output_session(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %output_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 26
  %1 = load i32, i32* %output_format, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @ps_begin(%struct.a2ps_job* %2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @abort() #3
  unreachable

sw.epilog:                                        ; preds = %sw.bb
  ret void
}

declare void @ps_begin(%struct.a2ps_job*) #1

; Function Attrs: nounwind uwtable
define void @a2ps_open_input_session(%struct.a2ps_job* %job, i8* %name) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %name.addr = alloca i8*, align 8
  %file_job = alloca %struct.file_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %stdin_filename = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 24
  %4 = load i8*, i8** %stdin_filename, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i8*, i8** %name.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ %5, %cond.false ]
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %total_files = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 11
  %7 = load i32, i32* %total_files, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %total_files, align 4
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %run_tm = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 6
  %call = call %struct.file_job* @_a2ps_file_job_new(i8* %cond, i32 %inc, %struct.tm* %run_tm)
  store %struct.file_job* %call, %struct.file_job** %file_job, align 8
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 59
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %tag1, i32 0, i32 0
  store i8 0, i8* %arraydecay, align 1
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 60
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %tag2, i32 0, i32 0
  store i8 0, i8* %arraydecay3, align 1
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 61
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %tag3, i32 0, i32 0
  store i8 0, i8* %arraydecay4, align 1
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %tag4 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %12, i32 0, i32 62
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %tag4, i32 0, i32 0
  store i8 0, i8* %arraydecay5, align 1
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %output_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %13, i32 0, i32 26
  %14 = load i32, i32* %output_format, align 4
  switch i32 %14, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %cond.end
  %15 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @ps_begin_file(%struct.a2ps_job* %15)
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  call void @abort() #3
  unreachable

sw.epilog:                                        ; preds = %sw.bb
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 68
  %17 = load %struct.darray*, %struct.darray** %jobs, align 8
  %18 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %19 = bitcast %struct.file_job* %18 to i8*
  call void @da_append(%struct.darray* %17, i8* %19)
  ret void
}

declare %struct.file_job* @_a2ps_file_job_new(i8*, i32, %struct.tm*) #1

declare void @ps_begin_file(%struct.a2ps_job*) #1

declare void @da_append(%struct.darray*, i8*) #1

; Function Attrs: nounwind uwtable
define void @a2ps_close_input_session(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %output_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 26
  %1 = load i32, i32* %output_format, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @ps_end_file(%struct.a2ps_job* %2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @abort() #3
  unreachable

sw.epilog:                                        ; preds = %sw.bb
  ret void
}

declare void @ps_end_file(%struct.a2ps_job*) #1

; Function Attrs: nounwind uwtable
define void @a2ps_close_output_session(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %output_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 26
  %1 = load i32, i32* %output_format, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  call void @ps_end(%struct.a2ps_job* %2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @abort() #3
  unreachable

sw.epilog:                                        ; preds = %sw.bb
  ret void
}

declare void @ps_end(%struct.a2ps_job*) #1

; Function Attrs: nounwind uwtable
define i8* @output_format_to_key(i32 %format) #0 {
entry:
  %format.addr = alloca i32, align 4
  store i32 %format, i32* %format.addr, align 4
  %0 = load i32, i32* %format.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  ret i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)

sw.default:                                       ; preds = %entry
  call void @abort() #3
  unreachable
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
