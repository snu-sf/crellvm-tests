; ModuleID = 'mcf.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

@net = common global %struct.network zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"active arcs                : %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"simplex iterations         : %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"objective value            : %0.0f\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"erased arcs                : %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"new implicit arcs          : %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"not enough memory, exit(-1)\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"checksum                   : %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\0AMCF SPEC CPU2006 version 1.10\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Copyright (c) 2000-2002 Andreas Loebel & ZIB\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Copyright (c) 2003-2005 Andreas Loebel\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"read error, exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"nodes                      : %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"mcf.out\00", align 1

; Function Attrs: nounwind uwtable
define i64 @global_opt() #0 {
entry:
  %new_arcs = alloca i64, align 8
  %residual_nb_it = alloca i64, align 8
  store i64 -1, i64* %new_arcs, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 3), align 8
  %cmp = icmp sle i64 %0, 15000
  %cond = select i1 %cmp, i32 5, i32 5
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %residual_nb_it, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %entry
  %1 = load i64, i64* %new_arcs, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 5), align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i64 %2)
  %call1 = call i64 @primal_net_simplex(%struct.network* @net)
  %3 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 27), align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i64 %3)
  %call3 = call double @flow_cost(%struct.network* @net)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), double %call3)
  %4 = load i64, i64* %residual_nb_it, align 8
  %tobool5 = icmp ne i64 %4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 7), align 8
  %tobool6 = icmp ne i64 %5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.end
  %call8 = call i64 @suspend_impl(%struct.network* @net, i64 -1, i64 0)
  store i64 %call8, i64* %new_arcs, align 8
  %6 = load i64, i64* %new_arcs, align 8
  %tobool9 = icmp ne i64 %6, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.7
  %7 = load i64, i64* %new_arcs, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i64 %7)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %call14 = call i64 @price_out_impl(%struct.network* @net)
  store i64 %call14, i64* %new_arcs, align 8
  %8 = load i64, i64* %new_arcs, align 8
  %tobool15 = icmp ne i64 %8, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %9 = load i64, i64* %new_arcs, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i64 %9)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  %10 = load i64, i64* %new_arcs, align 8
  %cmp19 = icmp slt i64 %10, 0
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.18
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 -1) #5
  unreachable

if.end.23:                                        ; preds = %if.end.18
  %11 = load i64, i64* %residual_nb_it, align 8
  %dec = add nsw i64 %11, -1
  store i64 %dec, i64* %residual_nb_it, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %12 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 29), align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i64 %12)
  ret i64 0
}

declare i32 @printf(i8*, ...) #1

declare i64 @primal_net_simplex(%struct.network*) #1

declare double @flow_cost(%struct.network*) #1

declare i64 @suspend_impl(%struct.network*, i64, i64) #1

declare i64 @price_out_impl(%struct.network*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 0, i32 0), i8 0, i64 624, i32 1, i1 false)
  store i64 10000000, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 18), align 8
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call5 = call i8* @strcpy(i8* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 0, i32 0), i8* %2) #3
  %call6 = call i64 @read_min(%struct.network* @net)
  %tobool = icmp ne i64 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  %call9 = call i64 @getfree(%struct.network* @net)
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 3), align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i64 %3)
  %call12 = call i64 @primal_start_artificial(%struct.network* @net)
  %call13 = call i64 @global_opt()
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0))
  %call15 = call i64 @write_circulations(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct.network* @net)
  %tobool16 = icmp ne i64 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.10
  %call18 = call i64 @getfree(%struct.network* @net)
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.10
  %call20 = call i64 @getfree(%struct.network* @net)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.7, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i64 @read_min(%struct.network*) #1

declare i64 @getfree(%struct.network*) #1

declare i64 @primal_start_artificial(%struct.network*) #1

declare i64 @write_circulations(i8*, %struct.network*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
