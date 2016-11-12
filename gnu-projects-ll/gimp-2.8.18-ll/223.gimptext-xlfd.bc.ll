; ModuleID = './app/text/gimptext-xlfd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }

@.str = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"italic\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"oblique\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Gimp-Text\00", align 1
@__func__.gimp_text_set_font_from_xlfd = private unnamed_addr constant [29 x i8] c"gimp_text_set_font_from_xlfd\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"GIMP_IS_TEXT (text)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"font-size\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"font-size-unit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: nounwind uwtable
define i8* @gimp_text_font_name_from_xlfd(i8* %xlfd) #0 {
entry:
  %xlfd.addr = alloca i8*, align 8
  %fields = alloca [4 x i8*], align 16
  %buffers = alloca [4 x [64 x i8]], align 16
  %i = alloca i32, align 4
  store i8* %xlfd, i8** %xlfd.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i8*, i8** %xlfd.addr, align 8
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %buffers, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx, i32 0, i32 0
  %call = call i8* @gimp_text_get_xlfd_field(i8* %0, i32 1, i8* %arraydecay)
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 %idxprom1
  store i8* %call, i8** %arrayidx2, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 %idxprom3
  %4 = load i8*, i8** %arrayidx4, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %xlfd.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %buffers, i32 0, i64 %idxprom5
  %arraydecay7 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx6, i32 0, i32 0
  %call8 = call i8* @gimp_text_get_xlfd_field(i8* %6, i32 2, i8* %arraydecay7)
  %8 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 %idxprom9
  store i8* %call8, i8** %arrayidx10, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 %idxprom11
  %10 = load i8*, i8** %arrayidx12, align 8
  %tobool13 = icmp ne i8* %10, null
  br i1 %tobool13, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 %idxprom14
  %12 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #5
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true
  %13 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %13, 1
  store i32 %inc19, i32* %i, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true, %if.end
  %14 = load i8*, i8** %xlfd.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %buffers, i32 0, i64 %idxprom21
  %arraydecay23 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx22, i32 0, i32 0
  %call24 = call i8* @gimp_text_get_xlfd_field(i8* %14, i32 3, i8* %arraydecay23)
  %16 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 %idxprom25
  store i8* %call24, i8** %arrayidx26, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %17 to i64
  %arrayidx28 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 %idxprom27
  %18 = load i8*, i8** %arrayidx28, align 8
  %tobool29 = icmp ne i8* %18, null
  br i1 %tobool29, label %if.then.30, label %if.end.45

if.then.30:                                       ; preds = %if.end.20
  %19 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %19 to i64
  %arrayidx32 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 %idxprom31
  %20 = load i8*, i8** %arrayidx32, align 8
  %21 = load i8, i8* %20, align 1
  %conv = sext i8 %21 to i32
  switch i32 %conv, label %sw.epilog [
    i32 105, label %sw.bb
    i32 111, label %sw.bb.38
    i32 114, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %if.then.30
  %22 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %buffers, i32 0, i64 %idxprom33
  %arraydecay35 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx34, i32 0, i32 0
  %call36 = call i8* @strcpy(i8* %arraydecay35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)) #6
  %23 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %23, 1
  store i32 %inc37, i32* %i, align 4
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.then.30
  %24 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %24 to i64
  %arrayidx40 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %buffers, i32 0, i64 %idxprom39
  %arraydecay41 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx40, i32 0, i32 0
  %call42 = call i8* @strcpy(i8* %arraydecay41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #6
  %25 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %25, 1
  store i32 %inc43, i32* %i, align 4
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.then.30
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.30, %sw.bb.44, %sw.bb.38, %sw.bb
  br label %if.end.45

if.end.45:                                        ; preds = %sw.epilog, %if.end.20
  %26 = load i8*, i8** %xlfd.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %27 to i64
  %arrayidx47 = getelementptr inbounds [4 x [64 x i8]], [4 x [64 x i8]]* %buffers, i32 0, i64 %idxprom46
  %arraydecay48 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx47, i32 0, i32 0
  %call49 = call i8* @gimp_text_get_xlfd_field(i8* %26, i32 4, i8* %arraydecay48)
  %28 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %28 to i64
  %arrayidx51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 %idxprom50
  store i8* %call49, i8** %arrayidx51, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %29 to i64
  %arrayidx53 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 %idxprom52
  %30 = load i8*, i8** %arrayidx53, align 8
  %tobool54 = icmp ne i8* %30, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.62

land.lhs.true.55:                                 ; preds = %if.end.45
  %31 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %31 to i64
  %arrayidx57 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 %idxprom56
  %32 = load i8*, i8** %arrayidx57, align 8
  %call58 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #5
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %land.lhs.true.55
  %33 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %33, 1
  store i32 %inc61, i32* %i, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %land.lhs.true.55, %if.end.45
  %34 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %34, 4
  br i1 %cmp, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.end.62
  %35 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %35 to i64
  %arrayidx66 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 %idxprom65
  store i8* null, i8** %arrayidx66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.end.62
  %arrayidx68 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 0
  %36 = load i8*, i8** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 1
  %37 = load i8*, i8** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 2
  %38 = load i8*, i8** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds [4 x i8*], [4 x i8*]* %fields, i32 0, i64 3
  %39 = load i8*, i8** %arrayidx71, align 8
  %call72 = call noalias i8* (i8*, ...) @g_strconcat(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* %39, i8* null)
  %call73 = call i8* @launder_font_name(i8* %call72)
  ret i8* %call73
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_text_get_xlfd_field(i8* %fontname, i32 %field_num, i8* %buffer) #0 {
entry:
  %retval = alloca i8*, align 8
  %fontname.addr = alloca i8*, align 8
  %field_num.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %t1 = alloca i8*, align 8
  %t2 = alloca i8*, align 8
  %p = alloca i8*, align 8
  %countdown = alloca i32, align 4
  %num_dashes = alloca i32, align 4
  %len = alloca i64, align 8
  store i8* %fontname, i8** %fontname.addr, align 8
  store i32 %field_num, i32* %field_num.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load i8*, i8** %fontname.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %fontname.addr, align 8
  store i8* %1, i8** %t1, align 8
  %2 = load i32, i32* %field_num.addr, align 4
  store i32 %2, i32* %countdown, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i8*, i8** %t1, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %countdown, align 4
  %cmp = icmp sge i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load i8*, i8** %t1, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 45
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  %9 = load i32, i32* %countdown, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %countdown, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %10 = load i8*, i8** %t1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %t1, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i32, i32* %field_num.addr, align 4
  %cmp8 = icmp eq i32 %11, 12
  %cond = select i1 %cmp8, i32 2, i32 1
  store i32 %cond, i32* %num_dashes, align 4
  %12 = load i8*, i8** %t1, align 8
  store i8* %12, i8** %t2, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.21, %for.end
  %13 = load i8*, i8** %t2, align 8
  %14 = load i8, i8* %13, align 1
  %tobool11 = icmp ne i8 %14, 0
  br i1 %tobool11, label %for.body.12, label %for.end.23

for.body.12:                                      ; preds = %for.cond.10
  %15 = load i8*, i8** %t2, align 8
  %16 = load i8, i8* %15, align 1
  %conv13 = sext i8 %16 to i32
  %cmp14 = icmp eq i32 %conv13, 45
  br i1 %cmp14, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %for.body.12
  %17 = load i32, i32* %num_dashes, align 4
  %dec16 = add nsw i32 %17, -1
  store i32 %dec16, i32* %num_dashes, align 4
  %cmp17 = icmp eq i32 %dec16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true
  br label %for.end.23

if.end.20:                                        ; preds = %land.lhs.true, %for.body.12
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end.20
  %18 = load i8*, i8** %t2, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr22, i8** %t2, align 8
  br label %for.cond.10

for.end.23:                                       ; preds = %if.then.19, %for.cond.10
  %19 = load i8*, i8** %t2, align 8
  %20 = load i8*, i8** %t1, align 8
  %cmp24 = icmp ugt i8* %19, %20
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %for.end.23
  %21 = load i8*, i8** %t2, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load i8*, i8** %t1, align 8
  %24 = ptrtoint i8* %23 to i64
  %sub = sub i64 %22, %24
  store i64 %sub, i64* %len, align 8
  %25 = load i64, i64* %len, align 8
  %cmp27 = icmp ugt i64 %25, 63
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.26
  store i8* null, i8** %retval
  br label %return

if.end.30:                                        ; preds = %if.then.26
  %26 = load i8*, i8** %t1, align 8
  %27 = load i8, i8* %26, align 1
  %conv31 = sext i8 %27 to i32
  %cmp32 = icmp eq i32 %conv31, 42
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.30
  store i8* null, i8** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.30
  %28 = load i8*, i8** %buffer.addr, align 8
  %29 = load i8*, i8** %t1, align 8
  %30 = load i64, i64* %len, align 8
  %call = call i8* @strncpy(i8* %28, i8* %29, i64 %30) #6
  %31 = load i64, i64* %len, align 8
  %32 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 %31
  store i8 0, i8* %arrayidx, align 1
  %33 = load i8*, i8** %buffer.addr, align 8
  store i8* %33, i8** %p, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.40, %if.end.35
  %34 = load i8*, i8** %p, align 8
  %35 = load i8, i8* %34, align 1
  %tobool37 = icmp ne i8 %35, 0
  br i1 %tobool37, label %for.body.38, label %for.end.42

for.body.38:                                      ; preds = %for.cond.36
  %36 = load i8*, i8** %p, align 8
  %37 = load i8, i8* %36, align 1
  %call39 = call signext i8 @g_ascii_tolower(i8 signext %37) #7
  %38 = load i8*, i8** %p, align 8
  store i8 %call39, i8* %38, align 1
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.38
  %39 = load i8*, i8** %p, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr41, i8** %p, align 8
  br label %for.cond.36

for.end.42:                                       ; preds = %for.cond.36
  br label %if.end.43

if.else:                                          ; preds = %for.end.23
  store i8* null, i8** %retval
  br label %return

if.end.43:                                        ; preds = %for.end.42
  %40 = load i8*, i8** %buffer.addr, align 8
  store i8* %40, i8** %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.else, %if.then.34, %if.then.29, %if.then
  %41 = load i8*, i8** %retval
  ret i8* %41
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @launder_font_name(i8* %name) #0 {
entry:
  %retval = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %laundered_name = alloca i8*, align 8
  %last_char = alloca i8, align 1
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %sub = sub i64 %call, 1
  %1 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub
  %2 = load i8, i8* %arrayidx, align 1
  store i8 %2, i8* %last_char, align 1
  %3 = load i8, i8* %last_char, align 1
  %idxprom = zext i8 %3 to i64
  %4 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx1, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 8
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i8, i8* %last_char, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 46
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load i8*, i8** %name.addr, align 8
  %call6 = call noalias i8* (i8*, ...) @g_strconcat(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* null)
  store i8* %call6, i8** %laundered_name, align 8
  %8 = load i8*, i8** %name.addr, align 8
  call void @g_free(i8* %8)
  %9 = load i8*, i8** %laundered_name, align 8
  store i8* %9, i8** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %10 = load i8*, i8** %name.addr, align 8
  store i8* %10, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

declare noalias i8* @g_strconcat(i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_text_font_size_from_xlfd(i8* %xlfd, double* %size, i32* %size_unit) #0 {
entry:
  %retval = alloca i32, align 4
  %xlfd.addr = alloca i8*, align 8
  %size.addr = alloca double*, align 8
  %size_unit.addr = alloca i32*, align 8
  %buffer = alloca [64 x i8], align 16
  %field = alloca i8*, align 8
  store i8* %xlfd, i8** %xlfd.addr, align 8
  store double* %size, double** %size.addr, align 8
  store i32* %size_unit, i32** %size_unit.addr, align 8
  %0 = load i8*, i8** %xlfd.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %xlfd.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i32 0, i32 0
  %call = call i8* @gimp_text_get_xlfd_field(i8* %1, i32 6, i8* %arraydecay)
  store i8* %call, i8** %field, align 8
  %2 = load i8*, i8** %field, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** %field, align 8
  %call3 = call i32 @atoi(i8* %3) #5
  %conv = sitofp i32 %call3 to double
  %4 = load double*, double** %size.addr, align 8
  store double %conv, double* %4, align 8
  %5 = load i32*, i32** %size_unit.addr, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i8*, i8** %xlfd.addr, align 8
  %arraydecay5 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i32 0, i32 0
  %call6 = call i8* @gimp_text_get_xlfd_field(i8* %6, i32 7, i8* %arraydecay5)
  store i8* %call6, i8** %field, align 8
  %7 = load i8*, i8** %field, align 8
  %tobool7 = icmp ne i8* %7, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.4
  %8 = load i8*, i8** %field, align 8
  %call9 = call i32 @atoi(i8* %8) #5
  %conv10 = sitofp i32 %call9 to double
  %div = fdiv double %conv10, 1.000000e+01
  %9 = load double*, double** %size.addr, align 8
  store double %div, double* %9, align 8
  %10 = load i32*, i32** %size_unit.addr, align 8
  store i32 3, i32* %10, align 4
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.8, %if.then.2, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_set_font_from_xlfd(%struct._GimpText* %text, i8* %xlfd) #0 {
entry:
  %text.addr = alloca %struct._GimpText*, align 8
  %xlfd.addr = alloca i8*, align 8
  %font = alloca i8*, align 8
  %size = alloca double, align 8
  %size_unit = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  store i8* %xlfd, i8** %xlfd.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %1 = bitcast %struct._GimpText* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_set_font_from_xlfd, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i8*, i8** %xlfd.addr, align 8
  %tobool11 = icmp ne i8* %13, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  br label %return

if.end.13:                                        ; preds = %do.end
  %14 = load i8*, i8** %xlfd.addr, align 8
  %call14 = call i8* @gimp_text_font_name_from_xlfd(i8* %14)
  store i8* %call14, i8** %font, align 8
  %15 = load i8*, i8** %xlfd.addr, align 8
  %call15 = call i32 @gimp_text_font_size_from_xlfd(i8* %15, double* %size, i32* %size_unit)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.end.13
  %16 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %17 = bitcast %struct._GimpText* %16 to i8*
  %18 = load double, double* %size, align 8
  %19 = load i32, i32* %size_unit, align 4
  %20 = load i8*, i8** %font, align 8
  %tobool18 = icmp ne i8* %20, null
  %cond = select i1 %tobool18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* null
  %21 = load i8*, i8** %font, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), double %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 %19, i8* %cond, i8* %21, i8* null)
  br label %if.end.23

if.else.19:                                       ; preds = %if.end.13
  %22 = load i8*, i8** %font, align 8
  %tobool20 = icmp ne i8* %22, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.19
  %23 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %24 = bitcast %struct._GimpText* %23 to i8*
  %25 = load i8*, i8** %font, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* %25, i8* null)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.else.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.17
  %26 = load i8*, i8** %font, align 8
  call void @g_free(i8* %26)
  br label %return

return:                                           ; preds = %if.end.23, %if.then.12, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_text_get_type() #4

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone
declare signext i8 @g_ascii_tolower(i8 signext) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
