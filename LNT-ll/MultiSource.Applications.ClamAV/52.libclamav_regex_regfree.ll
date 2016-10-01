; ModuleID = './MultiSource.Applications.ClamAV/52.libclamav_regex_regfree.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regex_t = type { i32, i64, i8*, %struct.re_guts* }
%struct.re_guts = type { i32, i64*, i32, i32, %struct.cset*, i8*, i32, i64, i64, i64, i32, i32, i32, i32, i8*, i8*, i32, i64, i32, i64, [1 x i8] }
%struct.cset = type { i8*, i8, i8, i64, i8* }

; Function Attrs: nounwind uwtable
define void @cli_regfree(%struct.regex_t* %preg) #0 {
entry:
  %preg.addr = alloca %struct.regex_t*, align 8
  %g = alloca %struct.re_guts*, align 8
  store %struct.regex_t* %preg, %struct.regex_t** %preg.addr, align 8
  %0 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %re_magic = getelementptr inbounds %struct.regex_t, %struct.regex_t* %0, i32 0, i32 0
  %1 = load i32, i32* %re_magic, align 4
  %cmp = icmp ne i32 %1, 62053
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %re_g = getelementptr inbounds %struct.regex_t, %struct.regex_t* %2, i32 0, i32 3
  %3 = load %struct.re_guts*, %struct.re_guts** %re_g, align 8
  store %struct.re_guts* %3, %struct.re_guts** %g, align 8
  %4 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %cmp1 = icmp eq %struct.re_guts* %4, null
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %magic = getelementptr inbounds %struct.re_guts, %struct.re_guts* %5, i32 0, i32 0
  %6 = load i32, i32* %magic, align 4
  %cmp2 = icmp ne i32 %6, 53829
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %7 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %re_magic5 = getelementptr inbounds %struct.regex_t, %struct.regex_t* %7, i32 0, i32 0
  store i32 0, i32* %re_magic5, align 4
  %8 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %magic6 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %8, i32 0, i32 0
  store i32 0, i32* %magic6, align 4
  %9 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %strip = getelementptr inbounds %struct.re_guts, %struct.re_guts* %9, i32 0, i32 1
  %10 = load i64*, i64** %strip, align 8
  %cmp7 = icmp ne i64* %10, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.4
  %11 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %strip9 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %11, i32 0, i32 1
  %12 = load i64*, i64** %strip9, align 8
  %13 = bitcast i64* %12 to i8*
  call void @free(i8* %13) #2
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.4
  %14 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %sets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %14, i32 0, i32 4
  %15 = load %struct.cset*, %struct.cset** %sets, align 8
  %cmp11 = icmp ne %struct.cset* %15, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %16 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %sets13 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %16, i32 0, i32 4
  %17 = load %struct.cset*, %struct.cset** %sets13, align 8
  %18 = bitcast %struct.cset* %17 to i8*
  call void @free(i8* %18) #2
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %19 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %setbits = getelementptr inbounds %struct.re_guts, %struct.re_guts* %19, i32 0, i32 5
  %20 = load i8*, i8** %setbits, align 8
  %cmp15 = icmp ne i8* %20, null
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %21 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %setbits17 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %21, i32 0, i32 5
  %22 = load i8*, i8** %setbits17, align 8
  call void @free(i8* %22) #2
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.14
  %23 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %must = getelementptr inbounds %struct.re_guts, %struct.re_guts* %23, i32 0, i32 15
  %24 = load i8*, i8** %must, align 8
  %cmp19 = icmp ne i8* %24, null
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %25 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %must21 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %25, i32 0, i32 15
  %26 = load i8*, i8** %must21, align 8
  call void @free(i8* %26) #2
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %27 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %28 = bitcast %struct.re_guts* %27 to i8*
  call void @free(i8* %28) #2
  br label %return

return:                                           ; preds = %if.end.22, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
