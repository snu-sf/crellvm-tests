; ModuleID = './echogs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"File param size exceeded\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@main.dash = internal global [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"Line limit exceeded\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@hputc.hex = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %extn = alloca i8*, align 8
  %fmode = alloca [4 x i8], align 1
  %fnparam = alloca i8*, align 8
  %fname = alloca [4096 x i8], align 16
  %newline = alloca i32, align 4
  %interact = alloca i32, align 4
  %eputc = alloca i32 (i32, %struct._IO_FILE*)*, align 8
  %eputs = alloca i32 (i8*, %struct._IO_FILE*)*, align 8
  %line = alloca [5106 x i8], align 16
  %sw = alloca i8, align 1
  %sp = alloca i8, align 1
  %hexx = alloca i8, align 1
  %argp = alloca i8**, align 8
  %nargs = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %len = alloca i64, align 8
  %i = alloca i32, align 4
  %__s1_len135 = alloca i64, align 8
  %__s2_len137 = alloca i64, align 8
  %tmp138 = alloca i32, align 4
  %__s1145 = alloca i8*, align 8
  %__result147 = alloca i32, align 4
  %tmp185 = alloca i32, align 4
  %__s1_len199 = alloca i64, align 8
  %__s2_len201 = alloca i64, align 8
  %tmp202 = alloca i32, align 4
  %__s1209 = alloca i8*, align 8
  %__result211 = alloca i32, align 4
  %tmp249 = alloca i32, align 4
  %arg = alloca i8*, align 8
  %i274 = alloca i32, align 4
  %chr = alloca i8, align 1
  %t = alloca i64, align 8
  %str = alloca [26 x i8], align 16
  %__res = alloca i32, align 4
  %tmp392 = alloca i32, align 4
  %up = alloca i8*, align 8
  %__res441 = alloca i32, align 4
  %tmp446 = alloca i32, align 4
  %xp = alloca i8*, align 8
  %xchr = alloca i32, align 4
  %ch = alloca i8, align 1
  %__res487 = alloca i32, align 4
  %tmp492 = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !5
  %0 = bitcast %struct._IO_FILE** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  store %struct._IO_FILE* %1, %struct._IO_FILE** %out, align 8, !tbaa !5
  %2 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct._IO_FILE* null, %struct._IO_FILE** %in, align 8, !tbaa !5
  %3 = bitcast i8** %extn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %extn, align 8, !tbaa !5
  %4 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i8** %fnparam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i8* null, i8** %fnparam, align 8, !tbaa !5
  %6 = bitcast [4096 x i8]* %fname to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %6) #1
  %7 = bitcast i32* %newline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %newline, align 4, !tbaa !1
  %8 = bitcast i32* %interact to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %interact, align 4, !tbaa !1
  %9 = bitcast i32 (i32, %struct._IO_FILE*)** %eputc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32 (i32, %struct._IO_FILE*)* @fputc, i32 (i32, %struct._IO_FILE*)** %eputc, align 8, !tbaa !5
  %10 = bitcast i32 (i8*, %struct._IO_FILE*)** %eputs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32 (i8*, %struct._IO_FILE*)* @fputs, i32 (i8*, %struct._IO_FILE*)** %eputs, align 8, !tbaa !5
  %11 = bitcast [5106 x i8]* %line to i8*
  call void @llvm.lifetime.start(i64 5106, i8* %11) #1
  call void @llvm.lifetime.start(i64 1, i8* %sw) #1
  store i8 0, i8* %sw, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %sp) #1
  store i8 0, i8* %sp, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %hexx) #1
  store i8 0, i8* %hexx, align 1, !tbaa !7
  %12 = bitcast i8*** %argp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8*, i8** %13, i64 1
  store i8** %add.ptr, i8*** %argp, align 8, !tbaa !5
  %14 = bitcast i32* %nargs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %15, 1
  store i32 %sub, i32* %nargs, align 4, !tbaa !1
  %16 = load i32, i32* %nargs, align 4, !tbaa !1
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %entry
  %17 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.1 to i64)), i64 1), label %land.lhs.true.1, label %cond.false

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %call = call i64 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #7
  store i64 %call, i64* %__s2_len, align 8, !tbaa !8
  %19 = load i64, i64* %__s2_len, align 8, !tbaa !8
  %cmp2 = icmp ult i64 %19, 4
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.1
  %20 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i8**, i8*** %argp, align 8, !tbaa !5
  %22 = load i8*, i8** %21, align 8, !tbaa !5
  store i8* %22, i8** %__s1, align 8, !tbaa !5
  %23 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %25 to i32
  %26 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), align 1, !tbaa !7
  %conv5 = zext i8 %26 to i32
  %sub6 = sub nsw i32 %conv, %conv5
  store i32 %sub6, i32* %__result, align 4, !tbaa !1
  %27 = load i64, i64* %__s2_len, align 8, !tbaa !8
  %cmp7 = icmp ugt i64 %27, 0
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.37

land.lhs.true.9:                                  ; preds = %cond.true
  %28 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp10 = icmp eq i32 %28, 0
  br i1 %cmp10, label %if.then, label %if.end.37

if.then:                                          ; preds = %land.lhs.true.9
  %29 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx12, align 1, !tbaa !7
  %conv13 = zext i8 %30 to i32
  %31 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i64 1), align 1, !tbaa !7
  %conv14 = zext i8 %31 to i32
  %sub15 = sub nsw i32 %conv13, %conv14
  store i32 %sub15, i32* %__result, align 4, !tbaa !1
  %32 = load i64, i64* %__s2_len, align 8, !tbaa !8
  %cmp16 = icmp ugt i64 %32, 1
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.36

land.lhs.true.18:                                 ; preds = %if.then
  %33 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp19 = icmp eq i32 %33, 0
  br i1 %cmp19, label %if.then.21, label %if.end.36

if.then.21:                                       ; preds = %land.lhs.true.18
  %34 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx22 = getelementptr inbounds i8, i8* %34, i64 2
  %35 = load i8, i8* %arrayidx22, align 1, !tbaa !7
  %conv23 = zext i8 %35 to i32
  %36 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i64 2), align 1, !tbaa !7
  %conv24 = zext i8 %36 to i32
  %sub25 = sub nsw i32 %conv23, %conv24
  store i32 %sub25, i32* %__result, align 4, !tbaa !1
  %37 = load i64, i64* %__s2_len, align 8, !tbaa !8
  %cmp26 = icmp ugt i64 %37, 2
  br i1 %cmp26, label %land.lhs.true.28, label %if.end

land.lhs.true.28:                                 ; preds = %if.then.21
  %38 = load i32, i32* %__result, align 4, !tbaa !1
  %cmp29 = icmp eq i32 %38, 0
  br i1 %cmp29, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %land.lhs.true.28
  %39 = load i8*, i8** %__s1, align 8, !tbaa !5
  %arrayidx32 = getelementptr inbounds i8, i8* %39, i64 3
  %40 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %conv33 = zext i8 %40 to i32
  %41 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i64 3), align 1, !tbaa !7
  %conv34 = zext i8 %41 to i32
  %sub35 = sub nsw i32 %conv33, %conv34
  store i32 %sub35, i32* %__result, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.31, %land.lhs.true.28, %if.then.21
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %land.lhs.true.18, %if.then
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true.9, %cond.true
  %42 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %42, i32* %tmp38, !tbaa !1
  %43 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %tmp38, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.1, %land.lhs.true
  %46 = load i8**, i8*** %argp, align 8, !tbaa !5
  %47 = load i8*, i8** %46, align 8, !tbaa !5
  %call39 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.37
  %cond = phi i32 [ %45, %if.end.37 ], [ %call39, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !1
  %48 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %tmp, !tbaa !1
  %tobool = icmp ne i32 %50, 0
  br i1 %tobool, label %if.end.48, label %if.then.40

if.then.40:                                       ; preds = %cond.end
  %51 = load i32, i32* %nargs, align 4, !tbaa !1
  %cmp41 = icmp slt i32 %51, 2
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.40
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.534

if.end.44:                                        ; preds = %if.then.40
  %52 = load i8**, i8*** %argp, align 8, !tbaa !5
  %arrayidx45 = getelementptr inbounds i8*, i8** %52, i64 1
  %53 = load i8*, i8** %arrayidx45, align 8, !tbaa !5
  store i8* %53, i8** %extn, align 8, !tbaa !5
  %54 = load i8**, i8*** %argp, align 8, !tbaa !5
  %add.ptr46 = getelementptr inbounds i8*, i8** %54, i64 2
  store i8** %add.ptr46, i8*** %argp, align 8, !tbaa !5
  %55 = load i32, i32* %nargs, align 4, !tbaa !1
  %sub47 = sub nsw i32 %55, 2
  store i32 %sub47, i32* %nargs, align 4, !tbaa !1
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.44, %cond.end, %entry
  %56 = load i32, i32* %nargs, align 4, !tbaa !1
  %cmp49 = icmp sgt i32 %56, 0
  br i1 %cmp49, label %land.lhs.true.51, label %if.else.127

land.lhs.true.51:                                 ; preds = %if.end.48
  %57 = load i8**, i8*** %argp, align 8, !tbaa !5
  %58 = load i8*, i8** %57, align 8, !tbaa !5
  %arrayidx52 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx52, align 1, !tbaa !7
  %conv53 = sext i8 %59 to i32
  %cmp54 = icmp eq i32 %conv53, 45
  br i1 %cmp54, label %land.lhs.true.56, label %if.else.127

land.lhs.true.56:                                 ; preds = %land.lhs.true.51
  %60 = load i8**, i8*** %argp, align 8, !tbaa !5
  %61 = load i8*, i8** %60, align 8, !tbaa !5
  %arrayidx57 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx57, align 1, !tbaa !7
  %conv58 = sext i8 %62 to i32
  %cmp59 = icmp eq i32 %conv58, 119
  br i1 %cmp59, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.56
  %63 = load i8**, i8*** %argp, align 8, !tbaa !5
  %64 = load i8*, i8** %63, align 8, !tbaa !5
  %arrayidx61 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8, i8* %arrayidx61, align 1, !tbaa !7
  %conv62 = sext i8 %65 to i32
  %cmp63 = icmp eq i32 %conv62, 97
  br i1 %cmp63, label %if.then.65, label %if.else.127

if.then.65:                                       ; preds = %lor.lhs.false, %land.lhs.true.56
  %66 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = load i8**, i8*** %argp, align 8, !tbaa !5
  %68 = load i8*, i8** %67, align 8, !tbaa !5
  %call67 = call i64 @strlen(i8* %68) #7
  store i64 %call67, i64* %len, align 8, !tbaa !8
  %69 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load i64, i64* %len, align 8, !tbaa !8
  %cmp69 = icmp ugt i64 %70, 4
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.65
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %if.then.65
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.72
  %71 = load i32, i32* %i, align 4, !tbaa !1
  %72 = load i32, i32* %nargs, align 4, !tbaa !1
  %cmp73 = icmp slt i32 %71, %72
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %73 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %73 to i64
  %74 = load i8**, i8*** %argp, align 8, !tbaa !5
  %arrayidx75 = getelementptr inbounds i8*, i8** %74, i64 %idxprom
  %75 = load i8*, i8** %arrayidx75, align 8, !tbaa !5
  %arrayidx76 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx76, align 1, !tbaa !7
  %conv77 = sext i8 %76 to i32
  %cmp78 = icmp ne i32 %conv77, 45
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %for.body
  br label %for.end

if.end.81:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %77 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.80, %for.cond
  %78 = load i32, i32* %i, align 4, !tbaa !1
  %79 = load i32, i32* %nargs, align 4, !tbaa !1
  %cmp82 = icmp eq i32 %78, %79
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %for.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %for.end
  %80 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom86 = sext i32 %80 to i64
  %81 = load i8**, i8*** %argp, align 8, !tbaa !5
  %arrayidx87 = getelementptr inbounds i8*, i8** %81, i64 %idxprom86
  %82 = load i8*, i8** %arrayidx87, align 8, !tbaa !5
  store i8* %82, i8** %fnparam, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %83 = load i8**, i8*** %argp, align 8, !tbaa !5
  %84 = load i8*, i8** %83, align 8, !tbaa !5
  %add.ptr88 = getelementptr inbounds i8, i8* %84, i64 1
  %call89 = call i8* @strncpy(i8* %arraydecay, i8* %add.ptr88, i64 4) #8
  %85 = load i8*, i8** %fnparam, align 8, !tbaa !5
  %call90 = call i64 @strlen(i8* %85) #7
  %86 = load i8*, i8** %extn, align 8, !tbaa !5
  %call91 = call i64 @strlen(i8* %86) #7
  %add = add i64 %call90, %call91
  %cmp92 = icmp uge i64 %add, 4096
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.end.85
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call95 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %87) #9
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.96:                                        ; preds = %if.end.85
  %arraydecay97 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %88 = load i8*, i8** %fnparam, align 8, !tbaa !5
  %call98 = call i8* @strcpy(i8* %arraydecay97, i8* %88) #8
  %arraydecay99 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %89 = load i8*, i8** %extn, align 8, !tbaa !5
  %call100 = call i8* @strcat(i8* %arraydecay99, i8* %89) #8
  %90 = load i64, i64* %len, align 8, !tbaa !8
  %sub101 = sub i64 %90, 2
  %arrayidx102 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i64 %sub101
  %91 = load i8, i8* %arrayidx102, align 1, !tbaa !7
  %conv103 = sext i8 %91 to i32
  %cmp104 = icmp eq i32 %conv103, 45
  br i1 %cmp104, label %if.then.106, label %if.else

if.then.106:                                      ; preds = %if.end.96
  %92 = load i64, i64* %len, align 8, !tbaa !8
  %sub107 = sub i64 %92, 2
  %arrayidx108 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i64 %sub107
  store i8 0, i8* %arrayidx108, align 1, !tbaa !7
  %93 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom109 = sext i32 %93 to i64
  %94 = load i8**, i8*** %argp, align 8, !tbaa !5
  %arrayidx110 = getelementptr inbounds i8*, i8** %94, i64 %idxprom109
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dash, i32 0, i32 0), i8** %arrayidx110, align 8, !tbaa !5
  %95 = load i8**, i8*** %argp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8*, i8** %95, i32 1
  store i8** %incdec.ptr, i8*** %argp, align 8, !tbaa !5
  %96 = load i32, i32* %nargs, align 4, !tbaa !1
  %dec = add nsw i32 %96, -1
  store i32 %dec, i32* %nargs, align 4, !tbaa !1
  br label %if.end.125

if.else:                                          ; preds = %if.end.96
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.120, %if.else
  %97 = load i32, i32* %i, align 4, !tbaa !1
  %cmp112 = icmp sgt i32 %97, 1
  br i1 %cmp112, label %for.body.114, label %for.end.122

for.body.114:                                     ; preds = %for.cond.111
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %sub115 = sub nsw i32 %98, 1
  %idxprom116 = sext i32 %sub115 to i64
  %99 = load i8**, i8*** %argp, align 8, !tbaa !5
  %arrayidx117 = getelementptr inbounds i8*, i8** %99, i64 %idxprom116
  %100 = load i8*, i8** %arrayidx117, align 8, !tbaa !5
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom118 = sext i32 %101 to i64
  %102 = load i8**, i8*** %argp, align 8, !tbaa !5
  %arrayidx119 = getelementptr inbounds i8*, i8** %102, i64 %idxprom118
  store i8* %100, i8** %arrayidx119, align 8, !tbaa !5
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.114
  %103 = load i32, i32* %i, align 4, !tbaa !1
  %dec121 = add nsw i32 %103, -1
  store i32 %dec121, i32* %i, align 4, !tbaa !1
  br label %for.cond.111

for.end.122:                                      ; preds = %for.cond.111
  %104 = load i8**, i8*** %argp, align 8, !tbaa !5
  %add.ptr123 = getelementptr inbounds i8*, i8** %104, i64 2
  store i8** %add.ptr123, i8*** %argp, align 8, !tbaa !5
  %105 = load i32, i32* %nargs, align 4, !tbaa !1
  %sub124 = sub nsw i32 %105, 2
  store i32 %sub124, i32* %nargs, align 4, !tbaa !1
  br label %if.end.125

if.end.125:                                       ; preds = %for.end.122, %if.then.106
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.125, %if.then.94, %if.then.84, %if.then.71
  %106 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.534 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.130

if.else.127:                                      ; preds = %lor.lhs.false, %land.lhs.true.51, %if.end.48
  %arraydecay128 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %call129 = call i8* @strcpy(i8* %arraydecay128, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #8
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127, %cleanup.cont
  %108 = load i32, i32* %nargs, align 4, !tbaa !1
  %cmp131 = icmp sgt i32 %108, 0
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.194

land.lhs.true.133:                                ; preds = %if.end.130
  %109 = bitcast i64* %__s1_len135 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  %110 = bitcast i64* %__s2_len137 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.3 to i64)), i64 1), label %land.lhs.true.139, label %cond.false.186

land.lhs.true.139:                                ; preds = %land.lhs.true.133
  %call140 = call i64 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #7
  store i64 %call140, i64* %__s2_len137, align 8, !tbaa !8
  %111 = load i64, i64* %__s2_len137, align 8, !tbaa !8
  %cmp141 = icmp ult i64 %111, 4
  br i1 %cmp141, label %cond.true.143, label %cond.false.186

cond.true.143:                                    ; preds = %land.lhs.true.139
  %112 = bitcast i8** %__s1145 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  %113 = load i8**, i8*** %argp, align 8, !tbaa !5
  %114 = load i8*, i8** %113, align 8, !tbaa !5
  store i8* %114, i8** %__s1145, align 8, !tbaa !5
  %115 = bitcast i32* %__result147 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  %116 = load i8*, i8** %__s1145, align 8, !tbaa !5
  %arrayidx148 = getelementptr inbounds i8, i8* %116, i64 0
  %117 = load i8, i8* %arrayidx148, align 1, !tbaa !7
  %conv149 = zext i8 %117 to i32
  %118 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), align 1, !tbaa !7
  %conv150 = zext i8 %118 to i32
  %sub151 = sub nsw i32 %conv149, %conv150
  store i32 %sub151, i32* %__result147, align 4, !tbaa !1
  %119 = load i64, i64* %__s2_len137, align 8, !tbaa !8
  %cmp152 = icmp ugt i64 %119, 0
  br i1 %cmp152, label %land.lhs.true.154, label %if.end.184

land.lhs.true.154:                                ; preds = %cond.true.143
  %120 = load i32, i32* %__result147, align 4, !tbaa !1
  %cmp155 = icmp eq i32 %120, 0
  br i1 %cmp155, label %if.then.157, label %if.end.184

if.then.157:                                      ; preds = %land.lhs.true.154
  %121 = load i8*, i8** %__s1145, align 8, !tbaa !5
  %arrayidx158 = getelementptr inbounds i8, i8* %121, i64 1
  %122 = load i8, i8* %arrayidx158, align 1, !tbaa !7
  %conv159 = zext i8 %122 to i32
  %123 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i64 1), align 1, !tbaa !7
  %conv160 = zext i8 %123 to i32
  %sub161 = sub nsw i32 %conv159, %conv160
  store i32 %sub161, i32* %__result147, align 4, !tbaa !1
  %124 = load i64, i64* %__s2_len137, align 8, !tbaa !8
  %cmp162 = icmp ugt i64 %124, 1
  br i1 %cmp162, label %land.lhs.true.164, label %if.end.183

land.lhs.true.164:                                ; preds = %if.then.157
  %125 = load i32, i32* %__result147, align 4, !tbaa !1
  %cmp165 = icmp eq i32 %125, 0
  br i1 %cmp165, label %if.then.167, label %if.end.183

if.then.167:                                      ; preds = %land.lhs.true.164
  %126 = load i8*, i8** %__s1145, align 8, !tbaa !5
  %arrayidx168 = getelementptr inbounds i8, i8* %126, i64 2
  %127 = load i8, i8* %arrayidx168, align 1, !tbaa !7
  %conv169 = zext i8 %127 to i32
  %128 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i64 2), align 1, !tbaa !7
  %conv170 = zext i8 %128 to i32
  %sub171 = sub nsw i32 %conv169, %conv170
  store i32 %sub171, i32* %__result147, align 4, !tbaa !1
  %129 = load i64, i64* %__s2_len137, align 8, !tbaa !8
  %cmp172 = icmp ugt i64 %129, 2
  br i1 %cmp172, label %land.lhs.true.174, label %if.end.182

land.lhs.true.174:                                ; preds = %if.then.167
  %130 = load i32, i32* %__result147, align 4, !tbaa !1
  %cmp175 = icmp eq i32 %130, 0
  br i1 %cmp175, label %if.then.177, label %if.end.182

if.then.177:                                      ; preds = %land.lhs.true.174
  %131 = load i8*, i8** %__s1145, align 8, !tbaa !5
  %arrayidx178 = getelementptr inbounds i8, i8* %131, i64 3
  %132 = load i8, i8* %arrayidx178, align 1, !tbaa !7
  %conv179 = zext i8 %132 to i32
  %133 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i64 3), align 1, !tbaa !7
  %conv180 = zext i8 %133 to i32
  %sub181 = sub nsw i32 %conv179, %conv180
  store i32 %sub181, i32* %__result147, align 4, !tbaa !1
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.177, %land.lhs.true.174, %if.then.167
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %land.lhs.true.164, %if.then.157
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %land.lhs.true.154, %cond.true.143
  %134 = load i32, i32* %__result147, align 4, !tbaa !1
  store i32 %134, i32* %tmp185, !tbaa !1
  %135 = bitcast i32* %__result147 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i8** %__s1145 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = load i32, i32* %tmp185, !tbaa !1
  br label %cond.end.188

cond.false.186:                                   ; preds = %land.lhs.true.139, %land.lhs.true.133
  %138 = load i8**, i8*** %argp, align 8, !tbaa !5
  %139 = load i8*, i8** %138, align 8, !tbaa !5
  %call187 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.186, %if.end.184
  %cond189 = phi i32 [ %137, %if.end.184 ], [ %call187, %cond.false.186 ]
  store i32 %cond189, i32* %tmp138, !tbaa !1
  %140 = bitcast i64* %__s2_len137 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i64* %__s1_len135 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = load i32, i32* %tmp138, !tbaa !1
  %tobool190 = icmp ne i32 %142, 0
  br i1 %tobool190, label %if.end.194, label %if.then.191

if.then.191:                                      ; preds = %cond.end.188
  store i32 (i32, %struct._IO_FILE*)* @hputc, i32 (i32, %struct._IO_FILE*)** %eputc, align 8, !tbaa !5
  store i32 (i8*, %struct._IO_FILE*)* @hputs, i32 (i8*, %struct._IO_FILE*)** %eputs, align 8, !tbaa !5
  %143 = load i8**, i8*** %argp, align 8, !tbaa !5
  %incdec.ptr192 = getelementptr inbounds i8*, i8** %143, i32 1
  store i8** %incdec.ptr192, i8*** %argp, align 8, !tbaa !5
  %144 = load i32, i32* %nargs, align 4, !tbaa !1
  %dec193 = add nsw i32 %144, -1
  store i32 %dec193, i32* %nargs, align 4, !tbaa !1
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.191, %cond.end.188, %if.end.130
  %145 = load i32, i32* %nargs, align 4, !tbaa !1
  %cmp195 = icmp sgt i32 %145, 0
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.258

land.lhs.true.197:                                ; preds = %if.end.194
  %146 = bitcast i64* %__s1_len199 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %146) #1
  %147 = bitcast i64* %__s2_len201 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %147) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.4 to i64)), i64 1), label %land.lhs.true.203, label %cond.false.250

land.lhs.true.203:                                ; preds = %land.lhs.true.197
  %call204 = call i64 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #7
  store i64 %call204, i64* %__s2_len201, align 8, !tbaa !8
  %148 = load i64, i64* %__s2_len201, align 8, !tbaa !8
  %cmp205 = icmp ult i64 %148, 4
  br i1 %cmp205, label %cond.true.207, label %cond.false.250

cond.true.207:                                    ; preds = %land.lhs.true.203
  %149 = bitcast i8** %__s1209 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %149) #1
  %150 = load i8**, i8*** %argp, align 8, !tbaa !5
  %151 = load i8*, i8** %150, align 8, !tbaa !5
  store i8* %151, i8** %__s1209, align 8, !tbaa !5
  %152 = bitcast i32* %__result211 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #1
  %153 = load i8*, i8** %__s1209, align 8, !tbaa !5
  %arrayidx212 = getelementptr inbounds i8, i8* %153, i64 0
  %154 = load i8, i8* %arrayidx212, align 1, !tbaa !7
  %conv213 = zext i8 %154 to i32
  %155 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), align 1, !tbaa !7
  %conv214 = zext i8 %155 to i32
  %sub215 = sub nsw i32 %conv213, %conv214
  store i32 %sub215, i32* %__result211, align 4, !tbaa !1
  %156 = load i64, i64* %__s2_len201, align 8, !tbaa !8
  %cmp216 = icmp ugt i64 %156, 0
  br i1 %cmp216, label %land.lhs.true.218, label %if.end.248

land.lhs.true.218:                                ; preds = %cond.true.207
  %157 = load i32, i32* %__result211, align 4, !tbaa !1
  %cmp219 = icmp eq i32 %157, 0
  br i1 %cmp219, label %if.then.221, label %if.end.248

if.then.221:                                      ; preds = %land.lhs.true.218
  %158 = load i8*, i8** %__s1209, align 8, !tbaa !5
  %arrayidx222 = getelementptr inbounds i8, i8* %158, i64 1
  %159 = load i8, i8* %arrayidx222, align 1, !tbaa !7
  %conv223 = zext i8 %159 to i32
  %160 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i64 1), align 1, !tbaa !7
  %conv224 = zext i8 %160 to i32
  %sub225 = sub nsw i32 %conv223, %conv224
  store i32 %sub225, i32* %__result211, align 4, !tbaa !1
  %161 = load i64, i64* %__s2_len201, align 8, !tbaa !8
  %cmp226 = icmp ugt i64 %161, 1
  br i1 %cmp226, label %land.lhs.true.228, label %if.end.247

land.lhs.true.228:                                ; preds = %if.then.221
  %162 = load i32, i32* %__result211, align 4, !tbaa !1
  %cmp229 = icmp eq i32 %162, 0
  br i1 %cmp229, label %if.then.231, label %if.end.247

if.then.231:                                      ; preds = %land.lhs.true.228
  %163 = load i8*, i8** %__s1209, align 8, !tbaa !5
  %arrayidx232 = getelementptr inbounds i8, i8* %163, i64 2
  %164 = load i8, i8* %arrayidx232, align 1, !tbaa !7
  %conv233 = zext i8 %164 to i32
  %165 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i64 2), align 1, !tbaa !7
  %conv234 = zext i8 %165 to i32
  %sub235 = sub nsw i32 %conv233, %conv234
  store i32 %sub235, i32* %__result211, align 4, !tbaa !1
  %166 = load i64, i64* %__s2_len201, align 8, !tbaa !8
  %cmp236 = icmp ugt i64 %166, 2
  br i1 %cmp236, label %land.lhs.true.238, label %if.end.246

land.lhs.true.238:                                ; preds = %if.then.231
  %167 = load i32, i32* %__result211, align 4, !tbaa !1
  %cmp239 = icmp eq i32 %167, 0
  br i1 %cmp239, label %if.then.241, label %if.end.246

if.then.241:                                      ; preds = %land.lhs.true.238
  %168 = load i8*, i8** %__s1209, align 8, !tbaa !5
  %arrayidx242 = getelementptr inbounds i8, i8* %168, i64 3
  %169 = load i8, i8* %arrayidx242, align 1, !tbaa !7
  %conv243 = zext i8 %169 to i32
  %170 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i64 3), align 1, !tbaa !7
  %conv244 = zext i8 %170 to i32
  %sub245 = sub nsw i32 %conv243, %conv244
  store i32 %sub245, i32* %__result211, align 4, !tbaa !1
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.241, %land.lhs.true.238, %if.then.231
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %land.lhs.true.228, %if.then.221
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %land.lhs.true.218, %cond.true.207
  %171 = load i32, i32* %__result211, align 4, !tbaa !1
  store i32 %171, i32* %tmp249, !tbaa !1
  %172 = bitcast i32* %__result211 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i8** %__s1209 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = load i32, i32* %tmp249, !tbaa !1
  br label %cond.end.252

cond.false.250:                                   ; preds = %land.lhs.true.203, %land.lhs.true.197
  %175 = load i8**, i8*** %argp, align 8, !tbaa !5
  %176 = load i8*, i8** %175, align 8, !tbaa !5
  %call251 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #8
  br label %cond.end.252

cond.end.252:                                     ; preds = %cond.false.250, %if.end.248
  %cond253 = phi i32 [ %174, %if.end.248 ], [ %call251, %cond.false.250 ]
  store i32 %cond253, i32* %tmp202, !tbaa !1
  %177 = bitcast i64* %__s2_len201 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast i64* %__s1_len199 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = load i32, i32* %tmp202, !tbaa !1
  %tobool254 = icmp ne i32 %179, 0
  br i1 %tobool254, label %if.end.258, label %if.then.255

if.then.255:                                      ; preds = %cond.end.252
  store i32 0, i32* %newline, align 4, !tbaa !1
  %180 = load i8**, i8*** %argp, align 8, !tbaa !5
  %incdec.ptr256 = getelementptr inbounds i8*, i8** %180, i32 1
  store i8** %incdec.ptr256, i8*** %argp, align 8, !tbaa !5
  %181 = load i32, i32* %nargs, align 4, !tbaa !1
  %dec257 = add nsw i32 %181, -1
  store i32 %dec257, i32* %nargs, align 4, !tbaa !1
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.255, %cond.end.252, %if.end.194
  %arraydecay259 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %call260 = call i64 @strlen(i8* %arraydecay259) #7
  %cmp261 = icmp ne i64 %call260, 0
  br i1 %cmp261, label %if.then.263, label %if.end.271

if.then.263:                                      ; preds = %if.end.258
  %arraydecay264 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %arraydecay265 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call266 = call %struct._IO_FILE* @fopen64(i8* %arraydecay264, i8* %arraydecay265) #9
  store %struct._IO_FILE* %call266, %struct._IO_FILE** %out, align 8, !tbaa !5
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %cmp267 = icmp eq %struct._IO_FILE* %182, null
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.then.263
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.534

if.end.270:                                       ; preds = %if.then.263
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %if.end.258
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.523, %cleanup.520, %if.end.271
  br label %while.body

while.body:                                       ; preds = %while.cond
  %183 = bitcast i8** %arg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %183) #1
  %184 = bitcast i32* %i274 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #1
  %185 = load i32, i32* %interact, align 4, !tbaa !1
  %tobool275 = icmp ne i32 %185, 0
  br i1 %tobool275, label %if.then.276, label %if.else.309

if.then.276:                                      ; preds = %while.body
  %arraydecay277 = getelementptr inbounds [5106 x i8], [5106 x i8]* %line, i32 0, i32 0
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call278 = call i8* @fgets(i8* %arraydecay277, i32 5106, %struct._IO_FILE* %186) #9
  %cmp279 = icmp eq i8* %call278, null
  br i1 %cmp279, label %if.then.281, label %if.end.287

if.then.281:                                      ; preds = %if.then.276
  store i32 0, i32* %interact, align 4, !tbaa !1
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %cmp282 = icmp ne %struct._IO_FILE* %187, %188
  br i1 %cmp282, label %if.then.284, label %if.end.286

if.then.284:                                      ; preds = %if.then.281
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call285 = call i32 @fclose(%struct._IO_FILE* %189) #9
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.284, %if.then.281
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.520

if.end.287:                                       ; preds = %if.then.276
  %arraydecay288 = getelementptr inbounds [5106 x i8], [5106 x i8]* %line, i32 0, i32 0
  %call289 = call i64 @strlen(i8* %arraydecay288) #7
  %cmp290 = icmp ugt i64 %call289, 5096
  br i1 %cmp290, label %if.then.292, label %if.end.294

if.then.292:                                      ; preds = %if.end.287
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call293 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %190) #9
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.520

if.end.294:                                       ; preds = %if.end.287
  %arraydecay295 = getelementptr inbounds [5106 x i8], [5106 x i8]* %line, i32 0, i32 0
  %call296 = call i64 @strlen(i8* %arraydecay295) #7
  %sub297 = sub i64 %call296, 1
  %conv298 = trunc i64 %sub297 to i32
  store i32 %conv298, i32* %i274, align 4, !tbaa !1
  br label %for.cond.299

for.cond.299:                                     ; preds = %for.inc.305, %if.end.294
  %191 = load i32, i32* %i274, align 4, !tbaa !1
  %cmp300 = icmp slt i32 %191, 5106
  br i1 %cmp300, label %for.body.302, label %for.end.307

for.body.302:                                     ; preds = %for.cond.299
  %192 = load i32, i32* %i274, align 4, !tbaa !1
  %idxprom303 = sext i32 %192 to i64
  %arrayidx304 = getelementptr inbounds [5106 x i8], [5106 x i8]* %line, i32 0, i64 %idxprom303
  store i8 0, i8* %arrayidx304, align 1, !tbaa !7
  br label %for.inc.305

for.inc.305:                                      ; preds = %for.body.302
  %193 = load i32, i32* %i274, align 4, !tbaa !1
  %inc306 = add nsw i32 %193, 1
  store i32 %inc306, i32* %i274, align 4, !tbaa !1
  br label %for.cond.299

for.end.307:                                      ; preds = %for.cond.299
  %arraydecay308 = getelementptr inbounds [5106 x i8], [5106 x i8]* %line, i32 0, i32 0
  store i8* %arraydecay308, i8** %arg, align 8, !tbaa !5
  br label %if.end.316

if.else.309:                                      ; preds = %while.body
  %194 = load i32, i32* %nargs, align 4, !tbaa !1
  %cmp310 = icmp eq i32 %194, 0
  br i1 %cmp310, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %if.else.309
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.520

if.end.313:                                       ; preds = %if.else.309
  %195 = load i8**, i8*** %argp, align 8, !tbaa !5
  %196 = load i8*, i8** %195, align 8, !tbaa !5
  store i8* %196, i8** %arg, align 8, !tbaa !5
  %197 = load i8**, i8*** %argp, align 8, !tbaa !5
  %incdec.ptr314 = getelementptr inbounds i8*, i8** %197, i32 1
  store i8** %incdec.ptr314, i8*** %argp, align 8, !tbaa !5
  %198 = load i32, i32* %nargs, align 4, !tbaa !1
  %dec315 = add nsw i32 %198, -1
  store i32 %dec315, i32* %nargs, align 4, !tbaa !1
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.313, %for.end.307
  %199 = load i8, i8* %sw, align 1, !tbaa !7
  %conv317 = sext i8 %199 to i32
  %cmp318 = icmp eq i32 %conv317, 0
  br i1 %cmp318, label %land.lhs.true.320, label %if.else.396

land.lhs.true.320:                                ; preds = %if.end.316
  %200 = load i8*, i8** %arg, align 8, !tbaa !5
  %arrayidx321 = getelementptr inbounds i8, i8* %200, i64 0
  %201 = load i8, i8* %arrayidx321, align 1, !tbaa !7
  %conv322 = sext i8 %201 to i32
  %cmp323 = icmp eq i32 %conv322, 45
  br i1 %cmp323, label %if.then.325, label %if.else.396

if.then.325:                                      ; preds = %land.lhs.true.320
  call void @llvm.lifetime.start(i64 1, i8* %chr) #1
  %202 = load i8*, i8** %arg, align 8, !tbaa !5
  %arrayidx327 = getelementptr inbounds i8, i8* %202, i64 1
  %203 = load i8, i8* %arrayidx327, align 1, !tbaa !7
  store i8 %203, i8* %chr, align 1, !tbaa !7
  store i8 0, i8* %sp, align 1, !tbaa !7
  br label %swc

swc:                                              ; preds = %if.then.384, %if.then.325
  %204 = load i8, i8* %chr, align 1, !tbaa !7
  %conv328 = sext i8 %204 to i32
  switch i32 %conv328, label %sw.epilog [
    i32 108, label %sw.bb
    i32 113, label %sw.bb.329
    i32 81, label %sw.bb.329
    i32 114, label %sw.bb.344
    i32 82, label %sw.bb.344
    i32 117, label %sw.bb.344
    i32 120, label %sw.bb.344
    i32 115, label %sw.bb.345
    i32 105, label %sw.bb.347
    i32 98, label %sw.bb.348
    i32 66, label %sw.bb.348
    i32 100, label %sw.bb.368
    i32 68, label %sw.bb.368
    i32 102, label %sw.bb.378
    i32 70, label %sw.bb.378
    i32 88, label %sw.bb.380
    i32 43, label %sw.bb.381
    i32 0, label %sw.bb.395
  ]

sw.bb:                                            ; preds = %swc
  store i8 81, i8* %chr, align 1, !tbaa !7
  br label %sw.bb.329

sw.bb.329:                                        ; preds = %swc, %swc, %sw.bb
  %205 = load i8*, i8** %arg, align 8, !tbaa !5
  %arrayidx330 = getelementptr inbounds i8, i8* %205, i64 2
  %206 = load i8, i8* %arrayidx330, align 1, !tbaa !7
  %conv331 = sext i8 %206 to i32
  %cmp332 = icmp ne i32 %conv331, 0
  br i1 %cmp332, label %if.then.334, label %if.end.343

if.then.334:                                      ; preds = %sw.bb.329
  %207 = load i32 (i8*, %struct._IO_FILE*)*, i32 (i8*, %struct._IO_FILE*)** %eputs, align 8, !tbaa !5
  %208 = load i8*, i8** %arg, align 8, !tbaa !5
  %add.ptr335 = getelementptr inbounds i8, i8* %208, i64 2
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call336 = call i32 %207(i8* %add.ptr335, %struct._IO_FILE* %209) #9
  %210 = load i8, i8* %chr, align 1, !tbaa !7
  %conv337 = sext i8 %210 to i32
  %cmp338 = icmp eq i32 %conv337, 81
  br i1 %cmp338, label %if.then.340, label %if.end.342

if.then.340:                                      ; preds = %if.then.334
  %211 = load i32 (i32, %struct._IO_FILE*)*, i32 (i32, %struct._IO_FILE*)** %eputc, align 8, !tbaa !5
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call341 = call i32 %211(i32 32, %struct._IO_FILE* %212) #9
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.340, %if.then.334
  br label %sw.epilog

if.end.343:                                       ; preds = %sw.bb.329
  br label %sw.bb.344

sw.bb.344:                                        ; preds = %swc, %swc, %swc, %swc, %if.end.343
  %213 = load i8, i8* %chr, align 1, !tbaa !7
  store i8 %213, i8* %sw, align 1, !tbaa !7
  br label %sw.epilog

sw.bb.345:                                        ; preds = %swc
  %214 = load i32 (i32, %struct._IO_FILE*)*, i32 (i32, %struct._IO_FILE*)** %eputc, align 8, !tbaa !5
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call346 = call i32 %214(i32 32, %struct._IO_FILE* %215) #9
  br label %sw.epilog

sw.bb.347:                                        ; preds = %swc
  store i32 1, i32* %interact, align 4, !tbaa !1
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  store %struct._IO_FILE* %216, %struct._IO_FILE** %in, align 8, !tbaa !5
  br label %sw.epilog

sw.bb.348:                                        ; preds = %swc, %swc
  %217 = load i8*, i8** %fnparam, align 8, !tbaa !5
  %218 = load i8*, i8** %fnparam, align 8, !tbaa !5
  %call349 = call i64 @strlen(i8* %218) #7
  %add.ptr350 = getelementptr inbounds i8, i8* %217, i64 %call349
  store i8* %add.ptr350, i8** %arg, align 8, !tbaa !5
  br label %while.cond.351

while.cond.351:                                   ; preds = %while.body.365, %sw.bb.348
  %219 = load i8*, i8** %arg, align 8, !tbaa !5
  %220 = load i8*, i8** %fnparam, align 8, !tbaa !5
  %cmp352 = icmp ugt i8* %219, %220
  br i1 %cmp352, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.351
  %221 = load i8*, i8** %arg, align 8, !tbaa !5
  %arrayidx354 = getelementptr inbounds i8, i8* %221, i64 -1
  %222 = load i8, i8* %arrayidx354, align 1, !tbaa !7
  %conv355 = sext i8 %222 to i32
  %idxprom356 = sext i32 %conv355 to i64
  %call357 = call i16** @__ctype_b_loc() #10
  %223 = load i16*, i16** %call357, align 8, !tbaa !5
  %arrayidx358 = getelementptr inbounds i16, i16* %223, i64 %idxprom356
  %224 = load i16, i16* %arrayidx358, align 2, !tbaa !10
  %conv359 = zext i16 %224 to i32
  %and = and i32 %conv359, 8
  %tobool360 = icmp ne i32 %and, 0
  br i1 %tobool360, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %225 = load i8*, i8** %arg, align 8, !tbaa !5
  %arrayidx361 = getelementptr inbounds i8, i8* %225, i64 -1
  %226 = load i8, i8* %arrayidx361, align 1, !tbaa !7
  %conv362 = sext i8 %226 to i32
  %cmp363 = icmp eq i32 %conv362, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %227 = phi i1 [ true, %land.rhs ], [ %cmp363, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond.351
  %228 = phi i1 [ false, %while.cond.351 ], [ %227, %lor.end ]
  br i1 %228, label %while.body.365, label %while.end

while.body.365:                                   ; preds = %land.end
  %229 = load i8*, i8** %arg, align 8, !tbaa !5
  %incdec.ptr366 = getelementptr inbounds i8, i8* %229, i32 -1
  store i8* %incdec.ptr366, i8** %arg, align 8, !tbaa !5
  br label %while.cond.351

while.end:                                        ; preds = %land.end
  %230 = load i32 (i8*, %struct._IO_FILE*)*, i32 (i8*, %struct._IO_FILE*)** %eputs, align 8, !tbaa !5
  %231 = load i8*, i8** %arg, align 8, !tbaa !5
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call367 = call i32 %230(i8* %231, %struct._IO_FILE* %232) #9
  br label %sw.epilog

sw.bb.368:                                        ; preds = %swc, %swc
  %233 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %233) #1
  %234 = bitcast [26 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 26, i8* %234) #1
  %call371 = call i64 @time(i64* %t) #8
  %arraydecay372 = getelementptr inbounds [26 x i8], [26 x i8]* %str, i32 0, i32 0
  %call373 = call i8* @ctime(i64* %t) #8
  %call374 = call i8* @strcpy(i8* %arraydecay372, i8* %call373) #8
  %arrayidx375 = getelementptr inbounds [26 x i8], [26 x i8]* %str, i32 0, i64 24
  store i8 0, i8* %arrayidx375, align 1, !tbaa !7
  %235 = load i32 (i8*, %struct._IO_FILE*)*, i32 (i8*, %struct._IO_FILE*)** %eputs, align 8, !tbaa !5
  %arraydecay376 = getelementptr inbounds [26 x i8], [26 x i8]* %str, i32 0, i32 0
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call377 = call i32 %235(i8* %arraydecay376, %struct._IO_FILE* %236) #9
  %237 = bitcast [26 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 26, i8* %237) #1
  %238 = bitcast i64* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #1
  br label %sw.epilog

sw.bb.378:                                        ; preds = %swc, %swc
  %239 = load i32 (i8*, %struct._IO_FILE*)*, i32 (i8*, %struct._IO_FILE*)** %eputs, align 8, !tbaa !5
  %240 = load i8*, i8** %fnparam, align 8, !tbaa !5
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call379 = call i32 %239(i8* %240, %struct._IO_FILE* %241) #9
  br label %sw.epilog

sw.bb.380:                                        ; preds = %swc
  store i8 1, i8* %hexx, align 1, !tbaa !7
  br label %sw.epilog

sw.bb.381:                                        ; preds = %swc
  %242 = load i8*, i8** %arg, align 8, !tbaa !5
  %arrayidx382 = getelementptr inbounds i8, i8* %242, i64 1
  %243 = load i8, i8* %arrayidx382, align 1, !tbaa !7
  %tobool383 = icmp ne i8 %243, 0
  br i1 %tobool383, label %if.then.384, label %if.end.394

if.then.384:                                      ; preds = %sw.bb.381
  %244 = load i8*, i8** %arg, align 8, !tbaa !5
  %incdec.ptr385 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %incdec.ptr385, i8** %arg, align 8, !tbaa !5
  %245 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %245) #1
  %246 = load i8*, i8** %arg, align 8, !tbaa !5
  %arrayidx387 = getelementptr inbounds i8, i8* %246, i64 1
  %247 = load i8, i8* %arrayidx387, align 1, !tbaa !7
  %conv388 = sext i8 %247 to i32
  %idxprom389 = sext i32 %conv388 to i64
  %call390 = call i32** @__ctype_toupper_loc() #10
  %248 = load i32*, i32** %call390, align 8, !tbaa !5
  %arrayidx391 = getelementptr inbounds i32, i32* %248, i64 %idxprom389
  %249 = load i32, i32* %arrayidx391, align 4, !tbaa !1
  store i32 %249, i32* %__res, align 4, !tbaa !1
  %250 = load i32, i32* %__res, align 4, !tbaa !1
  store i32 %250, i32* %tmp392, !tbaa !1
  %251 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #1
  %252 = load i32, i32* %tmp392, !tbaa !1
  %conv393 = trunc i32 %252 to i8
  store i8 %conv393, i8* %chr, align 1, !tbaa !7
  br label %swc

if.end.394:                                       ; preds = %sw.bb.381
  br label %sw.bb.395

sw.bb.395:                                        ; preds = %swc, %if.end.394
  store i8 45, i8* %sw, align 1, !tbaa !7
  br label %sw.epilog

sw.epilog:                                        ; preds = %swc, %sw.bb.395, %sw.bb.380, %sw.bb.378, %sw.bb.368, %while.end, %sw.bb.347, %sw.bb.345, %sw.bb.344, %if.end.342
  call void @llvm.lifetime.end(i64 1, i8* %chr) #1
  br label %if.end.519

if.else.396:                                      ; preds = %land.lhs.true.320, %if.end.316
  %253 = load i8, i8* %sw, align 1, !tbaa !7
  %conv397 = sext i8 %253 to i32
  switch i32 %conv397, label %sw.epilog.518 [
    i32 0, label %sw.bb.398
    i32 45, label %sw.bb.398
    i32 113, label %sw.bb.407
    i32 81, label %sw.bb.409
    i32 114, label %sw.bb.412
    i32 82, label %sw.bb.418
    i32 117, label %sw.bb.435
    i32 120, label %sw.bb.451
  ]

sw.bb.398:                                        ; preds = %if.else.396, %if.else.396
  %254 = load i8, i8* %hexx, align 1, !tbaa !7
  %tobool399 = icmp ne i8 %254, 0
  br i1 %tobool399, label %if.then.400, label %if.end.401

if.then.400:                                      ; preds = %sw.bb.398
  br label %xx

if.end.401:                                       ; preds = %sw.bb.398
  %255 = load i8, i8* %sp, align 1, !tbaa !7
  %tobool402 = icmp ne i8 %255, 0
  br i1 %tobool402, label %if.then.403, label %if.end.405

if.then.403:                                      ; preds = %if.end.401
  %256 = load i32 (i32, %struct._IO_FILE*)*, i32 (i32, %struct._IO_FILE*)** %eputc, align 8, !tbaa !5
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call404 = call i32 %256(i32 32, %struct._IO_FILE* %257) #9
  br label %if.end.405

if.end.405:                                       ; preds = %if.then.403, %if.end.401
  %258 = load i32 (i8*, %struct._IO_FILE*)*, i32 (i8*, %struct._IO_FILE*)** %eputs, align 8, !tbaa !5
  %259 = load i8*, i8** %arg, align 8, !tbaa !5
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call406 = call i32 %258(i8* %259, %struct._IO_FILE* %260) #9
  store i8 1, i8* %sp, align 1, !tbaa !7
  br label %sw.epilog.518

sw.bb.407:                                        ; preds = %if.else.396
  store i8 0, i8* %sw, align 1, !tbaa !7
  %261 = load i32 (i8*, %struct._IO_FILE*)*, i32 (i8*, %struct._IO_FILE*)** %eputs, align 8, !tbaa !5
  %262 = load i8*, i8** %arg, align 8, !tbaa !5
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call408 = call i32 %261(i8* %262, %struct._IO_FILE* %263) #9
  br label %sw.epilog.518

sw.bb.409:                                        ; preds = %if.else.396
  store i8 0, i8* %sw, align 1, !tbaa !7
  %264 = load i32 (i8*, %struct._IO_FILE*)*, i32 (i8*, %struct._IO_FILE*)** %eputs, align 8, !tbaa !5
  %265 = load i8*, i8** %arg, align 8, !tbaa !5
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call410 = call i32 %264(i8* %265, %struct._IO_FILE* %266) #9
  %267 = load i32 (i32, %struct._IO_FILE*)*, i32 (i32, %struct._IO_FILE*)** %eputc, align 8, !tbaa !5
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call411 = call i32 %267(i32 32, %struct._IO_FILE* %268) #9
  br label %sw.epilog.518

sw.bb.412:                                        ; preds = %if.else.396
  store i8 0, i8* %sw, align 1, !tbaa !7
  %269 = load i8*, i8** %arg, align 8, !tbaa !5
  %call413 = call %struct._IO_FILE* @fopen64(i8* %269, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #9
  store %struct._IO_FILE* %call413, %struct._IO_FILE** %in, align 8, !tbaa !5
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %cmp414 = icmp eq %struct._IO_FILE* %270, null
  br i1 %cmp414, label %if.then.416, label %if.end.417

if.then.416:                                      ; preds = %sw.bb.412
  call void @exit(i32 1) #11
  unreachable

if.end.417:                                       ; preds = %sw.bb.412
  store i32 1, i32* %interact, align 4, !tbaa !1
  br label %sw.epilog.518

sw.bb.418:                                        ; preds = %if.else.396
  store i8 0, i8* %sw, align 1, !tbaa !7
  %271 = load i8*, i8** %arg, align 8, !tbaa !5
  %call419 = call %struct._IO_FILE* @fopen64(i8* %271, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #9
  store %struct._IO_FILE* %call419, %struct._IO_FILE** %in, align 8, !tbaa !5
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %cmp420 = icmp eq %struct._IO_FILE* %272, null
  br i1 %cmp420, label %if.then.422, label %if.end.423

if.then.422:                                      ; preds = %sw.bb.418
  call void @exit(i32 1) #11
  unreachable

if.end.423:                                       ; preds = %sw.bb.418
  br label %while.cond.424

while.cond.424:                                   ; preds = %while.body.429, %if.end.423
  %arraydecay425 = getelementptr inbounds [5106 x i8], [5106 x i8]* %line, i32 0, i32 0
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call426 = call i64 @fread(i8* %arraydecay425, i64 1, i64 1, %struct._IO_FILE* %273) #9
  %cmp427 = icmp ugt i64 %call426, 0
  br i1 %cmp427, label %while.body.429, label %while.end.433

while.body.429:                                   ; preds = %while.cond.424
  %274 = load i32 (i32, %struct._IO_FILE*)*, i32 (i32, %struct._IO_FILE*)** %eputc, align 8, !tbaa !5
  %arrayidx430 = getelementptr inbounds [5106 x i8], [5106 x i8]* %line, i32 0, i64 0
  %275 = load i8, i8* %arrayidx430, align 1, !tbaa !7
  %conv431 = sext i8 %275 to i32
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call432 = call i32 %274(i32 %conv431, %struct._IO_FILE* %276) #9
  br label %while.cond.424

while.end.433:                                    ; preds = %while.cond.424
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call434 = call i32 @fclose(%struct._IO_FILE* %277) #9
  br label %sw.epilog.518

sw.bb.435:                                        ; preds = %if.else.396
  %278 = bitcast i8** %up to i8*
  call void @llvm.lifetime.start(i64 8, i8* %278) #1
  %279 = load i8*, i8** %arg, align 8, !tbaa !5
  store i8* %279, i8** %up, align 8, !tbaa !5
  br label %for.cond.437

for.cond.437:                                     ; preds = %for.inc.448, %sw.bb.435
  %280 = load i8*, i8** %up, align 8, !tbaa !5
  %281 = load i8, i8* %280, align 1, !tbaa !7
  %tobool438 = icmp ne i8 %281, 0
  br i1 %tobool438, label %for.body.439, label %for.end.450

for.body.439:                                     ; preds = %for.cond.437
  %282 = load i32 (i32, %struct._IO_FILE*)*, i32 (i32, %struct._IO_FILE*)** %eputc, align 8, !tbaa !5
  %283 = bitcast i32* %__res441 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %283) #1
  %284 = load i8*, i8** %up, align 8, !tbaa !5
  %285 = load i8, i8* %284, align 1, !tbaa !7
  %conv442 = sext i8 %285 to i32
  %idxprom443 = sext i32 %conv442 to i64
  %call444 = call i32** @__ctype_toupper_loc() #10
  %286 = load i32*, i32** %call444, align 8, !tbaa !5
  %arrayidx445 = getelementptr inbounds i32, i32* %286, i64 %idxprom443
  %287 = load i32, i32* %arrayidx445, align 4, !tbaa !1
  store i32 %287, i32* %__res441, align 4, !tbaa !1
  %288 = load i32, i32* %__res441, align 4, !tbaa !1
  store i32 %288, i32* %tmp446, !tbaa !1
  %289 = bitcast i32* %__res441 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = load i32, i32* %tmp446, !tbaa !1
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call447 = call i32 %282(i32 %290, %struct._IO_FILE* %291) #9
  br label %for.inc.448

for.inc.448:                                      ; preds = %for.body.439
  %292 = load i8*, i8** %up, align 8, !tbaa !5
  %incdec.ptr449 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %incdec.ptr449, i8** %up, align 8, !tbaa !5
  br label %for.cond.437

for.end.450:                                      ; preds = %for.cond.437
  %293 = bitcast i8** %up to i8*
  call void @llvm.lifetime.end(i64 8, i8* %293) #1
  store i8 0, i8* %sw, align 1, !tbaa !7
  br label %sw.epilog.518

sw.bb.451:                                        ; preds = %if.else.396
  br label %xx

xx:                                               ; preds = %sw.bb.451, %if.then.400
  %294 = bitcast i8** %xp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %294) #1
  %295 = bitcast i32* %xchr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %295) #1
  store i32 1, i32* %xchr, align 4, !tbaa !1
  %296 = load i8*, i8** %arg, align 8, !tbaa !5
  store i8* %296, i8** %xp, align 8, !tbaa !5
  br label %for.cond.454

for.cond.454:                                     ; preds = %for.inc.511, %xx
  %297 = load i8*, i8** %xp, align 8, !tbaa !5
  %298 = load i8, i8* %297, align 1, !tbaa !7
  %tobool455 = icmp ne i8 %298, 0
  br i1 %tobool455, label %for.body.456, label %for.end.513

for.body.456:                                     ; preds = %for.cond.454
  call void @llvm.lifetime.start(i64 1, i8* %ch) #1
  %299 = load i8*, i8** %xp, align 8, !tbaa !5
  %300 = load i8, i8* %299, align 1, !tbaa !7
  store i8 %300, i8* %ch, align 1, !tbaa !7
  %301 = load i8, i8* %ch, align 1, !tbaa !7
  %conv458 = sext i8 %301 to i32
  %idxprom459 = sext i32 %conv458 to i64
  %call460 = call i16** @__ctype_b_loc() #10
  %302 = load i16*, i16** %call460, align 8, !tbaa !5
  %arrayidx461 = getelementptr inbounds i16, i16* %302, i64 %idxprom459
  %303 = load i16, i16* %arrayidx461, align 2, !tbaa !10
  %conv462 = zext i16 %303 to i32
  %and463 = and i32 %conv462, 4096
  %tobool464 = icmp ne i32 %and463, 0
  br i1 %tobool464, label %if.end.466, label %if.then.465

if.then.465:                                      ; preds = %for.body.456
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.508

if.end.466:                                       ; preds = %for.body.456
  %304 = load i32, i32* %xchr, align 4, !tbaa !1
  %shl = shl i32 %304, 4
  store i32 %shl, i32* %xchr, align 4, !tbaa !1
  %305 = load i8, i8* %ch, align 1, !tbaa !7
  %conv467 = sext i8 %305 to i32
  %idxprom468 = sext i32 %conv467 to i64
  %call469 = call i16** @__ctype_b_loc() #10
  %306 = load i16*, i16** %call469, align 8, !tbaa !5
  %arrayidx470 = getelementptr inbounds i16, i16* %306, i64 %idxprom468
  %307 = load i16, i16* %arrayidx470, align 2, !tbaa !10
  %conv471 = zext i16 %307 to i32
  %and472 = and i32 %conv471, 2048
  %tobool473 = icmp ne i32 %and472, 0
  br i1 %tobool473, label %cond.true.474, label %cond.false.477

cond.true.474:                                    ; preds = %if.end.466
  %308 = load i8, i8* %ch, align 1, !tbaa !7
  %conv475 = sext i8 %308 to i32
  %sub476 = sub nsw i32 %conv475, 48
  br label %cond.end.499

cond.false.477:                                   ; preds = %if.end.466
  %309 = load i8, i8* %ch, align 1, !tbaa !7
  %conv478 = sext i8 %309 to i32
  %idxprom479 = sext i32 %conv478 to i64
  %call480 = call i16** @__ctype_b_loc() #10
  %310 = load i16*, i16** %call480, align 8, !tbaa !5
  %arrayidx481 = getelementptr inbounds i16, i16* %310, i64 %idxprom479
  %311 = load i16, i16* %arrayidx481, align 2, !tbaa !10
  %conv482 = zext i16 %311 to i32
  %and483 = and i32 %conv482, 256
  %tobool484 = icmp ne i32 %and483, 0
  br i1 %tobool484, label %cond.true.485, label %cond.false.493

cond.true.485:                                    ; preds = %cond.false.477
  %312 = bitcast i32* %__res487 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %312) #1
  %313 = load i8, i8* %ch, align 1, !tbaa !7
  %conv488 = sext i8 %313 to i32
  %idxprom489 = sext i32 %conv488 to i64
  %call490 = call i32** @__ctype_tolower_loc() #10
  %314 = load i32*, i32** %call490, align 8, !tbaa !5
  %arrayidx491 = getelementptr inbounds i32, i32* %314, i64 %idxprom489
  %315 = load i32, i32* %arrayidx491, align 4, !tbaa !1
  store i32 %315, i32* %__res487, align 4, !tbaa !1
  %316 = load i32, i32* %__res487, align 4, !tbaa !1
  store i32 %316, i32* %tmp492, !tbaa !1
  %317 = bitcast i32* %__res487 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #1
  %318 = load i32, i32* %tmp492, !tbaa !1
  br label %cond.end.495

cond.false.493:                                   ; preds = %cond.false.477
  %319 = load i8, i8* %ch, align 1, !tbaa !7
  %conv494 = sext i8 %319 to i32
  br label %cond.end.495

cond.end.495:                                     ; preds = %cond.false.493, %cond.true.485
  %cond496 = phi i32 [ %318, %cond.true.485 ], [ %conv494, %cond.false.493 ]
  %sub497 = sub nsw i32 %cond496, 97
  %add498 = add nsw i32 %sub497, 10
  br label %cond.end.499

cond.end.499:                                     ; preds = %cond.end.495, %cond.true.474
  %cond500 = phi i32 [ %sub476, %cond.true.474 ], [ %add498, %cond.end.495 ]
  %320 = load i32, i32* %xchr, align 4, !tbaa !1
  %add501 = add i32 %320, %cond500
  store i32 %add501, i32* %xchr, align 4, !tbaa !1
  %321 = load i32, i32* %xchr, align 4, !tbaa !1
  %cmp502 = icmp uge i32 %321, 256
  br i1 %cmp502, label %if.then.504, label %if.end.507

if.then.504:                                      ; preds = %cond.end.499
  %322 = load i32 (i32, %struct._IO_FILE*)*, i32 (i32, %struct._IO_FILE*)** %eputc, align 8, !tbaa !5
  %323 = load i32, i32* %xchr, align 4, !tbaa !1
  %and505 = and i32 %323, 255
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call506 = call i32 %322(i32 %and505, %struct._IO_FILE* %324) #9
  store i32 1, i32* %xchr, align 4, !tbaa !1
  br label %if.end.507

if.end.507:                                       ; preds = %if.then.504, %cond.end.499
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.508

cleanup.508:                                      ; preds = %if.end.507, %if.then.465
  call void @llvm.lifetime.end(i64 1, i8* %ch) #1
  %cleanup.dest.509 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.509, label %cleanup.514 [
    i32 0, label %cleanup.cont.510
  ]

cleanup.cont.510:                                 ; preds = %cleanup.508
  br label %for.inc.511

for.inc.511:                                      ; preds = %cleanup.cont.510
  %325 = load i8*, i8** %xp, align 8, !tbaa !5
  %incdec.ptr512 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %incdec.ptr512, i8** %xp, align 8, !tbaa !5
  br label %for.cond.454

for.end.513:                                      ; preds = %for.cond.454
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.514

cleanup.514:                                      ; preds = %for.end.513, %cleanup.508
  %326 = bitcast i32* %xchr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %326) #1
  %327 = bitcast i8** %xp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #1
  %cleanup.dest.516 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.516, label %cleanup.520 [
    i32 0, label %cleanup.cont.517
  ]

cleanup.cont.517:                                 ; preds = %cleanup.514
  store i8 0, i8* %sw, align 1, !tbaa !7
  br label %sw.epilog.518

sw.epilog.518:                                    ; preds = %if.else.396, %cleanup.cont.517, %for.end.450, %while.end.433, %if.end.417, %sw.bb.409, %sw.bb.407, %if.end.405
  br label %if.end.519

if.end.519:                                       ; preds = %sw.epilog.518, %sw.epilog
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.520

cleanup.520:                                      ; preds = %if.end.519, %cleanup.514, %if.then.312, %if.then.292, %if.end.286
  %328 = bitcast i32* %i274 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %328) #1
  %329 = bitcast i8** %arg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %329) #1
  %cleanup.dest.522 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.522, label %cleanup.534 [
    i32 0, label %cleanup.cont.523
    i32 8, label %while.cond
    i32 9, label %while.end.524
  ]

cleanup.cont.523:                                 ; preds = %cleanup.520
  br label %while.cond

while.end.524:                                    ; preds = %cleanup.520
  %330 = load i32, i32* %newline, align 4, !tbaa !1
  %tobool525 = icmp ne i32 %330, 0
  br i1 %tobool525, label %if.then.526, label %if.end.528

if.then.526:                                      ; preds = %while.end.524
  %331 = load i32 (i32, %struct._IO_FILE*)*, i32 (i32, %struct._IO_FILE*)** %eputc, align 8, !tbaa !5
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call527 = call i32 %331(i32 10, %struct._IO_FILE* %332) #9
  br label %if.end.528

if.end.528:                                       ; preds = %if.then.526, %while.end.524
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %cmp529 = icmp ne %struct._IO_FILE* %333, %334
  br i1 %cmp529, label %if.then.531, label %if.end.533

if.then.531:                                      ; preds = %if.end.528
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !5
  %call532 = call i32 @fclose(%struct._IO_FILE* %335) #9
  br label %if.end.533

if.end.533:                                       ; preds = %if.then.531, %if.end.528
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.534

cleanup.534:                                      ; preds = %if.end.533, %cleanup.520, %if.then.269, %cleanup, %if.then.43
  %336 = bitcast i32* %nargs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %336) #1
  %337 = bitcast i8*** %argp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %337) #1
  call void @llvm.lifetime.end(i64 1, i8* %hexx) #1
  call void @llvm.lifetime.end(i64 1, i8* %sp) #1
  call void @llvm.lifetime.end(i64 1, i8* %sw) #1
  %338 = bitcast [5106 x i8]* %line to i8*
  call void @llvm.lifetime.end(i64 5106, i8* %338) #1
  %339 = bitcast i32 (i8*, %struct._IO_FILE*)** %eputs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %339) #1
  %340 = bitcast i32 (i32, %struct._IO_FILE*)** %eputc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %340) #1
  %341 = bitcast i32* %interact to i8*
  call void @llvm.lifetime.end(i64 4, i8* %341) #1
  %342 = bitcast i32* %newline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %342) #1
  %343 = bitcast [4096 x i8]* %fname to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %343) #1
  %344 = bitcast i8** %fnparam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %344) #1
  %345 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %345) #1
  %346 = bitcast i8** %extn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #1
  %347 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %347) #1
  %348 = bitcast %struct._IO_FILE** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #1
  %349 = load i32, i32* %retval
  ret i32 %349
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @hputc(i32 %ch, %struct._IO_FILE* %out) #0 {
entry:
  %ch.addr = alloca i32, align 4
  %out.addr = alloca %struct._IO_FILE*, align 8
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !1
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !5
  %0 = load i32, i32* %ch.addr, align 4, !tbaa !1
  %shr = ashr i32 %0, 4
  %and = and i32 %shr, 15
  %idxprom = sext i32 %and to i64
  %1 = load i8*, i8** @hputc.hex, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %2 to i32
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !5
  %call = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %3) #9
  %4 = load i32, i32* %ch.addr, align 4, !tbaa !1
  %and1 = and i32 %4, 15
  %idxprom2 = sext i32 %and1 to i64
  %5 = load i8*, i8** @hputc.hex, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 %idxprom2
  %6 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv4 = sext i8 %6 to i32
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !5
  %call5 = call i32 @_IO_putc(i32 %conv4, %struct._IO_FILE* %7) #9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @hputs(i8* %str, %struct._IO_FILE* %out) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  store i8* %str, i8** %str.addr, align 8, !tbaa !5
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 8, !tbaa !5
  %1 = load i8, i8* %0, align 1, !tbaa !7
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8, !tbaa !5
  %3 = load i8, i8* %2, align 1, !tbaa !7
  %conv = sext i8 %3 to i32
  %and = and i32 %conv, 255
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !5
  %call = call i32 @hputc(i32 %and, %struct._IO_FILE* %4) #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: nounwind
declare i8* @ctime(i64*) #4

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #5

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind readonly }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind readnone }
attributes #11 = { nobuiltin noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
