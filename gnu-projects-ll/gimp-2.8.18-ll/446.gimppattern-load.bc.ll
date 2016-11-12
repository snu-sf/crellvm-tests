; ModuleID = './app/core/gimppattern-load.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._PatternHeader = type { i32, i32, i32, i32, i32, i32 }
%struct._GdkPixbuf = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_pattern_load = private unnamed_addr constant [18 x i8] c"gimp_pattern_load\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"g_path_is_absolute (filename)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Fatal parse error in pattern file '%s': File appears truncated.\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"Fatal parse error in pattern file '%s': Unknown pattern format version %d.\00", align 1
@.str.7 = private unnamed_addr constant [104 x i8] c"Fatal parse error in pattern file '%s: Unsupported pattern depth %d.\0AGIMP Patterns must be GRAY or RGB.\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Invalid UTF-8 string in pattern file '%s'.\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Unnamed\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"mime-type\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"image/x-gimp-pat\00", align 1
@__func__.gimp_pattern_load_pixbuf = private unnamed_addr constant [25 x i8] c"gimp_pattern_load_pixbuf\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"tEXt::Title\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"tEXt::Comment\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_pattern_load(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  %fd = alloca i32, align 4
  %header = alloca %struct._PatternHeader, align 4
  %bn_size = alloca i32, align 4
  %name = alloca i8*, align 8
  %utf8 = alloca i8*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GimpPattern* null, %struct._GimpPattern** %pattern, align 8
  store i8* null, i8** %name, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_pattern_load, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @g_path_is_absolute(i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_pattern_load, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp7 = icmp eq %struct._GError** %2, null
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.6
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %3, align 8
  %cmp8 = icmp eq %struct._GError* %4, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %do.body.6
  br label %if.end.11

if.else.10:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_pattern_load, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %5 = load i8*, i8** %filename.addr, align 8
  %call13 = call i32 (i8*, i32, ...) @open(i8* %5, i32 0, i32 0)
  store i32 %call13, i32* %fd, align 4
  %6 = load i32, i32* %fd, align 4
  %cmp14 = icmp eq i32 %6, -1
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %do.end.12
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_data_error_quark() #5
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #4
  %8 = load i8*, i8** %filename.addr, align 8
  %call18 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call19 = call i32* @__errno_location() #5
  %9 = load i32, i32* %call19, align 4
  %call20 = call i8* @g_strerror(i32 %9) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call16, i32 0, i8* %call17, i8* %call18, i8* %call20)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.21:                                        ; preds = %do.end.12
  %10 = load i32, i32* %fd, align 4
  %11 = bitcast %struct._PatternHeader* %header to i8*
  %call22 = call i64 @read(i32 %10, i8* %11, i64 24)
  %cmp23 = icmp ne i64 %call22, 24
  br i1 %cmp23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.end.21
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call25 = call i32 @gimp_data_error_quark() #5
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0)) #4
  %13 = load i8*, i8** %filename.addr, align 8
  %call27 = call i8* @gimp_filename_to_utf8(i8* %13)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %12, i32 %call25, i32 1, i8* %call26, i8* %call27)
  br label %error.198

if.end.28:                                        ; preds = %if.end.21
  %header_size = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 0
  %14 = load i32, i32* %header_size, align 4
  %and = and i32 %14, 255
  %shl = shl i32 %and, 24
  %header_size29 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 0
  %15 = load i32, i32* %header_size29, align 4
  %and30 = and i32 %15, 65280
  %shl31 = shl i32 %and30, 8
  %or = or i32 %shl, %shl31
  %header_size32 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 0
  %16 = load i32, i32* %header_size32, align 4
  %and33 = and i32 %16, 16711680
  %shr = lshr i32 %and33, 8
  %or34 = or i32 %or, %shr
  %header_size35 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 0
  %17 = load i32, i32* %header_size35, align 4
  %and36 = and i32 %17, -16777216
  %shr37 = lshr i32 %and36, 24
  %or38 = or i32 %or34, %shr37
  %header_size39 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 0
  store i32 %or38, i32* %header_size39, align 4
  %version = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 1
  %18 = load i32, i32* %version, align 4
  %and40 = and i32 %18, 255
  %shl41 = shl i32 %and40, 24
  %version42 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 1
  %19 = load i32, i32* %version42, align 4
  %and43 = and i32 %19, 65280
  %shl44 = shl i32 %and43, 8
  %or45 = or i32 %shl41, %shl44
  %version46 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 1
  %20 = load i32, i32* %version46, align 4
  %and47 = and i32 %20, 16711680
  %shr48 = lshr i32 %and47, 8
  %or49 = or i32 %or45, %shr48
  %version50 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 1
  %21 = load i32, i32* %version50, align 4
  %and51 = and i32 %21, -16777216
  %shr52 = lshr i32 %and51, 24
  %or53 = or i32 %or49, %shr52
  %version54 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 1
  store i32 %or53, i32* %version54, align 4
  %width = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 2
  %22 = load i32, i32* %width, align 4
  %and55 = and i32 %22, 255
  %shl56 = shl i32 %and55, 24
  %width57 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 2
  %23 = load i32, i32* %width57, align 4
  %and58 = and i32 %23, 65280
  %shl59 = shl i32 %and58, 8
  %or60 = or i32 %shl56, %shl59
  %width61 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 2
  %24 = load i32, i32* %width61, align 4
  %and62 = and i32 %24, 16711680
  %shr63 = lshr i32 %and62, 8
  %or64 = or i32 %or60, %shr63
  %width65 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 2
  %25 = load i32, i32* %width65, align 4
  %and66 = and i32 %25, -16777216
  %shr67 = lshr i32 %and66, 24
  %or68 = or i32 %or64, %shr67
  %width69 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 2
  store i32 %or68, i32* %width69, align 4
  %height = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 3
  %26 = load i32, i32* %height, align 4
  %and70 = and i32 %26, 255
  %shl71 = shl i32 %and70, 24
  %height72 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 3
  %27 = load i32, i32* %height72, align 4
  %and73 = and i32 %27, 65280
  %shl74 = shl i32 %and73, 8
  %or75 = or i32 %shl71, %shl74
  %height76 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 3
  %28 = load i32, i32* %height76, align 4
  %and77 = and i32 %28, 16711680
  %shr78 = lshr i32 %and77, 8
  %or79 = or i32 %or75, %shr78
  %height80 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 3
  %29 = load i32, i32* %height80, align 4
  %and81 = and i32 %29, -16777216
  %shr82 = lshr i32 %and81, 24
  %or83 = or i32 %or79, %shr82
  %height84 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 3
  store i32 %or83, i32* %height84, align 4
  %bytes = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 4
  %30 = load i32, i32* %bytes, align 4
  %and85 = and i32 %30, 255
  %shl86 = shl i32 %and85, 24
  %bytes87 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 4
  %31 = load i32, i32* %bytes87, align 4
  %and88 = and i32 %31, 65280
  %shl89 = shl i32 %and88, 8
  %or90 = or i32 %shl86, %shl89
  %bytes91 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 4
  %32 = load i32, i32* %bytes91, align 4
  %and92 = and i32 %32, 16711680
  %shr93 = lshr i32 %and92, 8
  %or94 = or i32 %or90, %shr93
  %bytes95 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 4
  %33 = load i32, i32* %bytes95, align 4
  %and96 = and i32 %33, -16777216
  %shr97 = lshr i32 %and96, 24
  %or98 = or i32 %or94, %shr97
  %bytes99 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 4
  store i32 %or98, i32* %bytes99, align 4
  %magic_number = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 5
  %34 = load i32, i32* %magic_number, align 4
  %and100 = and i32 %34, 255
  %shl101 = shl i32 %and100, 24
  %magic_number102 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 5
  %35 = load i32, i32* %magic_number102, align 4
  %and103 = and i32 %35, 65280
  %shl104 = shl i32 %and103, 8
  %or105 = or i32 %shl101, %shl104
  %magic_number106 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 5
  %36 = load i32, i32* %magic_number106, align 4
  %and107 = and i32 %36, 16711680
  %shr108 = lshr i32 %and107, 8
  %or109 = or i32 %or105, %shr108
  %magic_number110 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 5
  %37 = load i32, i32* %magic_number110, align 4
  %and111 = and i32 %37, -16777216
  %shr112 = lshr i32 %and111, 24
  %or113 = or i32 %or109, %shr112
  %magic_number114 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 5
  store i32 %or113, i32* %magic_number114, align 4
  %magic_number115 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 5
  %38 = load i32, i32* %magic_number115, align 4
  %cmp116 = icmp ne i32 %38, 1196441940
  br i1 %cmp116, label %if.then.124, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %if.end.28
  %version118 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 1
  %39 = load i32, i32* %version118, align 4
  %cmp119 = icmp ne i32 %39, 1
  br i1 %cmp119, label %if.then.124, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %lor.lhs.false.117
  %header_size121 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 0
  %40 = load i32, i32* %header_size121, align 4
  %conv = zext i32 %40 to i64
  %cmp122 = icmp ule i64 %conv, 24
  br i1 %cmp122, label %if.then.124, label %if.end.129

if.then.124:                                      ; preds = %lor.lhs.false.120, %lor.lhs.false.117, %if.end.28
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call125 = call i32 @gimp_data_error_quark() #5
  %call126 = call i8* @gettext(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i32 0, i32 0)) #4
  %42 = load i8*, i8** %filename.addr, align 8
  %call127 = call i8* @gimp_filename_to_utf8(i8* %42)
  %version128 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 1
  %43 = load i32, i32* %version128, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %41, i32 %call125, i32 1, i8* %call126, i8* %call127, i32 %43)
  br label %error.198

if.end.129:                                       ; preds = %lor.lhs.false.120
  %bytes130 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 4
  %44 = load i32, i32* %bytes130, align 4
  %cmp131 = icmp ult i32 %44, 1
  br i1 %cmp131, label %if.then.137, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %if.end.129
  %bytes134 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 4
  %45 = load i32, i32* %bytes134, align 4
  %cmp135 = icmp ugt i32 %45, 4
  br i1 %cmp135, label %if.then.137, label %if.end.142

if.then.137:                                      ; preds = %lor.lhs.false.133, %if.end.129
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call138 = call i32 @gimp_data_error_quark() #5
  %call139 = call i8* @gettext(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.7, i32 0, i32 0)) #4
  %47 = load i8*, i8** %filename.addr, align 8
  %call140 = call i8* @gimp_filename_to_utf8(i8* %47)
  %bytes141 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 4
  %48 = load i32, i32* %bytes141, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %46, i32 %call138, i32 1, i8* %call139, i8* %call140, i32 %48)
  br label %error.198

if.end.142:                                       ; preds = %lor.lhs.false.133
  %header_size143 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 0
  %49 = load i32, i32* %header_size143, align 4
  %conv144 = zext i32 %49 to i64
  %sub = sub i64 %conv144, 24
  %conv145 = trunc i64 %sub to i32
  store i32 %conv145, i32* %bn_size, align 4
  %tobool146 = icmp ne i32 %conv145, 0
  br i1 %tobool146, label %if.then.147, label %if.end.163

if.then.147:                                      ; preds = %if.end.142
  %50 = load i32, i32* %bn_size, align 4
  %conv148 = sext i32 %50 to i64
  %call149 = call noalias i8* @g_malloc_n(i64 %conv148, i64 1)
  store i8* %call149, i8** %name, align 8
  %51 = load i32, i32* %fd, align 4
  %52 = load i8*, i8** %name, align 8
  %53 = load i32, i32* %bn_size, align 4
  %conv150 = sext i32 %53 to i64
  %call151 = call i64 @read(i32 %51, i8* %52, i64 %conv150)
  %54 = load i32, i32* %bn_size, align 4
  %conv152 = sext i32 %54 to i64
  %cmp153 = icmp slt i64 %call151, %conv152
  br i1 %cmp153, label %if.then.155, label %if.end.159

if.then.155:                                      ; preds = %if.then.147
  %55 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call156 = call i32 @gimp_data_error_quark() #5
  %call157 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0)) #4
  %56 = load i8*, i8** %filename.addr, align 8
  %call158 = call i8* @gimp_filename_to_utf8(i8* %56)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %55, i32 %call156, i32 1, i8* %call157, i8* %call158)
  %57 = load i8*, i8** %name, align 8
  call void @g_free(i8* %57)
  br label %error.198

if.end.159:                                       ; preds = %if.then.147
  %58 = load i8*, i8** %name, align 8
  %call160 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0)) #4
  %59 = load i8*, i8** %filename.addr, align 8
  %call161 = call i8* @gimp_filename_to_utf8(i8* %59)
  %call162 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %58, i64 -1, i8* %call160, i8* %call161)
  store i8* %call162, i8** %utf8, align 8
  %60 = load i8*, i8** %name, align 8
  call void @g_free(i8* %60)
  %61 = load i8*, i8** %utf8, align 8
  store i8* %61, i8** %name, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.159, %if.end.142
  %62 = load i8*, i8** %name, align 8
  %tobool164 = icmp ne i8* %62, null
  br i1 %tobool164, label %if.end.168, label %if.then.165

if.then.165:                                      ; preds = %if.end.163
  %call166 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #4
  %call167 = call noalias i8* @g_strdup(i8* %call166)
  store i8* %call167, i8** %name, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.165, %if.end.163
  %call169 = call i64 @gimp_pattern_get_type() #5
  %63 = load i8*, i8** %name, align 8
  %call170 = call i8* (i64, i8*, ...) @g_object_new(i64 %call169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* null)
  %64 = bitcast i8* %call170 to %struct._GimpPattern*
  store %struct._GimpPattern* %64, %struct._GimpPattern** %pattern, align 8
  %65 = load i8*, i8** %name, align 8
  call void @g_free(i8* %65)
  %width171 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 2
  %66 = load i32, i32* %width171, align 4
  %height172 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 3
  %67 = load i32, i32* %height172, align 4
  %bytes173 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 4
  %68 = load i32, i32* %bytes173, align 4
  %call174 = call %struct._TempBuf* @temp_buf_new(i32 %66, i32 %67, i32 %68, i32 0, i32 0, i8* null)
  %69 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %69, i32 0, i32 1
  store %struct._TempBuf* %call174, %struct._TempBuf** %mask, align 8
  %70 = load i32, i32* %fd, align 4
  %71 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask175 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %71, i32 0, i32 1
  %72 = load %struct._TempBuf*, %struct._TempBuf** %mask175, align 8
  %call176 = call i8* @temp_buf_get_data(%struct._TempBuf* %72)
  %width177 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 2
  %73 = load i32, i32* %width177, align 4
  %height178 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 3
  %74 = load i32, i32* %height178, align 4
  %mul = mul i32 %73, %74
  %bytes179 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 4
  %75 = load i32, i32* %bytes179, align 4
  %mul180 = mul i32 %mul, %75
  %conv181 = zext i32 %mul180 to i64
  %call182 = call i64 @read(i32 %70, i8* %call176, i64 %conv181)
  %width183 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 2
  %76 = load i32, i32* %width183, align 4
  %height184 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 3
  %77 = load i32, i32* %height184, align 4
  %mul185 = mul i32 %76, %77
  %bytes186 = getelementptr inbounds %struct._PatternHeader, %struct._PatternHeader* %header, i32 0, i32 4
  %78 = load i32, i32* %bytes186, align 4
  %mul187 = mul i32 %mul185, %78
  %conv188 = zext i32 %mul187 to i64
  %cmp189 = icmp slt i64 %call182, %conv188
  br i1 %cmp189, label %if.then.191, label %if.end.195

if.then.191:                                      ; preds = %if.end.168
  %79 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call192 = call i32 @gimp_data_error_quark() #5
  %call193 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0)) #4
  %80 = load i8*, i8** %filename.addr, align 8
  %call194 = call i8* @gimp_filename_to_utf8(i8* %80)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %79, i32 %call192, i32 1, i8* %call193, i8* %call194)
  br label %error.198

if.end.195:                                       ; preds = %if.end.168
  %81 = load i32, i32* %fd, align 4
  %call196 = call i32 @close(i32 %81)
  %82 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %83 = bitcast %struct._GimpPattern* %82 to i8*
  %call197 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %83)
  store %struct._GList* %call197, %struct._GList** %retval
  br label %return

error.198:                                        ; preds = %if.then.191, %if.then.155, %if.then.137, %if.then.124, %if.then.24
  %84 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %tobool199 = icmp ne %struct._GimpPattern* %84, null
  br i1 %tobool199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %error.198
  %85 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %86 = bitcast %struct._GimpPattern* %85 to i8*
  call void @g_object_unref(i8* %86)
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %error.198
  %87 = load i32, i32* %fd, align 4
  %call202 = call i32 @close(i32 %87)
  store %struct._GList* null, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.201, %if.end.195, %if.then.15, %if.else.10, %if.else.3, %if.else
  %88 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %88
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_path_is_absolute(i8*) #1

declare i32 @open(i8*, i32, ...) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_data_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i64 @read(i32, i8*, i64) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @g_free(i8*) #1

declare noalias i8* @gimp_any_to_utf8(i8*, i64, i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_get_type() #2

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare i32 @close(i32) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_pattern_load_pixbuf(%struct._GimpContext* %context, i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %pat_data = alloca i8*, align 8
  %buf_data = alloca i8*, align 8
  %name = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pattern_load_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @g_path_is_absolute(i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pattern_load_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp7 = icmp eq %struct._GError** %2, null
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.6
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %3, align 8
  %cmp8 = icmp eq %struct._GError* %4, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %do.body.6
  br label %if.end.11

if.else.10:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pattern_load_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %5 = load i8*, i8** %filename.addr, align 8
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8* %5, %struct._GError** %6)
  store %struct._GdkPixbuf* %call13, %struct._GdkPixbuf** %pixbuf, align 8
  %7 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool14 = icmp ne %struct._GdkPixbuf* %7, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end.12
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.16:                                        ; preds = %do.end.12
  %8 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call17 = call i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  %call18 = call noalias i8* @g_strdup(i8* %call17)
  store i8* %call18, i8** %name, align 8
  %9 = load i8*, i8** %name, align 8
  %tobool19 = icmp ne i8* %9, null
  br i1 %tobool19, label %if.end.23, label %if.then.20

if.then.20:                                       ; preds = %if.end.16
  %10 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call21 = call i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  %call22 = call noalias i8* @g_strdup(i8* %call21)
  store i8* %call22, i8** %name, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.16
  %11 = load i8*, i8** %name, align 8
  %tobool24 = icmp ne i8* %11, null
  br i1 %tobool24, label %if.end.27, label %if.then.25

if.then.25:                                       ; preds = %if.end.23
  %12 = load i8*, i8** %filename.addr, align 8
  %call26 = call noalias i8* @g_filename_display_basename(i8* %12)
  store i8* %call26, i8** %name, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.23
  %call28 = call i64 @gimp_pattern_get_type() #5
  %13 = load i8*, i8** %name, align 8
  %call29 = call i8* (i64, i8*, ...) @g_object_new(i64 %call28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null)
  %14 = bitcast i8* %call29 to %struct._GimpPattern*
  store %struct._GimpPattern* %14, %struct._GimpPattern** %pattern, align 8
  %15 = load i8*, i8** %name, align 8
  call void @g_free(i8* %15)
  %16 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call30 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %16)
  store i32 %call30, i32* %width, align 4
  %17 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call31 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %17)
  store i32 %call31, i32* %height, align 4
  %18 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call32 = call i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf* %18)
  store i32 %call32, i32* %bytes, align 4
  %19 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call33 = call i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf* %19)
  store i32 %call33, i32* %rowstride, align 4
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %height, align 4
  %22 = load i32, i32* %bytes, align 4
  %call34 = call %struct._TempBuf* @temp_buf_new(i32 %20, i32 %21, i32 %22, i32 0, i32 0, i8* null)
  %23 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %23, i32 0, i32 1
  store %struct._TempBuf* %call34, %struct._TempBuf** %mask, align 8
  %24 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call35 = call i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf* %24)
  store i8* %call35, i8** %pat_data, align 8
  %25 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask36 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %25, i32 0, i32 1
  %26 = load %struct._TempBuf*, %struct._TempBuf** %mask36, align 8
  %call37 = call i8* @temp_buf_get_data(%struct._TempBuf* %26)
  store i8* %call37, i8** %buf_data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %height, align 4
  %cmp38 = icmp slt i32 %27, %28
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i8*, i8** %buf_data, align 8
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %30, %31
  %32 = load i32, i32* %bytes, align 4
  %mul39 = mul nsw i32 %mul, %32
  %idx.ext = sext i32 %mul39 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  %33 = load i8*, i8** %pat_data, align 8
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %bytes, align 4
  %mul40 = mul nsw i32 %34, %35
  %conv = sext i32 %mul40 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %33, i64 %conv, i32 1, i1 false)
  %36 = load i32, i32* %rowstride, align 4
  %37 = load i8*, i8** %pat_data, align 8
  %idx.ext41 = sext i32 %36 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %37, i64 %idx.ext41
  store i8* %add.ptr42, i8** %pat_data, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %40 = bitcast %struct._GdkPixbuf* %39 to i8*
  call void @g_object_unref(i8* %40)
  %41 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %42 = bitcast %struct._GimpPattern* %41 to i8*
  %call43 = call %struct._GList* @g_list_prepend(%struct._GList* null, i8* %42)
  store %struct._GList* %call43, %struct._GList** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.15, %if.else.10, %if.else.3, %if.else
  %43 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %43
}

declare %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8*, %struct._GError**) #1

declare i8* @gdk_pixbuf_get_option(%struct._GdkPixbuf*, i8*) #1

declare noalias i8* @g_filename_display_basename(i8*) #1

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf*) #1

declare i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
