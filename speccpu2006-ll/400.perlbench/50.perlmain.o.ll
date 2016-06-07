; ModuleID = 'perlmain.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interpreter = type { i8 }
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.sv = type { i8*, i32, i32 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%union.any = type { i8* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }

@PL_use_safe_putenv = external global i32, align 4
@PL_do_undump = external global i8, align 1
@my_perl = internal global %struct.interpreter* null, align 8
@PL_perl_destruct_level = external global i32, align 4
@PL_exit_flags = external global i8, align 1
@.str = private unnamed_addr constant [11 x i8] c"perlmain.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"DynaLoader::boot_DynaLoader\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Cwd::bootstrap\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Data::Dumper::bootstrap\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Devel::Peek::bootstrap\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Digest::MD5::bootstrap\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"IO::bootstrap\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"MIME::Base64::bootstrap\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Sys::Hostname::bootstrap\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Time::HiRes::bootstrap\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"attrs::bootstrap\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Storable::bootstrap\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"HTML::Parser::bootstrap\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Opcode::bootstrap\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv, i8** %env) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %env.addr = alloca i8**, align 8
  %exitstatus = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8** %env, i8*** %env.addr, align 8
  store i32 0, i32* @PL_use_safe_putenv, align 4
  %0 = load i8, i8* @PL_do_undump, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.interpreter* @perl_alloc()
  store %struct.interpreter* %call, %struct.interpreter** @my_perl, align 8
  %1 = load %struct.interpreter*, %struct.interpreter** @my_perl, align 8
  %tobool1 = icmp ne %struct.interpreter* %1, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  call void @exit(i32 1) #3
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load %struct.interpreter*, %struct.interpreter** @my_perl, align 8
  call void @perl_construct(%struct.interpreter* %2)
  store i32 0, i32* @PL_perl_destruct_level, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %3 = load i8, i8* @PL_exit_flags, align 1
  %conv = zext i8 %3 to i32
  %or = or i32 %conv, 2
  %conv4 = trunc i32 %or to i8
  store i8 %conv4, i8* @PL_exit_flags, align 1
  %4 = load %struct.interpreter*, %struct.interpreter** @my_perl, align 8
  %5 = load i32, i32* %argc.addr, align 4
  %6 = load i8**, i8*** %argv.addr, align 8
  %call5 = call i32 @perl_parse(%struct.interpreter* %4, void ()* @xs_init, i32 %5, i8** %6, i8** null)
  store i32 %call5, i32* %exitstatus, align 4
  %7 = load i32, i32* %exitstatus, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end.3
  %8 = load %struct.interpreter*, %struct.interpreter** @my_perl, align 8
  %call8 = call i32 @perl_run(%struct.interpreter* %8)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.3
  %9 = load %struct.interpreter*, %struct.interpreter** @my_perl, align 8
  %call10 = call i32 @perl_destruct(%struct.interpreter* %9)
  store i32 %call10, i32* %exitstatus, align 4
  %10 = load %struct.interpreter*, %struct.interpreter** @my_perl, align 8
  call void @perl_free(%struct.interpreter* %10)
  %11 = load i32, i32* %exitstatus, align 4
  call void @exit(i32 %11) #3
  unreachable

return:                                           ; No predecessors!
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare %struct.interpreter* @perl_alloc() #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare void @perl_construct(%struct.interpreter*) #1

declare i32 @perl_parse(%struct.interpreter*, void ()*, i32, i8**, i8**) #1

; Function Attrs: nounwind uwtable
define internal void @xs_init() #0 {
entry:
  %file = alloca i8*, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8** %file, align 8
  %0 = load i8*, i8** %file, align 8
  %call = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), void (%struct.cv*)* @boot_DynaLoader, i8* %0)
  %1 = load i8*, i8** %file, align 8
  %call1 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), void (%struct.cv*)* @boot_Cwd, i8* %1)
  %2 = load i8*, i8** %file, align 8
  %call2 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), void (%struct.cv*)* @boot_Data__Dumper, i8* %2)
  %3 = load i8*, i8** %file, align 8
  %call3 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), void (%struct.cv*)* @boot_Devel__Peek, i8* %3)
  %4 = load i8*, i8** %file, align 8
  %call4 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), void (%struct.cv*)* @boot_Digest__MD5, i8* %4)
  %5 = load i8*, i8** %file, align 8
  %call5 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void (%struct.cv*)* @boot_IO, i8* %5)
  %6 = load i8*, i8** %file, align 8
  %call6 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), void (%struct.cv*)* @boot_MIME__Base64, i8* %6)
  %7 = load i8*, i8** %file, align 8
  %call7 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), void (%struct.cv*)* @boot_Sys__Hostname, i8* %7)
  %8 = load i8*, i8** %file, align 8
  %call8 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), void (%struct.cv*)* @boot_Time__HiRes, i8* %8)
  %9 = load i8*, i8** %file, align 8
  %call9 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), void (%struct.cv*)* @boot_attrs, i8* %9)
  %10 = load i8*, i8** %file, align 8
  %call10 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), void (%struct.cv*)* @boot_Storable, i8* %10)
  %11 = load i8*, i8** %file, align 8
  %call11 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), void (%struct.cv*)* @boot_HTML__Parser, i8* %11)
  %12 = load i8*, i8** %file, align 8
  %call12 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), void (%struct.cv*)* @boot_MIME__Base64, i8* %12)
  %13 = load i8*, i8** %file, align 8
  %call13 = call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), void (%struct.cv*)* @boot_Opcode, i8* %13)
  ret void
}

declare i32 @perl_run(%struct.interpreter*) #1

declare i32 @perl_destruct(%struct.interpreter*) #1

declare void @perl_free(%struct.interpreter*) #1

declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

declare void @boot_DynaLoader(%struct.cv*) #1

declare void @boot_Cwd(%struct.cv*) #1

declare void @boot_Data__Dumper(%struct.cv*) #1

declare void @boot_Devel__Peek(%struct.cv*) #1

declare void @boot_Digest__MD5(%struct.cv*) #1

declare void @boot_IO(%struct.cv*) #1

declare void @boot_MIME__Base64(%struct.cv*) #1

declare void @boot_Sys__Hostname(%struct.cv*) #1

declare void @boot_Time__HiRes(%struct.cv*) #1

declare void @boot_attrs(%struct.cv*) #1

declare void @boot_Storable(%struct.cv*) #1

declare void @boot_HTML__Parser(%struct.cv*) #1

declare void @boot_Opcode(%struct.cv*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
