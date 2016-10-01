; ModuleID = './MultiSource.Benchmarks.MallocBench/70.gs.gsfile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32, %struct.gs_matrix_s, i32, i8*, i8**, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32, i32, i8* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_bitmap_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"ppm file buffer\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"P4\0A# Ghostscript 1 bit mono image dump\0A%d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"P6\0A# Ghostscript 8 bit mapped color image dump\0A%d %d\0A255\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"P5\0A# Ghostscript 8 bit gray scale image dump\0A%d %d\0A255\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"P6\0A# Ghostscript 24 bit color image dump\0A%d %d\0A255\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"P6\0A# Ghostscript 32 bit color image dump\0A%d %d\0A255\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_writeppmfile(%struct.gx_device_memory_s* %md, %struct._IO_FILE* %file) #0 {
entry:
  %retval = alloca i32, align 4
  %md.addr = alloca %struct.gx_device_memory_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %raster = alloca i32, align 4
  %height = alloca i32, align 4
  %depth = alloca i32, align 4
  %rsize = alloca i32, align 4
  %row = alloca i8*, align 8
  %header = alloca i8*, align 8
  %y = alloca i32, align 4
  %code = alloca i32, align 4
  %count = alloca i32, align 4
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %end = alloca i8*, align 8
  %palette = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %palette31 = alloca i8*, align 8
  store %struct.gx_device_memory_s* %md, %struct.gx_device_memory_s** %md.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %md.addr, align 8
  %call = call i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* %0)
  store i32 %call, i32* %raster, align 4
  %1 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %md.addr, align 8
  %height1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 4
  %2 = load i32, i32* %height1, align 4
  store i32 %2, i32* %height, align 4
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %md.addr, align 8
  %bits_per_color_pixel = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 9
  %4 = load i32, i32* %bits_per_color_pixel, align 4
  store i32 %4, i32* %depth, align 4
  %5 = load i32, i32* %raster, align 4
  %mul = mul nsw i32 %5, 3
  store i32 %mul, i32* %rsize, align 4
  %6 = load i32, i32* %rsize, align 4
  %call2 = call i8* @gs_malloc(i32 %6, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  store i8* %call2, i8** %row, align 8
  store i32 0, i32* %code, align 4
  %7 = load i8*, i8** %row, align 8
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %depth, align 4
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb
    i32 8, label %sw.bb.3
    i32 24, label %sw.bb.4
    i32 32, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i8** %header, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  %9 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %md.addr, align 8
  %has_color = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %9, i32 0, i32 7
  %10 = load i32, i32* %has_color, align 4
  %tobool = icmp ne i32 %10, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i32 0, i32 0)
  store i8* %cond, i8** %header, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i32 0, i32 0), i8** %header, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i32 0, i32 0), i8** %header, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -23, i32* %code, align 4
  br label %done

sw.epilog:                                        ; preds = %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %12 = load i8*, i8** %header, align 8
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %md.addr, align 8
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 3
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %height, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* %12, i32 %14, i32 %15)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %16 = load i32, i32* %y, align 4
  %17 = load i32, i32* %height, align 4
  %cmp7 = icmp slt i32 %16, %17
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %md.addr, align 8
  %19 = load i32, i32* %y, align 4
  %20 = load i8*, i8** %row, align 8
  %21 = load i32, i32* %raster, align 4
  %call8 = call i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* %18, i32 %19, i8* %20, i32 %21)
  %22 = load i32, i32* %depth, align 4
  switch i32 %22, label %sw.default.61 [
    i32 8, label %sw.bb.9
    i32 32, label %sw.bb.45
  ]

sw.bb.9:                                          ; preds = %for.body
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %md.addr, align 8
  %has_color10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 7
  %24 = load i32, i32* %has_color10, align 4
  %tobool11 = icmp ne i32 %24, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %sw.bb.9
  %25 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %md.addr, align 8
  %palette13 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %25, i32 0, i32 18
  %26 = load i8*, i8** %palette13, align 8
  store i8* %26, i8** %palette, align 8
  %27 = load i8*, i8** %row, align 8
  %28 = load i32, i32* %raster, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  %29 = load i32, i32* %raster, align 4
  %idx.ext14 = sext i32 %29 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext14
  store i8* %add.ptr15, i8** %from, align 8
  %30 = load i8*, i8** %from, align 8
  %31 = load i8*, i8** %row, align 8
  %32 = load i32, i32* %raster, align 4
  %conv = sext i32 %32 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 %conv, i32 1, i1 false)
  %33 = load i8*, i8** %row, align 8
  store i8* %33, i8** %to, align 8
  %34 = load i8*, i8** %from, align 8
  %35 = load i32, i32* %raster, align 4
  %idx.ext16 = sext i32 %35 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %34, i64 %idx.ext16
  store i8* %add.ptr17, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.12
  %36 = load i8*, i8** %from, align 8
  %37 = load i8*, i8** %end, align 8
  %cmp18 = icmp ult i8* %36, %37
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load i8*, i8** %palette, align 8
  %39 = load i8*, i8** %from, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %from, align 8
  %40 = load i8, i8* %39, align 1
  %conv20 = zext i8 %40 to i32
  %mul21 = mul nsw i32 %conv20, 3
  %idx.ext22 = sext i32 %mul21 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %38, i64 %idx.ext22
  store i8* %add.ptr23, i8** %cp, align 8
  %41 = load i8*, i8** %cp, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr24, i8** %cp, align 8
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %to, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr25, i8** %to, align 8
  store i8 %42, i8* %43, align 1
  %44 = load i8*, i8** %cp, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr26, i8** %cp, align 8
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %to, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr27, i8** %to, align 8
  store i8 %45, i8* %46, align 1
  %47 = load i8*, i8** %cp, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr28, i8** %cp, align 8
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** %to, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr29, i8** %to, align 8
  store i8 %48, i8* %49, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %50 = load i32, i32* %raster, align 4
  %mul30 = mul nsw i32 %50, 3
  store i32 %mul30, i32* %count, align 4
  br label %if.end.44

if.else:                                          ; preds = %sw.bb.9
  %51 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %md.addr, align 8
  %palette32 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %51, i32 0, i32 18
  %52 = load i8*, i8** %palette32, align 8
  store i8* %52, i8** %palette31, align 8
  %53 = load i8*, i8** %row, align 8
  store i8* %53, i8** %to, align 8
  store i8* %53, i8** %from, align 8
  %54 = load i8*, i8** %row, align 8
  %55 = load i32, i32* %raster, align 4
  %idx.ext33 = sext i32 %55 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %54, i64 %idx.ext33
  store i8* %add.ptr34, i8** %end, align 8
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.38, %if.else
  %56 = load i8*, i8** %from, align 8
  %57 = load i8*, i8** %end, align 8
  %cmp36 = icmp ult i8* %56, %57
  br i1 %cmp36, label %while.body.38, label %while.end.43

while.body.38:                                    ; preds = %while.cond.35
  %58 = load i8*, i8** %from, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr39, i8** %from, align 8
  %59 = load i8, i8* %58, align 1
  %conv40 = zext i8 %59 to i32
  %mul41 = mul nsw i32 %conv40, 3
  %idxprom = sext i32 %mul41 to i64
  %60 = load i8*, i8** %palette31, align 8
  %arrayidx = getelementptr inbounds i8, i8* %60, i64 %idxprom
  %61 = load i8, i8* %arrayidx, align 1
  %62 = load i8*, i8** %to, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr42, i8** %to, align 8
  store i8 %61, i8* %62, align 1
  br label %while.cond.35

while.end.43:                                     ; preds = %while.cond.35
  %63 = load i32, i32* %raster, align 4
  store i32 %63, i32* %count, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %while.end.43, %while.end
  br label %sw.epilog.62

sw.bb.45:                                         ; preds = %for.body
  %64 = load i8*, i8** %row, align 8
  store i8* %64, i8** %to, align 8
  store i8* %64, i8** %from, align 8
  %65 = load i8*, i8** %row, align 8
  %66 = load i32, i32* %raster, align 4
  %idx.ext46 = sext i32 %66 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %65, i64 %idx.ext46
  store i8* %add.ptr47, i8** %end, align 8
  br label %while.cond.48

while.cond.48:                                    ; preds = %while.body.51, %sw.bb.45
  %67 = load i8*, i8** %from, align 8
  %68 = load i8*, i8** %end, align 8
  %cmp49 = icmp ult i8* %67, %68
  br i1 %cmp49, label %while.body.51, label %while.end.59

while.body.51:                                    ; preds = %while.cond.48
  %69 = load i8*, i8** %from, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr52, i8** %from, align 8
  %70 = load i8*, i8** %from, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr53, i8** %from, align 8
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %to, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr54, i8** %to, align 8
  store i8 %71, i8* %72, align 1
  %73 = load i8*, i8** %from, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr55, i8** %from, align 8
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %to, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr56, i8** %to, align 8
  store i8 %74, i8* %75, align 1
  %76 = load i8*, i8** %from, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr57, i8** %from, align 8
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %to, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr58, i8** %to, align 8
  store i8 %77, i8* %78, align 1
  br label %while.cond.48

while.end.59:                                     ; preds = %while.cond.48
  %79 = load i8*, i8** %to, align 8
  %80 = load i8*, i8** %row, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %79 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %80 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv60 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv60, i32* %count, align 4
  br label %sw.epilog.62

sw.default.61:                                    ; preds = %for.body
  %81 = load i32, i32* %raster, align 4
  store i32 %81, i32* %count, align 4
  br label %sw.epilog.62

sw.epilog.62:                                     ; preds = %sw.default.61, %while.end.59, %if.end.44
  %82 = load i8*, i8** %row, align 8
  %83 = load i32, i32* %count, align 4
  %conv63 = sext i32 %83 to i64
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call64 = call i64 @fwrite(i8* %82, i64 1, i64 %conv63, %struct._IO_FILE* %84)
  %85 = load i32, i32* %count, align 4
  %conv65 = sext i32 %85 to i64
  %cmp66 = icmp ult i64 %call64, %conv65
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %sw.epilog.62
  store i32 -12, i32* %code, align 4
  br label %done

if.end.69:                                        ; preds = %sw.epilog.62
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %86 = load i32, i32* %y, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %done

done:                                             ; preds = %for.end, %if.then.68, %sw.default
  %87 = load i8*, i8** %row, align 8
  %88 = load i32, i32* %rsize, align 4
  call void @gs_free(i8* %87, i32 %88, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %89 = load i32, i32* %code, align 4
  store i32 %89, i32* %retval
  br label %return

return:                                           ; preds = %done, %if.then
  %90 = load i32, i32* %retval
  ret i32 %90
}

declare i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s*) #1

declare i8* @gs_malloc(i32, i32, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @mem_copy_scan_lines(%struct.gx_device_memory_s*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @gs_free(i8*, i32, i32, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
