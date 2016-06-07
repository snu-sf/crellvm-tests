; ModuleID = 'gauge_info.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"action.description\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\22Gauge plus fermion (improved)\22\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"gauge.description\00", align 1
@gauge_action_description = external global [128 x i8], align 16
@.str.4 = private unnamed_addr constant [13 x i8] c"gauge.nloops\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@gauge_action_nloops = external global i32, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"gauge.nreps\00", align 1
@gauge_action_nreps = external global i32, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"gauge.beta11\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@beta = external global double, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"gauge.tadpole.u0\00", align 1
@u0 = external global double, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"quark.description\00", align 1
@quark_action_description = internal global [72 x i8] c"\22O(a^2): couplings(pi)=0, Naik term, No O(a^2) errors, tadpole weights\22\00", align 16
@.str.11 = private unnamed_addr constant [14 x i8] c"quark.flavors\00", align 1
@nflavors = external global i32, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"quark.mass\00", align 1
@mass = external global double, align 8

; Function Attrs: nounwind uwtable
define void @write_appl_gauge_info(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @write_gauge_info_item(%struct._IO_FILE* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @write_gauge_info_item(%struct._IO_FILE* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gauge_action_description, i32 0, i32 0), i32 0, i32 0)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @write_gauge_info_item(%struct._IO_FILE* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* bitcast (i32* @gauge_action_nloops to i8*), i32 0, i32 0)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 @write_gauge_info_item(%struct._IO_FILE* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* bitcast (i32* @gauge_action_nreps to i8*), i32 0, i32 0)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @write_gauge_info_item(%struct._IO_FILE* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (double* @beta to i8*), i32 0, i32 0)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @write_gauge_info_item(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (double* @u0 to i8*), i32 0, i32 0)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 @write_gauge_info_item(%struct._IO_FILE* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @quark_action_description, i32 0, i32 0), i32 0, i32 0)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 @write_gauge_info_item(%struct._IO_FILE* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* bitcast (i32* @nflavors to i8*), i32 0, i32 0)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i32 @write_gauge_info_item(%struct._IO_FILE* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (double* @mass to i8*), i32 0, i32 0)
  ret void
}

declare i32 @write_gauge_info_item(%struct._IO_FILE*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
