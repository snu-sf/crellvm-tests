; ModuleID = './lib/getshline.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"*n + *lineptr == read_pos + nchars_avail\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"getshline.c\00", align 1
@__PRETTY_FUNCTION__.getshstr = private unnamed_addr constant [78 x i8] c"int getshstr(int *, int *, char **, size_t *, FILE *, char, int, int, size_t)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @getshline_numbered(i32* %firstline, i32* %lastline, i8** %lineptr, i64* %n, %struct._IO_FILE* %stream) #0 {
entry:
  %firstline.addr = alloca i32*, align 8
  %lastline.addr = alloca i32*, align 8
  %lineptr.addr = alloca i8**, align 8
  %n.addr = alloca i64*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store i32* %firstline, i32** %firstline.addr, align 8
  store i32* %lastline, i32** %lastline.addr, align 8
  store i8** %lineptr, i8*** %lineptr.addr, align 8
  store i64* %n, i64** %n.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i32*, i32** %firstline.addr, align 8
  %1 = load i32*, i32** %lastline.addr, align 8
  %2 = load i8**, i8*** %lineptr.addr, align 8
  %3 = load i64*, i64** %n.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @getshstr(i32* %0, i32* %1, i8** %2, i64* %3, %struct._IO_FILE* %4, i8 signext 10, i32 92, i32 35, i64 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @getshstr(i32* %firstline, i32* %lastline, i8** %lineptr, i64* %n, %struct._IO_FILE* %stream, i8 signext %terminator, i32 %terminator_quote, i32 %commentor, i64 %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %firstline.addr = alloca i32*, align 8
  %lastline.addr = alloca i32*, align 8
  %lineptr.addr = alloca i8**, align 8
  %n.addr = alloca i64*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %terminator.addr = alloca i8, align 1
  %terminator_quote.addr = alloca i32, align 4
  %commentor.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %nchars_avail = alloca i32, align 4
  %read_pos = alloca i8*, align 8
  %ret = alloca i32, align 4
  %c = alloca i32, align 4
  store i32* %firstline, i32** %firstline.addr, align 8
  store i32* %lastline, i32** %lastline.addr, align 8
  store i8** %lineptr, i8*** %lineptr.addr, align 8
  store i64* %n, i64** %n.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8 %terminator, i8* %terminator.addr, align 1
  store i32 %terminator_quote, i32* %terminator_quote.addr, align 4
  store i32 %commentor, i32* %commentor.addr, align 4
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load i8**, i8*** %lineptr.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64*, i64** %n.addr, align 8
  %tobool1 = icmp ne i64* %1, null
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %3 = load i8**, i8*** %lineptr.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %tobool4 = icmp ne i8* %4, null
  br i1 %tobool4, label %if.end.9, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %5 = load i64*, i64** %n.addr, align 8
  store i64 64, i64* %5, align 8
  %6 = load i64*, i64** %n.addr, align 8
  %7 = load i64, i64* %6, align 8
  %mul = mul i64 1, %7
  %call = call i8* @xmalloc(i64 %mul)
  %8 = load i8**, i8*** %lineptr.addr, align 8
  store i8* %call, i8** %8, align 8
  %9 = load i8**, i8*** %lineptr.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %tobool6 = icmp ne i8* %10, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %11 = load i32*, i32** %lastline.addr, align 8
  %12 = load i32, i32* %11, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %11, align 4
  %13 = load i32*, i32** %firstline.addr, align 8
  store i32 %inc, i32* %13, align 4
  %14 = load i64*, i64** %n.addr, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %offset.addr, align 8
  %sub = sub i64 %15, %16
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %nchars_avail, align 4
  %17 = load i8**, i8*** %lineptr.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i64, i64* %offset.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %add.ptr, i8** %read_pos, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.82, %if.end.9
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call10 = call i32 @_IO_getc(%struct._IO_FILE* %20)
  store i32 %call10, i32* %c, align 4
  %21 = load i64*, i64** %n.addr, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i8**, i8*** %lineptr.addr, align 8
  %24 = load i8*, i8** %23, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %24, i64 %22
  %25 = load i8*, i8** %read_pos, align 8
  %26 = load i32, i32* %nchars_avail, align 4
  %idx.ext = sext i32 %26 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  %cmp = icmp eq i8* %add.ptr11, %add.ptr12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 81, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.getshstr, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %27, %cond.true
  %28 = load i32, i32* %nchars_avail, align 4
  %cmp14 = icmp slt i32 %28, 2
  br i1 %cmp14, label %if.then.16, label %if.end.40

if.then.16:                                       ; preds = %cond.end
  %29 = load i64*, i64** %n.addr, align 8
  %30 = load i64, i64* %29, align 8
  %cmp17 = icmp ugt i64 %30, 64
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.16
  %31 = load i64*, i64** %n.addr, align 8
  %32 = load i64, i64* %31, align 8
  %mul20 = mul i64 %32, 2
  store i64 %mul20, i64* %31, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.then.16
  %33 = load i64*, i64** %n.addr, align 8
  %34 = load i64, i64* %33, align 8
  %add = add i64 %34, 64
  store i64 %add, i64* %33, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.19
  %35 = load i64*, i64** %n.addr, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i8**, i8*** %lineptr.addr, align 8
  %38 = load i8*, i8** %37, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %38, i64 %36
  %39 = load i8*, i8** %read_pos, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv23 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv23, i32* %nchars_avail, align 4
  %40 = load i8**, i8*** %lineptr.addr, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i64*, i64** %n.addr, align 8
  %43 = load i64, i64* %42, align 8
  %mul24 = mul i64 1, %43
  %call25 = call i8* @xrealloc(i8* %41, i64 %mul24)
  %44 = load i8**, i8*** %lineptr.addr, align 8
  store i8* %call25, i8** %44, align 8
  %45 = load i8**, i8*** %lineptr.addr, align 8
  %46 = load i8*, i8** %45, align 8
  %tobool26 = icmp ne i8* %46, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.21
  store i32 -1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.21
  %47 = load i64*, i64** %n.addr, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %nchars_avail, align 4
  %conv29 = sext i32 %49 to i64
  %sub30 = sub i64 %48, %conv29
  %50 = load i8**, i8*** %lineptr.addr, align 8
  %51 = load i8*, i8** %50, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %51, i64 %sub30
  store i8* %add.ptr31, i8** %read_pos, align 8
  %52 = load i64*, i64** %n.addr, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i8**, i8*** %lineptr.addr, align 8
  %55 = load i8*, i8** %54, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %55, i64 %53
  %56 = load i8*, i8** %read_pos, align 8
  %57 = load i32, i32* %nchars_avail, align 4
  %idx.ext33 = sext i32 %57 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %56, i64 %idx.ext33
  %cmp35 = icmp eq i8* %add.ptr32, %add.ptr34
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %if.end.28
  br label %cond.end.39

cond.false.38:                                    ; preds = %if.end.28
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 94, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.getshstr, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end.39

cond.end.39:                                      ; preds = %58, %cond.true.37
  br label %if.end.40

if.end.40:                                        ; preds = %cond.end.39, %cond.end
  %59 = load i32, i32* %c, align 4
  %cmp41 = icmp eq i32 %59, -1
  br i1 %cmp41, label %if.then.46, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.end.40
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call44 = call i32 @ferror(%struct._IO_FILE* %60) #5
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %lor.lhs.false.43, %if.end.40
  %61 = load i8*, i8** %read_pos, align 8
  %62 = load i8**, i8*** %lineptr.addr, align 8
  %63 = load i8*, i8** %62, align 8
  %cmp47 = icmp eq i8* %61, %63
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.then.46
  store i32 -1, i32* %retval
  br label %return

if.else.50:                                       ; preds = %if.then.46
  br label %for.end

if.end.51:                                        ; preds = %lor.lhs.false.43
  %64 = load i32, i32* %c, align 4
  %conv52 = trunc i32 %64 to i8
  %65 = load i8*, i8** %read_pos, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr, i8** %read_pos, align 8
  store i8 %conv52, i8* %65, align 1
  %66 = load i32, i32* %nchars_avail, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %nchars_avail, align 4
  %67 = load i32, i32* %c, align 4
  %68 = load i8, i8* %terminator.addr, align 1
  %conv53 = sext i8 %68 to i32
  %cmp54 = icmp eq i32 %67, %conv53
  br i1 %cmp54, label %if.then.56, label %if.end.82

if.then.56:                                       ; preds = %if.end.51
  %69 = load i8**, i8*** %lineptr.addr, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i8, i8* %70, align 1
  %conv57 = sext i8 %71 to i32
  %72 = load i8, i8* %terminator.addr, align 1
  %conv58 = sext i8 %72 to i32
  %cmp59 = icmp eq i32 %conv57, %conv58
  br i1 %cmp59, label %if.then.65, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.then.56
  %73 = load i8**, i8*** %lineptr.addr, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = load i8, i8* %74, align 1
  %conv62 = sext i8 %75 to i32
  %76 = load i32, i32* %commentor.addr, align 4
  %cmp63 = icmp eq i32 %conv62, %76
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %lor.lhs.false.61, %if.then.56
  %77 = load i32*, i32** %lastline.addr, align 8
  %78 = load i32, i32* %77, align 4
  %add66 = add nsw i32 %78, 1
  %79 = load i32*, i32** %firstline.addr, align 8
  store i32 %add66, i32* %79, align 4
  %80 = load i32*, i32** %firstline.addr, align 8
  %81 = load i32*, i32** %lastline.addr, align 8
  %82 = load i8**, i8*** %lineptr.addr, align 8
  %83 = load i64*, i64** %n.addr, align 8
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %85 = load i8, i8* %terminator.addr, align 1
  %86 = load i32, i32* %terminator_quote.addr, align 4
  %87 = load i32, i32* %commentor.addr, align 4
  %88 = load i64, i64* %offset.addr, align 8
  %call67 = call i32 @getshstr(i32* %80, i32* %81, i8** %82, i64* %83, %struct._IO_FILE* %84, i8 signext %85, i32 %86, i32 %87, i64 %88)
  store i32 %call67, i32* %retval
  br label %return

if.end.68:                                        ; preds = %lor.lhs.false.61
  %89 = load i8*, i8** %read_pos, align 8
  %add.ptr69 = getelementptr inbounds i8, i8* %89, i64 -2
  %90 = load i8**, i8*** %lineptr.addr, align 8
  %91 = load i8*, i8** %90, align 8
  %cmp70 = icmp ule i8* %add.ptr69, %91
  br i1 %cmp70, label %if.then.77, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %if.end.68
  %92 = load i8*, i8** %read_pos, align 8
  %add.ptr73 = getelementptr inbounds i8, i8* %92, i64 -2
  %93 = load i8, i8* %add.ptr73, align 1
  %conv74 = sext i8 %93 to i32
  %94 = load i32, i32* %terminator_quote.addr, align 4
  %cmp75 = icmp ne i32 %conv74, %94
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %lor.lhs.false.72, %if.end.68
  br label %for.end

if.end.78:                                        ; preds = %lor.lhs.false.72
  %95 = load i8*, i8** %read_pos, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %95, i64 -2
  store i8* %add.ptr79, i8** %read_pos, align 8
  %96 = load i32, i32* %nchars_avail, align 4
  %add80 = add nsw i32 %96, 2
  store i32 %add80, i32* %nchars_avail, align 4
  %97 = load i32*, i32** %lastline.addr, align 8
  %98 = load i32, i32* %97, align 4
  %inc81 = add nsw i32 %98, 1
  store i32 %inc81, i32* %97, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.78, %if.end.51
  br label %for.cond

for.end:                                          ; preds = %if.then.77, %if.else.50
  %99 = load i8*, i8** %read_pos, align 8
  store i8 0, i8* %99, align 1
  %100 = load i8*, i8** %read_pos, align 8
  %101 = load i8**, i8*** %lineptr.addr, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = load i64, i64* %offset.addr, align 8
  %add.ptr83 = getelementptr inbounds i8, i8* %102, i64 %103
  %sub.ptr.lhs.cast84 = ptrtoint i8* %100 to i64
  %sub.ptr.rhs.cast85 = ptrtoint i8* %add.ptr83 to i64
  %sub.ptr.sub86 = sub i64 %sub.ptr.lhs.cast84, %sub.ptr.rhs.cast85
  %conv87 = trunc i64 %sub.ptr.sub86 to i32
  store i32 %conv87, i32* %ret, align 4
  %104 = load i32, i32* %ret, align 4
  store i32 %104, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.65, %if.then.49, %if.then.27, %if.then.7, %if.then
  %105 = load i32, i32* %retval
  ret i32 %105
}

; Function Attrs: nounwind uwtable
define i32 @getshline(i8** %lineptr, i64* %n, %struct._IO_FILE* %stream) #0 {
entry:
  %lineptr.addr = alloca i8**, align 8
  %n.addr = alloca i64*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %firstline = alloca i32, align 4
  %lastline = alloca i32, align 4
  store i8** %lineptr, i8*** %lineptr.addr, align 8
  store i64* %n, i64** %n.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i8**, i8*** %lineptr.addr, align 8
  %1 = load i64*, i64** %n.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @getshstr(i32* %firstline, i32* %lastline, i8** %0, i64* %1, %struct._IO_FILE* %2, i8 signext 10, i32 92, i32 35, i64 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @getshdelim_numbered(i32* %firstline, i32* %lastline, i8** %lineptr, i64* %n, i32 %delimiter, i32 %delimiter_quote, i32 %commentor, %struct._IO_FILE* %stream) #0 {
entry:
  %firstline.addr = alloca i32*, align 8
  %lastline.addr = alloca i32*, align 8
  %lineptr.addr = alloca i8**, align 8
  %n.addr = alloca i64*, align 8
  %delimiter.addr = alloca i32, align 4
  %delimiter_quote.addr = alloca i32, align 4
  %commentor.addr = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store i32* %firstline, i32** %firstline.addr, align 8
  store i32* %lastline, i32** %lastline.addr, align 8
  store i8** %lineptr, i8*** %lineptr.addr, align 8
  store i64* %n, i64** %n.addr, align 8
  store i32 %delimiter, i32* %delimiter.addr, align 4
  store i32 %delimiter_quote, i32* %delimiter_quote.addr, align 4
  store i32 %commentor, i32* %commentor.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i32*, i32** %firstline.addr, align 8
  %1 = load i32*, i32** %lastline.addr, align 8
  %2 = load i8**, i8*** %lineptr.addr, align 8
  %3 = load i64*, i64** %n.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %5 = load i32, i32* %delimiter.addr, align 4
  %conv = trunc i32 %5 to i8
  %6 = load i32, i32* %delimiter_quote.addr, align 4
  %7 = load i32, i32* %commentor.addr, align 4
  %call = call i32 @getshstr(i32* %0, i32* %1, i8** %2, i64* %3, %struct._IO_FILE* %4, i8 signext %conv, i32 %6, i32 %7, i64 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @getshdelim(i8** %lineptr, i64* %n, i32 %delimiter, i32 %delimiter_quote, i32 %commentor, %struct._IO_FILE* %stream) #0 {
entry:
  %lineptr.addr = alloca i8**, align 8
  %n.addr = alloca i64*, align 8
  %delimiter.addr = alloca i32, align 4
  %delimiter_quote.addr = alloca i32, align 4
  %commentor.addr = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %firstline = alloca i32, align 4
  %lastline = alloca i32, align 4
  store i8** %lineptr, i8*** %lineptr.addr, align 8
  store i64* %n, i64** %n.addr, align 8
  store i32 %delimiter, i32* %delimiter.addr, align 4
  store i32 %delimiter_quote, i32* %delimiter_quote.addr, align 4
  store i32 %commentor, i32* %commentor.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i8**, i8*** %lineptr.addr, align 8
  %1 = load i64*, i64** %n.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load i32, i32* %delimiter.addr, align 4
  %conv = trunc i32 %3 to i8
  %4 = load i32, i32* %delimiter_quote.addr, align 4
  %5 = load i32, i32* %commentor.addr, align 4
  %call = call i32 @getshstr(i32* %firstline, i32* %lastline, i8** %0, i64* %1, %struct._IO_FILE* %2, i8 signext %conv, i32 %4, i32 %5, i64 0)
  ret i32 %call
}

declare i8* @xmalloc(i64) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
