; ModuleID = './MultiSource.Benchmarks.Prolangs-C/25.archie-client.get_pauth.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_auth_info = type { [100 x i8], [250 x i8] }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }

@get_pauth.no_auth_st = internal global %struct.pfs_auth_info zeroinitializer, align 1
@get_pauth.no_auth = internal global %struct.pfs_auth_info* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"UNAUTHENTICATED\00", align 1
@pfs_enable = external global i32, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1

; Function Attrs: nounwind uwtable
define %struct.pfs_auth_info* @get_pauth(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %whoiampw = alloca %struct.passwd*, align 8
  %DpfStmp = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  %cmp = icmp eq %struct.pfs_auth_info* %0, null
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  store %struct.pfs_auth_info* @get_pauth.no_auth_st, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  %1 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  %auth_type = getelementptr inbounds %struct.pfs_auth_info, %struct.pfs_auth_info* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %auth_type, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %2 = load i32, i32* @pfs_enable, align 4
  store i32 %2, i32* %DpfStmp, align 4
  store i32 0, i32* @pfs_enable, align 4
  %call1 = call i32 @getuid() #3
  %call2 = call %struct.passwd* @getpwuid(i32 %call1)
  store %struct.passwd* %call2, %struct.passwd** %whoiampw, align 8
  %3 = load i32, i32* %DpfStmp, align 4
  store i32 %3, i32* @pfs_enable, align 4
  %4 = load %struct.passwd*, %struct.passwd** %whoiampw, align 8
  %cmp3 = icmp eq %struct.passwd* %4, null
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %5 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  %authenticator = getelementptr inbounds %struct.pfs_auth_info, %struct.pfs_auth_info* %5, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [250 x i8], [250 x i8]* %authenticator, i32 0, i32 0
  %call6 = call i8* @strcpy(i8* %arraydecay5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  %authenticator7 = getelementptr inbounds %struct.pfs_auth_info, %struct.pfs_auth_info* %6, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [250 x i8], [250 x i8]* %authenticator7, i32 0, i32 0
  %7 = load %struct.passwd*, %struct.passwd** %whoiampw, align 8
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %7, i32 0, i32 0
  %8 = load i8*, i8** %pw_name, align 8
  %call9 = call i8* @strcpy(i8* %arraydecay8, i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %9 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  ret %struct.pfs_auth_info* %9
}

declare i8* @strcpy(i8*, i8*) #1

declare %struct.passwd* @getpwuid(i32) #1

; Function Attrs: nounwind
declare i32 @getuid() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
