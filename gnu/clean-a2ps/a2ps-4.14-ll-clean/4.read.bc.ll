; ModuleID = './src/read.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.buffer_s = type { i8*, i64, i64, %struct._IO_FILE*, i8, i8*, i32, i8, i8*, i64, i64, i64, i64, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.file_job = type { i8*, i8*, i8*, i8*, i8, %struct.tm, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@job = external global %struct.a2ps_job*, align 8

; Function Attrs: nounwind uwtable
define void @plain_print_postscript(%struct.a2ps_job* %Job, %struct.buffer_s* %buffer) #0 {
entry:
  %Job.addr = alloca %struct.a2ps_job*, align 8
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %face = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.a2ps_job* %Job, %struct.a2ps_job** %Job.addr, align 8
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store i32 0, i32* %face, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %call = call i32 @plain_getc(%struct.buffer_s* %0, i32* %face)
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %Job.addr, align 8
  %2 = load i32, i32* %c, align 4
  %3 = load i32, i32* %face, align 4
  call void @ps_print_char(%struct.a2ps_job* %1, i32 %2, i32 %3)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @plain_getc(%struct.buffer_s* %buffer, i32* %face) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct.buffer_s*, align 8
  %face.addr = alloca i32*, align 8
  %c = alloca i8, align 1
  %input = alloca i8*, align 8
  %c2 = alloca i8, align 1
  store %struct.buffer_s* %buffer, %struct.buffer_s** %buffer.addr, align 8
  store i32* %face, i32** %face.addr, align 8
  %0 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %0, i32 0, i32 12
  %1 = load i64, i64* %curr, align 8
  %2 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %2, i32 0, i32 11
  %3 = load i64, i64* %len, align 8
  %cmp = icmp uge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  call void @buffer_get(%struct.buffer_s* %4)
  %5 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %line = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %5, i32 0, i32 9
  %6 = load i64, i64* %line, align 8
  %conv = trunc i64 %6 to i32
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %7, i32 0, i32 68
  %8 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len1 = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 5
  %9 = load i64, i64* %len1, align 8
  %sub = sub i64 %9, 1
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 68
  %11 = load %struct.darray*, %struct.darray** %jobs2, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 6
  %12 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %sub
  %13 = load i8*, i8** %arrayidx, align 8
  %14 = bitcast i8* %13 to %struct.file_job*
  %lines = getelementptr inbounds %struct.file_job, %struct.file_job* %14, i32 0, i32 17
  store i32 %conv, i32* %lines, align 4
  %15 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %len3 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %15, i32 0, i32 11
  %16 = load i64, i64* %len3, align 8
  %cmp4 = icmp eq i64 %16, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %17 = load i32*, i32** %face.addr, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr8 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %18, i32 0, i32 12
  %19 = load i64, i64* %curr8, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %curr8, align 8
  %20 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content9 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %20, i32 0, i32 5
  %21 = load i8*, i8** %content9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %21, i64 %19
  %22 = load i8, i8* %arrayidx10, align 1
  store i8 %22, i8* %c, align 1
  %23 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr11 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %23, i32 0, i32 12
  %24 = load i64, i64* %curr11, align 8
  %25 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content12 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %25, i32 0, i32 5
  %26 = load i8*, i8** %content12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %26, i64 %24
  %27 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %27 to i32
  %cmp15 = icmp eq i32 %conv14, 8
  br i1 %cmp15, label %if.then.17, label %if.end.299

if.then.17:                                       ; preds = %if.end.7
  %28 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %content18 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %28, i32 0, i32 5
  %29 = load i8*, i8** %content18, align 8
  %30 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr19 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %30, i32 0, i32 12
  %31 = load i64, i64* %curr19, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %31
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  store i8* %add.ptr20, i8** %input, align 8
  %32 = load i8, i8* %c, align 1
  %conv21 = zext i8 %32 to i32
  %33 = load i8*, i8** %input, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %34 to i32
  %cmp24 = icmp eq i32 %conv21, %conv23
  br i1 %cmp24, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.17
  %35 = load i8*, i8** %input, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %36 to i32
  %cmp28 = icmp eq i32 8, %conv27
  br i1 %cmp28, label %land.lhs.true.30, label %if.else

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %37 = load i8, i8* %c, align 1
  %conv31 = zext i8 %37 to i32
  %38 = load i8*, i8** %input, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %38, i64 2
  %39 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %39 to i32
  %cmp34 = icmp eq i32 %conv31, %conv33
  br i1 %cmp34, label %land.lhs.true.36, label %if.else

land.lhs.true.36:                                 ; preds = %land.lhs.true.30
  %40 = load i8*, i8** %input, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %40, i64 3
  %41 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %41 to i32
  %cmp39 = icmp eq i32 8, %conv38
  br i1 %cmp39, label %land.lhs.true.41, label %if.else

land.lhs.true.41:                                 ; preds = %land.lhs.true.36
  %42 = load i8, i8* %c, align 1
  %conv42 = zext i8 %42 to i32
  %43 = load i8*, i8** %input, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %43, i64 4
  %44 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %44 to i32
  %cmp45 = icmp eq i32 %conv42, %conv44
  br i1 %cmp45, label %land.lhs.true.47, label %if.else

land.lhs.true.47:                                 ; preds = %land.lhs.true.41
  %45 = load i8*, i8** %input, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %45, i64 5
  %46 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %46 to i32
  %cmp50 = icmp eq i32 8, %conv49
  br i1 %cmp50, label %land.lhs.true.52, label %if.else

land.lhs.true.52:                                 ; preds = %land.lhs.true.47
  %47 = load i8, i8* %c, align 1
  %conv53 = zext i8 %47 to i32
  %48 = load i8*, i8** %input, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %48, i64 6
  %49 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %49 to i32
  %cmp56 = icmp eq i32 %conv53, %conv55
  br i1 %cmp56, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %land.lhs.true.52
  %50 = load i32*, i32** %face.addr, align 8
  store i32 4, i32* %50, align 4
  %51 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr59 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %51, i32 0, i32 12
  %52 = load i64, i64* %curr59, align 8
  %add = add i64 %52, 8
  store i64 %add, i64* %curr59, align 8
  br label %if.end.298

if.else:                                          ; preds = %land.lhs.true.52, %land.lhs.true.47, %land.lhs.true.41, %land.lhs.true.36, %land.lhs.true.30, %land.lhs.true, %if.then.17
  %53 = load i8, i8* %c, align 1
  %conv60 = zext i8 %53 to i32
  %54 = load i8*, i8** %input, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %55 to i32
  %cmp63 = icmp eq i32 %conv60, %conv62
  br i1 %cmp63, label %land.lhs.true.65, label %if.else.90

land.lhs.true.65:                                 ; preds = %if.else
  %56 = load i8*, i8** %input, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %56, i64 1
  %57 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %57 to i32
  %cmp68 = icmp eq i32 8, %conv67
  br i1 %cmp68, label %land.lhs.true.70, label %if.else.90

land.lhs.true.70:                                 ; preds = %land.lhs.true.65
  %58 = load i8, i8* %c, align 1
  %conv71 = zext i8 %58 to i32
  %59 = load i8*, i8** %input, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %59, i64 2
  %60 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %60 to i32
  %cmp74 = icmp eq i32 %conv71, %conv73
  br i1 %cmp74, label %land.lhs.true.76, label %if.else.90

land.lhs.true.76:                                 ; preds = %land.lhs.true.70
  %61 = load i8*, i8** %input, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %61, i64 3
  %62 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %62 to i32
  %cmp79 = icmp eq i32 8, %conv78
  br i1 %cmp79, label %land.lhs.true.81, label %if.else.90

land.lhs.true.81:                                 ; preds = %land.lhs.true.76
  %63 = load i8, i8* %c, align 1
  %conv82 = zext i8 %63 to i32
  %64 = load i8*, i8** %input, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %64, i64 4
  %65 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %65 to i32
  %cmp85 = icmp eq i32 %conv82, %conv84
  br i1 %cmp85, label %if.then.87, label %if.else.90

if.then.87:                                       ; preds = %land.lhs.true.81
  %66 = load i32*, i32** %face.addr, align 8
  store i32 2, i32* %66, align 4
  %67 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr88 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %67, i32 0, i32 12
  %68 = load i64, i64* %curr88, align 8
  %add89 = add i64 %68, 6
  store i64 %add89, i64* %curr88, align 8
  br label %if.end.297

if.else.90:                                       ; preds = %land.lhs.true.81, %land.lhs.true.76, %land.lhs.true.70, %land.lhs.true.65, %if.else
  %69 = load i8, i8* %c, align 1
  %conv91 = zext i8 %69 to i32
  %70 = load i8*, i8** %input, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %71 to i32
  %cmp94 = icmp eq i32 %conv91, %conv93
  br i1 %cmp94, label %land.lhs.true.96, label %if.else.110

land.lhs.true.96:                                 ; preds = %if.else.90
  %72 = load i8*, i8** %input, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %72, i64 1
  %73 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %73 to i32
  %cmp99 = icmp eq i32 8, %conv98
  br i1 %cmp99, label %land.lhs.true.101, label %if.else.110

land.lhs.true.101:                                ; preds = %land.lhs.true.96
  %74 = load i8, i8* %c, align 1
  %conv102 = zext i8 %74 to i32
  %75 = load i8*, i8** %input, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %75, i64 2
  %76 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %76 to i32
  %cmp105 = icmp eq i32 %conv102, %conv104
  br i1 %cmp105, label %if.then.107, label %if.else.110

if.then.107:                                      ; preds = %land.lhs.true.101
  %77 = load i32*, i32** %face.addr, align 8
  store i32 2, i32* %77, align 4
  %78 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr108 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %78, i32 0, i32 12
  %79 = load i64, i64* %curr108, align 8
  %add109 = add i64 %79, 4
  store i64 %add109, i64* %curr108, align 8
  br label %if.end.296

if.else.110:                                      ; preds = %land.lhs.true.101, %land.lhs.true.96, %if.else.90
  %80 = load i8, i8* %c, align 1
  %conv111 = zext i8 %80 to i32
  %81 = load i8*, i8** %input, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %81, i64 0
  %82 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %82 to i32
  %cmp114 = icmp eq i32 %conv111, %conv113
  br i1 %cmp114, label %if.then.116, label %if.else.119

if.then.116:                                      ; preds = %if.else.110
  %83 = load i32*, i32** %face.addr, align 8
  store i32 2, i32* %83, align 4
  %84 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr117 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %84, i32 0, i32 12
  %85 = load i64, i64* %curr117, align 8
  %add118 = add i64 %85, 2
  store i64 %add118, i64* %curr117, align 8
  br label %if.end.295

if.else.119:                                      ; preds = %if.else.110
  %86 = load i8, i8* %c, align 1
  %conv120 = zext i8 %86 to i32
  %cmp121 = icmp eq i32 %conv120, 95
  br i1 %cmp121, label %if.then.123, label %if.else.165

if.then.123:                                      ; preds = %if.else.119
  %87 = load i8*, i8** %input, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %87, i64 0
  %88 = load i8, i8* %arrayidx124, align 1
  store i8 %88, i8* %c2, align 1
  %89 = load i8*, i8** %input, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %89, i64 1
  %90 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %90 to i32
  %cmp127 = icmp eq i32 8, %conv126
  br i1 %cmp127, label %land.lhs.true.129, label %if.else.160

land.lhs.true.129:                                ; preds = %if.then.123
  %91 = load i8, i8* %c2, align 1
  %conv130 = sext i8 %91 to i32
  %92 = load i8*, i8** %input, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %92, i64 2
  %93 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %93 to i32
  %cmp133 = icmp eq i32 %conv130, %conv132
  br i1 %cmp133, label %land.lhs.true.135, label %if.else.160

land.lhs.true.135:                                ; preds = %land.lhs.true.129
  %94 = load i8*, i8** %input, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %94, i64 3
  %95 = load i8, i8* %arrayidx136, align 1
  %conv137 = zext i8 %95 to i32
  %cmp138 = icmp eq i32 8, %conv137
  br i1 %cmp138, label %land.lhs.true.140, label %if.else.160

land.lhs.true.140:                                ; preds = %land.lhs.true.135
  %96 = load i8, i8* %c2, align 1
  %conv141 = sext i8 %96 to i32
  %97 = load i8*, i8** %input, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %97, i64 4
  %98 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %98 to i32
  %cmp144 = icmp eq i32 %conv141, %conv143
  br i1 %cmp144, label %land.lhs.true.146, label %if.else.160

land.lhs.true.146:                                ; preds = %land.lhs.true.140
  %99 = load i8*, i8** %input, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %99, i64 5
  %100 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %100 to i32
  %cmp149 = icmp eq i32 8, %conv148
  br i1 %cmp149, label %land.lhs.true.151, label %if.else.160

land.lhs.true.151:                                ; preds = %land.lhs.true.146
  %101 = load i8, i8* %c2, align 1
  %conv152 = sext i8 %101 to i32
  %102 = load i8*, i8** %input, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %102, i64 6
  %103 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %103 to i32
  %cmp155 = icmp eq i32 %conv152, %conv154
  br i1 %cmp155, label %if.then.157, label %if.else.160

if.then.157:                                      ; preds = %land.lhs.true.151
  %104 = load i32*, i32** %face.addr, align 8
  store i32 4, i32* %104, align 4
  %105 = load i8, i8* %c2, align 1
  store i8 %105, i8* %c, align 1
  %106 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr158 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %106, i32 0, i32 12
  %107 = load i64, i64* %curr158, align 8
  %add159 = add i64 %107, 8
  store i64 %add159, i64* %curr158, align 8
  br label %if.end.164

if.else.160:                                      ; preds = %land.lhs.true.151, %land.lhs.true.146, %land.lhs.true.140, %land.lhs.true.135, %land.lhs.true.129, %if.then.123
  %108 = load i32*, i32** %face.addr, align 8
  store i32 1, i32* %108, align 4
  %109 = load i8*, i8** %input, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %109, i64 0
  %110 = load i8, i8* %arrayidx161, align 1
  store i8 %110, i8* %c, align 1
  %111 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr162 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %111, i32 0, i32 12
  %112 = load i64, i64* %curr162, align 8
  %add163 = add i64 %112, 2
  store i64 %add163, i64* %curr162, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.160, %if.then.157
  br label %if.end.294

if.else.165:                                      ; preds = %if.else.119
  %113 = load i8, i8* %c, align 1
  %conv166 = zext i8 %113 to i32
  %cmp167 = icmp eq i32 111, %conv166
  br i1 %cmp167, label %land.lhs.true.169, label %lor.lhs.false

land.lhs.true.169:                                ; preds = %if.else.165
  %114 = load i8*, i8** %input, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %114, i64 0
  %115 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %115 to i32
  %cmp172 = icmp eq i32 43, %conv171
  br i1 %cmp172, label %if.then.182, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.169, %if.else.165
  %116 = load i8, i8* %c, align 1
  %conv174 = zext i8 %116 to i32
  %cmp175 = icmp eq i32 43, %conv174
  br i1 %cmp175, label %land.lhs.true.177, label %if.else.185

land.lhs.true.177:                                ; preds = %lor.lhs.false
  %117 = load i8*, i8** %input, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %117, i64 0
  %118 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %118 to i32
  %cmp180 = icmp eq i32 111, %conv179
  br i1 %cmp180, label %if.then.182, label %if.else.185

if.then.182:                                      ; preds = %land.lhs.true.177, %land.lhs.true.169
  %119 = load i32*, i32** %face.addr, align 8
  store i32 6, i32* %119, align 4
  %120 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr183 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %120, i32 0, i32 12
  %121 = load i64, i64* %curr183, align 8
  %add184 = add i64 %121, 2
  store i64 %add184, i64* %curr183, align 8
  store i8 -59, i8* %c, align 1
  br label %if.end.293

if.else.185:                                      ; preds = %land.lhs.true.177, %lor.lhs.false
  %122 = load i8, i8* %c, align 1
  %conv186 = zext i8 %122 to i32
  %cmp187 = icmp eq i32 99, %conv186
  br i1 %cmp187, label %land.lhs.true.189, label %if.else.197

land.lhs.true.189:                                ; preds = %if.else.185
  %123 = load i8*, i8** %input, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %123, i64 0
  %124 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %124 to i32
  %cmp192 = icmp eq i32 79, %conv191
  br i1 %cmp192, label %if.then.194, label %if.else.197

if.then.194:                                      ; preds = %land.lhs.true.189
  %125 = load i32*, i32** %face.addr, align 8
  store i32 6, i32* %125, align 4
  %126 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr195 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %126, i32 0, i32 12
  %127 = load i64, i64* %curr195, align 8
  %add196 = add i64 %127, 2
  store i64 %add196, i64* %curr195, align 8
  store i8 -29, i8* %c, align 1
  br label %if.end.292

if.else.197:                                      ; preds = %land.lhs.true.189, %if.else.185
  %128 = load i8, i8* %c, align 1
  %conv198 = zext i8 %128 to i32
  %cmp199 = icmp eq i32 43, %conv198
  br i1 %cmp199, label %land.lhs.true.201, label %if.else.209

land.lhs.true.201:                                ; preds = %if.else.197
  %129 = load i8*, i8** %input, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %129, i64 0
  %130 = load i8, i8* %arrayidx202, align 1
  %conv203 = zext i8 %130 to i32
  %cmp204 = icmp eq i32 95, %conv203
  br i1 %cmp204, label %if.then.206, label %if.else.209

if.then.206:                                      ; preds = %land.lhs.true.201
  %131 = load i32*, i32** %face.addr, align 8
  store i32 6, i32* %131, align 4
  %132 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr207 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %132, i32 0, i32 12
  %133 = load i64, i64* %curr207, align 8
  %add208 = add i64 %133, 2
  store i64 %add208, i64* %curr207, align 8
  store i8 -79, i8* %c, align 1
  br label %if.end.291

if.else.209:                                      ; preds = %land.lhs.true.201, %if.else.197
  %134 = load i8, i8* %c, align 1
  %conv210 = zext i8 %134 to i32
  %cmp211 = icmp eq i32 126, %conv210
  br i1 %cmp211, label %land.lhs.true.213, label %if.else.231

land.lhs.true.213:                                ; preds = %if.else.209
  %135 = load i8*, i8** %input, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %135, i64 0
  %136 = load i8, i8* %arrayidx214, align 1
  %conv215 = zext i8 %136 to i32
  %cmp216 = icmp eq i32 62, %conv215
  br i1 %cmp216, label %land.lhs.true.218, label %if.else.231

land.lhs.true.218:                                ; preds = %land.lhs.true.213
  %137 = load i8*, i8** %input, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %137, i64 1
  %138 = load i8, i8* %arrayidx219, align 1
  %conv220 = zext i8 %138 to i32
  %cmp221 = icmp eq i32 8, %conv220
  br i1 %cmp221, label %land.lhs.true.223, label %if.else.231

land.lhs.true.223:                                ; preds = %land.lhs.true.218
  %139 = load i8*, i8** %input, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %139, i64 2
  %140 = load i8, i8* %arrayidx224, align 1
  %conv225 = zext i8 %140 to i32
  %cmp226 = icmp eq i32 95, %conv225
  br i1 %cmp226, label %if.then.228, label %if.else.231

if.then.228:                                      ; preds = %land.lhs.true.223
  %141 = load i32*, i32** %face.addr, align 8
  store i32 6, i32* %141, align 4
  %142 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr229 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %142, i32 0, i32 12
  %143 = load i64, i64* %curr229, align 8
  %add230 = add i64 %143, 4
  store i64 %add230, i64* %curr229, align 8
  store i8 -77, i8* %c, align 1
  br label %if.end.290

if.else.231:                                      ; preds = %land.lhs.true.223, %land.lhs.true.218, %land.lhs.true.213, %if.else.209
  %144 = load i8, i8* %c, align 1
  %conv232 = zext i8 %144 to i32
  %cmp233 = icmp eq i32 126, %conv232
  br i1 %cmp233, label %land.lhs.true.235, label %if.else.253

land.lhs.true.235:                                ; preds = %if.else.231
  %145 = load i8*, i8** %input, align 8
  %arrayidx236 = getelementptr inbounds i8, i8* %145, i64 0
  %146 = load i8, i8* %arrayidx236, align 1
  %conv237 = zext i8 %146 to i32
  %cmp238 = icmp eq i32 60, %conv237
  br i1 %cmp238, label %land.lhs.true.240, label %if.else.253

land.lhs.true.240:                                ; preds = %land.lhs.true.235
  %147 = load i8*, i8** %input, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %147, i64 1
  %148 = load i8, i8* %arrayidx241, align 1
  %conv242 = zext i8 %148 to i32
  %cmp243 = icmp eq i32 8, %conv242
  br i1 %cmp243, label %land.lhs.true.245, label %if.else.253

land.lhs.true.245:                                ; preds = %land.lhs.true.240
  %149 = load i8*, i8** %input, align 8
  %arrayidx246 = getelementptr inbounds i8, i8* %149, i64 2
  %150 = load i8, i8* %arrayidx246, align 1
  %conv247 = zext i8 %150 to i32
  %cmp248 = icmp eq i32 95, %conv247
  br i1 %cmp248, label %if.then.250, label %if.else.253

if.then.250:                                      ; preds = %land.lhs.true.245
  %151 = load i32*, i32** %face.addr, align 8
  store i32 6, i32* %151, align 4
  %152 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr251 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %152, i32 0, i32 12
  %153 = load i64, i64* %curr251, align 8
  %add252 = add i64 %153, 4
  store i64 %add252, i64* %curr251, align 8
  store i8 -93, i8* %c, align 1
  br label %if.end.289

if.else.253:                                      ; preds = %land.lhs.true.245, %land.lhs.true.240, %land.lhs.true.235, %if.else.231
  %154 = load i8*, i8** %input, align 8
  %arrayidx254 = getelementptr inbounds i8, i8* %154, i64 0
  %155 = load i8, i8* %arrayidx254, align 1
  %conv255 = zext i8 %155 to i32
  %cmp256 = icmp eq i32 95, %conv255
  br i1 %cmp256, label %if.then.258, label %if.else.261

if.then.258:                                      ; preds = %if.else.253
  %156 = load i32*, i32** %face.addr, align 8
  store i32 1, i32* %156, align 4
  %157 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr259 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %157, i32 0, i32 12
  %158 = load i64, i64* %curr259, align 8
  %add260 = add i64 %158, 2
  store i64 %add260, i64* %curr259, align 8
  br label %if.end.288

if.else.261:                                      ; preds = %if.else.253
  %159 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs262 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %159, i32 0, i32 68
  %160 = load %struct.darray*, %struct.darray** %jobs262, align 8
  %len263 = getelementptr inbounds %struct.darray, %struct.darray* %160, i32 0, i32 5
  %161 = load i64, i64* %len263, align 8
  %sub264 = sub i64 %161, 1
  %162 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs265 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %162, i32 0, i32 68
  %163 = load %struct.darray*, %struct.darray** %jobs265, align 8
  %content266 = getelementptr inbounds %struct.darray, %struct.darray* %163, i32 0, i32 6
  %164 = load i8**, i8*** %content266, align 8
  %arrayidx267 = getelementptr inbounds i8*, i8** %164, i64 %sub264
  %165 = load i8*, i8** %arrayidx267, align 8
  %166 = bitcast i8* %165 to %struct.file_job*
  %lines268 = getelementptr inbounds %struct.file_job, %struct.file_job* %166, i32 0, i32 17
  %167 = load i32, i32* %lines268, align 4
  %add269 = add nsw i32 %167, 3
  %rem = srem i32 %add269, 66
  %cmp270 = icmp eq i32 %rem, 0
  br i1 %cmp270, label %if.then.284, label %lor.lhs.false.272

lor.lhs.false.272:                                ; preds = %if.else.261
  %168 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs273 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %168, i32 0, i32 68
  %169 = load %struct.darray*, %struct.darray** %jobs273, align 8
  %len274 = getelementptr inbounds %struct.darray, %struct.darray* %169, i32 0, i32 5
  %170 = load i64, i64* %len274, align 8
  %sub275 = sub i64 %170, 1
  %171 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs276 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %171, i32 0, i32 68
  %172 = load %struct.darray*, %struct.darray** %jobs276, align 8
  %content277 = getelementptr inbounds %struct.darray, %struct.darray* %172, i32 0, i32 6
  %173 = load i8**, i8*** %content277, align 8
  %arrayidx278 = getelementptr inbounds i8*, i8** %173, i64 %sub275
  %174 = load i8*, i8** %arrayidx278, align 8
  %175 = bitcast i8* %174 to %struct.file_job*
  %lines279 = getelementptr inbounds %struct.file_job, %struct.file_job* %175, i32 0, i32 17
  %176 = load i32, i32* %lines279, align 4
  %sub280 = sub nsw i32 %176, 4
  %rem281 = srem i32 %sub280, 66
  %cmp282 = icmp eq i32 %rem281, 0
  br i1 %cmp282, label %if.then.284, label %if.end.287

if.then.284:                                      ; preds = %lor.lhs.false.272, %if.else.261
  %177 = load %struct.buffer_s*, %struct.buffer_s** %buffer.addr, align 8
  %curr285 = getelementptr inbounds %struct.buffer_s, %struct.buffer_s* %177, i32 0, i32 12
  %178 = load i64, i64* %curr285, align 8
  %add286 = add i64 %178, 2
  store i64 %add286, i64* %curr285, align 8
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.284, %lor.lhs.false.272
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.then.258
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %if.then.250
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %if.then.228
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.then.206
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.291, %if.then.194
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %if.then.182
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.end.164
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %if.then.116
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.then.107
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.then.87
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %if.then.58
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %if.end.7
  %179 = load i8, i8* %c, align 1
  %conv300 = zext i8 %179 to i32
  store i32 %conv300, i32* %retval
  br label %return

return:                                           ; preds = %if.end.299, %if.then.6
  %180 = load i32, i32* %retval
  ret i32 %180
}

declare void @ps_print_char(%struct.a2ps_job*, i32, i32) #1

declare void @buffer_get(%struct.buffer_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
