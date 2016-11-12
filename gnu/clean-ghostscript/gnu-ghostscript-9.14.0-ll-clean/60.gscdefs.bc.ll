; ModuleID = './gscdefs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gs_buildtime = constant i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"Copyright (C) 2014 Artifex Software, Inc.  All rights reserved.\00", align 1
@gs_copyright = constant i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"GNU Ghostscript\00", align 1
@gs_productfamily = constant i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), align 8
@gs_product = constant i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), align 8
@gs_version = constant i64 91400, align 8
@gs_revision = constant i64 914, align 8
@gs_revisiondate = constant i64 20140702, align 8
@gs_serialnumber = constant i64 42, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"/usr/local/share/ghostscript/9.14/doc\00", align 1
@gs_doc_directory = constant i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [384 x i8] c"/usr/local/share/ghostscript/9.14/Resource/Init:/usr/local/share/ghostscript/9.14/lib:/usr/local/share/ghostscript/9.14/Resource/Font:/usr/local/share/ghostscript/fonts:/usr/local/share/fonts/default/ghostscript:/usr/local/share/fonts/default/Type1:/usr/local/share/fonts/default/TrueType:/usr/lib/DPS/outline/base:/usr/openwin/lib/X11/fonts/Type1:/usr/openwin/lib/X11/fonts/TrueType\00", align 1
@gs_lib_default_path = constant i8* getelementptr inbounds ([384 x i8], [384 x i8]* @.str.3, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"gs_init.ps\00", align 1
@gs_init_file = constant i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"x11alpha bbox\00", align 1
@gs_dev_defaults = constant i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), align 8

; Function Attrs: nounwind uwtable
define i8* @gs_program_name() #0 {
entry:
  %0 = load i8*, i8** @gs_product, align 8, !tbaa !1
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define i64 @gs_version_number() #0 {
entry:
  ret i64 91400
}

; Function Attrs: nounwind uwtable
define i64 @gs_revision_number() #0 {
entry:
  ret i64 914
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
