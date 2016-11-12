; ModuleID = './pclsize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CodeEntry = type { i32, i32 }
%struct.ms_SizeDescription = type { i32, i8*, [2 x float] }

@pcl3_page_size.initialized = internal global i32 0, align 4
@code_map = internal global [29 x %struct.CodeEntry] [%struct.CodeEntry { i32 38, i32 1 }, %struct.CodeEntry { i32 42, i32 2 }, %struct.CodeEntry { i32 43, i32 3 }, %struct.CodeEntry { i32 51, i32 6 }, %struct.CodeEntry { i32 32, i32 15 }, %struct.CodeEntry { i32 56, i32 16 }, %struct.CodeEntry { i32 24, i32 24 }, %struct.CodeEntry { i32 34, i32 25 }, %struct.CodeEntry { i32 39, i32 26 }, %struct.CodeEntry { i32 52, i32 27 }, %struct.CodeEntry { i32 37, i32 45 }, %struct.CodeEntry { i32 50, i32 46 }, %struct.CodeEntry { i32 21, i32 71 }, %struct.CodeEntry { i32 33, i32 72 }, %struct.CodeEntry { i32 536, i32 73 }, %struct.CodeEntry { i32 22, i32 74 }, %struct.CodeEntry { i32 30, i32 75 }, %struct.CodeEntry { i32 14, i32 78 }, %struct.CodeEntry { i32 19, i32 80 }, %struct.CodeEntry { i32 23, i32 81 }, %struct.CodeEntry { i32 25, i32 90 }, %struct.CodeEntry { i32 35, i32 91 }, %struct.CodeEntry { i32 27, i32 92 }, %struct.CodeEntry { i32 36, i32 100 }, %struct.CodeEntry { i32 76, i32 101 }, %struct.CodeEntry { i32 26, i32 109 }, %struct.CodeEntry { i32 28, i32 110 }, %struct.CodeEntry { i32 17, i32 111 }, %struct.CodeEntry { i32 48, i32 113 }], align 16
@pcl3_media_code.inverse_map = internal global [29 x %struct.CodeEntry] zeroinitializer, align 16
@pcl3_media_code.initialized = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @pcl3_page_size(i32 %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  %key = alloca %struct.CodeEntry, align 4
  %result = alloca %struct.CodeEntry*, align 8
  store i32 %code, i32* %code.addr, align 4, !tbaa !1
  %0 = bitcast %struct.CodeEntry* %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.CodeEntry** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* @pcl3_page_size.initialized, align 4, !tbaa !1
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @qsort(i8* bitcast ([29 x %struct.CodeEntry]* @code_map to i8*), i64 29, i64 8, i32 (i8*, i8*)* @cmp_by_size) #4
  store i32 1, i32* @pcl3_page_size.initialized, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %code.addr, align 4, !tbaa !1
  %and = and i32 %3, -65281
  %4 = load i32, i32* %code.addr, align 4, !tbaa !1
  %and1 = and i32 %4, 512
  %or = or i32 %and, %and1
  %mc = getelementptr inbounds %struct.CodeEntry, %struct.CodeEntry* %key, i32 0, i32 0
  store i32 %or, i32* %mc, align 4, !tbaa !5
  %5 = bitcast %struct.CodeEntry* %key to i8*
  %call = call i8* @bsearch(i8* %5, i8* bitcast ([29 x %struct.CodeEntry]* @code_map to i8*), i64 29, i64 8, i32 (i8*, i8*)* @cmp_by_size) #4
  %6 = bitcast i8* %call to %struct.CodeEntry*
  store %struct.CodeEntry* %6, %struct.CodeEntry** %result, align 8, !tbaa !7
  %7 = load %struct.CodeEntry*, %struct.CodeEntry** %result, align 8, !tbaa !7
  %cmp = icmp eq %struct.CodeEntry* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load %struct.CodeEntry*, %struct.CodeEntry** %result, align 8, !tbaa !7
  %ps = getelementptr inbounds %struct.CodeEntry, %struct.CodeEntry* %8, i32 0, i32 1
  %9 = load i32, i32* %ps, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %9, %cond.false ]
  %10 = bitcast %struct.CodeEntry** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast %struct.CodeEntry* %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret i32 %cond
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cmp_by_size(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8, !tbaa !7
  store i8* %b, i8** %b.addr, align 8, !tbaa !7
  %0 = load i8*, i8** %a.addr, align 8, !tbaa !7
  %1 = bitcast i8* %0 to %struct.CodeEntry*
  %mc = getelementptr inbounds %struct.CodeEntry, %struct.CodeEntry* %1, i32 0, i32 0
  %2 = load i32, i32* %mc, align 4, !tbaa !5
  %3 = load i8*, i8** %b.addr, align 8, !tbaa !7
  %4 = bitcast i8* %3 to %struct.CodeEntry*
  %mc1 = getelementptr inbounds %struct.CodeEntry, %struct.CodeEntry* %4, i32 0, i32 0
  %5 = load i32, i32* %mc1, align 4, !tbaa !5
  %sub = sub i32 %2, %5
  ret i32 %sub
}

declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @pcl3_media_code(i32 %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  %key = alloca %struct.CodeEntry, align 4
  %result = alloca %struct.CodeEntry*, align 8
  store i32 %code, i32* %code.addr, align 4, !tbaa !10
  %0 = bitcast %struct.CodeEntry* %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.CodeEntry** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* @pcl3_media_code.initialized, align 4, !tbaa !1
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @memcpy(i8* bitcast ([29 x %struct.CodeEntry]* @pcl3_media_code.inverse_map to i8*), i8* bitcast ([29 x %struct.CodeEntry]* @code_map to i8*), i64 232) #5
  call void @qsort(i8* bitcast ([29 x %struct.CodeEntry]* @pcl3_media_code.inverse_map to i8*), i64 29, i64 8, i32 (i8*, i8*)* @cmp_by_code) #4
  store i32 1, i32* @pcl3_media_code.initialized, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %code.addr, align 4, !tbaa !10
  %ps = getelementptr inbounds %struct.CodeEntry, %struct.CodeEntry* %key, i32 0, i32 1
  store i32 %3, i32* %ps, align 4, !tbaa !9
  %4 = bitcast %struct.CodeEntry* %key to i8*
  %call1 = call i8* @bsearch(i8* %4, i8* bitcast ([29 x %struct.CodeEntry]* @pcl3_media_code.inverse_map to i8*), i64 29, i64 8, i32 (i8*, i8*)* @cmp_by_code) #4
  %5 = bitcast i8* %call1 to %struct.CodeEntry*
  store %struct.CodeEntry* %5, %struct.CodeEntry** %result, align 8, !tbaa !7
  %6 = load %struct.CodeEntry*, %struct.CodeEntry** %result, align 8, !tbaa !7
  %cmp = icmp eq %struct.CodeEntry* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load i32, i32* %code.addr, align 4, !tbaa !10
  %sub = sub nsw i32 0, %7
  %ps3 = getelementptr inbounds %struct.CodeEntry, %struct.CodeEntry* %key, i32 0, i32 1
  store i32 %sub, i32* %ps3, align 4, !tbaa !9
  %8 = bitcast %struct.CodeEntry* %key to i8*
  %call4 = call i8* @bsearch(i8* %8, i8* bitcast ([29 x %struct.CodeEntry]* @pcl3_media_code.inverse_map to i8*), i64 29, i64 8, i32 (i8*, i8*)* @cmp_by_code) #4
  %9 = bitcast i8* %call4 to %struct.CodeEntry*
  store %struct.CodeEntry* %9, %struct.CodeEntry** %result, align 8, !tbaa !7
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %10 = load %struct.CodeEntry*, %struct.CodeEntry** %result, align 8, !tbaa !7
  %cmp6 = icmp eq %struct.CodeEntry* %10, null
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %11 = load %struct.CodeEntry*, %struct.CodeEntry** %result, align 8, !tbaa !7
  %mc = getelementptr inbounds %struct.CodeEntry, %struct.CodeEntry* %11, i32 0, i32 0
  %12 = load i32, i32* %mc, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %12, %cond.false ]
  %13 = bitcast %struct.CodeEntry** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast %struct.CodeEntry* %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i32 %cond
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @cmp_by_code(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8, !tbaa !7
  store i8* %b, i8** %b.addr, align 8, !tbaa !7
  %0 = load i8*, i8** %a.addr, align 8, !tbaa !7
  %1 = bitcast i8* %0 to %struct.CodeEntry*
  %ps = getelementptr inbounds %struct.CodeEntry, %struct.CodeEntry* %1, i32 0, i32 1
  %2 = load i32, i32* %ps, align 4, !tbaa !9
  %3 = load i8*, i8** %b.addr, align 8, !tbaa !7
  %4 = bitcast i8* %3 to %struct.CodeEntry*
  %ps1 = getelementptr inbounds %struct.CodeEntry, %struct.CodeEntry* %4, i32 0, i32 1
  %5 = load i32, i32* %ps1, align 4, !tbaa !9
  %sub = sub nsw i32 %2, %5
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define %struct.ms_SizeDescription* @pcl3_size_description(i32 %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4, !tbaa !10
  %0 = load i32, i32* %code.addr, align 4, !tbaa !10
  %call = call i32 @pcl3_media_code(i32 %0) #4
  %call1 = call %struct.ms_SizeDescription* @ms_find_size_from_code(i32 %call) #4
  ret %struct.ms_SizeDescription* %call1
}

declare %struct.ms_SizeDescription* @ms_find_size_from_code(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"", !2, i64 0, !3, i64 4}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !3, i64 0}
!9 = !{!6, !3, i64 4}
!10 = !{!3, !3, i64 0}
