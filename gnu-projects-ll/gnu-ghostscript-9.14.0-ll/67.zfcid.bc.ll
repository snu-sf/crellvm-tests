; ModuleID = './zfcid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"CIDSystemInfo\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"CIDCount\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"GlyphDirectory\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"GDBytes\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cid_font_system_info_param(%struct.gs_cid_system_info_s* %pcidsi, %struct.ref_s* %prfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pcidsi.addr = alloca %struct.gs_cid_system_info_s*, align 8
  %prfont.addr = alloca %struct.ref_s*, align 8
  %prcidsi = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cid_system_info_s* %pcidsi, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  store %struct.ref_s* %prfont, %struct.ref_s** %prfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %prcidsi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %prfont.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct.ref_s** %prcidsi) #3
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_cid_system_info_s*, %struct.gs_cid_system_info_s** %pcidsi.addr, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %prcidsi, align 8, !tbaa !1
  %call1 = call i32 @cid_system_info_param(%struct.gs_cid_system_info_s* %2, %struct.ref_s* %3) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast %struct.ref_s** %prcidsi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @cid_system_info_param(%struct.gs_cid_system_info_s*, %struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @cid_font_data_param(%struct.ref_s* %op, %struct.gs_font_cid_data_s* %pdata, %struct.ref_s* %pGlyphDirectory) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pdata.addr = alloca %struct.gs_font_cid_data_s*, align 8
  %pGlyphDirectory.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %pgdir = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %index = alloca i32, align 4
  %element = alloca [2 x %struct.ref_s], align 16
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_font_cid_data_s* %pdata, %struct.gs_font_cid_data_s** %pdata.addr, align 8, !tbaa !1
  store %struct.ref_s* %pGlyphDirectory, %struct.ref_s** %pGlyphDirectory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s** %pgdir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %3 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %5) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_font_cid_data_s*, %struct.gs_font_cid_data_s** %pdata.addr, align 8, !tbaa !1
  %CIDSystemInfo = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %6, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call2 = call i32 @cid_font_system_info_param(%struct.gs_cid_system_info_s* %CIDSystemInfo, %struct.ref_s* %7) #3
  store i32 %call2, i32* %code, align 4, !tbaa !6
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %9 = load %struct.gs_font_cid_data_s*, %struct.gs_font_cid_data_s** %pdata.addr, align 8, !tbaa !1
  %CIDCount = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %9, i32 0, i32 1
  %call5 = call i32 @dict_int_param(%struct.ref_s* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 2147483647, i32 -1, i32* %CIDCount) #3
  store i32 %call5, i32* %code, align 4, !tbaa !6
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  %11 = load %struct.gs_font_cid_data_s*, %struct.gs_font_cid_data_s** %pdata.addr, align 8, !tbaa !1
  %CIDCount10 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %11, i32 0, i32 1
  %12 = load i32, i32* %CIDCount10, align 4, !tbaa !8
  %add = add nsw i32 %12, 1
  %13 = load %struct.gs_font_cid_data_s*, %struct.gs_font_cid_data_s** %pdata.addr, align 8, !tbaa !1
  %MaxCID = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %13, i32 0, i32 2
  store i32 %add, i32* %MaxCID, align 4, !tbaa !12
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call11 = call i32 @dict_find_string(%struct.ref_s* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct.ref_s** %pgdir) #3
  %cmp12 = icmp sle i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end.9
  %15 = load %struct.ref_s*, %struct.ref_s** %pGlyphDirectory.addr, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  store i16 3584, i16* %type_attrs16, align 2, !tbaa !13
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %17 = load %struct.gs_font_cid_data_s*, %struct.gs_font_cid_data_s** %pdata.addr, align 8, !tbaa !1
  %GDBytes = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %17, i32 0, i32 3
  %call17 = call i32 @dict_int_param(%struct.ref_s* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 4, i32 0, i32* %GDBytes) #3
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.9
  %18 = load %struct.ref_s*, %struct.ref_s** %pgdir, align 8, !tbaa !1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  %19 = bitcast i16* %type_attrs20 to i8*
  %arrayidx21 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx21, align 1, !tbaa !5
  %conv22 = zext i8 %20 to i32
  %cmp23 = icmp eq i32 %conv22, 2
  br i1 %cmp23, label %if.then.31, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.end.18
  %21 = load %struct.ref_s*, %struct.ref_s** %pgdir, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  %22 = load i16, i16* %type_attrs27, align 2, !tbaa !13
  %conv28 = zext i16 %22 to i32
  %and = and i32 %conv28, 15360
  %cmp29 = icmp eq i32 %and, 1024
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %lor.lhs.false.25, %if.end.18
  %23 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast [2 x %struct.ref_s]* %element to i8*
  call void @llvm.lifetime.start(i64 32, i8* %24) #1
  %25 = load %struct.ref_s*, %struct.ref_s** %pGlyphDirectory.addr, align 8, !tbaa !1
  %26 = load %struct.ref_s*, %struct.ref_s** %pgdir, align 8, !tbaa !1
  %27 = bitcast %struct.ref_s* %25 to i8*
  %28 = bitcast %struct.ref_s* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false), !tbaa.struct !17
  %29 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %30 = load %struct.gs_font_cid_data_s*, %struct.gs_font_cid_data_s** %pdata.addr, align 8, !tbaa !1
  %GDBytes32 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %30, i32 0, i32 3
  %call33 = call i32 @dict_int_param(%struct.ref_s* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 4, i32 0, i32* %GDBytes32) #3
  store i32 %call33, i32* %code, align 4, !tbaa !6
  %31 = load %struct.ref_s*, %struct.ref_s** %pgdir, align 8, !tbaa !1
  %call34 = call i32 @dict_first(%struct.ref_s* %31) #3
  store i32 %call34, i32* %index, align 4, !tbaa !6
  br label %while.cond

while.cond:                                       ; preds = %if.end.53, %if.then.31
  %32 = load i32, i32* %index, align 4, !tbaa !6
  %cmp35 = icmp sge i32 %32, 0
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load %struct.ref_s*, %struct.ref_s** %pgdir, align 8, !tbaa !1
  %34 = load i32, i32* %index, align 4, !tbaa !6
  %35 = bitcast [2 x %struct.ref_s]* %element to %struct.ref_s*
  %call37 = call i32 @dict_next(%struct.ref_s* %33, i32 %34, %struct.ref_s* %35) #3
  store i32 %call37, i32* %index, align 4, !tbaa !6
  %36 = load i32, i32* %index, align 4, !tbaa !6
  %cmp38 = icmp sge i32 %36, 0
  br i1 %cmp38, label %if.then.40, label %if.end.53

if.then.40:                                       ; preds = %while.body
  %arrayidx41 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %element, i32 0, i64 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx41, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %37 = load i64, i64* %intval, align 8, !tbaa !19
  %38 = load %struct.gs_font_cid_data_s*, %struct.gs_font_cid_data_s** %pdata.addr, align 8, !tbaa !1
  %MaxCID42 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %38, i32 0, i32 2
  %39 = load i32, i32* %MaxCID42, align 4, !tbaa !12
  %conv43 = sext i32 %39 to i64
  %cmp44 = icmp sgt i64 %37, %conv43
  br i1 %cmp44, label %if.then.46, label %if.end.52

if.then.46:                                       ; preds = %if.then.40
  %arrayidx47 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %element, i32 0, i64 0
  %value48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx47, i32 0, i32 1
  %intval49 = bitcast %union.v* %value48 to i64*
  %40 = load i64, i64* %intval49, align 8, !tbaa !19
  %conv50 = trunc i64 %40 to i32
  %41 = load %struct.gs_font_cid_data_s*, %struct.gs_font_cid_data_s** %pdata.addr, align 8, !tbaa !1
  %MaxCID51 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %41, i32 0, i32 2
  store i32 %conv50, i32* %MaxCID51, align 4, !tbaa !12
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.46, %if.then.40
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load i32, i32* %code, align 4, !tbaa !6
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %43 = bitcast [2 x %struct.ref_s]* %element to i8*
  call void @llvm.lifetime.end(i64 32, i8* %43) #1
  %44 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false.25
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %while.end, %if.then.14, %if.then.8, %if.then
  %45 = bitcast %struct.ref_s** %pgdir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @dict_first(%struct.ref_s*) #2

declare i32 @dict_next(%struct.ref_s*, i32, %struct.ref_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !3, i64 0}
!8 = !{!9, !7, i64 40}
!9 = !{!"gs_font_cid_data_s", !10, i64 0, !7, i64 40, !7, i64 44, !7, i64 48}
!10 = !{!"gs_cid_system_info_s", !11, i64 0, !11, i64 16, !7, i64 32}
!11 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!12 = !{!9, !7, i64 44}
!13 = !{!14, !16, i64 0}
!14 = !{!"ref_s", !15, i64 0, !3, i64 8}
!15 = !{!"tas_s", !16, i64 0, !16, i64 2, !7, i64 4}
!16 = !{!"short", !3, i64 0}
!17 = !{i64 0, i64 2, !18, i64 2, i64 2, !18, i64 4, i64 4, !6, i64 8, i64 8, !19, i64 8, i64 2, !18, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !19}
!18 = !{!16, !16, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !3, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !3, i64 0}
