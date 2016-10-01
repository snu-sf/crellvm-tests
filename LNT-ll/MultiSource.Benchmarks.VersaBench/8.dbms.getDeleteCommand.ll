; ModuleID = './MultiSource.Benchmarks.VersaBench/8.dbms.getDeleteCommand.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataAttribute = type { i64, %struct.DataObjectAttribute, %struct.DataAttribute* }
%struct.DataObjectAttribute = type { %union.anon }
%union.anon = type { i8* }

@getDeleteCommand.name = internal global [17 x i8] c"getDeleteCommand\00", align 16
@.str = private unnamed_addr constant [18 x i8] c"code out-of-range\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"low-level I/O error\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"allocation of non-key attribute\00", align 1

; Function Attrs: nounwind uwtable
define i64 @getDeleteCommand(%struct._IO_FILE* %file, %struct.IndexKey* %searchKey, %struct.DataAttribute** %searchNonKey) #0 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %searchKey.addr = alloca %struct.IndexKey*, align 8
  %searchNonKey.addr = alloca %struct.DataAttribute**, align 8
  %attributeCode = alloca i64, align 8
  %returnCode = alloca i64, align 8
  %value = alloca float, align 4
  %value76 = alloca i8*, align 8
  %newAttribute = alloca %struct.DataAttribute*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.IndexKey* %searchKey, %struct.IndexKey** %searchKey.addr, align 8
  store %struct.DataAttribute** %searchNonKey, %struct.DataAttribute*** %searchNonKey.addr, align 8
  %0 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %lower = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 0
  %T = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower, i32 0, i32 0
  store float 0xC7EFFFFFE0000000, float* %T, align 4
  %1 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %lower1 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i32 0, i32 0
  %X = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower1, i32 0, i32 1
  store float 0xC7EFFFFFE0000000, float* %X, align 4
  %2 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %lower2 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %2, i32 0, i32 0
  %Y = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower2, i32 0, i32 2
  store float 0xC7EFFFFFE0000000, float* %Y, align 4
  %3 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %lower3 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %3, i32 0, i32 0
  %Z = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower3, i32 0, i32 3
  store float 0xC7EFFFFFE0000000, float* %Z, align 4
  %4 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %upper = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %4, i32 0, i32 1
  %T4 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper, i32 0, i32 0
  store float 0x47EFFFFFE0000000, float* %T4, align 4
  %5 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %upper5 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %5, i32 0, i32 1
  %X6 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper5, i32 0, i32 1
  store float 0x47EFFFFFE0000000, float* %X6, align 4
  %6 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %upper7 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %6, i32 0, i32 1
  %Y8 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper7, i32 0, i32 2
  store float 0x47EFFFFFE0000000, float* %Y8, align 4
  %7 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %upper9 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %7, i32 0, i32 1
  %Z10 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper9, i32 0, i32 3
  store float 0x47EFFFFFE0000000, float* %Z10, align 4
  %8 = load %struct.DataAttribute**, %struct.DataAttribute*** %searchNonKey.addr, align 8
  store %struct.DataAttribute* null, %struct.DataAttribute** %8, align 8
  store i64 0, i64* %returnCode, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.108, %entry
  %9 = load i64, i64* %returnCode, align 8
  %cmp = icmp ne i64 %9, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i64 @getInt(%struct._IO_FILE* %10, i64* %attributeCode)
  store i64 %call, i64* %returnCode, align 8
  %11 = load i64, i64* %returnCode, align 8
  %cmp11 = icmp eq i64 %11, 0
  br i1 %cmp11, label %if.then, label %if.else.96

if.then:                                          ; preds = %while.body
  %12 = load i64, i64* %attributeCode, align 8
  %cmp12 = icmp slt i64 %12, 0
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %13 = load i64, i64* %attributeCode, align 8
  %cmp13 = icmp sgt i64 %13, 50
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %lor.lhs.false, %if.then
  call void @errorMessage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %14 = load i64, i64* %attributeCode, align 8
  %cmp15 = icmp slt i64 %14, 8
  br i1 %cmp15, label %if.then.16, label %if.else.75

if.then.16:                                       ; preds = %if.else
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call17 = call i64 @getKeyAttribute(%struct._IO_FILE* %15, float* %value)
  store i64 %call17, i64* %returnCode, align 8
  %16 = load i64, i64* %returnCode, align 8
  %cmp18 = icmp eq i64 %16, 0
  br i1 %cmp18, label %if.then.19, label %if.else.66

if.then.19:                                       ; preds = %if.then.16
  %17 = load i64, i64* %attributeCode, align 8
  %cmp20 = icmp eq i64 %17, 0
  br i1 %cmp20, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.then.19
  %18 = load float, float* %value, align 4
  %19 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %lower22 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %19, i32 0, i32 0
  %T23 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower22, i32 0, i32 0
  store float %18, float* %T23, align 4
  br label %if.end.65

if.else.24:                                       ; preds = %if.then.19
  %20 = load i64, i64* %attributeCode, align 8
  %cmp25 = icmp eq i64 %20, 1
  br i1 %cmp25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.else.24
  %21 = load float, float* %value, align 4
  %22 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %lower27 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %22, i32 0, i32 0
  %X28 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower27, i32 0, i32 1
  store float %21, float* %X28, align 4
  br label %if.end.64

if.else.29:                                       ; preds = %if.else.24
  %23 = load i64, i64* %attributeCode, align 8
  %cmp30 = icmp eq i64 %23, 2
  br i1 %cmp30, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %if.else.29
  %24 = load float, float* %value, align 4
  %25 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %lower32 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %25, i32 0, i32 0
  %Y33 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower32, i32 0, i32 2
  store float %24, float* %Y33, align 4
  br label %if.end.63

if.else.34:                                       ; preds = %if.else.29
  %26 = load i64, i64* %attributeCode, align 8
  %cmp35 = icmp eq i64 %26, 3
  br i1 %cmp35, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %if.else.34
  %27 = load float, float* %value, align 4
  %28 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %lower37 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %28, i32 0, i32 0
  %Z38 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower37, i32 0, i32 3
  store float %27, float* %Z38, align 4
  br label %if.end.62

if.else.39:                                       ; preds = %if.else.34
  %29 = load i64, i64* %attributeCode, align 8
  %cmp40 = icmp eq i64 %29, 4
  br i1 %cmp40, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %if.else.39
  %30 = load float, float* %value, align 4
  %31 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %upper42 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %31, i32 0, i32 1
  %T43 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper42, i32 0, i32 0
  store float %30, float* %T43, align 4
  br label %if.end.61

if.else.44:                                       ; preds = %if.else.39
  %32 = load i64, i64* %attributeCode, align 8
  %cmp45 = icmp eq i64 %32, 5
  br i1 %cmp45, label %if.then.46, label %if.else.49

if.then.46:                                       ; preds = %if.else.44
  %33 = load float, float* %value, align 4
  %34 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %upper47 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %34, i32 0, i32 1
  %X48 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper47, i32 0, i32 1
  store float %33, float* %X48, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %if.else.44
  %35 = load i64, i64* %attributeCode, align 8
  %cmp50 = icmp eq i64 %35, 6
  br i1 %cmp50, label %if.then.51, label %if.else.54

if.then.51:                                       ; preds = %if.else.49
  %36 = load float, float* %value, align 4
  %37 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %upper52 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %37, i32 0, i32 1
  %Y53 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper52, i32 0, i32 2
  store float %36, float* %Y53, align 4
  br label %if.end.59

if.else.54:                                       ; preds = %if.else.49
  %38 = load i64, i64* %attributeCode, align 8
  %cmp55 = icmp eq i64 %38, 7
  br i1 %cmp55, label %if.then.56, label %if.end

if.then.56:                                       ; preds = %if.else.54
  %39 = load float, float* %value, align 4
  %40 = load %struct.IndexKey*, %struct.IndexKey** %searchKey.addr, align 8
  %upper57 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %40, i32 0, i32 1
  %Z58 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper57, i32 0, i32 3
  store float %39, float* %Z58, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.56, %if.else.54
  br label %if.end.59

if.end.59:                                        ; preds = %if.end, %if.then.51
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.46
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.41
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.36
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.31
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.26
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.21
  br label %if.end.74

if.else.66:                                       ; preds = %if.then.16
  %41 = load i64, i64* %returnCode, align 8
  %cmp67 = icmp eq i64 %41, 1
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %if.else.66
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 2, i64* %retval
  br label %return

if.else.69:                                       ; preds = %if.else.66
  %42 = load i64, i64* %returnCode, align 8
  %cmp70 = icmp eq i64 %42, 2
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.else.69
  call void @errorMessage(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %retval
  br label %return

if.end.72:                                        ; preds = %if.else.69
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.65
  br label %if.end.94

if.else.75:                                       ; preds = %if.else
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call77 = call i64 @getNonKeyAttribute(%struct._IO_FILE* %43, i8** %value76)
  store i64 %call77, i64* %returnCode, align 8
  %44 = load i64, i64* %returnCode, align 8
  %cmp78 = icmp eq i64 %44, 0
  br i1 %cmp78, label %if.then.79, label %if.else.85

if.then.79:                                       ; preds = %if.else.75
  %call80 = call noalias i8* @malloc(i64 24) #3
  %45 = bitcast i8* %call80 to %struct.DataAttribute*
  store %struct.DataAttribute* %45, %struct.DataAttribute** %newAttribute, align 8
  %46 = load %struct.DataAttribute*, %struct.DataAttribute** %newAttribute, align 8
  %cmp81 = icmp eq %struct.DataAttribute* %46, null
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.then.79
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 4, i64* %retval
  br label %return

if.end.83:                                        ; preds = %if.then.79
  %47 = load i64, i64* %attributeCode, align 8
  %48 = load %struct.DataAttribute*, %struct.DataAttribute** %newAttribute, align 8
  %code = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %48, i32 0, i32 0
  store i64 %47, i64* %code, align 8
  %49 = load i8*, i8** %value76, align 8
  %50 = load %struct.DataAttribute*, %struct.DataAttribute** %newAttribute, align 8
  %attribute = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %50, i32 0, i32 1
  %value84 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %attribute, i32 0, i32 0
  %nonKey = bitcast %union.anon* %value84 to i8**
  store i8* %49, i8** %nonKey, align 8
  %51 = load %struct.DataAttribute**, %struct.DataAttribute*** %searchNonKey.addr, align 8
  %52 = load %struct.DataAttribute*, %struct.DataAttribute** %51, align 8
  %53 = load %struct.DataAttribute*, %struct.DataAttribute** %newAttribute, align 8
  %next = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %53, i32 0, i32 2
  store %struct.DataAttribute* %52, %struct.DataAttribute** %next, align 8
  %54 = load %struct.DataAttribute*, %struct.DataAttribute** %newAttribute, align 8
  %55 = load %struct.DataAttribute**, %struct.DataAttribute*** %searchNonKey.addr, align 8
  store %struct.DataAttribute* %54, %struct.DataAttribute** %55, align 8
  br label %if.end.93

if.else.85:                                       ; preds = %if.else.75
  %56 = load i64, i64* %returnCode, align 8
  %cmp86 = icmp eq i64 %56, 2
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.else.85
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 2, i64* %retval
  br label %return

if.else.88:                                       ; preds = %if.else.85
  %57 = load i64, i64* %returnCode, align 8
  %cmp89 = icmp eq i64 %57, 1
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.else.88
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 4, i64* %retval
  br label %return

if.end.91:                                        ; preds = %if.else.88
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.83
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.74
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94
  br label %if.end.108

if.else.96:                                       ; preds = %while.body
  %58 = load i64, i64* %returnCode, align 8
  %cmp97 = icmp eq i64 %58, 1
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %if.else.96
  br label %if.end.107

if.else.99:                                       ; preds = %if.else.96
  %59 = load i64, i64* %returnCode, align 8
  %cmp100 = icmp eq i64 %59, 2
  br i1 %cmp100, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %if.else.99
  store i64 3, i64* %retval
  br label %return

if.else.102:                                      ; preds = %if.else.99
  %60 = load i64, i64* %returnCode, align 8
  %cmp103 = icmp eq i64 %60, 3
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.else.102
  store i64 3, i64* %retval
  br label %return

if.end.105:                                       ; preds = %if.else.102
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.98
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.95
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.104, %if.then.101, %if.then.90, %if.then.87, %if.then.82, %if.then.71, %if.then.68, %if.then.14
  %61 = load i64, i64* %retval
  ret i64 %61
}

declare i64 @getInt(%struct._IO_FILE*, i64*) #1

declare void @errorMessage(i8*, i8 signext) #1

declare i64 @getKeyAttribute(%struct._IO_FILE*, float*) #1

declare i64 @getNonKeyAttribute(%struct._IO_FILE*, i8**) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
