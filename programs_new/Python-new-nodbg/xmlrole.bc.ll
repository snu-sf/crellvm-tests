; ModuleID = './xmlrole.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prolog_state = type { i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)*, i32, i32, i32, i32, i32 }
%struct.encoding = type { [4 x i32 (%struct.encoding*, i8*, i8*, i8**)*], [2 x i32 (%struct.encoding*, i8*, i8*, i8**)*], i32 (%struct.encoding*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*)*, i8* (%struct.encoding*, i8*)*, i32 (%struct.encoding*, i8*, i32, %struct.ATTRIBUTE*)*, i32 (%struct.encoding*, i8*)*, i32 (%struct.encoding*, i8*, i8*)*, void (%struct.encoding*, i8*, i8*, %struct.position*)*, i32 (%struct.encoding*, i8*, i8*, i8**)*, void (%struct.encoding*, i8**, i8*, i8**, i8*)*, void (%struct.encoding*, i8**, i8*, i16**, i16*)*, i32, i8, i8 }
%struct.ATTRIBUTE = type { i8*, i8*, i8*, i8 }
%struct.position = type { i64, i64 }

@KW_DOCTYPE = internal constant [8 x i8] c"DOCTYPE\00", align 1
@KW_SYSTEM = internal constant [7 x i8] c"SYSTEM\00", align 1
@KW_PUBLIC = internal constant [7 x i8] c"PUBLIC\00", align 1
@KW_ENTITY = internal constant [7 x i8] c"ENTITY\00", align 1
@KW_ATTLIST = internal constant [8 x i8] c"ATTLIST\00", align 1
@KW_ELEMENT = internal constant [8 x i8] c"ELEMENT\00", align 1
@KW_NOTATION = internal constant [9 x i8] c"NOTATION\00", align 1
@KW_INCLUDE = internal constant [8 x i8] c"INCLUDE\00", align 1
@KW_IGNORE = internal constant [7 x i8] c"IGNORE\00", align 1
@KW_NDATA = internal constant [6 x i8] c"NDATA\00", align 1
@attlist2.types = internal constant [8 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @KW_CDATA, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @KW_ID, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @KW_IDREF, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_IDREFS, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_ENTITY, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @KW_ENTITIES, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_NMTOKEN, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @KW_NMTOKENS, i32 0, i32 0)], align 16
@KW_CDATA = internal constant [6 x i8] c"CDATA\00", align 1
@KW_ID = internal constant [3 x i8] c"ID\00", align 1
@KW_IDREF = internal constant [6 x i8] c"IDREF\00", align 1
@KW_IDREFS = internal constant [7 x i8] c"IDREFS\00", align 1
@KW_ENTITIES = internal constant [9 x i8] c"ENTITIES\00", align 1
@KW_NMTOKEN = internal constant [8 x i8] c"NMTOKEN\00", align 1
@KW_NMTOKENS = internal constant [9 x i8] c"NMTOKENS\00", align 1
@KW_IMPLIED = internal constant [8 x i8] c"IMPLIED\00", align 1
@KW_REQUIRED = internal constant [9 x i8] c"REQUIRED\00", align 1
@KW_FIXED = internal constant [6 x i8] c"FIXED\00", align 1
@KW_EMPTY = internal constant [6 x i8] c"EMPTY\00", align 1
@KW_ANY = internal constant [4 x i8] c"ANY\00", align 1
@KW_PCDATA = internal constant [7 x i8] c"PCDATA\00", align 1

; Function Attrs: nounwind uwtable
define void @PyExpat_XmlPrologStateInit(%struct.prolog_state* %state) #0 {
entry:
  %state.addr = alloca %struct.prolog_state*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  %0 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %0, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 4
  store i32 1, i32* %documentEntity, align 4
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %includeLevel = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 3
  store i32 0, i32* %includeLevel, align 4
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %inEntityValue = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 5
  store i32 0, i32* %inEntityValue, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @prolog0(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 12, label %sw.bb.1
    i32 11, label %sw.bb.3
    i32 13, label %sw.bb.5
    i32 14, label %sw.bb.7
    i32 16, label %sw.bb.8
    i32 29, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler2 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler2, align 8
  store i32 1, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler4, align 8
  store i32 55, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8
  store i32 56, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 3
  %6 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %8 = load i8*, i8** %ptr.addr, align 8
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %9, i32 0, i32 13
  %10 = load i32, i32* %minBytesPerChar, align 4
  %mul = mul i32 2, %10
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext
  %11 = load i8*, i8** %end.addr, align 8
  %call = call i32 %6(%struct.encoding* %7, i8* %add.ptr, i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_DOCTYPE, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.8
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8
  store i32 3, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler11 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @error, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler11, align 8
  store i32 2, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry, %if.then
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %15 = load i32, i32* %tok.addr, align 4
  %call12 = call i32 @common(%struct.prolog_state* %14, i32 %15)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.10, %if.end, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @PyExpat_XmlPrologStateInitExternalEntity(%struct.prolog_state* %state) #0 {
entry:
  %state.addr = alloca %struct.prolog_state*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  %0 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %0, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 4
  store i32 0, i32* %documentEntity, align 4
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %includeLevel = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 3
  store i32 0, i32* %includeLevel, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @externalSubset0(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %0, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  %1 = load i32, i32* %tok.addr, align 4
  %cmp = icmp eq i32 %1, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 57, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %6 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %call = call i32 @externalSubset1(%struct.prolog_state* %2, i32 %3, i8* %4, i8* %5, %struct.encoding* %6)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @prolog1(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 11, label %sw.bb.1
    i32 13, label %sw.bb.2
    i32 14, label %sw.bb.3
    i32 16, label %sw.bb.4
    i32 29, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 55, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 56, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 13
  %6 = load i32, i32* %minBytesPerChar, align 4
  %mul = mul i32 2, %6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext
  %7 = load i8*, i8** %end.addr, align 8
  %call = call i32 %2(%struct.encoding* %3, i8* %add.ptr, i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_DOCTYPE, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.4
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.4
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 3, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %9, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @error, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8
  store i32 2, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry, %if.then
  %10 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %11 = load i32, i32* %tok.addr, align 4
  %call7 = call i32 @common(%struct.prolog_state* %10, i32 %11)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.5, %if.end, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @doctype0(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 41, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 4, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @error(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @common(%struct.prolog_state* %state, i32 %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  %0 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %0, i32 0, i32 4
  %1 = load i32, i32* %documentEntity, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %tok.addr, align 4
  %cmp = icmp eq i32 %2, 28
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 59, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @error, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @doctype1(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 25, label %sw.bb.1
    i32 17, label %sw.bb.2
    i32 18, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 7, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8
  store i32 8, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %3, i32 0, i32 3
  %4 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %6 = load i8*, i8** %ptr.addr, align 8
  %7 = load i8*, i8** %end.addr, align 8
  %call = call i32 %4(%struct.encoding* %5, i8* %6, i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_SYSTEM, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.4
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler5 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler5, align 8
  store i32 3, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.4
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii6 = getelementptr inbounds %struct.encoding, %struct.encoding* %9, i32 0, i32 3
  %10 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii6, align 8
  %11 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %12 = load i8*, i8** %ptr.addr, align 8
  %13 = load i8*, i8** %end.addr, align 8
  %call7 = call i32 %10(%struct.encoding* %11, i8* %12, i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PUBLIC, i32 0, i32 0))
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler10 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler10, align 8
  store i32 3, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.11
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %16 = load i32, i32* %tok.addr, align 4
  %call12 = call i32 @common(%struct.prolog_state* %15, i32 %16)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.9, %if.then, %sw.bb.2, %sw.bb.1, %sw.bb
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @internalSubset(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 16, label %sw.bb.1
    i32 11, label %sw.bb.32
    i32 13, label %sw.bb.33
    i32 28, label %sw.bb.34
    i32 26, label %sw.bb.35
    i32 -4, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 13
  %6 = load i32, i32* %minBytesPerChar, align 4
  %mul = mul i32 2, %6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext
  %7 = load i8*, i8** %end.addr, align 8
  %call = call i32 %2(%struct.encoding* %3, i8* %add.ptr, i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_ENTITY, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 11, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.1
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %9, i32 0, i32 3
  %10 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8
  %11 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %12 = load i8*, i8** %ptr.addr, align 8
  %13 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %minBytesPerChar3 = getelementptr inbounds %struct.encoding, %struct.encoding* %13, i32 0, i32 13
  %14 = load i32, i32* %minBytesPerChar3, align 4
  %mul4 = mul i32 2, %14
  %idx.ext5 = sext i32 %mul4 to i64
  %add.ptr6 = getelementptr i8, i8* %12, i64 %idx.ext5
  %15 = load i8*, i8** %end.addr, align 8
  %call7 = call i32 %10(%struct.encoding* %11, i8* %add.ptr6, i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_ATTLIST, i32 0, i32 0))
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %16 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler10 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %16, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler10, align 8
  store i32 33, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %17 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii12 = getelementptr inbounds %struct.encoding, %struct.encoding* %17, i32 0, i32 3
  %18 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii12, align 8
  %19 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %20 = load i8*, i8** %ptr.addr, align 8
  %21 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %minBytesPerChar13 = getelementptr inbounds %struct.encoding, %struct.encoding* %21, i32 0, i32 13
  %22 = load i32, i32* %minBytesPerChar13, align 4
  %mul14 = mul i32 2, %22
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr i8, i8* %20, i64 %idx.ext15
  %23 = load i8*, i8** %end.addr, align 8
  %call17 = call i32 %18(%struct.encoding* %19, i8* %add.ptr16, i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_ELEMENT, i32 0, i32 0))
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.11
  %24 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler20 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %24, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler20, align 8
  store i32 39, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.11
  %25 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii22 = getelementptr inbounds %struct.encoding, %struct.encoding* %25, i32 0, i32 3
  %26 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii22, align 8
  %27 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %28 = load i8*, i8** %ptr.addr, align 8
  %29 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %minBytesPerChar23 = getelementptr inbounds %struct.encoding, %struct.encoding* %29, i32 0, i32 13
  %30 = load i32, i32* %minBytesPerChar23, align 4
  %mul24 = mul i32 2, %30
  %idx.ext25 = sext i32 %mul24 to i64
  %add.ptr26 = getelementptr i8, i8* %28, i64 %idx.ext25
  %31 = load i8*, i8** %end.addr, align 8
  %call27 = call i32 %26(%struct.encoding* %27, i8* %add.ptr26, i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @KW_NOTATION, i32 0, i32 0))
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.21
  %32 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler30 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %32, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler30, align 8
  store i32 17, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.21
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  store i32 55, i32* %retval
  br label %return

sw.bb.33:                                         ; preds = %entry
  store i32 56, i32* %retval
  br label %return

sw.bb.34:                                         ; preds = %entry
  store i32 60, i32* %retval
  br label %return

sw.bb.35:                                         ; preds = %entry
  %33 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler36 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %33, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype5, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler36, align 8
  store i32 3, i32* %retval
  br label %return

sw.bb.37:                                         ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry, %if.end.31
  %34 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %35 = load i32, i32* %tok.addr, align 4
  %call38 = call i32 @common(%struct.prolog_state* %34, i32 %35)
  store i32 %call38, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.37, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb.32, %if.then.29, %if.then.19, %if.then.9, %if.then, %sw.bb
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @prolog2(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 11, label %sw.bb.1
    i32 13, label %sw.bb.2
    i32 29, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 55, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 56, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @error, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 2, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @doctype3(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 5, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @doctype2(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 6, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @entity0(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 22, label %sw.bb.1
    i32 18, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 11, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8
  store i32 9, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %4 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @attlist0(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 41, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 34, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @element0(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 41, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 40, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @notation0(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 17, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 18, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @doctype5(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 17, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 8, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @entity1(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 10, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @entity2(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 27, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_SYSTEM, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 11, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.1
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 3
  %8 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %10 = load i8*, i8** %ptr.addr, align 8
  %11 = load i8*, i8** %end.addr, align 8
  %call3 = call i32 %8(%struct.encoding* %9, i8* %10, i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PUBLIC, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8
  store i32 11, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 2
  store i32 11, i32* %role_none, align 4
  store i32 12, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry, %if.end.7
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %16 = load i32, i32* %tok.addr, align 4
  %call10 = call i32 @common(%struct.prolog_state* %15, i32 %16)
  store i32 %call10, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.8, %if.then.5, %if.then, %sw.bb
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @entity7(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 27, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_SYSTEM, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity9, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 11, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.1
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 3
  %8 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %10 = load i8*, i8** %ptr.addr, align 8
  %11 = load i8*, i8** %end.addr, align 8
  %call3 = call i32 %8(%struct.encoding* %9, i8* %10, i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PUBLIC, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity8, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8
  store i32 11, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 2
  store i32 11, i32* %role_none, align 4
  store i32 12, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry, %if.end.7
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %16 = load i32, i32* %tok.addr, align 4
  %call10 = call i32 @common(%struct.prolog_state* %15, i32 %16)
  store i32 %call10, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.8, %if.then.5, %if.then, %sw.bb
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @entity9(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity10, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 13, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @entity8(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity9, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 14, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @declClose(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 17, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 2
  %2 = load i32, i32* %role_none, align 4
  store i32 %2, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 4
  %4 = load i32, i32* %documentEntity, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none2 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 2
  %7 = load i32, i32* %role_none2, align 4
  store i32 %7, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %9 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %8, i32 %9)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @entity10(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 17, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 4
  %2 = load i32, i32* %documentEntity, align 4
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 15, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %5 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %4, i32 %5)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @externalSubset1(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.default [
    i32 33, label %sw.bb
    i32 34, label %sw.bb.1
    i32 15, label %sw.bb.3
    i32 26, label %sw.bb.4
    i32 -4, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @condSect0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %includeLevel = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 3
  %3 = load i32, i32* %includeLevel, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.1
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %includeLevel2 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 3
  %5 = load i32, i32* %includeLevel2, align 4
  %sub = sub i32 %5, 1
  store i32 %sub, i32* %includeLevel2, align 4
  store i32 0, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %includeLevel6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 3
  %7 = load i32, i32* %includeLevel6, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %sw.bb.5
  br label %sw.epilog

if.end.8:                                         ; preds = %sw.bb.5
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %9 = load i32, i32* %tok.addr, align 4
  %10 = load i8*, i8** %ptr.addr, align 8
  %11 = load i8*, i8** %end.addr, align 8
  %12 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %call = call i32 @internalSubset(%struct.prolog_state* %8, i32 %9, i8* %10, i8* %11, %struct.encoding* %12)
  store i32 %call, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then.7, %sw.bb.4, %if.then
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %14 = load i32, i32* %tok.addr, align 4
  %call9 = call i32 @common(%struct.prolog_state* %13, i32 %14)
  store i32 %call9, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.end.8, %sw.bb.3, %if.end, %sw.bb
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @condSect0(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_INCLUDE, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @condSect1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.1
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 3
  %8 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %10 = load i8*, i8** %ptr.addr, align 8
  %11 = load i8*, i8** %end.addr, align 8
  %call3 = call i32 %8(%struct.encoding* %9, i8* %10, i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_IGNORE, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @condSect2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.7
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %14 = load i32, i32* %tok.addr, align 4
  %call8 = call i32 @common(%struct.prolog_state* %13, i32 %14)
  store i32 %call8, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.5, %if.then, %sw.bb
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @condSect1(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 25, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %includeLevel = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 3
  %3 = load i32, i32* %includeLevel, align 4
  %add = add i32 %3, 1
  store i32 %add, i32* %includeLevel, align 4
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %5 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %4, i32 %5)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @condSect2(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 25, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 58, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @entity4(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity5, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 13, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @entity3(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 14, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @entity5(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 17, label %sw.bb.1
    i32 18, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 4
  %2 = load i32, i32* %documentEntity, align 4
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 15, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %4, i32 0, i32 3
  %5 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8
  %6 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %7 = load i8*, i8** %ptr.addr, align 8
  %8 = load i8*, i8** %end.addr, align 8
  %call = call i32 %5(%struct.encoding* %6, i8* %7, i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @KW_NDATA, i32 0, i32 0))
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %9 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %9, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler4, align 8
  store i32 11, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end
  %10 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %11 = load i32, i32* %tok.addr, align 4
  %call5 = call i32 @common(%struct.prolog_state* %10, i32 %11)
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then, %sw.bb.1, %sw.bb
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @entity6(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2
  store i32 11, i32* %role_none, align 4
  store i32 16, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %4 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @attlist1(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 17, label %sw.bb.1
    i32 18, label %sw.bb.2
    i32 41, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 4
  %2 = load i32, i32* %documentEntity, align 4
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 33, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8
  store i32 22, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %6 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %5, i32 %6)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @attlist2(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  %i = alloca i32, align 4
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 23, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %2, i32 0, i32 3
  %3 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8
  %4 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %5 = load i8*, i8** %ptr.addr, align 8
  %6 = load i8*, i8** %end.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr [8 x i8*], [8 x i8*]* @attlist2.types, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %call = call i32 %3(%struct.encoding* %4, i8* %5, i8* %6, i8* %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %9, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist8, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  %10 = load i32, i32* %i, align 4
  %add = add i32 23, %10
  store i32 %add, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %12, i32 0, i32 3
  %13 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8
  %14 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %15 = load i8*, i8** %ptr.addr, align 8
  %16 = load i8*, i8** %end.addr, align 8
  %call3 = call i32 %13(%struct.encoding* %14, i8* %15, i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @KW_NOTATION, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %for.end
  %17 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %17, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist5, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8
  store i32 33, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.end
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %18 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %18, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8
  store i32 33, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry, %if.end.7
  %19 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %20 = load i32, i32* %tok.addr, align 4
  %call10 = call i32 @common(%struct.prolog_state* %19, i32 %20)
  store i32 %call10, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.8, %if.then.5, %if.then, %sw.bb
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @attlist8(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 20, label %sw.bb.1
    i32 27, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 13
  %6 = load i32, i32* %minBytesPerChar, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext
  %7 = load i8*, i8** %end.addr, align 8
  %call = call i32 %2(%struct.encoding* %3, i8* %add.ptr, i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_IMPLIED, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 35, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.1
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %9, i32 0, i32 3
  %10 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8
  %11 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %12 = load i8*, i8** %ptr.addr, align 8
  %13 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %minBytesPerChar3 = getelementptr inbounds %struct.encoding, %struct.encoding* %13, i32 0, i32 13
  %14 = load i32, i32* %minBytesPerChar3, align 4
  %idx.ext4 = sext i32 %14 to i64
  %add.ptr5 = getelementptr i8, i8* %12, i64 %idx.ext4
  %15 = load i8*, i8** %end.addr, align 8
  %call6 = call i32 %10(%struct.encoding* %11, i8* %add.ptr5, i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @KW_REQUIRED, i32 0, i32 0))
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %16 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %16, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8
  store i32 36, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %17 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii11 = getelementptr inbounds %struct.encoding, %struct.encoding* %17, i32 0, i32 3
  %18 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii11, align 8
  %19 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %20 = load i8*, i8** %ptr.addr, align 8
  %21 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %minBytesPerChar12 = getelementptr inbounds %struct.encoding, %struct.encoding* %21, i32 0, i32 13
  %22 = load i32, i32* %minBytesPerChar12, align 4
  %idx.ext13 = sext i32 %22 to i64
  %add.ptr14 = getelementptr i8, i8* %20, i64 %idx.ext13
  %23 = load i8*, i8** %end.addr, align 8
  %call15 = call i32 %18(%struct.encoding* %19, i8* %add.ptr14, i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @KW_FIXED, i32 0, i32 0))
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.10
  %24 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler18 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %24, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist9, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler18, align 8
  store i32 33, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.10
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %25 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler21 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %25, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler21, align 8
  store i32 37, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry, %if.end.19
  %26 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %27 = load i32, i32* %tok.addr, align 4
  %call22 = call i32 @common(%struct.prolog_state* %26, i32 %27)
  store i32 %call22, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.20, %if.then.17, %if.then.8, %if.then, %sw.bb
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @attlist5(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 23, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 33, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @attlist3(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 19, label %sw.bb.1
    i32 18, label %sw.bb.1
    i32 41, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry, %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 31, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @attlist9(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 38, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @attlist6(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 32, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @attlist7(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 24, label %sw.bb.1
    i32 21, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist8, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 33, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8
  store i32 33, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %4 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @attlist4(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 24, label %sw.bb.1
    i32 21, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist8, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 33, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8
  store i32 33, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %4 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @element1(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 23, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @KW_EMPTY, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  %7 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %7, i32 0, i32 2
  store i32 39, i32* %role_none, align 4
  store i32 42, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.1
  %8 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %8, i32 0, i32 3
  %9 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8
  %10 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %11 = load i8*, i8** %ptr.addr, align 8
  %12 = load i8*, i8** %end.addr, align 8
  %call3 = call i32 %9(%struct.encoding* %10, i8* %11, i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @KW_ANY, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none7 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 2
  store i32 39, i32* %role_none7, align 4
  store i32 41, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler10 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %15, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler10, align 8
  %16 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %level = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %16, i32 0, i32 1
  store i32 1, i32* %level, align 4
  store i32 44, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry, %if.end.8
  %17 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %18 = load i32, i32* %tok.addr, align 4
  %call11 = call i32 @common(%struct.prolog_state* %17, i32 %18)
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.9, %if.then.5, %if.then, %sw.bb
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @element2(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 20, label %sw.bb.1
    i32 23, label %sw.bb.2
    i32 18, label %sw.bb.4
    i32 41, label %sw.bb.4
    i32 30, label %sw.bb.6
    i32 31, label %sw.bb.8
    i32 32, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 13
  %6 = load i32, i32* %minBytesPerChar, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext
  %7 = load i8*, i8** %end.addr, align 8
  %call = call i32 %2(%struct.encoding* %3, i8* %add.ptr, i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PCDATA, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 43, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.1
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %level = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %9, i32 0, i32 1
  store i32 2, i32* %level, align 4
  %10 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %10, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8
  store i32 44, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry, %entry
  %11 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler5 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %11, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler5, align 8
  store i32 51, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler7 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler7, align 8
  store i32 53, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8
  store i32 52, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler11 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler11, align 8
  store i32 54, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry, %if.end
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %16 = load i32, i32* %tok.addr, align 4
  %call12 = call i32 @common(%struct.prolog_state* %15, i32 %16)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.2, %if.then, %sw.bb
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @element3(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 24, label %sw.bb.1
    i32 36, label %sw.bb.2
    i32 21, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2
  store i32 39, i32* %role_none, align 4
  store i32 45, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 2
  store i32 39, i32* %role_none4, align 4
  store i32 46, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8
  store i32 39, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %7 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %6, i32 %7)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.5, %sw.bb.2, %sw.bb.1, %sw.bb
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @element6(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 23, label %sw.bb.1
    i32 18, label %sw.bb.2
    i32 41, label %sw.bb.2
    i32 30, label %sw.bb.3
    i32 31, label %sw.bb.5
    i32 32, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %level = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 1
  %2 = load i32, i32* %level, align 4
  %add = add i32 %2, 1
  store i32 %add, i32* %level, align 4
  store i32 44, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 51, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler4, align 8
  store i32 53, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8
  store i32 52, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler8 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler8, align 8
  store i32 54, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %7 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %8 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %7, i32 %8)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @element7(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 24, label %sw.bb.1
    i32 36, label %sw.bb.3
    i32 35, label %sw.bb.12
    i32 37, label %sw.bb.21
    i32 38, label %sw.bb.30
    i32 21, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %level = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 1
  %2 = load i32, i32* %level, align 4
  %sub = sub i32 %2, 1
  store i32 %sub, i32* %level, align 4
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %level2 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 1
  %4 = load i32, i32* %level2, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 2
  store i32 39, i32* %role_none, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.1
  store i32 45, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %level4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %7, i32 0, i32 1
  %8 = load i32, i32* %level4, align 4
  %sub5 = sub i32 %8, 1
  store i32 %sub5, i32* %level4, align 4
  %9 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %level6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %9, i32 0, i32 1
  %10 = load i32, i32* %level6, align 4
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %sw.bb.3
  %11 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %11, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none10 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 2
  store i32 39, i32* %role_none10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %sw.bb.3
  store i32 46, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %level13 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 1
  %14 = load i32, i32* %level13, align 4
  %sub14 = sub i32 %14, 1
  store i32 %sub14, i32* %level13, align 4
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %level15 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %15, i32 0, i32 1
  %16 = load i32, i32* %level15, align 4
  %cmp16 = icmp eq i32 %16, 0
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %sw.bb.12
  %17 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler18 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %17, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler18, align 8
  %18 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none19 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %18, i32 0, i32 2
  store i32 39, i32* %role_none19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %sw.bb.12
  store i32 47, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  %19 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %level22 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %19, i32 0, i32 1
  %20 = load i32, i32* %level22, align 4
  %sub23 = sub i32 %20, 1
  store i32 %sub23, i32* %level22, align 4
  %21 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %level24 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %21, i32 0, i32 1
  %22 = load i32, i32* %level24, align 4
  %cmp25 = icmp eq i32 %22, 0
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %sw.bb.21
  %23 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler27 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %23, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler27, align 8
  %24 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none28 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %24, i32 0, i32 2
  store i32 39, i32* %role_none28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %sw.bb.21
  store i32 48, i32* %retval
  br label %return

sw.bb.30:                                         ; preds = %entry
  %25 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler31 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %25, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler31, align 8
  store i32 50, i32* %retval
  br label %return

sw.bb.32:                                         ; preds = %entry
  %26 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler33 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %26, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler33, align 8
  store i32 49, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %27 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %28 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %27, i32 %28)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.32, %sw.bb.30, %if.end.29, %if.end.20, %if.end.11, %if.end, %sw.bb
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @element4(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 41, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element5, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 51, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @element5(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 36, label %sw.bb.1
    i32 21, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2
  store i32 39, i32* %role_none, align 4
  store i32 46, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8
  store i32 39, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %5 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %4, i32 %5)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @notation1(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 17, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_SYSTEM, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 17, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.1
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 3
  %8 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8
  %10 = load i8*, i8** %ptr.addr, align 8
  %11 = load i8*, i8** %end.addr, align 8
  %call3 = call i32 %8(%struct.encoding* %9, i8* %10, i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PUBLIC, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8
  store i32 17, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.7
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %14 = load i32, i32* %tok.addr, align 4
  %call8 = call i32 @common(%struct.prolog_state* %13, i32 %14)
  store i32 %call8, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.5, %if.then, %sw.bb
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @notation3(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 17, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2
  store i32 17, i32* %role_none, align 4
  store i32 19, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %4 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @notation2(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 17, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 21, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %3 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @notation4(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
    i32 17, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 17, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2
  store i32 17, i32* %role_none, align 4
  store i32 19, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 4
  %4 = load i32, i32* %documentEntity, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8
  store i32 20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %7 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %6, i32 %7)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @doctype4(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8
  %0 = load i32, i32* %tok.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 25, label %sw.bb.1
    i32 17, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8
  store i32 7, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8
  store i32 8, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8
  %4 = load i32, i32* %tok.addr, align 4
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval
  ret i32 %5
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
