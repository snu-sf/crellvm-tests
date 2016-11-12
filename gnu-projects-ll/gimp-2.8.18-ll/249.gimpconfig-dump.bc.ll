; ModuleID = './app/config/gimpconfig-dump.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpConfigWriter = type opaque
%struct._GimpConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GTypeClass = type { i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [39 x i8] c"Dump of the GIMP default configuration\00", align 1
@system_gimprc_header = internal constant [645 x i8] c"This is the system-wide gimprc file.  Any change made in this file will affect all users of this system, provided that they are not overriding the default values in their personal gimprc file.\0A\0ALines that start with a '#' are comments. Blank lines are ignored.\0A\0ABy default everything in this file is commented out.  The file then documents the default values and shows what changes are possible.\0A\0AThe variable ${gimp_dir} is set to the value of the environment variable GIMP2_DIRECTORY or, if that is not set, the compiled-in default value is used.  If GIMP2_DIRECTORY is not an absolute path, it is interpreted relative to your home directory.\00", align 16
@.str.1 = private unnamed_addr constant [35 x i8] c"FIXME: Property '%s' has no blurb.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"The %s property has no description.\00", align 1
@.str.3 = private unnamed_addr constant [127 x i8] c"The color is specified in the form (color-rgba red green blue alpha) with channel values as floats in the range of 0.0 to 1.0.\00", align 1
@.str.4 = private unnamed_addr constant [120 x i8] c"The color is specified in the form (color-rgb red green blue) with channel values as floats in the range of 0.0 to 1.0.\00", align 1
@.str.5 = private unnamed_addr constant [239 x i8] c"The integer size can contain a suffix of 'B', 'K', 'M' or 'G' which makes GIMP interpret the size as being specified in bytes, kilobytes, megabytes or gigabytes. If no suffix is specified the size defaults to being specified in kilobytes.\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"This is a single filename.\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"This is a colon-separated list of files.\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"This is a single folder.\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"This is a colon-separated list of folders to search.\00", align 1
@.str.10 = private unnamed_addr constant [97 x i8] c"The unit can be one inches, millimeters, points or picas plus those in your user units database.\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"This is a parameter list.\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Possible values are yes and no.\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"This is an integer value.\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"This is a float value.\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"image-title-format\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"image-status-format\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"This is a string value.\00", align 1
@display_format_description = internal constant [1026 x i8] c"This is a format string; certain % character sequences are recognised and expanded as follows:\0A\0A%%  literal percent sign\0A%f  bare filename, or \22Untitled\22\0A%F  full path to file, or \22Untitled\22\0A%p  PDB image id\0A%i  view instance number\0A%t  image type (RGB, grayscale, indexed)\0A%z  zoom factor as a percentage\0A%s  source scale factor\0A%d  destination scale factor\0A%Dx expands to x if the image is dirty, the empty string otherwise\0A%Cx expands to x if the image is clean, the empty string otherwise\0A%B  expands to (modified) if the image is dirty, the empty string otherwise\0A%A  expands to (clean) if the image is clean, the empty string otherwise\0A%l  the number of layers\0A%L  the number of layers (long form)\0A%m  memory used by the image\0A%n  the name of the active layer/channel\0A%P  the PDB id of the active layer/channel\0A%w  image width in pixels\0A%W  image width in real-world units\0A%h  image height in pixels\0A%H  image height in real-world units\0A%M  the image size expressed in megapixels\0A%u  unit symbol\0A%U  unit abbreviation\0A\0A\00", align 16
@.str.18 = private unnamed_addr constant [23 x i8] c"  Possible values are \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"FIXME: Can't tell anything about a %s.\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"%s  %s\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1
@man_page_header = internal constant [974 x i8] c".\5C\22 This man-page is auto-generated by gimp --dump-gimprc-manpage.\0A\0A.TH GIMPRC 5 \22Version @GIMP_VERSION@\22 \22GIMP Manual Pages\22\0A.SH NAME\0Agimprc \5C- gimp configuration file\0A.SH DESCRIPTION\0AThe\0A.B gimprc\0Afile is a configuration file read by GIMP when it starts up.  There\0Aare two of these: one system-wide one stored in\0A@gimpsysconfdir@/gimprc and a per-user \5CfB$HOME\5CfP/@gimpdir@/gimprc\0Awhich may override system settings.\0A\0AComments are introduced by a hash sign (#), and continue until the end\0Aof the line.  Blank lines are ignored.\0A\0AThe\0A.B gimprc\0Afile associates values with properties.  These properties may be set\0Aby lisp-like assignments of the form:\0A.IP\0A\5Cf3(\5Cf2property\5C-name\5C value\5Cf3)\5Cf1\0A.TP\0Awhere:\0A.TP 10\0A.I property\5C-name\0Ais one of the property names described below.\0A.TP\0A.I value\0Ais the value the property is to be set to.\0A.PP\0A\0AEither spaces or tabs may be used to separate the name from the value.\0A.PP\0A.SH PROPERTIES\0AValid properties and their default values are:\0A\0A\00", align 16
@.str.26 = private unnamed_addr constant [5 x i8] c".TP\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@man_page_path = internal global i8* getelementptr inbounds ([1108 x i8], [1108 x i8]* @.str.30, i32 0, i32 0), align 8
@man_page_footer = internal constant [166 x i8] c".SH FILES\0A.TP\0A.I @gimpsysconfdir@/gimprc\0ASystem-wide configuration file\0A.TP\0A.I \5CfB$HOME\5CfP/@gimpdir@/gimprc\0APer-user configuration file\0A\0A.SH \22SEE ALSO\22\0A.BR gimp (1)\0A\00", align 16
@.str.28 = private unnamed_addr constant [3 x i8] c"\5C&\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c".br\0A\00", align 1
@.str.30 = private unnamed_addr constant [1108 x i8] c".PP\0A.SH PATH EXPANSION\0AStrings of type PATH are expanded in a manner similar to\0A.BR bash (1).\0ASpecifically: tilde (~) is expanded to the user's home directory. Note that\0Athe bash feature of being able to refer to other user's home directories\0Aby writing ~userid/ is not valid in this file.\0A\0A${variable} is expanded to the current value of an environment variable.\0AThere are a few variables that are pre-defined:\0A.TP\0A.I gimp_dir\0AThe personal gimp directory which is set to the value of the environment\0Avariable GIMP2_DIRECTORY or to ~/@gimpdir@.\0A.TP\0A.I gimp_data_dir\0ABase for paths to shareable data, which is set to the value of the\0Aenvironment variable GIMP2_DATADIR or to the compiled-in default value\0A@gimpdatadir@.\0A.TP\0A.I gimp_plug_in_dir\0ABase to paths for architecture-specific plugins and modules, which is set\0Ato the value of the environment variable GIMP2_PLUGINDIR or to the\0Acompiled-in default value @gimpplugindir@.\0A.TP\0A.I gimp_sysconf_dir\0APath to configuration files, which is set to the value of the environment\0Avariable GIMP2_SYSCONFDIR or to the compiled-in default value \0A@gimpsysconfdir@.\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_config_dump(i32 %format) #0 {
entry:
  %format.addr = alloca i32, align 4
  %writer = alloca %struct._GimpConfigWriter*, align 8
  %rc = alloca %struct._GimpConfig*, align 8
  store i32 %format, i32* %format.addr, align 4
  %call = call i64 @gimp_rc_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpConfig*
  store %struct._GimpConfig* %0, %struct._GimpConfig** %rc, align 8
  %call2 = call %struct._GimpConfigWriter* @gimp_config_writer_new_fd(i32 1)
  store %struct._GimpConfigWriter* %call2, %struct._GimpConfigWriter** %writer, align 8
  %1 = load i32, i32* %format.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %2 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_comment(%struct._GimpConfigWriter* %2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %3)
  %4 = load %struct._GimpConfig*, %struct._GimpConfig** %rc, align 8
  %5 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %call4 = call i32 @gimp_config_serialize_properties(%struct._GimpConfig* %4, %struct._GimpConfigWriter* %5)
  %6 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %6)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %7 = load %struct._GimpConfig*, %struct._GimpConfig** %rc, align 8
  %8 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @dump_gimprc_system(%struct._GimpConfig* %7, %struct._GimpConfigWriter* %8, i32 1)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %9 = load %struct._GimpConfig*, %struct._GimpConfig** %rc, align 8
  %10 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @dump_gimprc_manpage(%struct._GimpConfig* %9, %struct._GimpConfigWriter* %10, i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.6, %sw.bb.5, %sw.bb.3, %sw.bb
  %11 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %call7 = call i32 @gimp_config_writer_finish(%struct._GimpConfigWriter* %11, i8* null, %struct._GError** null)
  %12 = load %struct._GimpConfig*, %struct._GimpConfig** %rc, align 8
  %13 = bitcast %struct._GimpConfig* %12 to i8*
  call void @g_object_unref(i8* %13)
  ret i32 1
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rc_get_type() #2

declare %struct._GimpConfigWriter* @gimp_config_writer_new_fd(i32) #1

declare void @gimp_config_writer_comment(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_linefeed(%struct._GimpConfigWriter*) #1

declare i32 @gimp_config_serialize_properties(%struct._GimpConfig*, %struct._GimpConfigWriter*) #1

; Function Attrs: nounwind uwtable
define internal void @dump_gimprc_system(%struct._GimpConfig* %rc, %struct._GimpConfigWriter* %writer, i32 %fd) #0 {
entry:
  %rc.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %fd.addr = alloca i32, align 4
  %klass = alloca %struct._GObjectClass*, align 8
  %property_specs = alloca %struct._GParamSpec**, align 8
  %n_property_specs = alloca i32, align 4
  %i = alloca i32, align 4
  %prop_spec = alloca %struct._GParamSpec*, align 8
  %comment = alloca i8*, align 8
  store %struct._GimpConfig* %rc, %struct._GimpConfig** %rc.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_comment(%struct._GimpConfigWriter* %0, i8* getelementptr inbounds ([645 x i8], [645 x i8]* @system_gimprc_header, i32 0, i32 0))
  %1 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %1)
  %2 = load %struct._GimpConfig*, %struct._GimpConfig** %rc.addr, align 8
  %3 = bitcast %struct._GimpConfig* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to %struct._GObjectClass*
  store %struct._GObjectClass* %5, %struct._GObjectClass** %klass, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %klass, align 8
  %call = call %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass* %6, i32* %n_property_specs)
  store %struct._GParamSpec** %call, %struct._GParamSpec*** %property_specs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n_property_specs, align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %10, i64 %idxprom
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %11, %struct._GParamSpec** %prop_spec, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 2
  %13 = load i32, i32* %flags, align 4
  %and = and i32 %13, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags1 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 2
  %15 = load i32, i32* %flags1, align 4
  %and2 = and i32 %15, 8192
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %for.inc

if.end.5:                                         ; preds = %if.end
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %call6 = call i8* @dump_describe_param(%struct._GParamSpec* %16)
  store i8* %call6, i8** %comment, align 8
  %17 = load i8*, i8** %comment, align 8
  %tobool7 = icmp ne i8* %17, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %18 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %19 = load i8*, i8** %comment, align 8
  call void @gimp_config_writer_comment(%struct._GimpConfigWriter* %18, i8* %19)
  %20 = load i8*, i8** %comment, align 8
  call void @g_free(i8* %20)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %21 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_comment_mode(%struct._GimpConfigWriter* %21, i32 1)
  %22 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %22)
  %23 = load %struct._GimpConfig*, %struct._GimpConfig** %rc.addr, align 8
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %25 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call10 = call i32 @gimp_config_serialize_property(%struct._GimpConfig* %23, %struct._GParamSpec* %24, %struct._GimpConfigWriter* %25)
  %26 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_comment_mode(%struct._GimpConfigWriter* %26, i32 0)
  %27 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %27)
  br label %for.inc

for.inc:                                          ; preds = %if.end.9, %if.then.4, %if.then
  %28 = load i32, i32* %i, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %30 = bitcast %struct._GParamSpec** %29 to i8*
  call void @g_free(i8* %30)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dump_gimprc_manpage(%struct._GimpConfig* %rc, %struct._GimpConfigWriter* %writer, i32 %fd) #0 {
entry:
  %rc.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %fd.addr = alloca i32, align 4
  %klass = alloca %struct._GObjectClass*, align 8
  %property_specs = alloca %struct._GParamSpec**, align 8
  %n_property_specs = alloca i32, align 4
  %i = alloca i32, align 4
  %prop_spec = alloca %struct._GParamSpec*, align 8
  %desc = alloca i8*, align 8
  store %struct._GimpConfig* %rc, %struct._GimpConfig** %rc.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i64 @strlen(i8* getelementptr inbounds ([974 x i8], [974 x i8]* @man_page_header, i32 0, i32 0)) #7
  %call1 = call i64 @write(i32 %0, i8* getelementptr inbounds ([974 x i8], [974 x i8]* @man_page_header, i32 0, i32 0), i64 %call)
  %1 = load %struct._GimpConfig*, %struct._GimpConfig** %rc.addr, align 8
  %2 = bitcast %struct._GimpConfig* %1 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %2, i32 0, i32 0
  %3 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %4 = bitcast %struct._GTypeClass* %3 to %struct._GObjectClass*
  store %struct._GObjectClass* %4, %struct._GObjectClass** %klass, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %klass, align 8
  %call2 = call %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass* %5, i32* %n_property_specs)
  store %struct._GParamSpec** %call2, %struct._GParamSpec*** %property_specs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n_property_specs, align 4
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %9, i64 %idxprom
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %10, %struct._GParamSpec** %prop_spec, align 8
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 2
  %12 = load i32, i32* %flags, align 4
  %and = and i32 %12, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags3 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 2
  %14 = load i32, i32* %flags3, align 4
  %and4 = and i32 %14, 8192
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %for.inc

if.end.7:                                         ; preds = %if.end
  %15 = load i32, i32* %fd.addr, align 4
  %call8 = call i64 @write(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i64 4)
  %16 = load %struct._GimpConfig*, %struct._GimpConfig** %rc.addr, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %18 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call9 = call i32 @gimp_config_serialize_property(%struct._GimpConfig* %16, %struct._GParamSpec* %17, %struct._GimpConfigWriter* %18)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.7
  %19 = load i32, i32* %fd.addr, align 4
  %call12 = call i64 @write(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i64 1)
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %call13 = call i8* @dump_describe_param(%struct._GParamSpec* %20)
  store i8* %call13, i8** %desc, align 8
  %21 = load i32, i32* %fd.addr, align 4
  %22 = load i8*, i8** %desc, align 8
  call void @dump_with_linebreaks(i32 %21, i8* %22)
  %23 = load i32, i32* %fd.addr, align 4
  %call14 = call i64 @write(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i64 1)
  %24 = load i8*, i8** %desc, align 8
  call void @g_free(i8* %24)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.15, %if.then.6, %if.then
  %25 = load i32, i32* %i, align 4
  %inc = add i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %27 = bitcast %struct._GParamSpec** %26 to i8*
  call void @g_free(i8* %27)
  %28 = load i32, i32* %fd.addr, align 4
  %29 = load i8*, i8** @man_page_path, align 8
  %30 = load i8*, i8** @man_page_path, align 8
  %call16 = call i64 @strlen(i8* %30) #7
  %call17 = call i64 @write(i32 %28, i8* %29, i64 %call16)
  %31 = load i32, i32* %fd.addr, align 4
  %call18 = call i64 @strlen(i8* getelementptr inbounds ([166 x i8], [166 x i8]* @man_page_footer, i32 0, i32 0)) #7
  %call19 = call i64 @write(i32 %31, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @man_page_footer, i32 0, i32 0), i64 %call18)
  ret void
}

declare i32 @gimp_config_writer_finish(%struct._GimpConfigWriter*, i8*, %struct._GError**) #1

declare void @g_object_unref(i8*) #1

declare %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i8* @dump_describe_param(%struct._GParamSpec* %param_spec) #0 {
entry:
  %retval = alloca i8*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %blurb = alloca i8*, align 8
  %values = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %__inst47 = alloca %struct._GTypeInstance*, align 8
  %__t49 = alloca i64, align 8
  %__r52 = alloca i32, align 4
  %tmp67 = alloca i32, align 4
  %__inst76 = alloca %struct._GTypeInstance*, align 8
  %__t78 = alloca i64, align 8
  %__r81 = alloca i32, align 4
  %tmp96 = alloca i32, align 4
  %enum_class = alloca %struct._GEnumClass*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %str = alloca %struct._GString*, align 8
  %i = alloca i32, align 4
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %call = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %0)
  store i8* %call, i8** %blurb, align 8
  store i8* null, i8** %values, align 8
  %1 = load i8*, i8** %blurb, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i8* %3)
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name1 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 1
  %5 = load i8*, i8** %name1, align 8
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* %5)
  store i8* %call2, i8** %blurb, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %7 = bitcast %struct._GParamSpec* %6 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %7, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_param_rgb_get_type() #6
  store i64 %call3, i64* %__t, align 8
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %8, null
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %10, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %13, %14
  br i1 %cmp, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.11

if.else.9:                                        ; preds = %land.lhs.true, %if.else
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %16 = load i64, i64* %__t, align 8
  %call10 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %15, i64 %16) #7
  store i32 %call10, i32* %__r, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.5
  %17 = load i32, i32* %__r, align 4
  store i32 %17, i32* %tmp
  %18 = load i32, i32* %tmp
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %if.then.14, label %if.else.20

if.then.14:                                       ; preds = %if.end.12
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %call15 = call i32 @gimp_param_spec_rgb_has_alpha(%struct._GParamSpec* %19)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.then.14
  store i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.3, i32 0, i32 0), i8** %values, align 8
  br label %if.end.19

if.else.18:                                       ; preds = %if.then.14
  store i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.4, i32 0, i32 0), i8** %values, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  br label %if.end.147

if.else.20:                                       ; preds = %if.end.12
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %21, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_param_memsize_get_type() #6
  store i64 %call25, i64* %__t24, align 8
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %22, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %if.else.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %if.else.20
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %24, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type35, align 8
  %28 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %27, %28
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %30 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %29, i64 %30) #7
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %31 = load i32, i32* %__r27, align 4
  store i32 %31, i32* %tmp42
  %32 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %32, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  store i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str.5, i32 0, i32 0), i8** %values, align 8
  br label %if.end.146

if.else.45:                                       ; preds = %if.end.41
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %34 = bitcast %struct._GParamSpec* %33 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %34, %struct._GTypeInstance** %__inst47, align 8
  %call50 = call i64 @gimp_param_config_path_get_type() #6
  store i64 %call50, i64* %__t49, align 8
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst47, align 8
  %tobool53 = icmp ne %struct._GTypeInstance* %35, null
  br i1 %tobool53, label %if.else.55, label %if.then.54

if.then.54:                                       ; preds = %if.else.45
  store i32 0, i32* %__r52, align 4
  br label %if.end.66

if.else.55:                                       ; preds = %if.else.45
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst47, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %tobool57 = icmp ne %struct._GTypeClass* %37, null
  br i1 %tobool57, label %land.lhs.true.58, label %if.else.63

land.lhs.true.58:                                 ; preds = %if.else.55
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst47, align 8
  %g_class59 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class59, align 8
  %g_type60 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type60, align 8
  %41 = load i64, i64* %__t49, align 8
  %cmp61 = icmp eq i64 %40, %41
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %land.lhs.true.58
  store i32 1, i32* %__r52, align 4
  br label %if.end.65

if.else.63:                                       ; preds = %land.lhs.true.58, %if.else.55
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst47, align 8
  %43 = load i64, i64* %__t49, align 8
  %call64 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %42, i64 %43) #7
  store i32 %call64, i32* %__r52, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.then.62
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.54
  %44 = load i32, i32* %__r52, align 4
  store i32 %44, i32* %tmp67
  %45 = load i32, i32* %tmp67
  %tobool68 = icmp ne i32 %45, 0
  br i1 %tobool68, label %if.then.69, label %if.else.74

if.then.69:                                       ; preds = %if.end.66
  %46 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %call70 = call i32 @gimp_param_spec_config_path_type(%struct._GParamSpec* %46)
  switch i32 %call70, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.71
    i32 2, label %sw.bb.72
    i32 3, label %sw.bb.73
  ]

sw.bb:                                            ; preds = %if.then.69
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8** %values, align 8
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.then.69
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8** %values, align 8
  br label %sw.epilog

sw.bb.72:                                         ; preds = %if.then.69
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i8** %values, align 8
  br label %sw.epilog

sw.bb.73:                                         ; preds = %if.then.69
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i32 0, i32 0), i8** %values, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.69, %sw.bb.73, %sw.bb.72, %sw.bb.71, %sw.bb
  br label %if.end.145

if.else.74:                                       ; preds = %if.end.66
  %47 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %48 = bitcast %struct._GParamSpec* %47 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %48, %struct._GTypeInstance** %__inst76, align 8
  %call79 = call i64 @gimp_param_unit_get_type() #6
  store i64 %call79, i64* %__t78, align 8
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %tobool82 = icmp ne %struct._GTypeInstance* %49, null
  br i1 %tobool82, label %if.else.84, label %if.then.83

if.then.83:                                       ; preds = %if.else.74
  store i32 0, i32* %__r81, align 4
  br label %if.end.95

if.else.84:                                       ; preds = %if.else.74
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %g_class85 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %50, i32 0, i32 0
  %51 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class85, align 8
  %tobool86 = icmp ne %struct._GTypeClass* %51, null
  br i1 %tobool86, label %land.lhs.true.87, label %if.else.92

land.lhs.true.87:                                 ; preds = %if.else.84
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %g_class88 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %52, i32 0, i32 0
  %53 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class88, align 8
  %g_type89 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %53, i32 0, i32 0
  %54 = load i64, i64* %g_type89, align 8
  %55 = load i64, i64* %__t78, align 8
  %cmp90 = icmp eq i64 %54, %55
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %land.lhs.true.87
  store i32 1, i32* %__r81, align 4
  br label %if.end.94

if.else.92:                                       ; preds = %land.lhs.true.87, %if.else.84
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst76, align 8
  %57 = load i64, i64* %__t78, align 8
  %call93 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %56, i64 %57) #7
  store i32 %call93, i32* %__r81, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.92, %if.then.91
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.83
  %58 = load i32, i32* %__r81, align 4
  store i32 %58, i32* %tmp96
  %59 = load i32, i32* %tmp96
  %tobool97 = icmp ne i32 %59, 0
  br i1 %tobool97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %if.end.95
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.10, i32 0, i32 0), i8** %values, align 8
  br label %if.end.144

if.else.99:                                       ; preds = %if.end.95
  %60 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %60, i32 0, i32 3
  %61 = load i64, i64* %value_type, align 8
  %call100 = call i64 @gimp_config_interface_get_type() #6
  %call101 = call i32 @g_type_is_a(i64 %61, i64 %call100)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %if.else.99
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8** %values, align 8
  br label %if.end.143

if.else.104:                                      ; preds = %if.else.99
  %62 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type105 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %62, i32 0, i32 3
  %63 = load i64, i64* %value_type105, align 8
  %call106 = call i64 @g_type_fundamental(i64 %63)
  switch i64 %call106, label %sw.default.141 [
    i64 20, label %sw.bb.107
    i64 24, label %sw.bb.108
    i64 28, label %sw.bb.108
    i64 32, label %sw.bb.108
    i64 36, label %sw.bb.108
    i64 56, label %sw.bb.109
    i64 60, label %sw.bb.109
    i64 64, label %sw.bb.110
    i64 48, label %sw.bb.121
  ]

sw.bb.107:                                        ; preds = %if.else.104
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), i8** %values, align 8
  br label %sw.epilog.142

sw.bb.108:                                        ; preds = %if.else.104, %if.else.104, %if.else.104, %if.else.104
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i8** %values, align 8
  br label %sw.epilog.142

sw.bb.109:                                        ; preds = %if.else.104, %if.else.104
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i8** %values, align 8
  br label %sw.epilog.142

sw.bb.110:                                        ; preds = %if.else.104
  %64 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %call111 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %64)
  %call112 = call i32 @strcmp(i8* %call111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0)) #7
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %land.lhs.true.114, label %if.else.119

land.lhs.true.114:                                ; preds = %sw.bb.110
  %65 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %call115 = call i8* @g_param_spec_get_name(%struct._GParamSpec* %65)
  %call116 = call i32 @strcmp(i8* %call115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0)) #7
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %land.lhs.true.114
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i8** %values, align 8
  br label %if.end.120

if.else.119:                                      ; preds = %land.lhs.true.114, %sw.bb.110
  store i8* getelementptr inbounds ([1026 x i8], [1026 x i8]* @display_format_description, i32 0, i32 0), i8** %values, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.119, %if.then.118
  br label %sw.epilog.142

sw.bb.121:                                        ; preds = %if.else.104
  %66 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type126 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %66, i32 0, i32 3
  %67 = load i64, i64* %value_type126, align 8
  %call127 = call i8* @g_type_class_peek(i64 %67)
  %68 = bitcast i8* %call127 to %struct._GEnumClass*
  store %struct._GEnumClass* %68, %struct._GEnumClass** %enum_class, align 8
  %69 = load i8*, i8** %blurb, align 8
  %call128 = call %struct._GString* @g_string_new(i8* %69)
  store %struct._GString* %call128, %struct._GString** %str, align 8
  %70 = load %struct._GString*, %struct._GString** %str, align 8
  %call129 = call %struct._GString* @g_string_append(%struct._GString* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  %71 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %values130 = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %71, i32 0, i32 4
  %72 = load %struct._GEnumValue*, %struct._GEnumValue** %values130, align 8
  store %struct._GEnumValue* %72, %struct._GEnumValue** %enum_value, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.121
  %73 = load i32, i32* %i, align 4
  %74 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %n_values = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %74, i32 0, i32 3
  %75 = load i32, i32* %n_values, align 4
  %cmp131 = icmp ult i32 %73, %75
  br i1 %cmp131, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load %struct._GString*, %struct._GString** %str, align 8
  %77 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_nick = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %77, i32 0, i32 2
  %78 = load i8*, i8** %value_nick, align 8
  %call132 = call %struct._GString* @g_string_append(%struct._GString* %76, i8* %78)
  %79 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %n_values133 = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %79, i32 0, i32 3
  %80 = load i32, i32* %n_values133, align 4
  %81 = load i32, i32* %i, align 4
  %sub = sub i32 %80, %81
  switch i32 %sub, label %sw.default [
    i32 1, label %sw.bb.134
    i32 2, label %sw.bb.136
  ]

sw.bb.134:                                        ; preds = %for.body
  %82 = load %struct._GString*, %struct._GString** %str, align 8
  %call135 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %82, i8 signext 46)
  br label %sw.epilog.139

sw.bb.136:                                        ; preds = %for.body
  %83 = load %struct._GString*, %struct._GString** %str, align 8
  %call137 = call %struct._GString* @g_string_append(%struct._GString* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog.139

sw.default:                                       ; preds = %for.body
  %84 = load %struct._GString*, %struct._GString** %str, align 8
  %call138 = call %struct._GString* @g_string_append(%struct._GString* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  br label %sw.epilog.139

sw.epilog.139:                                    ; preds = %sw.default, %sw.bb.136, %sw.bb.134
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.139
  %85 = load i32, i32* %i, align 4
  %inc = add nsw i32 %85, 1
  store i32 %inc, i32* %i, align 4
  %86 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %incdec.ptr = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %86, i32 1
  store %struct._GEnumValue* %incdec.ptr, %struct._GEnumValue** %enum_value, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %87 = load %struct._GString*, %struct._GString** %str, align 8
  %call140 = call i8* @g_string_free(%struct._GString* %87, i32 0)
  store i8* %call140, i8** %retval
  br label %return

sw.default.141:                                   ; preds = %if.else.104
  br label %sw.epilog.142

sw.epilog.142:                                    ; preds = %sw.default.141, %if.end.120, %sw.bb.109, %sw.bb.108, %sw.bb.107
  br label %if.end.143

if.end.143:                                       ; preds = %sw.epilog.142, %if.then.103
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.98
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %sw.epilog
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.44
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.19
  %88 = load i8*, i8** %values, align 8
  %tobool148 = icmp ne i8* %88, null
  br i1 %tobool148, label %if.end.152, label %if.then.149

if.then.149:                                      ; preds = %if.end.147
  %89 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type150 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %89, i32 0, i32 3
  %90 = load i64, i64* %value_type150, align 8
  %call151 = call i8* @g_type_name(i64 %90)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i32 0, i32 0), i8* %call151)
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %if.end.147
  %91 = load i8*, i8** %blurb, align 8
  %call153 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0)) #7
  %cmp154 = icmp eq i32 %call153, 0
  br i1 %cmp154, label %if.then.155, label %if.else.157

if.then.155:                                      ; preds = %if.end.152
  %92 = load i8*, i8** %values, align 8
  %call156 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* %92)
  store i8* %call156, i8** %retval
  br label %return

if.else.157:                                      ; preds = %if.end.152
  %93 = load i8*, i8** %blurb, align 8
  %94 = load i8*, i8** %values, align 8
  %call158 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* %93, i8* %94)
  store i8* %call158, i8** %retval
  br label %return

return:                                           ; preds = %if.else.157, %if.then.155, %for.end
  %95 = load i8*, i8** %retval
  ret i8* %95
}

declare void @g_free(i8*) #1

declare void @gimp_config_writer_comment_mode(%struct._GimpConfigWriter*, i32) #1

declare i32 @gimp_config_serialize_property(%struct._GimpConfig*, %struct._GParamSpec*, %struct._GimpConfigWriter*) #1

declare i8* @g_param_spec_get_blurb(%struct._GParamSpec*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_rgb_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare i32 @gimp_param_spec_rgb_has_alpha(%struct._GParamSpec*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_memsize_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_param_config_path_get_type() #2

declare i32 @gimp_param_spec_config_path_type(%struct._GParamSpec*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_param_unit_get_type() #2

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare i64 @g_type_fundamental(i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i8* @g_param_spec_get_name(%struct._GParamSpec*) #1

declare i8* @g_type_class_peek(i64) #1

declare %struct._GString* @g_string_new(i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #4 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @dump_with_linebreaks(i32 %fd, i8* %text) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %t = alloca i8*, align 8
  %i = alloca i32, align 4
  %space = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  %0 = load i8*, i8** %text.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.37, %entry
  %1 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %text.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 39
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %fd.addr, align 4
  %call5 = call i64 @write(i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i64 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i8*, i8** %text.addr, align 8
  store i8* %5, i8** %t, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %space, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i8*, i8** %t, align 8
  %7 = load i8, i8* %6, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp ne i32 %conv6, 10
  br i1 %cmp7, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %cmp9 = icmp sle i32 %8, 78
  br i1 %cmp9, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load i32, i32* %space, align 4
  %cmp11 = icmp eq i32 %9, 0
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %len, align 4
  %cmp13 = icmp slt i32 %10, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %for.cond
  %12 = phi i1 [ false, %lor.lhs.false ], [ false, %for.cond ], [ %cmp13, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load i8*, i8** %t, align 8
  %14 = load i8, i8* %13, align 1
  %idxprom = zext i8 %14 to i64
  %15 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2
  %conv15 = zext i16 %16 to i32
  %and = and i32 %conv15, 256
  %cmp16 = icmp ne i32 %and, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  store i32 %17, i32* %space, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %18 = load i8*, i8** %t, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %t, align 8
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %20 = load i32, i32* %i, align 4
  %cmp20 = icmp sgt i32 %20, 78
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.28

land.lhs.true.22:                                 ; preds = %for.end
  %21 = load i32, i32* %space, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %land.lhs.true.23, label %if.end.28

land.lhs.true.23:                                 ; preds = %land.lhs.true.22
  %22 = load i8*, i8** %t, align 8
  %23 = load i8, i8* %22, align 1
  %conv24 = sext i8 %23 to i32
  %cmp25 = icmp ne i32 %conv24, 10
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true.23
  %24 = load i32, i32* %space, align 4
  store i32 %24, i32* %i, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true.23, %land.lhs.true.22, %for.end
  %25 = load i32, i32* %fd.addr, align 4
  %26 = load i8*, i8** %text.addr, align 8
  %27 = load i32, i32* %i, align 4
  %conv29 = sext i32 %27 to i64
  %call30 = call i64 @write(i32 %25, i8* %26, i64 %conv29)
  %28 = load i32, i32* %fd.addr, align 4
  %call31 = call i64 @write(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i64 1)
  %29 = load i8*, i8** %t, align 8
  %30 = load i8, i8* %29, align 1
  %conv32 = sext i8 %30 to i32
  %cmp33 = icmp eq i32 %conv32, 10
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.28
  %31 = load i32, i32* %fd.addr, align 4
  %call36 = call i64 @write(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i64 4)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.28
  %32 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %32, 1
  store i32 %inc38, i32* %i, align 4
  %33 = load i32, i32* %i, align 4
  %34 = load i8*, i8** %text.addr, align 8
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr, i8** %text.addr, align 8
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %36, %35
  store i32 %sub, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
