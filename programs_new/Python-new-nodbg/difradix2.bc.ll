; ModuleID = './difradix2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnt_params = type { i32, i64, i64, [0 x i64] }

@mpd_moduli = external hidden constant [0 x i64], align 8

; Function Attrs: nounwind uwtable
define hidden void @fnt_dif2(i64* %a, i64 %n, %struct.fnt_params* %tparams) #0 {
entry:
  %a.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %tparams.addr = alloca %struct.fnt_params*, align 8
  %wtable = alloca i64*, align 8
  %umod = alloca i64, align 8
  %u0 = alloca i64, align 8
  %u1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %w = alloca i64, align 8
  %w0 = alloca i64, align 8
  %w1 = alloca i64, align 8
  %wstep = alloca i64, align 8
  %m = alloca i64, align 8
  %mhalf = alloca i64, align 8
  %j = alloca i64, align 8
  %r = alloca i64, align 8
  store i64* %a, i64** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store %struct.fnt_params* %tparams, %struct.fnt_params** %tparams.addr, align 8
  %0 = load %struct.fnt_params*, %struct.fnt_params** %tparams.addr, align 8
  %wtable1 = getelementptr inbounds %struct.fnt_params, %struct.fnt_params* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %wtable1, i32 0, i32 0
  store i64* %arraydecay, i64** %wtable, align 8
  %1 = load %struct.fnt_params*, %struct.fnt_params** %tparams.addr, align 8
  %modnum = getelementptr inbounds %struct.fnt_params, %struct.fnt_params* %1, i32 0, i32 0
  %2 = load i32, i32* %modnum, align 4
  call void @std_setmodulus(i32 %2, i64* %umod)
  %3 = load i64, i64* %n.addr, align 8
  %div = udiv i64 %3, 2
  store i64 %div, i64* %mhalf, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %j, align 8
  %5 = load i64, i64* %mhalf, align 8
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %j, align 8
  %7 = load i64*, i64** %wtable, align 8
  %arrayidx = getelementptr i64, i64* %7, i64 %6
  %8 = load i64, i64* %arrayidx, align 8
  store i64 %8, i64* %w0, align 8
  %9 = load i64, i64* %j, align 8
  %add = add i64 %9, 1
  %10 = load i64*, i64** %wtable, align 8
  %arrayidx2 = getelementptr i64, i64* %10, i64 %add
  %11 = load i64, i64* %arrayidx2, align 8
  store i64 %11, i64* %w1, align 8
  %12 = load i64, i64* %j, align 8
  %13 = load i64*, i64** %a.addr, align 8
  %arrayidx3 = getelementptr i64, i64* %13, i64 %12
  %14 = load i64, i64* %arrayidx3, align 8
  store i64 %14, i64* %u0, align 8
  %15 = load i64, i64* %j, align 8
  %16 = load i64, i64* %mhalf, align 8
  %add4 = add i64 %15, %16
  %17 = load i64*, i64** %a.addr, align 8
  %arrayidx5 = getelementptr i64, i64* %17, i64 %add4
  %18 = load i64, i64* %arrayidx5, align 8
  store i64 %18, i64* %v0, align 8
  %19 = load i64, i64* %j, align 8
  %add6 = add i64 %19, 1
  %20 = load i64*, i64** %a.addr, align 8
  %arrayidx7 = getelementptr i64, i64* %20, i64 %add6
  %21 = load i64, i64* %arrayidx7, align 8
  store i64 %21, i64* %u1, align 8
  %22 = load i64, i64* %j, align 8
  %add8 = add i64 %22, 1
  %23 = load i64, i64* %mhalf, align 8
  %add9 = add i64 %add8, %23
  %24 = load i64*, i64** %a.addr, align 8
  %arrayidx10 = getelementptr i64, i64* %24, i64 %add9
  %25 = load i64, i64* %arrayidx10, align 8
  store i64 %25, i64* %v1, align 8
  %26 = load i64, i64* %u0, align 8
  %27 = load i64, i64* %v0, align 8
  %28 = load i64, i64* %umod, align 8
  %call = call i64 @addmod(i64 %26, i64 %27, i64 %28)
  %29 = load i64, i64* %j, align 8
  %30 = load i64*, i64** %a.addr, align 8
  %arrayidx11 = getelementptr i64, i64* %30, i64 %29
  store i64 %call, i64* %arrayidx11, align 8
  %31 = load i64, i64* %u0, align 8
  %32 = load i64, i64* %v0, align 8
  %33 = load i64, i64* %umod, align 8
  %call12 = call i64 @submod(i64 %31, i64 %32, i64 %33)
  store i64 %call12, i64* %v0, align 8
  %34 = load i64, i64* %u1, align 8
  %35 = load i64, i64* %v1, align 8
  %36 = load i64, i64* %umod, align 8
  %call13 = call i64 @addmod(i64 %34, i64 %35, i64 %36)
  %37 = load i64, i64* %j, align 8
  %add14 = add i64 %37, 1
  %38 = load i64*, i64** %a.addr, align 8
  %arrayidx15 = getelementptr i64, i64* %38, i64 %add14
  store i64 %call13, i64* %arrayidx15, align 8
  %39 = load i64, i64* %u1, align 8
  %40 = load i64, i64* %v1, align 8
  %41 = load i64, i64* %umod, align 8
  %call16 = call i64 @submod(i64 %39, i64 %40, i64 %41)
  store i64 %call16, i64* %v1, align 8
  %42 = load i64, i64* %w0, align 8
  %43 = load i64, i64* %w1, align 8
  %44 = load i64, i64* %umod, align 8
  call void @x64_mulmod2(i64* %v0, i64 %42, i64* %v1, i64 %43, i64 %44)
  %45 = load i64, i64* %v0, align 8
  %46 = load i64, i64* %j, align 8
  %47 = load i64, i64* %mhalf, align 8
  %add17 = add i64 %46, %47
  %48 = load i64*, i64** %a.addr, align 8
  %arrayidx18 = getelementptr i64, i64* %48, i64 %add17
  store i64 %45, i64* %arrayidx18, align 8
  %49 = load i64, i64* %v1, align 8
  %50 = load i64, i64* %j, align 8
  %add19 = add i64 %50, 1
  %51 = load i64, i64* %mhalf, align 8
  %add20 = add i64 %add19, %51
  %52 = load i64*, i64** %a.addr, align 8
  %arrayidx21 = getelementptr i64, i64* %52, i64 %add20
  store i64 %49, i64* %arrayidx21, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i64, i64* %j, align 8
  %add22 = add i64 %53, 2
  store i64 %add22, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 2, i64* %wstep, align 8
  %54 = load i64, i64* %n.addr, align 8
  %div23 = udiv i64 %54, 2
  store i64 %div23, i64* %m, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.96, %for.end
  %55 = load i64, i64* %m, align 8
  %cmp25 = icmp uge i64 %55, 2
  br i1 %cmp25, label %for.body.26, label %for.end.97

for.body.26:                                      ; preds = %for.cond.24
  %56 = load i64, i64* %m, align 8
  %div27 = udiv i64 %56, 2
  store i64 %div27, i64* %mhalf, align 8
  store i64 0, i64* %r, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.51, %for.body.26
  %57 = load i64, i64* %r, align 8
  %58 = load i64, i64* %n.addr, align 8
  %cmp29 = icmp ult i64 %57, %58
  br i1 %cmp29, label %for.body.30, label %for.end.53

for.body.30:                                      ; preds = %for.cond.28
  %59 = load i64, i64* %r, align 8
  %60 = load i64*, i64** %a.addr, align 8
  %arrayidx31 = getelementptr i64, i64* %60, i64 %59
  %61 = load i64, i64* %arrayidx31, align 8
  store i64 %61, i64* %u0, align 8
  %62 = load i64, i64* %r, align 8
  %63 = load i64, i64* %mhalf, align 8
  %add32 = add i64 %62, %63
  %64 = load i64*, i64** %a.addr, align 8
  %arrayidx33 = getelementptr i64, i64* %64, i64 %add32
  %65 = load i64, i64* %arrayidx33, align 8
  store i64 %65, i64* %v0, align 8
  %66 = load i64, i64* %m, align 8
  %67 = load i64, i64* %r, align 8
  %add34 = add i64 %66, %67
  %68 = load i64*, i64** %a.addr, align 8
  %arrayidx35 = getelementptr i64, i64* %68, i64 %add34
  %69 = load i64, i64* %arrayidx35, align 8
  store i64 %69, i64* %u1, align 8
  %70 = load i64, i64* %m, align 8
  %71 = load i64, i64* %r, align 8
  %add36 = add i64 %70, %71
  %72 = load i64, i64* %mhalf, align 8
  %add37 = add i64 %add36, %72
  %73 = load i64*, i64** %a.addr, align 8
  %arrayidx38 = getelementptr i64, i64* %73, i64 %add37
  %74 = load i64, i64* %arrayidx38, align 8
  store i64 %74, i64* %v1, align 8
  %75 = load i64, i64* %u0, align 8
  %76 = load i64, i64* %v0, align 8
  %77 = load i64, i64* %umod, align 8
  %call39 = call i64 @addmod(i64 %75, i64 %76, i64 %77)
  %78 = load i64, i64* %r, align 8
  %79 = load i64*, i64** %a.addr, align 8
  %arrayidx40 = getelementptr i64, i64* %79, i64 %78
  store i64 %call39, i64* %arrayidx40, align 8
  %80 = load i64, i64* %u0, align 8
  %81 = load i64, i64* %v0, align 8
  %82 = load i64, i64* %umod, align 8
  %call41 = call i64 @submod(i64 %80, i64 %81, i64 %82)
  store i64 %call41, i64* %v0, align 8
  %83 = load i64, i64* %u1, align 8
  %84 = load i64, i64* %v1, align 8
  %85 = load i64, i64* %umod, align 8
  %call42 = call i64 @addmod(i64 %83, i64 %84, i64 %85)
  %86 = load i64, i64* %m, align 8
  %87 = load i64, i64* %r, align 8
  %add43 = add i64 %86, %87
  %88 = load i64*, i64** %a.addr, align 8
  %arrayidx44 = getelementptr i64, i64* %88, i64 %add43
  store i64 %call42, i64* %arrayidx44, align 8
  %89 = load i64, i64* %u1, align 8
  %90 = load i64, i64* %v1, align 8
  %91 = load i64, i64* %umod, align 8
  %call45 = call i64 @submod(i64 %89, i64 %90, i64 %91)
  store i64 %call45, i64* %v1, align 8
  %92 = load i64, i64* %v0, align 8
  %93 = load i64, i64* %r, align 8
  %94 = load i64, i64* %mhalf, align 8
  %add46 = add i64 %93, %94
  %95 = load i64*, i64** %a.addr, align 8
  %arrayidx47 = getelementptr i64, i64* %95, i64 %add46
  store i64 %92, i64* %arrayidx47, align 8
  %96 = load i64, i64* %v1, align 8
  %97 = load i64, i64* %m, align 8
  %98 = load i64, i64* %r, align 8
  %add48 = add i64 %97, %98
  %99 = load i64, i64* %mhalf, align 8
  %add49 = add i64 %add48, %99
  %100 = load i64*, i64** %a.addr, align 8
  %arrayidx50 = getelementptr i64, i64* %100, i64 %add49
  store i64 %96, i64* %arrayidx50, align 8
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.30
  %101 = load i64, i64* %m, align 8
  %mul = mul i64 2, %101
  %102 = load i64, i64* %r, align 8
  %add52 = add i64 %102, %mul
  store i64 %add52, i64* %r, align 8
  br label %for.cond.28

for.end.53:                                       ; preds = %for.cond.28
  store i64 1, i64* %j, align 8
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.94, %for.end.53
  %103 = load i64, i64* %j, align 8
  %104 = load i64, i64* %mhalf, align 8
  %cmp55 = icmp ult i64 %103, %104
  br i1 %cmp55, label %for.body.56, label %for.end.95

for.body.56:                                      ; preds = %for.cond.54
  %105 = load i64, i64* %j, align 8
  %106 = load i64, i64* %wstep, align 8
  %mul57 = mul i64 %105, %106
  %107 = load i64*, i64** %wtable, align 8
  %arrayidx58 = getelementptr i64, i64* %107, i64 %mul57
  %108 = load i64, i64* %arrayidx58, align 8
  store i64 %108, i64* %w, align 8
  store i64 0, i64* %r, align 8
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.90, %for.body.56
  %109 = load i64, i64* %r, align 8
  %110 = load i64, i64* %n.addr, align 8
  %cmp60 = icmp ult i64 %109, %110
  br i1 %cmp60, label %for.body.61, label %for.end.93

for.body.61:                                      ; preds = %for.cond.59
  %111 = load i64, i64* %r, align 8
  %112 = load i64, i64* %j, align 8
  %add62 = add i64 %111, %112
  %113 = load i64*, i64** %a.addr, align 8
  %arrayidx63 = getelementptr i64, i64* %113, i64 %add62
  %114 = load i64, i64* %arrayidx63, align 8
  store i64 %114, i64* %u0, align 8
  %115 = load i64, i64* %r, align 8
  %116 = load i64, i64* %j, align 8
  %add64 = add i64 %115, %116
  %117 = load i64, i64* %mhalf, align 8
  %add65 = add i64 %add64, %117
  %118 = load i64*, i64** %a.addr, align 8
  %arrayidx66 = getelementptr i64, i64* %118, i64 %add65
  %119 = load i64, i64* %arrayidx66, align 8
  store i64 %119, i64* %v0, align 8
  %120 = load i64, i64* %m, align 8
  %121 = load i64, i64* %r, align 8
  %add67 = add i64 %120, %121
  %122 = load i64, i64* %j, align 8
  %add68 = add i64 %add67, %122
  %123 = load i64*, i64** %a.addr, align 8
  %arrayidx69 = getelementptr i64, i64* %123, i64 %add68
  %124 = load i64, i64* %arrayidx69, align 8
  store i64 %124, i64* %u1, align 8
  %125 = load i64, i64* %m, align 8
  %126 = load i64, i64* %r, align 8
  %add70 = add i64 %125, %126
  %127 = load i64, i64* %j, align 8
  %add71 = add i64 %add70, %127
  %128 = load i64, i64* %mhalf, align 8
  %add72 = add i64 %add71, %128
  %129 = load i64*, i64** %a.addr, align 8
  %arrayidx73 = getelementptr i64, i64* %129, i64 %add72
  %130 = load i64, i64* %arrayidx73, align 8
  store i64 %130, i64* %v1, align 8
  %131 = load i64, i64* %u0, align 8
  %132 = load i64, i64* %v0, align 8
  %133 = load i64, i64* %umod, align 8
  %call74 = call i64 @addmod(i64 %131, i64 %132, i64 %133)
  %134 = load i64, i64* %r, align 8
  %135 = load i64, i64* %j, align 8
  %add75 = add i64 %134, %135
  %136 = load i64*, i64** %a.addr, align 8
  %arrayidx76 = getelementptr i64, i64* %136, i64 %add75
  store i64 %call74, i64* %arrayidx76, align 8
  %137 = load i64, i64* %u0, align 8
  %138 = load i64, i64* %v0, align 8
  %139 = load i64, i64* %umod, align 8
  %call77 = call i64 @submod(i64 %137, i64 %138, i64 %139)
  store i64 %call77, i64* %v0, align 8
  %140 = load i64, i64* %u1, align 8
  %141 = load i64, i64* %v1, align 8
  %142 = load i64, i64* %umod, align 8
  %call78 = call i64 @addmod(i64 %140, i64 %141, i64 %142)
  %143 = load i64, i64* %m, align 8
  %144 = load i64, i64* %r, align 8
  %add79 = add i64 %143, %144
  %145 = load i64, i64* %j, align 8
  %add80 = add i64 %add79, %145
  %146 = load i64*, i64** %a.addr, align 8
  %arrayidx81 = getelementptr i64, i64* %146, i64 %add80
  store i64 %call78, i64* %arrayidx81, align 8
  %147 = load i64, i64* %u1, align 8
  %148 = load i64, i64* %v1, align 8
  %149 = load i64, i64* %umod, align 8
  %call82 = call i64 @submod(i64 %147, i64 %148, i64 %149)
  store i64 %call82, i64* %v1, align 8
  %150 = load i64, i64* %w, align 8
  %151 = load i64, i64* %umod, align 8
  call void @x64_mulmod2c(i64* %v0, i64* %v1, i64 %150, i64 %151)
  %152 = load i64, i64* %v0, align 8
  %153 = load i64, i64* %r, align 8
  %154 = load i64, i64* %j, align 8
  %add83 = add i64 %153, %154
  %155 = load i64, i64* %mhalf, align 8
  %add84 = add i64 %add83, %155
  %156 = load i64*, i64** %a.addr, align 8
  %arrayidx85 = getelementptr i64, i64* %156, i64 %add84
  store i64 %152, i64* %arrayidx85, align 8
  %157 = load i64, i64* %v1, align 8
  %158 = load i64, i64* %m, align 8
  %159 = load i64, i64* %r, align 8
  %add86 = add i64 %158, %159
  %160 = load i64, i64* %j, align 8
  %add87 = add i64 %add86, %160
  %161 = load i64, i64* %mhalf, align 8
  %add88 = add i64 %add87, %161
  %162 = load i64*, i64** %a.addr, align 8
  %arrayidx89 = getelementptr i64, i64* %162, i64 %add88
  store i64 %157, i64* %arrayidx89, align 8
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.61
  %163 = load i64, i64* %m, align 8
  %mul91 = mul i64 2, %163
  %164 = load i64, i64* %r, align 8
  %add92 = add i64 %164, %mul91
  store i64 %add92, i64* %r, align 8
  br label %for.cond.59

for.end.93:                                       ; preds = %for.cond.59
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end.93
  %165 = load i64, i64* %j, align 8
  %inc = add i64 %165, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.54

for.end.95:                                       ; preds = %for.cond.54
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.end.95
  %166 = load i64, i64* %m, align 8
  %shr = lshr i64 %166, 1
  store i64 %shr, i64* %m, align 8
  %167 = load i64, i64* %wstep, align 8
  %shl = shl i64 %167, 1
  store i64 %shl, i64* %wstep, align 8
  br label %for.cond.24

for.end.97:                                       ; preds = %for.cond.24
  %168 = load i64*, i64** %a.addr, align 8
  %169 = load i64, i64* %n.addr, align 8
  call void @bitreverse_permute(i64* %168, i64 %169)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @std_setmodulus(i32 %modnum, i64* %umod) #1 {
entry:
  %modnum.addr = alloca i32, align 4
  %umod.addr = alloca i64*, align 8
  store i32 %modnum, i32* %modnum.addr, align 4
  store i64* %umod, i64** %umod.addr, align 8
  %0 = load i32, i32* %modnum.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [0 x i64], [0 x i64]* @mpd_moduli, i32 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %2 = load i64*, i64** %umod.addr, align 8
  store i64 %1, i64* %2, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @addmod(i64 %a, i64 %b, i64 %m) #1 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  %s = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %add = add i64 %0, %1
  store i64 %add, i64* %s, align 8
  %2 = load i64, i64* %s, align 8
  %3 = load i64, i64* %a.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %s, align 8
  %5 = load i64, i64* %m.addr, align 8
  %sub = sub i64 %4, %5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i64, i64* %s, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %6, %cond.false ]
  store i64 %cond, i64* %s, align 8
  %7 = load i64, i64* %s, align 8
  %8 = load i64, i64* %m.addr, align 8
  %cmp1 = icmp uge i64 %7, %8
  br i1 %cmp1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.end
  %9 = load i64, i64* %s, align 8
  %10 = load i64, i64* %m.addr, align 8
  %sub3 = sub i64 %9, %10
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %11 = load i64, i64* %s, align 8
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.2
  %cond6 = phi i64 [ %sub3, %cond.true.2 ], [ %11, %cond.false.4 ]
  store i64 %cond6, i64* %s, align 8
  %12 = load i64, i64* %s, align 8
  ret i64 %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @submod(i64 %a, i64 %b, i64 %m) #1 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  %d = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %sub = sub i64 %0, %1
  store i64 %sub, i64* %d, align 8
  %2 = load i64, i64* %a.addr, align 8
  %3 = load i64, i64* %b.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %d, align 8
  %5 = load i64, i64* %m.addr, align 8
  %add = add i64 %4, %5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i64, i64* %d, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ %6, %cond.false ]
  store i64 %cond, i64* %d, align 8
  %7 = load i64, i64* %d, align 8
  ret i64 %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @x64_mulmod2(i64* %a0, i64 %b0, i64* %a1, i64 %b1, i64 %m) #1 {
entry:
  %a0.addr = alloca i64*, align 8
  %b0.addr = alloca i64, align 8
  %a1.addr = alloca i64*, align 8
  %b1.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  store i64* %a0, i64** %a0.addr, align 8
  store i64 %b0, i64* %b0.addr, align 8
  store i64* %a1, i64** %a1.addr, align 8
  store i64 %b1, i64* %b1.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  %0 = load i64*, i64** %a0.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64, i64* %b0.addr, align 8
  %3 = load i64, i64* %m.addr, align 8
  %call = call i64 @x64_mulmod(i64 %1, i64 %2, i64 %3)
  %4 = load i64*, i64** %a0.addr, align 8
  store i64 %call, i64* %4, align 8
  %5 = load i64*, i64** %a1.addr, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* %b1.addr, align 8
  %8 = load i64, i64* %m.addr, align 8
  %call1 = call i64 @x64_mulmod(i64 %6, i64 %7, i64 %8)
  %9 = load i64*, i64** %a1.addr, align 8
  store i64 %call1, i64* %9, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @x64_mulmod2c(i64* %a, i64* %b, i64 %w, i64 %m) #1 {
entry:
  %a.addr = alloca i64*, align 8
  %b.addr = alloca i64*, align 8
  %w.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  store i64* %a, i64** %a.addr, align 8
  store i64* %b, i64** %b.addr, align 8
  store i64 %w, i64* %w.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  %0 = load i64*, i64** %a.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64, i64* %w.addr, align 8
  %3 = load i64, i64* %m.addr, align 8
  %call = call i64 @x64_mulmod(i64 %1, i64 %2, i64 %3)
  %4 = load i64*, i64** %a.addr, align 8
  store i64 %call, i64* %4, align 8
  %5 = load i64*, i64** %b.addr, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* %w.addr, align 8
  %8 = load i64, i64* %m.addr, align 8
  %call1 = call i64 @x64_mulmod(i64 %6, i64 %7, i64 %8)
  %9 = load i64*, i64** %b.addr, align 8
  store i64 %call1, i64* %9, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @bitreverse_permute(i64* %a, i64 %n) #1 {
entry:
  %a.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %r = alloca i64, align 8
  %t = alloca i64, align 8
  store i64* %a, i64** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %x, align 8
  store i64 0, i64* %r, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, i64* %r, align 8
  %1 = load i64, i64* %x, align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i64, i64* %x, align 8
  %3 = load i64*, i64** %a.addr, align 8
  %arrayidx = getelementptr i64, i64* %3, i64 %2
  %4 = load i64, i64* %arrayidx, align 8
  store i64 %4, i64* %t, align 8
  %5 = load i64, i64* %r, align 8
  %6 = load i64*, i64** %a.addr, align 8
  %arrayidx1 = getelementptr i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx1, align 8
  %8 = load i64, i64* %x, align 8
  %9 = load i64*, i64** %a.addr, align 8
  %arrayidx2 = getelementptr i64, i64* %9, i64 %8
  store i64 %7, i64* %arrayidx2, align 8
  %10 = load i64, i64* %t, align 8
  %11 = load i64, i64* %r, align 8
  %12 = load i64*, i64** %a.addr, align 8
  %arrayidx3 = getelementptr i64, i64* %12, i64 %11
  store i64 %10, i64* %arrayidx3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %13 = load i64, i64* %x, align 8
  %add = add i64 %13, 1
  store i64 %add, i64* %x, align 8
  %14 = load i64, i64* %n.addr, align 8
  %15 = load i64, i64* %n.addr, align 8
  %16 = load i64, i64* %x, align 8
  %call = call i32 @mpd_bsf(i64 %16)
  %add4 = add i32 %call, 1
  %sh_prom = zext i32 %add4 to i64
  %shr = lshr i64 %15, %sh_prom
  %sub = sub i64 %14, %shr
  %17 = load i64, i64* %r, align 8
  %xor = xor i64 %17, %sub
  store i64 %xor, i64* %r, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %18 = load i64, i64* %x, align 8
  %19 = load i64, i64* %n.addr, align 8
  %cmp5 = icmp ult i64 %18, %19
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @x64_mulmod(i64 %a, i64 %b, i64 %m) #1 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %0, i64 %1)
  %2 = load i64, i64* %m.addr, align 8
  %and = and i64 %2, 4294967296
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %hi, align 8
  store i64 %3, i64* %y, align 8
  store i64 %3, i64* %x, align 8
  %4 = load i64, i64* %hi, align 8
  %shr = lshr i64 %4, 32
  store i64 %shr, i64* %hi, align 8
  %5 = load i64, i64* %lo, align 8
  %6 = load i64, i64* %x, align 8
  %sub = sub i64 %5, %6
  store i64 %sub, i64* %x, align 8
  %7 = load i64, i64* %x, align 8
  %8 = load i64, i64* %lo, align 8
  %cmp = icmp ugt i64 %7, %8
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %9 = load i64, i64* %hi, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %hi, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %10 = load i64, i64* %y, align 8
  %shl = shl i64 %10, 32
  store i64 %shl, i64* %y, align 8
  %11 = load i64, i64* %y, align 8
  %12 = load i64, i64* %x, align 8
  %add = add i64 %11, %12
  store i64 %add, i64* %lo, align 8
  %13 = load i64, i64* %lo, align 8
  %14 = load i64, i64* %y, align 8
  %cmp2 = icmp ult i64 %13, %14
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %15 = load i64, i64* %hi, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %hi, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %16 = load i64, i64* %hi, align 8
  store i64 %16, i64* %y, align 8
  store i64 %16, i64* %x, align 8
  %17 = load i64, i64* %hi, align 8
  %shr5 = lshr i64 %17, 32
  store i64 %shr5, i64* %hi, align 8
  %18 = load i64, i64* %lo, align 8
  %19 = load i64, i64* %x, align 8
  %sub6 = sub i64 %18, %19
  store i64 %sub6, i64* %x, align 8
  %20 = load i64, i64* %x, align 8
  %21 = load i64, i64* %lo, align 8
  %cmp7 = icmp ugt i64 %20, %21
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.4
  %22 = load i64, i64* %hi, align 8
  %dec9 = add i64 %22, -1
  store i64 %dec9, i64* %hi, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.4
  %23 = load i64, i64* %y, align 8
  %shl11 = shl i64 %23, 32
  store i64 %shl11, i64* %y, align 8
  %24 = load i64, i64* %y, align 8
  %25 = load i64, i64* %x, align 8
  %add12 = add i64 %24, %25
  store i64 %add12, i64* %lo, align 8
  %26 = load i64, i64* %lo, align 8
  %27 = load i64, i64* %y, align 8
  %cmp13 = icmp ult i64 %26, %27
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %28 = load i64, i64* %hi, align 8
  %inc15 = add i64 %28, 1
  store i64 %inc15, i64* %hi, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  %29 = load i64, i64* %hi, align 8
  %tobool17 = icmp ne i64 %29, 0
  br i1 %tobool17, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %30 = load i64, i64* %lo, align 8
  %31 = load i64, i64* %m.addr, align 8
  %cmp18 = icmp uge i64 %30, %31
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end.16
  %32 = load i64, i64* %lo, align 8
  %33 = load i64, i64* %m.addr, align 8
  %sub19 = sub i64 %32, %33
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %34 = load i64, i64* %lo, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub19, %cond.true ], [ %34, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %35 = load i64, i64* %m.addr, align 8
  %and20 = and i64 %35, 17179869184
  %tobool21 = icmp ne i64 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.67

if.then.22:                                       ; preds = %if.else
  %36 = load i64, i64* %hi, align 8
  store i64 %36, i64* %y, align 8
  store i64 %36, i64* %x, align 8
  %37 = load i64, i64* %hi, align 8
  %shr23 = lshr i64 %37, 30
  store i64 %shr23, i64* %hi, align 8
  %38 = load i64, i64* %lo, align 8
  %39 = load i64, i64* %x, align 8
  %sub24 = sub i64 %38, %39
  store i64 %sub24, i64* %x, align 8
  %40 = load i64, i64* %x, align 8
  %41 = load i64, i64* %lo, align 8
  %cmp25 = icmp ugt i64 %40, %41
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.22
  %42 = load i64, i64* %hi, align 8
  %dec27 = add i64 %42, -1
  store i64 %dec27, i64* %hi, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.22
  %43 = load i64, i64* %y, align 8
  %shl29 = shl i64 %43, 34
  store i64 %shl29, i64* %y, align 8
  %44 = load i64, i64* %y, align 8
  %45 = load i64, i64* %x, align 8
  %add30 = add i64 %44, %45
  store i64 %add30, i64* %lo, align 8
  %46 = load i64, i64* %lo, align 8
  %47 = load i64, i64* %y, align 8
  %cmp31 = icmp ult i64 %46, %47
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.28
  %48 = load i64, i64* %hi, align 8
  %inc33 = add i64 %48, 1
  store i64 %inc33, i64* %hi, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.28
  %49 = load i64, i64* %hi, align 8
  store i64 %49, i64* %y, align 8
  store i64 %49, i64* %x, align 8
  %50 = load i64, i64* %hi, align 8
  %shr35 = lshr i64 %50, 30
  store i64 %shr35, i64* %hi, align 8
  %51 = load i64, i64* %lo, align 8
  %52 = load i64, i64* %x, align 8
  %sub36 = sub i64 %51, %52
  store i64 %sub36, i64* %x, align 8
  %53 = load i64, i64* %x, align 8
  %54 = load i64, i64* %lo, align 8
  %cmp37 = icmp ugt i64 %53, %54
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.34
  %55 = load i64, i64* %hi, align 8
  %dec39 = add i64 %55, -1
  store i64 %dec39, i64* %hi, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.34
  %56 = load i64, i64* %y, align 8
  %shl41 = shl i64 %56, 34
  store i64 %shl41, i64* %y, align 8
  %57 = load i64, i64* %y, align 8
  %58 = load i64, i64* %x, align 8
  %add42 = add i64 %57, %58
  store i64 %add42, i64* %lo, align 8
  %59 = load i64, i64* %lo, align 8
  %60 = load i64, i64* %y, align 8
  %cmp43 = icmp ult i64 %59, %60
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.40
  %61 = load i64, i64* %hi, align 8
  %inc45 = add i64 %61, 1
  store i64 %inc45, i64* %hi, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.40
  %62 = load i64, i64* %hi, align 8
  store i64 %62, i64* %y, align 8
  store i64 %62, i64* %x, align 8
  %63 = load i64, i64* %hi, align 8
  %shr47 = lshr i64 %63, 30
  store i64 %shr47, i64* %hi, align 8
  %64 = load i64, i64* %lo, align 8
  %65 = load i64, i64* %x, align 8
  %sub48 = sub i64 %64, %65
  store i64 %sub48, i64* %x, align 8
  %66 = load i64, i64* %x, align 8
  %67 = load i64, i64* %lo, align 8
  %cmp49 = icmp ugt i64 %66, %67
  br i1 %cmp49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.46
  %68 = load i64, i64* %hi, align 8
  %dec51 = add i64 %68, -1
  store i64 %dec51, i64* %hi, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.46
  %69 = load i64, i64* %y, align 8
  %shl53 = shl i64 %69, 34
  store i64 %shl53, i64* %y, align 8
  %70 = load i64, i64* %y, align 8
  %71 = load i64, i64* %x, align 8
  %add54 = add i64 %70, %71
  store i64 %add54, i64* %lo, align 8
  %72 = load i64, i64* %lo, align 8
  %73 = load i64, i64* %y, align 8
  %cmp55 = icmp ult i64 %72, %73
  br i1 %cmp55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.52
  %74 = load i64, i64* %hi, align 8
  %inc57 = add i64 %74, 1
  store i64 %inc57, i64* %hi, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.52
  %75 = load i64, i64* %hi, align 8
  %tobool59 = icmp ne i64 %75, 0
  br i1 %tobool59, label %cond.true.62, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %if.end.58
  %76 = load i64, i64* %lo, align 8
  %77 = load i64, i64* %m.addr, align 8
  %cmp61 = icmp uge i64 %76, %77
  br i1 %cmp61, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %lor.lhs.false.60, %if.end.58
  %78 = load i64, i64* %lo, align 8
  %79 = load i64, i64* %m.addr, align 8
  %sub63 = sub i64 %78, %79
  br label %cond.end.65

cond.false.64:                                    ; preds = %lor.lhs.false.60
  %80 = load i64, i64* %lo, align 8
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.62
  %cond66 = phi i64 [ %sub63, %cond.true.62 ], [ %80, %cond.false.64 ]
  store i64 %cond66, i64* %retval
  br label %return

if.else.67:                                       ; preds = %if.else
  %81 = load i64, i64* %hi, align 8
  store i64 %81, i64* %y, align 8
  store i64 %81, i64* %x, align 8
  %82 = load i64, i64* %hi, align 8
  %shr68 = lshr i64 %82, 24
  store i64 %shr68, i64* %hi, align 8
  %83 = load i64, i64* %lo, align 8
  %84 = load i64, i64* %x, align 8
  %sub69 = sub i64 %83, %84
  store i64 %sub69, i64* %x, align 8
  %85 = load i64, i64* %x, align 8
  %86 = load i64, i64* %lo, align 8
  %cmp70 = icmp ugt i64 %85, %86
  br i1 %cmp70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.else.67
  %87 = load i64, i64* %hi, align 8
  %dec72 = add i64 %87, -1
  store i64 %dec72, i64* %hi, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.else.67
  %88 = load i64, i64* %y, align 8
  %shl74 = shl i64 %88, 40
  store i64 %shl74, i64* %y, align 8
  %89 = load i64, i64* %y, align 8
  %90 = load i64, i64* %x, align 8
  %add75 = add i64 %89, %90
  store i64 %add75, i64* %lo, align 8
  %91 = load i64, i64* %lo, align 8
  %92 = load i64, i64* %y, align 8
  %cmp76 = icmp ult i64 %91, %92
  br i1 %cmp76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.end.73
  %93 = load i64, i64* %hi, align 8
  %inc78 = add i64 %93, 1
  store i64 %inc78, i64* %hi, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %if.end.73
  %94 = load i64, i64* %hi, align 8
  store i64 %94, i64* %y, align 8
  store i64 %94, i64* %x, align 8
  %95 = load i64, i64* %hi, align 8
  %shr80 = lshr i64 %95, 24
  store i64 %shr80, i64* %hi, align 8
  %96 = load i64, i64* %lo, align 8
  %97 = load i64, i64* %x, align 8
  %sub81 = sub i64 %96, %97
  store i64 %sub81, i64* %x, align 8
  %98 = load i64, i64* %x, align 8
  %99 = load i64, i64* %lo, align 8
  %cmp82 = icmp ugt i64 %98, %99
  br i1 %cmp82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.79
  %100 = load i64, i64* %hi, align 8
  %dec84 = add i64 %100, -1
  store i64 %dec84, i64* %hi, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.end.79
  %101 = load i64, i64* %y, align 8
  %shl86 = shl i64 %101, 40
  store i64 %shl86, i64* %y, align 8
  %102 = load i64, i64* %y, align 8
  %103 = load i64, i64* %x, align 8
  %add87 = add i64 %102, %103
  store i64 %add87, i64* %lo, align 8
  %104 = load i64, i64* %lo, align 8
  %105 = load i64, i64* %y, align 8
  %cmp88 = icmp ult i64 %104, %105
  br i1 %cmp88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.85
  %106 = load i64, i64* %hi, align 8
  %inc90 = add i64 %106, 1
  store i64 %inc90, i64* %hi, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.85
  %107 = load i64, i64* %hi, align 8
  store i64 %107, i64* %y, align 8
  store i64 %107, i64* %x, align 8
  %108 = load i64, i64* %hi, align 8
  %shr92 = lshr i64 %108, 24
  store i64 %shr92, i64* %hi, align 8
  %109 = load i64, i64* %lo, align 8
  %110 = load i64, i64* %x, align 8
  %sub93 = sub i64 %109, %110
  store i64 %sub93, i64* %x, align 8
  %111 = load i64, i64* %x, align 8
  %112 = load i64, i64* %lo, align 8
  %cmp94 = icmp ugt i64 %111, %112
  br i1 %cmp94, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.end.91
  %113 = load i64, i64* %hi, align 8
  %dec96 = add i64 %113, -1
  store i64 %dec96, i64* %hi, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.end.91
  %114 = load i64, i64* %y, align 8
  %shl98 = shl i64 %114, 40
  store i64 %shl98, i64* %y, align 8
  %115 = load i64, i64* %y, align 8
  %116 = load i64, i64* %x, align 8
  %add99 = add i64 %115, %116
  store i64 %add99, i64* %lo, align 8
  %117 = load i64, i64* %lo, align 8
  %118 = load i64, i64* %y, align 8
  %cmp100 = icmp ult i64 %117, %118
  br i1 %cmp100, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.end.97
  %119 = load i64, i64* %hi, align 8
  %inc102 = add i64 %119, 1
  store i64 %inc102, i64* %hi, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.end.97
  %120 = load i64, i64* %hi, align 8
  %tobool104 = icmp ne i64 %120, 0
  br i1 %tobool104, label %cond.true.107, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %if.end.103
  %121 = load i64, i64* %lo, align 8
  %122 = load i64, i64* %m.addr, align 8
  %cmp106 = icmp uge i64 %121, %122
  br i1 %cmp106, label %cond.true.107, label %cond.false.109

cond.true.107:                                    ; preds = %lor.lhs.false.105, %if.end.103
  %123 = load i64, i64* %lo, align 8
  %124 = load i64, i64* %m.addr, align 8
  %sub108 = sub i64 %123, %124
  br label %cond.end.110

cond.false.109:                                   ; preds = %lor.lhs.false.105
  %125 = load i64, i64* %lo, align 8
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.107
  %cond111 = phi i64 [ %sub108, %cond.true.107 ], [ %125, %cond.false.109 ]
  store i64 %cond111, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.110, %cond.end.65, %cond.end
  %126 = load i64, i64* %retval
  ret i64 %126
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %a, i64 %b) #1 {
entry:
  %hi.addr = alloca i64*, align 8
  %lo.addr = alloca i64*, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %h = alloca i64, align 8
  %l = alloca i64, align 8
  store i64* %hi, i64** %hi.addr, align 8
  store i64* %lo, i64** %lo.addr, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %2 = call { i64, i64 } asm "mulq $3\0A\09", "={dx},={ax},%{ax},rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #2, !srcloc !2
  %asmresult = extractvalue { i64, i64 } %2, 0
  %asmresult1 = extractvalue { i64, i64 } %2, 1
  store i64 %asmresult, i64* %h, align 8
  store i64 %asmresult1, i64* %l, align 8
  %3 = load i64, i64* %h, align 8
  %4 = load i64*, i64** %hi.addr, align 8
  store i64 %3, i64* %4, align 8
  %5 = load i64, i64* %l, align 8
  %6 = load i64*, i64** %lo.addr, align 8
  store i64 %5, i64* %6, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @mpd_bsf(i64 %a) #1 {
entry:
  %a.addr = alloca i64, align 8
  %retval1 = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = call i64 asm "bsfq $1, $0\0A\09", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0) #3, !srcloc !3
  store i64 %1, i64* %retval1, align 8
  %2 = load i64, i64* %retval1, align 8
  %conv = trunc i64 %2 to i32
  ret i32 %conv
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{i32 90966, i32 90976}
!3 = !{i32 88687, i32 88701}
