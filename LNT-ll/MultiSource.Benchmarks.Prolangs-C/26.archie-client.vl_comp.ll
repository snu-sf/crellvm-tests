; ModuleID = './MultiSource.Benchmarks.Prolangs-C/26.archie-client.vl_comp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }

; Function Attrs: nounwind uwtable
define i32 @vl_comp(%struct.vlink* %vl1, %struct.vlink* %vl2) #0 {
entry:
  %retval = alloca i32, align 4
  %vl1.addr = alloca %struct.vlink*, align 8
  %vl2.addr = alloca %struct.vlink*, align 8
  %retval1 = alloca i32, align 4
  store %struct.vlink* %vl1, %struct.vlink** %vl1.addr, align 8
  store %struct.vlink* %vl2, %struct.vlink** %vl2.addr, align 8
  %0 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %name = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i32 0, i32 1
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %name2 = getelementptr inbounds %struct.vlink, %struct.vlink* %2, i32 0, i32 1
  %3 = load i8*, i8** %name2, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %name4 = getelementptr inbounds %struct.vlink, %struct.vlink* %4, i32 0, i32 1
  %5 = load i8*, i8** %name4, align 8
  %tobool5 = icmp ne i8* %5, null
  br i1 %tobool5, label %if.end.10, label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %name7 = getelementptr inbounds %struct.vlink, %struct.vlink* %6, i32 0, i32 1
  %7 = load i8*, i8** %name7, align 8
  %tobool8 = icmp ne i8* %7, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true.6
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.6, %if.end
  %8 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %name11 = getelementptr inbounds %struct.vlink, %struct.vlink* %8, i32 0, i32 1
  %9 = load i8*, i8** %name11, align 8
  %tobool12 = icmp ne i8* %9, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.25

land.lhs.true.13:                                 ; preds = %if.end.10
  %10 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %name14 = getelementptr inbounds %struct.vlink, %struct.vlink* %10, i32 0, i32 1
  %11 = load i8*, i8** %name14, align 8
  %tobool15 = icmp ne i8* %11, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.25

land.lhs.true.16:                                 ; preds = %land.lhs.true.13
  %12 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %name17 = getelementptr inbounds %struct.vlink, %struct.vlink* %12, i32 0, i32 1
  %13 = load i8*, i8** %name17, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %tobool18 = icmp ne i32 %conv, 0
  br i1 %tobool18, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.16
  %15 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %name19 = getelementptr inbounds %struct.vlink, %struct.vlink* %15, i32 0, i32 1
  %16 = load i8*, i8** %name19, align 8
  %17 = load i8, i8* %16, align 1
  %conv20 = sext i8 %17 to i32
  %tobool21 = icmp ne i32 %conv20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %lor.lhs.false, %land.lhs.true.16
  %18 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %name23 = getelementptr inbounds %struct.vlink, %struct.vlink* %18, i32 0, i32 1
  %19 = load i8*, i8** %name23, align 8
  %20 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %name24 = getelementptr inbounds %struct.vlink, %struct.vlink* %20, i32 0, i32 1
  %21 = load i8*, i8** %name24, align 8
  %call = call i32 @strcmp(i8* %19, i8* %21)
  store i32 %call, i32* %retval
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false, %land.lhs.true.13, %if.end.10
  %22 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %hosttype = getelementptr inbounds %struct.vlink, %struct.vlink* %22, i32 0, i32 7
  %23 = load i8*, i8** %hosttype, align 8
  %24 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %hosttype26 = getelementptr inbounds %struct.vlink, %struct.vlink* %24, i32 0, i32 7
  %25 = load i8*, i8** %hosttype26, align 8
  %call27 = call i32 @strcmp(i8* %23, i8* %25)
  store i32 %call27, i32* %retval1, align 4
  %26 = load i32, i32* %retval1, align 4
  %tobool28 = icmp ne i32 %26, 0
  br i1 %tobool28, label %if.end.32, label %if.then.29

if.then.29:                                       ; preds = %if.end.25
  %27 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %host = getelementptr inbounds %struct.vlink, %struct.vlink* %27, i32 0, i32 8
  %28 = load i8*, i8** %host, align 8
  %29 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %host30 = getelementptr inbounds %struct.vlink, %struct.vlink* %29, i32 0, i32 8
  %30 = load i8*, i8** %host30, align 8
  %call31 = call i32 @strcmp(i8* %28, i8* %30)
  store i32 %call31, i32* %retval1, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.25
  %31 = load i32, i32* %retval1, align 4
  %tobool33 = icmp ne i32 %31, 0
  br i1 %tobool33, label %if.end.37, label %if.then.34

if.then.34:                                       ; preds = %if.end.32
  %32 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %nametype = getelementptr inbounds %struct.vlink, %struct.vlink* %32, i32 0, i32 9
  %33 = load i8*, i8** %nametype, align 8
  %34 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %nametype35 = getelementptr inbounds %struct.vlink, %struct.vlink* %34, i32 0, i32 9
  %35 = load i8*, i8** %nametype35, align 8
  %call36 = call i32 @strcmp(i8* %33, i8* %35)
  store i32 %call36, i32* %retval1, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.32
  %36 = load i32, i32* %retval1, align 4
  %tobool38 = icmp ne i32 %36, 0
  br i1 %tobool38, label %if.end.42, label %if.then.39

if.then.39:                                       ; preds = %if.end.37
  %37 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %filename = getelementptr inbounds %struct.vlink, %struct.vlink* %37, i32 0, i32 10
  %38 = load i8*, i8** %filename, align 8
  %39 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %filename40 = getelementptr inbounds %struct.vlink, %struct.vlink* %39, i32 0, i32 10
  %40 = load i8*, i8** %filename40, align 8
  %call41 = call i32 @strcmp(i8* %38, i8* %40)
  store i32 %call41, i32* %retval1, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.37
  %41 = load i32, i32* %retval1, align 4
  store i32 %41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.22, %if.then.9, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @vl_equal(%struct.vlink* %vl1, %struct.vlink* %vl2) #0 {
entry:
  %vl1.addr = alloca %struct.vlink*, align 8
  %vl2.addr = alloca %struct.vlink*, align 8
  store %struct.vlink* %vl1, %struct.vlink** %vl1.addr, align 8
  store %struct.vlink* %vl2, %struct.vlink** %vl2.addr, align 8
  %0 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %name = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i32 0, i32 1
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %name1 = getelementptr inbounds %struct.vlink, %struct.vlink* %2, i32 0, i32 1
  %3 = load i8*, i8** %name1, align 8
  %call = call i32 @strcmp(i8* %1, i8* %3)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %linktype = getelementptr inbounds %struct.vlink, %struct.vlink* %4, i32 0, i32 2
  %5 = load i8, i8* %linktype, align 1
  %conv = sext i8 %5 to i32
  %6 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %linktype2 = getelementptr inbounds %struct.vlink, %struct.vlink* %6, i32 0, i32 2
  %7 = load i8, i8* %linktype2, align 1
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, %conv3
  br i1 %cmp4, label %land.lhs.true.6, label %land.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %8 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %type = getelementptr inbounds %struct.vlink, %struct.vlink* %8, i32 0, i32 4
  %9 = load i8*, i8** %type, align 8
  %10 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %type7 = getelementptr inbounds %struct.vlink, %struct.vlink* %10, i32 0, i32 4
  %11 = load i8*, i8** %type7, align 8
  %call8 = call i32 @strcmp(i8* %9, i8* %11)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %land.lhs.true.11, label %land.end

land.lhs.true.11:                                 ; preds = %land.lhs.true.6
  %12 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %hosttype = getelementptr inbounds %struct.vlink, %struct.vlink* %12, i32 0, i32 7
  %13 = load i8*, i8** %hosttype, align 8
  %14 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %hosttype12 = getelementptr inbounds %struct.vlink, %struct.vlink* %14, i32 0, i32 7
  %15 = load i8*, i8** %hosttype12, align 8
  %call13 = call i32 @strcmp(i8* %13, i8* %15)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true.16, label %land.end

land.lhs.true.16:                                 ; preds = %land.lhs.true.11
  %16 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %host = getelementptr inbounds %struct.vlink, %struct.vlink* %16, i32 0, i32 8
  %17 = load i8*, i8** %host, align 8
  %18 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %host17 = getelementptr inbounds %struct.vlink, %struct.vlink* %18, i32 0, i32 8
  %19 = load i8*, i8** %host17, align 8
  %call18 = call i32 @strcmp(i8* %17, i8* %19)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %land.lhs.true.21, label %land.end

land.lhs.true.21:                                 ; preds = %land.lhs.true.16
  %20 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %nametype = getelementptr inbounds %struct.vlink, %struct.vlink* %20, i32 0, i32 9
  %21 = load i8*, i8** %nametype, align 8
  %22 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %nametype22 = getelementptr inbounds %struct.vlink, %struct.vlink* %22, i32 0, i32 9
  %23 = load i8*, i8** %nametype22, align 8
  %call23 = call i32 @strcmp(i8* %21, i8* %23)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %land.lhs.true.26, label %land.end

land.lhs.true.26:                                 ; preds = %land.lhs.true.21
  %24 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %filename = getelementptr inbounds %struct.vlink, %struct.vlink* %24, i32 0, i32 10
  %25 = load i8*, i8** %filename, align 8
  %26 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %filename27 = getelementptr inbounds %struct.vlink, %struct.vlink* %26, i32 0, i32 10
  %27 = load i8*, i8** %filename27, align 8
  %call28 = call i32 @strcmp(i8* %25, i8* %27)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %land.lhs.true.31, label %land.end

land.lhs.true.31:                                 ; preds = %land.lhs.true.26
  %28 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %version = getelementptr inbounds %struct.vlink, %struct.vlink* %28, i32 0, i32 11
  %29 = load i64, i64* %version, align 8
  %30 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %version32 = getelementptr inbounds %struct.vlink, %struct.vlink* %30, i32 0, i32 11
  %31 = load i64, i64* %version32, align 8
  %cmp33 = icmp eq i64 %29, %31
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.31
  %32 = load %struct.vlink*, %struct.vlink** %vl1.addr, align 8
  %f_magic_no = getelementptr inbounds %struct.vlink, %struct.vlink* %32, i32 0, i32 12
  %33 = load i64, i64* %f_magic_no, align 8
  %34 = load %struct.vlink*, %struct.vlink** %vl2.addr, align 8
  %f_magic_no35 = getelementptr inbounds %struct.vlink, %struct.vlink* %34, i32 0, i32 12
  %35 = load i64, i64* %f_magic_no35, align 8
  %cmp36 = icmp eq i64 %33, %35
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.31, %land.lhs.true.26, %land.lhs.true.21, %land.lhs.true.16, %land.lhs.true.11, %land.lhs.true.6, %land.lhs.true, %entry
  %36 = phi i1 [ false, %land.lhs.true.31 ], [ false, %land.lhs.true.26 ], [ false, %land.lhs.true.21 ], [ false, %land.lhs.true.16 ], [ false, %land.lhs.true.11 ], [ false, %land.lhs.true.6 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp36, %land.rhs ]
  %land.ext = zext i1 %36 to i32
  ret i32 %land.ext
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
