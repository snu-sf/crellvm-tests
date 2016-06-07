; ModuleID = 'varray.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }

; Function Attrs: nounwind uwtable
define %struct.varray_head_tag* @varray_init(i64 %num_elements, i64 %element_size, i8* %name) #0 {
entry:
  %num_elements.addr = alloca i64, align 8
  %element_size.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %data_size = alloca i64, align 8
  %ptr = alloca %struct.varray_head_tag*, align 8
  store i64 %num_elements, i64* %num_elements.addr, align 8
  store i64 %element_size, i64* %element_size.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i64, i64* %num_elements.addr, align 8
  %1 = load i64, i64* %element_size.addr, align 8
  %mul = mul i64 %0, %1
  store i64 %mul, i64* %data_size, align 8
  %2 = load i64, i64* %data_size, align 8
  %add = add i64 32, %2
  %call = call noalias i8* @xcalloc(i64 %add, i64 1)
  %3 = bitcast i8* %call to %struct.varray_head_tag*
  store %struct.varray_head_tag* %3, %struct.varray_head_tag** %ptr, align 8
  %4 = load i64, i64* %num_elements.addr, align 8
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ptr, align 8
  %num_elements1 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 0
  store i64 %4, i64* %num_elements1, align 8
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ptr, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 1
  store i64 0, i64* %elements_used, align 8
  %7 = load i64, i64* %element_size.addr, align 8
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ptr, align 8
  %element_size2 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 2
  store i64 %7, i64* %element_size2, align 8
  %9 = load i8*, i8** %name.addr, align 8
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ptr, align 8
  %name3 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 3
  store i8* %9, i8** %name3, align 8
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ptr, align 8
  ret %struct.varray_head_tag* %11
}

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %va, i64 %n) #0 {
entry:
  %va.addr = alloca %struct.varray_head_tag*, align 8
  %n.addr = alloca i64, align 8
  %old_elements = alloca i64, align 8
  %element_size = alloca i64, align 8
  %old_data_size = alloca i64, align 8
  %data_size = alloca i64, align 8
  store %struct.varray_head_tag* %va, %struct.varray_head_tag** %va.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** %va.addr, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %0, i32 0, i32 0
  %1 = load i64, i64* %num_elements, align 8
  store i64 %1, i64* %old_elements, align 8
  %2 = load i64, i64* %n.addr, align 8
  %3 = load i64, i64* %old_elements, align 8
  %cmp = icmp ne i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** %va.addr, align 8
  %element_size1 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 2
  %5 = load i64, i64* %element_size1, align 8
  store i64 %5, i64* %element_size, align 8
  %6 = load i64, i64* %old_elements, align 8
  %7 = load i64, i64* %element_size, align 8
  %mul = mul i64 %6, %7
  store i64 %mul, i64* %old_data_size, align 8
  %8 = load i64, i64* %n.addr, align 8
  %9 = load i64, i64* %element_size, align 8
  %mul2 = mul i64 %8, %9
  store i64 %mul2, i64* %data_size, align 8
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** %va.addr, align 8
  %11 = bitcast %struct.varray_head_tag* %10 to i8*
  %12 = load i64, i64* %data_size, align 8
  %add = add i64 32, %12
  %call = call i8* @xrealloc(i8* %11, i64 %add)
  %13 = bitcast i8* %call to %struct.varray_head_tag*
  store %struct.varray_head_tag* %13, %struct.varray_head_tag** %va.addr, align 8
  %14 = load i64, i64* %n.addr, align 8
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** %va.addr, align 8
  %num_elements3 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 0
  store i64 %14, i64* %num_elements3, align 8
  %16 = load i64, i64* %n.addr, align 8
  %17 = load i64, i64* %old_elements, align 8
  %cmp4 = icmp ugt i64 %16, %17
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %18 = load i64, i64* %old_data_size, align 8
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** %va.addr, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 4
  %c = bitcast %union.varray_data_tag* %data to [1 x i8]*
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %c, i32 0, i64 %18
  %20 = load i64, i64* %data_size, align 8
  %21 = load i64, i64* %old_data_size, align 8
  %sub = sub i64 %20, %21
  call void @llvm.memset.p0i8.i64(i8* %arrayidx, i8 0, i64 %sub, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %22 = load %struct.varray_head_tag*, %struct.varray_head_tag** %va.addr, align 8
  ret %struct.varray_head_tag* %22
}

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
