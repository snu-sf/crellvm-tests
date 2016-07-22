; ModuleID = './fnt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnt_params = type { i32, i64, i64, [0 x i64] }

@mpd_free = external hidden global void (i8*)*, align 8

; Function Attrs: nounwind uwtable
define hidden i32 @std_fnt(i64* %a, i64 %n, i32 %modnum) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %modnum.addr = alloca i32, align 4
  %tparams = alloca %struct.fnt_params*, align 8
  store i64* %a, i64** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32 %modnum, i32* %modnum.addr, align 4
  %0 = load i64, i64* %n.addr, align 8
  %1 = load i32, i32* %modnum.addr, align 4
  %call = call %struct.fnt_params* @_mpd_init_fnt_params(i64 %0, i32 -1, i32 %1)
  store %struct.fnt_params* %call, %struct.fnt_params** %tparams, align 8
  %cmp = icmp eq %struct.fnt_params* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64*, i64** %a.addr, align 8
  %3 = load i64, i64* %n.addr, align 8
  %4 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8
  call void @fnt_dif2(i64* %2, i64 %3, %struct.fnt_params* %4)
  %5 = load void (i8*)*, void (i8*)** @mpd_free, align 8
  %6 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8
  %7 = bitcast %struct.fnt_params* %6 to i8*
  call void %5(i8* %7)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare hidden %struct.fnt_params* @_mpd_init_fnt_params(i64, i32, i32) #1

declare hidden void @fnt_dif2(i64*, i64, %struct.fnt_params*) #1

; Function Attrs: nounwind uwtable
define hidden i32 @std_inv_fnt(i64* %a, i64 %n, i32 %modnum) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %modnum.addr = alloca i32, align 4
  %tparams = alloca %struct.fnt_params*, align 8
  store i64* %a, i64** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32 %modnum, i32* %modnum.addr, align 4
  %0 = load i64, i64* %n.addr, align 8
  %1 = load i32, i32* %modnum.addr, align 4
  %call = call %struct.fnt_params* @_mpd_init_fnt_params(i64 %0, i32 1, i32 %1)
  store %struct.fnt_params* %call, %struct.fnt_params** %tparams, align 8
  %cmp = icmp eq %struct.fnt_params* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64*, i64** %a.addr, align 8
  %3 = load i64, i64* %n.addr, align 8
  %4 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8
  call void @fnt_dif2(i64* %2, i64 %3, %struct.fnt_params* %4)
  %5 = load void (i8*)*, void (i8*)** @mpd_free, align 8
  %6 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8
  %7 = bitcast %struct.fnt_params* %6 to i8*
  call void %5(i8* %7)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
