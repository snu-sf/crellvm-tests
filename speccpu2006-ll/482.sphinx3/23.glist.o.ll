; ModuleID = 'glist.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnode_s = type { %union.anytype_s, %struct.gnode_s* }
%union.anytype_s = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"glist.c\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gnode_s* @glist_add_ptr(%struct.gnode_s* %g, i8* %ptr) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %call = call i8* @__mymalloc__(i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 69)
  %0 = bitcast i8* %call to %struct.gnode_s*
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 0
  %ptr1 = bitcast %union.anytype_s* %data to i8**
  store i8* %1, i8** %ptr1, align 8
  %3 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  %4 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %4, i32 0, i32 1
  store %struct.gnode_s* %3, %struct.gnode_s** %next, align 8
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  ret %struct.gnode_s* %5
}

declare i8* @__mymalloc__(i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.gnode_s* @glist_add_int32(%struct.gnode_s* %g, i32 %val) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %val.addr = alloca i32, align 4
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %call = call i8* @__mymalloc__(i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 80)
  %0 = bitcast i8* %call to %struct.gnode_s*
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  %1 = load i32, i32* %val.addr, align 4
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 0
  %int32 = bitcast %union.anytype_s* %data to i32*
  store i32 %1, i32* %int32, align 4
  %3 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  %4 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %4, i32 0, i32 1
  store %struct.gnode_s* %3, %struct.gnode_s** %next, align 8
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  ret %struct.gnode_s* %5
}

; Function Attrs: nounwind uwtable
define %struct.gnode_s* @glist_add_uint32(%struct.gnode_s* %g, i32 %val) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %val.addr = alloca i32, align 4
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %call = call i8* @__mymalloc__(i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 91)
  %0 = bitcast i8* %call to %struct.gnode_s*
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  %1 = load i32, i32* %val.addr, align 4
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 0
  %uint32 = bitcast %union.anytype_s* %data to i32*
  store i32 %1, i32* %uint32, align 4
  %3 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  %4 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %4, i32 0, i32 1
  store %struct.gnode_s* %3, %struct.gnode_s** %next, align 8
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  ret %struct.gnode_s* %5
}

; Function Attrs: nounwind uwtable
define %struct.gnode_s* @glist_add_float32(%struct.gnode_s* %g, float %val) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %val.addr = alloca float, align 4
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store float %val, float* %val.addr, align 4
  %call = call i8* @__mymalloc__(i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 102)
  %0 = bitcast i8* %call to %struct.gnode_s*
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  %1 = load float, float* %val.addr, align 4
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 0
  %float32 = bitcast %union.anytype_s* %data to float*
  store float %1, float* %float32, align 4
  %3 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  %4 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %4, i32 0, i32 1
  store %struct.gnode_s* %3, %struct.gnode_s** %next, align 8
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  ret %struct.gnode_s* %5
}

; Function Attrs: nounwind uwtable
define %struct.gnode_s* @glist_add_float64(%struct.gnode_s* %g, double %val) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %val.addr = alloca double, align 8
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store double %val, double* %val.addr, align 8
  %call = call i8* @__mymalloc__(i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 113)
  %0 = bitcast i8* %call to %struct.gnode_s*
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  %1 = load double, double* %val.addr, align 8
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 0
  %float64 = bitcast %union.anytype_s* %data to double*
  store double %1, double* %float64, align 8
  %3 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  %4 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %4, i32 0, i32 1
  store %struct.gnode_s* %3, %struct.gnode_s** %next, align 8
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  ret %struct.gnode_s* %5
}

; Function Attrs: nounwind uwtable
define i32 @glist_chkdup_ptr(%struct.gnode_s* %g, i8* %val) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.gnode_s*, align 8
  %val.addr = alloca i8*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store i8* %val, i8** %val.addr, align 8
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %3 = load i8*, i8** %ptr, align 8
  %4 = load i8*, i8** %val.addr, align 8
  %cmp = icmp eq i8* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %5, i32 0, i32 1
  %6 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %6, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @glist_chkdup_int32(%struct.gnode_s* %g, i32 %val) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.gnode_s*, align 8
  %val.addr = alloca i32, align 4
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 0
  %int32 = bitcast %union.anytype_s* %data to i32*
  %3 = load i32, i32* %int32, align 4
  %4 = load i32, i32* %val.addr, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %5, i32 0, i32 1
  %6 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %6, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @glist_chkdup_uint32(%struct.gnode_s* %g, i32 %val) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.gnode_s*, align 8
  %val.addr = alloca i32, align 4
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 0
  %uint32 = bitcast %union.anytype_s* %data to i32*
  %3 = load i32, i32* %uint32, align 4
  %4 = load i32, i32* %val.addr, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %5, i32 0, i32 1
  %6 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %6, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @glist_chkdup_float32(%struct.gnode_s* %g, float %val) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.gnode_s*, align 8
  %val.addr = alloca float, align 4
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store float %val, float* %val.addr, align 4
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 0
  %float32 = bitcast %union.anytype_s* %data to float*
  %3 = load float, float* %float32, align 4
  %4 = load float, float* %val.addr, align 4
  %cmp = fcmp oeq float %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %5, i32 0, i32 1
  %6 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %6, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @glist_chkdup_float64(%struct.gnode_s* %g, double %val) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.gnode_s*, align 8
  %val.addr = alloca double, align 8
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store double %val, double* %val.addr, align 8
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 0
  %float64 = bitcast %union.anytype_s* %data to double*
  %3 = load double, double* %float64, align 8
  %4 = load double, double* %val.addr, align 8
  %cmp = fcmp oeq double %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %5, i32 0, i32 1
  %6 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %6, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @glist_apply_ptr(%struct.gnode_s* %g, void (i8*)* %func) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %func.addr = alloca void (i8*)*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store void (i8*)* %func, void (i8*)** %func.addr, align 8
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load void (i8*)*, void (i8*)** %func.addr, align 8
  %3 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %3, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %4 = load i8*, i8** %ptr, align 8
  call void %2(i8* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %5, i32 0, i32 1
  %6 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %6, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @glist_apply_int32(%struct.gnode_s* %g, void (i32)* %func) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %func.addr = alloca void (i32)*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store void (i32)* %func, void (i32)** %func.addr, align 8
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load void (i32)*, void (i32)** %func.addr, align 8
  %3 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %3, i32 0, i32 0
  %int32 = bitcast %union.anytype_s* %data to i32*
  %4 = load i32, i32* %int32, align 4
  call void %2(i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %5, i32 0, i32 1
  %6 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %6, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @glist_apply_uint32(%struct.gnode_s* %g, void (i32)* %func) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %func.addr = alloca void (i32)*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store void (i32)* %func, void (i32)** %func.addr, align 8
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load void (i32)*, void (i32)** %func.addr, align 8
  %3 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %3, i32 0, i32 0
  %uint32 = bitcast %union.anytype_s* %data to i32*
  %4 = load i32, i32* %uint32, align 4
  call void %2(i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %5, i32 0, i32 1
  %6 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %6, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @glist_apply_float32(%struct.gnode_s* %g, void (float)* %func) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %func.addr = alloca void (float)*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store void (float)* %func, void (float)** %func.addr, align 8
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load void (float)*, void (float)** %func.addr, align 8
  %3 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %3, i32 0, i32 0
  %float32 = bitcast %union.anytype_s* %data to float*
  %4 = load float, float* %float32, align 4
  call void %2(float %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %5, i32 0, i32 1
  %6 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %6, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @glist_apply_float64(%struct.gnode_s* %g, void (double)* %func) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %func.addr = alloca void (double)*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store void (double)* %func, void (double)** %func.addr, align 8
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load void (double)*, void (double)** %func.addr, align 8
  %3 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %3, i32 0, i32 0
  %float64 = bitcast %union.anytype_s* %data to double*
  %4 = load double, double* %float64, align 8
  call void %2(double %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %5, i32 0, i32 1
  %6 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %6, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @glist_free(%struct.gnode_s* %g) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  %tobool = icmp ne %struct.gnode_s* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %1, %struct.gnode_s** %gn, align 8
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 1
  %3 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %3, %struct.gnode_s** %g.addr, align 8
  %4 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %5 = bitcast %struct.gnode_s* %4 to i8*
  call void @__myfree__(i8* %5, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 232)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @__myfree__(i8*, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @glist_myfree(%struct.gnode_s* %g, i32 %datasize) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %datasize.addr = alloca i32, align 4
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store i32 %datasize, i32* %datasize.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  %tobool = icmp ne %struct.gnode_s* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %1, %struct.gnode_s** %gn, align 8
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 1
  %3 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %3, %struct.gnode_s** %g.addr, align 8
  %4 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %data = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %4, i32 0, i32 0
  %ptr = bitcast %union.anytype_s* %data to i8**
  %5 = load i8*, i8** %ptr, align 8
  %6 = load i32, i32* %datasize.addr, align 4
  call void @__myfree__(i8* %5, i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 244)
  %7 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %8 = bitcast %struct.gnode_s* %7 to i8*
  call void @__myfree__(i8* %8, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 245)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @glist_count(%struct.gnode_s* %g) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %n = alloca i32, align 4
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 1
  %3 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %3, %struct.gnode_s** %gn, align 8
  %4 = load i32, i32* %n, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %n, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define %struct.gnode_s* @glist_tail(%struct.gnode_s* %g) #0 {
entry:
  %retval = alloca %struct.gnode_s*, align 8
  %g.addr = alloca %struct.gnode_s*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  %tobool = icmp ne %struct.gnode_s* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.gnode_s* null, %struct.gnode_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %1, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 1
  %3 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  %tobool1 = icmp ne %struct.gnode_s* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next2 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %4, i32 0, i32 1
  %5 = load %struct.gnode_s*, %struct.gnode_s** %next2, align 8
  store %struct.gnode_s* %5, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  store %struct.gnode_s* %6, %struct.gnode_s** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load %struct.gnode_s*, %struct.gnode_s** %retval
  ret %struct.gnode_s* %7
}

; Function Attrs: nounwind uwtable
define %struct.gnode_s* @glist_reverse(%struct.gnode_s* %g) #0 {
entry:
  %g.addr = alloca %struct.gnode_s*, align 8
  %gn = alloca %struct.gnode_s*, align 8
  %nextgn = alloca %struct.gnode_s*, align 8
  %rev = alloca %struct.gnode_s*, align 8
  store %struct.gnode_s* %g, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* null, %struct.gnode_s** %rev, align 8
  %0 = load %struct.gnode_s*, %struct.gnode_s** %g.addr, align 8
  store %struct.gnode_s* %0, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %tobool = icmp ne %struct.gnode_s* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %2, i32 0, i32 1
  %3 = load %struct.gnode_s*, %struct.gnode_s** %next, align 8
  store %struct.gnode_s* %3, %struct.gnode_s** %nextgn, align 8
  %4 = load %struct.gnode_s*, %struct.gnode_s** %rev, align 8
  %5 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  %next1 = getelementptr inbounds %struct.gnode_s, %struct.gnode_s* %5, i32 0, i32 1
  store %struct.gnode_s* %4, %struct.gnode_s** %next1, align 8
  %6 = load %struct.gnode_s*, %struct.gnode_s** %gn, align 8
  store %struct.gnode_s* %6, %struct.gnode_s** %rev, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.gnode_s*, %struct.gnode_s** %nextgn, align 8
  store %struct.gnode_s* %7, %struct.gnode_s** %gn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.gnode_s*, %struct.gnode_s** %rev, align 8
  ret %struct.gnode_s* %8
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
