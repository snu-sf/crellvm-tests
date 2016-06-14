; ModuleID = 'locale.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@PL_utf8locale = external global i8, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"PERL_UNICODE\00", align 1
@PL_unicode = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @Perl_set_numeric_radix() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_new_numeric(i8* %newnum) #0 {
entry:
  %newnum.addr = alloca i8*, align 8
  store i8* %newnum, i8** %newnum.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_set_numeric_standard() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_set_numeric_local() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_new_ctype(i8* %newctype) #0 {
entry:
  %newctype.addr = alloca i8*, align 8
  store i8* %newctype, i8** %newctype.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_new_collate(i8* %newcoll) #0 {
entry:
  %newcoll.addr = alloca i8*, align 8
  store i8* %newcoll, i8** %newcoll.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Perl_init_i18nl10n(i32 %printwarn) #0 {
entry:
  %printwarn.addr = alloca i32, align 4
  %ok = alloca i32, align 4
  %utf8locale = alloca i8, align 1
  %codeset = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i32 %printwarn, i32* %printwarn.addr, align 4
  store i32 1, i32* %ok, align 4
  store i8 0, i8* %utf8locale, align 1
  store i8* null, i8** %codeset, align 8
  %0 = load i8*, i8** %codeset, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %codeset, align 8
  %call = call i32 @Perl_ibcmp(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 5)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %2 = load i8*, i8** %codeset, align 8
  %call1 = call i32 @Perl_ibcmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 4)
  %cmp2 = icmp eq i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %3 = phi i1 [ true, %if.then ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  %conv = trunc i32 %lor.ext to i8
  store i8 %conv, i8* %utf8locale, align 1
  br label %if.end

if.end:                                           ; preds = %lor.end, %entry
  %4 = load i8, i8* %utf8locale, align 1
  %tobool3 = icmp ne i8 %4, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i8 1, i8* @PL_utf8locale, align 1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %call6 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call6, i8** %p, align 8
  %5 = load i8*, i8** %p, align 8
  %tobool7 = icmp ne i8* %5, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %call8 = call i32 @Perl_parse_unicode_opts(i8** %p)
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call8, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* @PL_unicode, align 4
  %6 = load i32, i32* %ok, align 4
  ret i32 %6
}

declare i32 @Perl_ibcmp(i8*, i8*, i32) #1

declare i8* @getenv(i8*) #1

declare i32 @Perl_parse_unicode_opts(i8**) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_init_i18nl14n(i32 %printwarn) #0 {
entry:
  %printwarn.addr = alloca i32, align 4
  store i32 %printwarn, i32* %printwarn.addr, align 4
  %0 = load i32, i32* %printwarn.addr, align 4
  %call = call i32 @Perl_init_i18nl10n(i32 %0)
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
