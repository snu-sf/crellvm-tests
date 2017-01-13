; ModuleID = './plug-ins/color-rotate/color-rotate-draw.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cairo = type opaque
%struct.RcmAngle = type { float, float, i32 }

; Function Attrs: nounwind uwtable
define void @color_rotate_draw_little_circle(%struct._cairo* %cr, float %hue, float %satur) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %hue.addr = alloca float, align 4
  %satur.addr = alloca float, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store float %hue, float* %hue.addr, align 4
  store float %satur, float* %satur.addr, align 4
  %0 = load float, float* %satur.addr, align 4
  %mul = fmul float 6.000000e+01, %0
  %conv = fpext float %mul to double
  %1 = load float, float* %hue.addr, align 4
  %conv1 = fpext float %1 to double
  %call = call double @cos(double %conv1) #3
  %mul2 = fmul double %conv, %call
  %add = fadd double 6.300000e+01, %mul2
  %conv3 = fptosi double %add to i32
  store i32 %conv3, i32* %x, align 4
  %2 = load float, float* %satur.addr, align 4
  %mul4 = fmul float 6.000000e+01, %2
  %conv5 = fpext float %mul4 to double
  %3 = load float, float* %hue.addr, align 4
  %conv6 = fpext float %3 to double
  %call7 = call double @sin(double %conv6) #3
  %mul8 = fmul double %conv5, %call7
  %sub = fsub double 6.300000e+01, %mul8
  %conv9 = fptosi double %sub to i32
  store i32 %conv9, i32* %y, align 4
  %4 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_new_sub_path(%struct._cairo* %4)
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %6 = load i32, i32* %x, align 4
  %conv10 = sitofp i32 %6 to double
  %7 = load i32, i32* %y, align 4
  %conv11 = sitofp i32 %7 to double
  call void @cairo_arc(%struct._cairo* %5, double %conv10, double %conv11, double 3.000000e+00, double 0.000000e+00, double 0x401921FB54442D18)
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %8, double 3.000000e+00)
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %9, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 6.000000e-01)
  %10 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %10)
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %11, double 1.000000e+00)
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %12, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 8.000000e-01)
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %13)
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

declare void @cairo_new_sub_path(%struct._cairo*) #2

declare void @cairo_arc(%struct._cairo*, double, double, double, double, double) #2

declare void @cairo_set_line_width(%struct._cairo*, double) #2

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #2

declare void @cairo_stroke_preserve(%struct._cairo*) #2

declare void @cairo_stroke(%struct._cairo*) #2

; Function Attrs: nounwind uwtable
define void @color_rotate_draw_large_circle(%struct._cairo* %cr, float %gray_sat) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %gray_sat.addr = alloca float, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store float %gray_sat, float* %gray_sat.addr, align 4
  store i32 63, i32* %x, align 4
  store i32 63, i32* %y, align 4
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_new_sub_path(%struct._cairo* %0)
  %1 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %2 = load i32, i32* %x, align 4
  %conv = sitofp i32 %2 to double
  %3 = load i32, i32* %y, align 4
  %conv1 = sitofp i32 %3 to double
  %4 = load float, float* %gray_sat.addr, align 4
  %mul = fmul float 6.000000e+01, %4
  %conv2 = fpext float %mul to double
  call void @cairo_arc(%struct._cairo* %1, double %conv, double %conv1, double %conv2, double 0.000000e+00, double 0x401921FB54442D18)
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %5, double 3.000000e+00)
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %6, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 6.000000e-01)
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %7)
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %8, double 1.000000e+00)
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %9, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 8.000000e-01)
  %10 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define void @color_rotate_draw_arrows(%struct._cairo* %cr, %struct.RcmAngle* %angle) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %angle.addr = alloca %struct.RcmAngle*, align 8
  %dist = alloca i32, align 4
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %cw_ccw = alloca float, align 4
  %delta = alloca float, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct.RcmAngle* %angle, %struct.RcmAngle** %angle.addr, align 8
  %0 = load %struct.RcmAngle*, %struct.RcmAngle** %angle.addr, align 8
  %alpha1 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %0, i32 0, i32 0
  %1 = load float, float* %alpha1, align 4
  store float %1, float* %alpha, align 4
  %2 = load %struct.RcmAngle*, %struct.RcmAngle** %angle.addr, align 8
  %beta2 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %2, i32 0, i32 1
  %3 = load float, float* %beta2, align 4
  store float %3, float* %beta, align 4
  %4 = load %struct.RcmAngle*, %struct.RcmAngle** %angle.addr, align 8
  %cw_ccw3 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %4, i32 0, i32 2
  %5 = load i32, i32* %cw_ccw3, align 4
  %conv = sitofp i32 %5 to float
  store float %conv, float* %cw_ccw, align 4
  %6 = load float, float* %beta, align 4
  %7 = load float, float* %alpha, align 4
  %sub = fsub float %6, %7
  %call = call float @angle_mod_2PI(float %sub)
  store float %call, float* %delta, align 4
  %8 = load float, float* %cw_ccw, align 4
  %cmp = fcmp oeq float %8, -1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load float, float* %delta, align 4
  %conv5 = fpext float %9 to double
  %sub6 = fsub double %conv5, 0x401921FB54442D18
  %conv7 = fptrunc double %sub6 to float
  store float %conv7, float* %delta, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_move_to(%struct._cairo* %10, double 6.400000e+01, double 6.400000e+01)
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %12 = load float, float* %alpha, align 4
  %conv8 = fpext float %12 to double
  %call9 = call double @cos(double %conv8) #3
  %mul = fmul double 6.000000e+01, %call9
  %add = fadd double 6.400000e+01, %mul
  %add10 = fadd double %add, 5.000000e-01
  %conv11 = fptosi double %add10 to i32
  %conv12 = sitofp i32 %conv11 to double
  %13 = load float, float* %alpha, align 4
  %conv13 = fpext float %13 to double
  %call14 = call double @sin(double %conv13) #3
  %mul15 = fmul double 6.000000e+01, %call14
  %sub16 = fsub double 6.400000e+01, %mul15
  %add17 = fadd double %sub16, 5.000000e-01
  %conv18 = fptosi double %add17 to i32
  %conv19 = sitofp i32 %conv18 to double
  call void @cairo_line_to(%struct._cairo* %11, double %conv12, double %conv19)
  %14 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %15 = load float, float* %alpha, align 4
  %conv20 = fpext float %15 to double
  %call21 = call double @cos(double %conv20) #3
  %mul22 = fmul double 6.000000e+01, %call21
  %add23 = fadd double 6.400000e+01, %mul22
  %16 = load float, float* %alpha, align 4
  %conv24 = fpext float %16 to double
  %call25 = call double @sin(double %conv24) #3
  %mul26 = fmul double 6.000000e+01, %call25
  %sub27 = fsub double 6.400000e+01, %mul26
  call void @cairo_move_to(%struct._cairo* %14, double %add23, double %sub27)
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %18 = load float, float* %alpha, align 4
  %conv28 = fpext float %18 to double
  %sub29 = fsub double %conv28, 1.000000e-01
  %call30 = call double @cos(double %sub29) #3
  %mul31 = fmul double 4.800000e+01, %call30
  %add32 = fadd double 6.400000e+01, %mul31
  %add33 = fadd double %add32, 5.000000e-01
  %conv34 = fptosi double %add33 to i32
  %conv35 = sitofp i32 %conv34 to double
  %19 = load float, float* %alpha, align 4
  %conv36 = fpext float %19 to double
  %sub37 = fsub double %conv36, 1.000000e-01
  %call38 = call double @sin(double %sub37) #3
  %mul39 = fmul double 4.800000e+01, %call38
  %sub40 = fsub double 6.400000e+01, %mul39
  %add41 = fadd double %sub40, 5.000000e-01
  %conv42 = fptosi double %add41 to i32
  %conv43 = sitofp i32 %conv42 to double
  call void @cairo_line_to(%struct._cairo* %17, double %conv35, double %conv43)
  %20 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %21 = load float, float* %alpha, align 4
  %conv44 = fpext float %21 to double
  %call45 = call double @cos(double %conv44) #3
  %mul46 = fmul double 6.000000e+01, %call45
  %add47 = fadd double 6.400000e+01, %mul46
  %22 = load float, float* %alpha, align 4
  %conv48 = fpext float %22 to double
  %call49 = call double @sin(double %conv48) #3
  %mul50 = fmul double 6.000000e+01, %call49
  %sub51 = fsub double 6.400000e+01, %mul50
  call void @cairo_move_to(%struct._cairo* %20, double %add47, double %sub51)
  %23 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %24 = load float, float* %alpha, align 4
  %conv52 = fpext float %24 to double
  %add53 = fadd double %conv52, 1.000000e-01
  %call54 = call double @cos(double %add53) #3
  %mul55 = fmul double 4.800000e+01, %call54
  %add56 = fadd double 6.400000e+01, %mul55
  %add57 = fadd double %add56, 5.000000e-01
  %conv58 = fptosi double %add57 to i32
  %conv59 = sitofp i32 %conv58 to double
  %25 = load float, float* %alpha, align 4
  %conv60 = fpext float %25 to double
  %add61 = fadd double %conv60, 1.000000e-01
  %call62 = call double @sin(double %add61) #3
  %mul63 = fmul double 4.800000e+01, %call62
  %sub64 = fsub double 6.400000e+01, %mul63
  %add65 = fadd double %sub64, 5.000000e-01
  %conv66 = fptosi double %add65 to i32
  %conv67 = sitofp i32 %conv66 to double
  call void @cairo_line_to(%struct._cairo* %23, double %conv59, double %conv67)
  %26 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_move_to(%struct._cairo* %26, double 6.400000e+01, double 6.400000e+01)
  %27 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %28 = load float, float* %beta, align 4
  %conv68 = fpext float %28 to double
  %call69 = call double @cos(double %conv68) #3
  %mul70 = fmul double 6.000000e+01, %call69
  %add71 = fadd double 6.400000e+01, %mul70
  %add72 = fadd double %add71, 5.000000e-01
  %conv73 = fptosi double %add72 to i32
  %conv74 = sitofp i32 %conv73 to double
  %29 = load float, float* %beta, align 4
  %conv75 = fpext float %29 to double
  %call76 = call double @sin(double %conv75) #3
  %mul77 = fmul double 6.000000e+01, %call76
  %sub78 = fsub double 6.400000e+01, %mul77
  %add79 = fadd double %sub78, 5.000000e-01
  %conv80 = fptosi double %add79 to i32
  %conv81 = sitofp i32 %conv80 to double
  call void @cairo_line_to(%struct._cairo* %27, double %conv74, double %conv81)
  %30 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %31 = load float, float* %beta, align 4
  %conv82 = fpext float %31 to double
  %call83 = call double @cos(double %conv82) #3
  %mul84 = fmul double 6.000000e+01, %call83
  %add85 = fadd double 6.400000e+01, %mul84
  %32 = load float, float* %beta, align 4
  %conv86 = fpext float %32 to double
  %call87 = call double @sin(double %conv86) #3
  %mul88 = fmul double 6.000000e+01, %call87
  %sub89 = fsub double 6.400000e+01, %mul88
  call void @cairo_move_to(%struct._cairo* %30, double %add85, double %sub89)
  %33 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %34 = load float, float* %beta, align 4
  %conv90 = fpext float %34 to double
  %sub91 = fsub double %conv90, 1.000000e-01
  %call92 = call double @cos(double %sub91) #3
  %mul93 = fmul double 4.800000e+01, %call92
  %add94 = fadd double 6.400000e+01, %mul93
  %add95 = fadd double %add94, 5.000000e-01
  %conv96 = fptosi double %add95 to i32
  %conv97 = sitofp i32 %conv96 to double
  %35 = load float, float* %beta, align 4
  %conv98 = fpext float %35 to double
  %sub99 = fsub double %conv98, 1.000000e-01
  %call100 = call double @sin(double %sub99) #3
  %mul101 = fmul double 4.800000e+01, %call100
  %sub102 = fsub double 6.400000e+01, %mul101
  %add103 = fadd double %sub102, 5.000000e-01
  %conv104 = fptosi double %add103 to i32
  %conv105 = sitofp i32 %conv104 to double
  call void @cairo_line_to(%struct._cairo* %33, double %conv97, double %conv105)
  %36 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %37 = load float, float* %beta, align 4
  %conv106 = fpext float %37 to double
  %call107 = call double @cos(double %conv106) #3
  %mul108 = fmul double 6.000000e+01, %call107
  %add109 = fadd double 6.400000e+01, %mul108
  %38 = load float, float* %beta, align 4
  %conv110 = fpext float %38 to double
  %call111 = call double @sin(double %conv110) #3
  %mul112 = fmul double 6.000000e+01, %call111
  %sub113 = fsub double 6.400000e+01, %mul112
  call void @cairo_move_to(%struct._cairo* %36, double %add109, double %sub113)
  %39 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %40 = load float, float* %beta, align 4
  %conv114 = fpext float %40 to double
  %add115 = fadd double %conv114, 1.000000e-01
  %call116 = call double @cos(double %add115) #3
  %mul117 = fmul double 4.800000e+01, %call116
  %add118 = fadd double 6.400000e+01, %mul117
  %add119 = fadd double %add118, 5.000000e-01
  %conv120 = fptosi double %add119 to i32
  %conv121 = sitofp i32 %conv120 to double
  %41 = load float, float* %beta, align 4
  %conv122 = fpext float %41 to double
  %add123 = fadd double %conv122, 1.000000e-01
  %call124 = call double @sin(double %add123) #3
  %mul125 = fmul double 4.800000e+01, %call124
  %sub126 = fsub double 6.400000e+01, %mul125
  %add127 = fadd double %sub126, 5.000000e-01
  %conv128 = fptosi double %add127 to i32
  %conv129 = sitofp i32 %conv128 to double
  call void @cairo_line_to(%struct._cairo* %39, double %conv121, double %conv129)
  store i32 18, i32* %dist, align 4
  %42 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %43 = load i32, i32* %dist, align 4
  %conv130 = sitofp i32 %43 to double
  %44 = load float, float* %beta, align 4
  %conv131 = fpext float %44 to double
  %call132 = call double @cos(double %conv131) #3
  %mul133 = fmul double %conv130, %call132
  %add134 = fadd double 6.400000e+01, %mul133
  %45 = load i32, i32* %dist, align 4
  %conv135 = sitofp i32 %45 to double
  %46 = load float, float* %beta, align 4
  %conv136 = fpext float %46 to double
  %call137 = call double @sin(double %conv136) #3
  %mul138 = fmul double %conv135, %call137
  %sub139 = fsub double 6.400000e+01, %mul138
  call void @cairo_move_to(%struct._cairo* %42, double %add134, double %sub139)
  %47 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %48 = load i32, i32* %dist, align 4
  %conv140 = sitofp i32 %48 to double
  %49 = load float, float* %beta, align 4
  %conv141 = fpext float %49 to double
  %call142 = call double @cos(double %conv141) #3
  %mul143 = fmul double %conv140, %call142
  %add144 = fadd double 6.400000e+01, %mul143
  %50 = load float, float* %cw_ccw, align 4
  %mul145 = fmul float %50, 1.000000e+01
  %conv146 = fpext float %mul145 to double
  %51 = load float, float* %beta, align 4
  %conv147 = fpext float %51 to double
  %call148 = call double @sin(double %conv147) #3
  %mul149 = fmul double %conv146, %call148
  %add150 = fadd double %add144, %mul149
  %add151 = fadd double %add150, 5.000000e-01
  %conv152 = fptosi double %add151 to i32
  %conv153 = sitofp i32 %conv152 to double
  %52 = load i32, i32* %dist, align 4
  %conv154 = sitofp i32 %52 to double
  %53 = load float, float* %beta, align 4
  %conv155 = fpext float %53 to double
  %call156 = call double @sin(double %conv155) #3
  %mul157 = fmul double %conv154, %call156
  %sub158 = fsub double 6.400000e+01, %mul157
  %54 = load float, float* %cw_ccw, align 4
  %mul159 = fmul float %54, 1.000000e+01
  %conv160 = fpext float %mul159 to double
  %55 = load float, float* %beta, align 4
  %conv161 = fpext float %55 to double
  %call162 = call double @cos(double %conv161) #3
  %mul163 = fmul double %conv160, %call162
  %add164 = fadd double %sub158, %mul163
  %add165 = fadd double %add164, 5.000000e-01
  %conv166 = fptosi double %add165 to i32
  %conv167 = sitofp i32 %conv166 to double
  call void @cairo_line_to(%struct._cairo* %47, double %conv153, double %conv167)
  %56 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_new_sub_path(%struct._cairo* %56)
  %57 = load float, float* %cw_ccw, align 4
  %cmp168 = fcmp ogt float %57, 0.000000e+00
  br i1 %cmp168, label %if.then.170, label %if.else

if.then.170:                                      ; preds = %if.end
  %58 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %59 = load i32, i32* %dist, align 4
  %conv171 = sitofp i32 %59 to double
  %60 = load float, float* %alpha, align 4
  %sub172 = fsub float -0.000000e+00, %60
  %conv173 = fpext float %sub172 to double
  %61 = load float, float* %beta, align 4
  %sub174 = fsub float -0.000000e+00, %61
  %conv175 = fpext float %sub174 to double
  call void @cairo_arc_negative(%struct._cairo* %58, double 6.400000e+01, double 6.400000e+01, double %conv171, double %conv173, double %conv175)
  br label %if.end.181

if.else:                                          ; preds = %if.end
  %62 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %63 = load i32, i32* %dist, align 4
  %conv176 = sitofp i32 %63 to double
  %64 = load float, float* %alpha, align 4
  %sub177 = fsub float -0.000000e+00, %64
  %conv178 = fpext float %sub177 to double
  %65 = load float, float* %beta, align 4
  %sub179 = fsub float -0.000000e+00, %65
  %conv180 = fpext float %sub179 to double
  call void @cairo_arc(%struct._cairo* %62, double 6.400000e+01, double 6.400000e+01, double %conv176, double %conv178, double %conv180)
  br label %if.end.181

if.end.181:                                       ; preds = %if.else, %if.then.170
  %66 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %66, double 3.000000e+00)
  %67 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %67, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 6.000000e-01)
  %68 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %68)
  %69 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %69, double 1.000000e+00)
  %70 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %70, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 8.000000e-01)
  %71 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %71)
  ret void
}

declare float @angle_mod_2PI(float) #2

declare void @cairo_move_to(%struct._cairo*, double, double) #2

declare void @cairo_line_to(%struct._cairo*, double, double) #2

declare void @cairo_arc_negative(%struct._cairo*, double, double, double, double, double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
