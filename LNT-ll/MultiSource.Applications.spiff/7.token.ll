; ModuleID = './MultiSource.Applications.spiff/7.token.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._K_str = type { i32, i32, i32, i8*, %struct.R_flstr*, %struct._T_tstr* }
%struct.R_flstr = type { i32, i32, i8* }
%struct._T_tstr = type { i32, %struct.R_flstr*, %struct._T_tstr* }

@_K_bto = common global [50000 x %struct._K_str*] zeroinitializer, align 16
@_K_ato = common global [50000 x %struct._K_str*] zeroinitializer, align 16
@_K_atm = common global i32 0, align 4
@_K_btm = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @K_settoken(i32 %file, i32 %index, %struct._K_str* %pointer) #0 {
entry:
  %file.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pointer.addr = alloca %struct._K_str*, align 8
  store i32 %file, i32* %file.addr, align 4
  store i32 %index, i32* %index.addr, align 4
  store %struct._K_str* %pointer, %struct._K_str** %pointer.addr, align 8
  %0 = load i32, i32* %file.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._K_str*, %struct._K_str** %pointer.addr, align 8
  %2 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [50000 x %struct._K_str*], [50000 x %struct._K_str*]* @_K_bto, i32 0, i64 %idxprom
  store %struct._K_str* %1, %struct._K_str** %arrayidx, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._K_str*, %struct._K_str** %pointer.addr, align 8
  %4 = load i32, i32* %index.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [50000 x %struct._K_str*], [50000 x %struct._K_str*]* @_K_ato, i32 0, i64 %idxprom1
  store %struct._K_str* %3, %struct._K_str** %arrayidx2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
