; ModuleID = './MultiSource.Benchmarks.VersaBench/10.dbms.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.DataAttribute = type { i64, %struct.DataObjectAttribute, %struct.DataAttribute* }

@.str = private unnamed_addr constant [10 x i8] c"root node\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't read first command (INIT)\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"First command is not INIT command\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Additional INIT command read\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %returnCode = alloca i64, align 8
  %command = alloca i32, align 4
  %input = alloca %struct._IO_FILE*, align 8
  %output = alloca %struct._IO_FILE*, align 8
  %metric = alloca %struct._IO_FILE*, align 8
  %metrics = alloca %struct.Metrics, align 8
  %root = alloca %struct.IndexNode*, align 8
  %fan = alloca i64, align 8
  %tempTime = alloca i64, align 8
  %dataObject = alloca %struct.DataObject*, align 8
  %searchKey = alloca %struct.IndexKey, align 4
  %searchNonKey = alloca %struct.DataAttribute*, align 8
  %temp = alloca %struct.DataAttribute*, align 8
  %next = alloca %struct.DataAttribute*, align 8
  %searchKey111 = alloca %struct.IndexKey, align 4
  %searchNonKey112 = alloca %struct.DataAttribute*, align 8
  %temp113 = alloca %struct.DataAttribute*, align 8
  %next139 = alloca %struct.DataAttribute*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @initMetricsData(%struct.Metrics* %metrics)
  store %struct._IO_FILE* null, %struct._IO_FILE** %input, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %output, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %metric, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i64 @openFiles(i64 %conv, i8** %1, %struct._IO_FILE** %input, %struct._IO_FILE** %output, %struct._IO_FILE** %metric)
  store i64 %call, i64* %returnCode, align 8
  %2 = load i64, i64* %returnCode, align 8
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %returnCode, align 8
  %cmp2 = icmp eq i64 %3, 1
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8
  call void @errorMessage(i8* %5, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call5 = call %struct.IndexNode* @createIndexNode(i64 0)
  store %struct.IndexNode* %call5, %struct.IndexNode** %root, align 8
  %6 = load %struct.IndexNode*, %struct.IndexNode** %root, align 8
  %cmp6 = icmp eq %struct.IndexNode* %6, null
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8 signext 1)
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx9, align 8
  call void @errorMessage(i8* %8, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %call11 = call i64 @getNextCommandCode(%struct._IO_FILE* %9, i32* %command)
  store i64 %call11, i64* %returnCode, align 8
  %10 = load i64, i64* %returnCode, align 8
  %cmp12 = icmp eq i64 %10, 0
  br i1 %cmp12, label %if.then.14, label %if.else.29

if.then.14:                                       ; preds = %if.end.10
  %11 = load i32, i32* %command, align 4
  %cmp15 = icmp eq i32 %11, 0
  br i1 %cmp15, label %if.then.17, label %if.else.26

if.then.17:                                       ; preds = %if.then.14
  %call18 = call i64 @getTime()
  store i64 %call18, i64* %tempTime, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %call19 = call i64 @getInitCommand(%struct._IO_FILE* %12, i64* %fan)
  store i64 %call19, i64* %returnCode, align 8
  %call20 = call i64 @getTime()
  %13 = load i64, i64* %tempTime, align 8
  %sub = sub nsw i64 %call20, %13
  %inputTime = getelementptr inbounds %struct.Metrics, %struct.Metrics* %metrics, i32 0, i32 1
  %14 = load i64, i64* %inputTime, align 8
  %add = add nsw i64 %14, %sub
  store i64 %add, i64* %inputTime, align 8
  %15 = load i64, i64* %returnCode, align 8
  %cmp21 = icmp ne i64 %15, 0
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.17
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i8 signext 1)
  %16 = load i8**, i8*** %argv.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %16, i64 0
  %17 = load i8*, i8** %arrayidx24, align 8
  call void @errorMessage(i8* %17, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.17
  br label %if.end.28

if.else.26:                                       ; preds = %if.then.14
  call void @errorMessage(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8 signext 0)
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %18, i64 0
  %19 = load i8*, i8** %arrayidx27, align 8
  call void @errorMessage(i8* %19, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.25
  br label %if.end.37

if.else.29:                                       ; preds = %if.end.10
  %20 = load i64, i64* %returnCode, align 8
  %cmp30 = icmp eq i64 %20, 1
  br i1 %cmp30, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.29
  %21 = load i64, i64* %returnCode, align 8
  %cmp32 = icmp eq i64 %21, 2
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %lor.lhs.false, %if.else.29
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i8 signext 1)
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %22, i64 0
  %23 = load i8*, i8** %arrayidx35, align 8
  call void @errorMessage(i8* %23, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %lor.lhs.false
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.28
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  call void @clearLine(%struct._IO_FILE* %24)
  br label %while.cond

while.cond:                                       ; preds = %if.end.176, %if.end.37
  %25 = load i32, i32* %command, align 4
  %cmp38 = icmp ne i32 %25, 4
  br i1 %cmp38, label %while.body, label %while.end.177

while.body:                                       ; preds = %while.cond
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %call40 = call i64 @getNextCommandCode(%struct._IO_FILE* %26, i32* %command)
  store i64 %call40, i64* %returnCode, align 8
  %27 = load i64, i64* %returnCode, align 8
  %cmp41 = icmp eq i64 %27, 0
  br i1 %cmp41, label %if.then.43, label %if.else.164

if.then.43:                                       ; preds = %while.body
  %28 = load i32, i32* %command, align 4
  call void @setMetricsData(%struct.Metrics* %metrics, i32 %28)
  %29 = load i32, i32* %command, align 4
  %cmp44 = icmp eq i32 %29, 1
  br i1 %cmp44, label %if.then.46, label %if.else.77

if.then.46:                                       ; preds = %if.then.43
  %call47 = call i64 @getTime()
  store i64 %call47, i64* %tempTime, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %call48 = call i64 @getInsertCommand(%struct._IO_FILE* %30, %struct.DataObject** %dataObject)
  store i64 %call48, i64* %returnCode, align 8
  %call49 = call i64 @getTime()
  %31 = load i64, i64* %tempTime, align 8
  %sub50 = sub nsw i64 %call49, %31
  %inputTime51 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %metrics, i32 0, i32 1
  %32 = load i64, i64* %inputTime51, align 8
  %add52 = add nsw i64 %32, %sub50
  store i64 %add52, i64* %inputTime51, align 8
  %33 = load i64, i64* %returnCode, align 8
  %cmp53 = icmp eq i64 %33, 0
  br i1 %cmp53, label %if.then.55, label %if.else.74

if.then.55:                                       ; preds = %if.then.46
  %34 = load %struct.DataObject*, %struct.DataObject** %dataObject, align 8
  %35 = load i64, i64* %fan, align 8
  %call56 = call i64 @insert(%struct.IndexNode** %root, %struct.DataObject* %34, i64 %35)
  store i64 %call56, i64* %returnCode, align 8
  %36 = load i64, i64* %returnCode, align 8
  %cmp57 = icmp eq i64 %36, 1
  br i1 %cmp57, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.then.55
  %37 = load i8**, i8*** %argv.addr, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %37, i64 0
  %38 = load i8*, i8** %arrayidx60, align 8
  call void @errorMessage(i8* %38, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %retval
  br label %return

if.else.61:                                       ; preds = %if.then.55
  %39 = load i64, i64* %returnCode, align 8
  %cmp62 = icmp eq i64 %39, 2
  br i1 %cmp62, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.else.61
  %40 = load i8**, i8*** %argv.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %40, i64 0
  %41 = load i8*, i8** %arrayidx65, align 8
  call void @errorMessage(i8* %41, i8 signext 1)
  call void @flushErrorMessage()
  br label %if.end.72

if.else.66:                                       ; preds = %if.else.61
  %42 = load i64, i64* %returnCode, align 8
  %cmp67 = icmp eq i64 %42, 3
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.else.66
  %43 = load i8**, i8*** %argv.addr, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %43, i64 0
  %44 = load i8*, i8** %arrayidx70, align 8
  call void @errorMessage(i8* %44, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.else.66
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.64
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72
  br label %if.end.76

if.else.74:                                       ; preds = %if.then.46
  %45 = load i8**, i8*** %argv.addr, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %45, i64 0
  %46 = load i8*, i8** %arrayidx75, align 8
  call void @errorMessage(i8* %46, i8 signext 1)
  call void @flushErrorMessage()
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.74, %if.end.73
  br label %if.end.159

if.else.77:                                       ; preds = %if.then.43
  %47 = load i32, i32* %command, align 4
  %cmp78 = icmp eq i32 %47, 2
  br i1 %cmp78, label %if.then.80, label %if.else.107

if.then.80:                                       ; preds = %if.else.77
  %call81 = call i64 @getTime()
  store i64 %call81, i64* %tempTime, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %call82 = call i64 @getQueryCommand(%struct._IO_FILE* %48, %struct.IndexKey* %searchKey, %struct.DataAttribute** %searchNonKey)
  store i64 %call82, i64* %returnCode, align 8
  %call83 = call i64 @getTime()
  %49 = load i64, i64* %tempTime, align 8
  %sub84 = sub nsw i64 %call83, %49
  %inputTime85 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %metrics, i32 0, i32 1
  %50 = load i64, i64* %inputTime85, align 8
  %add86 = add nsw i64 %50, %sub84
  store i64 %add86, i64* %inputTime85, align 8
  %51 = load i64, i64* %returnCode, align 8
  %cmp87 = icmp eq i64 %51, 0
  br i1 %cmp87, label %if.then.89, label %if.else.99

if.then.89:                                       ; preds = %if.then.80
  %52 = load %struct.IndexNode*, %struct.IndexNode** %root, align 8
  %53 = load %struct.DataAttribute*, %struct.DataAttribute** %searchNonKey, align 8
  %call90 = call i64 @query(%struct.IndexNode* %52, %struct.IndexKey* %searchKey, %struct.DataAttribute* %53, i8 signext 1, void (%struct.DataObject*)* @outputQuery)
  store i64 %call90, i64* %returnCode, align 8
  %54 = load i64, i64* %returnCode, align 8
  %cmp91 = icmp eq i64 %54, 1
  br i1 %cmp91, label %if.then.96, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %if.then.89
  %55 = load i64, i64* %returnCode, align 8
  %cmp94 = icmp eq i64 %55, 2
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %lor.lhs.false.93, %if.then.89
  %56 = load i8**, i8*** %argv.addr, align 8
  %arrayidx97 = getelementptr inbounds i8*, i8** %56, i64 0
  %57 = load i8*, i8** %arrayidx97, align 8
  call void @errorMessage(i8* %57, i8 signext 1)
  call void @flushErrorMessage()
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %lor.lhs.false.93
  br label %if.end.101

if.else.99:                                       ; preds = %if.then.80
  %58 = load i8**, i8*** %argv.addr, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %58, i64 0
  %59 = load i8*, i8** %arrayidx100, align 8
  call void @errorMessage(i8* %59, i8 signext 1)
  call void @flushErrorMessage()
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.99, %if.end.98
  %60 = load %struct.DataAttribute*, %struct.DataAttribute** %searchNonKey, align 8
  store %struct.DataAttribute* %60, %struct.DataAttribute** %temp, align 8
  br label %while.cond.102

while.cond.102:                                   ; preds = %while.body.105, %if.end.101
  %61 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %cmp103 = icmp ne %struct.DataAttribute* %61, null
  br i1 %cmp103, label %while.body.105, label %while.end

while.body.105:                                   ; preds = %while.cond.102
  %62 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %next106 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %62, i32 0, i32 2
  %63 = load %struct.DataAttribute*, %struct.DataAttribute** %next106, align 8
  store %struct.DataAttribute* %63, %struct.DataAttribute** %next, align 8
  %64 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %attribute = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %64, i32 0, i32 1
  %value = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %attribute, i32 0, i32 0
  %nonKey = bitcast %union.anon.0* %value to i8**
  %65 = load i8*, i8** %nonKey, align 8
  call void @free(i8* %65) #4
  %66 = load %struct.DataAttribute*, %struct.DataAttribute** %temp, align 8
  %67 = bitcast %struct.DataAttribute* %66 to i8*
  call void @free(i8* %67) #4
  %68 = load %struct.DataAttribute*, %struct.DataAttribute** %next, align 8
  store %struct.DataAttribute* %68, %struct.DataAttribute** %temp, align 8
  br label %while.cond.102

while.end:                                        ; preds = %while.cond.102
  br label %if.end.158

if.else.107:                                      ; preds = %if.else.77
  %69 = load i32, i32* %command, align 4
  %cmp108 = icmp eq i32 %69, 3
  br i1 %cmp108, label %if.then.110, label %if.else.145

if.then.110:                                      ; preds = %if.else.107
  %call114 = call i64 @getTime()
  store i64 %call114, i64* %tempTime, align 8
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %call115 = call i64 @getDeleteCommand(%struct._IO_FILE* %70, %struct.IndexKey* %searchKey111, %struct.DataAttribute** %searchNonKey112)
  store i64 %call115, i64* %returnCode, align 8
  %call116 = call i64 @getTime()
  %71 = load i64, i64* %tempTime, align 8
  %sub117 = sub nsw i64 %call116, %71
  %inputTime118 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %metrics, i32 0, i32 1
  %72 = load i64, i64* %inputTime118, align 8
  %add119 = add nsw i64 %72, %sub117
  store i64 %add119, i64* %inputTime118, align 8
  %73 = load i64, i64* %returnCode, align 8
  %cmp120 = icmp eq i64 %73, 0
  br i1 %cmp120, label %if.then.122, label %if.else.132

if.then.122:                                      ; preds = %if.then.110
  %74 = load %struct.DataAttribute*, %struct.DataAttribute** %searchNonKey112, align 8
  %call123 = call i64 @delete(%struct.IndexNode** %root, %struct.IndexKey* %searchKey111, %struct.DataAttribute* %74)
  store i64 %call123, i64* %returnCode, align 8
  %75 = load i64, i64* %returnCode, align 8
  %cmp124 = icmp eq i64 %75, 1
  br i1 %cmp124, label %if.then.129, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %if.then.122
  %76 = load i64, i64* %returnCode, align 8
  %cmp127 = icmp eq i64 %76, 2
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %lor.lhs.false.126, %if.then.122
  %77 = load i8**, i8*** %argv.addr, align 8
  %arrayidx130 = getelementptr inbounds i8*, i8** %77, i64 0
  %78 = load i8*, i8** %arrayidx130, align 8
  call void @errorMessage(i8* %78, i8 signext 1)
  call void @flushErrorMessage()
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %lor.lhs.false.126
  br label %if.end.134

if.else.132:                                      ; preds = %if.then.110
  %79 = load i8**, i8*** %argv.addr, align 8
  %arrayidx133 = getelementptr inbounds i8*, i8** %79, i64 0
  %80 = load i8*, i8** %arrayidx133, align 8
  call void @errorMessage(i8* %80, i8 signext 1)
  call void @flushErrorMessage()
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.132, %if.end.131
  %81 = load %struct.DataAttribute*, %struct.DataAttribute** %searchNonKey112, align 8
  store %struct.DataAttribute* %81, %struct.DataAttribute** %temp113, align 8
  br label %while.cond.135

while.cond.135:                                   ; preds = %while.body.138, %if.end.134
  %82 = load %struct.DataAttribute*, %struct.DataAttribute** %temp113, align 8
  %cmp136 = icmp ne %struct.DataAttribute* %82, null
  br i1 %cmp136, label %while.body.138, label %while.end.144

while.body.138:                                   ; preds = %while.cond.135
  %83 = load %struct.DataAttribute*, %struct.DataAttribute** %temp113, align 8
  %next140 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %83, i32 0, i32 2
  %84 = load %struct.DataAttribute*, %struct.DataAttribute** %next140, align 8
  store %struct.DataAttribute* %84, %struct.DataAttribute** %next139, align 8
  %85 = load %struct.DataAttribute*, %struct.DataAttribute** %temp113, align 8
  %attribute141 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %85, i32 0, i32 1
  %value142 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %attribute141, i32 0, i32 0
  %nonKey143 = bitcast %union.anon.0* %value142 to i8**
  %86 = load i8*, i8** %nonKey143, align 8
  call void @free(i8* %86) #4
  %87 = load %struct.DataAttribute*, %struct.DataAttribute** %temp113, align 8
  %88 = bitcast %struct.DataAttribute* %87 to i8*
  call void @free(i8* %88) #4
  %89 = load %struct.DataAttribute*, %struct.DataAttribute** %next139, align 8
  store %struct.DataAttribute* %89, %struct.DataAttribute** %temp113, align 8
  br label %while.cond.135

while.end.144:                                    ; preds = %while.cond.135
  br label %if.end.157

if.else.145:                                      ; preds = %if.else.107
  %90 = load i32, i32* %command, align 4
  %cmp146 = icmp eq i32 %90, 0
  br i1 %cmp146, label %if.then.148, label %if.else.150

if.then.148:                                      ; preds = %if.else.145
  call void @errorMessage(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8 signext 0)
  %91 = load i8**, i8*** %argv.addr, align 8
  %arrayidx149 = getelementptr inbounds i8*, i8** %91, i64 0
  %92 = load i8*, i8** %arrayidx149, align 8
  call void @errorMessage(i8* %92, i8 signext 1)
  call void @flushErrorMessage()
  br label %if.end.156

if.else.150:                                      ; preds = %if.else.145
  %93 = load i32, i32* %command, align 4
  %cmp151 = icmp eq i32 %93, 5
  br i1 %cmp151, label %if.then.153, label %if.end.155

if.then.153:                                      ; preds = %if.else.150
  %94 = load i8**, i8*** %argv.addr, align 8
  %arrayidx154 = getelementptr inbounds i8*, i8** %94, i64 0
  %95 = load i8*, i8** %arrayidx154, align 8
  call void @errorMessage(i8* %95, i8 signext 1)
  call void @flushErrorMessage()
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.153, %if.else.150
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.148
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %while.end.144
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %while.end
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.76
  call void @updateMetricsData(%struct.Metrics* %metrics)
  %call160 = call i64 @getTime()
  store i64 %call160, i64* %tempTime, align 8
  call void @flushOutputBuffer()
  %call161 = call i64 @getTime()
  %96 = load i64, i64* %tempTime, align 8
  %sub162 = sub nsw i64 %call161, %96
  %outputTime = getelementptr inbounds %struct.Metrics, %struct.Metrics* %metrics, i32 0, i32 2
  %97 = load i64, i64* %outputTime, align 8
  %add163 = add nsw i64 %97, %sub162
  store i64 %add163, i64* %outputTime, align 8
  br label %if.end.176

if.else.164:                                      ; preds = %while.body
  %98 = load i64, i64* %returnCode, align 8
  %cmp165 = icmp eq i64 %98, 1
  br i1 %cmp165, label %if.then.167, label %if.else.169

if.then.167:                                      ; preds = %if.else.164
  %99 = load i8**, i8*** %argv.addr, align 8
  %arrayidx168 = getelementptr inbounds i8*, i8** %99, i64 0
  %100 = load i8*, i8** %arrayidx168, align 8
  call void @errorMessage(i8* %100, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %retval
  br label %return

if.else.169:                                      ; preds = %if.else.164
  %101 = load i64, i64* %returnCode, align 8
  %cmp170 = icmp eq i64 %101, 2
  br i1 %cmp170, label %if.then.172, label %if.end.174

if.then.172:                                      ; preds = %if.else.169
  %102 = load i8**, i8*** %argv.addr, align 8
  %arrayidx173 = getelementptr inbounds i8*, i8** %102, i64 0
  %103 = load i8*, i8** %arrayidx173, align 8
  call void @errorMessage(i8* %103, i8 signext 1)
  call void @flushErrorMessage()
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.172, %if.else.169
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.end.159
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  call void @clearLine(%struct._IO_FILE* %104)
  br label %while.cond

while.end.177:                                    ; preds = %while.cond
  %105 = load %struct.IndexNode*, %struct.IndexNode** %root, align 8
  call void @deleteIndexNode(%struct.IndexNode* %105)
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %output, align 8
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %metric, align 8
  call void @closeFiles(%struct._IO_FILE* %106, %struct._IO_FILE* %107, %struct._IO_FILE* %108)
  call void @exit(i32 0) #5
  unreachable

return:                                           ; preds = %if.then.167, %if.then.69, %if.then.59, %if.then.34, %if.else.26, %if.then.23, %if.then.8, %if.else, %if.then.4
  %109 = load i32, i32* %retval
  ret i32 %109
}

declare void @initMetricsData(%struct.Metrics*) #1

declare i64 @openFiles(i64, i8**, %struct._IO_FILE**, %struct._IO_FILE**, %struct._IO_FILE**) #1

declare void @errorMessage(i8*, i8 signext) #1

declare void @flushErrorMessage() #1

declare %struct.IndexNode* @createIndexNode(i64) #1

declare i64 @getNextCommandCode(%struct._IO_FILE*, i32*) #1

declare i64 @getTime() #1

declare i64 @getInitCommand(%struct._IO_FILE*, i64*) #1

declare void @clearLine(%struct._IO_FILE*) #1

declare void @setMetricsData(%struct.Metrics*, i32) #1

declare i64 @getInsertCommand(%struct._IO_FILE*, %struct.DataObject**) #1

declare i64 @insert(%struct.IndexNode**, %struct.DataObject*, i64) #1

declare i64 @getQueryCommand(%struct._IO_FILE*, %struct.IndexKey*, %struct.DataAttribute**) #1

declare i64 @query(%struct.IndexNode*, %struct.IndexKey*, %struct.DataAttribute*, i8 signext, void (%struct.DataObject*)*) #1

declare void @outputQuery(%struct.DataObject*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i64 @getDeleteCommand(%struct._IO_FILE*, %struct.IndexKey*, %struct.DataAttribute**) #1

declare i64 @delete(%struct.IndexNode**, %struct.IndexKey*, %struct.DataAttribute*) #1

declare void @updateMetricsData(%struct.Metrics*) #1

declare void @flushOutputBuffer() #1

declare void @deleteIndexNode(%struct.IndexNode*) #1

declare void @closeFiles(%struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
