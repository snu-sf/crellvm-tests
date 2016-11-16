; ModuleID = './plug-ins/file-sgi/sgi-lib.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgi_t = type { %struct._IO_FILE*, i32, i32, i32, i32, i16, i16, i16, i64, i64, i64**, i64**, i16*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1

; Function Attrs: nounwind uwtable
define i32 @sgiClose(%struct.sgi_t* %sgip) #0 {
entry:
  %retval = alloca i32, align 4
  %sgip.addr = alloca %struct.sgi_t*, align 8
  %i = alloca i32, align 4
  %offset = alloca i64*, align 8
  store %struct.sgi_t* %sgip, %struct.sgi_t** %sgip.addr, align 8
  %0 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %cmp = icmp eq %struct.sgi_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %mode = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %1, i32 0, i32 1
  %2 = load i32, i32* %mode, align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %comp = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %3, i32 0, i32 3
  %4 = load i32, i32* %comp, align 4
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end.33

if.then.3:                                        ; preds = %land.lhs.true
  %5 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %5, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i32 @fseek(%struct._IO_FILE* %6, i64 512, i32 0)
  %7 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %ysize = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %7, i32 0, i32 6
  %8 = load i16, i16* %ysize, align 2
  %conv = zext i16 %8 to i32
  %9 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %zsize = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %9, i32 0, i32 7
  %10 = load i16, i16* %zsize, align 2
  %conv4 = zext i16 %10 to i32
  %mul = mul nsw i32 %conv, %conv4
  store i32 %mul, i32* %i, align 4
  %11 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %table = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %11, i32 0, i32 10
  %12 = load i64**, i64*** %table, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %12, i64 0
  %13 = load i64*, i64** %arrayidx, align 8
  store i64* %13, i64** %offset, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %14 = load i32, i32* %i, align 4
  %cmp5 = icmp sgt i32 %14, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i64*, i64** %offset, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %15, i64 0
  %16 = load i64, i64* %arrayidx7, align 8
  %17 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %call8 = call i32 @putlong(i64 %16, %struct.sgi_t* %17)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %18 = load i32, i32* %i, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %i, align 4
  %19 = load i64*, i64** %offset, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %19, i32 1
  store i64* %incdec.ptr, i64** %offset, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %ysize13 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %20, i32 0, i32 6
  %21 = load i16, i16* %ysize13, align 2
  %conv14 = zext i16 %21 to i32
  %22 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %zsize15 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %22, i32 0, i32 7
  %23 = load i16, i16* %zsize15, align 2
  %conv16 = zext i16 %23 to i32
  %mul17 = mul nsw i32 %conv14, %conv16
  store i32 %mul17, i32* %i, align 4
  %24 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %length = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %24, i32 0, i32 11
  %25 = load i64**, i64*** %length, align 8
  %arrayidx18 = getelementptr inbounds i64*, i64** %25, i64 0
  %26 = load i64*, i64** %arrayidx18, align 8
  store i64* %26, i64** %offset, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.29, %for.end
  %27 = load i32, i32* %i, align 4
  %cmp20 = icmp sgt i32 %27, 0
  br i1 %cmp20, label %for.body.22, label %for.end.32

for.body.22:                                      ; preds = %for.cond.19
  %28 = load i64*, i64** %offset, align 8
  %arrayidx23 = getelementptr inbounds i64, i64* %28, i64 0
  %29 = load i64, i64* %arrayidx23, align 8
  %30 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %call24 = call i32 @putlong(i64 %29, %struct.sgi_t* %30)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body.22
  store i32 -1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %for.body.22
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %31 = load i32, i32* %i, align 4
  %dec30 = add nsw i32 %31, -1
  store i32 %dec30, i32* %i, align 4
  %32 = load i64*, i64** %offset, align 8
  %incdec.ptr31 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %incdec.ptr31, i64** %offset, align 8
  br label %for.cond.19

for.end.32:                                       ; preds = %for.cond.19
  br label %if.end.33

if.end.33:                                        ; preds = %for.end.32, %land.lhs.true, %if.end
  %33 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %table34 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %33, i32 0, i32 10
  %34 = load i64**, i64*** %table34, align 8
  %cmp35 = icmp ne i64** %34, null
  br i1 %cmp35, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %if.end.33
  %35 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %table38 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %35, i32 0, i32 10
  %36 = load i64**, i64*** %table38, align 8
  %arrayidx39 = getelementptr inbounds i64*, i64** %36, i64 0
  %37 = load i64*, i64** %arrayidx39, align 8
  %38 = bitcast i64* %37 to i8*
  call void @free(i8* %38) #3
  %39 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %table40 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %39, i32 0, i32 10
  %40 = load i64**, i64*** %table40, align 8
  %41 = bitcast i64** %40 to i8*
  call void @free(i8* %41) #3
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %if.end.33
  %42 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %length42 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %42, i32 0, i32 11
  %43 = load i64**, i64*** %length42, align 8
  %cmp43 = icmp ne i64** %43, null
  br i1 %cmp43, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %if.end.41
  %44 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %length46 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %44, i32 0, i32 11
  %45 = load i64**, i64*** %length46, align 8
  %arrayidx47 = getelementptr inbounds i64*, i64** %45, i64 0
  %46 = load i64*, i64** %arrayidx47, align 8
  %47 = bitcast i64* %46 to i8*
  call void @free(i8* %47) #3
  %48 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %length48 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %48, i32 0, i32 11
  %49 = load i64**, i64*** %length48, align 8
  %50 = bitcast i64** %49 to i8*
  call void @free(i8* %50) #3
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %if.end.41
  %51 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %comp50 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %51, i32 0, i32 3
  %52 = load i32, i32* %comp50, align 4
  %cmp51 = icmp eq i32 %52, 2
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.49
  %53 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_row = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %53, i32 0, i32 12
  %54 = load i16*, i16** %arle_row, align 8
  %55 = bitcast i16* %54 to i8*
  call void @free(i8* %55) #3
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.49
  %56 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file55 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %56, i32 0, i32 0
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %file55, align 8
  %call56 = call i32 @fclose(%struct._IO_FILE* %57)
  store i32 %call56, i32* %i, align 4
  %58 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %59 = bitcast %struct.sgi_t* %58 to i8*
  call void @free(i8* %59) #3
  %60 = load i32, i32* %i, align 4
  store i32 %60, i32* %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.then.27, %if.then.11, %if.then
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @putlong(i64 %n, %struct.sgi_t* %sgip) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %sgip.addr = alloca %struct.sgi_t*, align 8
  store i64 %n, i64* %n.addr, align 8
  store %struct.sgi_t* %sgip, %struct.sgi_t** %sgip.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %shr = ashr i64 %0, 24
  %conv = trunc i64 %shr to i32
  %1 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %2)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %n.addr, align 8
  %shr2 = ashr i64 %3, 16
  %conv3 = trunc i64 %shr2 to i32
  %4 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file4 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file4, align 8
  %call5 = call i32 @_IO_putc(i32 %conv3, %struct._IO_FILE* %5)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %6 = load i64, i64* %n.addr, align 8
  %shr10 = ashr i64 %6, 8
  %conv11 = trunc i64 %shr10 to i32
  %7 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file12 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %7, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file12, align 8
  %call13 = call i32 @_IO_putc(i32 %conv11, %struct._IO_FILE* %8)
  %cmp14 = icmp eq i32 %call13, -1
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.9
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.9
  %9 = load i64, i64* %n.addr, align 8
  %conv18 = trunc i64 %9 to i32
  %10 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file19 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %10, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file19, align 8
  %call20 = call i32 @_IO_putc(i32 %conv18, %struct._IO_FILE* %11)
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.17
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.17
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.23, %if.then.16, %if.then.8, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @sgiGetRow(%struct.sgi_t* %sgip, i16* %row, i32 %y, i32 %z) #0 {
entry:
  %retval = alloca i32, align 4
  %sgip.addr = alloca %struct.sgi_t*, align 8
  %row.addr = alloca i16*, align 8
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %offset = alloca i64, align 8
  store %struct.sgi_t* %sgip, %struct.sgi_t** %sgip.addr, align 8
  store i16* %row, i16** %row.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %cmp = icmp eq %struct.sgi_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16*, i16** %row.addr, align 8
  %cmp1 = icmp eq i16* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %y.addr, align 4
  %cmp3 = icmp slt i32 %2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %y.addr, align 4
  %4 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %ysize = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %4, i32 0, i32 6
  %5 = load i16, i16* %ysize, align 2
  %conv = zext i16 %5 to i32
  %cmp5 = icmp sge i32 %3, %conv
  br i1 %cmp5, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %6 = load i32, i32* %z.addr, align 4
  %cmp8 = icmp slt i32 %6, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %7 = load i32, i32* %z.addr, align 4
  %8 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %zsize = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %8, i32 0, i32 7
  %9 = load i16, i16* %zsize, align 2
  %conv11 = zext i16 %9 to i32
  %cmp12 = icmp sge i32 %7, %conv11
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.10
  %10 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %comp = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %10, i32 0, i32 3
  %11 = load i32, i32* %comp, align 4
  switch i32 %11, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %if.end
  %12 = load i32, i32* %y.addr, align 4
  %13 = load i32, i32* %z.addr, align 4
  %14 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %ysize14 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %14, i32 0, i32 6
  %15 = load i16, i16* %ysize14, align 2
  %conv15 = zext i16 %15 to i32
  %mul = mul nsw i32 %13, %conv15
  %add = add nsw i32 %12, %mul
  %16 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %16, i32 0, i32 5
  %17 = load i16, i16* %xsize, align 2
  %conv16 = zext i16 %17 to i32
  %mul17 = mul nsw i32 %add, %conv16
  %18 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %bpp = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %18, i32 0, i32 2
  %19 = load i32, i32* %bpp, align 4
  %mul18 = mul nsw i32 %mul17, %19
  %add19 = add nsw i32 512, %mul18
  %conv20 = sext i32 %add19 to i64
  store i64 %conv20, i64* %offset, align 8
  %20 = load i64, i64* %offset, align 8
  %21 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %21, i32 0, i32 0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %22)
  %cmp21 = icmp ne i64 %20, %call
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %sw.bb
  %23 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file24 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %23, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file24, align 8
  %25 = load i64, i64* %offset, align 8
  %call25 = call i32 @fseek(%struct._IO_FILE* %24, i64 %25, i32 0)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %sw.bb
  %26 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %bpp27 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %26, i32 0, i32 2
  %27 = load i32, i32* %bpp27, align 4
  %cmp28 = icmp eq i32 %27, 1
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.26
  %28 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize31 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %28, i32 0, i32 5
  %29 = load i16, i16* %xsize31, align 2
  %conv32 = zext i16 %29 to i32
  store i32 %conv32, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.30
  %30 = load i32, i32* %x, align 4
  %cmp33 = icmp sgt i32 %30, 0
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file35 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %31, i32 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %file35, align 8
  %call36 = call i32 @_IO_getc(%struct._IO_FILE* %32)
  %conv37 = trunc i32 %call36 to i16
  %33 = load i16*, i16** %row.addr, align 8
  store i16 %conv37, i16* %33, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %x, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %x, align 4
  %35 = load i16*, i16** %row.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %35, i32 1
  store i16* %incdec.ptr, i16** %row.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.50

if.else:                                          ; preds = %if.end.26
  %36 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize38 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %36, i32 0, i32 5
  %37 = load i16, i16* %xsize38, align 2
  %conv39 = zext i16 %37 to i32
  store i32 %conv39, i32* %x, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.46, %if.else
  %38 = load i32, i32* %x, align 4
  %cmp41 = icmp sgt i32 %38, 0
  br i1 %cmp41, label %for.body.43, label %for.end.49

for.body.43:                                      ; preds = %for.cond.40
  %39 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %call44 = call i32 @getshort(%struct.sgi_t* %39)
  %conv45 = trunc i32 %call44 to i16
  %40 = load i16*, i16** %row.addr, align 8
  store i16 %conv45, i16* %40, align 2
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.43
  %41 = load i32, i32* %x, align 4
  %dec47 = add nsw i32 %41, -1
  store i32 %dec47, i32* %x, align 4
  %42 = load i16*, i16** %row.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i16, i16* %42, i32 1
  store i16* %incdec.ptr48, i16** %row.addr, align 8
  br label %for.cond.40

for.end.49:                                       ; preds = %for.cond.40
  br label %if.end.50

if.end.50:                                        ; preds = %for.end.49, %for.end
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end
  %43 = load i32, i32* %y.addr, align 4
  %idxprom = sext i32 %43 to i64
  %44 = load i32, i32* %z.addr, align 4
  %idxprom52 = sext i32 %44 to i64
  %45 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %table = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %45, i32 0, i32 10
  %46 = load i64**, i64*** %table, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %46, i64 %idxprom52
  %47 = load i64*, i64** %arrayidx, align 8
  %arrayidx53 = getelementptr inbounds i64, i64* %47, i64 %idxprom
  %48 = load i64, i64* %arrayidx53, align 8
  store i64 %48, i64* %offset, align 8
  %49 = load i64, i64* %offset, align 8
  %50 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file54 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %50, i32 0, i32 0
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %file54, align 8
  %call55 = call i64 @ftell(%struct._IO_FILE* %51)
  %cmp56 = icmp ne i64 %49, %call55
  br i1 %cmp56, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %sw.bb.51
  %52 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file59 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %52, i32 0, i32 0
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %file59, align 8
  %54 = load i64, i64* %offset, align 8
  %call60 = call i32 @fseek(%struct._IO_FILE* %53, i64 %54, i32 0)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %sw.bb.51
  %55 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %bpp62 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %55, i32 0, i32 2
  %56 = load i32, i32* %bpp62, align 4
  %cmp63 = icmp eq i32 %56, 1
  br i1 %cmp63, label %if.then.65, label %if.else.69

if.then.65:                                       ; preds = %if.end.61
  %57 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %58 = load i16*, i16** %row.addr, align 8
  %59 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize66 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %59, i32 0, i32 5
  %60 = load i16, i16* %xsize66, align 2
  %conv67 = zext i16 %60 to i32
  %call68 = call i32 @read_rle8(%struct.sgi_t* %57, i16* %58, i32 %conv67)
  store i32 %call68, i32* %retval
  br label %return

if.else.69:                                       ; preds = %if.end.61
  %61 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %62 = load i16*, i16** %row.addr, align 8
  %63 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize70 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %63, i32 0, i32 5
  %64 = load i16, i16* %xsize70, align 2
  %conv71 = zext i16 %64 to i32
  %call72 = call i32 @read_rle16(%struct.sgi_t* %61, i16* %62, i32 %conv71)
  store i32 %call72, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end, %if.end.50
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.else.69, %if.then.65, %if.then
  %65 = load i32, i32* %retval
  ret i32 %65
}

declare i64 @ftell(%struct._IO_FILE*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @getshort(%struct.sgi_t* %sgip) #0 {
entry:
  %retval = alloca i32, align 4
  %sgip.addr = alloca %struct.sgi_t*, align 8
  %b = alloca [2 x i8], align 1
  store %struct.sgi_t* %sgip, %struct.sgi_t** %sgip.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %b, i32 0, i32 0
  %0 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 2, i64 1, %struct._IO_FILE* %1)
  %2 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %swapBytes = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %2, i32 0, i32 4
  %3 = load i32, i32* %swapBytes, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %b, i32 0, i64 1
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %shl = shl i32 %conv, 8
  %arrayidx1 = getelementptr inbounds [2 x i8], [2 x i8]* %b, i32 0, i64 0
  %5 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %arrayidx3 = getelementptr inbounds [2 x i8], [2 x i8]* %b, i32 0, i64 0
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %shl5 = shl i32 %conv4, 8
  %arrayidx6 = getelementptr inbounds [2 x i8], [2 x i8]* %b, i32 0, i64 1
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %or8 = or i32 %shl5, %conv7
  store i32 %or8, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @read_rle8(%struct.sgi_t* %sgip, i16* %row, i32 %xsize) #0 {
entry:
  %retval = alloca i32, align 4
  %sgip.addr = alloca %struct.sgi_t*, align 8
  %row.addr = alloca i16*, align 8
  %xsize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ch = alloca i32, align 4
  %count = alloca i32, align 4
  %length = alloca i32, align 4
  store %struct.sgi_t* %sgip, %struct.sgi_t** %sgip.addr, align 8
  store i16* %row, i16** %row.addr, align 8
  store i32 %xsize, i32* %xsize.addr, align 4
  store i32 0, i32* %length, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %entry
  %0 = load i32, i32* %xsize.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call, i32* %ch, align 4
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load i32, i32* %length, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %length, align 4
  %4 = load i32, i32* %ch, align 4
  %and = and i32 %4, 127
  %5 = load i32, i32* %xsize.addr, align 4
  %cmp2 = icmp slt i32 %and, %5
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i32, i32* %ch, align 4
  %and3 = and i32 %6, 127
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load i32, i32* %xsize.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and3, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %count, align 4
  %8 = load i32, i32* %count, align 4
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %cond.end
  br label %while.end

if.end.6:                                         ; preds = %cond.end
  %9 = load i32, i32* %ch, align 4
  %and7 = and i32 %9, 128
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %count, align 4
  %cmp9 = icmp slt i32 %10, %11
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file10 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %12, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file10, align 8
  %call11 = call i32 @_IO_getc(%struct._IO_FILE* %13)
  %conv = trunc i32 %call11 to i16
  %14 = load i16*, i16** %row.addr, align 8
  store i16 %conv, i16* %14, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %15, 1
  store i32 %inc12, i32* %i, align 4
  %16 = load i16*, i16** %row.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %incdec.ptr, i16** %row.addr, align 8
  %17 = load i32, i32* %xsize.addr, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %xsize.addr, align 4
  %18 = load i32, i32* %length, align 4
  %inc13 = add nsw i32 %18, 1
  store i32 %inc13, i32* %length, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.27

if.else:                                          ; preds = %if.end.6
  %19 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file14 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %19, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file14, align 8
  %call15 = call i32 @_IO_getc(%struct._IO_FILE* %20)
  store i32 %call15, i32* %ch, align 4
  %21 = load i32, i32* %length, align 4
  %inc16 = add nsw i32 %21, 1
  store i32 %inc16, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.22, %if.else
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %count, align 4
  %cmp18 = icmp slt i32 %22, %23
  br i1 %cmp18, label %for.body.20, label %for.end.26

for.body.20:                                      ; preds = %for.cond.17
  %24 = load i32, i32* %ch, align 4
  %conv21 = trunc i32 %24 to i16
  %25 = load i16*, i16** %row.addr, align 8
  store i16 %conv21, i16* %25, align 2
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.20
  %26 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %26, 1
  store i32 %inc23, i32* %i, align 4
  %27 = load i16*, i16** %row.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i16, i16* %27, i32 1
  store i16* %incdec.ptr24, i16** %row.addr, align 8
  %28 = load i32, i32* %xsize.addr, align 4
  %dec25 = add nsw i32 %28, -1
  store i32 %dec25, i32* %xsize.addr, align 4
  br label %for.cond.17

for.end.26:                                       ; preds = %for.cond.17
  br label %if.end.27

if.end.27:                                        ; preds = %for.end.26, %for.end
  br label %while.cond

while.end:                                        ; preds = %if.then.5, %while.cond
  %29 = load i32, i32* %xsize.addr, align 4
  %cmp28 = icmp sgt i32 %29, 0
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %while.end
  br label %cond.end.32

cond.false.31:                                    ; preds = %while.end
  %30 = load i32, i32* %length, align 4
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi i32 [ -1, %cond.true.30 ], [ %30, %cond.false.31 ]
  store i32 %cond33, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.32, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @read_rle16(%struct.sgi_t* %sgip, i16* %row, i32 %xsize) #0 {
entry:
  %retval = alloca i32, align 4
  %sgip.addr = alloca %struct.sgi_t*, align 8
  %row.addr = alloca i16*, align 8
  %xsize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ch = alloca i32, align 4
  %count = alloca i32, align 4
  %length = alloca i32, align 4
  store %struct.sgi_t* %sgip, %struct.sgi_t** %sgip.addr, align 8
  store i16* %row, i16** %row.addr, align 8
  store i32 %xsize, i32* %xsize.addr, align 4
  store i32 0, i32* %length, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %entry
  %0 = load i32, i32* %xsize.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %call = call i32 @getshort(%struct.sgi_t* %1)
  store i32 %call, i32* %ch, align 4
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %2 = load i32, i32* %length, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %length, align 4
  %3 = load i32, i32* %ch, align 4
  %and = and i32 %3, 127
  %4 = load i32, i32* %xsize.addr, align 4
  %cmp2 = icmp slt i32 %and, %4
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load i32, i32* %ch, align 4
  %and3 = and i32 %5, 127
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load i32, i32* %xsize.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and3, %cond.true ], [ %6, %cond.false ]
  store i32 %cond, i32* %count, align 4
  %7 = load i32, i32* %count, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %cond.end
  br label %while.end

if.end.6:                                         ; preds = %cond.end
  %8 = load i32, i32* %ch, align 4
  %and7 = and i32 %8, 128
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %count, align 4
  %cmp9 = icmp slt i32 %9, %10
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %call10 = call i32 @getshort(%struct.sgi_t* %11)
  %conv = trunc i32 %call10 to i16
  %12 = load i16*, i16** %row.addr, align 8
  store i16 %conv, i16* %12, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, i32* %i, align 4
  %14 = load i16*, i16** %row.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %14, i32 1
  store i16* %incdec.ptr, i16** %row.addr, align 8
  %15 = load i32, i32* %xsize.addr, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %xsize.addr, align 4
  %16 = load i32, i32* %length, align 4
  %inc12 = add nsw i32 %16, 1
  store i32 %inc12, i32* %length, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.25

if.else:                                          ; preds = %if.end.6
  %17 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %call13 = call i32 @getshort(%struct.sgi_t* %17)
  store i32 %call13, i32* %ch, align 4
  %18 = load i32, i32* %length, align 4
  %inc14 = add nsw i32 %18, 1
  store i32 %inc14, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.20, %if.else
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %count, align 4
  %cmp16 = icmp slt i32 %19, %20
  br i1 %cmp16, label %for.body.18, label %for.end.24

for.body.18:                                      ; preds = %for.cond.15
  %21 = load i32, i32* %ch, align 4
  %conv19 = trunc i32 %21 to i16
  %22 = load i16*, i16** %row.addr, align 8
  store i16 %conv19, i16* %22, align 2
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.18
  %23 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %23, 1
  store i32 %inc21, i32* %i, align 4
  %24 = load i16*, i16** %row.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i16, i16* %24, i32 1
  store i16* %incdec.ptr22, i16** %row.addr, align 8
  %25 = load i32, i32* %xsize.addr, align 4
  %dec23 = add nsw i32 %25, -1
  store i32 %dec23, i32* %xsize.addr, align 4
  br label %for.cond.15

for.end.24:                                       ; preds = %for.cond.15
  br label %if.end.25

if.end.25:                                        ; preds = %for.end.24, %for.end
  br label %while.cond

while.end:                                        ; preds = %if.then.5, %while.cond
  %26 = load i32, i32* %xsize.addr, align 4
  %cmp26 = icmp sgt i32 %26, 0
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %while.end
  br label %cond.end.30

cond.false.29:                                    ; preds = %while.end
  %27 = load i32, i32* %length, align 4
  %mul = mul nsw i32 %27, 2
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.28
  %cond31 = phi i32 [ -1, %cond.true.28 ], [ %mul, %cond.false.29 ]
  store i32 %cond31, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.30, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define %struct.sgi_t* @sgiOpen(i8* %filename, i32 %mode, i32 %comp, i32 %bpp, i32 %xsize, i32 %ysize, i32 %zsize) #0 {
entry:
  %retval = alloca %struct.sgi_t*, align 8
  %filename.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %comp.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %xsize.addr = alloca i32, align 4
  %ysize.addr = alloca i32, align 4
  %zsize.addr = alloca i32, align 4
  %sgip = alloca %struct.sgi_t*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %comp, i32* %comp.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %xsize, i32* %xsize.addr, align 4
  store i32 %ysize, i32* %ysize.addr, align 4
  store i32 %zsize, i32* %zsize.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %file, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct.sgi_t* null, %struct.sgi_t** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %5 = load i32, i32* %mode.addr, align 4
  %6 = load i32, i32* %comp.addr, align 4
  %7 = load i32, i32* %bpp.addr, align 4
  %8 = load i32, i32* %xsize.addr, align 4
  %9 = load i32, i32* %ysize.addr, align 4
  %10 = load i32, i32* %zsize.addr, align 4
  %call5 = call %struct.sgi_t* @sgiOpenFile(%struct._IO_FILE* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10)
  store %struct.sgi_t* %call5, %struct.sgi_t** %sgip, align 8
  %cmp6 = icmp eq %struct.sgi_t* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.4
  %12 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  store %struct.sgi_t* %12, %struct.sgi_t** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.3
  %13 = load %struct.sgi_t*, %struct.sgi_t** %retval
  ret %struct.sgi_t* %13
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.sgi_t* @sgiOpenFile(%struct._IO_FILE* %file, i32 %mode, i32 %comp, i32 %bpp, i32 %xsize, i32 %ysize, i32 %zsize) #0 {
entry:
  %retval = alloca %struct.sgi_t*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %mode.addr = alloca i32, align 4
  %comp.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %xsize.addr = alloca i32, align 4
  %ysize.addr = alloca i32, align 4
  %zsize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %name = alloca [80 x i8], align 16
  %magic = alloca i16, align 2
  %sgip = alloca %struct.sgi_t*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %comp, i32* %comp.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %xsize, i32* %xsize.addr, align 4
  store i32 %ysize, i32* %ysize.addr, align 4
  store i32 %zsize, i32* %zsize.addr, align 4
  %call = call noalias i8* @calloc(i64 88, i64 1) #3
  %0 = bitcast i8* %call to %struct.sgi_t*
  store %struct.sgi_t* %0, %struct.sgi_t** %sgip, align 8
  %cmp = icmp eq %struct.sgi_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.sgi_t* null, %struct.sgi_t** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %2 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %file1 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %2, i32 0, i32 0
  store %struct._IO_FILE* %1, %struct._IO_FILE** %file1, align 8
  %3 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %swapBytes = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %3, i32 0, i32 4
  store i32 0, i32* %swapBytes, align 4
  %4 = load i32, i32* %mode.addr, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.88
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %mode2 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %5, i32 0, i32 1
  store i32 0, i32* %mode2, align 4
  %6 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call3 = call i32 @getshort(%struct.sgi_t* %6)
  %conv = trunc i32 %call3 to i16
  store i16 %conv, i16* %magic, align 2
  %7 = load i16, i16* %magic, align 2
  %conv4 = sext i16 %7 to i32
  %cmp5 = icmp ne i32 %conv4, 474
  br i1 %cmp5, label %if.then.7, label %if.end.18

if.then.7:                                        ; preds = %sw.bb
  %8 = load i16, i16* %magic, align 2
  %conv8 = sext i16 %8 to i32
  %shr = ashr i32 %conv8, 8
  %and = and i32 %shr, 255
  %9 = load i16, i16* %magic, align 2
  %conv9 = sext i16 %9 to i32
  %shl = shl i32 %conv9, 8
  %and10 = and i32 %shl, 65280
  %or = or i32 %and, %and10
  %conv11 = trunc i32 %or to i16
  store i16 %conv11, i16* %magic, align 2
  %10 = load i16, i16* %magic, align 2
  %conv12 = sext i16 %10 to i32
  %cmp13 = icmp ne i32 %conv12, 474
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.7
  %11 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %12 = bitcast %struct.sgi_t* %11 to i8*
  call void @free(i8* %12) #3
  store %struct.sgi_t* null, %struct.sgi_t** %retval
  br label %return

if.else:                                          ; preds = %if.then.7
  %13 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %swapBytes16 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %13, i32 0, i32 4
  store i32 1, i32* %swapBytes16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %sw.bb
  %14 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %file19 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %14, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file19, align 8
  %call20 = call i32 @_IO_getc(%struct._IO_FILE* %15)
  %16 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %comp21 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %16, i32 0, i32 3
  store i32 %call20, i32* %comp21, align 4
  %17 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %file22 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %17, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file22, align 8
  %call23 = call i32 @_IO_getc(%struct._IO_FILE* %18)
  %19 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %bpp24 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %19, i32 0, i32 2
  store i32 %call23, i32* %bpp24, align 4
  %20 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call25 = call i32 @getshort(%struct.sgi_t* %20)
  %21 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call26 = call i32 @getshort(%struct.sgi_t* %21)
  %conv27 = trunc i32 %call26 to i16
  %22 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %xsize28 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %22, i32 0, i32 5
  store i16 %conv27, i16* %xsize28, align 2
  %23 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call29 = call i32 @getshort(%struct.sgi_t* %23)
  %conv30 = trunc i32 %call29 to i16
  %24 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize31 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %24, i32 0, i32 6
  store i16 %conv30, i16* %ysize31, align 2
  %25 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call32 = call i32 @getshort(%struct.sgi_t* %25)
  %conv33 = trunc i32 %call32 to i16
  %26 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize34 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %26, i32 0, i32 7
  store i16 %conv33, i16* %zsize34, align 2
  %27 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call35 = call i32 @getlong(%struct.sgi_t* %27)
  %28 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call36 = call i32 @getlong(%struct.sgi_t* %28)
  %29 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %comp37 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %29, i32 0, i32 3
  %30 = load i32, i32* %comp37, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then.38, label %if.end.87

if.then.38:                                       ; preds = %if.end.18
  %31 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %file39 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %31, i32 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %file39, align 8
  %call40 = call i32 @fseek(%struct._IO_FILE* %32, i64 512, i32 0)
  %33 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize41 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %33, i32 0, i32 7
  %34 = load i16, i16* %zsize41, align 2
  %conv42 = zext i16 %34 to i64
  %call43 = call noalias i8* @calloc(i64 %conv42, i64 8) #3
  %35 = bitcast i8* %call43 to i64**
  %36 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %table = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %36, i32 0, i32 10
  store i64** %35, i64*** %table, align 8
  %37 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize44 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %37, i32 0, i32 6
  %38 = load i16, i16* %ysize44, align 2
  %conv45 = zext i16 %38 to i32
  %39 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize46 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %39, i32 0, i32 7
  %40 = load i16, i16* %zsize46, align 2
  %conv47 = zext i16 %40 to i32
  %mul = mul nsw i32 %conv45, %conv47
  %conv48 = sext i32 %mul to i64
  %call49 = call noalias i8* @calloc(i64 %conv48, i64 8) #3
  %41 = bitcast i8* %call49 to i64*
  %42 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %table50 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %42, i32 0, i32 10
  %43 = load i64**, i64*** %table50, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %43, i64 0
  store i64* %41, i64** %arrayidx, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.38
  %44 = load i32, i32* %i, align 4
  %45 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize51 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %45, i32 0, i32 7
  %46 = load i16, i16* %zsize51, align 2
  %conv52 = zext i16 %46 to i32
  %cmp53 = icmp slt i32 %44, %conv52
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %table55 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %47, i32 0, i32 10
  %48 = load i64**, i64*** %table55, align 8
  %arrayidx56 = getelementptr inbounds i64*, i64** %48, i64 0
  %49 = load i64*, i64** %arrayidx56, align 8
  %50 = load i32, i32* %i, align 4
  %51 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize57 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %51, i32 0, i32 6
  %52 = load i16, i16* %ysize57, align 2
  %conv58 = zext i16 %52 to i32
  %mul59 = mul nsw i32 %50, %conv58
  %idx.ext = sext i32 %mul59 to i64
  %add.ptr = getelementptr inbounds i64, i64* %49, i64 %idx.ext
  %53 = load i32, i32* %i, align 4
  %idxprom = sext i32 %53 to i64
  %54 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %table60 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %54, i32 0, i32 10
  %55 = load i64**, i64*** %table60, align 8
  %arrayidx61 = getelementptr inbounds i64*, i64** %55, i64 %idxprom
  store i64* %add.ptr, i64** %arrayidx61, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.84, %for.end
  %57 = load i32, i32* %i, align 4
  %58 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize63 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %58, i32 0, i32 7
  %59 = load i16, i16* %zsize63, align 2
  %conv64 = zext i16 %59 to i32
  %cmp65 = icmp slt i32 %57, %conv64
  br i1 %cmp65, label %for.body.67, label %for.end.86

for.body.67:                                      ; preds = %for.cond.62
  store i32 0, i32* %j, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.81, %for.body.67
  %60 = load i32, i32* %j, align 4
  %61 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize69 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %61, i32 0, i32 6
  %62 = load i16, i16* %ysize69, align 2
  %conv70 = zext i16 %62 to i32
  %cmp71 = icmp slt i32 %60, %conv70
  br i1 %cmp71, label %for.body.73, label %for.end.83

for.body.73:                                      ; preds = %for.cond.68
  %63 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call74 = call i32 @getlong(%struct.sgi_t* %63)
  %conv75 = sext i32 %call74 to i64
  %64 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %64 to i64
  %65 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %65 to i64
  %66 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %table78 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %66, i32 0, i32 10
  %67 = load i64**, i64*** %table78, align 8
  %arrayidx79 = getelementptr inbounds i64*, i64** %67, i64 %idxprom77
  %68 = load i64*, i64** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i64, i64* %68, i64 %idxprom76
  store i64 %conv75, i64* %arrayidx80, align 8
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.73
  %69 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %69, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond.68

for.end.83:                                       ; preds = %for.cond.68
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end.83
  %70 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %70, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond.62

for.end.86:                                       ; preds = %for.cond.62
  br label %if.end.87

if.end.87:                                        ; preds = %for.end.86, %if.end.18
  br label %sw.epilog.257

sw.bb.88:                                         ; preds = %if.end
  %71 = load i32, i32* %xsize.addr, align 4
  %cmp89 = icmp slt i32 %71, 1
  br i1 %cmp89, label %if.then.108, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.88
  %72 = load i32, i32* %ysize.addr, align 4
  %cmp91 = icmp slt i32 %72, 1
  br i1 %cmp91, label %if.then.108, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %lor.lhs.false
  %73 = load i32, i32* %zsize.addr, align 4
  %cmp94 = icmp slt i32 %73, 1
  br i1 %cmp94, label %if.then.108, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false.93
  %74 = load i32, i32* %bpp.addr, align 4
  %cmp97 = icmp slt i32 %74, 1
  br i1 %cmp97, label %if.then.108, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %lor.lhs.false.96
  %75 = load i32, i32* %bpp.addr, align 4
  %cmp100 = icmp sgt i32 %75, 2
  br i1 %cmp100, label %if.then.108, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %lor.lhs.false.99
  %76 = load i32, i32* %comp.addr, align 4
  %cmp103 = icmp slt i32 %76, 0
  br i1 %cmp103, label %if.then.108, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %lor.lhs.false.102
  %77 = load i32, i32* %comp.addr, align 4
  %cmp106 = icmp sgt i32 %77, 2
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %lor.lhs.false.105, %lor.lhs.false.102, %lor.lhs.false.99, %lor.lhs.false.96, %lor.lhs.false.93, %lor.lhs.false, %sw.bb.88
  %78 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %79 = bitcast %struct.sgi_t* %78 to i8*
  call void @free(i8* %79) #3
  store %struct.sgi_t* null, %struct.sgi_t** %retval
  br label %return

if.end.109:                                       ; preds = %lor.lhs.false.105
  %80 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %mode110 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %80, i32 0, i32 1
  store i32 1, i32* %mode110, align 4
  %81 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call111 = call i32 @putshort(i16 zeroext 474, %struct.sgi_t* %81)
  %82 = load i32, i32* %comp.addr, align 4
  %83 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %comp112 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %83, i32 0, i32 3
  store i32 %82, i32* %comp112, align 4
  %cmp113 = icmp ne i32 %82, 0
  %conv114 = zext i1 %cmp113 to i32
  %84 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %file115 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %84, i32 0, i32 0
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %file115, align 8
  %call116 = call i32 @_IO_putc(i32 %conv114, %struct._IO_FILE* %85)
  %86 = load i32, i32* %bpp.addr, align 4
  %87 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %bpp117 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %87, i32 0, i32 2
  store i32 %86, i32* %bpp117, align 4
  %88 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %file118 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %88, i32 0, i32 0
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %file118, align 8
  %call119 = call i32 @_IO_putc(i32 %86, %struct._IO_FILE* %89)
  %90 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call120 = call i32 @putshort(i16 zeroext 3, %struct.sgi_t* %90)
  %91 = load i32, i32* %xsize.addr, align 4
  %conv121 = trunc i32 %91 to i16
  %92 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %xsize122 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %92, i32 0, i32 5
  store i16 %conv121, i16* %xsize122, align 2
  %93 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call123 = call i32 @putshort(i16 zeroext %conv121, %struct.sgi_t* %93)
  %94 = load i32, i32* %ysize.addr, align 4
  %conv124 = trunc i32 %94 to i16
  %95 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize125 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %95, i32 0, i32 6
  store i16 %conv124, i16* %ysize125, align 2
  %96 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call126 = call i32 @putshort(i16 zeroext %conv124, %struct.sgi_t* %96)
  %97 = load i32, i32* %zsize.addr, align 4
  %conv127 = trunc i32 %97 to i16
  %98 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize128 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %98, i32 0, i32 7
  store i16 %conv127, i16* %zsize128, align 2
  %99 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call129 = call i32 @putshort(i16 zeroext %conv127, %struct.sgi_t* %99)
  %100 = load i32, i32* %bpp.addr, align 4
  %cmp130 = icmp eq i32 %100, 1
  br i1 %cmp130, label %if.then.132, label %if.else.135

if.then.132:                                      ; preds = %if.end.109
  %101 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call133 = call i32 @putlong(i64 0, %struct.sgi_t* %101)
  %102 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call134 = call i32 @putlong(i64 255, %struct.sgi_t* %102)
  br label %if.end.138

if.else.135:                                      ; preds = %if.end.109
  %103 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call136 = call i32 @putlong(i64 -32768, %struct.sgi_t* %103)
  %104 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call137 = call i32 @putlong(i64 32767, %struct.sgi_t* %104)
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.135, %if.then.132
  %105 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call139 = call i32 @putlong(i64 0, %struct.sgi_t* %105)
  %106 = bitcast [80 x i8]* %name to i8*
  call void @llvm.memset.p0i8.i64(i8* %106, i8 0, i64 80, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %name, i32 0, i32 0
  %107 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %file140 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %107, i32 0, i32 0
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %file140, align 8
  %call141 = call i64 @fwrite(i8* %arraydecay, i64 80, i64 1, %struct._IO_FILE* %108)
  store i32 0, i32* %i, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.147, %if.end.138
  %109 = load i32, i32* %i, align 4
  %cmp143 = icmp slt i32 %109, 102
  br i1 %cmp143, label %for.body.145, label %for.end.149

for.body.145:                                     ; preds = %for.cond.142
  %110 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call146 = call i32 @putlong(i64 0, %struct.sgi_t* %110)
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.body.145
  %111 = load i32, i32* %i, align 4
  %inc148 = add nsw i32 %111, 1
  store i32 %inc148, i32* %i, align 4
  br label %for.cond.142

for.end.149:                                      ; preds = %for.cond.142
  %112 = load i32, i32* %comp.addr, align 4
  switch i32 %112, label %sw.epilog [
    i32 0, label %sw.bb.150
    i32 2, label %sw.bb.176
    i32 1, label %sw.bb.179
  ]

sw.bb.150:                                        ; preds = %for.end.149
  %113 = load i32, i32* %bpp.addr, align 4
  %cmp151 = icmp eq i32 %113, 1
  br i1 %cmp151, label %if.then.153, label %if.else.164

if.then.153:                                      ; preds = %sw.bb.150
  %114 = load i32, i32* %xsize.addr, align 4
  %115 = load i32, i32* %ysize.addr, align 4
  %mul154 = mul nsw i32 %114, %115
  %116 = load i32, i32* %zsize.addr, align 4
  %mul155 = mul nsw i32 %mul154, %116
  store i32 %mul155, i32* %i, align 4
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.162, %if.then.153
  %117 = load i32, i32* %i, align 4
  %cmp157 = icmp sgt i32 %117, 0
  br i1 %cmp157, label %for.body.159, label %for.end.163

for.body.159:                                     ; preds = %for.cond.156
  %118 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %file160 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %118, i32 0, i32 0
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %file160, align 8
  %call161 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %119)
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.159
  %120 = load i32, i32* %i, align 4
  %dec = add nsw i32 %120, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.156

for.end.163:                                      ; preds = %for.cond.156
  br label %if.end.175

if.else.164:                                      ; preds = %sw.bb.150
  %121 = load i32, i32* %xsize.addr, align 4
  %122 = load i32, i32* %ysize.addr, align 4
  %mul165 = mul nsw i32 %121, %122
  %123 = load i32, i32* %zsize.addr, align 4
  %mul166 = mul nsw i32 %mul165, %123
  store i32 %mul166, i32* %i, align 4
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.172, %if.else.164
  %124 = load i32, i32* %i, align 4
  %cmp168 = icmp sgt i32 %124, 0
  br i1 %cmp168, label %for.body.170, label %for.end.174

for.body.170:                                     ; preds = %for.cond.167
  %125 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call171 = call i32 @putshort(i16 zeroext 0, %struct.sgi_t* %125)
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.body.170
  %126 = load i32, i32* %i, align 4
  %dec173 = add nsw i32 %126, -1
  store i32 %dec173, i32* %i, align 4
  br label %for.cond.167

for.end.174:                                      ; preds = %for.cond.167
  br label %if.end.175

if.end.175:                                       ; preds = %for.end.174, %for.end.163
  br label %sw.epilog

sw.bb.176:                                        ; preds = %for.end.149
  %127 = load i32, i32* %xsize.addr, align 4
  %conv177 = sext i32 %127 to i64
  %call178 = call noalias i8* @calloc(i64 %conv177, i64 2) #3
  %128 = bitcast i8* %call178 to i16*
  %129 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %arle_row = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %129, i32 0, i32 12
  store i16* %128, i16** %arle_row, align 8
  %130 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %arle_offset = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %130, i32 0, i32 13
  store i64 0, i64* %arle_offset, align 8
  br label %sw.bb.179

sw.bb.179:                                        ; preds = %for.end.149, %sw.bb.176
  %131 = load i32, i32* %ysize.addr, align 4
  %mul180 = mul nsw i32 2, %131
  %132 = load i32, i32* %zsize.addr, align 4
  %mul181 = mul nsw i32 %mul180, %132
  store i32 %mul181, i32* %i, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.187, %sw.bb.179
  %133 = load i32, i32* %i, align 4
  %cmp183 = icmp sgt i32 %133, 0
  br i1 %cmp183, label %for.body.185, label %for.end.189

for.body.185:                                     ; preds = %for.cond.182
  %134 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %call186 = call i32 @putlong(i64 0, %struct.sgi_t* %134)
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.body.185
  %135 = load i32, i32* %i, align 4
  %dec188 = add nsw i32 %135, -1
  store i32 %dec188, i32* %i, align 4
  br label %for.cond.182

for.end.189:                                      ; preds = %for.cond.182
  %136 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %file190 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %136, i32 0, i32 0
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %file190, align 8
  %call191 = call i64 @ftell(%struct._IO_FILE* %137)
  %138 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %firstrow = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %138, i32 0, i32 8
  store i64 %call191, i64* %firstrow, align 8
  %139 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %file192 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %139, i32 0, i32 0
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %file192, align 8
  %call193 = call i64 @ftell(%struct._IO_FILE* %140)
  %141 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %nextrow = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %141, i32 0, i32 9
  store i64 %call193, i64* %nextrow, align 8
  %142 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize194 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %142, i32 0, i32 7
  %143 = load i16, i16* %zsize194, align 2
  %conv195 = zext i16 %143 to i64
  %call196 = call noalias i8* @calloc(i64 %conv195, i64 8) #3
  %144 = bitcast i8* %call196 to i64**
  %145 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %table197 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %145, i32 0, i32 10
  store i64** %144, i64*** %table197, align 8
  %146 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize198 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %146, i32 0, i32 6
  %147 = load i16, i16* %ysize198, align 2
  %conv199 = zext i16 %147 to i32
  %148 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize200 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %148, i32 0, i32 7
  %149 = load i16, i16* %zsize200, align 2
  %conv201 = zext i16 %149 to i32
  %mul202 = mul nsw i32 %conv199, %conv201
  %conv203 = sext i32 %mul202 to i64
  %call204 = call noalias i8* @calloc(i64 %conv203, i64 8) #3
  %150 = bitcast i8* %call204 to i64*
  %151 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %table205 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %151, i32 0, i32 10
  %152 = load i64**, i64*** %table205, align 8
  %arrayidx206 = getelementptr inbounds i64*, i64** %152, i64 0
  store i64* %150, i64** %arrayidx206, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.207

for.cond.207:                                     ; preds = %for.inc.223, %for.end.189
  %153 = load i32, i32* %i, align 4
  %154 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize208 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %154, i32 0, i32 7
  %155 = load i16, i16* %zsize208, align 2
  %conv209 = zext i16 %155 to i32
  %cmp210 = icmp slt i32 %153, %conv209
  br i1 %cmp210, label %for.body.212, label %for.end.225

for.body.212:                                     ; preds = %for.cond.207
  %156 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %table213 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %156, i32 0, i32 10
  %157 = load i64**, i64*** %table213, align 8
  %arrayidx214 = getelementptr inbounds i64*, i64** %157, i64 0
  %158 = load i64*, i64** %arrayidx214, align 8
  %159 = load i32, i32* %i, align 4
  %160 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize215 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %160, i32 0, i32 6
  %161 = load i16, i16* %ysize215, align 2
  %conv216 = zext i16 %161 to i32
  %mul217 = mul nsw i32 %159, %conv216
  %idx.ext218 = sext i32 %mul217 to i64
  %add.ptr219 = getelementptr inbounds i64, i64* %158, i64 %idx.ext218
  %162 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %162 to i64
  %163 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %table221 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %163, i32 0, i32 10
  %164 = load i64**, i64*** %table221, align 8
  %arrayidx222 = getelementptr inbounds i64*, i64** %164, i64 %idxprom220
  store i64* %add.ptr219, i64** %arrayidx222, align 8
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.body.212
  %165 = load i32, i32* %i, align 4
  %inc224 = add nsw i32 %165, 1
  store i32 %inc224, i32* %i, align 4
  br label %for.cond.207

for.end.225:                                      ; preds = %for.cond.207
  %166 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize226 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %166, i32 0, i32 7
  %167 = load i16, i16* %zsize226, align 2
  %conv227 = zext i16 %167 to i64
  %call228 = call noalias i8* @calloc(i64 %conv227, i64 8) #3
  %168 = bitcast i8* %call228 to i64**
  %169 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %length = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %169, i32 0, i32 11
  store i64** %168, i64*** %length, align 8
  %170 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize229 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %170, i32 0, i32 6
  %171 = load i16, i16* %ysize229, align 2
  %conv230 = zext i16 %171 to i32
  %172 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize231 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %172, i32 0, i32 7
  %173 = load i16, i16* %zsize231, align 2
  %conv232 = zext i16 %173 to i32
  %mul233 = mul nsw i32 %conv230, %conv232
  %conv234 = sext i32 %mul233 to i64
  %call235 = call noalias i8* @calloc(i64 %conv234, i64 8) #3
  %174 = bitcast i8* %call235 to i64*
  %175 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %length236 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %175, i32 0, i32 11
  %176 = load i64**, i64*** %length236, align 8
  %arrayidx237 = getelementptr inbounds i64*, i64** %176, i64 0
  store i64* %174, i64** %arrayidx237, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.254, %for.end.225
  %177 = load i32, i32* %i, align 4
  %178 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %zsize239 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %178, i32 0, i32 7
  %179 = load i16, i16* %zsize239, align 2
  %conv240 = zext i16 %179 to i32
  %cmp241 = icmp slt i32 %177, %conv240
  br i1 %cmp241, label %for.body.243, label %for.end.256

for.body.243:                                     ; preds = %for.cond.238
  %180 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %length244 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %180, i32 0, i32 11
  %181 = load i64**, i64*** %length244, align 8
  %arrayidx245 = getelementptr inbounds i64*, i64** %181, i64 0
  %182 = load i64*, i64** %arrayidx245, align 8
  %183 = load i32, i32* %i, align 4
  %184 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %ysize246 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %184, i32 0, i32 6
  %185 = load i16, i16* %ysize246, align 2
  %conv247 = zext i16 %185 to i32
  %mul248 = mul nsw i32 %183, %conv247
  %idx.ext249 = sext i32 %mul248 to i64
  %add.ptr250 = getelementptr inbounds i64, i64* %182, i64 %idx.ext249
  %186 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %186 to i64
  %187 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %length252 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %187, i32 0, i32 11
  %188 = load i64**, i64*** %length252, align 8
  %arrayidx253 = getelementptr inbounds i64*, i64** %188, i64 %idxprom251
  store i64* %add.ptr250, i64** %arrayidx253, align 8
  br label %for.inc.254

for.inc.254:                                      ; preds = %for.body.243
  %189 = load i32, i32* %i, align 4
  %inc255 = add nsw i32 %189, 1
  store i32 %inc255, i32* %i, align 4
  br label %for.cond.238

for.end.256:                                      ; preds = %for.cond.238
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.149, %for.end.256, %if.end.175
  br label %sw.epilog.257

sw.default:                                       ; preds = %if.end
  %190 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  %191 = bitcast %struct.sgi_t* %190 to i8*
  call void @free(i8* %191) #3
  store %struct.sgi_t* null, %struct.sgi_t** %retval
  br label %return

sw.epilog.257:                                    ; preds = %sw.epilog, %if.end.87
  %192 = load %struct.sgi_t*, %struct.sgi_t** %sgip, align 8
  store %struct.sgi_t* %192, %struct.sgi_t** %retval
  br label %return

return:                                           ; preds = %sw.epilog.257, %sw.default, %if.then.108, %if.then.15, %if.then
  %193 = load %struct.sgi_t*, %struct.sgi_t** %retval
  ret %struct.sgi_t* %193
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @getlong(%struct.sgi_t* %sgip) #0 {
entry:
  %retval = alloca i32, align 4
  %sgip.addr = alloca %struct.sgi_t*, align 8
  %b = alloca [4 x i8], align 1
  store %struct.sgi_t* %sgip, %struct.sgi_t** %sgip.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i32 0
  %0 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 4, i64 1, %struct._IO_FILE* %1)
  %2 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %swapBytes = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %2, i32 0, i32 4
  %3 = load i32, i32* %swapBytes, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 3
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %shl = shl i32 %conv, 24
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 2
  %5 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 1
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 0
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %or7, %conv9
  store i32 %or10, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 0
  %8 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  %shl13 = shl i32 %conv12, 24
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 1
  %9 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %9 to i32
  %shl16 = shl i32 %conv15, 16
  %or17 = or i32 %shl13, %shl16
  %arrayidx18 = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 2
  %10 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %10 to i32
  %shl20 = shl i32 %conv19, 8
  %or21 = or i32 %or17, %shl20
  %arrayidx22 = getelementptr inbounds [4 x i8], [4 x i8]* %b, i32 0, i64 3
  %11 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %11 to i32
  %or24 = or i32 %or21, %conv23
  store i32 %or24, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @putshort(i16 zeroext %n, %struct.sgi_t* %sgip) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i16, align 2
  %sgip.addr = alloca %struct.sgi_t*, align 8
  store i16 %n, i16* %n.addr, align 2
  store %struct.sgi_t* %sgip, %struct.sgi_t** %sgip.addr, align 8
  %0 = load i16, i16* %n.addr, align 2
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %1 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i32 @_IO_putc(i32 %shr, %struct._IO_FILE* %2)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i16, i16* %n.addr, align 2
  %conv2 = zext i16 %3 to i32
  %4 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file3 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file3, align 8
  %call4 = call i32 @_IO_putc(i32 %conv2, %struct._IO_FILE* %5)
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.7, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @sgiPutRow(%struct.sgi_t* %sgip, i16* %row, i32 %y, i32 %z) #0 {
entry:
  %retval = alloca i32, align 4
  %sgip.addr = alloca %struct.sgi_t*, align 8
  %row.addr = alloca i16*, align 8
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %offset = alloca i64, align 8
  store %struct.sgi_t* %sgip, %struct.sgi_t** %sgip.addr, align 8
  store i16* %row, i16** %row.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %cmp = icmp eq %struct.sgi_t* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16*, i16** %row.addr, align 8
  %cmp1 = icmp eq i16* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %y.addr, align 4
  %cmp3 = icmp slt i32 %2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %y.addr, align 4
  %4 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %ysize = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %4, i32 0, i32 6
  %5 = load i16, i16* %ysize, align 2
  %conv = zext i16 %5 to i32
  %cmp5 = icmp sge i32 %3, %conv
  br i1 %cmp5, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %6 = load i32, i32* %z.addr, align 4
  %cmp8 = icmp slt i32 %6, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %7 = load i32, i32* %z.addr, align 4
  %8 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %zsize = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %8, i32 0, i32 7
  %9 = load i16, i16* %zsize, align 2
  %conv11 = zext i16 %9 to i32
  %cmp12 = icmp sge i32 %7, %conv11
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.10
  %10 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %comp = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %10, i32 0, i32 3
  %11 = load i32, i32* %comp, align 4
  switch i32 %11, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.50
    i32 1, label %sw.bb.201
  ]

sw.bb:                                            ; preds = %if.end
  %12 = load i32, i32* %y.addr, align 4
  %13 = load i32, i32* %z.addr, align 4
  %14 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %ysize14 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %14, i32 0, i32 6
  %15 = load i16, i16* %ysize14, align 2
  %conv15 = zext i16 %15 to i32
  %mul = mul nsw i32 %13, %conv15
  %add = add nsw i32 %12, %mul
  %16 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %16, i32 0, i32 5
  %17 = load i16, i16* %xsize, align 2
  %conv16 = zext i16 %17 to i32
  %mul17 = mul nsw i32 %add, %conv16
  %18 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %bpp = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %18, i32 0, i32 2
  %19 = load i32, i32* %bpp, align 4
  %mul18 = mul nsw i32 %mul17, %19
  %add19 = add nsw i32 512, %mul18
  %conv20 = sext i32 %add19 to i64
  store i64 %conv20, i64* %offset, align 8
  %20 = load i64, i64* %offset, align 8
  %21 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %21, i32 0, i32 0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %22)
  %cmp21 = icmp ne i64 %20, %call
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %sw.bb
  %23 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file24 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %23, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file24, align 8
  %25 = load i64, i64* %offset, align 8
  %call25 = call i32 @fseek(%struct._IO_FILE* %24, i64 %25, i32 0)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %sw.bb
  %26 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %bpp27 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %26, i32 0, i32 2
  %27 = load i32, i32* %bpp27, align 4
  %cmp28 = icmp eq i32 %27, 1
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.26
  %28 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize31 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %28, i32 0, i32 5
  %29 = load i16, i16* %xsize31, align 2
  %conv32 = zext i16 %29 to i32
  store i32 %conv32, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.30
  %30 = load i32, i32* %x, align 4
  %cmp33 = icmp sgt i32 %30, 0
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i16*, i16** %row.addr, align 8
  %32 = load i16, i16* %31, align 2
  %conv35 = zext i16 %32 to i32
  %33 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file36 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %33, i32 0, i32 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %file36, align 8
  %call37 = call i32 @_IO_putc(i32 %conv35, %struct._IO_FILE* %34)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %x, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %x, align 4
  %36 = load i16*, i16** %row.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %36, i32 1
  store i16* %incdec.ptr, i16** %row.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.49

if.else:                                          ; preds = %if.end.26
  %37 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize38 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %37, i32 0, i32 5
  %38 = load i16, i16* %xsize38, align 2
  %conv39 = zext i16 %38 to i32
  store i32 %conv39, i32* %x, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.45, %if.else
  %39 = load i32, i32* %x, align 4
  %cmp41 = icmp sgt i32 %39, 0
  br i1 %cmp41, label %for.body.43, label %for.end.48

for.body.43:                                      ; preds = %for.cond.40
  %40 = load i16*, i16** %row.addr, align 8
  %41 = load i16, i16* %40, align 2
  %42 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %call44 = call i32 @putshort(i16 zeroext %41, %struct.sgi_t* %42)
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.43
  %43 = load i32, i32* %x, align 4
  %dec46 = add nsw i32 %43, -1
  store i32 %dec46, i32* %x, align 4
  %44 = load i16*, i16** %row.addr, align 8
  %incdec.ptr47 = getelementptr inbounds i16, i16* %44, i32 1
  store i16* %incdec.ptr47, i16** %row.addr, align 8
  br label %for.cond.40

for.end.48:                                       ; preds = %for.cond.40
  br label %if.end.49

if.end.49:                                        ; preds = %for.end.48, %for.end
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end
  %45 = load i32, i32* %y.addr, align 4
  %idxprom = sext i32 %45 to i64
  %46 = load i32, i32* %z.addr, align 4
  %idxprom51 = sext i32 %46 to i64
  %47 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %table = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %47, i32 0, i32 10
  %48 = load i64**, i64*** %table, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %48, i64 %idxprom51
  %49 = load i64*, i64** %arrayidx, align 8
  %arrayidx52 = getelementptr inbounds i64, i64* %49, i64 %idxprom
  %50 = load i64, i64* %arrayidx52, align 8
  %cmp53 = icmp ne i64 %50, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %sw.bb.50
  store i32 -1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %sw.bb.50
  %51 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_offset = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %51, i32 0, i32 13
  %52 = load i64, i64* %arle_offset, align 8
  %cmp57 = icmp sgt i64 %52, 0
  br i1 %cmp57, label %if.then.59, label %if.end.94

if.then.59:                                       ; preds = %if.end.56
  store i32 0, i32* %x, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.76, %if.then.59
  %53 = load i32, i32* %x, align 4
  %54 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize61 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %54, i32 0, i32 5
  %55 = load i16, i16* %xsize61, align 2
  %conv62 = zext i16 %55 to i32
  %cmp63 = icmp slt i32 %53, %conv62
  br i1 %cmp63, label %for.body.65, label %for.end.77

for.body.65:                                      ; preds = %for.cond.60
  %56 = load i32, i32* %x, align 4
  %idxprom66 = sext i32 %56 to i64
  %57 = load i16*, i16** %row.addr, align 8
  %arrayidx67 = getelementptr inbounds i16, i16* %57, i64 %idxprom66
  %58 = load i16, i16* %arrayidx67, align 2
  %conv68 = zext i16 %58 to i32
  %59 = load i32, i32* %x, align 4
  %idxprom69 = sext i32 %59 to i64
  %60 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_row = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %60, i32 0, i32 12
  %61 = load i16*, i16** %arle_row, align 8
  %arrayidx70 = getelementptr inbounds i16, i16* %61, i64 %idxprom69
  %62 = load i16, i16* %arrayidx70, align 2
  %conv71 = zext i16 %62 to i32
  %cmp72 = icmp ne i32 %conv68, %conv71
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %for.body.65
  br label %for.end.77

if.end.75:                                        ; preds = %for.body.65
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %63 = load i32, i32* %x, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.60

for.end.77:                                       ; preds = %if.then.74, %for.cond.60
  %64 = load i32, i32* %x, align 4
  %65 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize78 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %65, i32 0, i32 5
  %66 = load i16, i16* %xsize78, align 2
  %conv79 = zext i16 %66 to i32
  %cmp80 = icmp eq i32 %64, %conv79
  br i1 %cmp80, label %if.then.82, label %if.end.93

if.then.82:                                       ; preds = %for.end.77
  %67 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_offset83 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %67, i32 0, i32 13
  %68 = load i64, i64* %arle_offset83, align 8
  %69 = load i32, i32* %y.addr, align 4
  %idxprom84 = sext i32 %69 to i64
  %70 = load i32, i32* %z.addr, align 4
  %idxprom85 = sext i32 %70 to i64
  %71 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %table86 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %71, i32 0, i32 10
  %72 = load i64**, i64*** %table86, align 8
  %arrayidx87 = getelementptr inbounds i64*, i64** %72, i64 %idxprom85
  %73 = load i64*, i64** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds i64, i64* %73, i64 %idxprom84
  store i64 %68, i64* %arrayidx88, align 8
  %74 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_length = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %74, i32 0, i32 14
  %75 = load i64, i64* %arle_length, align 8
  %76 = load i32, i32* %y.addr, align 4
  %idxprom89 = sext i32 %76 to i64
  %77 = load i32, i32* %z.addr, align 4
  %idxprom90 = sext i32 %77 to i64
  %78 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %length = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %78, i32 0, i32 11
  %79 = load i64**, i64*** %length, align 8
  %arrayidx91 = getelementptr inbounds i64*, i64** %79, i64 %idxprom90
  %80 = load i64*, i64** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i64, i64* %80, i64 %idxprom89
  store i64 %75, i64* %arrayidx92, align 8
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %for.end.77
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.56
  %81 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file95 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %81, i32 0, i32 0
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %file95, align 8
  %83 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %firstrow = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %83, i32 0, i32 8
  %84 = load i64, i64* %firstrow, align 8
  %call96 = call i32 @fseek(%struct._IO_FILE* %82, i64 %84, i32 0)
  %85 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %bpp97 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %85, i32 0, i32 2
  %86 = load i32, i32* %bpp97, align 4
  %cmp98 = icmp eq i32 %86, 1
  br i1 %cmp98, label %if.then.100, label %if.else.138

if.then.100:                                      ; preds = %if.end.94
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.100
  %87 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file101 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %87, i32 0, i32 0
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %file101, align 8
  %call102 = call i64 @ftell(%struct._IO_FILE* %88)
  %89 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_offset103 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %89, i32 0, i32 13
  store i64 %call102, i64* %arle_offset103, align 8
  %90 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %91 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_row104 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %91, i32 0, i32 12
  %92 = load i16*, i16** %arle_row104, align 8
  %93 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize105 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %93, i32 0, i32 5
  %94 = load i16, i16* %xsize105, align 2
  %conv106 = zext i16 %94 to i32
  %call107 = call i32 @read_rle8(%struct.sgi_t* %90, i16* %92, i32 %conv106)
  %conv108 = sext i32 %call107 to i64
  %95 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_length109 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %95, i32 0, i32 14
  store i64 %conv108, i64* %arle_length109, align 8
  %cmp110 = icmp slt i64 %conv108, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %do.body
  store i32 0, i32* %x, align 4
  br label %do.end

if.end.113:                                       ; preds = %do.body
  store i32 0, i32* %x, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.131, %if.end.113
  %96 = load i32, i32* %x, align 4
  %97 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize115 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %97, i32 0, i32 5
  %98 = load i16, i16* %xsize115, align 2
  %conv116 = zext i16 %98 to i32
  %cmp117 = icmp slt i32 %96, %conv116
  br i1 %cmp117, label %for.body.119, label %for.end.133

for.body.119:                                     ; preds = %for.cond.114
  %99 = load i32, i32* %x, align 4
  %idxprom120 = sext i32 %99 to i64
  %100 = load i16*, i16** %row.addr, align 8
  %arrayidx121 = getelementptr inbounds i16, i16* %100, i64 %idxprom120
  %101 = load i16, i16* %arrayidx121, align 2
  %conv122 = zext i16 %101 to i32
  %102 = load i32, i32* %x, align 4
  %idxprom123 = sext i32 %102 to i64
  %103 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_row124 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %103, i32 0, i32 12
  %104 = load i16*, i16** %arle_row124, align 8
  %arrayidx125 = getelementptr inbounds i16, i16* %104, i64 %idxprom123
  %105 = load i16, i16* %arrayidx125, align 2
  %conv126 = zext i16 %105 to i32
  %cmp127 = icmp ne i32 %conv122, %conv126
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %for.body.119
  br label %for.end.133

if.end.130:                                       ; preds = %for.body.119
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130
  %106 = load i32, i32* %x, align 4
  %inc132 = add nsw i32 %106, 1
  store i32 %inc132, i32* %x, align 4
  br label %for.cond.114

for.end.133:                                      ; preds = %if.then.129, %for.cond.114
  br label %do.cond

do.cond:                                          ; preds = %for.end.133
  %107 = load i32, i32* %x, align 4
  %108 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize134 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %108, i32 0, i32 5
  %109 = load i16, i16* %xsize134, align 2
  %conv135 = zext i16 %109 to i32
  %cmp136 = icmp slt i32 %107, %conv135
  br i1 %cmp136, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.112
  br label %if.end.179

if.else.138:                                      ; preds = %if.end.94
  br label %do.body.139

do.body.139:                                      ; preds = %do.cond.173, %if.else.138
  %110 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file140 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %110, i32 0, i32 0
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %file140, align 8
  %call141 = call i64 @ftell(%struct._IO_FILE* %111)
  %112 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_offset142 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %112, i32 0, i32 13
  store i64 %call141, i64* %arle_offset142, align 8
  %113 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %114 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_row143 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %114, i32 0, i32 12
  %115 = load i16*, i16** %arle_row143, align 8
  %116 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize144 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %116, i32 0, i32 5
  %117 = load i16, i16* %xsize144, align 2
  %conv145 = zext i16 %117 to i32
  %call146 = call i32 @read_rle16(%struct.sgi_t* %113, i16* %115, i32 %conv145)
  %conv147 = sext i32 %call146 to i64
  %118 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_length148 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %118, i32 0, i32 14
  store i64 %conv147, i64* %arle_length148, align 8
  %cmp149 = icmp slt i64 %conv147, 0
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %do.body.139
  store i32 0, i32* %x, align 4
  br label %do.end.178

if.end.152:                                       ; preds = %do.body.139
  store i32 0, i32* %x, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.170, %if.end.152
  %119 = load i32, i32* %x, align 4
  %120 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize154 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %120, i32 0, i32 5
  %121 = load i16, i16* %xsize154, align 2
  %conv155 = zext i16 %121 to i32
  %cmp156 = icmp slt i32 %119, %conv155
  br i1 %cmp156, label %for.body.158, label %for.end.172

for.body.158:                                     ; preds = %for.cond.153
  %122 = load i32, i32* %x, align 4
  %idxprom159 = sext i32 %122 to i64
  %123 = load i16*, i16** %row.addr, align 8
  %arrayidx160 = getelementptr inbounds i16, i16* %123, i64 %idxprom159
  %124 = load i16, i16* %arrayidx160, align 2
  %conv161 = zext i16 %124 to i32
  %125 = load i32, i32* %x, align 4
  %idxprom162 = sext i32 %125 to i64
  %126 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_row163 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %126, i32 0, i32 12
  %127 = load i16*, i16** %arle_row163, align 8
  %arrayidx164 = getelementptr inbounds i16, i16* %127, i64 %idxprom162
  %128 = load i16, i16* %arrayidx164, align 2
  %conv165 = zext i16 %128 to i32
  %cmp166 = icmp ne i32 %conv161, %conv165
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %for.body.158
  br label %for.end.172

if.end.169:                                       ; preds = %for.body.158
  br label %for.inc.170

for.inc.170:                                      ; preds = %if.end.169
  %129 = load i32, i32* %x, align 4
  %inc171 = add nsw i32 %129, 1
  store i32 %inc171, i32* %x, align 4
  br label %for.cond.153

for.end.172:                                      ; preds = %if.then.168, %for.cond.153
  br label %do.cond.173

do.cond.173:                                      ; preds = %for.end.172
  %130 = load i32, i32* %x, align 4
  %131 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize174 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %131, i32 0, i32 5
  %132 = load i16, i16* %xsize174, align 2
  %conv175 = zext i16 %132 to i32
  %cmp176 = icmp slt i32 %130, %conv175
  br i1 %cmp176, label %do.body.139, label %do.end.178

do.end.178:                                       ; preds = %do.cond.173, %if.then.151
  br label %if.end.179

if.end.179:                                       ; preds = %do.end.178, %do.end
  %133 = load i32, i32* %x, align 4
  %134 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize180 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %134, i32 0, i32 5
  %135 = load i16, i16* %xsize180, align 2
  %conv181 = zext i16 %135 to i32
  %cmp182 = icmp eq i32 %133, %conv181
  br i1 %cmp182, label %if.then.184, label %if.else.197

if.then.184:                                      ; preds = %if.end.179
  %136 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_offset185 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %136, i32 0, i32 13
  %137 = load i64, i64* %arle_offset185, align 8
  %138 = load i32, i32* %y.addr, align 4
  %idxprom186 = sext i32 %138 to i64
  %139 = load i32, i32* %z.addr, align 4
  %idxprom187 = sext i32 %139 to i64
  %140 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %table188 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %140, i32 0, i32 10
  %141 = load i64**, i64*** %table188, align 8
  %arrayidx189 = getelementptr inbounds i64*, i64** %141, i64 %idxprom187
  %142 = load i64*, i64** %arrayidx189, align 8
  %arrayidx190 = getelementptr inbounds i64, i64* %142, i64 %idxprom186
  store i64 %137, i64* %arrayidx190, align 8
  %143 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_length191 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %143, i32 0, i32 14
  %144 = load i64, i64* %arle_length191, align 8
  %145 = load i32, i32* %y.addr, align 4
  %idxprom192 = sext i32 %145 to i64
  %146 = load i32, i32* %z.addr, align 4
  %idxprom193 = sext i32 %146 to i64
  %147 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %length194 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %147, i32 0, i32 11
  %148 = load i64**, i64*** %length194, align 8
  %arrayidx195 = getelementptr inbounds i64*, i64** %148, i64 %idxprom193
  %149 = load i64*, i64** %arrayidx195, align 8
  %arrayidx196 = getelementptr inbounds i64, i64* %149, i64 %idxprom192
  store i64 %144, i64* %arrayidx196, align 8
  store i32 0, i32* %retval
  br label %return

if.else.197:                                      ; preds = %if.end.179
  %150 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file198 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %150, i32 0, i32 0
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %file198, align 8
  %call199 = call i32 @fseek(%struct._IO_FILE* %151, i64 0, i32 2)
  br label %if.end.200

if.end.200:                                       ; preds = %if.else.197
  br label %sw.bb.201

sw.bb.201:                                        ; preds = %if.end, %if.end.200
  %152 = load i32, i32* %y.addr, align 4
  %idxprom202 = sext i32 %152 to i64
  %153 = load i32, i32* %z.addr, align 4
  %idxprom203 = sext i32 %153 to i64
  %154 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %table204 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %154, i32 0, i32 10
  %155 = load i64**, i64*** %table204, align 8
  %arrayidx205 = getelementptr inbounds i64*, i64** %155, i64 %idxprom203
  %156 = load i64*, i64** %arrayidx205, align 8
  %arrayidx206 = getelementptr inbounds i64, i64* %156, i64 %idxprom202
  %157 = load i64, i64* %arrayidx206, align 8
  %cmp207 = icmp ne i64 %157, 0
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %sw.bb.201
  store i32 -1, i32* %retval
  br label %return

if.end.210:                                       ; preds = %sw.bb.201
  %158 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %nextrow = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %158, i32 0, i32 9
  %159 = load i64, i64* %nextrow, align 8
  %160 = load i32, i32* %y.addr, align 4
  %idxprom211 = sext i32 %160 to i64
  %161 = load i32, i32* %z.addr, align 4
  %idxprom212 = sext i32 %161 to i64
  %162 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %table213 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %162, i32 0, i32 10
  %163 = load i64**, i64*** %table213, align 8
  %arrayidx214 = getelementptr inbounds i64*, i64** %163, i64 %idxprom212
  %164 = load i64*, i64** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds i64, i64* %164, i64 %idxprom211
  store i64 %159, i64* %arrayidx215, align 8
  store i64 %159, i64* %offset, align 8
  %165 = load i64, i64* %offset, align 8
  %166 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file216 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %166, i32 0, i32 0
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %file216, align 8
  %call217 = call i64 @ftell(%struct._IO_FILE* %167)
  %cmp218 = icmp ne i64 %165, %call217
  br i1 %cmp218, label %if.then.220, label %if.end.223

if.then.220:                                      ; preds = %if.end.210
  %168 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file221 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %168, i32 0, i32 0
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %file221, align 8
  %170 = load i64, i64* %offset, align 8
  %call222 = call i32 @fseek(%struct._IO_FILE* %169, i64 %170, i32 0)
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.220, %if.end.210
  %171 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %bpp224 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %171, i32 0, i32 2
  %172 = load i32, i32* %bpp224, align 4
  %cmp225 = icmp eq i32 %172, 1
  br i1 %cmp225, label %if.then.227, label %if.else.231

if.then.227:                                      ; preds = %if.end.223
  %173 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %174 = load i16*, i16** %row.addr, align 8
  %175 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize228 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %175, i32 0, i32 5
  %176 = load i16, i16* %xsize228, align 2
  %conv229 = zext i16 %176 to i32
  %call230 = call i32 @write_rle8(%struct.sgi_t* %173, i16* %174, i32 %conv229)
  store i32 %call230, i32* %x, align 4
  br label %if.end.235

if.else.231:                                      ; preds = %if.end.223
  %177 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %178 = load i16*, i16** %row.addr, align 8
  %179 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize232 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %179, i32 0, i32 5
  %180 = load i16, i16* %xsize232, align 2
  %conv233 = zext i16 %180 to i32
  %call234 = call i32 @write_rle16(%struct.sgi_t* %177, i16* %178, i32 %conv233)
  store i32 %call234, i32* %x, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.231, %if.then.227
  %181 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %comp236 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %181, i32 0, i32 3
  %182 = load i32, i32* %comp236, align 4
  %cmp237 = icmp eq i32 %182, 2
  br i1 %cmp237, label %if.then.239, label %if.end.247

if.then.239:                                      ; preds = %if.end.235
  %183 = load i64, i64* %offset, align 8
  %184 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_offset240 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %184, i32 0, i32 13
  store i64 %183, i64* %arle_offset240, align 8
  %185 = load i32, i32* %x, align 4
  %conv241 = sext i32 %185 to i64
  %186 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_length242 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %186, i32 0, i32 14
  store i64 %conv241, i64* %arle_length242, align 8
  %187 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %arle_row243 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %187, i32 0, i32 12
  %188 = load i16*, i16** %arle_row243, align 8
  %189 = bitcast i16* %188 to i8*
  %190 = load i16*, i16** %row.addr, align 8
  %191 = bitcast i16* %190 to i8*
  %192 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %xsize244 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %192, i32 0, i32 5
  %193 = load i16, i16* %xsize244, align 2
  %conv245 = zext i16 %193 to i64
  %mul246 = mul i64 %conv245, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %189, i8* %191, i64 %mul246, i32 2, i1 false)
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.239, %if.end.235
  %194 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file248 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %194, i32 0, i32 0
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** %file248, align 8
  %call249 = call i64 @ftell(%struct._IO_FILE* %195)
  %196 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %nextrow250 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %196, i32 0, i32 9
  store i64 %call249, i64* %nextrow250, align 8
  %197 = load i32, i32* %x, align 4
  %conv251 = sext i32 %197 to i64
  %198 = load i32, i32* %y.addr, align 4
  %idxprom252 = sext i32 %198 to i64
  %199 = load i32, i32* %z.addr, align 4
  %idxprom253 = sext i32 %199 to i64
  %200 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %length254 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %200, i32 0, i32 11
  %201 = load i64**, i64*** %length254, align 8
  %arrayidx255 = getelementptr inbounds i64*, i64** %201, i64 %idxprom253
  %202 = load i64*, i64** %arrayidx255, align 8
  %arrayidx256 = getelementptr inbounds i64, i64* %202, i64 %idxprom252
  store i64 %conv251, i64* %arrayidx256, align 8
  %203 = load i32, i32* %x, align 4
  store i32 %203, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end, %if.end.49
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.247, %if.then.209, %if.then.184, %if.then.82, %if.then.55, %if.then
  %204 = load i32, i32* %retval
  ret i32 %204
}

; Function Attrs: nounwind uwtable
define internal i32 @write_rle8(%struct.sgi_t* %sgip, i16* %row, i32 %xsize) #0 {
entry:
  %retval = alloca i32, align 4
  %sgip.addr = alloca %struct.sgi_t*, align 8
  %row.addr = alloca i16*, align 8
  %xsize.addr = alloca i32, align 4
  %length = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %start = alloca i16*, align 8
  %repeat = alloca i16, align 2
  store %struct.sgi_t* %sgip, %struct.sgi_t** %sgip.addr, align 8
  store i16* %row, i16** %row.addr, align 8
  store i32 %xsize, i32* %xsize.addr, align 4
  %0 = load i32, i32* %xsize.addr, align 4
  store i32 %0, i32* %x, align 4
  store i32 0, i32* %length, align 4
  br label %for.cond

for.cond:                                         ; preds = %while.end.90, %entry
  %1 = load i32, i32* %x, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %row.addr, align 8
  store i16* %2, i16** %start, align 8
  %3 = load i16*, i16** %row.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %3, i64 2
  store i16* %add.ptr, i16** %row.addr, align 8
  %4 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %4, 2
  store i32 %sub, i32* %x, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %5 = load i32, i32* %x, align 4
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i16*, i16** %row.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 -2
  %7 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %8 = load i16*, i16** %row.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %8, i64 -1
  %9 = load i16, i16* %arrayidx2, align 2
  %conv3 = zext i16 %9 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %10 = load i16*, i16** %row.addr, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %10, i64 -1
  %11 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %11 to i32
  %12 = load i16*, i16** %row.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %12, i64 0
  %13 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %13 to i32
  %cmp10 = icmp ne i32 %conv7, %conv9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %14 = phi i1 [ true, %land.rhs ], [ %cmp10, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %14, %lor.end ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load i16*, i16** %row.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %incdec.ptr, i16** %row.addr, align 8
  %17 = load i32, i32* %x, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %x, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load i16*, i16** %row.addr, align 8
  %add.ptr12 = getelementptr inbounds i16, i16* %18, i64 -2
  store i16* %add.ptr12, i16** %row.addr, align 8
  %19 = load i32, i32* %x, align 4
  %add = add nsw i32 %19, 2
  store i32 %add, i32* %x, align 4
  %20 = load i16*, i16** %row.addr, align 8
  %21 = load i16*, i16** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %conv13 = trunc i64 %sub.ptr.div to i32
  store i32 %conv13, i32* %count, align 4
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.end.37, %while.end
  %22 = load i32, i32* %count, align 4
  %cmp15 = icmp sgt i32 %22, 0
  br i1 %cmp15, label %while.body.17, label %while.end.38

while.body.17:                                    ; preds = %while.cond.14
  %23 = load i32, i32* %count, align 4
  %cmp18 = icmp sgt i32 %23, 126
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.17
  br label %cond.end

cond.false:                                       ; preds = %while.body.17
  %24 = load i32, i32* %count, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 126, %cond.true ], [ %24, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %count, align 4
  %sub20 = sub nsw i32 %26, %25
  store i32 %sub20, i32* %count, align 4
  %27 = load i32, i32* %i, align 4
  %or = or i32 128, %27
  %28 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %28, i32 0, i32 0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i32 @_IO_putc(i32 %or, %struct._IO_FILE* %29)
  %cmp21 = icmp eq i32 %call, -1
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %30 = load i32, i32* %length, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %length, align 4
  br label %while.cond.23

while.cond.23:                                    ; preds = %if.end.33, %if.end
  %31 = load i32, i32* %i, align 4
  %cmp24 = icmp sgt i32 %31, 0
  br i1 %cmp24, label %while.body.26, label %while.end.37

while.body.26:                                    ; preds = %while.cond.23
  %32 = load i16*, i16** %start, align 8
  %33 = load i16, i16* %32, align 2
  %conv27 = zext i16 %33 to i32
  %34 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file28 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %34, i32 0, i32 0
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %file28, align 8
  %call29 = call i32 @_IO_putc(i32 %conv27, %struct._IO_FILE* %35)
  %cmp30 = icmp eq i32 %call29, -1
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %while.body.26
  store i32 -1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %while.body.26
  %36 = load i16*, i16** %start, align 8
  %incdec.ptr34 = getelementptr inbounds i16, i16* %36, i32 1
  store i16* %incdec.ptr34, i16** %start, align 8
  %37 = load i32, i32* %i, align 4
  %dec35 = add nsw i32 %37, -1
  store i32 %dec35, i32* %i, align 4
  %38 = load i32, i32* %length, align 4
  %inc36 = add nsw i32 %38, 1
  store i32 %inc36, i32* %length, align 4
  br label %while.cond.23

while.end.37:                                     ; preds = %while.cond.23
  br label %while.cond.14

while.end.38:                                     ; preds = %while.cond.14
  %39 = load i32, i32* %x, align 4
  %cmp39 = icmp sle i32 %39, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %while.end.38
  br label %for.end

if.end.42:                                        ; preds = %while.end.38
  %40 = load i16*, i16** %row.addr, align 8
  store i16* %40, i16** %start, align 8
  %41 = load i16*, i16** %row.addr, align 8
  %arrayidx43 = getelementptr inbounds i16, i16* %41, i64 0
  %42 = load i16, i16* %arrayidx43, align 2
  store i16 %42, i16* %repeat, align 2
  %43 = load i16*, i16** %row.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i16, i16* %43, i32 1
  store i16* %incdec.ptr44, i16** %row.addr, align 8
  %44 = load i32, i32* %x, align 4
  %dec45 = add nsw i32 %44, -1
  store i32 %dec45, i32* %x, align 4
  br label %while.cond.46

while.cond.46:                                    ; preds = %while.body.55, %if.end.42
  %45 = load i32, i32* %x, align 4
  %cmp47 = icmp sgt i32 %45, 0
  br i1 %cmp47, label %land.rhs.49, label %land.end.54

land.rhs.49:                                      ; preds = %while.cond.46
  %46 = load i16*, i16** %row.addr, align 8
  %47 = load i16, i16* %46, align 2
  %conv50 = zext i16 %47 to i32
  %48 = load i16, i16* %repeat, align 2
  %conv51 = zext i16 %48 to i32
  %cmp52 = icmp eq i32 %conv50, %conv51
  br label %land.end.54

land.end.54:                                      ; preds = %land.rhs.49, %while.cond.46
  %49 = phi i1 [ false, %while.cond.46 ], [ %cmp52, %land.rhs.49 ]
  br i1 %49, label %while.body.55, label %while.end.58

while.body.55:                                    ; preds = %land.end.54
  %50 = load i16*, i16** %row.addr, align 8
  %incdec.ptr56 = getelementptr inbounds i16, i16* %50, i32 1
  store i16* %incdec.ptr56, i16** %row.addr, align 8
  %51 = load i32, i32* %x, align 4
  %dec57 = add nsw i32 %51, -1
  store i32 %dec57, i32* %x, align 4
  br label %while.cond.46

while.end.58:                                     ; preds = %land.end.54
  %52 = load i16*, i16** %row.addr, align 8
  %53 = load i16*, i16** %start, align 8
  %sub.ptr.lhs.cast59 = ptrtoint i16* %52 to i64
  %sub.ptr.rhs.cast60 = ptrtoint i16* %53 to i64
  %sub.ptr.sub61 = sub i64 %sub.ptr.lhs.cast59, %sub.ptr.rhs.cast60
  %sub.ptr.div62 = sdiv exact i64 %sub.ptr.sub61, 2
  %conv63 = trunc i64 %sub.ptr.div62 to i32
  store i32 %conv63, i32* %count, align 4
  br label %while.cond.64

while.cond.64:                                    ; preds = %if.end.88, %while.end.58
  %54 = load i32, i32* %count, align 4
  %cmp65 = icmp sgt i32 %54, 0
  br i1 %cmp65, label %while.body.67, label %while.end.90

while.body.67:                                    ; preds = %while.cond.64
  %55 = load i32, i32* %count, align 4
  %cmp68 = icmp sgt i32 %55, 126
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %while.body.67
  br label %cond.end.72

cond.false.71:                                    ; preds = %while.body.67
  %56 = load i32, i32* %count, align 4
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.70
  %cond73 = phi i32 [ 126, %cond.true.70 ], [ %56, %cond.false.71 ]
  store i32 %cond73, i32* %i, align 4
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %count, align 4
  %sub74 = sub nsw i32 %58, %57
  store i32 %sub74, i32* %count, align 4
  %59 = load i32, i32* %i, align 4
  %60 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file75 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %60, i32 0, i32 0
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %file75, align 8
  %call76 = call i32 @_IO_putc(i32 %59, %struct._IO_FILE* %61)
  %cmp77 = icmp eq i32 %call76, -1
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %cond.end.72
  store i32 -1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %cond.end.72
  %62 = load i32, i32* %length, align 4
  %inc81 = add nsw i32 %62, 1
  store i32 %inc81, i32* %length, align 4
  %63 = load i16, i16* %repeat, align 2
  %conv82 = zext i16 %63 to i32
  %64 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file83 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %64, i32 0, i32 0
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %file83, align 8
  %call84 = call i32 @_IO_putc(i32 %conv82, %struct._IO_FILE* %65)
  %cmp85 = icmp eq i32 %call84, -1
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.80
  store i32 -1, i32* %retval
  br label %return

if.end.88:                                        ; preds = %if.end.80
  %66 = load i32, i32* %length, align 4
  %inc89 = add nsw i32 %66, 1
  store i32 %inc89, i32* %length, align 4
  br label %while.cond.64

while.end.90:                                     ; preds = %while.cond.64
  br label %for.cond

for.end:                                          ; preds = %if.then.41, %for.cond
  %67 = load i32, i32* %length, align 4
  %inc91 = add nsw i32 %67, 1
  store i32 %inc91, i32* %length, align 4
  %68 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %file92 = getelementptr inbounds %struct.sgi_t, %struct.sgi_t* %68, i32 0, i32 0
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %file92, align 8
  %call93 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %69)
  %cmp94 = icmp eq i32 %call93, -1
  br i1 %cmp94, label %if.then.96, label %if.else

if.then.96:                                       ; preds = %for.end
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  %70 = load i32, i32* %length, align 4
  store i32 %70, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.96, %if.then.87, %if.then.79, %if.then.32, %if.then
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i32 @write_rle16(%struct.sgi_t* %sgip, i16* %row, i32 %xsize) #0 {
entry:
  %retval = alloca i32, align 4
  %sgip.addr = alloca %struct.sgi_t*, align 8
  %row.addr = alloca i16*, align 8
  %xsize.addr = alloca i32, align 4
  %length = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %start = alloca i16*, align 8
  %repeat = alloca i16, align 2
  store %struct.sgi_t* %sgip, %struct.sgi_t** %sgip.addr, align 8
  store i16* %row, i16** %row.addr, align 8
  store i32 %xsize, i32* %xsize.addr, align 4
  %0 = load i32, i32* %xsize.addr, align 4
  store i32 %0, i32* %x, align 4
  store i32 0, i32* %length, align 4
  br label %for.cond

for.cond:                                         ; preds = %while.end.87, %entry
  %1 = load i32, i32* %x, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %row.addr, align 8
  store i16* %2, i16** %start, align 8
  %3 = load i16*, i16** %row.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %3, i64 2
  store i16* %add.ptr, i16** %row.addr, align 8
  %4 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %4, 2
  store i32 %sub, i32* %x, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %5 = load i32, i32* %x, align 4
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i16*, i16** %row.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 -2
  %7 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %8 = load i16*, i16** %row.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %8, i64 -1
  %9 = load i16, i16* %arrayidx2, align 2
  %conv3 = zext i16 %9 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %10 = load i16*, i16** %row.addr, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %10, i64 -1
  %11 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %11 to i32
  %12 = load i16*, i16** %row.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %12, i64 0
  %13 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %13 to i32
  %cmp10 = icmp ne i32 %conv7, %conv9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %14 = phi i1 [ true, %land.rhs ], [ %cmp10, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %14, %lor.end ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load i16*, i16** %row.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %incdec.ptr, i16** %row.addr, align 8
  %17 = load i32, i32* %x, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %x, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load i16*, i16** %row.addr, align 8
  %add.ptr12 = getelementptr inbounds i16, i16* %18, i64 -2
  store i16* %add.ptr12, i16** %row.addr, align 8
  %19 = load i32, i32* %x, align 4
  %add = add nsw i32 %19, 2
  store i32 %add, i32* %x, align 4
  %20 = load i16*, i16** %row.addr, align 8
  %21 = load i16*, i16** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %conv13 = trunc i64 %sub.ptr.div to i32
  store i32 %conv13, i32* %count, align 4
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.end.36, %while.end
  %22 = load i32, i32* %count, align 4
  %cmp15 = icmp sgt i32 %22, 0
  br i1 %cmp15, label %while.body.17, label %while.end.37

while.body.17:                                    ; preds = %while.cond.14
  %23 = load i32, i32* %count, align 4
  %cmp18 = icmp sgt i32 %23, 126
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.17
  br label %cond.end

cond.false:                                       ; preds = %while.body.17
  %24 = load i32, i32* %count, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 126, %cond.true ], [ %24, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %count, align 4
  %sub20 = sub nsw i32 %26, %25
  store i32 %sub20, i32* %count, align 4
  %27 = load i32, i32* %i, align 4
  %or = or i32 128, %27
  %conv21 = trunc i32 %or to i16
  %28 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %call = call i32 @putshort(i16 zeroext %conv21, %struct.sgi_t* %28)
  %cmp22 = icmp eq i32 %call, -1
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %29 = load i32, i32* %length, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %length, align 4
  br label %while.cond.24

while.cond.24:                                    ; preds = %if.end.32, %if.end
  %30 = load i32, i32* %i, align 4
  %cmp25 = icmp sgt i32 %30, 0
  br i1 %cmp25, label %while.body.27, label %while.end.36

while.body.27:                                    ; preds = %while.cond.24
  %31 = load i16*, i16** %start, align 8
  %32 = load i16, i16* %31, align 2
  %33 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %call28 = call i32 @putshort(i16 zeroext %32, %struct.sgi_t* %33)
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %while.body.27
  store i32 -1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %while.body.27
  %34 = load i16*, i16** %start, align 8
  %incdec.ptr33 = getelementptr inbounds i16, i16* %34, i32 1
  store i16* %incdec.ptr33, i16** %start, align 8
  %35 = load i32, i32* %i, align 4
  %dec34 = add nsw i32 %35, -1
  store i32 %dec34, i32* %i, align 4
  %36 = load i32, i32* %length, align 4
  %inc35 = add nsw i32 %36, 1
  store i32 %inc35, i32* %length, align 4
  br label %while.cond.24

while.end.36:                                     ; preds = %while.cond.24
  br label %while.cond.14

while.end.37:                                     ; preds = %while.cond.14
  %37 = load i32, i32* %x, align 4
  %cmp38 = icmp sle i32 %37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %while.end.37
  br label %for.end

if.end.41:                                        ; preds = %while.end.37
  %38 = load i16*, i16** %row.addr, align 8
  store i16* %38, i16** %start, align 8
  %39 = load i16*, i16** %row.addr, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %39, i64 0
  %40 = load i16, i16* %arrayidx42, align 2
  store i16 %40, i16* %repeat, align 2
  %41 = load i16*, i16** %row.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i16, i16* %41, i32 1
  store i16* %incdec.ptr43, i16** %row.addr, align 8
  %42 = load i32, i32* %x, align 4
  %dec44 = add nsw i32 %42, -1
  store i32 %dec44, i32* %x, align 4
  br label %while.cond.45

while.cond.45:                                    ; preds = %while.body.54, %if.end.41
  %43 = load i32, i32* %x, align 4
  %cmp46 = icmp sgt i32 %43, 0
  br i1 %cmp46, label %land.rhs.48, label %land.end.53

land.rhs.48:                                      ; preds = %while.cond.45
  %44 = load i16*, i16** %row.addr, align 8
  %45 = load i16, i16* %44, align 2
  %conv49 = zext i16 %45 to i32
  %46 = load i16, i16* %repeat, align 2
  %conv50 = zext i16 %46 to i32
  %cmp51 = icmp eq i32 %conv49, %conv50
  br label %land.end.53

land.end.53:                                      ; preds = %land.rhs.48, %while.cond.45
  %47 = phi i1 [ false, %while.cond.45 ], [ %cmp51, %land.rhs.48 ]
  br i1 %47, label %while.body.54, label %while.end.57

while.body.54:                                    ; preds = %land.end.53
  %48 = load i16*, i16** %row.addr, align 8
  %incdec.ptr55 = getelementptr inbounds i16, i16* %48, i32 1
  store i16* %incdec.ptr55, i16** %row.addr, align 8
  %49 = load i32, i32* %x, align 4
  %dec56 = add nsw i32 %49, -1
  store i32 %dec56, i32* %x, align 4
  br label %while.cond.45

while.end.57:                                     ; preds = %land.end.53
  %50 = load i16*, i16** %row.addr, align 8
  %51 = load i16*, i16** %start, align 8
  %sub.ptr.lhs.cast58 = ptrtoint i16* %50 to i64
  %sub.ptr.rhs.cast59 = ptrtoint i16* %51 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %sub.ptr.div61 = sdiv exact i64 %sub.ptr.sub60, 2
  %conv62 = trunc i64 %sub.ptr.div61 to i32
  store i32 %conv62, i32* %count, align 4
  br label %while.cond.63

while.cond.63:                                    ; preds = %if.end.85, %while.end.57
  %52 = load i32, i32* %count, align 4
  %cmp64 = icmp sgt i32 %52, 0
  br i1 %cmp64, label %while.body.66, label %while.end.87

while.body.66:                                    ; preds = %while.cond.63
  %53 = load i32, i32* %count, align 4
  %cmp67 = icmp sgt i32 %53, 126
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %while.body.66
  br label %cond.end.71

cond.false.70:                                    ; preds = %while.body.66
  %54 = load i32, i32* %count, align 4
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.69
  %cond72 = phi i32 [ 126, %cond.true.69 ], [ %54, %cond.false.70 ]
  store i32 %cond72, i32* %i, align 4
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %count, align 4
  %sub73 = sub nsw i32 %56, %55
  store i32 %sub73, i32* %count, align 4
  %57 = load i32, i32* %i, align 4
  %conv74 = trunc i32 %57 to i16
  %58 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %call75 = call i32 @putshort(i16 zeroext %conv74, %struct.sgi_t* %58)
  %cmp76 = icmp eq i32 %call75, -1
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %cond.end.71
  store i32 -1, i32* %retval
  br label %return

if.end.79:                                        ; preds = %cond.end.71
  %59 = load i32, i32* %length, align 4
  %inc80 = add nsw i32 %59, 1
  store i32 %inc80, i32* %length, align 4
  %60 = load i16, i16* %repeat, align 2
  %61 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %call81 = call i32 @putshort(i16 zeroext %60, %struct.sgi_t* %61)
  %cmp82 = icmp eq i32 %call81, -1
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.79
  store i32 -1, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.end.79
  %62 = load i32, i32* %length, align 4
  %inc86 = add nsw i32 %62, 1
  store i32 %inc86, i32* %length, align 4
  br label %while.cond.63

while.end.87:                                     ; preds = %while.cond.63
  br label %for.cond

for.end:                                          ; preds = %if.then.40, %for.cond
  %63 = load i32, i32* %length, align 4
  %inc88 = add nsw i32 %63, 1
  store i32 %inc88, i32* %length, align 4
  %64 = load %struct.sgi_t*, %struct.sgi_t** %sgip.addr, align 8
  %call89 = call i32 @putshort(i16 zeroext 0, %struct.sgi_t* %64)
  %cmp90 = icmp eq i32 %call89, -1
  br i1 %cmp90, label %if.then.92, label %if.else

if.then.92:                                       ; preds = %for.end
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  %65 = load i32, i32* %length, align 4
  %mul = mul nsw i32 2, %65
  store i32 %mul, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.92, %if.then.84, %if.then.78, %if.then.31, %if.then
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
