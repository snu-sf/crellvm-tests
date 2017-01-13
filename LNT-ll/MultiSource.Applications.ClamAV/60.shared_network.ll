; ModuleID = './MultiSource.Applications.ClamAV/60.shared_network.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i8**, i32, i32, i8** }

; Function Attrs: nounwind uwtable
define i32 @r_gethostbyname(i8* %hostname, %struct.hostent* %hp, i8* %buf, i64 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %hostname.addr = alloca i8*, align 8
  %hp.addr = alloca %struct.hostent*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %hp2 = alloca %struct.hostent*, align 8
  store i8* %hostname, i8** %hostname.addr, align 8
  store %struct.hostent* %hp, %struct.hostent** %hp.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %hostname.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.hostent*, %struct.hostent** %hp.addr, align 8
  %cmp1 = icmp eq %struct.hostent* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %hostname.addr, align 8
  %call = call %struct.hostent* @gethostbyname(i8* %2)
  store %struct.hostent* %call, %struct.hostent** %hp2, align 8
  %cmp2 = icmp eq %struct.hostent* %call, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call i32* @__h_errno_location() #4
  %3 = load i32, i32* %call4, align 4
  store i32 %3, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load %struct.hostent*, %struct.hostent** %hp.addr, align 8
  %5 = bitcast %struct.hostent* %4 to i8*
  %6 = load %struct.hostent*, %struct.hostent** %hp2, align 8
  %7 = bitcast %struct.hostent* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 32, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare %struct.hostent* @gethostbyname(i8*) #1

; Function Attrs: nounwind readnone
declare i32* @__h_errno_location() #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
