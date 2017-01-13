; ModuleID = './MultiSource.Benchmarks.VersaBench/24.dbms.valid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataAttribute = type { i64, %struct.DataObjectAttribute, %struct.DataAttribute* }
%struct.DataObjectAttribute = type { %union.anon }
%union.anon = type { i8* }

@validIndexKey.name = internal global [14 x i8] c"validIndexKey\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Lower T > Upper T\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Lower X > Upper X\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Lower Y > Upper Y\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Lower Z > Upper Z\00", align 1
@validAttributes.name = internal global [16 x i8] c"validAttributes\00", align 16
@.str.4 = private unnamed_addr constant [23 x i8] c"invalid attribute code\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"key value out-of-range\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"non-key value set to NULL\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @validIndexKey(%struct.IndexKey* %key) #0 {
entry:
  %key.addr = alloca %struct.IndexKey*, align 8
  %flag = alloca i8, align 1
  store %struct.IndexKey* %key, %struct.IndexKey** %key.addr, align 8
  store i8 1, i8* %flag, align 1
  %0 = load %struct.IndexKey*, %struct.IndexKey** %key.addr, align 8
  %lower = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 0
  %T = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower, i32 0, i32 0
  %1 = load float, float* %T, align 4
  %2 = load %struct.IndexKey*, %struct.IndexKey** %key.addr, align 8
  %upper = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %2, i32 0, i32 1
  %T1 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper, i32 0, i32 0
  %3 = load float, float* %T1, align 4
  %cmp = fcmp oge float %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @errorMessage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i32 0, i32 0), i8 signext 1)
  store i8 0, i8* %flag, align 1
  br label %if.end.21

if.else:                                          ; preds = %entry
  %4 = load %struct.IndexKey*, %struct.IndexKey** %key.addr, align 8
  %lower2 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %4, i32 0, i32 0
  %X = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower2, i32 0, i32 1
  %5 = load float, float* %X, align 4
  %6 = load %struct.IndexKey*, %struct.IndexKey** %key.addr, align 8
  %upper3 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %6, i32 0, i32 1
  %X4 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper3, i32 0, i32 1
  %7 = load float, float* %X4, align 4
  %cmp5 = fcmp oge float %5, %7
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  call void @errorMessage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i32 0, i32 0), i8 signext 1)
  store i8 0, i8* %flag, align 1
  br label %if.end.20

if.else.7:                                        ; preds = %if.else
  %8 = load %struct.IndexKey*, %struct.IndexKey** %key.addr, align 8
  %lower8 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %8, i32 0, i32 0
  %Y = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower8, i32 0, i32 2
  %9 = load float, float* %Y, align 4
  %10 = load %struct.IndexKey*, %struct.IndexKey** %key.addr, align 8
  %upper9 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %10, i32 0, i32 1
  %Y10 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper9, i32 0, i32 2
  %11 = load float, float* %Y10, align 4
  %cmp11 = fcmp oge float %9, %11
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.7
  call void @errorMessage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i32 0, i32 0), i8 signext 1)
  store i8 0, i8* %flag, align 1
  br label %if.end.19

if.else.13:                                       ; preds = %if.else.7
  %12 = load %struct.IndexKey*, %struct.IndexKey** %key.addr, align 8
  %lower14 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %12, i32 0, i32 0
  %Z = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower14, i32 0, i32 3
  %13 = load float, float* %Z, align 4
  %14 = load %struct.IndexKey*, %struct.IndexKey** %key.addr, align 8
  %upper15 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %14, i32 0, i32 1
  %Z16 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper15, i32 0, i32 3
  %15 = load float, float* %Z16, align 4
  %cmp17 = fcmp oge float %13, %15
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else.13
  call void @errorMessage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i32 0, i32 0), i8 signext 1)
  store i8 0, i8* %flag, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.else.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.6
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then
  %16 = load i8, i8* %flag, align 1
  ret i8 %16
}

declare void @errorMessage(i8*, i8 signext) #1

; Function Attrs: nounwind uwtable
define signext i8 @validAttributes(%struct.DataAttribute* %attributes) #0 {
entry:
  %retval = alloca i8, align 1
  %attributes.addr = alloca %struct.DataAttribute*, align 8
  %temp = alloca %struct.DataAttribute*, align 8
  store %struct.DataAttribute* %attributes, %struct.DataAttribute** %attributes.addr, align 8
  %0 = load %struct.DataAttribute*, %struct.DataAttribute** %attributes.addr, align 8
  store %struct.DataAttribute* %0, %struct.DataAttribute** %temp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %cmp = icmp ne %struct.DataAttribute* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %code = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %2, i32 0, i32 0
  %3 = load i64, i64* %code, align 8
  %cmp1 = icmp slt i64 %3, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %code2 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %4, i32 0, i32 0
  %5 = load i64, i64* %code2, align 8
  %cmp3 = icmp sgt i64 %5, 50
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body
  call void @errorMessage(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @validAttributes.name, i32 0, i32 0), i8 signext 1)
  store i8 0, i8* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %6 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %code4 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %6, i32 0, i32 0
  %7 = load i64, i64* %code4, align 8
  %cmp5 = icmp sge i64 %7, 0
  br i1 %cmp5, label %land.lhs.true, label %if.else.19

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %code6 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %8, i32 0, i32 0
  %9 = load i64, i64* %code6, align 8
  %cmp7 = icmp slt i64 %9, 8
  br i1 %cmp7, label %if.then.8, label %if.else.19

if.then.8:                                        ; preds = %land.lhs.true
  %10 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %attribute = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %10, i32 0, i32 1
  %value = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %attribute, i32 0, i32 0
  %key = bitcast %union.anon* %value to float*
  %11 = load float, float* %key, align 4
  %conv = fpext float %11 to double
  %cmp9 = fcmp olt double %conv, 0xC7EFFFFFE091FF3D
  br i1 %cmp9, label %if.then.18, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.then.8
  %12 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %attribute12 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %12, i32 0, i32 1
  %value13 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %attribute12, i32 0, i32 0
  %key14 = bitcast %union.anon* %value13 to float*
  %13 = load float, float* %key14, align 4
  %conv15 = fpext float %13 to double
  %cmp16 = fcmp ogt double %conv15, 0x47EFFFFFE091FF3D
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %lor.lhs.false.11, %if.then.8
  call void @errorMessage(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @validAttributes.name, i32 0, i32 0), i8 signext 1)
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.11
  br label %if.end.26

if.else.19:                                       ; preds = %land.lhs.true, %if.else
  %14 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %attribute20 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %14, i32 0, i32 1
  %value21 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %attribute20, i32 0, i32 0
  %nonKey = bitcast %union.anon* %value21 to i8**
  %15 = load i8*, i8** %nonKey, align 8
  %cmp22 = icmp eq i8* %15, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else.19
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @validAttributes.name, i32 0, i32 0), i8 signext 1)
  store i8 0, i8* %retval
  br label %return

if.end.25:                                        ; preds = %if.else.19
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %16 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %next = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %16, i32 0, i32 2
  %17 = load %struct.DataAttribute*, %struct.DataAttribute** %next, align 8
  store %struct.DataAttribute* %17, %struct.DataAttribute** %temp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.24, %if.then.18, %if.then
  %18 = load i8, i8* %retval
  ret i8 %18
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
