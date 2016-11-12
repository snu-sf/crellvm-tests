; ModuleID = './lib/common.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2ps_common_s = type { i8** }

@.str = private unnamed_addr constant [13 x i8] c"NO_HOME_CONF\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s%c.a2ps\00", align 1

; Function Attrs: nounwind uwtable
define void @a2ps_common_reset(%struct.a2ps_common_s* %common) #0 {
entry:
  %common.addr = alloca %struct.a2ps_common_s*, align 8
  store %struct.a2ps_common_s* %common, %struct.a2ps_common_s** %common.addr, align 8
  %0 = load %struct.a2ps_common_s*, %struct.a2ps_common_s** %common.addr, align 8
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %0, i32 0, i32 0
  store i8** null, i8*** %path, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.a2ps_common_s* @a2ps_common_new() #0 {
entry:
  %res = alloca %struct.a2ps_common_s*, align 8
  %call = call i8* @xmalloc(i64 8)
  %0 = bitcast i8* %call to %struct.a2ps_common_s*
  store %struct.a2ps_common_s* %0, %struct.a2ps_common_s** %res, align 8
  %1 = load %struct.a2ps_common_s*, %struct.a2ps_common_s** %res, align 8
  call void @a2ps_common_reset(%struct.a2ps_common_s* %1)
  %2 = load %struct.a2ps_common_s*, %struct.a2ps_common_s** %res, align 8
  ret %struct.a2ps_common_s* %2
}

declare i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define void @a2ps_common_free(%struct.a2ps_common_s* %common) #0 {
entry:
  %common.addr = alloca %struct.a2ps_common_s*, align 8
  store %struct.a2ps_common_s* %common, %struct.a2ps_common_s** %common.addr, align 8
  %0 = load %struct.a2ps_common_s*, %struct.a2ps_common_s** %common.addr, align 8
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %0, i32 0, i32 0
  %1 = load i8**, i8*** %path, align 8
  call void @pw_free_path(i8** %1)
  ret void
}

declare void @pw_free_path(i8**) #1

; Function Attrs: nounwind uwtable
define void @a2ps_common_finalize(%struct.a2ps_common_s* %common, i8* %home) #0 {
entry:
  %common.addr = alloca %struct.a2ps_common_s*, align 8
  %home.addr = alloca i8*, align 8
  %buf = alloca [512 x i8], align 16
  store %struct.a2ps_common_s* %common, %struct.a2ps_common_s** %common.addr, align 8
  store i8* %home, i8** %home.addr, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #3
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %home.addr, align 8
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* %0, i32 47) #3
  %1 = load %struct.a2ps_common_s*, %struct.a2ps_common_s** %common.addr, align 8
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %1, i32 0, i32 0
  %2 = load i8**, i8*** %path, align 8
  %arraydecay2 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call3 = call i8** @pw_prepend_string_to_path(i8** %2, i8* %arraydecay2)
  %3 = load %struct.a2ps_common_s*, %struct.a2ps_common_s** %common.addr, align 8
  %path4 = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %3, i32 0, i32 0
  store i8** %call3, i8*** %path4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i8** @pw_prepend_string_to_path(i8**, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
