; ModuleID = './MultiSource.Benchmarks.MiBench/185.telecomm-adpcm.rawdaudio.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adpcm_state = type { i16, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@abuf = common global [500 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"input file\00", align 1
@sbuf = common global [1000 x i16] zeroinitializer, align 16
@state = common global %struct.adpcm_state zeroinitializer, align 2
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Final valprev=%d, index=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.5
  %call = call i64 @read(i32 0, i8* getelementptr inbounds ([500 x i8], [500 x i8]* @abuf, i32 0, i32 0), i64 500)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

if.end:                                           ; preds = %while.body
  %1 = load i32, i32* %n, align 4
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %while.end

if.end.5:                                         ; preds = %if.end
  %2 = load i32, i32* %n, align 4
  %mul = mul nsw i32 %2, 2
  call void @adpcm_decoder(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @abuf, i32 0, i32 0), i16* getelementptr inbounds ([1000 x i16], [1000 x i16]* @sbuf, i32 0, i32 0), i32 %mul, %struct.adpcm_state* @state)
  %3 = load i32, i32* %n, align 4
  %mul6 = mul nsw i32 %3, 4
  %conv7 = sext i32 %mul6 to i64
  %call8 = call i64 @write(i32 1, i8* bitcast ([1000 x i16]* @sbuf to i8*), i64 %conv7)
  br label %while.body

while.end:                                        ; preds = %if.then.4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i16, i16* getelementptr inbounds (%struct.adpcm_state, %struct.adpcm_state* @state, i32 0, i32 0), align 2
  %conv9 = sext i16 %5 to i32
  %6 = load i8, i8* getelementptr inbounds (%struct.adpcm_state, %struct.adpcm_state* @state, i32 0, i32 1), align 1
  %conv10 = sext i8 %6 to i32
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 %conv9, i32 %conv10)
  call void @exit(i32 0) #3
  unreachable

return:                                           ; No predecessors!
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i64 @read(i32, i8*, i64) #1

declare void @perror(i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare void @adpcm_decoder(i8*, i16*, i32, %struct.adpcm_state*) #1

declare i64 @write(i32, i8*, i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
