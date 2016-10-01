; ModuleID = './MultiSource.Applications.Burg/22.string.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strTable = type { %struct.list* }
%struct.list = type { i8*, %struct.list* }
%struct.intlist = type { i32, %struct.intlist* }
%struct.strTableElement = type { i8*, %struct.intlist*, i8* }

@rcsid_string = global [48 x i8] c"$Id: string.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@.str = private unnamed_addr constant [16 x i8] c"Begin StrTable\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"End StrTable\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.strTable* @newStrTable() #0 {
entry:
  %call = call i8* @zalloc(i32 8)
  %0 = bitcast i8* %call to %struct.strTable*
  ret %struct.strTable* %0
}

declare i8* @zalloc(i32) #1

; Function Attrs: nounwind uwtable
define void @dumpStrTable(%struct.strTable* %t) #0 {
entry:
  %t.addr = alloca %struct.strTable*, align 8
  %e = alloca %struct.list*, align 8
  %r = alloca %struct.intlist*, align 8
  %el = alloca %struct.strTableElement*, align 8
  %i = alloca i32, align 4
  store %struct.strTable* %t, %struct.strTable** %t.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %0 = load %struct.strTable*, %struct.strTable** %t.addr, align 8
  %elems = getelementptr inbounds %struct.strTable, %struct.strTable* %0, i32 0, i32 0
  %1 = load %struct.list*, %struct.list** %elems, align 8
  store %struct.list* %1, %struct.list** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %2 = load %struct.list*, %struct.list** %e, align 8
  %tobool = icmp ne %struct.list* %2, null
  br i1 %tobool, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  %3 = load %struct.list*, %struct.list** %e, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %3, i32 0, i32 0
  %4 = load i8*, i8** %x, align 8
  %5 = bitcast i8* %4 to %struct.strTableElement*
  store %struct.strTableElement* %5, %struct.strTableElement** %el, align 8
  %6 = load %struct.strTableElement*, %struct.strTableElement** %el, align 8
  %str = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %6, i32 0, i32 0
  %7 = load i8*, i8** %str, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %7)
  %8 = load %struct.strTableElement*, %struct.strTableElement** %el, align 8
  %erulenos = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %8, i32 0, i32 1
  %9 = load %struct.intlist*, %struct.intlist** %erulenos, align 8
  store %struct.intlist* %9, %struct.intlist** %r, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %10 = load %struct.intlist*, %struct.intlist** %r, align 8
  %tobool3 = icmp ne %struct.intlist* %10, null
  br i1 %tobool3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %11 = load %struct.intlist*, %struct.intlist** %r, align 8
  %x5 = getelementptr inbounds %struct.intlist, %struct.intlist* %11, i32 0, i32 0
  %12 = load i32, i32* %x5, align 4
  store i32 %12, i32* %i, align 4
  %13 = load i32, i32* %i, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %14 = load %struct.intlist*, %struct.intlist** %r, align 8
  %next = getelementptr inbounds %struct.intlist, %struct.intlist* %14, i32 0, i32 1
  %15 = load %struct.intlist*, %struct.intlist** %next, align 8
  store %struct.intlist* %15, %struct.intlist** %r, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %16 = load %struct.list*, %struct.list** %e, align 8
  %next9 = getelementptr inbounds %struct.list, %struct.list* %16, i32 0, i32 1
  %17 = load %struct.list*, %struct.list** %next9, align 8
  store %struct.list* %17, %struct.list** %e, align 8
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.strTableElement* @addString(%struct.strTable* %t, i8* %s, i32 %eruleno, i32* %new) #0 {
entry:
  %retval = alloca %struct.strTableElement*, align 8
  %t.addr = alloca %struct.strTable*, align 8
  %s.addr = alloca i8*, align 8
  %eruleno.addr = alloca i32, align 4
  %new.addr = alloca i32*, align 8
  %l = alloca %struct.list*, align 8
  %ste = alloca %struct.strTableElement*, align 8
  %e = alloca %struct.strTableElement*, align 8
  store %struct.strTable* %t, %struct.strTable** %t.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %eruleno, i32* %eruleno.addr, align 4
  store i32* %new, i32** %new.addr, align 8
  %0 = load %struct.strTable*, %struct.strTable** %t.addr, align 8
  %elems = getelementptr inbounds %struct.strTable, %struct.strTable* %0, i32 0, i32 0
  %1 = load %struct.list*, %struct.list** %elems, align 8
  store %struct.list* %1, %struct.list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.list*, %struct.list** %l, align 8
  %tobool = icmp ne %struct.list* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.list*, %struct.list** %l, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %3, i32 0, i32 0
  %4 = load i8*, i8** %x, align 8
  %5 = bitcast i8* %4 to %struct.strTableElement*
  store %struct.strTableElement* %5, %struct.strTableElement** %e, align 8
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load %struct.strTableElement*, %struct.strTableElement** %e, align 8
  %str = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %call = call i32 @strcmp(i8* %6, i8* %8) #4
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %eruleno.addr, align 4
  %10 = load %struct.strTableElement*, %struct.strTableElement** %e, align 8
  %erulenos = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %10, i32 0, i32 1
  %11 = load %struct.intlist*, %struct.intlist** %erulenos, align 8
  %call2 = call %struct.intlist* @newIntList(i32 %9, %struct.intlist* %11)
  %12 = load %struct.strTableElement*, %struct.strTableElement** %e, align 8
  %erulenos3 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %12, i32 0, i32 1
  store %struct.intlist* %call2, %struct.intlist** %erulenos3, align 8
  %13 = load i32*, i32** %new.addr, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.strTableElement*, %struct.strTableElement** %e, align 8
  store %struct.strTableElement* %14, %struct.strTableElement** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %15, i32 0, i32 1
  %16 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %16, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call %struct.strTableElement* @newStrTableElement()
  store %struct.strTableElement* %call4, %struct.strTableElement** %ste, align 8
  %17 = load i32, i32* %eruleno.addr, align 4
  %call5 = call %struct.intlist* @newIntList(i32 %17, %struct.intlist* null)
  %18 = load %struct.strTableElement*, %struct.strTableElement** %ste, align 8
  %erulenos6 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %18, i32 0, i32 1
  store %struct.intlist* %call5, %struct.intlist** %erulenos6, align 8
  %19 = load i8*, i8** %s.addr, align 8
  %call7 = call i64 @strlen(i8* %19) #4
  %add = add i64 %call7, 1
  %conv = trunc i64 %add to i32
  %call8 = call i8* @zalloc(i32 %conv)
  %20 = load %struct.strTableElement*, %struct.strTableElement** %ste, align 8
  %str9 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %20, i32 0, i32 0
  store i8* %call8, i8** %str9, align 8
  %21 = load %struct.strTableElement*, %struct.strTableElement** %ste, align 8
  %str10 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %21, i32 0, i32 0
  %22 = load i8*, i8** %str10, align 8
  %23 = load i8*, i8** %s.addr, align 8
  %call11 = call i8* @strcpy(i8* %22, i8* %23) #5
  %24 = load %struct.strTableElement*, %struct.strTableElement** %ste, align 8
  %25 = bitcast %struct.strTableElement* %24 to i8*
  %26 = load %struct.strTable*, %struct.strTable** %t.addr, align 8
  %elems12 = getelementptr inbounds %struct.strTable, %struct.strTable* %26, i32 0, i32 0
  %27 = load %struct.list*, %struct.list** %elems12, align 8
  %call13 = call %struct.list* @newList(i8* %25, %struct.list* %27)
  %28 = load %struct.strTable*, %struct.strTable** %t.addr, align 8
  %elems14 = getelementptr inbounds %struct.strTable, %struct.strTable* %28, i32 0, i32 0
  store %struct.list* %call13, %struct.list** %elems14, align 8
  %29 = load i32*, i32** %new.addr, align 8
  store i32 1, i32* %29, align 4
  %30 = load %struct.strTableElement*, %struct.strTableElement** %ste, align 8
  store %struct.strTableElement* %30, %struct.strTableElement** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %31 = load %struct.strTableElement*, %struct.strTableElement** %retval
  ret %struct.strTableElement* %31
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct.intlist* @newIntList(i32, %struct.intlist*) #1

; Function Attrs: nounwind uwtable
define internal %struct.strTableElement* @newStrTableElement() #0 {
entry:
  %call = call i8* @zalloc(i32 24)
  %0 = bitcast i8* %call to %struct.strTableElement*
  ret %struct.strTableElement* %0
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare %struct.list* @newList(i8*, %struct.list*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
