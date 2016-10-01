; ModuleID = './MultiSource.Benchmarks.Olden/27.bh.walksub.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i16, double, [3 x double], i32, i32 }
%struct.hgstruct = type { %struct.bnode*, [3 x double], double, [3 x double] }
%struct.bnode = type { i16, double, [3 x double], i32, i32, [3 x double], [3 x double], [3 x double], double, %struct.bnode*, %struct.bnode* }
%struct.cnode = type { i16, double, [3 x double], i32, i32, [8 x %struct.node*], %struct.cnode* }

@NumNodes = common global i32 0, align 4
@root = common global %struct.node* null, align 8
@rmin = common global [3 x double] zeroinitializer, align 16
@xxxrsize = common global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @walksub(%struct.hgstruct* noalias sret %agg.result, %struct.node* %p, double %dsq, double %tolsq, %struct.hgstruct* byval align 8 %hg, i32 %level) #0 {
entry:
  %p.addr = alloca %struct.node*, align 8
  %dsq.addr = alloca double, align 8
  %tolsq.addr = alloca double, align 8
  %level.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca %struct.node*, align 8
  %tmp = alloca [8 x %struct.node*], align 16
  %tmp3 = alloca %struct.hgstruct, align 8
  %tmp6 = alloca %struct.hgstruct, align 8
  store %struct.node* %p, %struct.node** %p.addr, align 8
  store double %dsq, double* %dsq.addr, align 8
  store double %tolsq, double* %tolsq.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct.node*, %struct.node** %p.addr, align 8
  %1 = load double, double* %dsq.addr, align 8
  %2 = load double, double* %tolsq.addr, align 8
  %call = call signext i16 @subdivp(%struct.node* %0, double %1, double %2, %struct.hgstruct* byval align 8 %hg)
  %tobool = icmp ne i16 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %3, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.node*, %struct.node** %p.addr, align 8
  %6 = bitcast %struct.node* %5 to %struct.cnode*
  %subp = getelementptr inbounds %struct.cnode, %struct.cnode* %6, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %subp, i32 0, i64 %idxprom
  %7 = load %struct.node*, %struct.node** %arrayidx, align 8
  store %struct.node* %7, %struct.node** %r, align 8
  %8 = load %struct.node*, %struct.node** %r, align 8
  %cmp1 = icmp ne %struct.node* %8, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %for.body
  %9 = load %struct.node*, %struct.node** %r, align 8
  %10 = load double, double* %dsq.addr, align 8
  %div = fdiv double %10, 4.000000e+00
  %11 = load double, double* %tolsq.addr, align 8
  %12 = load i32, i32* %level.addr, align 4
  %add = add nsw i32 %12, 1
  call void @walksub(%struct.hgstruct* sret %tmp3, %struct.node* %9, double %div, double %11, %struct.hgstruct* byval align 8 %hg, i32 %add)
  %13 = bitcast %struct.hgstruct* %hg to i8*
  %14 = bitcast %struct.hgstruct* %tmp3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 64, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.8

if.else:                                          ; preds = %entry
  %16 = load %struct.node*, %struct.node** %p.addr, align 8
  %pskip = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %hg, i32 0, i32 0
  %17 = load %struct.bnode*, %struct.bnode** %pskip, align 8
  %18 = bitcast %struct.bnode* %17 to %struct.node*
  %cmp4 = icmp ne %struct.node* %16, %18
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.else
  %19 = load %struct.node*, %struct.node** %p.addr, align 8
  call void @gravsub(%struct.hgstruct* sret %tmp6, %struct.node* %19, %struct.hgstruct* byval align 8 %hg)
  %20 = bitcast %struct.hgstruct* %hg to i8*
  %21 = bitcast %struct.hgstruct* %tmp6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 64, i32 8, i1 false)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %for.end
  %22 = bitcast %struct.hgstruct* %agg.result to i8*
  %23 = bitcast %struct.hgstruct* %hg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 64, i32 8, i1 false)
  ret void
}

declare signext i16 @subdivp(%struct.node*, double, double, %struct.hgstruct* byval align 8) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @gravsub(%struct.hgstruct* sret, %struct.node*, %struct.hgstruct* byval align 8) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
