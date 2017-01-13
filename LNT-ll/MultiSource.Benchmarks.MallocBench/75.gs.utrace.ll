; ModuleID = './MultiSource.Benchmarks.MallocBench/75.gs.utrace.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@trace_flush_flag = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i8* @strupr(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @trace_open_map(i8* %mapname, i64* %preloc) #0 {
entry:
  %mapname.addr = alloca i8*, align 8
  %preloc.addr = alloca i64*, align 8
  store i8* %mapname, i8** %mapname.addr, align 8
  store i64* %preloc, i64** %preloc.addr, align 8
  ret %struct._IO_FILE* null
}

; Function Attrs: nounwind uwtable
define i8* @trace_next_symbol(i8** %paddr, %struct._IO_FILE* %mapf) #0 {
entry:
  %paddr.addr = alloca i8**, align 8
  %mapf.addr = alloca %struct._IO_FILE*, align 8
  store i8** %paddr, i8*** %paddr.addr, align 8
  store %struct._IO_FILE* %mapf, %struct._IO_FILE** %mapf.addr, align 8
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @trace_find_symbol(i8* %name, %struct._IO_FILE* %mapf) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %mapf.addr = alloca %struct._IO_FILE*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._IO_FILE* %mapf, %struct._IO_FILE** %mapf.addr, align 8
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i32 @trace_name(i8* %name, %struct._IO_FILE* %mapf, i8* %arg_format, i32 %retsize) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %mapf.addr = alloca %struct._IO_FILE*, align 8
  %arg_format.addr = alloca i8*, align 8
  %retsize.addr = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct._IO_FILE* %mapf, %struct._IO_FILE** %mapf.addr, align 8
  store i8* %arg_format, i8** %arg_format.addr, align 8
  store i32 %retsize, i32* %retsize.addr, align 4
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @trace(void (...)* %proc, i8* %name, i8* %arg_format, i32 %retsize) #0 {
entry:
  %proc.addr = alloca void (...)*, align 8
  %name.addr = alloca i8*, align 8
  %arg_format.addr = alloca i8*, align 8
  %retsize.addr = alloca i32, align 4
  store void (...)* %proc, void (...)** %proc.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %arg_format, i8** %arg_format.addr, align 8
  store i32 %retsize, i32* %retsize.addr, align 4
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i8* @stack_top_frame() #0 {
entry:
  %buf = alloca [1 x %struct.__jmp_buf_tag], align 16
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %buf, i32 0, i32 0
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay) #2
  %arrayidx = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %buf, i32 0, i64 0
  %0 = bitcast %struct.__jmp_buf_tag* %arrayidx to i8*
  %call1 = call i8* @stack_next_frame(i8* %0)
  ret i8* %call1
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #1

; Function Attrs: nounwind uwtable
define i8* @stack_next_frame(i8* %bp) #0 {
entry:
  %retval = alloca i8*, align 8
  %bp.addr = alloca i8*, align 8
  %nbp = alloca i8*, align 8
  store i8* %bp, i8** %bp.addr, align 8
  %0 = load i8*, i8** %bp.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %add.ptr = getelementptr inbounds i8*, i8** %1, i64 3
  %2 = load i8*, i8** %add.ptr, align 8
  store i8* %2, i8** %nbp, align 8
  %3 = load i8*, i8** %nbp, align 8
  %4 = load i8*, i8** %bp.addr, align 8
  %cmp = icmp ult i8* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %nbp, align 8
  store i8* %5, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define i64 @stack_return(i8* %bp) #0 {
entry:
  %bp.addr = alloca i8*, align 8
  store i8* %bp, i8** %bp.addr, align 8
  %0 = load i8*, i8** %bp.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 16
  %1 = bitcast i8* %add.ptr to i64*
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind returns_twice }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
