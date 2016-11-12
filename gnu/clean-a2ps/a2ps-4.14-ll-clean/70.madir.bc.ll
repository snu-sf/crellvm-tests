; ModuleID = './lib/madir.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@madir_args = internal constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@madir_types = internal global [2 x i32] [i32 0, i32 1], align 4
@argmatch_die = external global void ()*, align 8
@.str = private unnamed_addr constant [11 x i8] c"rows first\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"columns first\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rows\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"columns\00", align 1

; Function Attrs: nounwind uwtable
define i32 @madir_argmatch(i8* %option, i8* %arg) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load void ()*, void ()** @argmatch_die, align 8
  %call = call i32 @__xargmatch_internal(i8* %0, i8* %1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @madir_args, i32 0, i32 0), i8* bitcast ([2 x i32]* @madir_types to i8*), i64 4, i32 0, void ()* %2)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @madir_types, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  ret i32 %3
}

declare i32 @__xargmatch_internal(i8*, i8*, i8**, i8*, i64, i32, void ()*) #1

; Function Attrs: nounwind uwtable
define i8* @madir_to_string(i32 %madir) #0 {
entry:
  %retval = alloca i8*, align 8
  %madir.addr = alloca i32, align 4
  store i32 %madir, i32* %madir.addr, align 4
  %0 = load i32, i32* %madir.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #4
  store i8* %call, i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #4
  store i8* %call2, i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @abort() #5
  unreachable

return:                                           ; preds = %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
