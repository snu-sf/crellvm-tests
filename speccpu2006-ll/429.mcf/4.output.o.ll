; ModuleID = 'output.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"***\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i64 @write_circulations(i8* %outfile, %struct.network* %net) #0 {
entry:
  %retval = alloca i64, align 8
  %outfile.addr = alloca i8*, align 8
  %net.addr = alloca %struct.network*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %block = alloca %struct.arc*, align 8
  %arc = alloca %struct.arc*, align 8
  %arc2 = alloca %struct.arc*, align 8
  %first_impl = alloca %struct.arc*, align 8
  store i8* %outfile, i8** %outfile.addr, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %out, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 24
  %1 = load %struct.arc*, %struct.arc** %stop_arcs, align 8
  %2 = load %struct.network*, %struct.network** %net.addr, align 8
  %m_impl = getelementptr inbounds %struct.network, %struct.network* %2, i32 0, i32 7
  %3 = load i64, i64* %m_impl, align 8
  %idx.neg = sub i64 0, %3
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %1, i64 %idx.neg
  store %struct.arc* %add.ptr, %struct.arc** %first_impl, align 8
  %4 = load i8*, i8** %outfile.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %out, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.network*, %struct.network** %net.addr, align 8
  call void @refresh_neighbour_lists(%struct.network* %5)
  %6 = load %struct.network*, %struct.network** %net.addr, align 8
  %n = getelementptr inbounds %struct.network, %struct.network* %6, i32 0, i32 2
  %7 = load i64, i64* %n, align 8
  %8 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes = getelementptr inbounds %struct.network, %struct.network* %8, i32 0, i32 21
  %9 = load %struct.node*, %struct.node** %nodes, align 8
  %arrayidx = getelementptr inbounds %struct.node, %struct.node* %9, i64 %7
  %firstout = getelementptr inbounds %struct.node, %struct.node* %arrayidx, i32 0, i32 7
  %10 = load %struct.arc*, %struct.arc** %firstout, align 8
  store %struct.arc* %10, %struct.arc** %block, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %if.end
  %11 = load %struct.arc*, %struct.arc** %block, align 8
  %tobool = icmp ne %struct.arc* %11, null
  br i1 %tobool, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  %12 = load %struct.arc*, %struct.arc** %block, align 8
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %12, i32 0, i32 6
  %13 = load i64, i64* %flow, align 8
  %tobool1 = icmp ne i64 %13, 0
  br i1 %tobool1, label %if.then.2, label %if.end.29

if.then.2:                                        ; preds = %for.body
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  %15 = load %struct.arc*, %struct.arc** %block, align 8
  store %struct.arc* %15, %struct.arc** %arc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %if.then.2
  %16 = load %struct.arc*, %struct.arc** %arc, align 8
  %tobool4 = icmp ne %struct.arc* %16, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct.arc*, %struct.arc** %arc, align 8
  %18 = load %struct.arc*, %struct.arc** %first_impl, align 8
  %cmp5 = icmp uge %struct.arc* %17, %18
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %while.body
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %while.body
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %21 = load %struct.arc*, %struct.arc** %arc, align 8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %21, i32 0, i32 2
  %22 = load %struct.node*, %struct.node** %head, align 8
  %number = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 12
  %23 = load i32, i32* %number, align 4
  %sub = sub nsw i32 0, %23
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %sub)
  %24 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips = getelementptr inbounds %struct.network, %struct.network* %24, i32 0, i32 3
  %25 = load i64, i64* %n_trips, align 8
  %26 = load %struct.arc*, %struct.arc** %arc, align 8
  %head10 = getelementptr inbounds %struct.arc, %struct.arc* %26, i32 0, i32 2
  %27 = load %struct.node*, %struct.node** %head10, align 8
  %arrayidx11 = getelementptr inbounds %struct.node, %struct.node* %27, i64 %25
  %firstout12 = getelementptr inbounds %struct.node, %struct.node* %arrayidx11, i32 0, i32 7
  %28 = load %struct.arc*, %struct.arc** %firstout12, align 8
  store %struct.arc* %28, %struct.arc** %arc2, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.end.8
  %29 = load %struct.arc*, %struct.arc** %arc2, align 8
  %tobool14 = icmp ne %struct.arc* %29, null
  br i1 %tobool14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %30 = load %struct.arc*, %struct.arc** %arc2, align 8
  %flow16 = getelementptr inbounds %struct.arc, %struct.arc* %30, i32 0, i32 6
  %31 = load i64, i64* %flow16, align 8
  %tobool17 = icmp ne i64 %31, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body.15
  br label %for.end

if.end.19:                                        ; preds = %for.body.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %32 = load %struct.arc*, %struct.arc** %arc2, align 8
  %nextout = getelementptr inbounds %struct.arc, %struct.arc* %32, i32 0, i32 4
  %33 = load %struct.arc*, %struct.arc** %nextout, align 8
  store %struct.arc* %33, %struct.arc** %arc2, align 8
  br label %for.cond.13

for.end:                                          ; preds = %if.then.18, %for.cond.13
  %34 = load %struct.arc*, %struct.arc** %arc2, align 8
  %tobool20 = icmp ne %struct.arc* %34, null
  br i1 %tobool20, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %for.end
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* %35)
  store i64 -1, i64* %retval
  br label %return

if.end.23:                                        ; preds = %for.end
  %36 = load %struct.arc*, %struct.arc** %arc2, align 8
  %head24 = getelementptr inbounds %struct.arc, %struct.arc* %36, i32 0, i32 2
  %37 = load %struct.node*, %struct.node** %head24, align 8
  %number25 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 12
  %38 = load i32, i32* %number25, align 4
  %tobool26 = icmp ne i32 %38, 0
  br i1 %tobool26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.23
  %39 = load %struct.arc*, %struct.arc** %arc2, align 8
  store %struct.arc* %39, %struct.arc** %arc, align 8
  br label %if.end.28

if.else:                                          ; preds = %if.end.23
  store %struct.arc* null, %struct.arc** %arc, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.27
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.29

if.end.29:                                        ; preds = %while.end, %for.body
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %40 = load %struct.arc*, %struct.arc** %block, align 8
  %nextout31 = getelementptr inbounds %struct.arc, %struct.arc* %40, i32 0, i32 4
  %41 = load %struct.arc*, %struct.arc** %nextout31, align 8
  store %struct.arc* %41, %struct.arc** %block, align 8
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call33 = call i32 @fclose(%struct._IO_FILE* %42)
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %for.end.32, %if.then.21, %if.then
  %43 = load i64, i64* %retval
  ret i64 %43
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @refresh_neighbour_lists(%struct.network*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
