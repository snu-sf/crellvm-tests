; ModuleID = './MultiSource.Applications.Burg/2.list.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intlist = type { i32, %struct.intlist* }
%struct.list = type { i8*, %struct.list* }

@rcsid_list = global [46 x i8] c"$Id: list.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16

; Function Attrs: nounwind uwtable
define %struct.intlist* @newIntList(i32 %x, %struct.intlist* %next) #0 {
entry:
  %x.addr = alloca i32, align 4
  %next.addr = alloca %struct.intlist*, align 8
  %l = alloca %struct.intlist*, align 8
  store i32 %x, i32* %x.addr, align 4
  store %struct.intlist* %next, %struct.intlist** %next.addr, align 8
  %call = call i8* @zalloc(i32 16)
  %0 = bitcast i8* %call to %struct.intlist*
  store %struct.intlist* %0, %struct.intlist** %l, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load %struct.intlist*, %struct.intlist** %l, align 8
  %x1 = getelementptr inbounds %struct.intlist, %struct.intlist* %2, i32 0, i32 0
  store i32 %1, i32* %x1, align 4
  %3 = load %struct.intlist*, %struct.intlist** %next.addr, align 8
  %4 = load %struct.intlist*, %struct.intlist** %l, align 8
  %next2 = getelementptr inbounds %struct.intlist, %struct.intlist* %4, i32 0, i32 1
  store %struct.intlist* %3, %struct.intlist** %next2, align 8
  %5 = load %struct.intlist*, %struct.intlist** %l, align 8
  ret %struct.intlist* %5
}

declare i8* @zalloc(i32) #1

; Function Attrs: nounwind uwtable
define %struct.list* @newList(i8* %x, %struct.list* %next) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %next.addr = alloca %struct.list*, align 8
  %l = alloca %struct.list*, align 8
  store i8* %x, i8** %x.addr, align 8
  store %struct.list* %next, %struct.list** %next.addr, align 8
  %call = call i8* @zalloc(i32 16)
  %0 = bitcast i8* %call to %struct.list*
  store %struct.list* %0, %struct.list** %l, align 8
  %1 = load i8*, i8** %x.addr, align 8
  %2 = load %struct.list*, %struct.list** %l, align 8
  %x1 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  store i8* %1, i8** %x1, align 8
  %3 = load %struct.list*, %struct.list** %next.addr, align 8
  %4 = load %struct.list*, %struct.list** %l, align 8
  %next2 = getelementptr inbounds %struct.list, %struct.list* %4, i32 0, i32 1
  store %struct.list* %3, %struct.list** %next2, align 8
  %5 = load %struct.list*, %struct.list** %l, align 8
  ret %struct.list* %5
}

; Function Attrs: nounwind uwtable
define %struct.list* @appendList(i8* %x, %struct.list* %l) #0 {
entry:
  %retval = alloca %struct.list*, align 8
  %x.addr = alloca i8*, align 8
  %l.addr = alloca %struct.list*, align 8
  %last = alloca %struct.list*, align 8
  %p = alloca %struct.list*, align 8
  store i8* %x, i8** %x.addr, align 8
  store %struct.list* %l, %struct.list** %l.addr, align 8
  store %struct.list* null, %struct.list** %last, align 8
  %0 = load %struct.list*, %struct.list** %l.addr, align 8
  store %struct.list* %0, %struct.list** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.list*, %struct.list** %p, align 8
  %tobool = icmp ne %struct.list* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.list*, %struct.list** %p, align 8
  store %struct.list* %2, %struct.list** %last, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.list*, %struct.list** %p, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %3, i32 0, i32 1
  %4 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %4, %struct.list** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.list*, %struct.list** %last, align 8
  %tobool1 = icmp ne %struct.list* %5, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %6 = load i8*, i8** %x.addr, align 8
  %call = call %struct.list* @newList(i8* %6, %struct.list* null)
  %7 = load %struct.list*, %struct.list** %last, align 8
  %next2 = getelementptr inbounds %struct.list, %struct.list* %7, i32 0, i32 1
  store %struct.list* %call, %struct.list** %next2, align 8
  %8 = load %struct.list*, %struct.list** %l.addr, align 8
  store %struct.list* %8, %struct.list** %retval
  br label %return

if.else:                                          ; preds = %for.end
  %9 = load i8*, i8** %x.addr, align 8
  %call3 = call %struct.list* @newList(i8* %9, %struct.list* null)
  store %struct.list* %call3, %struct.list** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load %struct.list*, %struct.list** %retval
  ret %struct.list* %10
}

; Function Attrs: nounwind uwtable
define void @foreachList(i8* (i8*)* %f, %struct.list* %l) #0 {
entry:
  %f.addr = alloca i8* (i8*)*, align 8
  %l.addr = alloca %struct.list*, align 8
  store i8* (i8*)* %f, i8* (i8*)** %f.addr, align 8
  store %struct.list* %l, %struct.list** %l.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.list*, %struct.list** %l.addr, align 8
  %tobool = icmp ne %struct.list* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8* (i8*)*, i8* (i8*)** %f.addr, align 8
  %2 = load %struct.list*, %struct.list** %l.addr, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %3 = load i8*, i8** %x, align 8
  %call = call i8* %1(i8* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.list*, %struct.list** %l.addr, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %4, i32 0, i32 1
  %5 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %5, %struct.list** %l.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @reveachList(i8* (i8*)* %f, %struct.list* %l) #0 {
entry:
  %f.addr = alloca i8* (i8*)*, align 8
  %l.addr = alloca %struct.list*, align 8
  store i8* (i8*)* %f, i8* (i8*)** %f.addr, align 8
  store %struct.list* %l, %struct.list** %l.addr, align 8
  %0 = load %struct.list*, %struct.list** %l.addr, align 8
  %tobool = icmp ne %struct.list* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8* (i8*)*, i8* (i8*)** %f.addr, align 8
  %2 = load %struct.list*, %struct.list** %l.addr, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 1
  %3 = load %struct.list*, %struct.list** %next, align 8
  call void @reveachList(i8* (i8*)* %1, %struct.list* %3)
  %4 = load i8* (i8*)*, i8* (i8*)** %f.addr, align 8
  %5 = load %struct.list*, %struct.list** %l.addr, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %5, i32 0, i32 0
  %6 = load i8*, i8** %x, align 8
  %call = call i8* %4(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @length(%struct.list* %l) #0 {
entry:
  %l.addr = alloca %struct.list*, align 8
  %c = alloca i32, align 4
  store %struct.list* %l, %struct.list** %l.addr, align 8
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.list*, %struct.list** %l.addr, align 8
  %tobool = icmp ne %struct.list* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %c, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %c, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load %struct.list*, %struct.list** %l.addr, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 1
  %3 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %3, %struct.list** %l.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %c, align 4
  ret i32 %4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
