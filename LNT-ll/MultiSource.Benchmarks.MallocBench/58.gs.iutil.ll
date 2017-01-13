; ModuleID = './MultiSource.Benchmarks.MallocBench/58.gs.iutil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.dict_s = type opaque
%struct.file_entry_s = type opaque
%struct.gs_font_s = type opaque
%struct.name_s = type opaque
%struct.vm_save_s = type opaque
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gx_bitmap_s = type opaque

; Function Attrs: nounwind uwtable
define void @refcpy(%struct.ref_s* %to, %struct.ref_s* %from, i32 %size) #0 {
entry:
  %to.addr = alloca %struct.ref_s*, align 8
  %from.addr = alloca %struct.ref_s*, align 8
  %size.addr = alloca i32, align 4
  store %struct.ref_s* %to, %struct.ref_s** %to.addr, align 8
  store %struct.ref_s* %from, %struct.ref_s** %from.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %size.addr, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* %size.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.ref_s*, %struct.ref_s** %to.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %to.addr, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** %from.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 1
  store %struct.ref_s* %incdec.ptr1, %struct.ref_s** %from.addr, align 8
  %3 = bitcast %struct.ref_s* %1 to i8*
  %4 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 8, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @obj_eq(%struct.ref_s* %pref1, %struct.ref_s* %pref2) #0 {
entry:
  %retval = alloca i32, align 4
  %pref1.addr = alloca %struct.ref_s*, align 8
  %pref2.addr = alloca %struct.ref_s*, align 8
  %nref = alloca %struct.ref_s, align 8
  %pc1 = alloca %struct.gs_color_s*, align 8
  %pc2 = alloca %struct.gs_color_s*, align 8
  store %struct.ref_s* %pref1, %struct.ref_s** %pref1.addr, align 8
  store %struct.ref_s* %pref2, %struct.ref_s** %pref2.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp sge i32 %shr, 16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %3 to i32
  %and4 = and i32 %conv3, 255
  %shr5 = ashr i32 %and4, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %shr5, %cond.false ]
  %4 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %type_attrs6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs6, align 2
  %conv7 = zext i16 %5 to i32
  %and8 = and i32 %conv7, 255
  %shr9 = ashr i32 %and8, 2
  %cmp10 = icmp sge i32 %shr9, 16
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end
  br label %cond.end.18

cond.false.13:                                    ; preds = %cond.end
  %6 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %type_attrs14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %7 = load i16, i16* %type_attrs14, align 2
  %conv15 = zext i16 %7 to i32
  %and16 = and i32 %conv15, 255
  %shr17 = ashr i32 %and16, 2
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.13, %cond.true.12
  %cond19 = phi i32 [ 9, %cond.true.12 ], [ %shr17, %cond.false.13 ]
  %cmp20 = icmp ne i32 %cond, %cond19
  br i1 %cmp20, label %if.then, label %if.end.71

if.then:                                          ; preds = %cond.end.18
  %8 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %type_attrs22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %9 = load i16, i16* %type_attrs22, align 2
  %conv23 = zext i16 %9 to i32
  %and24 = and i32 %conv23, 255
  %shr25 = ashr i32 %and24, 2
  switch i32 %shr25, label %sw.default [
    i32 5, label %sw.bb
    i32 11, label %sw.bb.36
    i32 7, label %sw.bb.53
    i32 13, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %if.then
  %10 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %type_attrs26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %11 = load i16, i16* %type_attrs26, align 2
  %conv27 = zext i16 %11 to i32
  %and28 = and i32 %conv27, 255
  %shr29 = ashr i32 %and28, 2
  %cmp30 = icmp eq i32 %shr29, 11
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb
  %12 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %13 = load float, float* %realval, align 4
  %14 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %intval = bitcast %union.v* %value32 to i64*
  %15 = load i64, i64* %intval, align 8
  %conv33 = sitofp i64 %15 to float
  %cmp34 = fcmp oeq float %13, %conv33
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %16 = phi i1 [ false, %sw.bb ], [ %cmp34, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.36:                                         ; preds = %if.then
  %17 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %type_attrs37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %18 = load i16, i16* %type_attrs37, align 2
  %conv38 = zext i16 %18 to i32
  %and39 = and i32 %conv38, 255
  %shr40 = ashr i32 %and39, 2
  %cmp41 = icmp eq i32 %shr40, 5
  br i1 %cmp41, label %land.rhs.43, label %land.end.51

land.rhs.43:                                      ; preds = %sw.bb.36
  %19 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %intval45 = bitcast %union.v* %value44 to i64*
  %20 = load i64, i64* %intval45, align 8
  %conv46 = sitofp i64 %20 to float
  %21 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %realval48 = bitcast %union.v* %value47 to float*
  %22 = load float, float* %realval48, align 4
  %cmp49 = fcmp oeq float %conv46, %22
  br label %land.end.51

land.end.51:                                      ; preds = %land.rhs.43, %sw.bb.36
  %23 = phi i1 [ false, %sw.bb.36 ], [ %cmp49, %land.rhs.43 ]
  %land.ext52 = zext i1 %23 to i32
  store i32 %land.ext52, i32* %retval
  br label %return

sw.bb.53:                                         ; preds = %if.then
  %24 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %type_attrs54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %25 = load i16, i16* %type_attrs54, align 2
  %conv55 = zext i16 %25 to i32
  %and56 = and i32 %conv55, 255
  %shr57 = ashr i32 %and56, 2
  %cmp58 = icmp ne i32 %shr57, 13
  br i1 %cmp58, label %if.then.60, label %if.end

if.then.60:                                       ; preds = %sw.bb.53
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.53
  %26 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %call = call %struct.ref_s* @name_string_ref(%struct.ref_s* %26, %struct.ref_s* %nref)
  store %struct.ref_s* %nref, %struct.ref_s** %pref1.addr, align 8
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.then
  %27 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %type_attrs62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %28 = load i16, i16* %type_attrs62, align 2
  %conv63 = zext i16 %28 to i32
  %and64 = and i32 %conv63, 255
  %shr65 = ashr i32 %and64, 2
  %cmp66 = icmp ne i32 %shr65, 7
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %sw.bb.61
  store i32 0, i32* %retval
  br label %return

if.end.69:                                        ; preds = %sw.bb.61
  %29 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %call70 = call %struct.ref_s* @name_string_ref(%struct.ref_s* %29, %struct.ref_s* %nref)
  store %struct.ref_s* %nref, %struct.ref_s** %pref2.addr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.69, %if.end
  br label %if.end.71

if.end.71:                                        ; preds = %sw.epilog, %cond.end.18
  %30 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %type_attrs72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  %31 = load i16, i16* %type_attrs72, align 2
  %conv73 = zext i16 %31 to i32
  %and74 = and i32 %conv73, 255
  %shr75 = ashr i32 %and74, 2
  %cmp76 = icmp sge i32 %shr75, 16
  br i1 %cmp76, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %if.end.71
  br label %cond.end.84

cond.false.79:                                    ; preds = %if.end.71
  %32 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %type_attrs80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %33 = load i16, i16* %type_attrs80, align 2
  %conv81 = zext i16 %33 to i32
  %and82 = and i32 %conv81, 255
  %shr83 = ashr i32 %and82, 2
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.79, %cond.true.78
  %cond85 = phi i32 [ 9, %cond.true.78 ], [ %shr83, %cond.false.79 ]
  switch i32 %cond85, label %sw.epilog.196 [
    i32 0, label %sw.bb.86
    i32 10, label %sw.bb.86
    i32 1, label %sw.bb.100
    i32 2, label %sw.bb.108
    i32 3, label %sw.bb.114
    i32 4, label %sw.bb.120
    i32 5, label %sw.bb.126
    i32 6, label %sw.bb.133
    i32 8, label %sw.bb.133
    i32 7, label %sw.bb.134
    i32 9, label %sw.bb.140
    i32 11, label %sw.bb.146
    i32 12, label %sw.bb.153
    i32 13, label %sw.bb.159
    i32 14, label %sw.bb.168
    i32 15, label %sw.bb.190
  ]

sw.bb.86:                                         ; preds = %cond.end.84, %cond.end.84
  %34 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %refs = bitcast %union.v* %value87 to %struct.ref_s**
  %35 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %refs89 = bitcast %union.v* %value88 to %struct.ref_s**
  %37 = load %struct.ref_s*, %struct.ref_s** %refs89, align 8
  %cmp90 = icmp eq %struct.ref_s* %35, %37
  br i1 %cmp90, label %land.rhs.92, label %land.end.98

land.rhs.92:                                      ; preds = %sw.bb.86
  %38 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 2
  %39 = load i16, i16* %size, align 2
  %conv93 = zext i16 %39 to i32
  %40 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %size94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 2
  %41 = load i16, i16* %size94, align 2
  %conv95 = zext i16 %41 to i32
  %cmp96 = icmp eq i32 %conv93, %conv95
  br label %land.end.98

land.end.98:                                      ; preds = %land.rhs.92, %sw.bb.86
  %42 = phi i1 [ false, %sw.bb.86 ], [ %cmp96, %land.rhs.92 ]
  %land.ext99 = zext i1 %42 to i32
  store i32 %land.ext99, i32* %retval
  br label %return

sw.bb.100:                                        ; preds = %cond.end.84
  %43 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %index = bitcast %union.v* %value101 to i16*
  %44 = load i16, i16* %index, align 2
  %conv102 = zext i16 %44 to i32
  %45 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %index104 = bitcast %union.v* %value103 to i16*
  %46 = load i16, i16* %index104, align 2
  %conv105 = zext i16 %46 to i32
  %cmp106 = icmp eq i32 %conv102, %conv105
  %conv107 = zext i1 %cmp106 to i32
  store i32 %conv107, i32* %retval
  br label %return

sw.bb.108:                                        ; preds = %cond.end.84
  %47 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %pdict = bitcast %union.v* %value109 to %struct.dict_s**
  %48 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %pdict111 = bitcast %union.v* %value110 to %struct.dict_s**
  %50 = load %struct.dict_s*, %struct.dict_s** %pdict111, align 8
  %cmp112 = icmp eq %struct.dict_s* %48, %50
  %conv113 = zext i1 %cmp112 to i32
  store i32 %conv113, i32* %retval
  br label %return

sw.bb.114:                                        ; preds = %cond.end.84
  %51 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 0
  %pfile = bitcast %union.v* %value115 to %struct.file_entry_s**
  %52 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile, align 8
  %53 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %pfile117 = bitcast %union.v* %value116 to %struct.file_entry_s**
  %54 = load %struct.file_entry_s*, %struct.file_entry_s** %pfile117, align 8
  %cmp118 = icmp eq %struct.file_entry_s* %52, %54
  %conv119 = zext i1 %cmp118 to i32
  store i32 %conv119, i32* %retval
  br label %return

sw.bb.120:                                        ; preds = %cond.end.84
  %55 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %pfont = bitcast %union.v* %value121 to %struct.gs_font_s**
  %56 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %57 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %pfont123 = bitcast %union.v* %value122 to %struct.gs_font_s**
  %58 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont123, align 8
  %cmp124 = icmp eq %struct.gs_font_s* %56, %58
  %conv125 = zext i1 %cmp124 to i32
  store i32 %conv125, i32* %retval
  br label %return

sw.bb.126:                                        ; preds = %cond.end.84
  %59 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 0
  %intval128 = bitcast %union.v* %value127 to i64*
  %60 = load i64, i64* %intval128, align 8
  %61 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %intval130 = bitcast %union.v* %value129 to i64*
  %62 = load i64, i64* %intval130, align 8
  %cmp131 = icmp eq i64 %60, %62
  %conv132 = zext i1 %cmp131 to i32
  store i32 %conv132, i32* %retval
  br label %return

sw.bb.133:                                        ; preds = %cond.end.84, %cond.end.84
  store i32 1, i32* %retval
  br label %return

sw.bb.134:                                        ; preds = %cond.end.84
  %63 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %pname = bitcast %union.v* %value135 to %struct.name_s**
  %64 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %65 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 0
  %pname137 = bitcast %union.v* %value136 to %struct.name_s**
  %66 = load %struct.name_s*, %struct.name_s** %pname137, align 8
  %cmp138 = icmp eq %struct.name_s* %64, %66
  %conv139 = zext i1 %cmp138 to i32
  store i32 %conv139, i32* %retval
  br label %return

sw.bb.140:                                        ; preds = %cond.end.84
  %67 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 0
  %opproc = bitcast %union.v* %value141 to i32 (%struct.ref_s*)**
  %68 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %opproc, align 8
  %69 = ptrtoint i32 (%struct.ref_s*)* %68 to i64
  %70 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value142 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 0
  %opproc143 = bitcast %union.v* %value142 to i32 (%struct.ref_s*)**
  %71 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %opproc143, align 8
  %72 = ptrtoint i32 (%struct.ref_s*)* %71 to i64
  %cmp144 = icmp eq i64 %69, %72
  %conv145 = zext i1 %cmp144 to i32
  store i32 %conv145, i32* %retval
  br label %return

sw.bb.146:                                        ; preds = %cond.end.84
  %73 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value147 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 0
  %realval148 = bitcast %union.v* %value147 to float*
  %74 = load float, float* %realval148, align 4
  %75 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value149 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 0, i32 0
  %realval150 = bitcast %union.v* %value149 to float*
  %76 = load float, float* %realval150, align 4
  %cmp151 = fcmp oeq float %74, %76
  %conv152 = zext i1 %cmp151 to i32
  store i32 %conv152, i32* %retval
  br label %return

sw.bb.153:                                        ; preds = %cond.end.84
  %77 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 0
  %psave = bitcast %union.v* %value154 to %struct.vm_save_s**
  %78 = load %struct.vm_save_s*, %struct.vm_save_s** %psave, align 8
  %79 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 0, i32 0
  %psave156 = bitcast %union.v* %value155 to %struct.vm_save_s**
  %80 = load %struct.vm_save_s*, %struct.vm_save_s** %psave156, align 8
  %cmp157 = icmp eq %struct.vm_save_s* %78, %80
  %conv158 = zext i1 %cmp157 to i32
  store i32 %conv158, i32* %retval
  br label %return

sw.bb.159:                                        ; preds = %cond.end.84
  %81 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value160 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 0
  %bytes = bitcast %union.v* %value160 to i8**
  %82 = load i8*, i8** %bytes, align 8
  %83 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %size161 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 0, i32 2
  %84 = load i16, i16* %size161, align 2
  %conv162 = zext i16 %84 to i32
  %85 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value163 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i32 0, i32 0
  %bytes164 = bitcast %union.v* %value163 to i8**
  %86 = load i8*, i8** %bytes164, align 8
  %87 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %size165 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i32 0, i32 2
  %88 = load i16, i16* %size165, align 2
  %conv166 = zext i16 %88 to i32
  %call167 = call i32 @bytes_compare(i8* %82, i32 %conv162, i8* %86, i32 %conv166)
  %tobool = icmp ne i32 %call167, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

sw.bb.168:                                        ; preds = %cond.end.84
  %89 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value169 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i32 0, i32 0
  %pcolor = bitcast %union.v* %value169 to %struct.gs_color_s**
  %90 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  store %struct.gs_color_s* %90, %struct.gs_color_s** %pc1, align 8
  %91 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value170 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i32 0, i32 0
  %pcolor171 = bitcast %union.v* %value170 to %struct.gs_color_s**
  %92 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor171, align 8
  store %struct.gs_color_s* %92, %struct.gs_color_s** %pc2, align 8
  %93 = load %struct.gs_color_s*, %struct.gs_color_s** %pc1, align 8
  %red = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %93, i32 0, i32 0
  %94 = load i16, i16* %red, align 2
  %conv172 = zext i16 %94 to i32
  %95 = load %struct.gs_color_s*, %struct.gs_color_s** %pc2, align 8
  %red173 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %95, i32 0, i32 0
  %96 = load i16, i16* %red173, align 2
  %conv174 = zext i16 %96 to i32
  %cmp175 = icmp eq i32 %conv172, %conv174
  br i1 %cmp175, label %land.lhs.true, label %land.end.188

land.lhs.true:                                    ; preds = %sw.bb.168
  %97 = load %struct.gs_color_s*, %struct.gs_color_s** %pc1, align 8
  %green = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %97, i32 0, i32 1
  %98 = load i16, i16* %green, align 2
  %conv177 = zext i16 %98 to i32
  %99 = load %struct.gs_color_s*, %struct.gs_color_s** %pc2, align 8
  %green178 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %99, i32 0, i32 1
  %100 = load i16, i16* %green178, align 2
  %conv179 = zext i16 %100 to i32
  %cmp180 = icmp eq i32 %conv177, %conv179
  br i1 %cmp180, label %land.rhs.182, label %land.end.188

land.rhs.182:                                     ; preds = %land.lhs.true
  %101 = load %struct.gs_color_s*, %struct.gs_color_s** %pc1, align 8
  %blue = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %101, i32 0, i32 2
  %102 = load i16, i16* %blue, align 2
  %conv183 = zext i16 %102 to i32
  %103 = load %struct.gs_color_s*, %struct.gs_color_s** %pc2, align 8
  %blue184 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %103, i32 0, i32 2
  %104 = load i16, i16* %blue184, align 2
  %conv185 = zext i16 %104 to i32
  %cmp186 = icmp eq i32 %conv183, %conv185
  br label %land.end.188

land.end.188:                                     ; preds = %land.rhs.182, %land.lhs.true, %sw.bb.168
  %105 = phi i1 [ false, %land.lhs.true ], [ false, %sw.bb.168 ], [ %cmp186, %land.rhs.182 ]
  %land.ext189 = zext i1 %105 to i32
  store i32 %land.ext189, i32* %retval
  br label %return

sw.bb.190:                                        ; preds = %cond.end.84
  %106 = load %struct.ref_s*, %struct.ref_s** %pref1.addr, align 8
  %value191 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i32 0, i32 0
  %pdevice = bitcast %union.v* %value191 to %struct.gx_device_s**
  %107 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8
  %108 = load %struct.ref_s*, %struct.ref_s** %pref2.addr, align 8
  %value192 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %108, i32 0, i32 0
  %pdevice193 = bitcast %union.v* %value192 to %struct.gx_device_s**
  %109 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice193, align 8
  %cmp194 = icmp eq %struct.gx_device_s* %107, %109
  %conv195 = zext i1 %cmp194 to i32
  store i32 %conv195, i32* %retval
  br label %return

sw.epilog.196:                                    ; preds = %cond.end.84
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.196, %sw.bb.190, %land.end.188, %sw.bb.159, %sw.bb.153, %sw.bb.146, %sw.bb.140, %sw.bb.134, %sw.bb.133, %sw.bb.126, %sw.bb.120, %sw.bb.114, %sw.bb.108, %sw.bb.100, %land.end.98, %sw.default, %if.then.68, %if.then.60, %land.end.51, %land.end
  %110 = load i32, i32* %retval
  ret i32 %110
}

declare %struct.ref_s* @name_string_ref(%struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @bytes_compare(i8* %s1, i32 %len1, i8* %s2, i32 %len2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %len1.addr = alloca i32, align 4
  %s2.addr = alloca i8*, align 8
  %len2.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i32 %len1, i32* %len1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %len2, i32* %len2.addr, align 4
  %0 = load i32, i32* %len1.addr, align 4
  store i32 %0, i32* %len, align 4
  %1 = load i32, i32* %len2.addr, align 4
  %2 = load i32, i32* %len, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %len2.addr, align 4
  store i32 %3, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %s1.addr, align 8
  store i8* %4, i8** %p1, align 8
  %5 = load i8*, i8** %s2.addr, align 8
  store i8* %5, i8** %p2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.end
  %6 = load i32, i32* %len, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %len, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  %9 = load i8*, i8** %p2, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr1, i8** %p2, align 8
  %10 = load i8, i8* %9, align 1
  %conv2 = zext i8 %10 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  br i1 %cmp3, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %while.body
  %11 = load i8*, i8** %p1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 -1
  %12 = load i8, i8* %arrayidx, align 1
  %conv6 = zext i8 %12 to i32
  %13 = load i8*, i8** %p2, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 -1
  %14 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %14 to i32
  %cmp9 = icmp slt i32 %conv6, %conv8
  %cond = select i1 %cmp9, i32 -1, i32 1
  store i32 %cond, i32* %retval
  br label %return

if.end.11:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %len1.addr, align 4
  %16 = load i32, i32* %len2.addr, align 4
  %cmp12 = icmp eq i32 %15, %16
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %17 = load i32, i32* %len1.addr, align 4
  %18 = load i32, i32* %len2.addr, align 4
  %cmp14 = icmp ult i32 %17, %18
  %cond16 = select i1 %cmp14, i32 -1, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond17 = phi i32 [ 0, %cond.true ], [ %cond16, %cond.false ]
  store i32 %cond17, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.5
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @string_hash(i8* %ptr, i32 %len) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %hash = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %ptr.addr, align 8
  store i8* %0, i8** %p, align 8
  store i32 0, i32* %hash, align 4
  %1 = load i32, i32* %len.addr, align 4
  store i32 %1, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %n, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %n, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %hash, align 4
  %mul = mul i32 %3, 19
  %4 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %add = add i32 %mul, %conv
  store i32 %add, i32* %hash, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %hash, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @string_to_ref(i8* %cstr, %struct.ref_s* %pref, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %cstr.addr = alloca i8*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %cname.addr = alloca i8*, align 8
  %size = alloca i32, align 4
  %str = alloca i8*, align 8
  store i8* %cstr, i8** %cstr.addr, align 8
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8
  store i8* %cname, i8** %cname.addr, align 8
  %0 = load i8*, i8** %cstr.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %size, align 4
  %1 = load i32, i32* %size, align 4
  %2 = load i8*, i8** %cname.addr, align 8
  %call1 = call i8* @alloc(i32 %1, i32 1, i8* %2)
  store i8* %call1, i8** %str, align 8
  %3 = load i8*, i8** %str, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %str, align 8
  %5 = load i8*, i8** %cstr.addr, align 8
  %6 = load i32, i32* %size, align 4
  %conv3 = zext i32 %6 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %conv3, i32 1, i1 false)
  %7 = load i8*, i8** %str, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  store i8* %7, i8** %bytes, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  store i16 822, i16* %type_attrs, align 2
  %10 = load i32, i32* %size, align 4
  %conv4 = trunc i32 %10 to i16
  %11 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %size5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 2
  store i16 %conv4, i16* %size5, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @alloc(i32, i32, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @ref_to_string(%struct.ref_s* %pref, i8* %client_name) #0 {
entry:
  %retval = alloca i8*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %client_name.addr = alloca i8*, align 8
  %size = alloca i32, align 4
  %str = alloca i8*, align 8
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8
  store i8* %client_name, i8** %client_name.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %size1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 2
  %1 = load i16, i16* %size1, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, i32* %size, align 4
  %2 = load i32, i32* %size, align 4
  %add = add i32 %2, 1
  %3 = load i8*, i8** %client_name.addr, align 8
  %call = call i8* @alloc(i32 %add, i32 1, i8* %3)
  store i8* %call, i8** %str, align 8
  %4 = load i8*, i8** %str, align 8
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %str, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %7 = load i8*, i8** %bytes, align 8
  %8 = load i32, i32* %size, align 4
  %conv3 = zext i32 %8 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %conv3, i32 1, i1 false)
  %9 = load i32, i32* %size, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %11 = load i8*, i8** %str, align 8
  store i8* %11, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define i32 @num_params(%struct.ref_s* %op, i32 %count, float* %pval) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %count.addr = alloca i32, align 4
  %pval.addr = alloca float*, align 8
  %mask = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store float* %pval, float** %pval.addr, align 8
  store i32 0, i32* %mask, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %count.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %count.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %mask, align 4
  %shl = shl i32 %1, 1
  store i32 %shl, i32* %mask, align 4
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 11, label %sw.bb
    i32 5, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %while.body
  %4 = load float*, float** %pval.addr, align 8
  %tobool = icmp ne float* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %6 = load float, float* %realval, align 4
  %7 = load i32, i32* %count.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load float*, float** %pval.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %8, i64 %idxprom
  store float %6, float* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  %9 = load float*, float** %pval.addr, align 8
  %tobool2 = icmp ne float* %9, null
  br i1 %tobool2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %sw.bb.1
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %intval = bitcast %union.v* %value4 to i64*
  %11 = load i64, i64* %intval, align 8
  %conv5 = sitofp i64 %11 to float
  %12 = load i32, i32* %count.addr, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load float*, float** %pval.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 %idxprom6
  store float %conv5, float* %arrayidx7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %sw.bb.1
  %14 = load i32, i32* %mask, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %mask, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.8, %if.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %mask, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.default
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @real_param(%struct.ref_s* %op, float* %pparam, i32 %unit) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pparam.addr = alloca float*, align 8
  %unit.addr = alloca i32, align 4
  %fval = alloca float, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store float* %pparam, float** %pparam.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 5, label %sw.bb
    i32 11, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %3 = load i64, i64* %intval, align 8
  %conv1 = sitofp i64 %3 to float
  store float %conv1, float* %fval, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %realval = bitcast %union.v* %value3 to float*
  %5 = load float, float* %realval, align 4
  store float %5, float* %fval, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb
  %6 = load i32, i32* %unit.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %sw.epilog
  %7 = load float, float* %fval, align 4
  %conv4 = fpext float %7 to double
  %cmp = fcmp olt double %conv4, 0.000000e+00
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load float, float* %fval, align 4
  %conv7 = fpext float %8 to double
  %cmp8 = fcmp olt double %conv7, -1.000000e-05
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.6
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.6
  store float 0.000000e+00, float* %fval, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.then
  %9 = load float, float* %fval, align 4
  %conv11 = fpext float %9 to double
  %cmp12 = fcmp ogt double %conv11, 1.000000e+00
  br i1 %cmp12, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.else
  %10 = load float, float* %fval, align 4
  %conv15 = fpext float %10 to double
  %cmp16 = fcmp ogt double %conv15, 1.000010e+00
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.14
  store i32 -15, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.14
  store float 1.000000e+00, float* %fval, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %sw.epilog
  %11 = load float, float* %fval, align 4
  %12 = load float*, float** %pparam.addr, align 8
  store float %11, float* %12, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.18, %if.then.10, %sw.default
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @read_matrix(%struct.ref_s* %op, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pel = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 2
  %3 = load i16, i16* %size, align 2
  %conv1 = zext i16 %3 to i32
  %cmp = icmp ne i32 %conv1, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %5 to i32
  %and5 = and i32 %conv4, 512
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %8 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %9 = bitcast %struct.ref_s* %8 to %struct.gs_matrix_s*
  %10 = bitcast %struct.gs_matrix_s* %6 to i8*
  %11 = bitcast %struct.gs_matrix_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 96, i32 8, i1 false)
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %13 = bitcast %struct.gs_matrix_s* %12 to %struct.ref_s*
  store %struct.ref_s* %13, %struct.ref_s** %pel, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %14 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %14, 6
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.ref_s*, %struct.ref_s** %pel, align 8
  %type_attrs10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %16 = load i16, i16* %type_attrs10, align 2
  %conv11 = zext i16 %16 to i32
  %and12 = and i32 %conv11, 255
  %shr13 = ashr i32 %and12, 2
  switch i32 %shr13, label %sw.default.14 [
    i32 5, label %sw.bb.15
    i32 11, label %sw.bb.20
  ]

sw.default.14:                                    ; preds = %for.body
  store i32 -20, i32* %retval
  br label %return

sw.bb.15:                                         ; preds = %for.body
  %17 = load %struct.ref_s*, %struct.ref_s** %pel, align 8
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %intval = bitcast %union.v* %value16 to i64*
  %18 = load i64, i64* %intval, align 8
  %conv17 = sitofp i64 %18 to float
  %19 = load %struct.ref_s*, %struct.ref_s** %pel, align 8
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %realval = bitcast %union.v* %value18 to float*
  store float %conv17, float* %realval, align 4
  %20 = load %struct.ref_s*, %struct.ref_s** %pel, align 8
  %type_attrs19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  store i16 44, i16* %type_attrs19, align 2
  br label %sw.bb.20

sw.bb.20:                                         ; preds = %for.body, %sw.bb.15
  br label %sw.epilog.21

sw.epilog.21:                                     ; preds = %sw.bb.20
  %21 = load %struct.ref_s*, %struct.ref_s** %pel, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %pel, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.21
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %sw.default.14, %if.then.6, %if.then, %sw.default
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @write_matrix(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %aptr = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 2
  %3 = load i16, i16* %size, align 2
  %conv2 = zext i16 %3 to i32
  %cmp3 = icmp ne i32 %conv2, 6
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs7, align 2
  %conv8 = zext i16 %5 to i32
  %and9 = and i32 %conv8, 256
  %tobool = icmp ne i32 %and9, 0
  br i1 %tobool, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.6
  store i32 -7, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %7 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  store %struct.ref_s* %7, %struct.ref_s** %aptr, align 8
  store i32 5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %8 = load i32, i32* %i, align 4
  %cmp12 = icmp sge i32 %8, 0
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8
  %type_attrs14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %10 = load i16, i16* %type_attrs14, align 2
  %conv15 = zext i16 %10 to i32
  %and16 = and i32 %conv15, 255
  %shr17 = ashr i32 %and16, 2
  switch i32 %shr17, label %sw.default [
    i32 11, label %sw.bb
    i32 5, label %sw.bb
  ]

sw.default:                                       ; preds = %for.body
  %11 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %intval = bitcast %union.v* %value18 to i64*
  store i64 0, i64* %intval, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8
  %type_attrs19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  store i16 20, i16* %type_attrs19, align 2
  br label %sw.bb

sw.bb:                                            ; preds = %for.body, %for.body, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %13 = load i32, i32* %i, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %i, align 4
  %14 = load %struct.ref_s*, %struct.ref_s** %aptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %aptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.10, %if.then.5, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
