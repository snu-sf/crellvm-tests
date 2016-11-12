; ModuleID = './libgimpmath/gimpmd5.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GChecksum = type opaque

@.str = private unnamed_addr constant [12 x i8] c"LibGimpMath\00", align 1
@__func__.gimp_md5_get_digest = private unnamed_addr constant [20 x i8] c"gimp_md5_get_digest\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"buffer != NULL\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"digest != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_md5_get_digest(i8* %buffer, i32 %buffer_size, i8* %digest) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %buffer_size.addr = alloca i32, align 4
  %digest.addr = alloca i8*, align 8
  %checksum = alloca %struct._GChecksum*, align 8
  %len = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %buffer_size, i32* %buffer_size.addr, align 4
  store i8* %digest, i8** %digest.addr, align 8
  store i64 16, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %buffer.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_md5_get_digest, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %digest.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_md5_get_digest, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %call = call %struct._GChecksum* @g_checksum_new(i32 0)
  store %struct._GChecksum* %call, %struct._GChecksum** %checksum, align 8
  %2 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %3 = load i8*, i8** %buffer.addr, align 8
  %4 = load i32, i32* %buffer_size.addr, align 4
  %conv = sext i32 %4 to i64
  call void @g_checksum_update(%struct._GChecksum* %2, i8* %3, i64 %conv)
  %5 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %6 = load i8*, i8** %digest.addr, align 8
  call void @g_checksum_get_digest(%struct._GChecksum* %5, i8* %6, i64* %len)
  %7 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  call void @g_checksum_free(%struct._GChecksum* %7)
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GChecksum* @g_checksum_new(i32) #1

declare void @g_checksum_update(%struct._GChecksum*, i8*, i64) #1

declare void @g_checksum_get_digest(%struct._GChecksum*, i8*, i64*) #1

declare void @g_checksum_free(%struct._GChecksum*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
