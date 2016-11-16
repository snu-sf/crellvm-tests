; ModuleID = './tools/gimptool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"--just-print\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"--dry-run\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"--recon\00", align 1
@dry_run = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"--prefix=\00", align 1
@prefix = internal global i8* null, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"--exec-prefix=\00", align 1
@exec_prefix = internal global i8* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"--msvc-syntax\00", align 1
@msvc_syntax = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Ignoring --msvc-syntax\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@dirs = internal global [15 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.75, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.77, i32 0, i32 0) }], align 16
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"--silent\00", align 1
@silent = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%d.%d.%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"--includedir\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"--cflags\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"--cflags-noui\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"--cflags-nogimpui\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"--libs\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"--libs-noui\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"--libs-nogimpui\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"--build\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"--build-noui\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"--build-nogimpui\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"--install\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"--install-noui\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"--install-nogimpui\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"--install-admin\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"--install-admin-noui\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"--install-admin-nogimpui\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"--install-bin\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"--install-admin-bin\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"--uninstall-bin\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"--uninstall-admin-bin\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"--install-script\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"--install-admin-script\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"--uninstall-script\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"--uninstall-admin-script\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"Unrecognized switch %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [2253 x i8] c"Usage: gimptool-2.0 [OPTION]...\0A\0AGeneral options:\0A  --help                  print this message\0A  --quiet, --silent       don't echo build commands\0A  --version               print the version of GIMP associated with this script\0A  -n, --just-print, --dry-run, --recon\0A                          don't actually run any commands; just print them\0ADeveloper options:\0A  --cflags                print the compiler flags that are necessary to\0A                          compile a plug-in\0A  --libs                  print the linker flags that are necessary to link a\0A                          plug-in\0A  --prefix=PREFIX         use PREFIX instead of the installation prefix that\0A                          GIMP was built when computing the output for --cflags\0A                          and --libs\0A  --exec-prefix=PREFIX    use PREFIX instead of the installation exec prefix\0A                          that GIMP was built when computing the output for\0A                          --cflags and --libs\0A  --msvc-syntax           print flags in MSVC syntax\0A\0AInstallation directory options:\0A  --prefix --exec-prefix --bindir --sbindir --libexecdir --datadir --sysconfdir\0A  --sharedstatedir --localstatedir --libdir --infodir --mandir --includedir\0A  --gimpplugindir --gimpdatadir\0A\0AThe --cflags and --libs options can be appended with -noui to get appropriate\0Asettings for plug-ins which do not use GTK+.\0A\0AUser options:\0A  --build plug-in.c               build a plug-in from a source file\0A  --install plug-in.c             same as --build, but installs the built\0A                                  plug-in as well\0A  --install-bin plug-in           install a compiled plug-in\0A  --install-script script.scm     install a script-fu script\0A\0A  --uninstall-bin plug-in         remove a plug-in again\0A  --uninstall-script plug-in      remove a script-fu script\0A\0AThe --install and --uninstall options have \22admin\22 counterparts (with\0Aprefix --install-admin instead of --install) that can be used instead to\0Ainstall/uninstall a plug-in or script in the machine directory instead of a\0Auser directory.\0A\0AFor plug-ins which do not use GTK+, the --build and --install options can be\0Aappended with -noui for appropriate settings. For plug-ins that use GTK+ but\0Anot libgimpui, append -nogimpui.\0A\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"CC\00", align 1
@env_cc = internal global i8* null, align 8
@.str.42 = private unnamed_addr constant [7 x i8] c"cl -MD\00", align 1
@.str.43 = private unnamed_addr constant [65 x i8] c"/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/clang\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"clang\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"CFLAGS\00", align 1
@env_cflags = internal global i8* null, align 8
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"LDFLAGS\00", align 1
@env_ldflags = internal global i8* null, align 8
@.str.49 = private unnamed_addr constant [5 x i8] c"LIBS\00", align 1
@env_libs = internal global i8* null, align 8
@.str.50 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"/usr/local\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"exec-prefix\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"bindir\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"/usr/local/bin\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"sbindir\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"/usr/local/sbin\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"libexecdir\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"/usr/local/libexec\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"datadir\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"/usr/local/share\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"datarootdir\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"sysconfdir\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"/usr/local/etc\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"sharedstatedir\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"/usr/local/com\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"localstatedir\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"/usr/local/var\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"libdir\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"infodir\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"/usr/local/share/info\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"mandir\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"/usr/local/share/man\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"gimpplugindir\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"/usr/local/lib/gimp/2.0\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"gimpdatadir\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"/usr/local/share/gimp/2.0\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"${prefix}\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"${exec_prefix}\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"--variable=prefix gimp-2.0\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"pkg-config\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"Cannot run '%s'\0A\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"No output from '%s'\0A\00", align 1
@.str.87 = private unnamed_addr constant [31 x i8] c"--variable=includedir gimp-2.0\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"--cflags gimpui-2.0\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"--cflags gimp-2.0\00", align 1
@.str.90 = private unnamed_addr constant [27 x i8] c"--cflags gimp-2.0 gtk+-2.0\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"--libs gimpui-2.0\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"--libs gimp-2.0\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"--libs gimp-2.0 gtk+-2.0\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c".cc\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c".cpp\00", align 1
@.str.97 = private unnamed_addr constant [43 x i8] c"plug-in source %s is not a C or C++ file?\0A\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"-Fe\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c" -link\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c" -subsystem:windows\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"-o \00", align 1
@.str.102 = private unnamed_addr constant [30 x i8] c"%s %s %s %s%s %s%s %s%s %s %s\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"plug-ins\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"rm -f\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"scripts\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"share\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %argi = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @usage(i32 0) #7
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %argi, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.end
  %1 = load i32, i32* %argi, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %argi, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %inc, %2
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %argi, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #8
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i32, i32* %argi, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %7, i64 %idxprom3
  %8 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.17, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %9 = load i32, i32* %argi, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %10, i64 %idxprom8
  %11 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)) #8
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.17, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.7
  %12 = load i32, i32* %argi, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %13, i64 %idxprom13
  %14 = load i8*, i8** %arrayidx14, align 8
  %call15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #8
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.7, %lor.lhs.false, %while.body
  store i32 1, i32* @dry_run, align 4
  br label %if.end.49

if.else:                                          ; preds = %lor.lhs.false.12
  %15 = load i32, i32* %argi, align 4
  %idxprom18 = sext i32 %15 to i64
  %16 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %16, i64 %idxprom18
  %17 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #8
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else
  call void @usage(i32 0) #7
  unreachable

if.else.23:                                       ; preds = %if.else
  %18 = load i32, i32* %argi, align 4
  %idxprom24 = sext i32 %18 to i64
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %19, i64 %idxprom24
  %20 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i32 @g_str_has_prefix(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %if.else.23
  %21 = load i32, i32* %argi, align 4
  %idxprom28 = sext i32 %21 to i64
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %22, i64 %idxprom28
  %23 = load i8*, i8** %arrayidx29, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 9
  store i8* %add.ptr, i8** @prefix, align 8
  br label %if.end.47

if.else.30:                                       ; preds = %if.else.23
  %24 = load i32, i32* %argi, align 4
  %idxprom31 = sext i32 %24 to i64
  %25 = load i8**, i8*** %argv.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %25, i64 %idxprom31
  %26 = load i8*, i8** %arrayidx32, align 8
  %call33 = call i32 @g_str_has_prefix(i8* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.else.39

if.then.35:                                       ; preds = %if.else.30
  %27 = load i32, i32* %argi, align 4
  %idxprom36 = sext i32 %27 to i64
  %28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %28, i64 %idxprom36
  %29 = load i8*, i8** %arrayidx37, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %29, i64 14
  store i8* %add.ptr38, i8** @exec_prefix, align 8
  br label %if.end.46

if.else.39:                                       ; preds = %if.else.30
  %30 = load i32, i32* %argi, align 4
  %idxprom40 = sext i32 %30 to i64
  %31 = load i8**, i8*** %argv.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %31, i64 %idxprom40
  %32 = load i8*, i8** %arrayidx41, align 8
  %call42 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #8
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.else.39
  store i32 1, i32* @msvc_syntax, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.else.39
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.35
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.27
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i32, i32* @msvc_syntax, align 4
  %tobool50 = icmp ne i32 %33, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %while.end
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* @msvc_syntax, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %while.end
  call void @find_out_env_flags()
  store i32 0, i32* %argi, align 4
  br label %while.cond.53

while.cond.53:                                    ; preds = %if.end.393, %if.end.52
  %34 = load i32, i32* %argi, align 4
  %inc54 = add nsw i32 %34, 1
  store i32 %inc54, i32* %argi, align 4
  %35 = load i32, i32* %argc.addr, align 4
  %cmp55 = icmp slt i32 %inc54, %35
  br i1 %cmp55, label %while.body.56, label %while.end.394

while.body.56:                                    ; preds = %while.cond.53
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body.56
  %36 = load i32, i32* %i, align 4
  %conv = sext i32 %36 to i64
  %cmp57 = icmp ult i64 %conv, 15
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %argi, align 4
  %idxprom59 = sext i32 %37 to i64
  %38 = load i8**, i8*** %argv.addr, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %38, i64 %idxprom59
  %39 = load i8*, i8** %arrayidx60, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %40 to i64
  %arrayidx62 = getelementptr inbounds [15 x %struct.anon], [15 x %struct.anon]* @dirs, i32 0, i64 %idxprom61
  %option = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx62, i32 0, i32 0
  %41 = load i8*, i8** %option, align 8
  %call63 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* %41, i8* null)
  %call64 = call i32 @strcmp(i8* %39, i8* %call63) #8
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %for.body
  br label %for.end

if.end.68:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %42 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %42, 1
  store i32 %inc69, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.67, %for.cond
  %43 = load i32, i32* %i, align 4
  %conv70 = sext i32 %43 to i64
  %cmp71 = icmp ult i64 %conv70, 15
  br i1 %cmp71, label %if.then.73, label %if.else.77

if.then.73:                                       ; preds = %for.end
  %44 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %44 to i64
  %arrayidx75 = getelementptr inbounds [15 x %struct.anon], [15 x %struct.anon]* @dirs, i32 0, i64 %idxprom74
  %value = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx75, i32 0, i32 1
  %45 = load i8*, i8** %value, align 8
  %call76 = call i8* @expand_and_munge(i8* %45)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %call76)
  br label %if.end.393

if.else.77:                                       ; preds = %for.end
  %46 = load i32, i32* %argi, align 4
  %idxprom78 = sext i32 %46 to i64
  %47 = load i8**, i8*** %argv.addr, align 8
  %arrayidx79 = getelementptr inbounds i8*, i8** %47, i64 %idxprom78
  %48 = load i8*, i8** %arrayidx79, align 8
  %call80 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #8
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then.89, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %if.else.77
  %49 = load i32, i32* %argi, align 4
  %idxprom84 = sext i32 %49 to i64
  %50 = load i8**, i8*** %argv.addr, align 8
  %arrayidx85 = getelementptr inbounds i8*, i8** %50, i64 %idxprom84
  %51 = load i8*, i8** %arrayidx85, align 8
  %call86 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)) #8
  %cmp87 = icmp eq i32 %call86, 0
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %lor.lhs.false.83, %if.else.77
  store i32 1, i32* @silent, align 4
  br label %if.end.392

if.else.90:                                       ; preds = %lor.lhs.false.83
  %52 = load i32, i32* %argi, align 4
  %idxprom91 = sext i32 %52 to i64
  %53 = load i8**, i8*** %argv.addr, align 8
  %arrayidx92 = getelementptr inbounds i8*, i8** %53, i64 %idxprom91
  %54 = load i8*, i8** %arrayidx92, align 8
  %call93 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)) #8
  %cmp94 = icmp eq i32 %call93, 0
  br i1 %cmp94, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %if.else.90
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 2, i32 8, i32 18)
  call void @exit(i32 0) #9
  unreachable

if.else.97:                                       ; preds = %if.else.90
  %55 = load i32, i32* %argi, align 4
  %idxprom98 = sext i32 %55 to i64
  %56 = load i8**, i8*** %argv.addr, align 8
  %arrayidx99 = getelementptr inbounds i8*, i8** %56, i64 %idxprom98
  %57 = load i8*, i8** %arrayidx99, align 8
  %call100 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #8
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then.121, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %if.else.97
  %58 = load i32, i32* %argi, align 4
  %idxprom104 = sext i32 %58 to i64
  %59 = load i8**, i8*** %argv.addr, align 8
  %arrayidx105 = getelementptr inbounds i8*, i8** %59, i64 %idxprom104
  %60 = load i8*, i8** %arrayidx105, align 8
  %call106 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)) #8
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.then.121, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %lor.lhs.false.103
  %61 = load i32, i32* %argi, align 4
  %idxprom110 = sext i32 %61 to i64
  %62 = load i8**, i8*** %argv.addr, align 8
  %arrayidx111 = getelementptr inbounds i8*, i8** %62, i64 %idxprom110
  %63 = load i8*, i8** %arrayidx111, align 8
  %call112 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)) #8
  %cmp113 = icmp eq i32 %call112, 0
  br i1 %cmp113, label %if.then.121, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %lor.lhs.false.109
  %64 = load i32, i32* %argi, align 4
  %idxprom116 = sext i32 %64 to i64
  %65 = load i8**, i8*** %argv.addr, align 8
  %arrayidx117 = getelementptr inbounds i8*, i8** %65, i64 %idxprom116
  %66 = load i8*, i8** %arrayidx117, align 8
  %call118 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #8
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %lor.lhs.false.115, %lor.lhs.false.109, %lor.lhs.false.103, %if.else.97
  br label %if.end.390

if.else.122:                                      ; preds = %lor.lhs.false.115
  %67 = load i32, i32* %argi, align 4
  %idxprom123 = sext i32 %67 to i64
  %68 = load i8**, i8*** %argv.addr, align 8
  %arrayidx124 = getelementptr inbounds i8*, i8** %68, i64 %idxprom123
  %69 = load i8*, i8** %arrayidx124, align 8
  %call125 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)) #8
  %cmp126 = icmp eq i32 %call125, 0
  br i1 %cmp126, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %if.else.122
  call void @do_includedir()
  br label %if.end.389

if.else.129:                                      ; preds = %if.else.122
  %70 = load i32, i32* %argi, align 4
  %idxprom130 = sext i32 %70 to i64
  %71 = load i8**, i8*** %argv.addr, align 8
  %arrayidx131 = getelementptr inbounds i8*, i8** %71, i64 %idxprom130
  %72 = load i8*, i8** %arrayidx131, align 8
  %call132 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #8
  %cmp133 = icmp eq i32 %call132, 0
  br i1 %cmp133, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %if.else.129
  call void @do_cflags()
  br label %if.end.388

if.else.136:                                      ; preds = %if.else.129
  %73 = load i32, i32* %argi, align 4
  %idxprom137 = sext i32 %73 to i64
  %74 = load i8**, i8*** %argv.addr, align 8
  %arrayidx138 = getelementptr inbounds i8*, i8** %74, i64 %idxprom137
  %75 = load i8*, i8** %arrayidx138, align 8
  %call139 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0)) #8
  %cmp140 = icmp eq i32 %call139, 0
  br i1 %cmp140, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %if.else.136
  call void @do_cflags_noui()
  br label %if.end.387

if.else.143:                                      ; preds = %if.else.136
  %76 = load i32, i32* %argi, align 4
  %idxprom144 = sext i32 %76 to i64
  %77 = load i8**, i8*** %argv.addr, align 8
  %arrayidx145 = getelementptr inbounds i8*, i8** %77, i64 %idxprom144
  %78 = load i8*, i8** %arrayidx145, align 8
  %call146 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #8
  %cmp147 = icmp eq i32 %call146, 0
  br i1 %cmp147, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %if.else.143
  call void @do_cflags_nogimpui()
  br label %if.end.386

if.else.150:                                      ; preds = %if.else.143
  %79 = load i32, i32* %argi, align 4
  %idxprom151 = sext i32 %79 to i64
  %80 = load i8**, i8*** %argv.addr, align 8
  %arrayidx152 = getelementptr inbounds i8*, i8** %80, i64 %idxprom151
  %81 = load i8*, i8** %arrayidx152, align 8
  %call153 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #8
  %cmp154 = icmp eq i32 %call153, 0
  br i1 %cmp154, label %if.then.156, label %if.else.157

if.then.156:                                      ; preds = %if.else.150
  call void @do_libs()
  br label %if.end.385

if.else.157:                                      ; preds = %if.else.150
  %82 = load i32, i32* %argi, align 4
  %idxprom158 = sext i32 %82 to i64
  %83 = load i8**, i8*** %argv.addr, align 8
  %arrayidx159 = getelementptr inbounds i8*, i8** %83, i64 %idxprom158
  %84 = load i8*, i8** %arrayidx159, align 8
  %call160 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0)) #8
  %cmp161 = icmp eq i32 %call160, 0
  br i1 %cmp161, label %if.then.163, label %if.else.164

if.then.163:                                      ; preds = %if.else.157
  call void @do_libs_noui()
  br label %if.end.384

if.else.164:                                      ; preds = %if.else.157
  %85 = load i32, i32* %argi, align 4
  %idxprom165 = sext i32 %85 to i64
  %86 = load i8**, i8*** %argv.addr, align 8
  %arrayidx166 = getelementptr inbounds i8*, i8** %86, i64 %idxprom165
  %87 = load i8*, i8** %arrayidx166, align 8
  %call167 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0)) #8
  %cmp168 = icmp eq i32 %call167, 0
  br i1 %cmp168, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %if.else.164
  call void @do_libs_nogimpui()
  br label %if.end.383

if.else.171:                                      ; preds = %if.else.164
  %88 = load i32, i32* %argi, align 4
  %idxprom172 = sext i32 %88 to i64
  %89 = load i8**, i8*** %argv.addr, align 8
  %arrayidx173 = getelementptr inbounds i8*, i8** %89, i64 %idxprom172
  %90 = load i8*, i8** %arrayidx173, align 8
  %call174 = call i32 @g_str_has_prefix(i8* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.then.176, label %if.else.177

if.then.176:                                      ; preds = %if.else.171
  br label %if.end.382

if.else.177:                                      ; preds = %if.else.171
  %91 = load i32, i32* %argi, align 4
  %idxprom178 = sext i32 %91 to i64
  %92 = load i8**, i8*** %argv.addr, align 8
  %arrayidx179 = getelementptr inbounds i8*, i8** %92, i64 %idxprom178
  %93 = load i8*, i8** %arrayidx179, align 8
  %call180 = call i32 @g_str_has_prefix(i8* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.then.182, label %if.else.183

if.then.182:                                      ; preds = %if.else.177
  br label %if.end.381

if.else.183:                                      ; preds = %if.else.177
  %94 = load i32, i32* %argi, align 4
  %idxprom184 = sext i32 %94 to i64
  %95 = load i8**, i8*** %argv.addr, align 8
  %arrayidx185 = getelementptr inbounds i8*, i8** %95, i64 %idxprom184
  %96 = load i8*, i8** %arrayidx185, align 8
  %call186 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #8
  %cmp187 = icmp eq i32 %call186, 0
  br i1 %cmp187, label %if.then.189, label %if.else.190

if.then.189:                                      ; preds = %if.else.183
  br label %if.end.380

if.else.190:                                      ; preds = %if.else.183
  %97 = load i32, i32* %argi, align 4
  %idxprom191 = sext i32 %97 to i64
  %98 = load i8**, i8*** %argv.addr, align 8
  %arrayidx192 = getelementptr inbounds i8*, i8** %98, i64 %idxprom191
  %99 = load i8*, i8** %arrayidx192, align 8
  %call193 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)) #8
  %cmp194 = icmp eq i32 %call193, 0
  br i1 %cmp194, label %if.then.196, label %if.else.200

if.then.196:                                      ; preds = %if.else.190
  %100 = load i32, i32* %argi, align 4
  %inc197 = add nsw i32 %100, 1
  store i32 %inc197, i32* %argi, align 4
  %idxprom198 = sext i32 %inc197 to i64
  %101 = load i8**, i8*** %argv.addr, align 8
  %arrayidx199 = getelementptr inbounds i8*, i8** %101, i64 %idxprom198
  %102 = load i8*, i8** %arrayidx199, align 8
  call void @do_build(i8* %102)
  br label %if.end.379

if.else.200:                                      ; preds = %if.else.190
  %103 = load i32, i32* %argi, align 4
  %idxprom201 = sext i32 %103 to i64
  %104 = load i8**, i8*** %argv.addr, align 8
  %arrayidx202 = getelementptr inbounds i8*, i8** %104, i64 %idxprom201
  %105 = load i8*, i8** %arrayidx202, align 8
  %call203 = call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0)) #8
  %cmp204 = icmp eq i32 %call203, 0
  br i1 %cmp204, label %if.then.206, label %if.else.210

if.then.206:                                      ; preds = %if.else.200
  %106 = load i32, i32* %argi, align 4
  %inc207 = add nsw i32 %106, 1
  store i32 %inc207, i32* %argi, align 4
  %idxprom208 = sext i32 %inc207 to i64
  %107 = load i8**, i8*** %argv.addr, align 8
  %arrayidx209 = getelementptr inbounds i8*, i8** %107, i64 %idxprom208
  %108 = load i8*, i8** %arrayidx209, align 8
  call void @do_build_noui(i8* %108)
  br label %if.end.378

if.else.210:                                      ; preds = %if.else.200
  %109 = load i32, i32* %argi, align 4
  %idxprom211 = sext i32 %109 to i64
  %110 = load i8**, i8*** %argv.addr, align 8
  %arrayidx212 = getelementptr inbounds i8*, i8** %110, i64 %idxprom211
  %111 = load i8*, i8** %arrayidx212, align 8
  %call213 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0)) #8
  %cmp214 = icmp eq i32 %call213, 0
  br i1 %cmp214, label %if.then.216, label %if.else.220

if.then.216:                                      ; preds = %if.else.210
  %112 = load i32, i32* %argi, align 4
  %inc217 = add nsw i32 %112, 1
  store i32 %inc217, i32* %argi, align 4
  %idxprom218 = sext i32 %inc217 to i64
  %113 = load i8**, i8*** %argv.addr, align 8
  %arrayidx219 = getelementptr inbounds i8*, i8** %113, i64 %idxprom218
  %114 = load i8*, i8** %arrayidx219, align 8
  call void @do_build_nogimpui(i8* %114)
  br label %if.end.377

if.else.220:                                      ; preds = %if.else.210
  %115 = load i32, i32* %argi, align 4
  %idxprom221 = sext i32 %115 to i64
  %116 = load i8**, i8*** %argv.addr, align 8
  %arrayidx222 = getelementptr inbounds i8*, i8** %116, i64 %idxprom221
  %117 = load i8*, i8** %arrayidx222, align 8
  %call223 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0)) #8
  %cmp224 = icmp eq i32 %call223, 0
  br i1 %cmp224, label %if.then.226, label %if.else.230

if.then.226:                                      ; preds = %if.else.220
  %118 = load i32, i32* %argi, align 4
  %inc227 = add nsw i32 %118, 1
  store i32 %inc227, i32* %argi, align 4
  %idxprom228 = sext i32 %inc227 to i64
  %119 = load i8**, i8*** %argv.addr, align 8
  %arrayidx229 = getelementptr inbounds i8*, i8** %119, i64 %idxprom228
  %120 = load i8*, i8** %arrayidx229, align 8
  call void @do_install(i8* %120)
  br label %if.end.376

if.else.230:                                      ; preds = %if.else.220
  %121 = load i32, i32* %argi, align 4
  %idxprom231 = sext i32 %121 to i64
  %122 = load i8**, i8*** %argv.addr, align 8
  %arrayidx232 = getelementptr inbounds i8*, i8** %122, i64 %idxprom231
  %123 = load i8*, i8** %arrayidx232, align 8
  %call233 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0)) #8
  %cmp234 = icmp eq i32 %call233, 0
  br i1 %cmp234, label %if.then.236, label %if.else.240

if.then.236:                                      ; preds = %if.else.230
  %124 = load i32, i32* %argi, align 4
  %inc237 = add nsw i32 %124, 1
  store i32 %inc237, i32* %argi, align 4
  %idxprom238 = sext i32 %inc237 to i64
  %125 = load i8**, i8*** %argv.addr, align 8
  %arrayidx239 = getelementptr inbounds i8*, i8** %125, i64 %idxprom238
  %126 = load i8*, i8** %arrayidx239, align 8
  call void @do_install_noui(i8* %126)
  br label %if.end.375

if.else.240:                                      ; preds = %if.else.230
  %127 = load i32, i32* %argi, align 4
  %idxprom241 = sext i32 %127 to i64
  %128 = load i8**, i8*** %argv.addr, align 8
  %arrayidx242 = getelementptr inbounds i8*, i8** %128, i64 %idxprom241
  %129 = load i8*, i8** %arrayidx242, align 8
  %call243 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0)) #8
  %cmp244 = icmp eq i32 %call243, 0
  br i1 %cmp244, label %if.then.246, label %if.else.250

if.then.246:                                      ; preds = %if.else.240
  %130 = load i32, i32* %argi, align 4
  %inc247 = add nsw i32 %130, 1
  store i32 %inc247, i32* %argi, align 4
  %idxprom248 = sext i32 %inc247 to i64
  %131 = load i8**, i8*** %argv.addr, align 8
  %arrayidx249 = getelementptr inbounds i8*, i8** %131, i64 %idxprom248
  %132 = load i8*, i8** %arrayidx249, align 8
  call void @do_install_nogimpui(i8* %132)
  br label %if.end.374

if.else.250:                                      ; preds = %if.else.240
  %133 = load i32, i32* %argi, align 4
  %idxprom251 = sext i32 %133 to i64
  %134 = load i8**, i8*** %argv.addr, align 8
  %arrayidx252 = getelementptr inbounds i8*, i8** %134, i64 %idxprom251
  %135 = load i8*, i8** %arrayidx252, align 8
  %call253 = call i32 @strcmp(i8* %135, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0)) #8
  %cmp254 = icmp eq i32 %call253, 0
  br i1 %cmp254, label %if.then.256, label %if.else.260

if.then.256:                                      ; preds = %if.else.250
  %136 = load i32, i32* %argi, align 4
  %inc257 = add nsw i32 %136, 1
  store i32 %inc257, i32* %argi, align 4
  %idxprom258 = sext i32 %inc257 to i64
  %137 = load i8**, i8*** %argv.addr, align 8
  %arrayidx259 = getelementptr inbounds i8*, i8** %137, i64 %idxprom258
  %138 = load i8*, i8** %arrayidx259, align 8
  call void @do_install_admin(i8* %138)
  br label %if.end.373

if.else.260:                                      ; preds = %if.else.250
  %139 = load i32, i32* %argi, align 4
  %idxprom261 = sext i32 %139 to i64
  %140 = load i8**, i8*** %argv.addr, align 8
  %arrayidx262 = getelementptr inbounds i8*, i8** %140, i64 %idxprom261
  %141 = load i8*, i8** %arrayidx262, align 8
  %call263 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0)) #8
  %cmp264 = icmp eq i32 %call263, 0
  br i1 %cmp264, label %if.then.266, label %if.else.270

if.then.266:                                      ; preds = %if.else.260
  %142 = load i32, i32* %argi, align 4
  %inc267 = add nsw i32 %142, 1
  store i32 %inc267, i32* %argi, align 4
  %idxprom268 = sext i32 %inc267 to i64
  %143 = load i8**, i8*** %argv.addr, align 8
  %arrayidx269 = getelementptr inbounds i8*, i8** %143, i64 %idxprom268
  %144 = load i8*, i8** %arrayidx269, align 8
  call void @do_install_admin_noui(i8* %144)
  br label %if.end.372

if.else.270:                                      ; preds = %if.else.260
  %145 = load i32, i32* %argi, align 4
  %idxprom271 = sext i32 %145 to i64
  %146 = load i8**, i8*** %argv.addr, align 8
  %arrayidx272 = getelementptr inbounds i8*, i8** %146, i64 %idxprom271
  %147 = load i8*, i8** %arrayidx272, align 8
  %call273 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0)) #8
  %cmp274 = icmp eq i32 %call273, 0
  br i1 %cmp274, label %if.then.276, label %if.else.280

if.then.276:                                      ; preds = %if.else.270
  %148 = load i32, i32* %argi, align 4
  %inc277 = add nsw i32 %148, 1
  store i32 %inc277, i32* %argi, align 4
  %idxprom278 = sext i32 %inc277 to i64
  %149 = load i8**, i8*** %argv.addr, align 8
  %arrayidx279 = getelementptr inbounds i8*, i8** %149, i64 %idxprom278
  %150 = load i8*, i8** %arrayidx279, align 8
  call void @do_install_admin_nogimpui(i8* %150)
  br label %if.end.371

if.else.280:                                      ; preds = %if.else.270
  %151 = load i32, i32* %argi, align 4
  %idxprom281 = sext i32 %151 to i64
  %152 = load i8**, i8*** %argv.addr, align 8
  %arrayidx282 = getelementptr inbounds i8*, i8** %152, i64 %idxprom281
  %153 = load i8*, i8** %arrayidx282, align 8
  %call283 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0)) #8
  %cmp284 = icmp eq i32 %call283, 0
  br i1 %cmp284, label %if.then.286, label %if.else.290

if.then.286:                                      ; preds = %if.else.280
  %154 = load i32, i32* %argi, align 4
  %inc287 = add nsw i32 %154, 1
  store i32 %inc287, i32* %argi, align 4
  %idxprom288 = sext i32 %inc287 to i64
  %155 = load i8**, i8*** %argv.addr, align 8
  %arrayidx289 = getelementptr inbounds i8*, i8** %155, i64 %idxprom288
  %156 = load i8*, i8** %arrayidx289, align 8
  call void @do_install_bin(i8* %156)
  br label %if.end.370

if.else.290:                                      ; preds = %if.else.280
  %157 = load i32, i32* %argi, align 4
  %idxprom291 = sext i32 %157 to i64
  %158 = load i8**, i8*** %argv.addr, align 8
  %arrayidx292 = getelementptr inbounds i8*, i8** %158, i64 %idxprom291
  %159 = load i8*, i8** %arrayidx292, align 8
  %call293 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0)) #8
  %cmp294 = icmp eq i32 %call293, 0
  br i1 %cmp294, label %if.then.296, label %if.else.300

if.then.296:                                      ; preds = %if.else.290
  %160 = load i32, i32* %argi, align 4
  %inc297 = add nsw i32 %160, 1
  store i32 %inc297, i32* %argi, align 4
  %idxprom298 = sext i32 %inc297 to i64
  %161 = load i8**, i8*** %argv.addr, align 8
  %arrayidx299 = getelementptr inbounds i8*, i8** %161, i64 %idxprom298
  %162 = load i8*, i8** %arrayidx299, align 8
  call void @do_install_admin_bin(i8* %162)
  br label %if.end.369

if.else.300:                                      ; preds = %if.else.290
  %163 = load i32, i32* %argi, align 4
  %idxprom301 = sext i32 %163 to i64
  %164 = load i8**, i8*** %argv.addr, align 8
  %arrayidx302 = getelementptr inbounds i8*, i8** %164, i64 %idxprom301
  %165 = load i8*, i8** %arrayidx302, align 8
  %call303 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0)) #8
  %cmp304 = icmp eq i32 %call303, 0
  br i1 %cmp304, label %if.then.306, label %if.else.310

if.then.306:                                      ; preds = %if.else.300
  %166 = load i32, i32* %argi, align 4
  %inc307 = add nsw i32 %166, 1
  store i32 %inc307, i32* %argi, align 4
  %idxprom308 = sext i32 %inc307 to i64
  %167 = load i8**, i8*** %argv.addr, align 8
  %arrayidx309 = getelementptr inbounds i8*, i8** %167, i64 %idxprom308
  %168 = load i8*, i8** %arrayidx309, align 8
  call void @do_uninstall_bin(i8* %168)
  br label %if.end.368

if.else.310:                                      ; preds = %if.else.300
  %169 = load i32, i32* %argi, align 4
  %idxprom311 = sext i32 %169 to i64
  %170 = load i8**, i8*** %argv.addr, align 8
  %arrayidx312 = getelementptr inbounds i8*, i8** %170, i64 %idxprom311
  %171 = load i8*, i8** %arrayidx312, align 8
  %call313 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0)) #8
  %cmp314 = icmp eq i32 %call313, 0
  br i1 %cmp314, label %if.then.316, label %if.else.320

if.then.316:                                      ; preds = %if.else.310
  %172 = load i32, i32* %argi, align 4
  %inc317 = add nsw i32 %172, 1
  store i32 %inc317, i32* %argi, align 4
  %idxprom318 = sext i32 %inc317 to i64
  %173 = load i8**, i8*** %argv.addr, align 8
  %arrayidx319 = getelementptr inbounds i8*, i8** %173, i64 %idxprom318
  %174 = load i8*, i8** %arrayidx319, align 8
  call void @do_uninstall_admin_bin(i8* %174)
  br label %if.end.367

if.else.320:                                      ; preds = %if.else.310
  %175 = load i32, i32* %argi, align 4
  %idxprom321 = sext i32 %175 to i64
  %176 = load i8**, i8*** %argv.addr, align 8
  %arrayidx322 = getelementptr inbounds i8*, i8** %176, i64 %idxprom321
  %177 = load i8*, i8** %arrayidx322, align 8
  %call323 = call i32 @strcmp(i8* %177, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0)) #8
  %cmp324 = icmp eq i32 %call323, 0
  br i1 %cmp324, label %if.then.326, label %if.else.330

if.then.326:                                      ; preds = %if.else.320
  %178 = load i32, i32* %argi, align 4
  %inc327 = add nsw i32 %178, 1
  store i32 %inc327, i32* %argi, align 4
  %idxprom328 = sext i32 %inc327 to i64
  %179 = load i8**, i8*** %argv.addr, align 8
  %arrayidx329 = getelementptr inbounds i8*, i8** %179, i64 %idxprom328
  %180 = load i8*, i8** %arrayidx329, align 8
  call void @do_install_script(i8* %180)
  br label %if.end.366

if.else.330:                                      ; preds = %if.else.320
  %181 = load i32, i32* %argi, align 4
  %idxprom331 = sext i32 %181 to i64
  %182 = load i8**, i8*** %argv.addr, align 8
  %arrayidx332 = getelementptr inbounds i8*, i8** %182, i64 %idxprom331
  %183 = load i8*, i8** %arrayidx332, align 8
  %call333 = call i32 @strcmp(i8* %183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0)) #8
  %cmp334 = icmp eq i32 %call333, 0
  br i1 %cmp334, label %if.then.336, label %if.else.340

if.then.336:                                      ; preds = %if.else.330
  %184 = load i32, i32* %argi, align 4
  %inc337 = add nsw i32 %184, 1
  store i32 %inc337, i32* %argi, align 4
  %idxprom338 = sext i32 %inc337 to i64
  %185 = load i8**, i8*** %argv.addr, align 8
  %arrayidx339 = getelementptr inbounds i8*, i8** %185, i64 %idxprom338
  %186 = load i8*, i8** %arrayidx339, align 8
  call void @do_install_admin_script(i8* %186)
  br label %if.end.365

if.else.340:                                      ; preds = %if.else.330
  %187 = load i32, i32* %argi, align 4
  %idxprom341 = sext i32 %187 to i64
  %188 = load i8**, i8*** %argv.addr, align 8
  %arrayidx342 = getelementptr inbounds i8*, i8** %188, i64 %idxprom341
  %189 = load i8*, i8** %arrayidx342, align 8
  %call343 = call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0)) #8
  %cmp344 = icmp eq i32 %call343, 0
  br i1 %cmp344, label %if.then.346, label %if.else.350

if.then.346:                                      ; preds = %if.else.340
  %190 = load i32, i32* %argi, align 4
  %inc347 = add nsw i32 %190, 1
  store i32 %inc347, i32* %argi, align 4
  %idxprom348 = sext i32 %inc347 to i64
  %191 = load i8**, i8*** %argv.addr, align 8
  %arrayidx349 = getelementptr inbounds i8*, i8** %191, i64 %idxprom348
  %192 = load i8*, i8** %arrayidx349, align 8
  call void @do_uninstall_script(i8* %192)
  br label %if.end.364

if.else.350:                                      ; preds = %if.else.340
  %193 = load i32, i32* %argi, align 4
  %idxprom351 = sext i32 %193 to i64
  %194 = load i8**, i8*** %argv.addr, align 8
  %arrayidx352 = getelementptr inbounds i8*, i8** %194, i64 %idxprom351
  %195 = load i8*, i8** %arrayidx352, align 8
  %call353 = call i32 @strcmp(i8* %195, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0)) #8
  %cmp354 = icmp eq i32 %call353, 0
  br i1 %cmp354, label %if.then.356, label %if.else.360

if.then.356:                                      ; preds = %if.else.350
  %196 = load i32, i32* %argi, align 4
  %inc357 = add nsw i32 %196, 1
  store i32 %inc357, i32* %argi, align 4
  %idxprom358 = sext i32 %inc357 to i64
  %197 = load i8**, i8*** %argv.addr, align 8
  %arrayidx359 = getelementptr inbounds i8*, i8** %197, i64 %idxprom358
  %198 = load i8*, i8** %arrayidx359, align 8
  call void @do_uninstall_admin_script(i8* %198)
  br label %if.end.363

if.else.360:                                      ; preds = %if.else.350
  %199 = load i32, i32* %argi, align 4
  %idxprom361 = sext i32 %199 to i64
  %200 = load i8**, i8*** %argv.addr, align 8
  %arrayidx362 = getelementptr inbounds i8*, i8** %200, i64 %idxprom361
  %201 = load i8*, i8** %arrayidx362, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0), i8* %201)
  call void @usage(i32 1) #7
  unreachable

if.end.363:                                       ; preds = %if.then.356
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %if.then.346
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %if.then.336
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365, %if.then.326
  br label %if.end.367

if.end.367:                                       ; preds = %if.end.366, %if.then.316
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %if.then.306
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.368, %if.then.296
  br label %if.end.370

if.end.370:                                       ; preds = %if.end.369, %if.then.286
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %if.then.276
  br label %if.end.372

if.end.372:                                       ; preds = %if.end.371, %if.then.266
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372, %if.then.256
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373, %if.then.246
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374, %if.then.236
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375, %if.then.226
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.376, %if.then.216
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.377, %if.then.206
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.then.196
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.then.189
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %if.then.182
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %if.then.176
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %if.then.170
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.383, %if.then.163
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %if.then.156
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.385, %if.then.149
  br label %if.end.387

if.end.387:                                       ; preds = %if.end.386, %if.then.142
  br label %if.end.388

if.end.388:                                       ; preds = %if.end.387, %if.then.135
  br label %if.end.389

if.end.389:                                       ; preds = %if.end.388, %if.then.128
  br label %if.end.390

if.end.390:                                       ; preds = %if.end.389, %if.then.121
  br label %if.end.391

if.end.391:                                       ; preds = %if.end.390
  br label %if.end.392

if.end.392:                                       ; preds = %if.end.391, %if.then.89
  br label %if.end.393

if.end.393:                                       ; preds = %if.end.392, %if.then.73
  br label %while.cond.53

while.end.394:                                    ; preds = %while.cond.53
  call void @exit(i32 0) #9
  unreachable

return:                                           ; No predecessors!
  %202 = load i32, i32* %retval
  ret i32 %202
}

; Function Attrs: noreturn nounwind uwtable
define internal void @usage(i32 %exit_status) #1 {
entry:
  %exit_status.addr = alloca i32, align 4
  store i32 %exit_status, i32* %exit_status.addr, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([2253 x i8], [2253 x i8]* @.str.40, i32 0, i32 0))
  %0 = load i32, i32* %exit_status.addr, align 4
  call void @exit(i32 %0) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @g_str_has_prefix(i8*, i8*) #3

declare void @g_printerr(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @find_out_env_flags() #0 {
entry:
  %p = alloca i8*, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0)) #10
  store i8* %call, i8** %p, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %0 = load i8*, i8** %p, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** %p, align 8
  store i8* %2, i8** @env_cc, align 8
  br label %if.end.5

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* @msvc_syntax, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8** @env_cc, align 8
  br label %if.end

if.else.4:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.43, i32 0, i32 0), i8** @env_cc, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %4 = load i8*, i8** @env_cc, align 8
  %call6 = call i32 @g_ascii_strncasecmp(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i64 2)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.14

land.lhs.true.9:                                  ; preds = %if.end.5
  %5 = load i8*, i8** @env_cc, align 8
  %call10 = call i32 @g_ascii_strncasecmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i64 5)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.9
  store i32 1, i32* @msvc_syntax, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %land.lhs.true.9, %if.end.5
  %call15 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0)) #10
  store i8* %call15, i8** %p, align 8
  %cmp16 = icmp ne i8* %call15, null
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.14
  %6 = load i8*, i8** %p, align 8
  store i8* %6, i8** @env_cflags, align 8
  br label %if.end.20

if.else.19:                                       ; preds = %if.end.14
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0), i8** @env_cflags, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  %call21 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0)) #10
  store i8* %call21, i8** %p, align 8
  %cmp22 = icmp ne i8* %call21, null
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end.20
  %7 = load i8*, i8** %p, align 8
  store i8* %7, i8** @env_ldflags, align 8
  br label %if.end.26

if.else.25:                                       ; preds = %if.end.20
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0), i8** @env_ldflags, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  %call27 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0)) #10
  store i8* %call27, i8** %p, align 8
  %cmp28 = icmp ne i8* %call27, null
  br i1 %cmp28, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.end.26
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv31 = sext i8 %9 to i32
  %cmp32 = icmp ne i32 %conv31, 0
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  %10 = load i8*, i8** %p, align 8
  store i8* %10, i8** @env_libs, align 8
  br label %if.end.36

if.else.35:                                       ; preds = %land.lhs.true.30, %if.end.26
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0), i8** @env_libs, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  ret void
}

declare noalias i8* @g_strconcat(i8*, ...) #3

declare void @g_print(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i8* @expand_and_munge(i8* %value) #0 {
entry:
  %value.addr = alloca i8*, align 8
  %retval1 = alloca i8*, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %call = call i32 @starts_with_dir(i8* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 9
  %call2 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i8* %add.ptr, i8* null)
  store i8* %call2, i8** %retval1, align 8
  br label %if.end.10

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %value.addr, align 8
  %call3 = call i32 @starts_with_dir(i8* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.else
  %3 = load i8*, i8** %value.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %3, i64 14
  %call7 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i8* %add.ptr6, i8* null)
  store i8* %call7, i8** %retval1, align 8
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %4 = load i8*, i8** %value.addr, align 8
  %call9 = call noalias i8* @g_strdup(i8* %4)
  store i8* %call9, i8** %retval1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval1, align 8
  %call11 = call i32 @starts_with_dir(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0))
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.10
  %call14 = call i8* @get_exec_prefix(i8 signext 47)
  %6 = load i8*, i8** %retval1, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %6, i64 10
  %call16 = call noalias i8* (i8*, ...) @g_strconcat(i8* %call14, i8* %add.ptr15, i8* null)
  store i8* %call16, i8** %retval1, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.10
  %7 = load i8*, i8** %retval1, align 8
  %call18 = call i32 @starts_with_dir(i8* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0))
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.17
  %call21 = call i8* @get_runtime_prefix(i8 signext 47)
  %8 = load i8*, i8** %retval1, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %8, i64 10
  %call23 = call noalias i8* (i8*, ...) @g_strconcat(i8* %call21, i8* %add.ptr22, i8* null)
  store i8* %call23, i8** %retval1, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.end.17
  %9 = load i8*, i8** %retval1, align 8
  ret i8* %9
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define internal void @do_includedir() #0 {
entry:
  %call = call i8* @get_includedir()
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_cflags() #0 {
entry:
  %call = call i8* @get_cflags()
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_cflags_noui() #0 {
entry:
  %call = call i8* @get_cflags_noui()
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_cflags_nogimpui() #0 {
entry:
  %call = call i8* @get_cflags_nogimpui()
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_libs() #0 {
entry:
  %call = call i8* @get_libs()
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_libs_noui() #0 {
entry:
  %call = call i8* @get_libs_noui()
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_libs_nogimpui() #0 {
entry:
  %call = call i8* @get_libs_nogimpui()
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_build(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_cflags()
  %call1 = call i8* @get_libs()
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_build_2(i8* %call, i8* %call1, i8* null, i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_build_noui(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_cflags_noui()
  %call1 = call i8* @get_libs_noui()
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_build_2(i8* %call, i8* %call1, i8* null, i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_build_nogimpui(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_build(i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_install(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_cflags()
  %call1 = call i8* @get_libs()
  %call2 = call i8* @get_user_plugin_dir()
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_build_2(i8* %call, i8* %call1, i8* %call2, i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_install_noui(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_cflags_noui()
  %call1 = call i8* @get_libs_noui()
  %call2 = call i8* @get_user_plugin_dir()
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_build_2(i8* %call, i8* %call1, i8* %call2, i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_install_nogimpui(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_install(i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_install_admin(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_cflags()
  %call1 = call i8* @get_libs()
  %call2 = call i8* @get_sys_plugin_dir(i32 1)
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_build_2(i8* %call, i8* %call1, i8* %call2, i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_install_admin_noui(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_cflags_noui()
  %call1 = call i8* @get_libs_noui()
  %call2 = call i8* @get_sys_plugin_dir(i32 1)
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_build_2(i8* %call, i8* %call1, i8* %call2, i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_install_admin_nogimpui(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_cflags()
  %call1 = call i8* @get_libs()
  %call2 = call i8* @get_sys_plugin_dir(i32 1)
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_build_2(i8* %call, i8* %call1, i8* %call2, i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_install_bin(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_user_plugin_dir()
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_install_bin_2(i8* %call, i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_install_admin_bin(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_sys_plugin_dir(i32 0)
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_install_bin_2(i8* %call, i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_uninstall_bin(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_user_plugin_dir()
  %0 = load i8*, i8** %what.addr, align 8
  %call1 = call i8* @maybe_append_exe(i8* %0)
  call void @do_uninstall(i8* %call, i8* %call1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_uninstall_admin_bin(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_sys_plugin_dir(i32 0)
  %0 = load i8*, i8** %what.addr, align 8
  %call1 = call i8* @maybe_append_exe(i8* %0)
  call void @do_uninstall(i8* %call, i8* %call1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_install_script(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_user_script_dir()
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_install_bin_2(i8* %call, i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_install_admin_script(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_sys_script_dir()
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_install_bin_2(i8* %call, i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_uninstall_script(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_user_script_dir()
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_uninstall(i8* %call, i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_uninstall_admin_script(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %call = call i8* @get_sys_script_dir()
  %0 = load i8*, i8** %what.addr, align 8
  call void @do_uninstall(i8* %call, i8* %0)
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #5

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @starts_with_dir(i8* %string, i8* %test) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %test.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  store i8* %test, i8** %test.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load i8*, i8** %test.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_strconcat(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0), i8* null)
  %call1 = call i32 @g_str_has_prefix(i8* %0, i8* %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i8*, i8** %string.addr, align 8
  %3 = load i8*, i8** %test.addr, align 8
  %call2 = call i32 @strcmp(i8* %2, i8* %3) #8
  %cmp = icmp eq i32 %call2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

declare noalias i8* @g_strdup(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @get_exec_prefix(i8 signext %slash) #0 {
entry:
  %slash.addr = alloca i8, align 1
  store i8 %slash, i8* %slash.addr, align 1
  ret i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal i8* @get_runtime_prefix(i8 signext %slash) #0 {
entry:
  %slash.addr = alloca i8, align 1
  store i8 %slash, i8* %slash.addr, align 1
  %call = call i8* @pkg_config(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.81, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @pkg_config(i8* %args) #0 {
entry:
  %args.addr = alloca i8*, align 8
  store i8* %args, i8** %args.addr, align 8
  %0 = load i8*, i8** %args.addr, align 8
  %call = call i8* @one_line_output(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), i8* %0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @one_line_output(i8* %program, i8* %args) #0 {
entry:
  %program.addr = alloca i8*, align 8
  %args.addr = alloca i8*, align 8
  %command = alloca i8*, align 8
  %pipe = alloca %struct._IO_FILE*, align 8
  %line = alloca [4096 x i8], align 16
  store i8* %program, i8** %program.addr, align 8
  store i8* %args, i8** %args.addr, align 8
  %0 = load i8*, i8** %program.addr, align 8
  %1 = load i8*, i8** %args.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_strconcat(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i8* %1, i8* null)
  store i8* %call, i8** %command, align 8
  %2 = load i8*, i8** %command, align 8
  %call1 = call %struct._IO_FILE* @popen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pipe, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pipe, align 8
  %cmp = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %command, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.85, i32 0, i32 0), i8* %4)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %pipe, align 8
  %call2 = call i8* @fgets(i8* %arraydecay, i32 4096, %struct._IO_FILE* %5)
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %arraydecay6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %call7 = call i64 @strlen(i8* %arraydecay6) #8
  %cmp8 = icmp ugt i64 %call7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.5
  %arraydecay9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %call10 = call i64 @strlen(i8* %arraydecay9) #8
  %sub = sub i64 %call10, 1
  %arrayidx11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i64 %sub
  %6 = load i8, i8* %arrayidx11, align 1
  %conv = sext i8 %6 to i32
  %cmp12 = icmp eq i32 %conv, 10
  br i1 %cmp12, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %land.lhs.true
  %arraydecay15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %call16 = call i64 @strlen(i8* %arraydecay15) #8
  %sub17 = sub i64 %call16, 1
  %arrayidx18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i64 %sub17
  store i8 0, i8* %arrayidx18, align 1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %land.lhs.true, %if.end.5
  %arraydecay20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %call21 = call i64 @strlen(i8* %arraydecay20) #8
  %cmp22 = icmp ugt i64 %call21, 0
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.37

land.lhs.true.24:                                 ; preds = %if.end.19
  %arraydecay25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %call26 = call i64 @strlen(i8* %arraydecay25) #8
  %sub27 = sub i64 %call26, 1
  %arrayidx28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i64 %sub27
  %7 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %7 to i32
  %cmp30 = icmp eq i32 %conv29, 13
  br i1 %cmp30, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %land.lhs.true.24
  %arraydecay33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %call34 = call i64 @strlen(i8* %arraydecay33) #8
  %sub35 = sub i64 %call34, 1
  %arrayidx36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i64 %sub35
  store i8 0, i8* %arrayidx36, align 1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %land.lhs.true.24, %if.end.19
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pipe, align 8
  %call38 = call i32 @pclose(%struct._IO_FILE* %8)
  %arraydecay39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %call40 = call i64 @strlen(i8* %arraydecay39) #8
  %cmp41 = icmp eq i64 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.37
  %9 = load i8*, i8** %command, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.86, i32 0, i32 0), i8* %9)
  call void @exit(i32 1) #9
  unreachable

if.end.44:                                        ; preds = %if.end.37
  %arraydecay45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %line, i32 0, i32 0
  %call46 = call noalias i8* @g_strdup(i8* %arraydecay45)
  ret i8* %call46
}

declare %struct._IO_FILE* @popen(i8*, i8*) #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @pclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal i8* @get_includedir() #0 {
entry:
  %call = call i8* @pkg_config(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.87, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @get_cflags() #0 {
entry:
  %call = call i8* @pkg_config(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.88, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @get_cflags_noui() #0 {
entry:
  %call = call i8* @pkg_config(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @get_cflags_nogimpui() #0 {
entry:
  %call = call i8* @pkg_config(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.90, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @get_libs() #0 {
entry:
  %call = call i8* @pkg_config(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @get_libs_noui() #0 {
entry:
  %call = call i8* @pkg_config(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.92, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @get_libs_nogimpui() #0 {
entry:
  %call = call i8* @pkg_config(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.93, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @do_build_2(i8* %cflags, i8* %libs, i8* %install_dir, i8* %what) #0 {
entry:
  %cflags.addr = alloca i8*, align 8
  %libs.addr = alloca i8*, align 8
  %install_dir.addr = alloca i8*, align 8
  %what.addr = alloca i8*, align 8
  %cmd = alloca i8*, align 8
  %dest_dir = alloca i8*, align 8
  %output_flag = alloca i8*, align 8
  %dest_exe = alloca i8*, align 8
  %here_comes_linker_flags = alloca i8*, align 8
  %windows_subsystem_flag = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i8* %cflags, i8** %cflags.addr, align 8
  store i8* %libs, i8** %libs.addr, align 8
  store i8* %install_dir, i8** %install_dir.addr, align 8
  store i8* %what, i8** %what.addr, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0), i8** %here_comes_linker_flags, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0), i8** %windows_subsystem_flag, align 8
  %0 = load i8*, i8** %install_dir.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %install_dir.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_strconcat(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0), i8* null)
  store i8* %call, i8** %dest_dir, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0), i8** %dest_dir, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i8*, i8** %what.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %2)
  store i8* %call1, i8** %dest_exe, align 8
  %3 = load i8*, i8** %dest_exe, align 8
  %call2 = call i8* @strrchr(i8* %3, i32 46) #8
  store i8* %call2, i8** %p, align 8
  %4 = load i8*, i8** %p, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i8*, i8** %p, align 8
  %call4 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0)) #8
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.end.13, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %6 = load i8*, i8** %p, align 8
  %call7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i32 0, i32 0)) #8
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.end.13, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %7 = load i8*, i8** %p, align 8
  %call10 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0)) #8
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.end
  %8 = load i8*, i8** %what.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.97, i32 0, i32 0), i8* %8)
  call void @exit(i32 1) #9
  unreachable

if.end.13:                                        ; preds = %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false
  %9 = load i8*, i8** %p, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %dest_exe, align 8
  %call14 = call i8* @strrchr(i8* %10, i32 47) #8
  store i8* %call14, i8** %q, align 8
  %11 = load i8*, i8** %q, align 8
  %cmp15 = icmp eq i8* %11, null
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.13
  %12 = load i8*, i8** %dest_exe, align 8
  store i8* %12, i8** %q, align 8
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.13
  %13 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  %14 = load i8*, i8** %dest_dir, align 8
  %15 = load i8*, i8** %q, align 8
  %call19 = call noalias i8* (i8*, ...) @g_strconcat(i8* %14, i8* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0), i8* null)
  store i8* %call19, i8** %dest_exe, align 8
  %16 = load i32, i32* @msvc_syntax, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.end.18
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0), i8** %output_flag, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i8** %here_comes_linker_flags, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i32 0, i32 0), i8** %windows_subsystem_flag, align 8
  br label %if.end.22

if.else.21:                                       ; preds = %if.end.18
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i8** %output_flag, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  %17 = load i8*, i8** @env_cc, align 8
  %18 = load i8*, i8** @env_cflags, align 8
  %19 = load i8*, i8** %cflags.addr, align 8
  %20 = load i8*, i8** %output_flag, align 8
  %21 = load i8*, i8** %dest_exe, align 8
  %call23 = call i8* @g_shell_quote(i8* %21)
  %22 = load i8*, i8** %what.addr, align 8
  %23 = load i8*, i8** %here_comes_linker_flags, align 8
  %24 = load i8*, i8** @env_ldflags, align 8
  %25 = load i8*, i8** %windows_subsystem_flag, align 8
  %26 = load i8*, i8** %libs.addr, align 8
  %27 = load i8*, i8** @env_libs, align 8
  %call24 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.102, i32 0, i32 0), i8* %17, i8* %18, i8* %19, i8* %20, i8* %call23, i8* %22, i8* %23, i8* %24, i8* %25, i8* %26, i8* %27)
  store i8* %call24, i8** %cmd, align 8
  %28 = load i8*, i8** %cmd, align 8
  call void @maybe_run(i8* %28)
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare i8* @g_shell_quote(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @maybe_run(i8* %cmd) #0 {
entry:
  %cmd.addr = alloca i8*, align 8
  store i8* %cmd, i8** %cmd.addr, align 8
  %0 = load i32, i32* @silent, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %cmd.addr, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @dry_run, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** %cmd.addr, align 8
  %call = call i32 @system(i8* %3)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

declare i32 @system(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @get_user_plugin_dir() #0 {
entry:
  %call = call i8* @gimp_directory() #11
  %call1 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i8* null)
  ret i8* %call1
}

declare noalias i8* @g_build_filename(i8*, ...) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #6

; Function Attrs: nounwind uwtable
define internal i8* @get_sys_plugin_dir(i32 %forward_slashes) #0 {
entry:
  %forward_slashes.addr = alloca i32, align 4
  store i32 %forward_slashes, i32* %forward_slashes.addr, align 4
  %0 = load i32, i32* %forward_slashes.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0)
  %call = call noalias i8* (i8*, i8*, ...) @g_build_path(i8* %cond, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i8* null)
  ret i8* %call
}

declare noalias i8* @g_build_path(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @do_install_bin_2(i8* %dir, i8* %what) #0 {
entry:
  %dir.addr = alloca i8*, align 8
  %what.addr = alloca i8*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i8* %what, i8** %what.addr, align 8
  %0 = load i8*, i8** %dir.addr, align 8
  %call = call i32 @g_mkdir_with_parents(i8* %0, i32 493)
  %1 = load i8*, i8** %what.addr, align 8
  %call1 = call i8* @g_shell_quote(i8* %1)
  %2 = load i8*, i8** %dir.addr, align 8
  %call2 = call i8* @g_shell_quote(i8* %2)
  %call3 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i8* %call1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i8* %call2, i8* null)
  call void @maybe_run(i8* %call3)
  ret void
}

declare i32 @g_mkdir_with_parents(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @do_uninstall(i8* %dir, i8* %what) #0 {
entry:
  %dir.addr = alloca i8*, align 8
  %what.addr = alloca i8*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i8* %what, i8** %what.addr, align 8
  %0 = load i8*, i8** %dir.addr, align 8
  %1 = load i8*, i8** %what.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_strconcat(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0), i8* %1, i8* null)
  %call1 = call i8* @g_shell_quote(i8* %call)
  %call2 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i8* %call1, i8* null)
  call void @maybe_run(i8* %call2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @maybe_append_exe(i8* %what) #0 {
entry:
  %what.addr = alloca i8*, align 8
  store i8* %what, i8** %what.addr, align 8
  %0 = load i8*, i8** %what.addr, align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define internal i8* @get_user_script_dir() #0 {
entry:
  %call = call i8* @gimp_directory() #11
  %call1 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0), i8* null)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define internal i8* @get_sys_script_dir() #0 {
entry:
  %call = call i8* @get_runtime_prefix(i8 signext 47)
  %call1 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0), i8* null)
  ret i8* %call1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
