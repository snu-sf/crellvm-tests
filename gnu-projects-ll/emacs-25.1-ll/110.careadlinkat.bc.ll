; ModuleID = './lib/careadlinkat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allocator = type { i8* (i64)*, i8* (i8*, i64)*, void (i8*)*, void (i64)* }

@stdlib_allocator = external constant %struct.allocator, align 8

; Function Attrs: nounwind uwtable
define i8* @careadlinkat(i32 %fd, i8* %filename, i8* %buffer, i64 %buffer_size, %struct.allocator* %alloc, i64 (i32, i8*, i8*, i64)* %preadlinkat) #0 {
entry:
  %retval = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i64, align 8
  %alloc.addr = alloca %struct.allocator*, align 8
  %preadlinkat.addr = alloca i64 (i32, i8*, i8*, i64)*, align 8
  %buf = alloca i8*, align 8
  %buf_size = alloca i64, align 8
  %buf_size_max = alloca i64, align 8
  %stack_buf = alloca [1024 x i8], align 16
  %link_length = alloca i64, align 8
  %link_size = alloca i64, align 8
  %readlinkat_errno = alloca i32, align 4
  %b = alloca i8*, align 8
  %b28 = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store %struct.allocator* %alloc, %struct.allocator** %alloc.addr, align 8
  store i64 (i32, i8*, i8*, i64)* %preadlinkat, i64 (i32, i8*, i8*, i64)** %preadlinkat.addr, align 8
  store i64 -9223372036854775808, i64* %buf_size_max, align 8
  %0 = load %struct.allocator*, %struct.allocator** %alloc.addr, align 8
  %tobool = icmp ne %struct.allocator* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.allocator* @stdlib_allocator, %struct.allocator** %alloc.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %buffer_size.addr, align 8
  %tobool1 = icmp ne i64 %1, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %stack_buf, i32 0, i32 0
  store i8* %arraydecay, i8** %buffer.addr, align 8
  store i64 1024, i64* %buffer_size.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load i8*, i8** %buffer.addr, align 8
  store i8* %2, i8** %buf, align 8
  %3 = load i64, i64* %buffer_size.addr, align 8
  store i64 %3, i64* %buf_size, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.3
  %4 = load i64 (i32, i8*, i8*, i64)*, i64 (i32, i8*, i8*, i64)** %preadlinkat.addr, align 8
  %5 = load i32, i32* %fd.addr, align 4
  %6 = load i8*, i8** %filename.addr, align 8
  %7 = load i8*, i8** %buf, align 8
  %8 = load i64, i64* %buf_size, align 8
  %call = call i64 %4(i32 %5, i8* %6, i8* %7, i64 %8)
  store i64 %call, i64* %link_length, align 8
  %9 = load i64, i64* %link_length, align 8
  %cmp = icmp slt i64 %9, 0
  br i1 %cmp, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %do.body
  %call5 = call i32* @__errno_location() #3
  %10 = load i32, i32* %call5, align 4
  store i32 %10, i32* %readlinkat_errno, align 4
  %11 = load i32, i32* %readlinkat_errno, align 4
  %cmp6 = icmp ne i32 %11, 34
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.then.4
  %12 = load i8*, i8** %buf, align 8
  %13 = load i8*, i8** %buffer.addr, align 8
  %cmp8 = icmp ne i8* %12, %13
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.7
  %14 = load %struct.allocator*, %struct.allocator** %alloc.addr, align 8
  %free = getelementptr inbounds %struct.allocator, %struct.allocator* %14, i32 0, i32 2
  %15 = load void (i8*)*, void (i8*)** %free, align 8
  %16 = load i8*, i8** %buf, align 8
  call void %15(i8* %16)
  %17 = load i32, i32* %readlinkat_errno, align 4
  %call10 = call i32* @__errno_location() #3
  store i32 %17, i32* %call10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.7
  store i8* null, i8** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %do.body
  %18 = load i64, i64* %link_length, align 8
  store i64 %18, i64* %link_size, align 8
  %19 = load i64, i64* %link_size, align 8
  %20 = load i64, i64* %buf_size, align 8
  %cmp14 = icmp ult i64 %19, %20
  br i1 %cmp14, label %if.then.15, label %if.end.36

if.then.15:                                       ; preds = %if.end.13
  %21 = load i64, i64* %link_size, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %link_size, align 8
  %22 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %21
  store i8 0, i8* %arrayidx, align 1
  %23 = load i8*, i8** %buf, align 8
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %stack_buf, i32 0, i32 0
  %cmp17 = icmp eq i8* %23, %arraydecay16
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.15
  %24 = load %struct.allocator*, %struct.allocator** %alloc.addr, align 8
  %allocate = getelementptr inbounds %struct.allocator, %struct.allocator* %24, i32 0, i32 0
  %25 = load i8* (i64)*, i8* (i64)** %allocate, align 8
  %26 = load i64, i64* %link_size, align 8
  %call19 = call i8* %25(i64 %26)
  store i8* %call19, i8** %b, align 8
  %27 = load i64, i64* %link_size, align 8
  store i64 %27, i64* %buf_size, align 8
  %28 = load i8*, i8** %b, align 8
  %tobool20 = icmp ne i8* %28, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.then.18
  br label %do.end

if.end.22:                                        ; preds = %if.then.18
  %29 = load i8*, i8** %b, align 8
  %30 = load i8*, i8** %buf, align 8
  %31 = load i64, i64* %link_size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 %31, i32 1, i1 false)
  %32 = load i8*, i8** %b, align 8
  store i8* %32, i8** %buf, align 8
  br label %if.end.35

if.else:                                          ; preds = %if.then.15
  %33 = load i64, i64* %link_size, align 8
  %34 = load i64, i64* %buf_size, align 8
  %cmp23 = icmp ult i64 %33, %34
  br i1 %cmp23, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.else
  %35 = load i8*, i8** %buf, align 8
  %36 = load i8*, i8** %buffer.addr, align 8
  %cmp24 = icmp ne i8* %35, %36
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.34

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %37 = load %struct.allocator*, %struct.allocator** %alloc.addr, align 8
  %reallocate = getelementptr inbounds %struct.allocator, %struct.allocator* %37, i32 0, i32 1
  %38 = load i8* (i8*, i64)*, i8* (i8*, i64)** %reallocate, align 8
  %tobool26 = icmp ne i8* (i8*, i64)* %38, null
  br i1 %tobool26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %land.lhs.true.25
  %39 = load %struct.allocator*, %struct.allocator** %alloc.addr, align 8
  %reallocate29 = getelementptr inbounds %struct.allocator, %struct.allocator* %39, i32 0, i32 1
  %40 = load i8* (i8*, i64)*, i8* (i8*, i64)** %reallocate29, align 8
  %41 = load i8*, i8** %buf, align 8
  %42 = load i64, i64* %link_size, align 8
  %call30 = call i8* %40(i8* %41, i64 %42)
  store i8* %call30, i8** %b28, align 8
  %43 = load i8*, i8** %b28, align 8
  %tobool31 = icmp ne i8* %43, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.27
  %44 = load i8*, i8** %b28, align 8
  store i8* %44, i8** %buf, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.then.27
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true.25, %land.lhs.true, %if.else
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.22
  %45 = load i8*, i8** %buf, align 8
  store i8* %45, i8** %retval
  br label %return

if.end.36:                                        ; preds = %if.end.13
  %46 = load i8*, i8** %buf, align 8
  %47 = load i8*, i8** %buffer.addr, align 8
  %cmp37 = icmp ne i8* %46, %47
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.36
  %48 = load %struct.allocator*, %struct.allocator** %alloc.addr, align 8
  %free39 = getelementptr inbounds %struct.allocator, %struct.allocator* %48, i32 0, i32 2
  %49 = load void (i8*)*, void (i8*)** %free39, align 8
  %50 = load i8*, i8** %buf, align 8
  call void %49(i8* %50)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.36
  %51 = load i64, i64* %buf_size, align 8
  %52 = load i64, i64* %buf_size_max, align 8
  %div = udiv i64 %52, 2
  %cmp41 = icmp ule i64 %51, %div
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.40
  %53 = load i64, i64* %buf_size, align 8
  %mul = mul i64 %53, 2
  store i64 %mul, i64* %buf_size, align 8
  br label %if.end.52

if.else.43:                                       ; preds = %if.end.40
  %54 = load i64, i64* %buf_size, align 8
  %55 = load i64, i64* %buf_size_max, align 8
  %cmp44 = icmp ult i64 %54, %55
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.else.43
  %56 = load i64, i64* %buf_size_max, align 8
  store i64 %56, i64* %buf_size, align 8
  br label %if.end.51

if.else.46:                                       ; preds = %if.else.43
  %57 = load i64, i64* %buf_size_max, align 8
  %cmp47 = icmp ult i64 %57, -1
  br i1 %cmp47, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %if.else.46
  %call49 = call i32* @__errno_location() #3
  store i32 36, i32* %call49, align 4
  store i8* null, i8** %retval
  br label %return

if.else.50:                                       ; preds = %if.else.46
  br label %do.end

if.end.51:                                        ; preds = %if.then.45
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.42
  %58 = load %struct.allocator*, %struct.allocator** %alloc.addr, align 8
  %allocate53 = getelementptr inbounds %struct.allocator, %struct.allocator* %58, i32 0, i32 0
  %59 = load i8* (i64)*, i8* (i64)** %allocate53, align 8
  %60 = load i64, i64* %buf_size, align 8
  %call54 = call i8* %59(i64 %60)
  store i8* %call54, i8** %buf, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.52
  %61 = load i8*, i8** %buf, align 8
  %tobool55 = icmp ne i8* %61, null
  br i1 %tobool55, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.else.50, %if.then.21
  %62 = load %struct.allocator*, %struct.allocator** %alloc.addr, align 8
  %die = getelementptr inbounds %struct.allocator, %struct.allocator* %62, i32 0, i32 3
  %63 = load void (i64)*, void (i64)** %die, align 8
  %tobool56 = icmp ne void (i64)* %63, null
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %do.end
  %64 = load %struct.allocator*, %struct.allocator** %alloc.addr, align 8
  %die58 = getelementptr inbounds %struct.allocator, %struct.allocator* %64, i32 0, i32 3
  %65 = load void (i64)*, void (i64)** %die58, align 8
  %66 = load i64, i64* %buf_size, align 8
  call void %65(i64 %66)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %do.end
  %call60 = call i32* @__errno_location() #3
  store i32 12, i32* %call60, align 4
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.then.48, %if.end.35, %if.end.11
  %67 = load i8*, i8** %retval
  ret i8* %67
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
