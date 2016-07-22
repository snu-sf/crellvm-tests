; ModuleID = './memory.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpd_t = type { i8, i64, i64, i64, i64, i64* }
%struct.mpd_context_t = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@MPD_MINALLOC = hidden global i64 2, align 8
@mpd_mallocfunc = hidden global i8* (i64)* @malloc, align 8
@mpd_reallocfunc = hidden global i8* (i8*, i64)* @realloc, align 8
@mpd_callocfunc = hidden global i8* (i64, i64)* @calloc, align 8
@mpd_free = hidden global void (i8*)* @free, align 8

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #0

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #0

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #0

; Function Attrs: nounwind
declare void @free(i8*) #0

; Function Attrs: nounwind uwtable
define hidden i8* @mpd_callocfunc_em(i64 %nmemb, i64 %size) #1 {
entry:
  %retval = alloca i8*, align 8
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %req = alloca i64, align 8
  %overflow = alloca i64, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %nmemb.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i64 @mul_size_t_overflow(i64 %0, i64 %1, i64* %overflow)
  store i64 %call, i64* %req, align 8
  %2 = load i64, i64* %overflow, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8* (i64)*, i8* (i64)** @mpd_mallocfunc, align 8
  %4 = load i64, i64* %req, align 8
  %call1 = call i8* %3(i64 %4)
  store i8* %call1, i8** %ptr, align 8
  %5 = load i8*, i8** %ptr, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i8*, i8** %ptr, align 8
  %7 = load i64, i64* %req, align 8
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 %7, i32 1, i1 false)
  %8 = load i8*, i8** %ptr, align 8
  store i8* %8, i8** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @mul_size_t_overflow(i64 %a, i64 %b, i64* %overflow) #2 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %overflow.addr = alloca i64*, align 8
  %lo = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64* %overflow, i64** %overflow.addr, align 8
  %0 = load i64*, i64** %overflow.addr, align 8
  %1 = load i64, i64* %a.addr, align 8
  %2 = load i64, i64* %b.addr, align 8
  call void @_mpd_mul_words(i64* %0, i64* %lo, i64 %1, i64 %2)
  %3 = load i64, i64* %lo, align 8
  ret i64 %3
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define hidden i8* @mpd_alloc(i64 %nmemb, i64 %size) #1 {
entry:
  %retval = alloca i8*, align 8
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %req = alloca i64, align 8
  %overflow = alloca i64, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %nmemb.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i64 @mul_size_t_overflow(i64 %0, i64 %1, i64* %overflow)
  store i64 %call, i64* %req, align 8
  %2 = load i64, i64* %overflow, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8* (i64)*, i8* (i64)** @mpd_mallocfunc, align 8
  %4 = load i64, i64* %req, align 8
  %call1 = call i8* %3(i64 %4)
  store i8* %call1, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define hidden i8* @mpd_calloc(i64 %nmemb, i64 %size) #1 {
entry:
  %retval = alloca i8*, align 8
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %overflow = alloca i64, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %nmemb.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i64 @mul_size_t_overflow(i64 %0, i64 %1, i64* %overflow)
  %2 = load i64, i64* %overflow, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8* (i64, i64)*, i8* (i64, i64)** @mpd_callocfunc, align 8
  %4 = load i64, i64* %nmemb.addr, align 8
  %5 = load i64, i64* %size.addr, align 8
  %call1 = call i8* %3(i64 %4, i64 %5)
  store i8* %call1, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define hidden i8* @mpd_realloc(i8* %ptr, i64 %nmemb, i64 %size, i8* %err) #1 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %err.addr = alloca i8*, align 8
  %new = alloca i8*, align 8
  %req = alloca i64, align 8
  %overflow = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %err, i8** %err.addr, align 8
  %0 = load i64, i64* %nmemb.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i64 @mul_size_t_overflow(i64 %0, i64 %1, i64* %overflow)
  store i64 %call, i64* %req, align 8
  %2 = load i64, i64* %overflow, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %err.addr, align 8
  store i8 1, i8* %3, align 1
  %4 = load i8*, i8** %ptr.addr, align 8
  store i8* %4, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8* (i8*, i64)*, i8* (i8*, i64)** @mpd_reallocfunc, align 8
  %6 = load i8*, i8** %ptr.addr, align 8
  %7 = load i64, i64* %req, align 8
  %call1 = call i8* %5(i8* %6, i64 %7)
  store i8* %call1, i8** %new, align 8
  %8 = load i8*, i8** %new, align 8
  %cmp = icmp eq i8* %8, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %9 = load i8*, i8** %err.addr, align 8
  store i8 1, i8* %9, align 1
  %10 = load i8*, i8** %ptr.addr, align 8
  store i8* %10, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %11 = load i8*, i8** %new, align 8
  store i8* %11, i8** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define hidden i8* @mpd_sh_alloc(i64 %struct_size, i64 %nmemb, i64 %size) #1 {
entry:
  %retval = alloca i8*, align 8
  %struct_size.addr = alloca i64, align 8
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %req = alloca i64, align 8
  %overflow = alloca i64, align 8
  store i64 %struct_size, i64* %struct_size.addr, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %nmemb.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i64 @mul_size_t_overflow(i64 %0, i64 %1, i64* %overflow)
  store i64 %call, i64* %req, align 8
  %2 = load i64, i64* %overflow, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %req, align 8
  %4 = load i64, i64* %struct_size.addr, align 8
  %call1 = call i64 @add_size_t_overflow(i64 %3, i64 %4, i64* %overflow)
  store i64 %call1, i64* %req, align 8
  %5 = load i64, i64* %overflow, align 8
  %tobool2 = icmp ne i64 %5, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i8* (i64)*, i8* (i64)** @mpd_mallocfunc, align 8
  %7 = load i64, i64* %req, align 8
  %call5 = call i8* %6(i64 %7)
  store i8* %call5, i8** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @add_size_t_overflow(i64 %a, i64 %b, i64* %overflow) #2 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %overflow.addr = alloca i64*, align 8
  %ret = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64* %overflow, i64** %overflow.addr, align 8
  %0 = load i64*, i64** %overflow.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load i64, i64* %a.addr, align 8
  %2 = load i64, i64* %b.addr, align 8
  %add = add i64 %1, %2
  store i64 %add, i64* %ret, align 8
  %3 = load i64, i64* %ret, align 8
  %4 = load i64, i64* %a.addr, align 8
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %overflow.addr, align 8
  store i64 1, i64* %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %ret, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define hidden %struct.mpd_t* @mpd_qnew_size(i64 %nwords) #1 {
entry:
  %retval = alloca %struct.mpd_t*, align 8
  %nwords.addr = alloca i64, align 8
  %result = alloca %struct.mpd_t*, align 8
  store i64 %nwords, i64* %nwords.addr, align 8
  %0 = load i64, i64* %nwords.addr, align 8
  %1 = load i64, i64* @MPD_MINALLOC, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* @MPD_MINALLOC, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %nwords.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  store i64 %cond, i64* %nwords.addr, align 8
  %call = call i8* @mpd_alloc(i64 1, i64 48)
  %4 = bitcast i8* %call to %struct.mpd_t*
  store %struct.mpd_t* %4, %struct.mpd_t** %result, align 8
  %5 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8
  %cmp1 = icmp eq %struct.mpd_t* %5, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct.mpd_t* null, %struct.mpd_t** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %6 = load i64, i64* %nwords.addr, align 8
  %call2 = call i8* @mpd_alloc(i64 %6, i64 8)
  %7 = bitcast i8* %call2 to i64*
  %8 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8
  %data = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %8, i32 0, i32 5
  store i64* %7, i64** %data, align 8
  %9 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8
  %data3 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %9, i32 0, i32 5
  %10 = load i64*, i64** %data3, align 8
  %cmp4 = icmp eq i64* %10, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %11 = load void (i8*)*, void (i8*)** @mpd_free, align 8
  %12 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8
  %13 = bitcast %struct.mpd_t* %12 to i8*
  call void %11(i8* %13)
  store %struct.mpd_t* null, %struct.mpd_t** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %14 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8
  %flags = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %14, i32 0, i32 0
  store i8 0, i8* %flags, align 1
  %15 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8
  %exp = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %15, i32 0, i32 1
  store i64 0, i64* %exp, align 8
  %16 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8
  %digits = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %16, i32 0, i32 2
  store i64 0, i64* %digits, align 8
  %17 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8
  %len = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %17, i32 0, i32 3
  store i64 0, i64* %len, align 8
  %18 = load i64, i64* %nwords.addr, align 8
  %19 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8
  %alloc = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %19, i32 0, i32 4
  store i64 %18, i64* %alloc, align 8
  %20 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8
  store %struct.mpd_t* %20, %struct.mpd_t** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %21 = load %struct.mpd_t*, %struct.mpd_t** %retval
  ret %struct.mpd_t* %21
}

; Function Attrs: nounwind uwtable
define hidden %struct.mpd_t* @mpd_qnew() #1 {
entry:
  %0 = load i64, i64* @MPD_MINALLOC, align 8
  %call = call %struct.mpd_t* @mpd_qnew_size(i64 %0)
  ret %struct.mpd_t* %call
}

; Function Attrs: nounwind uwtable
define hidden %struct.mpd_t* @mpd_new(%struct.mpd_context_t* %ctx) #1 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %result = alloca %struct.mpd_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  %call = call %struct.mpd_t* @mpd_qnew()
  store %struct.mpd_t* %call, %struct.mpd_t** %result, align 8
  %0 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8
  %cmp = icmp eq %struct.mpd_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  call void @mpd_addstatus_raise(%struct.mpd_context_t* %1, i32 512)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.mpd_t*, %struct.mpd_t** %result, align 8
  ret %struct.mpd_t* %2
}

declare hidden void @mpd_addstatus_raise(%struct.mpd_context_t*, i32) #4

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_switch_to_dyn(%struct.mpd_t* %result, i64 %nwords, i32* %status) #1 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca %struct.mpd_t*, align 8
  %nwords.addr = alloca i64, align 8
  %status.addr = alloca i32*, align 8
  %p = alloca i64*, align 8
  store %struct.mpd_t* %result, %struct.mpd_t** %result.addr, align 8
  store i64 %nwords, i64* %nwords.addr, align 8
  store i32* %status, i32** %status.addr, align 8
  %0 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %data = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %0, i32 0, i32 5
  %1 = load i64*, i64** %data, align 8
  store i64* %1, i64** %p, align 8
  %2 = load i64, i64* %nwords.addr, align 8
  %call = call i8* @mpd_alloc(i64 %2, i64 8)
  %3 = bitcast i8* %call to i64*
  %4 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %data1 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %4, i32 0, i32 5
  store i64* %3, i64** %data1, align 8
  %5 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %data2 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %5, i32 0, i32 5
  %6 = load i64*, i64** %data2, align 8
  %cmp = icmp eq i64* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64*, i64** %p, align 8
  %8 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %data3 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %8, i32 0, i32 5
  store i64* %7, i64** %data3, align 8
  %9 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  call void @mpd_set_qnan(%struct.mpd_t* %9)
  %10 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  call void @mpd_set_positive(%struct.mpd_t* %10)
  %11 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %len = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %11, i32 0, i32 3
  store i64 0, i64* %len, align 8
  %12 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %digits = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %12, i32 0, i32 2
  store i64 0, i64* %digits, align 8
  %13 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %exp = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %13, i32 0, i32 1
  store i64 0, i64* %exp, align 8
  %14 = load i32*, i32** %status.addr, align 8
  %15 = load i32, i32* %14, align 4
  %or = or i32 %15, 512
  store i32 %or, i32* %14, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %16 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %data4 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %16, i32 0, i32 5
  %17 = load i64*, i64** %data4, align 8
  %18 = bitcast i64* %17 to i8*
  %19 = load i64*, i64** %p, align 8
  %20 = bitcast i64* %19 to i8*
  %21 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %alloc = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %21, i32 0, i32 4
  %22 = load i64, i64* %alloc, align 8
  %mul = mul i64 %22, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %20, i64 %mul, i32 8, i1 false)
  %23 = load i64, i64* %nwords.addr, align 8
  %24 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %alloc5 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %24, i32 0, i32 4
  store i64 %23, i64* %alloc5, align 8
  %25 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  call void @mpd_set_dynamic_data(%struct.mpd_t* %25)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare hidden void @mpd_set_qnan(%struct.mpd_t*) #4

declare hidden void @mpd_set_positive(%struct.mpd_t*) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare hidden void @mpd_set_dynamic_data(%struct.mpd_t*) #4

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_switch_to_dyn_zero(%struct.mpd_t* %result, i64 %nwords, i32* %status) #1 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca %struct.mpd_t*, align 8
  %nwords.addr = alloca i64, align 8
  %status.addr = alloca i32*, align 8
  %p = alloca i64*, align 8
  store %struct.mpd_t* %result, %struct.mpd_t** %result.addr, align 8
  store i64 %nwords, i64* %nwords.addr, align 8
  store i32* %status, i32** %status.addr, align 8
  %0 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %data = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %0, i32 0, i32 5
  %1 = load i64*, i64** %data, align 8
  store i64* %1, i64** %p, align 8
  %2 = load i64, i64* %nwords.addr, align 8
  %call = call i8* @mpd_calloc(i64 %2, i64 8)
  %3 = bitcast i8* %call to i64*
  %4 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %data1 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %4, i32 0, i32 5
  store i64* %3, i64** %data1, align 8
  %5 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %data2 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %5, i32 0, i32 5
  %6 = load i64*, i64** %data2, align 8
  %cmp = icmp eq i64* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64*, i64** %p, align 8
  %8 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %data3 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %8, i32 0, i32 5
  store i64* %7, i64** %data3, align 8
  %9 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  call void @mpd_set_qnan(%struct.mpd_t* %9)
  %10 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  call void @mpd_set_positive(%struct.mpd_t* %10)
  %11 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %len = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %11, i32 0, i32 3
  store i64 0, i64* %len, align 8
  %12 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %digits = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %12, i32 0, i32 2
  store i64 0, i64* %digits, align 8
  %13 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %exp = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %13, i32 0, i32 1
  store i64 0, i64* %exp, align 8
  %14 = load i32*, i32** %status.addr, align 8
  %15 = load i32, i32* %14, align 4
  %or = or i32 %15, 512
  store i32 %or, i32* %14, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %16 = load i64, i64* %nwords.addr, align 8
  %17 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %alloc = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %17, i32 0, i32 4
  store i64 %16, i64* %alloc, align 8
  %18 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  call void @mpd_set_dynamic_data(%struct.mpd_t* %18)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_realloc_dyn(%struct.mpd_t* %result, i64 %nwords, i32* %status) #1 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca %struct.mpd_t*, align 8
  %nwords.addr = alloca i64, align 8
  %status.addr = alloca i32*, align 8
  %err = alloca i8, align 1
  store %struct.mpd_t* %result, %struct.mpd_t** %result.addr, align 8
  store i64 %nwords, i64* %nwords.addr, align 8
  store i32* %status, i32** %status.addr, align 8
  store i8 0, i8* %err, align 1
  %0 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %data = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %0, i32 0, i32 5
  %1 = load i64*, i64** %data, align 8
  %2 = bitcast i64* %1 to i8*
  %3 = load i64, i64* %nwords.addr, align 8
  %call = call i8* @mpd_realloc(i8* %2, i64 %3, i64 8, i8* %err)
  %4 = bitcast i8* %call to i64*
  %5 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %data1 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %5, i32 0, i32 5
  store i64* %4, i64** %data1, align 8
  %6 = load i8, i8* %err, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %nwords.addr, align 8
  %8 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %alloc = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %8, i32 0, i32 4
  store i64 %7, i64* %alloc, align 8
  br label %if.end.4

if.else:                                          ; preds = %entry
  %9 = load i64, i64* %nwords.addr, align 8
  %10 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %alloc2 = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %10, i32 0, i32 4
  %11 = load i64, i64* %alloc2, align 8
  %cmp = icmp sgt i64 %9, %11
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %12 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  call void @mpd_set_qnan(%struct.mpd_t* %12)
  %13 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  call void @mpd_set_positive(%struct.mpd_t* %13)
  %14 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %len = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %14, i32 0, i32 3
  store i64 0, i64* %len, align 8
  %15 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %digits = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %15, i32 0, i32 2
  store i64 0, i64* %digits, align 8
  %16 = load %struct.mpd_t*, %struct.mpd_t** %result.addr, align 8
  %exp = getelementptr inbounds %struct.mpd_t, %struct.mpd_t* %16, i32 0, i32 1
  store i64 0, i64* %exp, align 8
  %17 = load i32*, i32** %status.addr, align 8
  %18 = load i32, i32* %17, align 4
  %or = or i32 %18, 512
  store i32 %or, i32* %17, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %a, i64 %b) #2 {
entry:
  %hi.addr = alloca i64*, align 8
  %lo.addr = alloca i64*, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %h = alloca i64, align 8
  %l = alloca i64, align 8
  store i64* %hi, i64** %hi.addr, align 8
  store i64* %lo, i64** %lo.addr, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %2 = call { i64, i64 } asm "mulq $3\0A\09", "={dx},={ax},%{ax},rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #5, !srcloc !2
  %asmresult = extractvalue { i64, i64 } %2, 0
  %asmresult1 = extractvalue { i64, i64 } %2, 1
  store i64 %asmresult, i64* %h, align 8
  store i64 %asmresult1, i64* %l, align 8
  %3 = load i64, i64* %h, align 8
  %4 = load i64*, i64** %hi.addr, align 8
  store i64 %3, i64* %4, align 8
  %5 = load i64, i64* %l, align 8
  %6 = load i64*, i64** %lo.addr, align 8
  store i64 %5, i64* %6, align 8
  ret void
}

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{i32 88248, i32 88258}
