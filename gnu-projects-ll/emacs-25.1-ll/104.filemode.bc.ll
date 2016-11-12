; ModuleID = './lib/filemode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

; Function Attrs: nounwind uwtable
define void @strmode(i32 %mode, i8* %str) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %call = call signext i8 @ftypelet(i32 %0)
  %1 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 %call, i8* %arrayidx, align 1
  %2 = load i32, i32* %mode.addr, align 4
  %and = and i32 %2, 256
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 114, i32 45
  %conv = trunc i32 %cond to i8
  %3 = load i8*, i8** %str.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 %conv, i8* %arrayidx1, align 1
  %4 = load i32, i32* %mode.addr, align 4
  %and2 = and i32 %4, 128
  %tobool3 = icmp ne i32 %and2, 0
  %cond4 = select i1 %tobool3, i32 119, i32 45
  %conv5 = trunc i32 %cond4 to i8
  %5 = load i8*, i8** %str.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 2
  store i8 %conv5, i8* %arrayidx6, align 1
  %6 = load i32, i32* %mode.addr, align 4
  %and7 = and i32 %6, 2048
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %mode.addr, align 4
  %and9 = and i32 %7, 64
  %tobool10 = icmp ne i32 %and9, 0
  %cond11 = select i1 %tobool10, i32 115, i32 83
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %mode.addr, align 4
  %and12 = and i32 %8, 64
  %tobool13 = icmp ne i32 %and12, 0
  %cond14 = select i1 %tobool13, i32 120, i32 45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15 = phi i32 [ %cond11, %cond.true ], [ %cond14, %cond.false ]
  %conv16 = trunc i32 %cond15 to i8
  %9 = load i8*, i8** %str.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %9, i64 3
  store i8 %conv16, i8* %arrayidx17, align 1
  %10 = load i32, i32* %mode.addr, align 4
  %and18 = and i32 %10, 32
  %tobool19 = icmp ne i32 %and18, 0
  %cond20 = select i1 %tobool19, i32 114, i32 45
  %conv21 = trunc i32 %cond20 to i8
  %11 = load i8*, i8** %str.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %11, i64 4
  store i8 %conv21, i8* %arrayidx22, align 1
  %12 = load i32, i32* %mode.addr, align 4
  %and23 = and i32 %12, 16
  %tobool24 = icmp ne i32 %and23, 0
  %cond25 = select i1 %tobool24, i32 119, i32 45
  %conv26 = trunc i32 %cond25 to i8
  %13 = load i8*, i8** %str.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %13, i64 5
  store i8 %conv26, i8* %arrayidx27, align 1
  %14 = load i32, i32* %mode.addr, align 4
  %and28 = and i32 %14, 1024
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %cond.true.30, label %cond.false.34

cond.true.30:                                     ; preds = %cond.end
  %15 = load i32, i32* %mode.addr, align 4
  %and31 = and i32 %15, 8
  %tobool32 = icmp ne i32 %and31, 0
  %cond33 = select i1 %tobool32, i32 115, i32 83
  br label %cond.end.38

cond.false.34:                                    ; preds = %cond.end
  %16 = load i32, i32* %mode.addr, align 4
  %and35 = and i32 %16, 8
  %tobool36 = icmp ne i32 %and35, 0
  %cond37 = select i1 %tobool36, i32 120, i32 45
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.34, %cond.true.30
  %cond39 = phi i32 [ %cond33, %cond.true.30 ], [ %cond37, %cond.false.34 ]
  %conv40 = trunc i32 %cond39 to i8
  %17 = load i8*, i8** %str.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %17, i64 6
  store i8 %conv40, i8* %arrayidx41, align 1
  %18 = load i32, i32* %mode.addr, align 4
  %and42 = and i32 %18, 4
  %tobool43 = icmp ne i32 %and42, 0
  %cond44 = select i1 %tobool43, i32 114, i32 45
  %conv45 = trunc i32 %cond44 to i8
  %19 = load i8*, i8** %str.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %19, i64 7
  store i8 %conv45, i8* %arrayidx46, align 1
  %20 = load i32, i32* %mode.addr, align 4
  %and47 = and i32 %20, 2
  %tobool48 = icmp ne i32 %and47, 0
  %cond49 = select i1 %tobool48, i32 119, i32 45
  %conv50 = trunc i32 %cond49 to i8
  %21 = load i8*, i8** %str.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %21, i64 8
  store i8 %conv50, i8* %arrayidx51, align 1
  %22 = load i32, i32* %mode.addr, align 4
  %and52 = and i32 %22, 512
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %cond.true.54, label %cond.false.58

cond.true.54:                                     ; preds = %cond.end.38
  %23 = load i32, i32* %mode.addr, align 4
  %and55 = and i32 %23, 1
  %tobool56 = icmp ne i32 %and55, 0
  %cond57 = select i1 %tobool56, i32 116, i32 84
  br label %cond.end.62

cond.false.58:                                    ; preds = %cond.end.38
  %24 = load i32, i32* %mode.addr, align 4
  %and59 = and i32 %24, 1
  %tobool60 = icmp ne i32 %and59, 0
  %cond61 = select i1 %tobool60, i32 120, i32 45
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.58, %cond.true.54
  %cond63 = phi i32 [ %cond57, %cond.true.54 ], [ %cond61, %cond.false.58 ]
  %conv64 = trunc i32 %cond63 to i8
  %25 = load i8*, i8** %str.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %25, i64 9
  store i8 %conv64, i8* %arrayidx65, align 1
  %26 = load i8*, i8** %str.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %26, i64 10
  store i8 32, i8* %arrayidx66, align 1
  %27 = load i8*, i8** %str.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %27, i64 11
  store i8 0, i8* %arrayidx67, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal signext i8 @ftypelet(i32 %bits) #0 {
entry:
  %retval = alloca i8, align 1
  %bits.addr = alloca i32, align 4
  store i32 %bits, i32* %bits.addr, align 4
  %0 = load i32, i32* %bits.addr, align 4
  %and = and i32 %0, 61440
  %cmp = icmp eq i32 %and, 32768
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 45, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %bits.addr, align 4
  %and1 = and i32 %1, 61440
  %cmp2 = icmp eq i32 %and1, 16384
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8 100, i8* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load i32, i32* %bits.addr, align 4
  %and5 = and i32 %2, 61440
  %cmp6 = icmp eq i32 %and5, 24576
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i8 98, i8* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %3 = load i32, i32* %bits.addr, align 4
  %and9 = and i32 %3, 61440
  %cmp10 = icmp eq i32 %and9, 8192
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i8 99, i8* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %4 = load i32, i32* %bits.addr, align 4
  %and13 = and i32 %4, 61440
  %cmp14 = icmp eq i32 %and13, 40960
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i8 108, i8* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %5 = load i32, i32* %bits.addr, align 4
  %and17 = and i32 %5, 61440
  %cmp18 = icmp eq i32 %and17, 4096
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i8 112, i8* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %6 = load i32, i32* %bits.addr, align 4
  %and21 = and i32 %6, 61440
  %cmp22 = icmp eq i32 %and21, 49152
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  store i8 115, i8* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  store i8 63, i8* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %7 = load i8, i8* %retval
  ret i8 %7
}

; Function Attrs: nounwind uwtable
define void @filemodestring(%struct.stat* %statp, i8* %str) #0 {
entry:
  %statp.addr = alloca %struct.stat*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.stat* %statp, %struct.stat** %statp.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.stat*, %struct.stat** %statp.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 3
  %1 = load i32, i32* %st_mode, align 4
  %2 = load i8*, i8** %str.addr, align 8
  call void @strmode(i32 %1, i8* %2)
  %3 = load %struct.stat*, %struct.stat** %statp.addr, align 8
  %st_mode1 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 3
  %4 = load i32, i32* %st_mode1, align 4
  %5 = load %struct.stat*, %struct.stat** %statp.addr, align 8
  %st_mode2 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3
  %6 = load i32, i32* %st_mode2, align 4
  %sub = sub i32 %4, %6
  %tobool = icmp ne i32 %sub, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  store i8 70, i8* %arrayidx, align 1
  br label %if.end.18

if.else:                                          ; preds = %entry
  %8 = load %struct.stat*, %struct.stat** %statp.addr, align 8
  %st_mode3 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3
  %9 = load i32, i32* %st_mode3, align 4
  %10 = load %struct.stat*, %struct.stat** %statp.addr, align 8
  %st_mode4 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3
  %11 = load i32, i32* %st_mode4, align 4
  %sub5 = sub i32 %9, %11
  %tobool6 = icmp ne i32 %sub5, 0
  br i1 %tobool6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %12 = load i8*, i8** %str.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 81, i8* %arrayidx8, align 1
  br label %if.end.17

if.else.9:                                        ; preds = %if.else
  %13 = load %struct.stat*, %struct.stat** %statp.addr, align 8
  %st_mode10 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 3
  %14 = load i32, i32* %st_mode10, align 4
  %15 = load %struct.stat*, %struct.stat** %statp.addr, align 8
  %st_mode11 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 3
  %16 = load i32, i32* %st_mode11, align 4
  %sub12 = sub i32 %14, %16
  %tobool13 = icmp ne i32 %sub12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.else.9
  %17 = load i8*, i8** %str.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 83, i8* %arrayidx15, align 1
  br label %if.end

if.else.16:                                       ; preds = %if.else.9
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.14
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.7
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
