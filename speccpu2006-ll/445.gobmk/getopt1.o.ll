; ModuleID = 'utils/getopt1.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gg_option = type { i8*, i32, i32*, i32 }

; Function Attrs: nounwind uwtable
define i32 @gg_getopt_long(i32 %argc, i8** %argv, i8* %options, %struct.gg_option* %long_options, i32* %opt_index) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %options.addr = alloca i8*, align 8
  %long_options.addr = alloca %struct.gg_option*, align 8
  %opt_index.addr = alloca i32*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %options, i8** %options.addr, align 8
  store %struct.gg_option* %long_options, %struct.gg_option** %long_options.addr, align 8
  store i32* %opt_index, i32** %opt_index.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %2 = load i8*, i8** %options.addr, align 8
  %3 = load %struct.gg_option*, %struct.gg_option** %long_options.addr, align 8
  %4 = load i32*, i32** %opt_index.addr, align 8
  %call = call i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.gg_option* %3, i32* %4, i32 0)
  ret i32 %call
}

declare i32 @getopt_internal(i32, i8**, i8*, %struct.gg_option*, i32*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @getopt_long_only(i32 %argc, i8** %argv, i8* %options, %struct.gg_option* %long_options, i32* %opt_index) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %options.addr = alloca i8*, align 8
  %long_options.addr = alloca %struct.gg_option*, align 8
  %opt_index.addr = alloca i32*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %options, i8** %options.addr, align 8
  store %struct.gg_option* %long_options, %struct.gg_option** %long_options.addr, align 8
  store i32* %opt_index, i32** %opt_index.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %2 = load i8*, i8** %options.addr, align 8
  %3 = load %struct.gg_option*, %struct.gg_option** %long_options.addr, align 8
  %4 = load i32*, i32** %opt_index.addr, align 8
  %call = call i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.gg_option* %3, i32* %4, i32 1)
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
