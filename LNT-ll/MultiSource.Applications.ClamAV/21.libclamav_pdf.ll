; ModuleID = './MultiSource.Applications.ClamAV/21.libclamav_pdf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.table = type { %struct.tableEntry*, %struct.tableEntry*, i32 }
%struct.tableEntry = type { i8*, i32, %struct.tableEntry* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"in cli_pdf(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cli_pdf: scanning %lu bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%PDF-1.\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%%EOF\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"trailer\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Encrypt\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Encrypted PDF files not yet supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"xref\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"endobj\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"cli_pdf: Object number missing\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"cli_pdf: Generation number missing\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Indirect object missing \22obj\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"No matching endobj\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Length \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" 0 R\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Length is in indirect obj %ld\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"\0A%ld 0 obj\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"length in '%s' %ld\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Couldn't find '%s'\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Length2 \00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Predictor \00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"FlateDecode\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"ASCII85Decode\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"Embedded fonts not yet supported\0A\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"Predictor %d not honoured for embedded image\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"endstream\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"endstream\0D\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"No endstream\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"%s/pdfXXXXXX\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"cli_pdf: can't create temporary file %s: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"Empty stream\0A\00", align 1
@.str.33 = private unnamed_addr constant [63 x i8] c"cli_pdf: Incorrect Length field in file attempting to recover\0A\00", align 1
@.str.34 = private unnamed_addr constant [62 x i8] c"length %ld, calculated_streamlen %ld isFlate %d isASCII85 %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"cli_pdf: writing %lu bytes from the stream\0A\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"cli_pdf: not scanning duplicate embedded file '%s'\0A\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"cli_pdf: extracted file %d to %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"cli_pdf: number of files exceeded %u\0A\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"cli_pdf: returning %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"Bad compression in flate stream\0A\00", align 1
@.str.41 = private unnamed_addr constant [54 x i8] c"cli_pdf: Bad compressed block length in flate stream\0A\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"cli_pdf: flatedecode %lu bytes\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"cli_pdf: flatedecode len == 0\0A\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"cli_pdf: inflateInit failed\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"cli_pdf: flatedecode size exceeded (%lu)\0A\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"PDF.ExceededFileSize\00", align 1
@.str.48 = private unnamed_addr constant [71 x i8] c"pdf: after writing %lu bytes, got error \22%s\22 inflating PDF attachment\0A\00", align 1
@.str.49 = private unnamed_addr constant [69 x i8] c"pdf: after writing %lu bytes, got error %d inflating PDF attachment\0A\00", align 1
@.str.50 = private unnamed_addr constant [56 x i8] c"cli_pdf: flatedecode in=%lu out=%lu ratio %lu (max %u)\0A\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"cli_pdf: flatedecode Max ratio reached\0A\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"Oversized.PDF\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"~>\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"ascii85decode: no EOF marker found\0A\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"cli_pdf: ascii85decode %lu bytes\0A\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"ascii85decode: unexpected 'z'\0A\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"ascii85decode: quintet %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"ascii85Decode: only 1 byte in last quintet\0A\00", align 1
@.str.59 = private unnamed_addr constant [48 x i8] c"ascii85Decode: invalid character 0x%x, len %lu\0A\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_pdf(i8* %dir, i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca i8*, align 8
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %size = alloca i64, align 8
  %bytesleft = alloca i64, align 8
  %trailerlength = alloca i64, align 8
  %buf = alloca i8*, align 8
  %alloced = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %trailerstart = alloca i8*, align 8
  %xrefstart = alloca i8*, align 8
  %limits = alloca %struct.cl_limits*, align 8
  %md5table = alloca %struct.table*, align 8
  %printed_predictor_message = alloca i32, align 4
  %printed_embedded_font_message = alloca i32, align 4
  %rc = alloca i32, align 4
  %files = alloca i32, align 4
  %statb = alloca %struct.stat, align 8
  %is_ascii85decode = alloca i32, align 4
  %is_flatedecode = alloca i32, align 4
  %fout = alloca i32, align 4
  %len = alloca i32, align 4
  %has_cr = alloca i32, align 4
  %objstart = alloca i8*, align 8
  %objend = alloca i8*, align 8
  %streamstart = alloca i8*, align 8
  %streamend = alloca i8*, align 8
  %md5digest = alloca i8*, align 8
  %length = alloca i64, align 8
  %objlen = alloca i64, align 8
  %real_streamlen = alloca i64, align 8
  %calculated_streamlen = alloca i64, align 8
  %is_embedded_font = alloca i32, align 4
  %predictor = alloca i32, align 4
  %fullname = alloca [257 x i8], align 16
  %r = alloca i8*, align 8
  %b = alloca [14 x i8], align 1
  %tmpbuf = alloca i8*, align 8
  %ret = alloca i32, align 4
  %t = alloca i8*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %0 = load i8*, i8** %dir.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* %0)
  %1 = load i32, i32* %desc.addr, align 4
  %call = call i32 @fstat(i32 %1, %struct.stat* %statb) #3
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -115, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 8
  %2 = load i64, i64* %st_size, align 8
  store i64 %2, i64* %size, align 8
  %3 = load i64, i64* %size, align 8
  %cmp1 = icmp eq i64 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i64, i64* %size, align 8
  %cmp4 = icmp sle i64 %4, 7
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 -124, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %5 = load i64, i64* %size, align 8
  %6 = load i32, i32* %desc.addr, align 4
  %call7 = call i8* @mmap(i8* null, i64 %5, i32 1, i32 2, i32 %6, i64 0) #3
  store i8* %call7, i8** %buf, align 8
  store i8* %call7, i8** %p, align 8
  %7 = load i8*, i8** %buf, align 8
  %cmp8 = icmp eq i8* %7, inttoptr (i64 -1 to i8*)
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -114, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %8 = load i64, i64* %size, align 8
  %call11 = call i8* @cli_malloc(i64 %8)
  store i8* %call11, i8** %alloced, align 8
  %9 = load i8*, i8** %alloced, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %10 = load i8*, i8** %alloced, align 8
  %11 = load i8*, i8** %buf, align 8
  %12 = load i64, i64* %size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 %12, i32 1, i1 false)
  %13 = load i8*, i8** %buf, align 8
  %14 = load i64, i64* %size, align 8
  %call13 = call i32 @munmap(i8* %13, i64 %14) #3
  %15 = load i8*, i8** %alloced, align 8
  store i8* %15, i8** %p, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %16 = load i64, i64* %size, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i64 %16)
  %17 = load i8*, i8** %p, align 8
  %call15 = call i32 @memcmp(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i64 7) #6
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.14
  %18 = load i8*, i8** %alloced, align 8
  %tobool18 = icmp ne i8* %18, null
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.17
  %19 = load i8*, i8** %alloced, align 8
  call void @free(i8* %19) #3
  br label %if.end.21

if.else:                                          ; preds = %if.then.17
  %20 = load i8*, i8** %buf, align 8
  %21 = load i64, i64* %size, align 8
  %call20 = call i32 @munmap(i8* %20, i64 %21) #3
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.19
  store i32 -124, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.14
  %22 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 6
  store i8* %arrayidx, i8** %p, align 8
  %23 = load i64, i64* %size, align 8
  %sub = sub nsw i64 %23, 6
  store i64 %sub, i64* %bytesleft, align 8
  %24 = load i64, i64* %bytesleft, align 8
  %sub23 = sub nsw i64 %24, 6
  %25 = load i8*, i8** %p, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %25, i64 %sub23
  store i8* %arrayidx24, i8** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %26 = load i8*, i8** %q, align 8
  %27 = load i8*, i8** %p, align 8
  %cmp25 = icmp ugt i8* %26, %27
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %q, align 8
  %call26 = call i32 @memcmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 5) #6
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body
  br label %for.end

if.end.29:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %29 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %incdec.ptr, i8** %q, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.28, %for.cond
  %30 = load i8*, i8** %q, align 8
  %31 = load i8*, i8** %p, align 8
  %cmp30 = icmp ule i8* %30, %31
  br i1 %cmp30, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %for.end
  %32 = load i8*, i8** %alloced, align 8
  %tobool32 = icmp ne i8* %32, null
  br i1 %tobool32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.then.31
  %33 = load i8*, i8** %alloced, align 8
  call void @free(i8* %33) #3
  br label %if.end.36

if.else.34:                                       ; preds = %if.then.31
  %34 = load i8*, i8** %buf, align 8
  %35 = load i64, i64* %size, align 8
  %call35 = call i32 @munmap(i8* %34, i64 %35) #3
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  store i32 -124, i32* %retval
  br label %return

if.end.37:                                        ; preds = %for.end
  %36 = load i8*, i8** %q, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %36, i64 -7
  store i8* %arrayidx38, i8** %trailerstart, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.46, %if.end.37
  %37 = load i8*, i8** %trailerstart, align 8
  %38 = load i8*, i8** %p, align 8
  %cmp40 = icmp ugt i8* %37, %38
  br i1 %cmp40, label %for.body.41, label %for.end.48

for.body.41:                                      ; preds = %for.cond.39
  %39 = load i8*, i8** %trailerstart, align 8
  %call42 = call i32 @memcmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 7) #6
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.body.41
  br label %for.end.48

if.end.45:                                        ; preds = %for.body.41
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %40 = load i8*, i8** %trailerstart, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %40, i32 -1
  store i8* %incdec.ptr47, i8** %trailerstart, align 8
  br label %for.cond.39

for.end.48:                                       ; preds = %if.then.44, %for.cond.39
  %41 = load i8*, i8** %q, align 8
  %42 = load i8*, i8** %trailerstart, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %trailerlength, align 8
  %43 = load i8*, i8** %trailerstart, align 8
  %44 = load i64, i64* %trailerlength, align 8
  %call49 = call i8* @cli_pmemstr(i8* %43, i64 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i64 7)
  %tobool50 = icmp ne i8* %call49, null
  br i1 %tobool50, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %for.end.48
  %45 = load i8*, i8** %alloced, align 8
  %tobool52 = icmp ne i8* %45, null
  br i1 %tobool52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.then.51
  %46 = load i8*, i8** %alloced, align 8
  call void @free(i8* %46) #3
  br label %if.end.56

if.else.54:                                       ; preds = %if.then.51
  %47 = load i8*, i8** %buf, align 8
  %48 = load i64, i64* %size, align 8
  %call55 = call i32 @munmap(i8* %47, i64 %48) #3
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.53
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.57:                                        ; preds = %for.end.48
  %49 = load i8*, i8** %trailerstart, align 8
  store i8* %49, i8** %xrefstart, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.74, %if.end.57
  %50 = load i8*, i8** %xrefstart, align 8
  %51 = load i8*, i8** %p, align 8
  %cmp59 = icmp ugt i8* %50, %51
  br i1 %cmp59, label %for.body.60, label %for.end.76

for.body.60:                                      ; preds = %for.cond.58
  %52 = load i8*, i8** %xrefstart, align 8
  %call61 = call i32 @memcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4) #6
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then.63, label %if.end.73

if.then.63:                                       ; preds = %for.body.60
  %53 = load i8*, i8** %xrefstart, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %53, i64 -1
  %54 = load i8, i8* %arrayidx64, align 1
  %conv = sext i8 %54 to i32
  %cmp65 = icmp eq i32 %conv, 10
  br i1 %cmp65, label %if.then.71, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.63
  %55 = load i8*, i8** %xrefstart, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %55, i64 -1
  %56 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %56 to i32
  %cmp69 = icmp eq i32 %conv68, 13
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %lor.lhs.false, %if.then.63
  br label %for.end.76

if.end.72:                                        ; preds = %lor.lhs.false
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %for.body.60
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %57 = load i8*, i8** %xrefstart, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %57, i32 -1
  store i8* %incdec.ptr75, i8** %xrefstart, align 8
  br label %for.cond.58

for.end.76:                                       ; preds = %if.then.71, %for.cond.58
  %58 = load i8*, i8** %xrefstart, align 8
  %59 = load i8*, i8** %p, align 8
  %cmp77 = icmp eq i8* %58, %59
  br i1 %cmp77, label %if.then.79, label %if.end.85

if.then.79:                                       ; preds = %for.end.76
  %60 = load i8*, i8** %alloced, align 8
  %tobool80 = icmp ne i8* %60, null
  br i1 %tobool80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %if.then.79
  %61 = load i8*, i8** %alloced, align 8
  call void @free(i8* %61) #3
  br label %if.end.84

if.else.82:                                       ; preds = %if.then.79
  %62 = load i8*, i8** %buf, align 8
  %63 = load i64, i64* %size, align 8
  %call83 = call i32 @munmap(i8* %62, i64 %63) #3
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.82, %if.then.81
  store i32 -124, i32* %retval
  br label %return

if.end.85:                                        ; preds = %for.end.76
  store i32 0, i32* %printed_embedded_font_message, align 4
  store i32 0, i32* %printed_predictor_message, align 4
  %call86 = call %struct.table* @tableCreate()
  store %struct.table* %call86, %struct.table** %md5table, align 8
  store i32 0, i32* %rc, align 4
  store i32 0, i32* %files, align 4
  %64 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits87 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %64, i32 0, i32 4
  %65 = load %struct.cl_limits*, %struct.cl_limits** %limits87, align 8
  store %struct.cl_limits* %65, %struct.cl_limits** %limits, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.462, %if.then.417, %if.then.406, %if.then.398, %if.then.379, %if.end.314, %if.end.307, %if.then.168, %if.then.111, %if.end.85
  %66 = load i8*, i8** %p, align 8
  %67 = load i8*, i8** %xrefstart, align 8
  %cmp88 = icmp ult i8* %66, %67
  br i1 %cmp88, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %68 = load i32, i32* %rc, align 4
  %cmp90 = icmp eq i32 %68, 0
  br i1 %cmp90, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %69 = load i8*, i8** %p, align 8
  %70 = load i64, i64* %bytesleft, align 8
  %call92 = call i8* @pdf_nextobject(i8* %69, i64 %70)
  store i8* %call92, i8** %q, align 8
  %cmp93 = icmp ne i8* %call92, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %71 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp93, %land.rhs ]
  br i1 %71, label %while.body, label %while.end.463

while.body:                                       ; preds = %land.end
  %72 = load i8*, i8** %q, align 8
  %73 = load i8*, i8** %xrefstart, align 8
  %cmp95 = icmp eq i8* %72, %73
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %while.body
  br label %while.end.463

if.end.98:                                        ; preds = %while.body
  %74 = load i8*, i8** %q, align 8
  %call99 = call i32 @memcmp(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4) #6
  %cmp100 = icmp eq i32 %call99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.98
  br label %while.end.463

if.end.103:                                       ; preds = %if.end.98
  %75 = load i8*, i8** %q, align 8
  %76 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast104 = ptrtoint i8* %75 to i64
  %sub.ptr.rhs.cast105 = ptrtoint i8* %76 to i64
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast105
  %77 = load i64, i64* %bytesleft, align 8
  %sub107 = sub nsw i64 %77, %sub.ptr.sub106
  store i64 %sub107, i64* %bytesleft, align 8
  %78 = load i8*, i8** %q, align 8
  store i8* %78, i8** %p, align 8
  %79 = load i8*, i8** %q, align 8
  %call108 = call i32 @memcmp(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i64 6) #6
  %cmp109 = icmp eq i32 %call108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.103
  br label %while.cond

if.end.112:                                       ; preds = %if.end.103
  %80 = load i8*, i8** %q, align 8
  %81 = load i8, i8* %80, align 1
  %conv113 = sext i8 %81 to i32
  %idxprom = sext i32 %conv113 to i64
  %call114 = call i16** @__ctype_b_loc() #7
  %82 = load i16*, i16** %call114, align 8
  %arrayidx115 = getelementptr inbounds i16, i16* %82, i64 %idxprom
  %83 = load i16, i16* %arrayidx115, align 2
  %conv116 = zext i16 %83 to i32
  %and = and i32 %conv116, 2048
  %tobool117 = icmp ne i32 %and, 0
  br i1 %tobool117, label %if.end.119, label %if.then.118

if.then.118:                                      ; preds = %if.end.112
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  store i32 -124, i32* %rc, align 4
  br label %while.end.463

if.end.119:                                       ; preds = %if.end.112
  %84 = load i8*, i8** %p, align 8
  %85 = load i64, i64* %bytesleft, align 8
  %call120 = call i8* @pdf_nextobject(i8* %84, i64 %85)
  store i8* %call120, i8** %q, align 8
  %86 = load i8*, i8** %q, align 8
  %cmp121 = icmp eq i8* %86, null
  br i1 %cmp121, label %if.then.131, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %if.end.119
  %87 = load i8*, i8** %q, align 8
  %88 = load i8, i8* %87, align 1
  %conv124 = sext i8 %88 to i32
  %idxprom125 = sext i32 %conv124 to i64
  %call126 = call i16** @__ctype_b_loc() #7
  %89 = load i16*, i16** %call126, align 8
  %arrayidx127 = getelementptr inbounds i16, i16* %89, i64 %idxprom125
  %90 = load i16, i16* %arrayidx127, align 2
  %conv128 = zext i16 %90 to i32
  %and129 = and i32 %conv128, 2048
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %if.end.132, label %if.then.131

if.then.131:                                      ; preds = %lor.lhs.false.123, %if.end.119
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0))
  store i32 -124, i32* %rc, align 4
  br label %while.end.463

if.end.132:                                       ; preds = %lor.lhs.false.123
  %91 = load i8*, i8** %q, align 8
  %92 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast133 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast134 = ptrtoint i8* %92 to i64
  %sub.ptr.sub135 = sub i64 %sub.ptr.lhs.cast133, %sub.ptr.rhs.cast134
  %93 = load i64, i64* %bytesleft, align 8
  %sub136 = sub nsw i64 %93, %sub.ptr.sub135
  store i64 %sub136, i64* %bytesleft, align 8
  %94 = load i8*, i8** %q, align 8
  store i8* %94, i8** %p, align 8
  %95 = load i8*, i8** %p, align 8
  %96 = load i64, i64* %bytesleft, align 8
  %call137 = call i8* @pdf_nextobject(i8* %95, i64 %96)
  store i8* %call137, i8** %q, align 8
  %97 = load i8*, i8** %q, align 8
  %cmp138 = icmp eq i8* %97, null
  br i1 %cmp138, label %if.then.144, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %if.end.132
  %98 = load i8*, i8** %q, align 8
  %call141 = call i32 @memcmp(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i64 3) #6
  %cmp142 = icmp ne i32 %call141, 0
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %lor.lhs.false.140, %if.end.132
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  store i32 -124, i32* %rc, align 4
  br label %while.end.463

if.end.145:                                       ; preds = %lor.lhs.false.140
  %99 = load i8*, i8** %q, align 8
  %100 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast146 = ptrtoint i8* %99 to i64
  %sub.ptr.rhs.cast147 = ptrtoint i8* %100 to i64
  %sub.ptr.sub148 = sub i64 %sub.ptr.lhs.cast146, %sub.ptr.rhs.cast147
  %add = add nsw i64 %sub.ptr.sub148, 3
  %101 = load i64, i64* %bytesleft, align 8
  %sub149 = sub nsw i64 %101, %add
  store i64 %sub149, i64* %bytesleft, align 8
  %102 = load i8*, i8** %q, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %102, i64 3
  store i8* %arrayidx150, i8** %p, align 8
  store i8* %arrayidx150, i8** %objstart, align 8
  %103 = load i8*, i8** %p, align 8
  %104 = load i64, i64* %bytesleft, align 8
  %call151 = call i8* @cli_pmemstr(i8* %103, i64 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i64 6)
  store i8* %call151, i8** %objend, align 8
  %105 = load i8*, i8** %objend, align 8
  %cmp152 = icmp eq i8* %105, null
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.145
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  br label %while.end.463

if.end.155:                                       ; preds = %if.end.145
  %106 = load i8*, i8** %objend, align 8
  %107 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast156 = ptrtoint i8* %106 to i64
  %sub.ptr.rhs.cast157 = ptrtoint i8* %107 to i64
  %sub.ptr.sub158 = sub i64 %sub.ptr.lhs.cast156, %sub.ptr.rhs.cast157
  %add159 = add nsw i64 %sub.ptr.sub158, 6
  %108 = load i64, i64* %bytesleft, align 8
  %sub160 = sub nsw i64 %108, %add159
  store i64 %sub160, i64* %bytesleft, align 8
  %109 = load i8*, i8** %objend, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %109, i64 6
  store i8* %arrayidx161, i8** %p, align 8
  %110 = load i8*, i8** %objend, align 8
  %111 = load i8*, i8** %objstart, align 8
  %sub.ptr.lhs.cast162 = ptrtoint i8* %110 to i64
  %sub.ptr.rhs.cast163 = ptrtoint i8* %111 to i64
  %sub.ptr.sub164 = sub i64 %sub.ptr.lhs.cast162, %sub.ptr.rhs.cast163
  store i64 %sub.ptr.sub164, i64* %objlen, align 8
  %112 = load i8*, i8** %objstart, align 8
  %113 = load i64, i64* %objlen, align 8
  %call165 = call i8* @cli_pmemstr(i8* %112, i64 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 6)
  store i8* %call165, i8** %streamstart, align 8
  %114 = load i8*, i8** %streamstart, align 8
  %cmp166 = icmp eq i8* %114, null
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.end.155
  br label %while.cond

if.end.169:                                       ; preds = %if.end.155
  store i32 0, i32* %is_flatedecode, align 4
  store i32 0, i32* %is_ascii85decode, align 4
  store i64 0, i64* %length, align 8
  store i32 0, i32* %is_embedded_font, align 4
  store i32 1, i32* %predictor, align 4
  %115 = load i8*, i8** %objstart, align 8
  store i8* %115, i8** %q, align 8
  br label %while.cond.170

while.cond.170:                                   ; preds = %if.end.301, %if.end.169
  %116 = load i8*, i8** %q, align 8
  %117 = load i8*, i8** %streamstart, align 8
  %cmp171 = icmp ult i8* %116, %117
  br i1 %cmp171, label %while.body.173, label %while.end.302

while.body.173:                                   ; preds = %while.cond.170
  %118 = load i8*, i8** %q, align 8
  %119 = load i8, i8* %118, align 1
  %conv174 = sext i8 %119 to i32
  %cmp175 = icmp eq i32 %conv174, 47
  br i1 %cmp175, label %if.then.177, label %if.end.293

if.then.177:                                      ; preds = %while.body.173
  %120 = load i8*, i8** %q, align 8
  %incdec.ptr178 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr178, i8** %q, align 8
  %call179 = call i32 @strncmp(i8* %incdec.ptr178, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i64 7) #6
  %cmp180 = icmp eq i32 %call179, 0
  br i1 %cmp180, label %if.then.182, label %if.else.252

if.then.182:                                      ; preds = %if.then.177
  %121 = load i8*, i8** %q, align 8
  %add.ptr = getelementptr inbounds i8, i8* %121, i64 7
  store i8* %add.ptr, i8** %q, align 8
  %122 = load i8*, i8** %q, align 8
  %call183 = call i32 @atoi(i8* %122) #6
  %conv184 = sext i32 %call183 to i64
  store i64 %conv184, i64* %length, align 8
  br label %while.cond.185

while.cond.185:                                   ; preds = %while.body.193, %if.then.182
  %123 = load i8*, i8** %q, align 8
  %124 = load i8, i8* %123, align 1
  %conv186 = sext i8 %124 to i32
  %idxprom187 = sext i32 %conv186 to i64
  %call188 = call i16** @__ctype_b_loc() #7
  %125 = load i16*, i16** %call188, align 8
  %arrayidx189 = getelementptr inbounds i16, i16* %125, i64 %idxprom187
  %126 = load i16, i16* %arrayidx189, align 2
  %conv190 = zext i16 %126 to i32
  %and191 = and i32 %conv190, 2048
  %tobool192 = icmp ne i32 %and191, 0
  br i1 %tobool192, label %while.body.193, label %while.end

while.body.193:                                   ; preds = %while.cond.185
  %127 = load i8*, i8** %q, align 8
  %incdec.ptr194 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr194, i8** %q, align 8
  br label %while.cond.185

while.end:                                        ; preds = %while.cond.185
  %128 = load i64, i64* %bytesleft, align 8
  %cmp195 = icmp sgt i64 %128, 11
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.250

land.lhs.true.197:                                ; preds = %while.end
  %129 = load i8*, i8** %q, align 8
  %call198 = call i32 @strncmp(i8* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i64 4) #6
  %cmp199 = icmp eq i32 %call198, 0
  br i1 %cmp199, label %if.then.201, label %if.end.250

if.then.201:                                      ; preds = %land.lhs.true.197
  %130 = load i8*, i8** %q, align 8
  %add.ptr202 = getelementptr inbounds i8, i8* %130, i64 4
  store i8* %add.ptr202, i8** %q, align 8
  %131 = load i64, i64* %length, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i64 %131)
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i32 0
  %132 = load i64, i64* %length, align 8
  %call203 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i64 %132) #3
  %arraydecay204 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i32 0
  %call205 = call i64 @strlen(i8* %arraydecay204) #6
  store i64 %call205, i64* %length, align 8
  %133 = load i8*, i8** %alloced, align 8
  %tobool206 = icmp ne i8* %133, null
  br i1 %tobool206, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.201
  %134 = load i8*, i8** %alloced, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.201
  %135 = load i8*, i8** %buf, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %134, %cond.true ], [ %135, %cond.false ]
  %136 = load i64, i64* %size, align 8
  %arraydecay207 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i32 0
  %137 = load i64, i64* %length, align 8
  %call208 = call i8* @cli_pmemstr(i8* %cond, i64 %136, i8* %arraydecay207, i64 %137)
  store i8* %call208, i8** %r, align 8
  %138 = load i8*, i8** %r, align 8
  %cmp209 = icmp eq i8* %138, null
  br i1 %cmp209, label %if.then.211, label %if.end.220

if.then.211:                                      ; preds = %cond.end
  %arrayidx212 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 0
  store i8 13, i8* %arrayidx212, align 1
  %139 = load i8*, i8** %alloced, align 8
  %tobool213 = icmp ne i8* %139, null
  br i1 %tobool213, label %cond.true.214, label %cond.false.215

cond.true.214:                                    ; preds = %if.then.211
  %140 = load i8*, i8** %alloced, align 8
  br label %cond.end.216

cond.false.215:                                   ; preds = %if.then.211
  %141 = load i8*, i8** %buf, align 8
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.215, %cond.true.214
  %cond217 = phi i8* [ %140, %cond.true.214 ], [ %141, %cond.false.215 ]
  %142 = load i64, i64* %size, align 8
  %arraydecay218 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i32 0
  %143 = load i64, i64* %length, align 8
  %call219 = call i8* @cli_pmemstr(i8* %cond217, i64 %142, i8* %arraydecay218, i64 %143)
  store i8* %call219, i8** %r, align 8
  br label %if.end.220

if.end.220:                                       ; preds = %cond.end.216, %cond.end
  %144 = load i8*, i8** %r, align 8
  %tobool221 = icmp ne i8* %144, null
  br i1 %tobool221, label %if.then.222, label %if.else.247

if.then.222:                                      ; preds = %if.end.220
  %145 = load i64, i64* %length, align 8
  %sub223 = sub i64 %145, 1
  %146 = load i8*, i8** %r, align 8
  %add.ptr224 = getelementptr inbounds i8, i8* %146, i64 %sub223
  store i8* %add.ptr224, i8** %r, align 8
  %147 = load i8*, i8** %r, align 8
  %148 = load i64, i64* %bytesleft, align 8
  %149 = load i8*, i8** %r, align 8
  %150 = load i8*, i8** %q, align 8
  %sub.ptr.lhs.cast225 = ptrtoint i8* %149 to i64
  %sub.ptr.rhs.cast226 = ptrtoint i8* %150 to i64
  %sub.ptr.sub227 = sub i64 %sub.ptr.lhs.cast225, %sub.ptr.rhs.cast226
  %sub228 = sub nsw i64 %148, %sub.ptr.sub227
  %call229 = call i8* @pdf_nextobject(i8* %147, i64 %sub228)
  store i8* %call229, i8** %r, align 8
  %151 = load i8*, i8** %r, align 8
  %tobool230 = icmp ne i8* %151, null
  br i1 %tobool230, label %if.then.231, label %if.end.246

if.then.231:                                      ; preds = %if.then.222
  %152 = load i8*, i8** %r, align 8
  %call232 = call i32 @atoi(i8* %152) #6
  %conv233 = sext i32 %call232 to i64
  store i64 %conv233, i64* %length, align 8
  br label %while.cond.234

while.cond.234:                                   ; preds = %while.body.242, %if.then.231
  %153 = load i8*, i8** %r, align 8
  %154 = load i8, i8* %153, align 1
  %conv235 = sext i8 %154 to i32
  %idxprom236 = sext i32 %conv235 to i64
  %call237 = call i16** @__ctype_b_loc() #7
  %155 = load i16*, i16** %call237, align 8
  %arrayidx238 = getelementptr inbounds i16, i16* %155, i64 %idxprom236
  %156 = load i16, i16* %arrayidx238, align 2
  %conv239 = zext i16 %156 to i32
  %and240 = and i32 %conv239, 2048
  %tobool241 = icmp ne i32 %and240, 0
  br i1 %tobool241, label %while.body.242, label %while.end.244

while.body.242:                                   ; preds = %while.cond.234
  %157 = load i8*, i8** %r, align 8
  %incdec.ptr243 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %incdec.ptr243, i8** %r, align 8
  br label %while.cond.234

while.end.244:                                    ; preds = %while.cond.234
  %arrayidx245 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 1
  %158 = load i64, i64* %length, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %arrayidx245, i64 %158)
  br label %if.end.246

if.end.246:                                       ; preds = %while.end.244, %if.then.222
  br label %if.end.249

if.else.247:                                      ; preds = %if.end.220
  %arrayidx248 = getelementptr inbounds [14 x i8], [14 x i8]* %b, i32 0, i64 1
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* %arrayidx248)
  br label %if.end.249

if.end.249:                                       ; preds = %if.else.247, %if.end.246
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %land.lhs.true.197, %while.end
  %159 = load i8*, i8** %q, align 8
  %incdec.ptr251 = getelementptr inbounds i8, i8* %159, i32 -1
  store i8* %incdec.ptr251, i8** %q, align 8
  br label %if.end.292

if.else.252:                                      ; preds = %if.then.177
  %160 = load i8*, i8** %q, align 8
  %call253 = call i32 @strncmp(i8* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i64 8) #6
  %cmp254 = icmp eq i32 %call253, 0
  br i1 %cmp254, label %if.then.256, label %if.else.257

if.then.256:                                      ; preds = %if.else.252
  store i32 1, i32* %is_embedded_font, align 4
  br label %if.end.291

if.else.257:                                      ; preds = %if.else.252
  %161 = load i8*, i8** %q, align 8
  %call258 = call i32 @strncmp(i8* %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i64 10) #6
  %cmp259 = icmp eq i32 %call258, 0
  br i1 %cmp259, label %if.then.261, label %if.else.276

if.then.261:                                      ; preds = %if.else.257
  %162 = load i8*, i8** %q, align 8
  %add.ptr262 = getelementptr inbounds i8, i8* %162, i64 10
  store i8* %add.ptr262, i8** %q, align 8
  %163 = load i8*, i8** %q, align 8
  %call263 = call i32 @atoi(i8* %163) #6
  store i32 %call263, i32* %predictor, align 4
  br label %while.cond.264

while.cond.264:                                   ; preds = %while.body.272, %if.then.261
  %164 = load i8*, i8** %q, align 8
  %165 = load i8, i8* %164, align 1
  %conv265 = sext i8 %165 to i32
  %idxprom266 = sext i32 %conv265 to i64
  %call267 = call i16** @__ctype_b_loc() #7
  %166 = load i16*, i16** %call267, align 8
  %arrayidx268 = getelementptr inbounds i16, i16* %166, i64 %idxprom266
  %167 = load i16, i16* %arrayidx268, align 2
  %conv269 = zext i16 %167 to i32
  %and270 = and i32 %conv269, 2048
  %tobool271 = icmp ne i32 %and270, 0
  br i1 %tobool271, label %while.body.272, label %while.end.274

while.body.272:                                   ; preds = %while.cond.264
  %168 = load i8*, i8** %q, align 8
  %incdec.ptr273 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %incdec.ptr273, i8** %q, align 8
  br label %while.cond.264

while.end.274:                                    ; preds = %while.cond.264
  %169 = load i8*, i8** %q, align 8
  %incdec.ptr275 = getelementptr inbounds i8, i8* %169, i32 -1
  store i8* %incdec.ptr275, i8** %q, align 8
  br label %if.end.290

if.else.276:                                      ; preds = %if.else.257
  %170 = load i8*, i8** %q, align 8
  %call277 = call i32 @strncmp(i8* %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i64 11) #6
  %cmp278 = icmp eq i32 %call277, 0
  br i1 %cmp278, label %if.then.280, label %if.else.282

if.then.280:                                      ; preds = %if.else.276
  store i32 1, i32* %is_flatedecode, align 4
  %171 = load i8*, i8** %q, align 8
  %add.ptr281 = getelementptr inbounds i8, i8* %171, i64 11
  store i8* %add.ptr281, i8** %q, align 8
  br label %if.end.289

if.else.282:                                      ; preds = %if.else.276
  %172 = load i8*, i8** %q, align 8
  %call283 = call i32 @strncmp(i8* %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i64 13) #6
  %cmp284 = icmp eq i32 %call283, 0
  br i1 %cmp284, label %if.then.286, label %if.end.288

if.then.286:                                      ; preds = %if.else.282
  store i32 1, i32* %is_ascii85decode, align 4
  %173 = load i8*, i8** %q, align 8
  %add.ptr287 = getelementptr inbounds i8, i8* %173, i64 13
  store i8* %add.ptr287, i8** %q, align 8
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.286, %if.else.282
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %if.then.280
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %while.end.274
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.then.256
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.291, %if.end.250
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %while.body.173
  %174 = load i8*, i8** %q, align 8
  %175 = load i8*, i8** %streamstart, align 8
  %176 = load i8*, i8** %q, align 8
  %sub.ptr.lhs.cast294 = ptrtoint i8* %175 to i64
  %sub.ptr.rhs.cast295 = ptrtoint i8* %176 to i64
  %sub.ptr.sub296 = sub i64 %sub.ptr.lhs.cast294, %sub.ptr.rhs.cast295
  %call297 = call i8* @pdf_nextobject(i8* %174, i64 %sub.ptr.sub296)
  store i8* %call297, i8** %q, align 8
  %177 = load i8*, i8** %q, align 8
  %cmp298 = icmp eq i8* %177, null
  br i1 %cmp298, label %if.then.300, label %if.end.301

if.then.300:                                      ; preds = %if.end.293
  br label %while.end.302

if.end.301:                                       ; preds = %if.end.293
  br label %while.cond.170

while.end.302:                                    ; preds = %if.then.300, %while.cond.170
  %178 = load i32, i32* %is_embedded_font, align 4
  %tobool303 = icmp ne i32 %178, 0
  br i1 %tobool303, label %if.then.304, label %if.end.308

if.then.304:                                      ; preds = %while.end.302
  %179 = load i32, i32* %printed_embedded_font_message, align 4
  %tobool305 = icmp ne i32 %179, 0
  br i1 %tobool305, label %if.end.307, label %if.then.306

if.then.306:                                      ; preds = %if.then.304
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i32 0, i32 0))
  store i32 1, i32* %printed_embedded_font_message, align 4
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.306, %if.then.304
  br label %while.cond

if.end.308:                                       ; preds = %while.end.302
  %180 = load i32, i32* %predictor, align 4
  %cmp309 = icmp sgt i32 %180, 1
  br i1 %cmp309, label %if.then.311, label %if.end.315

if.then.311:                                      ; preds = %if.end.308
  %181 = load i32, i32* %printed_predictor_message, align 4
  %tobool312 = icmp ne i32 %181, 0
  br i1 %tobool312, label %if.end.314, label %if.then.313

if.then.313:                                      ; preds = %if.then.311
  %182 = load i32, i32* %predictor, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i32 0, i32 0), i32 %182)
  store i32 1, i32* %printed_predictor_message, align 4
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.313, %if.then.311
  br label %while.cond

if.end.315:                                       ; preds = %if.end.308
  %183 = load i8*, i8** %streamstart, align 8
  %add.ptr316 = getelementptr inbounds i8, i8* %183, i64 6
  store i8* %add.ptr316, i8** %streamstart, align 8
  %184 = load i8*, i8** %objend, align 8
  %185 = load i8*, i8** %streamstart, align 8
  %sub.ptr.lhs.cast317 = ptrtoint i8* %184 to i64
  %sub.ptr.rhs.cast318 = ptrtoint i8* %185 to i64
  %sub.ptr.sub319 = sub i64 %sub.ptr.lhs.cast317, %sub.ptr.rhs.cast318
  %conv320 = trunc i64 %sub.ptr.sub319 to i32
  store i32 %conv320, i32* %len, align 4
  %186 = load i8*, i8** %streamstart, align 8
  %187 = load i32, i32* %len, align 4
  %conv321 = sext i32 %187 to i64
  %call322 = call i8* @pdf_nextlinestart(i8* %186, i64 %conv321)
  store i8* %call322, i8** %q, align 8
  %188 = load i8*, i8** %q, align 8
  %cmp323 = icmp eq i8* %188, null
  br i1 %cmp323, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %if.end.315
  br label %while.end.463

if.end.326:                                       ; preds = %if.end.315
  %189 = load i8*, i8** %q, align 8
  %190 = load i8*, i8** %streamstart, align 8
  %sub.ptr.lhs.cast327 = ptrtoint i8* %189 to i64
  %sub.ptr.rhs.cast328 = ptrtoint i8* %190 to i64
  %sub.ptr.sub329 = sub i64 %sub.ptr.lhs.cast327, %sub.ptr.rhs.cast328
  %conv330 = trunc i64 %sub.ptr.sub329 to i32
  %191 = load i32, i32* %len, align 4
  %sub331 = sub nsw i32 %191, %conv330
  store i32 %sub331, i32* %len, align 4
  %192 = load i8*, i8** %q, align 8
  store i8* %192, i8** %streamstart, align 8
  %193 = load i8*, i8** %streamstart, align 8
  %194 = load i32, i32* %len, align 4
  %conv332 = sext i32 %194 to i64
  %call333 = call i8* @cli_pmemstr(i8* %193, i64 %conv332, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i64 10)
  store i8* %call333, i8** %streamend, align 8
  %195 = load i8*, i8** %streamend, align 8
  %cmp334 = icmp eq i8* %195, null
  br i1 %cmp334, label %if.then.336, label %if.else.343

if.then.336:                                      ; preds = %if.end.326
  %196 = load i8*, i8** %streamstart, align 8
  %197 = load i32, i32* %len, align 4
  %conv337 = sext i32 %197 to i64
  %call338 = call i8* @cli_pmemstr(i8* %196, i64 %conv337, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i64 10)
  store i8* %call338, i8** %streamend, align 8
  %198 = load i8*, i8** %streamend, align 8
  %cmp339 = icmp eq i8* %198, null
  br i1 %cmp339, label %if.then.341, label %if.end.342

if.then.341:                                      ; preds = %if.then.336
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0))
  br label %while.end.463

if.end.342:                                       ; preds = %if.then.336
  store i32 1, i32* %has_cr, align 4
  br label %if.end.344

if.else.343:                                      ; preds = %if.end.326
  store i32 0, i32* %has_cr, align 4
  br label %if.end.344

if.end.344:                                       ; preds = %if.else.343, %if.end.342
  %arraydecay345 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %199 = load i8*, i8** %dir.addr, align 8
  %call346 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay345, i64 257, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* %199) #3
  %arraydecay347 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call348 = call i32 @mkstemp(i8* %arraydecay347)
  store i32 %call348, i32* %fout, align 4
  %200 = load i32, i32* %fout, align 4
  %cmp349 = icmp slt i32 %200, 0
  br i1 %cmp349, label %if.then.351, label %if.end.355

if.then.351:                                      ; preds = %if.end.344
  %arraydecay352 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call353 = call i32* @__errno_location() #7
  %201 = load i32, i32* %call353, align 4
  %call354 = call i8* @strerror(i32 %201) #3
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i32 0, i32 0), i8* %arraydecay352, i8* %call354)
  store i32 -112, i32* %rc, align 4
  br label %while.end.463

if.end.355:                                       ; preds = %if.end.344
  %202 = load i8*, i8** %streamend, align 8
  %incdec.ptr356 = getelementptr inbounds i8, i8* %202, i32 -1
  store i8* %incdec.ptr356, i8** %streamend, align 8
  %203 = load i8, i8* %incdec.ptr356, align 1
  %conv357 = sext i8 %203 to i32
  %cmp358 = icmp ne i32 %conv357, 10
  br i1 %cmp358, label %land.lhs.true.360, label %if.else.366

land.lhs.true.360:                                ; preds = %if.end.355
  %204 = load i8*, i8** %streamend, align 8
  %205 = load i8, i8* %204, align 1
  %conv361 = sext i8 %205 to i32
  %cmp362 = icmp ne i32 %conv361, 13
  br i1 %cmp362, label %if.then.364, label %if.else.366

if.then.364:                                      ; preds = %land.lhs.true.360
  %206 = load i8*, i8** %streamend, align 8
  %incdec.ptr365 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %incdec.ptr365, i8** %streamend, align 8
  br label %if.end.376

if.else.366:                                      ; preds = %land.lhs.true.360, %if.end.355
  %207 = load i32, i32* %has_cr, align 4
  %tobool367 = icmp ne i32 %207, 0
  br i1 %tobool367, label %land.lhs.true.368, label %if.end.375

land.lhs.true.368:                                ; preds = %if.else.366
  %208 = load i8*, i8** %streamend, align 8
  %incdec.ptr369 = getelementptr inbounds i8, i8* %208, i32 -1
  store i8* %incdec.ptr369, i8** %streamend, align 8
  %209 = load i8, i8* %incdec.ptr369, align 1
  %conv370 = sext i8 %209 to i32
  %cmp371 = icmp ne i32 %conv370, 13
  br i1 %cmp371, label %if.then.373, label %if.end.375

if.then.373:                                      ; preds = %land.lhs.true.368
  %210 = load i8*, i8** %streamend, align 8
  %incdec.ptr374 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr374, i8** %streamend, align 8
  br label %if.end.375

if.end.375:                                       ; preds = %if.then.373, %land.lhs.true.368, %if.else.366
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375, %if.then.364
  %211 = load i8*, i8** %streamend, align 8
  %212 = load i8*, i8** %streamstart, align 8
  %cmp377 = icmp ule i8* %211, %212
  br i1 %cmp377, label %if.then.379, label %if.end.383

if.then.379:                                      ; preds = %if.end.376
  %213 = load i32, i32* %fout, align 4
  %call380 = call i32 @close(i32 %213)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0))
  %arraydecay381 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call382 = call i32 @unlink(i8* %arraydecay381) #3
  br label %while.cond

if.end.383:                                       ; preds = %if.end.376
  %214 = load i8*, i8** %streamend, align 8
  %215 = load i8*, i8** %streamstart, align 8
  %sub.ptr.lhs.cast384 = ptrtoint i8* %214 to i64
  %sub.ptr.rhs.cast385 = ptrtoint i8* %215 to i64
  %sub.ptr.sub386 = sub i64 %sub.ptr.lhs.cast384, %sub.ptr.rhs.cast385
  %conv387 = trunc i64 %sub.ptr.sub386 to i32
  %conv388 = sext i32 %conv387 to i64
  store i64 %conv388, i64* %calculated_streamlen, align 8
  %216 = load i64, i64* %length, align 8
  store i64 %216, i64* %real_streamlen, align 8
  %217 = load i64, i64* %calculated_streamlen, align 8
  %218 = load i64, i64* %real_streamlen, align 8
  %cmp389 = icmp ne i64 %217, %218
  br i1 %cmp389, label %if.then.391, label %if.end.392

if.then.391:                                      ; preds = %if.end.383
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.391, %if.end.383
  %219 = load i64, i64* %length, align 8
  %220 = load i64, i64* %calculated_streamlen, align 8
  %221 = load i32, i32* %is_flatedecode, align 4
  %222 = load i32, i32* %is_ascii85decode, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.34, i32 0, i32 0), i64 %219, i64 %220, i32 %221, i32 %222)
  %223 = load i32, i32* %is_ascii85decode, align 4
  %tobool393 = icmp ne i32 %223, 0
  br i1 %tobool393, label %if.then.394, label %if.else.430

if.then.394:                                      ; preds = %if.end.392
  %224 = load i64, i64* %calculated_streamlen, align 8
  %mul = mul i64 %224, 5
  %call395 = call i8* @cli_malloc(i64 %mul)
  store i8* %call395, i8** %tmpbuf, align 8
  %225 = load i8*, i8** %tmpbuf, align 8
  %cmp396 = icmp eq i8* %225, null
  br i1 %cmp396, label %if.then.398, label %if.end.402

if.then.398:                                      ; preds = %if.then.394
  %226 = load i32, i32* %fout, align 4
  %call399 = call i32 @close(i32 %226)
  %arraydecay400 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call401 = call i32 @unlink(i8* %arraydecay400) #3
  store i32 -114, i32* %rc, align 4
  br label %while.cond

if.end.402:                                       ; preds = %if.then.394
  %227 = load i8*, i8** %streamstart, align 8
  %228 = load i64, i64* %calculated_streamlen, align 8
  %229 = load i8*, i8** %tmpbuf, align 8
  %call403 = call i32 @ascii85decode(i8* %227, i64 %228, i8* %229)
  store i32 %call403, i32* %ret, align 4
  %230 = load i32, i32* %ret, align 4
  %cmp404 = icmp eq i32 %230, -1
  br i1 %cmp404, label %if.then.406, label %if.end.410

if.then.406:                                      ; preds = %if.end.402
  %231 = load i8*, i8** %tmpbuf, align 8
  call void @free(i8* %231) #3
  %232 = load i32, i32* %fout, align 4
  %call407 = call i32 @close(i32 %232)
  %arraydecay408 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call409 = call i32 @unlink(i8* %arraydecay408) #3
  store i32 -124, i32* %rc, align 4
  br label %while.cond

if.end.410:                                       ; preds = %if.end.402
  %233 = load i32, i32* %ret, align 4
  %tobool411 = icmp ne i32 %233, 0
  br i1 %tobool411, label %if.then.412, label %if.end.429

if.then.412:                                      ; preds = %if.end.410
  %234 = load i32, i32* %ret, align 4
  %conv413 = sext i32 %234 to i64
  store i64 %conv413, i64* %real_streamlen, align 8
  %235 = load i8*, i8** %tmpbuf, align 8
  %236 = load i64, i64* %calculated_streamlen, align 8
  %call414 = call i8* @cli_realloc(i8* %235, i64 %236)
  store i8* %call414, i8** %t, align 8
  %237 = load i8*, i8** %t, align 8
  %cmp415 = icmp eq i8* %237, null
  br i1 %cmp415, label %if.then.417, label %if.end.421

if.then.417:                                      ; preds = %if.then.412
  %238 = load i8*, i8** %tmpbuf, align 8
  call void @free(i8* %238) #3
  %239 = load i32, i32* %fout, align 4
  %call418 = call i32 @close(i32 %239)
  %arraydecay419 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call420 = call i32 @unlink(i8* %arraydecay419) #3
  store i32 -114, i32* %rc, align 4
  br label %while.cond

if.end.421:                                       ; preds = %if.then.412
  %240 = load i8*, i8** %t, align 8
  store i8* %240, i8** %tmpbuf, align 8
  %241 = load i32, i32* %is_flatedecode, align 4
  %tobool422 = icmp ne i32 %241, 0
  br i1 %tobool422, label %if.then.423, label %if.else.425

if.then.423:                                      ; preds = %if.end.421
  %242 = load i8*, i8** %tmpbuf, align 8
  %243 = load i64, i64* %real_streamlen, align 8
  %244 = load i64, i64* %real_streamlen, align 8
  %245 = load i32, i32* %fout, align 4
  %246 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call424 = call i32 @try_flatedecode(i8* %242, i64 %243, i64 %244, i32 %245, %struct.cli_ctx* %246)
  store i32 %call424, i32* %rc, align 4
  br label %if.end.428

if.else.425:                                      ; preds = %if.end.421
  %247 = load i32, i32* %fout, align 4
  %248 = load i8*, i8** %streamstart, align 8
  %249 = load i64, i64* %real_streamlen, align 8
  %conv426 = trunc i64 %249 to i32
  %call427 = call i32 @cli_writen(i32 %247, i8* %248, i32 %conv426)
  br label %if.end.428

if.end.428:                                       ; preds = %if.else.425, %if.then.423
  br label %if.end.429

if.end.429:                                       ; preds = %if.end.428, %if.end.410
  %250 = load i8*, i8** %tmpbuf, align 8
  call void @free(i8* %250) #3
  br label %if.end.438

if.else.430:                                      ; preds = %if.end.392
  %251 = load i32, i32* %is_flatedecode, align 4
  %tobool431 = icmp ne i32 %251, 0
  br i1 %tobool431, label %if.then.432, label %if.else.434

if.then.432:                                      ; preds = %if.else.430
  %252 = load i8*, i8** %streamstart, align 8
  %253 = load i64, i64* %real_streamlen, align 8
  %254 = load i64, i64* %calculated_streamlen, align 8
  %255 = load i32, i32* %fout, align 4
  %256 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call433 = call i32 @try_flatedecode(i8* %252, i64 %253, i64 %254, i32 %255, %struct.cli_ctx* %256)
  store i32 %call433, i32* %rc, align 4
  br label %if.end.437

if.else.434:                                      ; preds = %if.else.430
  %257 = load i64, i64* %real_streamlen, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i32 0, i32 0), i64 %257)
  %258 = load i32, i32* %fout, align 4
  %259 = load i8*, i8** %streamstart, align 8
  %260 = load i64, i64* %real_streamlen, align 8
  %conv435 = trunc i64 %260 to i32
  %call436 = call i32 @cli_writen(i32 %258, i8* %259, i32 %conv435)
  br label %if.end.437

if.end.437:                                       ; preds = %if.else.434, %if.then.432
  br label %if.end.438

if.end.438:                                       ; preds = %if.end.437, %if.end.429
  %261 = load i32, i32* %fout, align 4
  %call439 = call i32 @close(i32 %261)
  %arraydecay440 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call441 = call i8* @cli_md5file(i8* %arraydecay440)
  store i8* %call441, i8** %md5digest, align 8
  %262 = load %struct.table*, %struct.table** %md5table, align 8
  %263 = load i8*, i8** %md5digest, align 8
  %call442 = call i32 @tableFind(%struct.table* %262, i8* %263)
  %cmp443 = icmp sge i32 %call442, 0
  br i1 %cmp443, label %if.then.445, label %if.else.449

if.then.445:                                      ; preds = %if.end.438
  %arraydecay446 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.36, i32 0, i32 0), i8* %arraydecay446)
  %arraydecay447 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call448 = call i32 @unlink(i8* %arraydecay447) #3
  br label %if.end.451

if.else.449:                                      ; preds = %if.end.438
  %264 = load %struct.table*, %struct.table** %md5table, align 8
  %265 = load i8*, i8** %md5digest, align 8
  %call450 = call i32 @tableInsert(%struct.table* %264, i8* %265, i32 1)
  br label %if.end.451

if.end.451:                                       ; preds = %if.else.449, %if.then.445
  %266 = load i8*, i8** %md5digest, align 8
  call void @free(i8* %266) #3
  %267 = load i32, i32* %files, align 4
  %inc = add i32 %267, 1
  store i32 %inc, i32* %files, align 4
  %arraydecay452 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), i32 %inc, i8* %arraydecay452)
  %268 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool453 = icmp ne %struct.cl_limits* %268, null
  br i1 %tobool453, label %land.lhs.true.454, label %if.end.462

land.lhs.true.454:                                ; preds = %if.end.451
  %269 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %maxfiles = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %269, i32 0, i32 1
  %270 = load i32, i32* %maxfiles, align 4
  %tobool455 = icmp ne i32 %270, 0
  br i1 %tobool455, label %land.lhs.true.456, label %if.end.462

land.lhs.true.456:                                ; preds = %land.lhs.true.454
  %271 = load i32, i32* %files, align 4
  %272 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %maxfiles457 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %272, i32 0, i32 1
  %273 = load i32, i32* %maxfiles457, align 4
  %cmp458 = icmp uge i32 %271, %273
  br i1 %cmp458, label %if.then.460, label %if.end.462

if.then.460:                                      ; preds = %land.lhs.true.456
  %274 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %maxfiles461 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %274, i32 0, i32 1
  %275 = load i32, i32* %maxfiles461, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i32 0, i32 0), i32 %275)
  store i32 -102, i32* %rc, align 4
  br label %if.end.462

if.end.462:                                       ; preds = %if.then.460, %land.lhs.true.456, %land.lhs.true.454, %if.end.451
  br label %while.cond

while.end.463:                                    ; preds = %if.then.351, %if.then.341, %if.then.325, %if.then.154, %if.then.144, %if.then.131, %if.then.118, %if.then.102, %if.then.97, %land.end
  %276 = load i8*, i8** %alloced, align 8
  %tobool464 = icmp ne i8* %276, null
  br i1 %tobool464, label %if.then.465, label %if.else.466

if.then.465:                                      ; preds = %while.end.463
  %277 = load i8*, i8** %alloced, align 8
  call void @free(i8* %277) #3
  br label %if.end.468

if.else.466:                                      ; preds = %while.end.463
  %278 = load i8*, i8** %buf, align 8
  %279 = load i64, i64* %size, align 8
  %call467 = call i32 @munmap(i8* %278, i64 %279) #3
  br label %if.end.468

if.end.468:                                       ; preds = %if.else.466, %if.then.465
  %280 = load %struct.table*, %struct.table** %md5table, align 8
  call void @tableDestroy(%struct.table* %280)
  %281 = load i32, i32* %rc, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0), i32 %281)
  %282 = load i32, i32* %rc, align 4
  store i32 %282, i32* %retval
  br label %return

return:                                           ; preds = %if.end.468, %if.end.84, %if.end.56, %if.end.36, %if.end.21, %if.then.9, %if.then.5, %if.then.2, %if.then
  %283 = load i32, i32* %retval
  ret i32 %283
}

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: nounwind
declare i8* @mmap(i8*, i64, i32, i32, i32, i64) #2

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @cli_pmemstr(i8* %haystack, i64 %hs, i8* %needle, i64 %ns) #0 {
entry:
  %retval = alloca i8*, align 8
  %haystack.addr = alloca i8*, align 8
  %hs.addr = alloca i64, align 8
  %needle.addr = alloca i8*, align 8
  %ns.addr = alloca i64, align 8
  %pt = alloca i8*, align 8
  %hay = alloca i8*, align 8
  %n = alloca i64, align 8
  store i8* %haystack, i8** %haystack.addr, align 8
  store i64 %hs, i64* %hs.addr, align 8
  store i8* %needle, i8** %needle.addr, align 8
  store i64 %ns, i64* %ns.addr, align 8
  %0 = load i8*, i8** %haystack.addr, align 8
  %1 = load i8*, i8** %needle.addr, align 8
  %cmp = icmp eq i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %haystack.addr, align 8
  store i8* %2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %hs.addr, align 8
  %4 = load i64, i64* %ns.addr, align 8
  %cmp1 = icmp ult i64 %3, %4
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load i8*, i8** %haystack.addr, align 8
  %6 = load i8*, i8** %needle.addr, align 8
  %7 = load i64, i64* %ns.addr, align 8
  %call = call i32 @memcmp(i8* %5, i8* %6, i64 %7) #6
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %8 = load i8*, i8** %haystack.addr, align 8
  store i8* %8, i8** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %9 = load i8*, i8** %haystack.addr, align 8
  store i8* %9, i8** %hay, align 8
  store i8* %9, i8** %pt, align 8
  %10 = load i64, i64* %hs.addr, align 8
  store i64 %10, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.end.6
  %11 = load i8*, i8** %hay, align 8
  %12 = load i8*, i8** %needle.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %14 = load i64, i64* %n, align 8
  %call7 = call i8* @memchr(i8* %11, i32 %conv, i64 %14) #6
  store i8* %call7, i8** %pt, align 8
  %cmp8 = icmp ne i8* %call7, null
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %pt, align 8
  %16 = load i8*, i8** %hay, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %17 = load i64, i64* %n, align 8
  %sub = sub i64 %17, %sub.ptr.sub
  store i64 %sub, i64* %n, align 8
  %18 = load i64, i64* %n, align 8
  %19 = load i64, i64* %ns.addr, align 8
  %cmp10 = icmp ult i64 %18, %19
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.body
  br label %while.end

if.end.13:                                        ; preds = %while.body
  %20 = load i8*, i8** %pt, align 8
  %21 = load i8*, i8** %needle.addr, align 8
  %22 = load i64, i64* %ns.addr, align 8
  %call14 = call i32 @memcmp(i8* %20, i8* %21, i64 %22) #6
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  %23 = load i8*, i8** %pt, align 8
  store i8* %23, i8** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.13
  %24 = load i8*, i8** %hay, align 8
  %25 = load i8*, i8** %pt, align 8
  %cmp19 = icmp eq i8* %24, %25
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.18
  %26 = load i64, i64* %n, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %n, align 8
  %27 = load i8*, i8** %hay, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %hay, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.end.18
  %28 = load i8*, i8** %pt, align 8
  store i8* %28, i8** %hay, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  br label %while.cond

while.end:                                        ; preds = %if.then.12, %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.17, %if.then.5, %if.then.2, %if.then
  %29 = load i8*, i8** %retval
  ret i8* %29
}

declare void @cli_warnmsg(i8*, ...) #1

declare %struct.table* @tableCreate() #1

; Function Attrs: nounwind uwtable
define internal i8* @pdf_nextobject(i8* %ptr, i64 %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %inobject = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 1, i32* %inobject, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i64, i64* %len.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 37, label %sw.bb
    i32 32, label %sw.bb.2
    i32 9, label %sw.bb.2
    i32 91, label %sw.bb.2
    i32 11, label %sw.bb.2
    i32 12, label %sw.bb.2
    i32 60, label %sw.bb.2
    i32 47, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body
  %3 = load i8*, i8** %ptr.addr, align 8
  %4 = load i64, i64* %len.addr, align 8
  %call = call i8* @pdf_nextlinestart(i8* %3, i64 %4)
  store i8* %call, i8** %p, align 8
  %5 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %6 = load i8*, i8** %p, align 8
  %7 = load i8*, i8** %ptr.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %8 = load i64, i64* %len.addr, align 8
  %sub = sub i64 %8, %sub.ptr.sub
  store i64 %sub, i64* %len.addr, align 8
  %9 = load i8*, i8** %p, align 8
  store i8* %9, i8** %ptr.addr, align 8
  store i32 0, i32* %inobject, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  store i32 0, i32* %inobject, align 4
  %10 = load i8*, i8** %ptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %ptr.addr, align 8
  %11 = load i64, i64* %len.addr, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %len.addr, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  %12 = load i8*, i8** %ptr.addr, align 8
  store i8* %12, i8** %retval
  br label %return

sw.default:                                       ; preds = %while.body
  %13 = load i32, i32* %inobject, align 4
  %tobool4 = icmp ne i32 %13, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.default
  %14 = load i8*, i8** %ptr.addr, align 8
  store i8* %14, i8** %retval
  br label %return

if.end.6:                                         ; preds = %sw.default
  %15 = load i8*, i8** %ptr.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr7, i8** %ptr.addr, align 8
  %16 = load i64, i64* %len.addr, align 8
  %dec8 = add i64 %16, -1
  store i64 %dec8, i64* %len.addr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.6, %sw.bb.2, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.5, %sw.bb.3, %if.then
  %17 = load i8*, i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal i8* @pdf_nextlinestart(i8* %ptr, i64 %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %call = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i32 %conv) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %len.addr, align 8
  %dec = add i64 %2, -1
  store i64 %dec, i64* %len.addr, align 8
  %cmp2 = icmp eq i64 %dec, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load i8*, i8** %ptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %ptr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.4

while.cond.4:                                     ; preds = %if.end.14, %while.end
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv5 = sext i8 %5 to i32
  %call6 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), i32 %conv5) #6
  %cmp7 = icmp ne i8* %call6, null
  br i1 %cmp7, label %while.body.9, label %while.end.16

while.body.9:                                     ; preds = %while.cond.4
  %6 = load i64, i64* %len.addr, align 8
  %dec10 = add i64 %6, -1
  store i64 %dec10, i64* %len.addr, align 8
  %cmp11 = icmp eq i64 %dec10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.body.9
  store i8* null, i8** %retval
  br label %return

if.end.14:                                        ; preds = %while.body.9
  %7 = load i8*, i8** %ptr.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr15, i8** %ptr.addr, align 8
  br label %while.cond.4

while.end.16:                                     ; preds = %while.cond.4
  %8 = load i8*, i8** %ptr.addr, align 8
  store i8* %8, i8** %retval
  br label %return

return:                                           ; preds = %while.end.16, %if.then.13, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

declare i32 @mkstemp(i8*) #1

declare void @cli_errmsg(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ascii85decode(i8* %buf, i64 %len, i8* %output) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %sum = alloca i32, align 4
  %quintet = alloca i32, align 4
  %ret = alloca i32, align 4
  %byte = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %quintet, align 4
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %call = call i8* @cli_pmemstr(i8* %0, i64 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i64 2)
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %buf.addr, align 8
  store i8* %2, i8** %ptr, align 8
  %3 = load i64, i64* %len.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.55, i32 0, i32 0), i64 %3)
  br label %while.cond

while.cond:                                       ; preds = %if.end.91, %if.end
  %4 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp sgt i64 %4, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i64, i64* %len.addr, align 8
  %dec = add nsw i64 %5, -1
  store i64 %dec, i64* %len.addr, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %6 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %byte, align 4
  %8 = load i32, i32* %byte, align 4
  %cmp2 = icmp eq i32 %8, 126
  br i1 %cmp2, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %cond.end
  %9 = load i8*, i8** %ptr, align 8
  %10 = load i8, i8* %9, align 1
  %conv4 = sext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv4, 62
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %byte, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %land.lhs.true, %cond.end
  %11 = load i32, i32* %byte, align 4
  %cmp9 = icmp sge i32 %11, 33
  br i1 %cmp9, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %if.end.8
  %12 = load i32, i32* %byte, align 4
  %cmp12 = icmp sle i32 %12, 117
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true.11
  %13 = load i32, i32* %sum, align 4
  %mul = mul i32 %13, 85
  %14 = load i32, i32* %byte, align 4
  %sub = sub i32 %14, 33
  %add = add i32 %mul, %sub
  store i32 %add, i32* %sum, align 4
  %15 = load i32, i32* %quintet, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %quintet, align 4
  %cmp15 = icmp eq i32 %inc, 5
  br i1 %cmp15, label %if.then.17, label %if.end.31

if.then.17:                                       ; preds = %if.then.14
  %16 = load i32, i32* %sum, align 4
  %shr = lshr i32 %16, 24
  %conv18 = trunc i32 %shr to i8
  %17 = load i8*, i8** %output.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr19, i8** %output.addr, align 8
  store i8 %conv18, i8* %17, align 1
  %18 = load i32, i32* %sum, align 4
  %shr20 = lshr i32 %18, 16
  %and = and i32 %shr20, 255
  %conv21 = trunc i32 %and to i8
  %19 = load i8*, i8** %output.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr22, i8** %output.addr, align 8
  store i8 %conv21, i8* %19, align 1
  %20 = load i32, i32* %sum, align 4
  %shr23 = lshr i32 %20, 8
  %and24 = and i32 %shr23, 255
  %conv25 = trunc i32 %and24 to i8
  %21 = load i8*, i8** %output.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr26, i8** %output.addr, align 8
  store i8 %conv25, i8* %21, align 1
  %22 = load i32, i32* %sum, align 4
  %and27 = and i32 %22, 255
  %conv28 = trunc i32 %and27 to i8
  %23 = load i8*, i8** %output.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr29, i8** %output.addr, align 8
  store i8 %conv28, i8* %23, align 1
  %24 = load i32, i32* %ret, align 4
  %add30 = add nsw i32 %24, 4
  store i32 %add30, i32* %ret, align 4
  store i32 0, i32* %quintet, align 4
  store i32 0, i32* %sum, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.17, %if.then.14
  br label %if.end.91

if.else:                                          ; preds = %land.lhs.true.11, %if.end.8
  %25 = load i32, i32* %byte, align 4
  %cmp32 = icmp eq i32 %25, 122
  br i1 %cmp32, label %if.then.34, label %if.else.43

if.then.34:                                       ; preds = %if.else
  %26 = load i32, i32* %quintet, align 4
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.34
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.34
  %27 = load i8*, i8** %output.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr38, i8** %output.addr, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %output.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr39, i8** %output.addr, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %output.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr40, i8** %output.addr, align 8
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %output.addr, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr41, i8** %output.addr, align 8
  store i8 0, i8* %30, align 1
  %31 = load i32, i32* %ret, align 4
  %add42 = add nsw i32 %31, 4
  store i32 %add42, i32* %ret, align 4
  br label %if.end.90

if.else.43:                                       ; preds = %if.else
  %32 = load i32, i32* %byte, align 4
  %cmp44 = icmp eq i32 %32, -1
  br i1 %cmp44, label %if.then.46, label %if.else.81

if.then.46:                                       ; preds = %if.else.43
  %33 = load i32, i32* %quintet, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i32 0, i32 0), i32 %33)
  %34 = load i32, i32* %quintet, align 4
  %tobool47 = icmp ne i32 %34, 0
  br i1 %tobool47, label %if.then.48, label %if.end.80

if.then.48:                                       ; preds = %if.then.46
  %35 = load i32, i32* %quintet, align 4
  %cmp49 = icmp eq i32 %35, 1
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.48
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.then.48
  %36 = load i32, i32* %quintet, align 4
  store i32 %36, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.52
  %37 = load i32, i32* %i, align 4
  %cmp53 = icmp slt i32 %37, 5
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %sum, align 4
  %mul55 = mul i32 %38, 85
  store i32 %mul55, i32* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %39, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i32, i32* %quintet, align 4
  %cmp57 = icmp sgt i32 %40, 1
  br i1 %cmp57, label %if.then.59, label %if.end.64

if.then.59:                                       ; preds = %for.end
  %41 = load i32, i32* %quintet, align 4
  %sub60 = sub nsw i32 %41, 2
  %mul61 = mul nsw i32 %sub60, 8
  %shr62 = ashr i32 16777215, %mul61
  %42 = load i32, i32* %sum, align 4
  %add63 = add i32 %42, %shr62
  store i32 %add63, i32* %sum, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.59, %for.end
  %43 = load i32, i32* %quintet, align 4
  %44 = load i32, i32* %ret, align 4
  %add65 = add nsw i32 %44, %43
  store i32 %add65, i32* %ret, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.77, %if.end.64
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %quintet, align 4
  %sub67 = sub nsw i32 %46, 1
  %cmp68 = icmp slt i32 %45, %sub67
  br i1 %cmp68, label %for.body.70, label %for.end.79

for.body.70:                                      ; preds = %for.cond.66
  %47 = load i32, i32* %sum, align 4
  %48 = load i32, i32* %i, align 4
  %mul71 = mul nsw i32 8, %48
  %sub72 = sub nsw i32 24, %mul71
  %shr73 = lshr i32 %47, %sub72
  %and74 = and i32 %shr73, 255
  %conv75 = trunc i32 %and74 to i8
  %49 = load i8*, i8** %output.addr, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr76, i8** %output.addr, align 8
  store i8 %conv75, i8* %49, align 1
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.70
  %50 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %50, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.66

for.end.79:                                       ; preds = %for.cond.66
  store i32 0, i32* %quintet, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.79, %if.then.46
  store i64 0, i64* %len.addr, align 8
  br label %while.end

if.else.81:                                       ; preds = %if.else.43
  %51 = load i32, i32* %byte, align 4
  %idxprom = sext i32 %51 to i64
  %call82 = call i16** @__ctype_b_loc() #7
  %52 = load i16*, i16** %call82, align 8
  %arrayidx = getelementptr inbounds i16, i16* %52, i64 %idxprom
  %53 = load i16, i16* %arrayidx, align 2
  %conv83 = zext i16 %53 to i32
  %and84 = and i32 %conv83, 8192
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.end.88, label %if.then.86

if.then.86:                                       ; preds = %if.else.81
  %54 = load i32, i32* %byte, align 4
  %and87 = and i32 %54, 255
  %55 = load i64, i64* %len.addr, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.59, i32 0, i32 0), i32 %and87, i64 %55)
  store i32 -1, i32* %retval
  br label %return

if.end.88:                                        ; preds = %if.else.81
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.37
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.31
  br label %while.cond

while.end:                                        ; preds = %if.end.80, %while.cond
  %56 = load i32, i32* %ret, align 4
  store i32 %56, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.86, %if.then.51, %if.then.36
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i8* @cli_realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @try_flatedecode(i8* %buf, i64 %real_len, i64 %calculated_len, i32 %fout, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %real_len.addr = alloca i64, align 8
  %calculated_len.addr = alloca i64, align 8
  %fout.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %ret = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %real_len, i64* %real_len.addr, align 8
  store i64 %calculated_len, i64* %calculated_len.addr, align 8
  store i32 %fout, i32* %fout.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i64, i64* %real_len.addr, align 8
  %2 = load i32, i32* %fout.addr, align 4
  %3 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call = call i32 @flatedecode(i8* %0, i64 %1, i32 %2, %struct.cli_ctx* %3)
  store i32 %call, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %real_len.addr, align 8
  %6 = load i64, i64* %calculated_len.addr, align 8
  %cmp1 = icmp eq i64 %5, %6
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0))
  %7 = load i32, i32* %ret, align 4
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %8 = load i32, i32* %ret, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -124, %cond.true ], [ %8, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load i8*, i8** %buf.addr, align 8
  %10 = load i64, i64* %calculated_len.addr, align 8
  %11 = load i32, i32* %fout.addr, align 4
  %12 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call5 = call i32 @flatedecode(i8* %9, i64 %10, i32 %11, %struct.cli_ctx* %12)
  store i32 %call5, i32* %ret, align 4
  %13 = load i32, i32* %ret, align 4
  %cmp6 = icmp eq i32 %13, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.41, i32 0, i32 0))
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %cond.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @cli_writen(i32, i8*, i32) #1

declare i8* @cli_md5file(i8*) #1

declare i32 @tableFind(%struct.table*, i8*) #1

declare i32 @tableInsert(%struct.table*, i8*, i32) #1

declare void @tableDestroy(%struct.table*) #1

; Function Attrs: nounwind uwtable
define internal i32 @flatedecode(i8* %buf, i64 %len, i32 %fout, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %fout.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %zstat = alloca i32, align 4
  %nbytes = alloca i64, align 8
  %stream = alloca %struct.z_stream_s, align 8
  %output = alloca [8192 x i8], align 16
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %fout, i32* %fout.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i32 0, i32 0), i64 %0)
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %zalloc = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 8
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %zalloc, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 9
  store void (i8*, i8*)* null, void (i8*, i8*)** %zfree, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 10
  store i8* null, i8** %opaque, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 0
  store i8* %2, i8** %next_in, align 8
  %3 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %3 to i32
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  store i32 %conv, i32* %avail_in, align 4
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %output, i32 0, i32 0
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 3
  store i8* %arraydecay, i8** %next_out, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 4
  store i32 8192, i32* %avail_out, align 4
  %call = call i32 @inflateInit_(%struct.z_stream_s* %stream, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 112)
  store i32 %call, i32* %zstat, align 4
  %4 = load i32, i32* %zstat, align 4
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i32 0, i32 0))
  store i32 -104, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i64 0, i64* %nbytes, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %if.end.4
  %avail_in5 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 1
  %5 = load i32, i32* %avail_in5, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call6 = call i32 @inflate(%struct.z_stream_s* %stream, i32 0)
  store i32 %call6, i32* %zstat, align 4
  %6 = load i32, i32* %zstat, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %while.body
  %avail_out7 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 4
  %7 = load i32, i32* %avail_out7, align 4
  %cmp8 = icmp eq i32 %7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.31

if.then.10:                                       ; preds = %sw.bb
  %8 = load i32, i32* %fout.addr, align 4
  %arraydecay11 = getelementptr inbounds [8192 x i8], [8192 x i8]* %output, i32 0, i32 0
  %call12 = call i32 @cli_writen(i32 %8, i8* %arraydecay11, i32 8192)
  %conv13 = sext i32 %call12 to i64
  %9 = load i64, i64* %nbytes, align 8
  %add = add nsw i64 %9, %conv13
  store i64 %add, i64* %nbytes, align 8
  %10 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %10, i32 0, i32 4
  %11 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool14 = icmp ne %struct.cl_limits* %11, null
  br i1 %tobool14, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.then.10
  %12 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits15 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %12, i32 0, i32 4
  %13 = load %struct.cl_limits*, %struct.cl_limits** %limits15, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %13, i32 0, i32 5
  %14 = load i64, i64* %maxfilesize, align 8
  %tobool16 = icmp ne i64 %14, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.27

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %15 = load i64, i64* %nbytes, align 8
  %16 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits18 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %16, i32 0, i32 4
  %17 = load %struct.cl_limits*, %struct.cl_limits** %limits18, align 8
  %maxfilesize19 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %17, i32 0, i32 5
  %18 = load i64, i64* %maxfilesize19, align 8
  %cmp20 = icmp sgt i64 %15, %18
  br i1 %cmp20, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %land.lhs.true.17
  %19 = load i64, i64* %nbytes, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.46, i32 0, i32 0), i64 %19)
  %call23 = call i32 @inflateEnd(%struct.z_stream_s* %stream)
  %20 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %20, i32 0, i32 5
  %21 = load i32, i32* %options, align 4
  %and = and i32 %21, 256
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.22
  %22 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %22, i32 0, i32 0
  %23 = load i8**, i8*** %virname, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0), i8** %23, align 8
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.then.22
  store i32 -104, i32* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true.17, %land.lhs.true, %if.then.10
  %arraydecay28 = getelementptr inbounds [8192 x i8], [8192 x i8]* %output, i32 0, i32 0
  %next_out29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 3
  store i8* %arraydecay28, i8** %next_out29, align 8
  %avail_out30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 4
  store i32 8192, i32* %avail_out30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.27, %sw.bb
  br label %while.cond

sw.bb.32:                                         ; preds = %while.body
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %msg = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 6
  %24 = load i8*, i8** %msg, align 8
  %tobool33 = icmp ne i8* %24, null
  br i1 %tobool33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %sw.default
  %25 = load i64, i64* %nbytes, align 8
  %msg35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 6
  %26 = load i8*, i8** %msg35, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.48, i32 0, i32 0), i64 %25, i8* %26)
  br label %if.end.36

if.else:                                          ; preds = %sw.default
  %27 = load i64, i64* %nbytes, align 8
  %28 = load i32, i32* %zstat, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.49, i32 0, i32 0), i64 %27, i32 %28)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.34
  %call37 = call i32 @inflateEnd(%struct.z_stream_s* %stream)
  %29 = load i32, i32* %zstat, align 4
  %cmp38 = icmp eq i32 %29, 0
  %cond = select i1 %cmp38, i32 0, i32 -104
  store i32 %cond, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.32
  br label %while.end

while.end:                                        ; preds = %sw.epilog, %while.cond
  %avail_out40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 4
  %30 = load i32, i32* %avail_out40, align 4
  %conv41 = zext i32 %30 to i64
  %cmp42 = icmp ne i64 %conv41, 8192
  br i1 %cmp42, label %if.then.44, label %if.end.54

if.then.44:                                       ; preds = %while.end
  %31 = load i32, i32* %fout.addr, align 4
  %arraydecay45 = getelementptr inbounds [8192 x i8], [8192 x i8]* %output, i32 0, i32 0
  %avail_out46 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 4
  %32 = load i32, i32* %avail_out46, align 4
  %conv47 = zext i32 %32 to i64
  %sub = sub i64 8192, %conv47
  %conv48 = trunc i64 %sub to i32
  %call49 = call i32 @cli_writen(i32 %31, i8* %arraydecay45, i32 %conv48)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.44
  store i32 -123, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.then.44
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %while.end
  %total_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 2
  %33 = load i64, i64* %total_in, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 5
  %34 = load i64, i64* %total_out, align 8
  %total_out55 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 5
  %35 = load i64, i64* %total_out55, align 8
  %total_in56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 2
  %36 = load i64, i64* %total_in56, align 8
  %div = udiv i64 %35, %36
  %37 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits57 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %37, i32 0, i32 4
  %38 = load %struct.cl_limits*, %struct.cl_limits** %limits57, align 8
  %tobool58 = icmp ne %struct.cl_limits* %38, null
  br i1 %tobool58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.54
  %39 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits59 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %39, i32 0, i32 4
  %40 = load %struct.cl_limits*, %struct.cl_limits** %limits59, align 8
  %maxratio = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %40, i32 0, i32 3
  %41 = load i32, i32* %maxratio, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.54
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond60 = phi i32 [ %41, %cond.true ], [ 0, %cond.false ]
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i32 0, i32 0), i64 %33, i64 %34, i64 %div, i32 %cond60)
  %42 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits61 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %42, i32 0, i32 4
  %43 = load %struct.cl_limits*, %struct.cl_limits** %limits61, align 8
  %tobool62 = icmp ne %struct.cl_limits* %43, null
  br i1 %tobool62, label %land.lhs.true.63, label %if.end.84

land.lhs.true.63:                                 ; preds = %cond.end
  %44 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits64 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %44, i32 0, i32 4
  %45 = load %struct.cl_limits*, %struct.cl_limits** %limits64, align 8
  %maxratio65 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %45, i32 0, i32 3
  %46 = load i32, i32* %maxratio65, align 4
  %tobool66 = icmp ne i32 %46, 0
  br i1 %tobool66, label %land.lhs.true.67, label %if.end.84

land.lhs.true.67:                                 ; preds = %land.lhs.true.63
  %total_out68 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 5
  %47 = load i64, i64* %total_out68, align 8
  %total_in69 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %stream, i32 0, i32 2
  %48 = load i64, i64* %total_in69, align 8
  %div70 = udiv i64 %47, %48
  %49 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits71 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %49, i32 0, i32 4
  %50 = load %struct.cl_limits*, %struct.cl_limits** %limits71, align 8
  %maxratio72 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %50, i32 0, i32 3
  %51 = load i32, i32* %maxratio72, align 4
  %conv73 = zext i32 %51 to i64
  %cmp74 = icmp ugt i64 %div70, %conv73
  br i1 %cmp74, label %if.then.76, label %if.end.84

if.then.76:                                       ; preds = %land.lhs.true.67
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i32 0, i32 0))
  %call77 = call i32 @inflateEnd(%struct.z_stream_s* %stream)
  %52 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options78 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %52, i32 0, i32 5
  %53 = load i32, i32* %options78, align 4
  %and79 = and i32 %53, 256
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.then.76
  %54 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname82 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %54, i32 0, i32 0
  %55 = load i8**, i8*** %virname82, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i8** %55, align 8
  store i32 1, i32* %retval
  br label %return

if.end.83:                                        ; preds = %if.then.76
  store i32 -104, i32* %retval
  br label %return

if.end.84:                                        ; preds = %land.lhs.true.67, %land.lhs.true.63, %cond.end
  %call85 = call i32 @inflateEnd(%struct.z_stream_s* %stream)
  %cmp86 = icmp eq i32 %call85, 0
  %cond88 = select i1 %cmp86, i32 0, i32 -104
  store i32 %cond88, i32* %retval
  br label %return

return:                                           ; preds = %if.end.84, %if.end.83, %if.then.81, %if.then.52, %if.end.36, %if.end.26, %if.then.25, %if.then.3, %if.then
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare i32 @inflateInit_(%struct.z_stream_s*, i8*, i32) #1

declare i32 @inflate(%struct.z_stream_s*, i32) #1

declare i32 @inflateEnd(%struct.z_stream_s*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
