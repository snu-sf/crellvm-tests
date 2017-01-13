; ModuleID = './MultiSource.Benchmarks.Prolangs-C/79.agrep.utilities.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snode = type { %struct.rnode*, i32, %struct.snode* }
%struct.rnode = type { i16, %union.anon, i16, %struct.pnode*, %struct.pnode* }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.rnode*, %struct.rnode* }
%struct.pnode = type { i32, %struct.pnode* }

; Function Attrs: nounwind uwtable
define %struct.snode* @Push(%struct.snode** %s, %struct.rnode* %v) #0 {
entry:
  %retval = alloca %struct.snode*, align 8
  %s.addr = alloca %struct.snode**, align 8
  %v.addr = alloca %struct.rnode*, align 8
  %node = alloca %struct.snode*, align 8
  store %struct.snode** %s, %struct.snode*** %s.addr, align 8
  store %struct.rnode* %v, %struct.rnode** %v.addr, align 8
  %call = call noalias i8* @malloc(i64 24) #2
  %0 = bitcast i8* %call to %struct.snode*
  store %struct.snode* %0, %struct.snode** %node, align 8
  %1 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %cmp = icmp eq %struct.snode** %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.snode*, %struct.snode** %node, align 8
  %cmp1 = icmp eq %struct.snode* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.snode* null, %struct.snode** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %4 = load %struct.snode*, %struct.snode** %3, align 8
  %5 = load %struct.snode*, %struct.snode** %node, align 8
  %next = getelementptr inbounds %struct.snode, %struct.snode* %5, i32 0, i32 2
  store %struct.snode* %4, %struct.snode** %next, align 8
  %6 = load %struct.rnode*, %struct.rnode** %v.addr, align 8
  %7 = load %struct.snode*, %struct.snode** %node, align 8
  %val = getelementptr inbounds %struct.snode, %struct.snode* %7, i32 0, i32 0
  store %struct.rnode* %6, %struct.rnode** %val, align 8
  %8 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %9 = load %struct.snode*, %struct.snode** %8, align 8
  %cmp2 = icmp eq %struct.snode* %9, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %10 = load %struct.snode*, %struct.snode** %node, align 8
  %size = getelementptr inbounds %struct.snode, %struct.snode* %10, i32 0, i32 1
  store i32 1, i32* %size, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %11 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %12 = load %struct.snode*, %struct.snode** %11, align 8
  %size4 = getelementptr inbounds %struct.snode, %struct.snode* %12, i32 0, i32 1
  %13 = load i32, i32* %size4, align 4
  %add = add nsw i32 %13, 1
  %14 = load %struct.snode*, %struct.snode** %node, align 8
  %size5 = getelementptr inbounds %struct.snode, %struct.snode* %14, i32 0, i32 1
  store i32 %add, i32* %size5, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  %15 = load %struct.snode*, %struct.snode** %node, align 8
  %16 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  store %struct.snode* %15, %struct.snode** %16, align 8
  %17 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %18 = load %struct.snode*, %struct.snode** %17, align 8
  store %struct.snode* %18, %struct.snode** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %19 = load %struct.snode*, %struct.snode** %retval
  ret %struct.snode* %19
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.rnode* @Pop(%struct.snode** %s) #0 {
entry:
  %retval = alloca %struct.rnode*, align 8
  %s.addr = alloca %struct.snode**, align 8
  %node = alloca %struct.rnode*, align 8
  %temp = alloca %struct.snode*, align 8
  store %struct.snode** %s, %struct.snode*** %s.addr, align 8
  %0 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %cmp = icmp eq %struct.snode** %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %2 = load %struct.snode*, %struct.snode** %1, align 8
  %cmp1 = icmp eq %struct.snode* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %3 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %4 = load %struct.snode*, %struct.snode** %3, align 8
  store %struct.snode* %4, %struct.snode** %temp, align 8
  %5 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %6 = load %struct.snode*, %struct.snode** %5, align 8
  %val = getelementptr inbounds %struct.snode, %struct.snode* %6, i32 0, i32 0
  %7 = load %struct.rnode*, %struct.rnode** %val, align 8
  store %struct.rnode* %7, %struct.rnode** %node, align 8
  %8 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  %9 = load %struct.snode*, %struct.snode** %8, align 8
  %next = getelementptr inbounds %struct.snode, %struct.snode* %9, i32 0, i32 2
  %10 = load %struct.snode*, %struct.snode** %next, align 8
  %11 = load %struct.snode**, %struct.snode*** %s.addr, align 8
  store %struct.snode* %10, %struct.snode** %11, align 8
  %12 = load %struct.snode*, %struct.snode** %temp, align 8
  %13 = bitcast %struct.snode* %12 to i8*
  call void @free(i8* %13) #2
  %14 = load %struct.rnode*, %struct.rnode** %node, align 8
  store %struct.rnode* %14, %struct.rnode** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %15 = load %struct.rnode*, %struct.rnode** %retval
  ret %struct.rnode* %15
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.rnode* @Top(%struct.snode* %s) #0 {
entry:
  %retval = alloca %struct.rnode*, align 8
  %s.addr = alloca %struct.snode*, align 8
  store %struct.snode* %s, %struct.snode** %s.addr, align 8
  %0 = load %struct.snode*, %struct.snode** %s.addr, align 8
  %cmp = icmp eq %struct.snode* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.rnode* null, %struct.rnode** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.snode*, %struct.snode** %s.addr, align 8
  %val = getelementptr inbounds %struct.snode, %struct.snode* %1, i32 0, i32 0
  %2 = load %struct.rnode*, %struct.rnode** %val, align 8
  store %struct.rnode* %2, %struct.rnode** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct.rnode*, %struct.rnode** %retval
  ret %struct.rnode* %3
}

; Function Attrs: nounwind uwtable
define i32 @Size(%struct.snode* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.snode*, align 8
  store %struct.snode* %s, %struct.snode** %s.addr, align 8
  %0 = load %struct.snode*, %struct.snode** %s.addr, align 8
  %cmp = icmp eq %struct.snode* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.snode*, %struct.snode** %s.addr, align 8
  %size = getelementptr inbounds %struct.snode, %struct.snode* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @occurs_in(i32 %n, %struct.pnode* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %p.addr = alloca %struct.pnode*, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct.pnode* %p, %struct.pnode** %p.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.pnode*, %struct.pnode** %p.addr, align 8
  %cmp = icmp ne %struct.pnode* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %n.addr, align 4
  %2 = load %struct.pnode*, %struct.pnode** %p.addr, align 8
  %posnum = getelementptr inbounds %struct.pnode, %struct.pnode* %2, i32 0, i32 0
  %3 = load i32, i32* %posnum, align 4
  %cmp1 = icmp eq i32 %1, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %4 = load %struct.pnode*, %struct.pnode** %p.addr, align 8
  %nextpos = getelementptr inbounds %struct.pnode, %struct.pnode* %4, i32 0, i32 1
  %5 = load %struct.pnode*, %struct.pnode** %nextpos, align 8
  store %struct.pnode* %5, %struct.pnode** %p.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define %struct.pnode* @pset_union(%struct.pnode* %s1, %struct.pnode* %s2) #0 {
entry:
  %retval = alloca %struct.pnode*, align 8
  %s1.addr = alloca %struct.pnode*, align 8
  %s2.addr = alloca %struct.pnode*, align 8
  %hd = alloca %struct.pnode*, align 8
  %curr = alloca %struct.pnode*, align 8
  %new1 = alloca %struct.pnode*, align 8
  store %struct.pnode* %s1, %struct.pnode** %s1.addr, align 8
  store %struct.pnode* %s2, %struct.pnode** %s2.addr, align 8
  store %struct.pnode* null, %struct.pnode** %hd, align 8
  store %struct.pnode* null, %struct.pnode** %curr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %entry
  %0 = load %struct.pnode*, %struct.pnode** %s1.addr, align 8
  %cmp = icmp ne %struct.pnode* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.pnode*, %struct.pnode** %s1.addr, align 8
  %posnum = getelementptr inbounds %struct.pnode, %struct.pnode* %1, i32 0, i32 0
  %2 = load i32, i32* %posnum, align 4
  %3 = load %struct.pnode*, %struct.pnode** %s2.addr, align 8
  %call = call i32 @occurs_in(i32 %2, %struct.pnode* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %while.body
  %call1 = call noalias i8* @malloc(i64 16) #2
  %4 = bitcast i8* %call1 to %struct.pnode*
  store %struct.pnode* %4, %struct.pnode** %new1, align 8
  %5 = load %struct.pnode*, %struct.pnode** %new1, align 8
  %cmp2 = icmp eq %struct.pnode* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store %struct.pnode* null, %struct.pnode** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.pnode*, %struct.pnode** %s1.addr, align 8
  %posnum4 = getelementptr inbounds %struct.pnode, %struct.pnode* %6, i32 0, i32 0
  %7 = load i32, i32* %posnum4, align 4
  %8 = load %struct.pnode*, %struct.pnode** %new1, align 8
  %posnum5 = getelementptr inbounds %struct.pnode, %struct.pnode* %8, i32 0, i32 0
  store i32 %7, i32* %posnum5, align 4
  %9 = load %struct.pnode*, %struct.pnode** %hd, align 8
  %cmp6 = icmp eq %struct.pnode* %9, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %10 = load %struct.pnode*, %struct.pnode** %new1, align 8
  store %struct.pnode* %10, %struct.pnode** %hd, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %11 = load %struct.pnode*, %struct.pnode** %new1, align 8
  %12 = load %struct.pnode*, %struct.pnode** %curr, align 8
  %nextpos = getelementptr inbounds %struct.pnode, %struct.pnode* %12, i32 0, i32 1
  store %struct.pnode* %11, %struct.pnode** %nextpos, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %while.body
  %13 = load %struct.pnode*, %struct.pnode** %new1, align 8
  store %struct.pnode* %13, %struct.pnode** %curr, align 8
  %14 = load %struct.pnode*, %struct.pnode** %s1.addr, align 8
  %nextpos10 = getelementptr inbounds %struct.pnode, %struct.pnode* %14, i32 0, i32 1
  %15 = load %struct.pnode*, %struct.pnode** %nextpos10, align 8
  store %struct.pnode* %15, %struct.pnode** %s1.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct.pnode*, %struct.pnode** %hd, align 8
  %cmp11 = icmp eq %struct.pnode* %16, null
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %while.end
  %17 = load %struct.pnode*, %struct.pnode** %s2.addr, align 8
  store %struct.pnode* %17, %struct.pnode** %hd, align 8
  br label %if.end.15

if.else.13:                                       ; preds = %while.end
  %18 = load %struct.pnode*, %struct.pnode** %s2.addr, align 8
  %19 = load %struct.pnode*, %struct.pnode** %curr, align 8
  %nextpos14 = getelementptr inbounds %struct.pnode, %struct.pnode* %19, i32 0, i32 1
  store %struct.pnode* %18, %struct.pnode** %nextpos14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  %20 = load %struct.pnode*, %struct.pnode** %hd, align 8
  store %struct.pnode* %20, %struct.pnode** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.3
  %21 = load %struct.pnode*, %struct.pnode** %retval
  ret %struct.pnode* %21
}

; Function Attrs: nounwind uwtable
define %struct.pnode* @create_pos(i32 %n) #0 {
entry:
  %retval = alloca %struct.pnode*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca %struct.pnode*, align 8
  store i32 %n, i32* %n.addr, align 4
  %call = call noalias i8* @malloc(i64 16) #2
  %0 = bitcast i8* %call to %struct.pnode*
  store %struct.pnode* %0, %struct.pnode** %x, align 8
  %1 = load %struct.pnode*, %struct.pnode** %x, align 8
  %cmp = icmp eq %struct.pnode* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.pnode* null, %struct.pnode** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  %3 = load %struct.pnode*, %struct.pnode** %x, align 8
  %posnum = getelementptr inbounds %struct.pnode, %struct.pnode* %3, i32 0, i32 0
  store i32 %2, i32* %posnum, align 4
  %4 = load %struct.pnode*, %struct.pnode** %x, align 8
  %nextpos = getelementptr inbounds %struct.pnode, %struct.pnode* %4, i32 0, i32 1
  store %struct.pnode* null, %struct.pnode** %nextpos, align 8
  %5 = load %struct.pnode*, %struct.pnode** %x, align 8
  store %struct.pnode* %5, %struct.pnode** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.pnode*, %struct.pnode** %retval
  ret %struct.pnode* %6
}

; Function Attrs: nounwind uwtable
define i32 @subset_pset(%struct.pnode* %s1, %struct.pnode* %s2) #0 {
entry:
  %s1.addr = alloca %struct.pnode*, align 8
  %s2.addr = alloca %struct.pnode*, align 8
  %subs = alloca i32, align 4
  store %struct.pnode* %s1, %struct.pnode** %s1.addr, align 8
  store %struct.pnode* %s2, %struct.pnode** %s2.addr, align 8
  store i32 1, i32* %subs, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %0 = load %struct.pnode*, %struct.pnode** %s1.addr, align 8
  %cmp = icmp ne %struct.pnode* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %subs, align 4
  %cmp1 = icmp ne i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %while.body, label %while.end.11

while.body:                                       ; preds = %land.end
  store i32 0, i32* %subs, align 4
  br label %while.cond.2

while.cond.2:                                     ; preds = %if.end, %while.body
  %3 = load %struct.pnode*, %struct.pnode** %s2.addr, align 8
  %cmp3 = icmp ne %struct.pnode* %3, null
  br i1 %cmp3, label %land.rhs.4, label %land.end.6

land.rhs.4:                                       ; preds = %while.cond.2
  %4 = load i32, i32* %subs, align 4
  %cmp5 = icmp ne i32 %4, 1
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %while.cond.2
  %5 = phi i1 [ false, %while.cond.2 ], [ %cmp5, %land.rhs.4 ]
  br i1 %5, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %land.end.6
  %6 = load %struct.pnode*, %struct.pnode** %s1.addr, align 8
  %posnum = getelementptr inbounds %struct.pnode, %struct.pnode* %6, i32 0, i32 0
  %7 = load i32, i32* %posnum, align 4
  %8 = load %struct.pnode*, %struct.pnode** %s2.addr, align 8
  %posnum8 = getelementptr inbounds %struct.pnode, %struct.pnode* %8, i32 0, i32 0
  %9 = load i32, i32* %posnum8, align 4
  %cmp9 = icmp eq i32 %7, %9
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %while.body.7
  store i32 1, i32* %subs, align 4
  br label %if.end

if.else:                                          ; preds = %while.body.7
  %10 = load %struct.pnode*, %struct.pnode** %s2.addr, align 8
  %nextpos = getelementptr inbounds %struct.pnode, %struct.pnode* %10, i32 0, i32 1
  %11 = load %struct.pnode*, %struct.pnode** %nextpos, align 8
  store %struct.pnode* %11, %struct.pnode** %s2.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond.2

while.end:                                        ; preds = %land.end.6
  %12 = load %struct.pnode*, %struct.pnode** %s1.addr, align 8
  %nextpos10 = getelementptr inbounds %struct.pnode, %struct.pnode* %12, i32 0, i32 1
  %13 = load %struct.pnode*, %struct.pnode** %nextpos10, align 8
  store %struct.pnode* %13, %struct.pnode** %s1.addr, align 8
  br label %while.cond

while.end.11:                                     ; preds = %land.end
  %14 = load i32, i32* %subs, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @eq_pset(%struct.pnode* %s1, %struct.pnode* %s2) #0 {
entry:
  %s1.addr = alloca %struct.pnode*, align 8
  %s2.addr = alloca %struct.pnode*, align 8
  store %struct.pnode* %s1, %struct.pnode** %s1.addr, align 8
  store %struct.pnode* %s2, %struct.pnode** %s2.addr, align 8
  %0 = load %struct.pnode*, %struct.pnode** %s1.addr, align 8
  %1 = load %struct.pnode*, %struct.pnode** %s2.addr, align 8
  %call = call i32 @subset_pset(%struct.pnode* %0, %struct.pnode* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.pnode*, %struct.pnode** %s2.addr, align 8
  %3 = load %struct.pnode*, %struct.pnode** %s1.addr, align 8
  %call1 = call i32 @subset_pset(%struct.pnode* %2, %struct.pnode* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
