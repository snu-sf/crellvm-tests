; ModuleID = './MultiSource.Benchmarks.MallocBench/43.gs.gsim2out.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_descr = type { i16, i16, i16, i16 }
%struct.gs_state_s = type opaque
%struct.status = type { %struct.gs_matrix_s, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_point_s = type { float, float }

@.str = private unnamed_addr constant [15 x i8] c"gsim2out cells\00", align 1
@trace_from.nesw = internal global [5 x %struct.dir_descr] [%struct.dir_descr { i16 -1, i16 1, i16 0, i16 1 }, %struct.dir_descr { i16 1, i16 1, i16 1, i16 0 }, %struct.dir_descr { i16 1, i16 -1, i16 0, i16 -1 }, %struct.dir_descr { i16 -1, i16 -1, i16 -1, i16 0 }, %struct.dir_descr { i16 -1, i16 1, i16 0, i16 1 }], align 16

; Function Attrs: nounwind uwtable
define i32 @gs_type1imagepath(%struct.gs_state_s* %pgs, i8* %data, i32 %width, i32 %height, double %wx, double %wy, double %origin_x, double %origin_y, i8* %str, i32 %maxlen) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %data.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %wx.addr = alloca double, align 8
  %wy.addr = alloca double, align 8
  %origin_x.addr = alloca double, align 8
  %origin_y.addr = alloca double, align 8
  %str.addr = alloca i8*, align 8
  %maxlen.addr = alloca i32, align 4
  %csize = alloca i32, align 4
  %cells = alloca i8*, align 8
  %stat = alloca %struct.status, align 8
  %out = alloca %struct.status*, align 8
  %lsbx = alloca i32, align 4
  %iwx = alloca i32, align 4
  %iwy = alloca i32, align 4
  %ilsbx = alloca i32, align 4
  %ilsby = alloca i32, align 4
  %code = alloca i32, align 4
  %hsc = alloca float, align 4
  %mat = alloca %struct.gs_matrix_s, align 8
  %y = alloca i32, align 4
  %opt = alloca %struct.gs_point_s, align 4
  %wpt = alloca %struct.gs_point_s, align 4
  %lsbpt = alloca %struct.gs_point_s, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double %wx, double* %wx.addr, align 8
  store double %wy, double* %wy.addr, align 8
  store double %origin_x, double* %origin_x.addr, align 8
  store double %origin_y, double* %origin_y.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %maxlen, i32* %maxlen.addr, align 4
  store %struct.status* %stat, %struct.status** %out, align 8
  %0 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %0, 4
  %conv = sitofp i32 %mul to float
  store float %conv, float* %hsc, align 4
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %ifm = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 0
  %call = call i32 @gs_currentmatrix(%struct.gs_state_s* %1, %struct.gs_matrix_s* %ifm)
  %2 = load float, float* %hsc, align 4
  %conv1 = fpext float %2 to double
  %3 = load float, float* %hsc, align 4
  %conv2 = fpext float %3 to double
  %call3 = call i32 @gs_make_scaling(double %conv1, double %conv2, %struct.gs_matrix_s* %mat)
  store i32 %call3, i32* %code, align 4
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %ifm5 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 0
  %ifm6 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 0
  %call7 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %mat, %struct.gs_matrix_s* %ifm5, %struct.gs_matrix_s* %ifm6)
  store i32 %call7, i32* %code, align 4
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %ifm11 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 0
  %ifm12 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 0
  %call13 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %ifm11, %struct.gs_matrix_s* %ifm12)
  store i32 %call13, i32* %code, align 4
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false, %entry
  %4 = load i32, i32* %code, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.10
  %5 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %5, 2
  %6 = load i32, i32* %height.addr, align 4
  %add16 = add nsw i32 %6, 2
  %mul17 = mul nsw i32 %add, %add16
  store i32 %mul17, i32* %csize, align 4
  %7 = load i32, i32* %csize, align 4
  %call18 = call i8* @gs_malloc(i32 %7, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store i8* %call18, i8** %cells, align 8
  %8 = load i8*, i8** %cells, align 8
  %cmp19 = icmp eq i8* %8, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end
  %9 = load i8*, i8** %cells, align 8
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  call void @fill_cells(i8* %9, i8* %10, i32 %11, i32 %12)
  %13 = load i8*, i8** %str.addr, align 8
  %next = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 4
  store i8* %13, i8** %next, align 8
  %14 = load i8*, i8** %str.addr, align 8
  %15 = load i32, i32* %maxlen.addr, align 4
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %limit = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 1
  store i8* %add.ptr, i8** %limit, align 8
  store i32 0, i32* %lsbx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %if.end.22
  %16 = load i32, i32* %lsbx, align 4
  %17 = load i32, i32* %width.addr, align 4
  %cmp23 = icmp slt i32 %16, %17
  br i1 %cmp23, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %y, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body
  %18 = load i32, i32* %y, align 4
  %19 = load i32, i32* %height.addr, align 4
  %cmp26 = icmp sle i32 %18, %19
  br i1 %cmp26, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.25
  %20 = load i32, i32* %y, align 4
  %21 = load i32, i32* %width.addr, align 4
  %add29 = add nsw i32 %21, 2
  %mul30 = mul nsw i32 %20, %add29
  %22 = load i32, i32* %lsbx, align 4
  %add31 = add nsw i32 %mul30, %22
  %add32 = add nsw i32 %add31, 1
  %idxprom = sext i32 %add32 to i64
  %23 = load i8*, i8** %cells, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %idxprom
  %24 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %24, 0
  br i1 %tobool, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body.28
  br label %xit

if.end.34:                                        ; preds = %for.body.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %25 = load i32, i32* %y, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end
  %26 = load i32, i32* %lsbx, align 4
  %inc36 = add nsw i32 %26, 1
  store i32 %inc36, i32* %lsbx, align 4
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  br label %xit

xit:                                              ; preds = %for.end.37, %if.then.33
  %27 = load double, double* %origin_x.addr, align 8
  %mul38 = fmul double %27, 4.000000e+00
  %28 = load double, double* %origin_y.addr, align 8
  %mul39 = fmul double %28, 4.000000e+00
  %ifm40 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 0
  %call41 = call i32 @gs_distance_transform(double %mul38, double %mul39, %struct.gs_matrix_s* %ifm40, %struct.gs_point_s* %opt)
  store i32 %call41, i32* %code, align 4
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.58, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %xit
  %29 = load double, double* %wx.addr, align 8
  %mul45 = fmul double %29, 4.000000e+00
  %30 = load double, double* %wy.addr, align 8
  %mul46 = fmul double %30, 4.000000e+00
  %ifm47 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 0
  %call48 = call i32 @gs_distance_transform(double %mul45, double %mul46, %struct.gs_matrix_s* %ifm47, %struct.gs_point_s* %wpt)
  store i32 %call48, i32* %code, align 4
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.58, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.44
  %31 = load i32, i32* %lsbx, align 4
  %conv52 = sitofp i32 %31 to double
  %32 = load double, double* %origin_x.addr, align 8
  %sub = fsub double %conv52, %32
  %mul53 = fmul double %sub, 4.000000e+00
  %ifm54 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 0
  %call55 = call i32 @gs_distance_transform(double %mul53, double 0.000000e+00, %struct.gs_matrix_s* %ifm54, %struct.gs_point_s* %lsbpt)
  store i32 %call55, i32* %code, align 4
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.44, %xit
  %33 = load i32, i32* %code, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.59:                                        ; preds = %lor.lhs.false.51
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %opt, i32 0, i32 0
  %34 = load float, float* %x, align 4
  %conv60 = fpext float %34 to double
  %call61 = call i32 @round_coord(double %conv60)
  %ox = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 2
  store i32 %call61, i32* %ox, align 4
  %y62 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %opt, i32 0, i32 1
  %35 = load float, float* %y62, align 4
  %conv63 = fpext float %35 to double
  %call64 = call i32 @round_coord(double %conv63)
  %oy = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 3
  store i32 %call64, i32* %oy, align 4
  %x65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wpt, i32 0, i32 0
  %36 = load float, float* %x65, align 4
  %conv66 = fpext float %36 to double
  %call67 = call i32 @round_coord(double %conv66)
  store i32 %call67, i32* %iwx, align 4
  %y68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wpt, i32 0, i32 1
  %37 = load float, float* %y68, align 4
  %conv69 = fpext float %37 to double
  %call70 = call i32 @round_coord(double %conv69)
  store i32 %call70, i32* %iwy, align 4
  %x71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %lsbpt, i32 0, i32 0
  %38 = load float, float* %x71, align 4
  %conv72 = fpext float %38 to double
  %call73 = call i32 @round_coord(double %conv72)
  store i32 %call73, i32* %ilsbx, align 4
  %y74 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %lsbpt, i32 0, i32 1
  %39 = load float, float* %y74, align 4
  %conv75 = fpext float %39 to double
  %call76 = call i32 @round_coord(double %conv75)
  store i32 %call76, i32* %ilsby, align 4
  %40 = load %struct.status*, %struct.status** %out, align 8
  %41 = load i32, i32* %ilsbx, align 4
  %call77 = call i32 @put_int(%struct.status* %40, i32 %41)
  store i32 %call77, i32* %code, align 4
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.59
  %42 = load i32, i32* %code, align 4
  store i32 %42, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.end.59
  %43 = load i32, i32* %iwy, align 4
  %cmp82 = icmp ne i32 %43, 0
  br i1 %cmp82, label %if.then.87, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %if.end.81
  %44 = load i32, i32* %ilsby, align 4
  %cmp85 = icmp ne i32 %44, 0
  br i1 %cmp85, label %if.then.87, label %if.else

if.then.87:                                       ; preds = %lor.lhs.false.84, %if.end.81
  %45 = load %struct.status*, %struct.status** %out, align 8
  %46 = load i32, i32* %ilsby, align 4
  %call88 = call i32 @put_int(%struct.status* %45, i32 %46)
  store i32 %call88, i32* %code, align 4
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.then.99, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %if.then.87
  %47 = load %struct.status*, %struct.status** %out, align 8
  %48 = load i32, i32* %iwx, align 4
  %call92 = call i32 @put_int(%struct.status* %47, i32 %48)
  store i32 %call92, i32* %code, align 4
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.then.99, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %lor.lhs.false.91
  %49 = load %struct.status*, %struct.status** %out, align 8
  %50 = load i32, i32* %iwy, align 4
  %call96 = call i32 @put_int(%struct.status* %49, i32 %50)
  store i32 %call96, i32* %code, align 4
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %lor.lhs.false.95, %lor.lhs.false.91, %if.then.87
  %51 = load i32, i32* %code, align 4
  store i32 %51, i32* %retval
  br label %return

if.end.100:                                       ; preds = %lor.lhs.false.95
  %next101 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 4
  %52 = load i8*, i8** %next101, align 8
  %add.ptr102 = getelementptr inbounds i8, i8* %52, i64 2
  %limit103 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 1
  %53 = load i8*, i8** %limit103, align 8
  %cmp104 = icmp ugt i8* %add.ptr102, %53
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.100
  store i32 -13, i32* %retval
  br label %return

if.end.107:                                       ; preds = %if.end.100
  %next108 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 4
  %54 = load i8*, i8** %next108, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr, i8** %next108, align 8
  store i8 12, i8* %54, align 1
  %next109 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 4
  %55 = load i8*, i8** %next109, align 8
  %incdec.ptr110 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr110, i8** %next109, align 8
  store i8 7, i8* %55, align 1
  br label %if.end.125

if.else:                                          ; preds = %lor.lhs.false.84
  %56 = load %struct.status*, %struct.status** %out, align 8
  %57 = load i32, i32* %iwx, align 4
  %call111 = call i32 @put_int(%struct.status* %56, i32 %57)
  store i32 %call111, i32* %code, align 4
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.else
  %58 = load i32, i32* %code, align 4
  store i32 %58, i32* %retval
  br label %return

if.end.115:                                       ; preds = %if.else
  %next116 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 4
  %59 = load i8*, i8** %next116, align 8
  %add.ptr117 = getelementptr inbounds i8, i8* %59, i64 1
  %limit118 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 1
  %60 = load i8*, i8** %limit118, align 8
  %cmp119 = icmp ugt i8* %add.ptr117, %60
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.115
  store i32 -13, i32* %retval
  br label %return

if.end.122:                                       ; preds = %if.end.115
  %next123 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 4
  %61 = load i8*, i8** %next123, align 8
  %incdec.ptr124 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr124, i8** %next123, align 8
  store i8 13, i8* %61, align 1
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.122, %if.end.107
  %62 = load i32, i32* %lsbx, align 4
  %mul126 = mul nsw i32 %62, 4
  %px = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 5
  store i32 %mul126, i32* %px, align 4
  %63 = load double, double* %origin_y.addr, align 8
  %mul127 = fmul double %63, 4.000000e+00
  %conv128 = fptosi double %mul127 to i32
  %py = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 6
  store i32 %conv128, i32* %py, align 4
  %64 = load i32, i32* %ilsbx, align 4
  %ox129 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 2
  %65 = load i32, i32* %ox129, align 4
  %add130 = add nsw i32 %64, %65
  %cpx = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 7
  store i32 %add130, i32* %cpx, align 4
  %66 = load i32, i32* %ilsby, align 4
  %oy131 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 3
  %67 = load i32, i32* %oy131, align 4
  %add132 = add nsw i32 %66, %67
  %cpy = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 8
  store i32 %add132, i32* %cpy, align 4
  %68 = load i8*, i8** %cells, align 8
  %69 = load i32, i32* %width.addr, align 4
  %70 = load i32, i32* %height.addr, align 4
  %71 = load %struct.status*, %struct.status** %out, align 8
  %call133 = call i32 @trace_cells(i8* %68, i32 %69, i32 %70, %struct.status* %71)
  store i32 %call133, i32* %code, align 4
  %72 = load i8*, i8** %cells, align 8
  %73 = load i32, i32* %csize, align 4
  call void @gs_free(i8* %72, i32 %73, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %74 = load i32, i32* %code, align 4
  %cmp134 = icmp slt i32 %74, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.125
  %75 = load i32, i32* %code, align 4
  store i32 %75, i32* %retval
  br label %return

if.end.137:                                       ; preds = %if.end.125
  %next138 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 4
  %76 = load i8*, i8** %next138, align 8
  %limit139 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 1
  %77 = load i8*, i8** %limit139, align 8
  %cmp140 = icmp uge i8* %76, %77
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.137
  store i32 -13, i32* %retval
  br label %return

if.end.143:                                       ; preds = %if.end.137
  %next144 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 4
  %78 = load i8*, i8** %next144, align 8
  %incdec.ptr145 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr145, i8** %next144, align 8
  store i8 14, i8* %78, align 1
  %next146 = getelementptr inbounds %struct.status, %struct.status* %stat, i32 0, i32 4
  %79 = load i8*, i8** %next146, align 8
  %80 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %79 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %80 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv147 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv147, i32* %retval
  br label %return

return:                                           ; preds = %if.end.143, %if.then.142, %if.then.136, %if.then.121, %if.then.114, %if.then.106, %if.then.99, %if.then.80, %if.then.58, %if.then.21, %if.then
  %81 = load i32, i32* %retval
  ret i32 %81
}

declare i32 @gs_currentmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #1

declare i32 @gs_make_scaling(double, double, %struct.gs_matrix_s*) #1

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

declare i8* @gs_malloc(i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @fill_cells(i8* %cells, i8* %data, i32 %width, i32 %height) #0 {
entry:
  %cells.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %dptr = alloca i8*, align 8
  %cptr = alloca i8*, align 8
  %mask = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  store i8* %cells, i8** %cells.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 -1
  store i8* %add.ptr, i8** %dptr, align 8
  %1 = load i8*, i8** %cells.addr, align 8
  %2 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %2, 2
  %3 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %add, %3
  %idx.ext = sext i32 %mul to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr1, i64 1
  store i8* %add.ptr2, i8** %cptr, align 8
  %4 = load i8*, i8** %cells.addr, align 8
  %5 = load i32, i32* %width.addr, align 4
  %add3 = add nsw i32 %5, 2
  %6 = load i32, i32* %height.addr, align 4
  %add4 = add nsw i32 %6, 2
  %mul5 = mul nsw i32 %add3, %add4
  %conv = sext i32 %mul5 to i64
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %conv, i32 1, i1 false)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %mask, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %width.addr, align 4
  %cmp8 = icmp slt i32 %9, %10
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  %11 = load i32, i32* %mask, align 4
  %cmp11 = icmp eq i32 %11, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.10
  store i32 128, i32* %mask, align 4
  %12 = load i8*, i8** %dptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %dptr, align 8
  %13 = load i8, i8* %incdec.ptr, align 1
  %conv13 = zext i8 %13 to i32
  store i32 %conv13, i32* %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.10
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %mask, align 4
  %and = and i32 %14, %15
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  %16 = load i8*, i8** %cptr, align 8
  store i8 1, i8* %16, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %17 = load i32, i32* %x, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %x, align 4
  %18 = load i32, i32* %mask, align 4
  %shr = ashr i32 %18, 1
  store i32 %shr, i32* %mask, align 4
  %19 = load i8*, i8** %cptr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr16, i8** %cptr, align 8
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %20 = load i32, i32* %width.addr, align 4
  %mul17 = mul nsw i32 %20, 2
  %add18 = add nsw i32 %mul17, 2
  %21 = load i8*, i8** %cptr, align 8
  %idx.ext19 = sext i32 %add18 to i64
  %idx.neg = sub i64 0, %idx.ext19
  %add.ptr20 = getelementptr inbounds i8, i8* %21, i64 %idx.neg
  store i8* %add.ptr20, i8** %cptr, align 8
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %22 = load i32, i32* %y, align 4
  %inc22 = add nsw i32 %22, 1
  store i32 %inc22, i32* %y, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  ret void
}

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #1

; Function Attrs: nounwind uwtable
define i32 @round_coord(double %v) #0 {
entry:
  %v.addr = alloca double, align 8
  %c = alloca i64, align 8
  store double %v, double* %v.addr, align 8
  %0 = load double, double* %v.addr, align 8
  %add = fadd double %0, 5.000000e-01
  %conv = fptosi double %add to i64
  store i64 %conv, i64* %c, align 8
  %1 = load i64, i64* %c, align 8
  %cmp = icmp sgt i64 %1, 32767
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.7

cond.false:                                       ; preds = %entry
  %2 = load i64, i64* %c, align 8
  %cmp2 = icmp slt i64 %2, -32767
  br i1 %cmp2, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %3 = load i64, i64* %c, align 8
  %conv6 = trunc i64 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi i32 [ -32767, %cond.true.4 ], [ %conv6, %cond.false.5 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi i32 [ 32767, %cond.true ], [ %cond, %cond.end ]
  ret i32 %cond8
}

; Function Attrs: nounwind uwtable
define i32 @put_int(%struct.status* %out, i32 %v) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca %struct.status*, align 8
  %v.addr = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store %struct.status* %out, %struct.status** %out.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  %0 = load %struct.status*, %struct.status** %out.addr, align 8
  %next = getelementptr inbounds %struct.status, %struct.status* %0, i32 0, i32 4
  %1 = load i8*, i8** %next, align 8
  store i8* %1, i8** %ptr, align 8
  %2 = load i8*, i8** %ptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 5
  %3 = load %struct.status*, %struct.status** %out.addr, align 8
  %limit = getelementptr inbounds %struct.status, %struct.status* %3, i32 0, i32 1
  %4 = load i8*, i8** %limit, align 8
  %cmp = icmp ugt i8* %add.ptr, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %v.addr, align 4
  %cmp1 = icmp sge i32 %5, -107
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %v.addr, align 4
  %cmp2 = icmp sle i32 %6, 107
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %v.addr, align 4
  %sub = sub nsw i32 %7, -107
  %add = add nsw i32 %sub, 32
  %conv = trunc i32 %add to i8
  %8 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 %conv, i8* %8, align 1
  br label %if.end.55

if.else:                                          ; preds = %land.lhs.true, %if.end
  %9 = load i32, i32* %v.addr, align 4
  %cmp4 = icmp sge i32 %9, 108
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.17

land.lhs.true.6:                                  ; preds = %if.else
  %10 = load i32, i32* %v.addr, align 4
  %cmp7 = icmp sle i32 %10, 1131
  br i1 %cmp7, label %if.then.9, label %if.else.17

if.then.9:                                        ; preds = %land.lhs.true.6
  %11 = load i32, i32* %v.addr, align 4
  %sub10 = sub nsw i32 %11, 108
  store i32 %sub10, i32* %v.addr, align 4
  %12 = load i32, i32* %v.addr, align 4
  %shr = ashr i32 %12, 8
  %add11 = add nsw i32 %shr, 246
  %add12 = add nsw i32 %add11, 1
  %conv13 = trunc i32 %add12 to i8
  %13 = load i8*, i8** %ptr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr14, i8** %ptr, align 8
  store i8 %conv13, i8* %13, align 1
  %14 = load i32, i32* %v.addr, align 4
  %and = and i32 %14, 255
  %conv15 = trunc i32 %and to i8
  %15 = load i8*, i8** %ptr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr16, i8** %ptr, align 8
  store i8 %conv15, i8* %15, align 1
  br label %if.end.54

if.else.17:                                       ; preds = %land.lhs.true.6, %if.else
  %16 = load i32, i32* %v.addr, align 4
  %cmp18 = icmp sge i32 %16, -1131
  br i1 %cmp18, label %land.lhs.true.20, label %if.else.34

land.lhs.true.20:                                 ; preds = %if.else.17
  %17 = load i32, i32* %v.addr, align 4
  %cmp21 = icmp sle i32 %17, -108
  br i1 %cmp21, label %if.then.23, label %if.else.34

if.then.23:                                       ; preds = %land.lhs.true.20
  %18 = load i32, i32* %v.addr, align 4
  %sub24 = sub nsw i32 %18, -108
  %sub25 = sub nsw i32 0, %sub24
  store i32 %sub25, i32* %v.addr, align 4
  %19 = load i32, i32* %v.addr, align 4
  %shr26 = ashr i32 %19, 8
  %add27 = add nsw i32 %shr26, 250
  %add28 = add nsw i32 %add27, 1
  %conv29 = trunc i32 %add28 to i8
  %20 = load i8*, i8** %ptr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr30, i8** %ptr, align 8
  store i8 %conv29, i8* %20, align 1
  %21 = load i32, i32* %v.addr, align 4
  %and31 = and i32 %21, 255
  %conv32 = trunc i32 %and31 to i8
  %22 = load i8*, i8** %ptr, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr33, i8** %ptr, align 8
  store i8 %conv32, i8* %22, align 1
  br label %if.end.53

if.else.34:                                       ; preds = %land.lhs.true.20, %if.else.17
  %23 = load i8*, i8** %ptr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr35, i8** %ptr, align 8
  store i8 -1, i8* %23, align 1
  %24 = load i32, i32* %v.addr, align 4
  %conv36 = sext i32 %24 to i64
  %shr37 = ashr i64 %conv36, 24
  %and38 = and i64 %shr37, 255
  %conv39 = trunc i64 %and38 to i8
  %25 = load i8*, i8** %ptr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr40, i8** %ptr, align 8
  store i8 %conv39, i8* %25, align 1
  %26 = load i32, i32* %v.addr, align 4
  %conv41 = sext i32 %26 to i64
  %shr42 = ashr i64 %conv41, 16
  %and43 = and i64 %shr42, 255
  %conv44 = trunc i64 %and43 to i8
  %27 = load i8*, i8** %ptr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr45, i8** %ptr, align 8
  store i8 %conv44, i8* %27, align 1
  %28 = load i32, i32* %v.addr, align 4
  %shr46 = ashr i32 %28, 8
  %and47 = and i32 %shr46, 255
  %conv48 = trunc i32 %and47 to i8
  %29 = load i8*, i8** %ptr, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr49, i8** %ptr, align 8
  store i8 %conv48, i8* %29, align 1
  %30 = load i32, i32* %v.addr, align 4
  %and50 = and i32 %30, 255
  %conv51 = trunc i32 %and50 to i8
  %31 = load i8*, i8** %ptr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr52, i8** %ptr, align 8
  store i8 %conv51, i8* %31, align 1
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.34, %if.then.23
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.9
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.3
  %32 = load i8*, i8** %ptr, align 8
  %33 = load %struct.status*, %struct.status** %out.addr, align 8
  %next56 = getelementptr inbounds %struct.status, %struct.status* %33, i32 0, i32 4
  store i8* %32, i8** %next56, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i32 @trace_cells(i8* %cells, i32 %width, i32 %height, %struct.status* %out) #0 {
entry:
  %retval = alloca i32, align 4
  %cells.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %out.addr = alloca %struct.status*, align 8
  %cptr = alloca i8*, align 8
  %code = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i8* %cells, i8** %cells.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct.status* %out, %struct.status** %out.addr, align 8
  %0 = load i8*, i8** %cells.addr, align 8
  %1 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %1, 2
  %2 = load i32, i32* %height.addr, align 4
  %add1 = add nsw i32 %2, 1
  %mul = mul nsw i32 %add, %add1
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 -2
  store i8* %add.ptr2, i8** %cptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8*, i8** %cptr, align 8
  %4 = load i8*, i8** %cells.addr, align 8
  %cmp = icmp uge i8* %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %cptr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %width.addr, align 4
  %add5 = add nsw i32 %7, 2
  %sub = sub nsw i32 0, %add5
  %idxprom = sext i32 %sub to i64
  %8 = load i8*, i8** %cptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.end.38

if.then:                                          ; preds = %land.lhs.true
  %10 = load i8*, i8** %cptr, align 8
  %11 = load i8*, i8** %cells.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %12 = load i32, i32* %width.addr, align 4
  %add9 = add nsw i32 %12, 2
  %conv10 = sext i32 %add9 to i64
  %rem = srem i64 %sub.ptr.sub, %conv10
  %sub11 = sub nsw i64 %rem, 1
  %conv12 = trunc i64 %sub11 to i32
  store i32 %conv12, i32* %x, align 4
  %13 = load i8*, i8** %cptr, align 8
  %14 = load i8*, i8** %cells.addr, align 8
  %sub.ptr.lhs.cast13 = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast14 = ptrtoint i8* %14 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  %15 = load i32, i32* %width.addr, align 4
  %add16 = add nsw i32 %15, 2
  %conv17 = sext i32 %add16 to i64
  %div = sdiv i64 %sub.ptr.sub15, %conv17
  %sub18 = sub nsw i64 %div, 1
  %conv19 = trunc i64 %sub18 to i32
  store i32 %conv19, i32* %y, align 4
  %16 = load %struct.status*, %struct.status** %out.addr, align 8
  %17 = load i32, i32* %x, align 4
  %mul20 = mul nsw i32 %17, 4
  %add21 = add nsw i32 %mul20, 1
  %18 = load %struct.status*, %struct.status** %out.addr, align 8
  %px = getelementptr inbounds %struct.status, %struct.status* %18, i32 0, i32 5
  %19 = load i32, i32* %px, align 4
  %sub22 = sub nsw i32 %add21, %19
  %20 = load i32, i32* %y, align 4
  %mul23 = mul nsw i32 %20, 4
  %21 = load %struct.status*, %struct.status** %out.addr, align 8
  %py = getelementptr inbounds %struct.status, %struct.status* %21, i32 0, i32 6
  %22 = load i32, i32* %py, align 4
  %sub24 = sub nsw i32 %mul23, %22
  %call = call i32 @put_dxdy(%struct.status* %16, i32 %sub22, i32 %sub24, i32 1)
  store i32 %call, i32* %code, align 4
  %cmp25 = icmp slt i32 %call, 0
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.then
  %23 = load i32, i32* %code, align 4
  store i32 %23, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %24 = load %struct.status*, %struct.status** %out.addr, align 8
  %count = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 11
  store i32 0, i32* %count, align 4
  %25 = load %struct.status*, %struct.status** %out.addr, align 8
  %26 = load i8*, i8** %cptr, align 8
  %27 = load i32, i32* %width.addr, align 4
  %call28 = call i32 @trace_from(%struct.status* %25, i8* %26, i32 %27)
  store i32 %call28, i32* %code, align 4
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end
  %28 = load i32, i32* %code, align 4
  store i32 %28, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end
  %29 = load %struct.status*, %struct.status** %out.addr, align 8
  %next = getelementptr inbounds %struct.status, %struct.status* %29, i32 0, i32 4
  %30 = load i8*, i8** %next, align 8
  %31 = load %struct.status*, %struct.status** %out.addr, align 8
  %limit = getelementptr inbounds %struct.status, %struct.status* %31, i32 0, i32 1
  %32 = load i8*, i8** %limit, align 8
  %cmp33 = icmp uge i8* %30, %32
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  store i32 -13, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.32
  %33 = load %struct.status*, %struct.status** %out.addr, align 8
  %next37 = getelementptr inbounds %struct.status, %struct.status* %33, i32 0, i32 4
  %34 = load i8*, i8** %next37, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %next37, align 8
  store i8 9, i8* %34, align 1
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.36, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %35 = load i8*, i8** %cptr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %incdec.ptr39, i8** %cptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.35, %if.then.31, %if.then.27
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare void @gs_free(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @put_dxdy(%struct.status* %out, i32 %dx, i32 %dy, i32 %moving) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca %struct.status*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %moving.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %npx = alloca i32, align 4
  %npy = alloca i32, align 4
  %npt = alloca %struct.gs_point_s, align 4
  %ncpx = alloca i32, align 4
  %ncpy = alloca i32, align 4
  %cdx = alloca i32, align 4
  %cdy = alloca i32, align 4
  store %struct.status* %out, %struct.status** %out.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  store i32 %moving, i32* %moving.addr, align 4
  %0 = load %struct.status*, %struct.status** %out.addr, align 8
  %px = getelementptr inbounds %struct.status, %struct.status* %0, i32 0, i32 5
  %1 = load i32, i32* %px, align 4
  %2 = load i32, i32* %dx.addr, align 4
  %add = add nsw i32 %1, %2
  store i32 %add, i32* %npx, align 4
  %3 = load %struct.status*, %struct.status** %out.addr, align 8
  %py = getelementptr inbounds %struct.status, %struct.status* %3, i32 0, i32 6
  %4 = load i32, i32* %py, align 4
  %5 = load i32, i32* %dy.addr, align 4
  %add1 = add nsw i32 %4, %5
  store i32 %add1, i32* %npy, align 4
  %6 = load i32, i32* %npx, align 4
  %conv = sitofp i32 %6 to double
  %7 = load i32, i32* %npy, align 4
  %conv2 = sitofp i32 %7 to double
  %8 = load %struct.status*, %struct.status** %out.addr, align 8
  %ifm = getelementptr inbounds %struct.status, %struct.status* %8, i32 0, i32 0
  %call = call i32 @gs_distance_transform(double %conv, double %conv2, %struct.gs_matrix_s* %ifm, %struct.gs_point_s* %npt)
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %npt, i32 0, i32 0
  %9 = load float, float* %x, align 4
  %conv3 = fpext float %9 to double
  %call4 = call i32 @round_coord(double %conv3)
  store i32 %call4, i32* %ncpx, align 4
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %npt, i32 0, i32 1
  %10 = load float, float* %y, align 4
  %conv5 = fpext float %10 to double
  %call6 = call i32 @round_coord(double %conv5)
  store i32 %call6, i32* %ncpy, align 4
  %11 = load i32, i32* %ncpx, align 4
  %12 = load %struct.status*, %struct.status** %out.addr, align 8
  %cpx = getelementptr inbounds %struct.status, %struct.status* %12, i32 0, i32 7
  %13 = load i32, i32* %cpx, align 4
  %sub = sub nsw i32 %11, %13
  store i32 %sub, i32* %cdx, align 4
  %14 = load i32, i32* %ncpy, align 4
  %15 = load %struct.status*, %struct.status** %out.addr, align 8
  %cpy = getelementptr inbounds %struct.status, %struct.status* %15, i32 0, i32 8
  %16 = load i32, i32* %cpy, align 4
  %sub7 = sub nsw i32 %14, %16
  store i32 %sub7, i32* %cdy, align 4
  %17 = load i32, i32* %cdx, align 4
  %cmp = icmp ne i32 %17, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %18 = load i32, i32* %cdy, align 4
  %cmp9 = icmp eq i32 %18, 0
  br i1 %cmp9, label %if.then, label %if.end.15

if.then:                                          ; preds = %lor.lhs.false, %entry
  %19 = load %struct.status*, %struct.status** %out.addr, align 8
  %20 = load i32, i32* %cdx, align 4
  %call11 = call i32 @put_int(%struct.status* %19, i32 %20)
  store i32 %call11, i32* %code, align 4
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then
  %21 = load i32, i32* %code, align 4
  store i32 %21, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %lor.lhs.false
  %22 = load i32, i32* %cdy, align 4
  %cmp16 = icmp ne i32 %22, 0
  br i1 %cmp16, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %if.end.15
  %23 = load %struct.status*, %struct.status** %out.addr, align 8
  %24 = load i32, i32* %cdy, align 4
  %call19 = call i32 @put_int(%struct.status* %23, i32 %24)
  store i32 %call19, i32* %code, align 4
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.18
  %25 = load i32, i32* %code, align 4
  store i32 %25, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.15
  %26 = load %struct.status*, %struct.status** %out.addr, align 8
  %next = getelementptr inbounds %struct.status, %struct.status* %26, i32 0, i32 4
  %27 = load i8*, i8** %next, align 8
  %28 = load %struct.status*, %struct.status** %out.addr, align 8
  %limit = getelementptr inbounds %struct.status, %struct.status* %28, i32 0, i32 1
  %29 = load i8*, i8** %limit, align 8
  %cmp25 = icmp eq i8* %27, %29
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  store i32 -13, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  %30 = load i32, i32* %cdy, align 4
  %cmp29 = icmp eq i32 %30, 0
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.28
  %31 = load i32, i32* %moving.addr, align 4
  %tobool = icmp ne i32 %31, 0
  %cond = select i1 %tobool, i32 22, i32 6
  br label %cond.end.40

cond.false:                                       ; preds = %if.end.28
  %32 = load i32, i32* %cdx, align 4
  %cmp31 = icmp eq i32 %32, 0
  br i1 %cmp31, label %cond.true.33, label %cond.false.36

cond.true.33:                                     ; preds = %cond.false
  %33 = load i32, i32* %moving.addr, align 4
  %tobool34 = icmp ne i32 %33, 0
  %cond35 = select i1 %tobool34, i32 4, i32 7
  br label %cond.end

cond.false.36:                                    ; preds = %cond.false
  %34 = load i32, i32* %moving.addr, align 4
  %tobool37 = icmp ne i32 %34, 0
  %cond38 = select i1 %tobool37, i32 21, i32 5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.36, %cond.true.33
  %cond39 = phi i32 [ %cond35, %cond.true.33 ], [ %cond38, %cond.false.36 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end, %cond.true
  %cond41 = phi i32 [ %cond, %cond.true ], [ %cond39, %cond.end ]
  %conv42 = trunc i32 %cond41 to i8
  %35 = load %struct.status*, %struct.status** %out.addr, align 8
  %next43 = getelementptr inbounds %struct.status, %struct.status* %35, i32 0, i32 4
  %36 = load i8*, i8** %next43, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %next43, align 8
  store i8 %conv42, i8* %36, align 1
  %37 = load i32, i32* %npx, align 4
  %38 = load %struct.status*, %struct.status** %out.addr, align 8
  %px44 = getelementptr inbounds %struct.status, %struct.status* %38, i32 0, i32 5
  store i32 %37, i32* %px44, align 4
  %39 = load i32, i32* %npy, align 4
  %40 = load %struct.status*, %struct.status** %out.addr, align 8
  %py45 = getelementptr inbounds %struct.status, %struct.status* %40, i32 0, i32 6
  store i32 %39, i32* %py45, align 4
  %41 = load i32, i32* %ncpx, align 4
  %42 = load %struct.status*, %struct.status** %out.addr, align 8
  %cpx46 = getelementptr inbounds %struct.status, %struct.status* %42, i32 0, i32 7
  store i32 %41, i32* %cpx46, align 4
  %43 = load i32, i32* %ncpy, align 4
  %44 = load %struct.status*, %struct.status** %out.addr, align 8
  %cpy47 = getelementptr inbounds %struct.status, %struct.status* %44, i32 0, i32 8
  store i32 %43, i32* %cpy47, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.40, %if.then.27, %if.then.22, %if.then.14
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define i32 @trace_from(%struct.status* %out, i8* %cptr, i32 %width) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca %struct.status*, align 8
  %cptr.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %dir = alloca i32, align 4
  %w2 = alloca i32, align 4
  %part = alloca i32, align 4
  %code = alloca i32, align 4
  %pd = alloca %struct.dir_descr*, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %delta = alloca i32, align 4
  store %struct.status* %out, %struct.status** %out.addr, align 8
  store i8* %cptr, i8** %cptr.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %0, 2
  store i32 %add, i32* %w2, align 4
  store i32 3, i32* %dir, align 4
  store i32 1, i32* %part, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.65, %if.end.55, %if.end.28, %entry
  %1 = load i32, i32* %dir, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.dir_descr], [5 x %struct.dir_descr]* @trace_from.nesw, i32 0, i64 %idxprom
  store %struct.dir_descr* %arrayidx, %struct.dir_descr** %pd, align 8
  %2 = load %struct.dir_descr*, %struct.dir_descr** %pd, align 8
  %dx1 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %2, i32 0, i32 2
  %3 = load i16, i16* %dx1, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, i32* %dx, align 4
  %4 = load %struct.dir_descr*, %struct.dir_descr** %pd, align 8
  %dy2 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %4, i32 0, i32 3
  %5 = load i16, i16* %dy2, align 2
  %conv3 = sext i16 %5 to i32
  store i32 %conv3, i32* %dy, align 4
  %6 = load i32, i32* %dir, align 4
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.cond
  %7 = load i8*, i8** %cptr.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv5 = zext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 2
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load i8*, i8** %cptr.addr, align 8
  store i8 2, i8* %9, align 1
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %for.cond
  %10 = load %struct.dir_descr*, %struct.dir_descr** %pd, align 8
  %ty = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %10, i32 0, i32 1
  %11 = load i16, i16* %ty, align 2
  %conv10 = sext i16 %11 to i32
  %12 = load i32, i32* %w2, align 4
  %mul = mul nsw i32 %conv10, %12
  %13 = load %struct.dir_descr*, %struct.dir_descr** %pd, align 8
  %tx = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %13, i32 0, i32 0
  %14 = load i16, i16* %tx, align 2
  %conv11 = sext i16 %14 to i32
  %add12 = add nsw i32 %mul, %conv11
  store i32 %add12, i32* %delta, align 4
  %15 = load i32, i32* %delta, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load i8*, i8** %cptr.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %16, i64 %idxprom13
  %17 = load i8, i8* %arrayidx14, align 1
  %tobool = icmp ne i8 %17, 0
  br i1 %tobool, label %if.then.15, label %if.end.30

if.then.15:                                       ; preds = %if.end.9
  %18 = load i32, i32* %delta, align 4
  %19 = load i8*, i8** %cptr.addr, align 8
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr, i8** %cptr.addr, align 8
  %20 = load %struct.status*, %struct.status** %out.addr, align 8
  %21 = load i32, i32* %dx, align 4
  %22 = load i32, i32* %dy, align 4
  %23 = load i32, i32* %part, align 4
  %sub = sub nsw i32 1, %23
  %call = call i32 @add_dxdy(%struct.status* %20, i32 %21, i32 %22, i32 %sub)
  store i32 %call, i32* %code, align 4
  %cmp16 = icmp slt i32 %call, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  %24 = load i32, i32* %code, align 4
  store i32 %24, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.15
  %25 = load %struct.status*, %struct.status** %out.addr, align 8
  %26 = load %struct.dir_descr*, %struct.dir_descr** %pd, align 8
  %tx20 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %26, i32 0, i32 0
  %27 = load i16, i16* %tx20, align 2
  %conv21 = sext i16 %27 to i32
  %28 = load %struct.dir_descr*, %struct.dir_descr** %pd, align 8
  %ty22 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %28, i32 0, i32 1
  %29 = load i16, i16* %ty22, align 2
  %conv23 = sext i16 %29 to i32
  %call24 = call i32 @add_dxdy(%struct.status* %25, i32 %conv21, i32 %conv23, i32 3)
  store i32 %call24, i32* %code, align 4
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.19
  %30 = load i32, i32* %code, align 4
  store i32 %30, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.19
  %31 = load i32, i32* %dir, align 4
  %sub29 = sub nsw i32 %31, 1
  %and = and i32 %sub29, 3
  store i32 %and, i32* %dir, align 4
  store i32 3, i32* %part, align 4
  br label %for.cond

if.end.30:                                        ; preds = %if.end.9
  %32 = load i32, i32* %dy, align 4
  %33 = load i32, i32* %w2, align 4
  %mul31 = mul nsw i32 %32, %33
  %34 = load i32, i32* %dx, align 4
  %add32 = add nsw i32 %mul31, %34
  store i32 %add32, i32* %delta, align 4
  %35 = load i32, i32* %delta, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load i8*, i8** %cptr.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %36, i64 %idxprom33
  %37 = load i8, i8* %arrayidx34, align 1
  %tobool35 = icmp ne i8 %37, 0
  br i1 %tobool35, label %if.end.58, label %if.then.36

if.then.36:                                       ; preds = %if.end.30
  %38 = load %struct.status*, %struct.status** %out.addr, align 8
  %39 = load i32, i32* %dx, align 4
  %40 = load i32, i32* %dy, align 4
  %41 = load i32, i32* %part, align 4
  %sub37 = sub nsw i32 3, %41
  %call38 = call i32 @add_dxdy(%struct.status* %38, i32 %39, i32 %40, i32 %sub37)
  store i32 %call38, i32* %code, align 4
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.36
  %42 = load i32, i32* %code, align 4
  store i32 %42, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.then.36
  %43 = load %struct.status*, %struct.status** %out.addr, align 8
  %44 = load i32, i32* %dx, align 4
  %45 = load %struct.dir_descr*, %struct.dir_descr** %pd, align 8
  %arrayidx43 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %45, i64 1
  %dx44 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %arrayidx43, i32 0, i32 2
  %46 = load i16, i16* %dx44, align 2
  %conv45 = sext i16 %46 to i32
  %add46 = add nsw i32 %44, %conv45
  %47 = load i32, i32* %dy, align 4
  %48 = load %struct.dir_descr*, %struct.dir_descr** %pd, align 8
  %arrayidx47 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %48, i64 1
  %dy48 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %arrayidx47, i32 0, i32 3
  %49 = load i16, i16* %dy48, align 2
  %conv49 = sext i16 %49 to i32
  %add50 = add nsw i32 %47, %conv49
  %call51 = call i32 @add_dxdy(%struct.status* %43, i32 %add46, i32 %add50, i32 1)
  store i32 %call51, i32* %code, align 4
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.42
  %50 = load i32, i32* %code, align 4
  store i32 %50, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.42
  %51 = load i32, i32* %dir, align 4
  %add56 = add nsw i32 %51, 1
  %and57 = and i32 %add56, 3
  store i32 %and57, i32* %dir, align 4
  store i32 1, i32* %part, align 4
  br label %for.cond

if.end.58:                                        ; preds = %if.end.30
  %52 = load i32, i32* %delta, align 4
  %53 = load i8*, i8** %cptr.addr, align 8
  %idx.ext59 = sext i32 %52 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %53, i64 %idx.ext59
  store i8* %add.ptr60, i8** %cptr.addr, align 8
  %54 = load %struct.status*, %struct.status** %out.addr, align 8
  %55 = load i32, i32* %dx, align 4
  %56 = load i32, i32* %dy, align 4
  %call61 = call i32 @add_dxdy(%struct.status* %54, i32 %55, i32 %56, i32 4)
  store i32 %call61, i32* %code, align 4
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.58
  %57 = load i32, i32* %code, align 4
  store i32 %57, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.end.58
  br label %for.cond

return:                                           ; preds = %if.then.64, %if.then.54, %if.then.41, %if.then.27, %if.then.18, %if.then.8
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define i32 @add_dxdy(%struct.status* %out, i32 %dx, i32 %dy, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca %struct.status*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.status* %out, %struct.status** %out.addr, align 8
  store i32 %dx, i32* %dx.addr, align 4
  store i32 %dy, i32* %dy.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dx.addr, align 4
  %2 = load %struct.status*, %struct.status** %out.addr, align 8
  %dx1 = getelementptr inbounds %struct.status, %struct.status* %2, i32 0, i32 9
  %3 = load i32, i32* %dx1, align 4
  %cmp2 = icmp eq i32 %1, %3
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32, i32* %dy.addr, align 4
  %5 = load %struct.status*, %struct.status** %out.addr, align 8
  %dy3 = getelementptr inbounds %struct.status, %struct.status* %5, i32 0, i32 10
  %6 = load i32, i32* %dy3, align 4
  %cmp4 = icmp eq i32 %4, %6
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %count.addr, align 4
  %8 = load %struct.status*, %struct.status** %out.addr, align 8
  %count6 = getelementptr inbounds %struct.status, %struct.status* %8, i32 0, i32 11
  %9 = load i32, i32* %count6, align 4
  %add = add nsw i32 %9, %7
  store i32 %add, i32* %count6, align 4
  br label %if.end.21

if.else:                                          ; preds = %land.lhs.true, %if.then
  %10 = load %struct.status*, %struct.status** %out.addr, align 8
  %count7 = getelementptr inbounds %struct.status, %struct.status* %10, i32 0, i32 11
  %11 = load i32, i32* %count7, align 4
  %cmp8 = icmp ne i32 %11, 0
  br i1 %cmp8, label %if.then.9, label %if.end.17

if.then.9:                                        ; preds = %if.else
  %12 = load %struct.status*, %struct.status** %out.addr, align 8
  %13 = load %struct.status*, %struct.status** %out.addr, align 8
  %dx10 = getelementptr inbounds %struct.status, %struct.status* %13, i32 0, i32 9
  %14 = load i32, i32* %dx10, align 4
  %15 = load %struct.status*, %struct.status** %out.addr, align 8
  %count11 = getelementptr inbounds %struct.status, %struct.status* %15, i32 0, i32 11
  %16 = load i32, i32* %count11, align 4
  %mul = mul nsw i32 %14, %16
  %17 = load %struct.status*, %struct.status** %out.addr, align 8
  %dy12 = getelementptr inbounds %struct.status, %struct.status* %17, i32 0, i32 10
  %18 = load i32, i32* %dy12, align 4
  %19 = load %struct.status*, %struct.status** %out.addr, align 8
  %count13 = getelementptr inbounds %struct.status, %struct.status* %19, i32 0, i32 11
  %20 = load i32, i32* %count13, align 4
  %mul14 = mul nsw i32 %18, %20
  %call = call i32 @put_dxdy(%struct.status* %12, i32 %mul, i32 %mul14, i32 0)
  store i32 %call, i32* %code, align 4
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.9
  %21 = load i32, i32* %code, align 4
  store i32 %21, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.9
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.else
  %22 = load i32, i32* %dx.addr, align 4
  %23 = load %struct.status*, %struct.status** %out.addr, align 8
  %dx18 = getelementptr inbounds %struct.status, %struct.status* %23, i32 0, i32 9
  store i32 %22, i32* %dx18, align 4
  %24 = load i32, i32* %dy.addr, align 4
  %25 = load %struct.status*, %struct.status** %out.addr, align 8
  %dy19 = getelementptr inbounds %struct.status, %struct.status* %25, i32 0, i32 10
  store i32 %24, i32* %dy19, align 4
  %26 = load i32, i32* %count.addr, align 4
  %27 = load %struct.status*, %struct.status** %out.addr, align 8
  %count20 = getelementptr inbounds %struct.status, %struct.status* %27, i32 0, i32 11
  store i32 %26, i32* %count20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.17, %if.then.5
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.16
  %28 = load i32, i32* %retval
  ret i32 %28
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
