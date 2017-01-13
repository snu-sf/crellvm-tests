; ModuleID = './app/version.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"%s version %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"GNU Image Manipulation Program\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"2.8.18\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"git-describe: %s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"GIMP_2_8_16-114-gcd2bbf7\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"GEGL\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"GLib\00", align 1
@glib_major_version = external constant i32, align 4
@glib_minor_version = external constant i32, align 4
@glib_micro_version = external constant i32, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"GdkPixbuf\00", align 1
@gdk_pixbuf_major_version = external constant i32, align 4
@gdk_pixbuf_minor_version = external constant i32, align 4
@gdk_pixbuf_micro_version = external constant i32, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"Pango\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Fontconfig\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"using %s version %s (compiled against version %s)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Cairo\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"1.14.2\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_version_show(i32 %be_verbose) #0 {
entry:
  %be_verbose.addr = alloca i32, align 4
  store i32 %be_verbose, i32* %be_verbose.addr, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)) #4
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #4
  call void (i8*, ...) @g_print(i8* %call, i8* %call1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %0 = load i32, i32* %be_verbose.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  call void @gimp_show_library_versions()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_print(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_show_library_versions() #0 {
entry:
  %gegl_major_version = alloca i32, align 4
  %gegl_minor_version = alloca i32, align 4
  %gegl_micro_version = alloca i32, align 4
  call void @gegl_get_version(i32* %gegl_major_version, i32* %gegl_minor_version, i32* %gegl_micro_version)
  %0 = load i32, i32* %gegl_major_version, align 4
  %1 = load i32, i32* %gegl_minor_version, align 4
  %2 = load i32, i32* %gegl_micro_version, align 4
  call void @gimp_show_library_version(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 2, i32 0, i32 %0, i32 %1, i32 %2)
  %3 = load i32, i32* @glib_major_version, align 4
  %4 = load i32, i32* @glib_minor_version, align 4
  %5 = load i32, i32* @glib_micro_version, align 4
  call void @gimp_show_library_version(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 2, i32 42, i32 2, i32 %3, i32 %4, i32 %5)
  %6 = load i32, i32* @gdk_pixbuf_major_version, align 4
  %7 = load i32, i32* @gdk_pixbuf_minor_version, align 4
  %8 = load i32, i32* @gdk_pixbuf_micro_version, align 4
  call void @gimp_show_library_version(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 2, i32 31, i32 6, i32 %6, i32 %7, i32 %8)
  %call = call i32 @pango_version() #5
  %div = sdiv i32 %call, 100
  %div1 = sdiv i32 %div, 100
  %call2 = call i32 @pango_version() #5
  %div3 = sdiv i32 %call2, 100
  %rem = srem i32 %div3, 100
  %call4 = call i32 @pango_version() #5
  %rem5 = srem i32 %call4, 100
  call void @gimp_show_library_version(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 1, i32 36, i32 8, i32 %div1, i32 %rem, i32 %rem5)
  %call6 = call i32 @FcGetVersion()
  %div7 = sdiv i32 %call6, 100
  %div8 = sdiv i32 %div7, 100
  %call9 = call i32 @FcGetVersion()
  %div10 = sdiv i32 %call9, 100
  %rem11 = srem i32 %div10, 100
  %call12 = call i32 @FcGetVersion()
  %rem13 = srem i32 %call12, 100
  call void @gimp_show_library_version(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 2, i32 10, i32 95, i32 %div8, i32 %rem11, i32 %rem13)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i32 0, i32 0)) #4
  %call15 = call i8* @cairo_version_string()
  call void (i8*, ...) @g_print(i8* %call14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* %call15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0))
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

declare void @gegl_get_version(i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_show_library_version(i8* %package, i32 %build_time_major, i32 %build_time_minor, i32 %build_time_micro, i32 %run_time_major, i32 %run_time_minor, i32 %run_time_micro) #0 {
entry:
  %package.addr = alloca i8*, align 8
  %build_time_major.addr = alloca i32, align 4
  %build_time_minor.addr = alloca i32, align 4
  %build_time_micro.addr = alloca i32, align 4
  %run_time_major.addr = alloca i32, align 4
  %run_time_minor.addr = alloca i32, align 4
  %run_time_micro.addr = alloca i32, align 4
  %build_time_version = alloca i8*, align 8
  %run_time_version = alloca i8*, align 8
  store i8* %package, i8** %package.addr, align 8
  store i32 %build_time_major, i32* %build_time_major.addr, align 4
  store i32 %build_time_minor, i32* %build_time_minor.addr, align 4
  store i32 %build_time_micro, i32* %build_time_micro.addr, align 4
  store i32 %run_time_major, i32* %run_time_major.addr, align 4
  store i32 %run_time_minor, i32* %run_time_minor.addr, align 4
  store i32 %run_time_micro, i32* %run_time_micro.addr, align 4
  %0 = load i32, i32* %build_time_major.addr, align 4
  %1 = load i32, i32* %build_time_minor.addr, align 4
  %2 = load i32, i32* %build_time_micro.addr, align 4
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %0, i32 %1, i32 %2)
  store i8* %call, i8** %build_time_version, align 8
  %3 = load i32, i32* %run_time_major.addr, align 4
  %4 = load i32, i32* %run_time_minor.addr, align 4
  %5 = load i32, i32* %run_time_micro.addr, align 4
  %call1 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %3, i32 %4, i32 %5)
  store i8* %call1, i8** %run_time_version, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i32 0, i32 0)) #4
  %6 = load i8*, i8** %package.addr, align 8
  %7 = load i8*, i8** %run_time_version, align 8
  %8 = load i8*, i8** %build_time_version, align 8
  call void (i8*, ...) @g_print(i8* %call2, i8* %6, i8* %7, i8* %8)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %9 = load i8*, i8** %run_time_version, align 8
  call void @g_free(i8* %9)
  %10 = load i8*, i8** %build_time_version, align 8
  call void @g_free(i8* %10)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @pango_version() #3

declare i32 @FcGetVersion() #1

declare i8* @cairo_version_string() #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
