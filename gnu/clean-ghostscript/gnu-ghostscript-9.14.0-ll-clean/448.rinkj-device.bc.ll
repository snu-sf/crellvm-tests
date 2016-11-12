; ModuleID = './rinkj-device.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._RinkjDevice = type { {}*, i32 (%struct._RinkjDevice*, %struct._RinkjDeviceParams*)*, i32 (%struct._RinkjDevice*, i8**)*, i32 }
%struct._RinkjDeviceParams = type { i32, i32, i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @rinkj_device_set(%struct._RinkjDevice* %self, i8* %config) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %config.addr = alloca i8*, align 8
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store i8* %config, i8** %config.addr, align 8, !tbaa !1
  %0 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %init_happened = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %0, i32 0, i32 3
  %1 = load i32, i32* %init_happened, align 4, !tbaa !5
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %set = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %2, i32 0, i32 0
  %set1 = bitcast {}** %set to i32 (%struct._RinkjDevice*, i8*)**
  %3 = load i32 (%struct._RinkjDevice*, i8*)*, i32 (%struct._RinkjDevice*, i8*)** %set1, align 8, !tbaa !8
  %4 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %config.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct._RinkjDevice* %4, i8* %5) #4
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @rinkj_device_set_param(%struct._RinkjDevice* %self, i8* %key, i8* %value, i32 %value_size) #0 {
entry:
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %value_size.addr = alloca i32, align 4
  %keylen = alloca i32, align 4
  %bufsize = alloca i32, align 4
  %buf = alloca i8*, align 8
  %status = alloca i32, align 4
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  store i32 %value_size, i32* %value_size.addr, align 4, !tbaa !9
  %0 = bitcast i32* %keylen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %keylen, align 4, !tbaa !9
  %2 = bitcast i32* %bufsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %keylen, align 4, !tbaa !9
  %4 = load i32, i32* %value_size.addr, align 4, !tbaa !9
  %add = add nsw i32 %3, %4
  %add1 = add nsw i32 %add, 3
  store i32 %add1, i32* %bufsize, align 4, !tbaa !9
  %5 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %bufsize, align 4, !tbaa !9
  %conv2 = sext i32 %6 to i64
  %call3 = call noalias i8* @malloc(i64 %conv2) #6
  store i8* %call3, i8** %buf, align 8, !tbaa !1
  %7 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i8*, i8** %buf, align 8, !tbaa !1
  %9 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %10 = load i32, i32* %keylen, align 4, !tbaa !9
  %conv4 = sext i32 %10 to i64
  %call5 = call i8* @memcpy(i8* %8, i8* %9, i64 %conv4) #6
  %11 = load i8*, i8** %buf, align 8, !tbaa !1
  %12 = load i32, i32* %keylen, align 4, !tbaa !9
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %call6 = call i8* @memcpy(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 2) #6
  %13 = load i8*, i8** %buf, align 8, !tbaa !1
  %14 = load i32, i32* %keylen, align 4, !tbaa !9
  %idx.ext7 = sext i32 %14 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %13, i64 %idx.ext7
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr8, i64 2
  %15 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %16 = load i32, i32* %value_size.addr, align 4, !tbaa !9
  %conv10 = sext i32 %16 to i64
  %call11 = call i8* @memcpy(i8* %add.ptr9, i8* %15, i64 %conv10) #6
  %17 = load i32, i32* %keylen, align 4, !tbaa !9
  %add12 = add nsw i32 %17, 2
  %18 = load i32, i32* %value_size.addr, align 4, !tbaa !9
  %add13 = add nsw i32 %add12, %18
  %idxprom = sext i32 %add13 to i64
  %19 = load i8*, i8** %buf, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !10
  %20 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %buf, align 8, !tbaa !1
  %call14 = call i32 @rinkj_device_set(%struct._RinkjDevice* %20, i8* %21) #4
  store i32 %call14, i32* %status, align 4, !tbaa !9
  %22 = load i8*, i8** %buf, align 8, !tbaa !1
  call void @free(i8* %22) #6
  %23 = load i32, i32* %status, align 4, !tbaa !9
  %24 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32* %bufsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %keylen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret i32 %23
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @rinkj_device_set_param_string(%struct._RinkjDevice* %self, i8* %key, i8* %value) #0 {
entry:
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  %0 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %3) #5
  %conv = trunc i64 %call to i32
  %call1 = call i32 @rinkj_device_set_param(%struct._RinkjDevice* %0, i8* %1, i8* %2, i32 %conv) #4
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @rinkj_device_set_param_int(%struct._RinkjDevice* %self, i8* %key, i32 %value) #0 {
entry:
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %value_size = alloca i32, align 4
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !9
  %0 = bitcast [32 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i32* %value_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %2 = load i32, i32* %value.addr, align 4, !tbaa !9
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %2) #6
  store i32 %call, i32* %value_size, align 4, !tbaa !9
  %3 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %5 = load i32, i32* %value_size, align 4, !tbaa !9
  %call2 = call i32 @rinkj_device_set_param(%struct._RinkjDevice* %3, i8* %4, i8* %arraydecay1, i32 %5) #4
  %6 = bitcast i32* %value_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = bitcast [32 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 32, i8* %7) #1
  ret i32 %call2
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @rinkj_device_init(%struct._RinkjDevice* %self, %struct._RinkjDeviceParams* %params) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %params.addr = alloca %struct._RinkjDeviceParams*, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store %struct._RinkjDeviceParams* %params, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %init_happened = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %1, i32 0, i32 3
  %2 = load i32, i32* %init_happened, align 4, !tbaa !5
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %init = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %3, i32 0, i32 1
  %4 = load i32 (%struct._RinkjDevice*, %struct._RinkjDeviceParams*)*, i32 (%struct._RinkjDevice*, %struct._RinkjDeviceParams*)** %init, align 8, !tbaa !11
  %5 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %6 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %call = call i32 %4(%struct._RinkjDevice* %5, %struct._RinkjDeviceParams* %6) #4
  store i32 %call, i32* %status, align 4, !tbaa !9
  %7 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %init_happened1 = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %7, i32 0, i32 3
  store i32 42, i32* %init_happened1, align 4, !tbaa !5
  %8 = load i32, i32* %status, align 4, !tbaa !9
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @rinkj_device_write(%struct._RinkjDevice* %self, i8** %data) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %data.addr = alloca i8**, align 8
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store i8** %data, i8*** %data.addr, align 8, !tbaa !1
  %0 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %init_happened = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %0, i32 0, i32 3
  %1 = load i32, i32* %init_happened, align 4, !tbaa !5
  %cmp = icmp ne i32 %1, 42
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %write = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %2, i32 0, i32 2
  %3 = load i32 (%struct._RinkjDevice*, i8**)*, i32 (%struct._RinkjDevice*, i8**)** %write, align 8, !tbaa !12
  %4 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %5 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct._RinkjDevice* %4, i8** %5) #4
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readonly }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 24}
!6 = !{!"_RinkjDevice", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !2, i64 0}
!9 = !{!7, !7, i64 0}
!10 = !{!3, !3, i64 0}
!11 = !{!6, !2, i64 8}
!12 = !{!6, !2, i64 16}
