; ModuleID = 'irs-onlybc/xmlrole.bc'
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !175, metadata !598), !dbg !599
  %0 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !600, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %0, i32 0, i32 0, !dbg !601
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !602, !tbaa !603
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !606, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 4, !dbg !607
  store i32 1, i32* %documentEntity, align 4, !dbg !608, !tbaa !609
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !610, !tbaa !594
  %includeLevel = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 3, !dbg !611
  store i32 0, i32* %includeLevel, align 4, !dbg !612, !tbaa !613
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !614, !tbaa !594
  %inEntityValue = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 5, !dbg !615
  store i32 0, i32* %inEntityValue, align 4, !dbg !616, !tbaa !617
  ret void, !dbg !618
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @prolog0(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !183, metadata !598), !dbg !619
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !184, metadata !598), !dbg !621
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !185, metadata !598), !dbg !622
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !186, metadata !598), !dbg !623
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !187, metadata !598), !dbg !624
  %0 = load i32, i32* %tok.addr, align 4, !dbg !625, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 12, label %sw.bb.1
    i32 11, label %sw.bb.3
    i32 13, label %sw.bb.5
    i32 14, label %sw.bb.7
    i32 16, label %sw.bb.8
    i32 29, label %sw.bb.10
  ], !dbg !626

sw.bb:                                            ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !627, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !629
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !630, !tbaa !603
  store i32 0, i32* %retval, !dbg !631
  br label %return, !dbg !631

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !632, !tbaa !594
  %handler2 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0, !dbg !633
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler2, align 8, !dbg !634, !tbaa !603
  store i32 1, i32* %retval, !dbg !635
  br label %return, !dbg !635

sw.bb.3:                                          ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !636, !tbaa !594
  %handler4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !637
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler4, align 8, !dbg !638, !tbaa !603
  store i32 55, i32* %retval, !dbg !639
  br label %return, !dbg !639

sw.bb.5:                                          ; preds = %entry
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !640, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 0, !dbg !641
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !642, !tbaa !603
  store i32 56, i32* %retval, !dbg !643
  br label %return, !dbg !643

sw.bb.7:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !644
  br label %return, !dbg !644

sw.bb.8:                                          ; preds = %entry
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !645, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 3, !dbg !647
  %6 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !647, !tbaa !648
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !650, !tbaa !594
  %8 = load i8*, i8** %ptr.addr, align 8, !dbg !651, !tbaa !594
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !652, !tbaa !594
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %9, i32 0, i32 13, !dbg !653
  %10 = load i32, i32* %minBytesPerChar, align 4, !dbg !653, !tbaa !654
  %mul = mul i32 2, %10, !dbg !655
  %idx.ext = sext i32 %mul to i64, !dbg !656
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !656
  %11 = load i8*, i8** %end.addr, align 8, !dbg !657, !tbaa !594
  %call = call i32 %6(%struct.encoding* %7, i8* %add.ptr, i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_DOCTYPE, i32 0, i32 0)), !dbg !658
  %tobool = icmp ne i32 %call, 0, !dbg !658
  br i1 %tobool, label %if.end, label %if.then, !dbg !659

if.then:                                          ; preds = %sw.bb.8
  br label %sw.epilog, !dbg !660

if.end:                                           ; preds = %sw.bb.8
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !661, !tbaa !594
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0, !dbg !662
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8, !dbg !663, !tbaa !603
  store i32 3, i32* %retval, !dbg !664
  br label %return, !dbg !664

sw.bb.10:                                         ; preds = %entry
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !665, !tbaa !594
  %handler11 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0, !dbg !666
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @error, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler11, align 8, !dbg !667, !tbaa !603
  store i32 2, i32* %retval, !dbg !668
  br label %return, !dbg !668

sw.epilog:                                        ; preds = %entry, %if.then
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !669, !tbaa !594
  %15 = load i32, i32* %tok.addr, align 4, !dbg !670, !tbaa !620
  %call12 = call i32 @common(%struct.prolog_state* %14, i32 %15), !dbg !671
  store i32 %call12, i32* %retval, !dbg !672
  br label %return, !dbg !672

return:                                           ; preds = %sw.epilog, %sw.bb.10, %if.end, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %16 = load i32, i32* %retval, !dbg !673
  ret i32 %16, !dbg !673
}

; Function Attrs: nounwind uwtable
define void @PyExpat_XmlPrologStateInitExternalEntity(%struct.prolog_state* %state) #0 {
entry:
  %state.addr = alloca %struct.prolog_state*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !178, metadata !598), !dbg !674
  %0 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !675, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %0, i32 0, i32 0, !dbg !676
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !677, !tbaa !603
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !678, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 4, !dbg !679
  store i32 0, i32* %documentEntity, align 4, !dbg !680, !tbaa !609
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !681, !tbaa !594
  %includeLevel = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 3, !dbg !682
  store i32 0, i32* %includeLevel, align 4, !dbg !683, !tbaa !613
  ret void, !dbg !684
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !542, metadata !598), !dbg !685
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !543, metadata !598), !dbg !686
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !544, metadata !598), !dbg !687
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !545, metadata !598), !dbg !688
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !546, metadata !598), !dbg !689
  %0 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !690, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %0, i32 0, i32 0, !dbg !691
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !692, !tbaa !603
  %1 = load i32, i32* %tok.addr, align 4, !dbg !693, !tbaa !620
  %cmp = icmp eq i32 %1, 12, !dbg !695
  br i1 %cmp, label %if.then, label %if.end, !dbg !696

if.then:                                          ; preds = %entry
  store i32 57, i32* %retval, !dbg !697
  br label %return, !dbg !697

if.end:                                           ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !698, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !699, !tbaa !620
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !700, !tbaa !594
  %5 = load i8*, i8** %end.addr, align 8, !dbg !701, !tbaa !594
  %6 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !702, !tbaa !594
  %call = call i32 @externalSubset1(%struct.prolog_state* %2, i32 %3, i8* %4, i8* %5, %struct.encoding* %6), !dbg !703
  store i32 %call, i32* %retval, !dbg !704
  br label %return, !dbg !704

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, !dbg !705
  ret i32 %7, !dbg !705
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !190, metadata !598), !dbg !706
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !191, metadata !598), !dbg !707
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !192, metadata !598), !dbg !708
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !193, metadata !598), !dbg !709
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !194, metadata !598), !dbg !710
  %0 = load i32, i32* %tok.addr, align 4, !dbg !711, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 11, label %sw.bb.1
    i32 13, label %sw.bb.2
    i32 14, label %sw.bb.3
    i32 16, label %sw.bb.4
    i32 29, label %sw.bb.5
  ], !dbg !712

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval, !dbg !713
  br label %return, !dbg !713

sw.bb.1:                                          ; preds = %entry
  store i32 55, i32* %retval, !dbg !715
  br label %return, !dbg !715

sw.bb.2:                                          ; preds = %entry
  store i32 56, i32* %retval, !dbg !716
  br label %return, !dbg !716

sw.bb.3:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !717
  br label %return, !dbg !717

sw.bb.4:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !718, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !720
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !720, !tbaa !648
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !721, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !722, !tbaa !594
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !723, !tbaa !594
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 13, !dbg !724
  %6 = load i32, i32* %minBytesPerChar, align 4, !dbg !724, !tbaa !654
  %mul = mul i32 2, %6, !dbg !725
  %idx.ext = sext i32 %mul to i64, !dbg !726
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !726
  %7 = load i8*, i8** %end.addr, align 8, !dbg !727, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %add.ptr, i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_DOCTYPE, i32 0, i32 0)), !dbg !728
  %tobool = icmp ne i32 %call, 0, !dbg !728
  br i1 %tobool, label %if.end, label %if.then, !dbg !729

if.then:                                          ; preds = %sw.bb.4
  br label %sw.epilog, !dbg !730

if.end:                                           ; preds = %sw.bb.4
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !731, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0, !dbg !732
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !733, !tbaa !603
  store i32 3, i32* %retval, !dbg !734
  br label %return, !dbg !734

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !735, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %9, i32 0, i32 0, !dbg !736
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @error, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !737, !tbaa !603
  store i32 2, i32* %retval, !dbg !738
  br label %return, !dbg !738

sw.epilog:                                        ; preds = %entry, %if.then
  %10 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !739, !tbaa !594
  %11 = load i32, i32* %tok.addr, align 4, !dbg !740, !tbaa !620
  %call7 = call i32 @common(%struct.prolog_state* %10, i32 %11), !dbg !741
  store i32 %call7, i32* %retval, !dbg !742
  br label %return, !dbg !742

return:                                           ; preds = %sw.epilog, %sw.bb.5, %if.end, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %12 = load i32, i32* %retval, !dbg !743
  ret i32 %12, !dbg !743
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !197, metadata !598), !dbg !744
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !198, metadata !598), !dbg !745
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !199, metadata !598), !dbg !746
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !200, metadata !598), !dbg !747
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !201, metadata !598), !dbg !748
  %0 = load i32, i32* %tok.addr, align 4, !dbg !749, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 41, label %sw.bb.1
  ], !dbg !750

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %retval, !dbg !751
  br label %return, !dbg !751

sw.bb.1:                                          ; preds = %entry, %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !753, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !754
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !755, !tbaa !603
  store i32 4, i32* %retval, !dbg !756
  br label %return, !dbg !756

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !757, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !758, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !759
  store i32 %call, i32* %retval, !dbg !760
  br label %return, !dbg !760

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !761
  ret i32 %4, !dbg !761
}

; Function Attrs: nounwind uwtable
define internal i32 @error(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !529, metadata !598), !dbg !762
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !530, metadata !598), !dbg !763
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !531, metadata !598), !dbg !764
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !532, metadata !598), !dbg !765
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !533, metadata !598), !dbg !766
  ret i32 0, !dbg !767
}

; Function Attrs: nounwind uwtable
define internal i32 @common(%struct.prolog_state* %state, i32 %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !538, metadata !598), !dbg !768
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !539, metadata !598), !dbg !769
  %0 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !770, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %0, i32 0, i32 4, !dbg !772
  %1 = load i32, i32* %documentEntity, align 4, !dbg !772, !tbaa !609
  %tobool = icmp ne i32 %1, 0, !dbg !770
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !773

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %tok.addr, align 4, !dbg !774, !tbaa !620
  %cmp = icmp eq i32 %2, 28, !dbg !776
  br i1 %cmp, label %if.then, label %if.end, !dbg !777

if.then:                                          ; preds = %land.lhs.true
  store i32 59, i32* %retval, !dbg !778
  br label %return, !dbg !778

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !779, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !780
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @error, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !781, !tbaa !603
  store i32 -1, i32* %retval, !dbg !782
  br label %return, !dbg !782

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, !dbg !783
  ret i32 %4, !dbg !783
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !204, metadata !598), !dbg !784
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !205, metadata !598), !dbg !785
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !206, metadata !598), !dbg !786
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !207, metadata !598), !dbg !787
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !208, metadata !598), !dbg !788
  %0 = load i32, i32* %tok.addr, align 4, !dbg !789, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 25, label %sw.bb.1
    i32 17, label %sw.bb.2
    i32 18, label %sw.bb.4
  ], !dbg !790

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %retval, !dbg !791
  br label %return, !dbg !791

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !793, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !794
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !795, !tbaa !603
  store i32 7, i32* %retval, !dbg !796
  br label %return, !dbg !796

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !797, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0, !dbg !798
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !799, !tbaa !603
  store i32 8, i32* %retval, !dbg !800
  br label %return, !dbg !800

sw.bb.4:                                          ; preds = %entry
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !801, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %3, i32 0, i32 3, !dbg !803
  %4 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !803, !tbaa !648
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !804, !tbaa !594
  %6 = load i8*, i8** %ptr.addr, align 8, !dbg !805, !tbaa !594
  %7 = load i8*, i8** %end.addr, align 8, !dbg !806, !tbaa !594
  %call = call i32 %4(%struct.encoding* %5, i8* %6, i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_SYSTEM, i32 0, i32 0)), !dbg !807
  %tobool = icmp ne i32 %call, 0, !dbg !807
  br i1 %tobool, label %if.then, label %if.end, !dbg !808

if.then:                                          ; preds = %sw.bb.4
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !809, !tbaa !594
  %handler5 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0, !dbg !811
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler5, align 8, !dbg !812, !tbaa !603
  store i32 3, i32* %retval, !dbg !813
  br label %return, !dbg !813

if.end:                                           ; preds = %sw.bb.4
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !814, !tbaa !594
  %nameMatchesAscii6 = getelementptr inbounds %struct.encoding, %struct.encoding* %9, i32 0, i32 3, !dbg !816
  %10 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii6, align 8, !dbg !816, !tbaa !648
  %11 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !817, !tbaa !594
  %12 = load i8*, i8** %ptr.addr, align 8, !dbg !818, !tbaa !594
  %13 = load i8*, i8** %end.addr, align 8, !dbg !819, !tbaa !594
  %call7 = call i32 %10(%struct.encoding* %11, i8* %12, i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PUBLIC, i32 0, i32 0)), !dbg !820
  %tobool8 = icmp ne i32 %call7, 0, !dbg !820
  br i1 %tobool8, label %if.then.9, label %if.end.11, !dbg !821

if.then.9:                                        ; preds = %if.end
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !822, !tbaa !594
  %handler10 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 0, !dbg !824
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler10, align 8, !dbg !825, !tbaa !603
  store i32 3, i32* %retval, !dbg !826
  br label %return, !dbg !826

if.end.11:                                        ; preds = %if.end
  br label %sw.epilog, !dbg !827

sw.epilog:                                        ; preds = %entry, %if.end.11
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !828, !tbaa !594
  %16 = load i32, i32* %tok.addr, align 4, !dbg !829, !tbaa !620
  %call12 = call i32 @common(%struct.prolog_state* %15, i32 %16), !dbg !830
  store i32 %call12, i32* %retval, !dbg !831
  br label %return, !dbg !831

return:                                           ; preds = %sw.epilog, %if.then.9, %if.then, %sw.bb.2, %sw.bb.1, %sw.bb
  %17 = load i32, i32* %retval, !dbg !832
  ret i32 %17, !dbg !832
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !211, metadata !598), !dbg !833
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !212, metadata !598), !dbg !834
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !213, metadata !598), !dbg !835
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !214, metadata !598), !dbg !836
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !215, metadata !598), !dbg !837
  %0 = load i32, i32* %tok.addr, align 4, !dbg !838, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 16, label %sw.bb.1
    i32 11, label %sw.bb.32
    i32 13, label %sw.bb.33
    i32 28, label %sw.bb.34
    i32 26, label %sw.bb.35
    i32 -4, label %sw.bb.37
  ], !dbg !839

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval, !dbg !840
  br label %return, !dbg !840

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !842, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !844
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !844, !tbaa !648
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !845, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !846, !tbaa !594
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !847, !tbaa !594
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 13, !dbg !848
  %6 = load i32, i32* %minBytesPerChar, align 4, !dbg !848, !tbaa !654
  %mul = mul i32 2, %6, !dbg !849
  %idx.ext = sext i32 %mul to i64, !dbg !850
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !850
  %7 = load i8*, i8** %end.addr, align 8, !dbg !851, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %add.ptr, i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_ENTITY, i32 0, i32 0)), !dbg !852
  %tobool = icmp ne i32 %call, 0, !dbg !852
  br i1 %tobool, label %if.then, label %if.end, !dbg !853

if.then:                                          ; preds = %sw.bb.1
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !854, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0, !dbg !856
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !857, !tbaa !603
  store i32 11, i32* %retval, !dbg !858
  br label %return, !dbg !858

if.end:                                           ; preds = %sw.bb.1
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !859, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %9, i32 0, i32 3, !dbg !861
  %10 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !861, !tbaa !648
  %11 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !862, !tbaa !594
  %12 = load i8*, i8** %ptr.addr, align 8, !dbg !863, !tbaa !594
  %13 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !864, !tbaa !594
  %minBytesPerChar3 = getelementptr inbounds %struct.encoding, %struct.encoding* %13, i32 0, i32 13, !dbg !865
  %14 = load i32, i32* %minBytesPerChar3, align 4, !dbg !865, !tbaa !654
  %mul4 = mul i32 2, %14, !dbg !866
  %idx.ext5 = sext i32 %mul4 to i64, !dbg !867
  %add.ptr6 = getelementptr i8, i8* %12, i64 %idx.ext5, !dbg !867
  %15 = load i8*, i8** %end.addr, align 8, !dbg !868, !tbaa !594
  %call7 = call i32 %10(%struct.encoding* %11, i8* %add.ptr6, i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_ATTLIST, i32 0, i32 0)), !dbg !869
  %tobool8 = icmp ne i32 %call7, 0, !dbg !869
  br i1 %tobool8, label %if.then.9, label %if.end.11, !dbg !870

if.then.9:                                        ; preds = %if.end
  %16 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !871, !tbaa !594
  %handler10 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %16, i32 0, i32 0, !dbg !873
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler10, align 8, !dbg !874, !tbaa !603
  store i32 33, i32* %retval, !dbg !875
  br label %return, !dbg !875

if.end.11:                                        ; preds = %if.end
  %17 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !876, !tbaa !594
  %nameMatchesAscii12 = getelementptr inbounds %struct.encoding, %struct.encoding* %17, i32 0, i32 3, !dbg !878
  %18 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii12, align 8, !dbg !878, !tbaa !648
  %19 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !879, !tbaa !594
  %20 = load i8*, i8** %ptr.addr, align 8, !dbg !880, !tbaa !594
  %21 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !881, !tbaa !594
  %minBytesPerChar13 = getelementptr inbounds %struct.encoding, %struct.encoding* %21, i32 0, i32 13, !dbg !882
  %22 = load i32, i32* %minBytesPerChar13, align 4, !dbg !882, !tbaa !654
  %mul14 = mul i32 2, %22, !dbg !883
  %idx.ext15 = sext i32 %mul14 to i64, !dbg !884
  %add.ptr16 = getelementptr i8, i8* %20, i64 %idx.ext15, !dbg !884
  %23 = load i8*, i8** %end.addr, align 8, !dbg !885, !tbaa !594
  %call17 = call i32 %18(%struct.encoding* %19, i8* %add.ptr16, i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_ELEMENT, i32 0, i32 0)), !dbg !886
  %tobool18 = icmp ne i32 %call17, 0, !dbg !886
  br i1 %tobool18, label %if.then.19, label %if.end.21, !dbg !887

if.then.19:                                       ; preds = %if.end.11
  %24 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !888, !tbaa !594
  %handler20 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %24, i32 0, i32 0, !dbg !890
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler20, align 8, !dbg !891, !tbaa !603
  store i32 39, i32* %retval, !dbg !892
  br label %return, !dbg !892

if.end.21:                                        ; preds = %if.end.11
  %25 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !893, !tbaa !594
  %nameMatchesAscii22 = getelementptr inbounds %struct.encoding, %struct.encoding* %25, i32 0, i32 3, !dbg !895
  %26 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii22, align 8, !dbg !895, !tbaa !648
  %27 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !896, !tbaa !594
  %28 = load i8*, i8** %ptr.addr, align 8, !dbg !897, !tbaa !594
  %29 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !898, !tbaa !594
  %minBytesPerChar23 = getelementptr inbounds %struct.encoding, %struct.encoding* %29, i32 0, i32 13, !dbg !899
  %30 = load i32, i32* %minBytesPerChar23, align 4, !dbg !899, !tbaa !654
  %mul24 = mul i32 2, %30, !dbg !900
  %idx.ext25 = sext i32 %mul24 to i64, !dbg !901
  %add.ptr26 = getelementptr i8, i8* %28, i64 %idx.ext25, !dbg !901
  %31 = load i8*, i8** %end.addr, align 8, !dbg !902, !tbaa !594
  %call27 = call i32 %26(%struct.encoding* %27, i8* %add.ptr26, i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @KW_NOTATION, i32 0, i32 0)), !dbg !903
  %tobool28 = icmp ne i32 %call27, 0, !dbg !903
  br i1 %tobool28, label %if.then.29, label %if.end.31, !dbg !904

if.then.29:                                       ; preds = %if.end.21
  %32 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !905, !tbaa !594
  %handler30 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %32, i32 0, i32 0, !dbg !907
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler30, align 8, !dbg !908, !tbaa !603
  store i32 17, i32* %retval, !dbg !909
  br label %return, !dbg !909

if.end.31:                                        ; preds = %if.end.21
  br label %sw.epilog, !dbg !910

sw.bb.32:                                         ; preds = %entry
  store i32 55, i32* %retval, !dbg !911
  br label %return, !dbg !911

sw.bb.33:                                         ; preds = %entry
  store i32 56, i32* %retval, !dbg !912
  br label %return, !dbg !912

sw.bb.34:                                         ; preds = %entry
  store i32 60, i32* %retval, !dbg !913
  br label %return, !dbg !913

sw.bb.35:                                         ; preds = %entry
  %33 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !914, !tbaa !594
  %handler36 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %33, i32 0, i32 0, !dbg !915
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype5, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler36, align 8, !dbg !916, !tbaa !603
  store i32 3, i32* %retval, !dbg !917
  br label %return, !dbg !917

sw.bb.37:                                         ; preds = %entry
  store i32 0, i32* %retval, !dbg !918
  br label %return, !dbg !918

sw.epilog:                                        ; preds = %entry, %if.end.31
  %34 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !919, !tbaa !594
  %35 = load i32, i32* %tok.addr, align 4, !dbg !920, !tbaa !620
  %call38 = call i32 @common(%struct.prolog_state* %34, i32 %35), !dbg !921
  store i32 %call38, i32* %retval, !dbg !922
  br label %return, !dbg !922

return:                                           ; preds = %sw.epilog, %sw.bb.37, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb.32, %if.then.29, %if.then.19, %if.then.9, %if.then, %sw.bb
  %36 = load i32, i32* %retval, !dbg !923
  ret i32 %36, !dbg !923
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !501, metadata !598), !dbg !924
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !502, metadata !598), !dbg !925
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !503, metadata !598), !dbg !926
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !504, metadata !598), !dbg !927
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !505, metadata !598), !dbg !928
  %0 = load i32, i32* %tok.addr, align 4, !dbg !929, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 11, label %sw.bb.1
    i32 13, label %sw.bb.2
    i32 29, label %sw.bb.3
  ], !dbg !930

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval, !dbg !931
  br label %return, !dbg !931

sw.bb.1:                                          ; preds = %entry
  store i32 55, i32* %retval, !dbg !933
  br label %return, !dbg !933

sw.bb.2:                                          ; preds = %entry
  store i32 56, i32* %retval, !dbg !934
  br label %return, !dbg !934

sw.bb.3:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !935, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !936
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @error, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !937, !tbaa !603
  store i32 2, i32* %retval, !dbg !938
  br label %return, !dbg !938

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !939, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !940, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !941
  store i32 %call, i32* %retval, !dbg !942
  br label %return, !dbg !942

return:                                           ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !943
  ret i32 %4, !dbg !943
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !508, metadata !598), !dbg !944
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !509, metadata !598), !dbg !945
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !510, metadata !598), !dbg !946
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !511, metadata !598), !dbg !947
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !512, metadata !598), !dbg !948
  %0 = load i32, i32* %tok.addr, align 4, !dbg !949, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ], !dbg !950

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %retval, !dbg !951
  br label %return, !dbg !951

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !953, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !954
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !955, !tbaa !603
  store i32 5, i32* %retval, !dbg !956
  br label %return, !dbg !956

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !957, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !958, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !959
  store i32 %call, i32* %retval, !dbg !960
  br label %return, !dbg !960

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !961
  ret i32 %4, !dbg !961
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !522, metadata !598), !dbg !962
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !523, metadata !598), !dbg !963
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !524, metadata !598), !dbg !964
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !525, metadata !598), !dbg !965
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !526, metadata !598), !dbg !966
  %0 = load i32, i32* %tok.addr, align 4, !dbg !967, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ], !dbg !968

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %retval, !dbg !969
  br label %return, !dbg !969

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !971, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !972
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !973, !tbaa !603
  store i32 6, i32* %retval, !dbg !974
  br label %return, !dbg !974

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !975, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !976, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !977
  store i32 %call, i32* %retval, !dbg !978
  br label %return, !dbg !978

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !979
  ret i32 %4, !dbg !979
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !218, metadata !598), !dbg !980
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !219, metadata !598), !dbg !981
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !220, metadata !598), !dbg !982
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !221, metadata !598), !dbg !983
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !222, metadata !598), !dbg !984
  %0 = load i32, i32* %tok.addr, align 4, !dbg !985, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 22, label %sw.bb.1
    i32 18, label %sw.bb.2
  ], !dbg !986

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval, !dbg !987
  br label %return, !dbg !987

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !989, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !990
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !991, !tbaa !603
  store i32 11, i32* %retval, !dbg !992
  br label %return, !dbg !992

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !993, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0, !dbg !994
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !995, !tbaa !603
  store i32 9, i32* %retval, !dbg !996
  br label %return, !dbg !996

sw.epilog:                                        ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !997, !tbaa !594
  %4 = load i32, i32* %tok.addr, align 4, !dbg !998, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4), !dbg !999
  store i32 %call, i32* %retval, !dbg !1000
  br label %return, !dbg !1000

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval, !dbg !1001
  ret i32 %5, !dbg !1001
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !330, metadata !598), !dbg !1002
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !331, metadata !598), !dbg !1003
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !332, metadata !598), !dbg !1004
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !333, metadata !598), !dbg !1005
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !334, metadata !598), !dbg !1006
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1007, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 41, label %sw.bb.1
  ], !dbg !1008

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval, !dbg !1009
  br label %return, !dbg !1009

sw.bb.1:                                          ; preds = %entry, %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1011, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1012
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1013, !tbaa !603
  store i32 34, i32* %retval, !dbg !1014
  br label %return, !dbg !1014

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1015, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1016, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1017
  store i32 %call, i32* %retval, !dbg !1018
  br label %return, !dbg !1018

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1019
  ret i32 %4, !dbg !1019
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !403, metadata !598), !dbg !1020
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !404, metadata !598), !dbg !1021
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !405, metadata !598), !dbg !1022
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !406, metadata !598), !dbg !1023
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !407, metadata !598), !dbg !1024
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1025, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 41, label %sw.bb.1
  ], !dbg !1026

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval, !dbg !1027
  br label %return, !dbg !1027

sw.bb.1:                                          ; preds = %entry, %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1029, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1030
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1031, !tbaa !603
  store i32 40, i32* %retval, !dbg !1032
  br label %return, !dbg !1032

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1033, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1034, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1035
  store i32 %call, i32* %retval, !dbg !1036
  br label %return, !dbg !1036

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1037
  ret i32 %4, !dbg !1037
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !459, metadata !598), !dbg !1038
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !460, metadata !598), !dbg !1039
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !461, metadata !598), !dbg !1040
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !462, metadata !598), !dbg !1041
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !463, metadata !598), !dbg !1042
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1043, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
  ], !dbg !1044

sw.bb:                                            ; preds = %entry
  store i32 17, i32* %retval, !dbg !1045
  br label %return, !dbg !1045

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1047, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1048
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1049, !tbaa !603
  store i32 18, i32* %retval, !dbg !1050
  br label %return, !dbg !1050

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1051, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1052, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1053
  store i32 %call, i32* %retval, !dbg !1054
  br label %return, !dbg !1054

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1055
  ret i32 %4, !dbg !1055
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !494, metadata !598), !dbg !1056
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !495, metadata !598), !dbg !1057
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !496, metadata !598), !dbg !1058
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !497, metadata !598), !dbg !1059
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !498, metadata !598), !dbg !1060
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1061, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 17, label %sw.bb.1
  ], !dbg !1062

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %retval, !dbg !1063
  br label %return, !dbg !1063

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1065, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1066
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1067, !tbaa !603
  store i32 8, i32* %retval, !dbg !1068
  br label %return, !dbg !1068

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1069, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1070, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1071
  store i32 %call, i32* %retval, !dbg !1072
  br label %return, !dbg !1072

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1073
  ret i32 %4, !dbg !1073
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !225, metadata !598), !dbg !1074
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !226, metadata !598), !dbg !1075
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !227, metadata !598), !dbg !1076
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !228, metadata !598), !dbg !1077
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !229, metadata !598), !dbg !1078
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1079, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
  ], !dbg !1080

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval, !dbg !1081
  br label %return, !dbg !1081

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1083, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1084
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1085, !tbaa !603
  store i32 10, i32* %retval, !dbg !1086
  br label %return, !dbg !1086

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1087, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1088, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1089
  store i32 %call, i32* %retval, !dbg !1090
  br label %return, !dbg !1090

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1091
  ret i32 %4, !dbg !1091
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !295, metadata !598), !dbg !1092
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !296, metadata !598), !dbg !1093
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !297, metadata !598), !dbg !1094
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !298, metadata !598), !dbg !1095
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !299, metadata !598), !dbg !1096
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1097, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 27, label %sw.bb.8
  ], !dbg !1098

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval, !dbg !1099
  br label %return, !dbg !1099

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1101, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !1103
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1103, !tbaa !648
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1104, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !1105, !tbaa !594
  %5 = load i8*, i8** %end.addr, align 8, !dbg !1106, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_SYSTEM, i32 0, i32 0)), !dbg !1107
  %tobool = icmp ne i32 %call, 0, !dbg !1107
  br i1 %tobool, label %if.then, label %if.end, !dbg !1108

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1109, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0, !dbg !1111
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1112, !tbaa !603
  store i32 11, i32* %retval, !dbg !1113
  br label %return, !dbg !1113

if.end:                                           ; preds = %sw.bb.1
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1114, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 3, !dbg !1116
  %8 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !1116, !tbaa !648
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1117, !tbaa !594
  %10 = load i8*, i8** %ptr.addr, align 8, !dbg !1118, !tbaa !594
  %11 = load i8*, i8** %end.addr, align 8, !dbg !1119, !tbaa !594
  %call3 = call i32 %8(%struct.encoding* %9, i8* %10, i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PUBLIC, i32 0, i32 0)), !dbg !1120
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1120
  br i1 %tobool4, label %if.then.5, label %if.end.7, !dbg !1121

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1122, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0, !dbg !1124
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !1125, !tbaa !603
  store i32 11, i32* %retval, !dbg !1126
  br label %return, !dbg !1126

if.end.7:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !1127

sw.bb.8:                                          ; preds = %entry
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1128, !tbaa !594
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0, !dbg !1129
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8, !dbg !1130, !tbaa !603
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1131, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 2, !dbg !1132
  store i32 11, i32* %role_none, align 4, !dbg !1133, !tbaa !1134
  store i32 12, i32* %retval, !dbg !1135
  br label %return, !dbg !1135

sw.epilog:                                        ; preds = %entry, %if.end.7
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1136, !tbaa !594
  %16 = load i32, i32* %tok.addr, align 4, !dbg !1137, !tbaa !620
  %call10 = call i32 @common(%struct.prolog_state* %15, i32 %16), !dbg !1138
  store i32 %call10, i32* %retval, !dbg !1139
  br label %return, !dbg !1139

return:                                           ; preds = %sw.epilog, %sw.bb.8, %if.then.5, %if.then, %sw.bb
  %17 = load i32, i32* %retval, !dbg !1140
  ret i32 %17, !dbg !1140
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !232, metadata !598), !dbg !1141
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !233, metadata !598), !dbg !1142
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !234, metadata !598), !dbg !1143
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !235, metadata !598), !dbg !1144
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !236, metadata !598), !dbg !1145
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1146, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 27, label %sw.bb.8
  ], !dbg !1147

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval, !dbg !1148
  br label %return, !dbg !1148

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1150, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !1152
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1152, !tbaa !648
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1153, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !1154, !tbaa !594
  %5 = load i8*, i8** %end.addr, align 8, !dbg !1155, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_SYSTEM, i32 0, i32 0)), !dbg !1156
  %tobool = icmp ne i32 %call, 0, !dbg !1156
  br i1 %tobool, label %if.then, label %if.end, !dbg !1157

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1158, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0, !dbg !1160
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity9, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1161, !tbaa !603
  store i32 11, i32* %retval, !dbg !1162
  br label %return, !dbg !1162

if.end:                                           ; preds = %sw.bb.1
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1163, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 3, !dbg !1165
  %8 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !1165, !tbaa !648
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1166, !tbaa !594
  %10 = load i8*, i8** %ptr.addr, align 8, !dbg !1167, !tbaa !594
  %11 = load i8*, i8** %end.addr, align 8, !dbg !1168, !tbaa !594
  %call3 = call i32 %8(%struct.encoding* %9, i8* %10, i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PUBLIC, i32 0, i32 0)), !dbg !1169
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1169
  br i1 %tobool4, label %if.then.5, label %if.end.7, !dbg !1170

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1171, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0, !dbg !1173
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity8, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !1174, !tbaa !603
  store i32 11, i32* %retval, !dbg !1175
  br label %return, !dbg !1175

if.end.7:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !1176

sw.bb.8:                                          ; preds = %entry
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1177, !tbaa !594
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0, !dbg !1178
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8, !dbg !1179, !tbaa !603
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1180, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 2, !dbg !1181
  store i32 11, i32* %role_none, align 4, !dbg !1182, !tbaa !1134
  store i32 12, i32* %retval, !dbg !1183
  br label %return, !dbg !1183

sw.epilog:                                        ; preds = %entry, %if.end.7
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1184, !tbaa !594
  %16 = load i32, i32* %tok.addr, align 4, !dbg !1185, !tbaa !620
  %call10 = call i32 @common(%struct.prolog_state* %15, i32 %16), !dbg !1186
  store i32 %call10, i32* %retval, !dbg !1187
  br label %return, !dbg !1187

return:                                           ; preds = %sw.epilog, %sw.bb.8, %if.then.5, %if.then, %sw.bb
  %17 = load i32, i32* %retval, !dbg !1188
  ret i32 %17, !dbg !1188
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !239, metadata !598), !dbg !1189
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !240, metadata !598), !dbg !1190
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !241, metadata !598), !dbg !1191
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !242, metadata !598), !dbg !1192
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !243, metadata !598), !dbg !1193
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1194, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ], !dbg !1195

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval, !dbg !1196
  br label %return, !dbg !1196

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1198, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1199
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity10, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1200, !tbaa !603
  store i32 13, i32* %retval, !dbg !1201
  br label %return, !dbg !1201

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1202, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1203, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1204
  store i32 %call, i32* %retval, !dbg !1205
  br label %return, !dbg !1205

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1206
  ret i32 %4, !dbg !1206
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !281, metadata !598), !dbg !1207
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !282, metadata !598), !dbg !1208
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !283, metadata !598), !dbg !1209
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !284, metadata !598), !dbg !1210
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !285, metadata !598), !dbg !1211
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1212, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ], !dbg !1213

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval, !dbg !1214
  br label %return, !dbg !1214

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1216, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1217
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity9, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1218, !tbaa !603
  store i32 14, i32* %retval, !dbg !1219
  br label %return, !dbg !1219

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1220, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1221, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1222
  store i32 %call, i32* %retval, !dbg !1223
  br label %return, !dbg !1223

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1224
  ret i32 %4, !dbg !1224
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !288, metadata !598), !dbg !1225
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !289, metadata !598), !dbg !1226
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !290, metadata !598), !dbg !1227
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !291, metadata !598), !dbg !1228
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !292, metadata !598), !dbg !1229
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1230, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 17, label %sw.bb.1
  ], !dbg !1231

sw.bb:                                            ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1232, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 2, !dbg !1234
  %2 = load i32, i32* %role_none, align 4, !dbg !1234, !tbaa !1134
  store i32 %2, i32* %retval, !dbg !1235
  br label %return, !dbg !1235

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1236, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 4, !dbg !1237
  %4 = load i32, i32* %documentEntity, align 4, !dbg !1237, !tbaa !609
  %tobool = icmp ne i32 %4, 0, !dbg !1238
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, !dbg !1238
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1239, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0, !dbg !1240
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1241, !tbaa !603
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1242, !tbaa !594
  %role_none2 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 2, !dbg !1243
  %7 = load i32, i32* %role_none2, align 4, !dbg !1243, !tbaa !1134
  store i32 %7, i32* %retval, !dbg !1244
  br label %return, !dbg !1244

sw.epilog:                                        ; preds = %entry
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1245, !tbaa !594
  %9 = load i32, i32* %tok.addr, align 4, !dbg !1246, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %8, i32 %9), !dbg !1247
  store i32 %call, i32* %retval, !dbg !1248
  br label %return, !dbg !1248

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %10 = load i32, i32* %retval, !dbg !1249
  ret i32 %10, !dbg !1249
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !246, metadata !598), !dbg !1250
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !247, metadata !598), !dbg !1251
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !248, metadata !598), !dbg !1252
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !249, metadata !598), !dbg !1253
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !250, metadata !598), !dbg !1254
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1255, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 17, label %sw.bb.1
  ], !dbg !1256

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval, !dbg !1257
  br label %return, !dbg !1257

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1259, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 4, !dbg !1260
  %2 = load i32, i32* %documentEntity, align 4, !dbg !1260, !tbaa !609
  %tobool = icmp ne i32 %2, 0, !dbg !1261
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, !dbg !1261
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1262, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !1263
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1264, !tbaa !603
  store i32 15, i32* %retval, !dbg !1265
  br label %return, !dbg !1265

sw.epilog:                                        ; preds = %entry
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1266, !tbaa !594
  %5 = load i32, i32* %tok.addr, align 4, !dbg !1267, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %4, i32 %5), !dbg !1268
  store i32 %call, i32* %retval, !dbg !1269
  br label %return, !dbg !1269

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %6 = load i32, i32* %retval, !dbg !1270
  ret i32 %6, !dbg !1270
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !253, metadata !598), !dbg !1271
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !254, metadata !598), !dbg !1272
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !255, metadata !598), !dbg !1273
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !256, metadata !598), !dbg !1274
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !257, metadata !598), !dbg !1275
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1276, !tbaa !620
  switch i32 %0, label %sw.default [
    i32 33, label %sw.bb
    i32 34, label %sw.bb.1
    i32 15, label %sw.bb.3
    i32 26, label %sw.epilog
    i32 -4, label %sw.bb.4
  ], !dbg !1277

sw.bb:                                            ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1278, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1280
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @condSect0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1281, !tbaa !603
  store i32 0, i32* %retval, !dbg !1282
  br label %return, !dbg !1282

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1283, !tbaa !594
  %includeLevel = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 3, !dbg !1285
  %3 = load i32, i32* %includeLevel, align 4, !dbg !1285, !tbaa !613
  %cmp = icmp eq i32 %3, 0, !dbg !1286
  br i1 %cmp, label %if.then, label %if.end, !dbg !1287

if.then:                                          ; preds = %sw.bb.1
  br label %sw.epilog, !dbg !1288

if.end:                                           ; preds = %sw.bb.1
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1289, !tbaa !594
  %includeLevel2 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 3, !dbg !1290
  %5 = load i32, i32* %includeLevel2, align 4, !dbg !1291, !tbaa !613
  %sub = sub i32 %5, 1, !dbg !1291
  store i32 %sub, i32* %includeLevel2, align 4, !dbg !1291, !tbaa !613
  store i32 0, i32* %retval, !dbg !1292
  br label %return, !dbg !1292

sw.bb.3:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1293
  br label %return, !dbg !1293

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1294, !tbaa !594
  %includeLevel5 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 3, !dbg !1296
  %7 = load i32, i32* %includeLevel5, align 4, !dbg !1296, !tbaa !613
  %tobool = icmp ne i32 %7, 0, !dbg !1294
  br i1 %tobool, label %if.then.6, label %if.end.7, !dbg !1297

if.then.6:                                        ; preds = %sw.bb.4
  br label %sw.epilog, !dbg !1298

if.end.7:                                         ; preds = %sw.bb.4
  store i32 0, i32* %retval, !dbg !1299
  br label %return, !dbg !1299

sw.default:                                       ; preds = %entry
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1300, !tbaa !594
  %9 = load i32, i32* %tok.addr, align 4, !dbg !1301, !tbaa !620
  %10 = load i8*, i8** %ptr.addr, align 8, !dbg !1302, !tbaa !594
  %11 = load i8*, i8** %end.addr, align 8, !dbg !1303, !tbaa !594
  %12 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1304, !tbaa !594
  %call = call i32 @internalSubset(%struct.prolog_state* %8, i32 %9, i8* %10, i8* %11, %struct.encoding* %12), !dbg !1305
  store i32 %call, i32* %retval, !dbg !1306
  br label %return, !dbg !1306

sw.epilog:                                        ; preds = %if.then.6, %entry, %if.then
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1307, !tbaa !594
  %14 = load i32, i32* %tok.addr, align 4, !dbg !1308, !tbaa !620
  %call8 = call i32 @common(%struct.prolog_state* %13, i32 %14), !dbg !1309
  store i32 %call8, i32* %retval, !dbg !1310
  br label %return, !dbg !1310

return:                                           ; preds = %sw.epilog, %sw.default, %if.end.7, %sw.bb.3, %if.end, %sw.bb
  %15 = load i32, i32* %retval, !dbg !1311
  ret i32 %15, !dbg !1311
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !260, metadata !598), !dbg !1312
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !261, metadata !598), !dbg !1313
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !262, metadata !598), !dbg !1314
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !263, metadata !598), !dbg !1315
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !264, metadata !598), !dbg !1316
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1317, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
  ], !dbg !1318

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval, !dbg !1319
  br label %return, !dbg !1319

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1321, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !1323
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1323, !tbaa !648
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1324, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !1325, !tbaa !594
  %5 = load i8*, i8** %end.addr, align 8, !dbg !1326, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_INCLUDE, i32 0, i32 0)), !dbg !1327
  %tobool = icmp ne i32 %call, 0, !dbg !1327
  br i1 %tobool, label %if.then, label %if.end, !dbg !1328

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1329, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0, !dbg !1331
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @condSect1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1332, !tbaa !603
  store i32 0, i32* %retval, !dbg !1333
  br label %return, !dbg !1333

if.end:                                           ; preds = %sw.bb.1
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1334, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 3, !dbg !1336
  %8 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !1336, !tbaa !648
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1337, !tbaa !594
  %10 = load i8*, i8** %ptr.addr, align 8, !dbg !1338, !tbaa !594
  %11 = load i8*, i8** %end.addr, align 8, !dbg !1339, !tbaa !594
  %call3 = call i32 %8(%struct.encoding* %9, i8* %10, i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_IGNORE, i32 0, i32 0)), !dbg !1340
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1340
  br i1 %tobool4, label %if.then.5, label %if.end.7, !dbg !1341

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1342, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0, !dbg !1344
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @condSect2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !1345, !tbaa !603
  store i32 0, i32* %retval, !dbg !1346
  br label %return, !dbg !1346

if.end.7:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !1347

sw.epilog:                                        ; preds = %entry, %if.end.7
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1348, !tbaa !594
  %14 = load i32, i32* %tok.addr, align 4, !dbg !1349, !tbaa !620
  %call8 = call i32 @common(%struct.prolog_state* %13, i32 %14), !dbg !1350
  store i32 %call8, i32* %retval, !dbg !1351
  br label %return, !dbg !1351

return:                                           ; preds = %sw.epilog, %if.then.5, %if.then, %sw.bb
  %15 = load i32, i32* %retval, !dbg !1352
  ret i32 %15, !dbg !1352
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !267, metadata !598), !dbg !1353
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !268, metadata !598), !dbg !1354
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !269, metadata !598), !dbg !1355
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !270, metadata !598), !dbg !1356
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !271, metadata !598), !dbg !1357
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1358, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 25, label %sw.bb.1
  ], !dbg !1359

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval, !dbg !1360
  br label %return, !dbg !1360

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1362, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1363
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1364, !tbaa !603
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1365, !tbaa !594
  %includeLevel = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 3, !dbg !1366
  %3 = load i32, i32* %includeLevel, align 4, !dbg !1367, !tbaa !613
  %add = add i32 %3, 1, !dbg !1367
  store i32 %add, i32* %includeLevel, align 4, !dbg !1367, !tbaa !613
  store i32 0, i32* %retval, !dbg !1368
  br label %return, !dbg !1368

sw.epilog:                                        ; preds = %entry
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1369, !tbaa !594
  %5 = load i32, i32* %tok.addr, align 4, !dbg !1370, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %4, i32 %5), !dbg !1371
  store i32 %call, i32* %retval, !dbg !1372
  br label %return, !dbg !1372

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %6 = load i32, i32* %retval, !dbg !1373
  ret i32 %6, !dbg !1373
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !274, metadata !598), !dbg !1374
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !275, metadata !598), !dbg !1375
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !276, metadata !598), !dbg !1376
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !277, metadata !598), !dbg !1377
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !278, metadata !598), !dbg !1378
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1379, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 25, label %sw.bb.1
  ], !dbg !1380

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval, !dbg !1381
  br label %return, !dbg !1381

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1383, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1384
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1385, !tbaa !603
  store i32 58, i32* %retval, !dbg !1386
  br label %return, !dbg !1386

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1387, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1388, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1389
  store i32 %call, i32* %retval, !dbg !1390
  br label %return, !dbg !1390

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1391
  ret i32 %4, !dbg !1391
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !302, metadata !598), !dbg !1392
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !303, metadata !598), !dbg !1393
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !304, metadata !598), !dbg !1394
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !305, metadata !598), !dbg !1395
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !306, metadata !598), !dbg !1396
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1397, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ], !dbg !1398

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval, !dbg !1399
  br label %return, !dbg !1399

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1401, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1402
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity5, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1403, !tbaa !603
  store i32 13, i32* %retval, !dbg !1404
  br label %return, !dbg !1404

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1405, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1406, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1407
  store i32 %call, i32* %retval, !dbg !1408
  br label %return, !dbg !1408

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1409
  ret i32 %4, !dbg !1409
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !323, metadata !598), !dbg !1410
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !324, metadata !598), !dbg !1411
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !325, metadata !598), !dbg !1412
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !326, metadata !598), !dbg !1413
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !327, metadata !598), !dbg !1414
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1415, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ], !dbg !1416

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval, !dbg !1417
  br label %return, !dbg !1417

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1419, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1420
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1421, !tbaa !603
  store i32 14, i32* %retval, !dbg !1422
  br label %return, !dbg !1422

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1423, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1424, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1425
  store i32 %call, i32* %retval, !dbg !1426
  br label %return, !dbg !1426

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1427
  ret i32 %4, !dbg !1427
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !309, metadata !598), !dbg !1428
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !310, metadata !598), !dbg !1429
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !311, metadata !598), !dbg !1430
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !312, metadata !598), !dbg !1431
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !313, metadata !598), !dbg !1432
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1433, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 17, label %sw.bb.1
    i32 18, label %sw.bb.2
  ], !dbg !1434

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval, !dbg !1435
  br label %return, !dbg !1435

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1437, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 4, !dbg !1438
  %2 = load i32, i32* %documentEntity, align 4, !dbg !1438, !tbaa !609
  %tobool = icmp ne i32 %2, 0, !dbg !1439
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, !dbg !1439
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1440, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !1441
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1442, !tbaa !603
  store i32 15, i32* %retval, !dbg !1443
  br label %return, !dbg !1443

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1444, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %4, i32 0, i32 3, !dbg !1446
  %5 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1446, !tbaa !648
  %6 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1447, !tbaa !594
  %7 = load i8*, i8** %ptr.addr, align 8, !dbg !1448, !tbaa !594
  %8 = load i8*, i8** %end.addr, align 8, !dbg !1449, !tbaa !594
  %call = call i32 %5(%struct.encoding* %6, i8* %7, i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @KW_NDATA, i32 0, i32 0)), !dbg !1450
  %tobool3 = icmp ne i32 %call, 0, !dbg !1450
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1451

if.then:                                          ; preds = %sw.bb.2
  %9 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1452, !tbaa !594
  %handler4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %9, i32 0, i32 0, !dbg !1454
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler4, align 8, !dbg !1455, !tbaa !603
  store i32 11, i32* %retval, !dbg !1456
  br label %return, !dbg !1456

if.end:                                           ; preds = %sw.bb.2
  br label %sw.epilog, !dbg !1457

sw.epilog:                                        ; preds = %entry, %if.end
  %10 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1458, !tbaa !594
  %11 = load i32, i32* %tok.addr, align 4, !dbg !1459, !tbaa !620
  %call5 = call i32 @common(%struct.prolog_state* %10, i32 %11), !dbg !1460
  store i32 %call5, i32* %retval, !dbg !1461
  br label %return, !dbg !1461

return:                                           ; preds = %sw.epilog, %if.then, %sw.bb.1, %sw.bb
  %12 = load i32, i32* %retval, !dbg !1462
  ret i32 %12, !dbg !1462
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !316, metadata !598), !dbg !1463
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !317, metadata !598), !dbg !1464
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !318, metadata !598), !dbg !1465
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !319, metadata !598), !dbg !1466
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !320, metadata !598), !dbg !1467
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1468, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
  ], !dbg !1469

sw.bb:                                            ; preds = %entry
  store i32 11, i32* %retval, !dbg !1470
  br label %return, !dbg !1470

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1472, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1473
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1474, !tbaa !603
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1475, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2, !dbg !1476
  store i32 11, i32* %role_none, align 4, !dbg !1477, !tbaa !1134
  store i32 16, i32* %retval, !dbg !1478
  br label %return, !dbg !1478

sw.epilog:                                        ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1479, !tbaa !594
  %4 = load i32, i32* %tok.addr, align 4, !dbg !1480, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4), !dbg !1481
  store i32 %call, i32* %retval, !dbg !1482
  br label %return, !dbg !1482

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval, !dbg !1483
  ret i32 %5, !dbg !1483
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !337, metadata !598), !dbg !1484
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !338, metadata !598), !dbg !1485
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !339, metadata !598), !dbg !1486
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !340, metadata !598), !dbg !1487
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !341, metadata !598), !dbg !1488
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1489, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 17, label %sw.bb.1
    i32 18, label %sw.bb.2
    i32 41, label %sw.bb.2
  ], !dbg !1490

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval, !dbg !1491
  br label %return, !dbg !1491

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1493, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 4, !dbg !1494
  %2 = load i32, i32* %documentEntity, align 4, !dbg !1494, !tbaa !609
  %tobool = icmp ne i32 %2, 0, !dbg !1495
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, !dbg !1495
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1496, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !1497
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1498, !tbaa !603
  store i32 33, i32* %retval, !dbg !1499
  br label %return, !dbg !1499

sw.bb.2:                                          ; preds = %entry, %entry
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1500, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 0, !dbg !1501
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !1502, !tbaa !603
  store i32 22, i32* %retval, !dbg !1503
  br label %return, !dbg !1503

sw.epilog:                                        ; preds = %entry
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1504, !tbaa !594
  %6 = load i32, i32* %tok.addr, align 4, !dbg !1505, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %5, i32 %6), !dbg !1506
  store i32 %call, i32* %retval, !dbg !1507
  br label %return, !dbg !1507

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %7 = load i32, i32* %retval, !dbg !1508
  ret i32 %7, !dbg !1508
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
  %cleanup.dest.slot = alloca i32
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !344, metadata !598), !dbg !1509
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !345, metadata !598), !dbg !1510
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !346, metadata !598), !dbg !1511
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !347, metadata !598), !dbg !1512
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !348, metadata !598), !dbg !1513
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1514, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 23, label %sw.bb.8
  ], !dbg !1515

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval, !dbg !1516
  br label %return, !dbg !1516

sw.bb.1:                                          ; preds = %entry
  %1 = bitcast i32* %i to i8*, !dbg !1517
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1517
  call void @llvm.dbg.declare(metadata i32* %i, metadata !349, metadata !598), !dbg !1518
  store i32 0, i32* %i, align 4, !dbg !1519, !tbaa !620
  br label %for.cond, !dbg !1521

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %2 = load i32, i32* %i, align 4, !dbg !1522, !tbaa !620
  %cmp = icmp slt i32 %2, 8, !dbg !1526
  br i1 %cmp, label %for.body, label %for.end, !dbg !1527

for.body:                                         ; preds = %for.cond
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1528, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %3, i32 0, i32 3, !dbg !1530
  %4 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1530, !tbaa !648
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1531, !tbaa !594
  %6 = load i8*, i8** %ptr.addr, align 8, !dbg !1532, !tbaa !594
  %7 = load i8*, i8** %end.addr, align 8, !dbg !1533, !tbaa !594
  %8 = load i32, i32* %i, align 4, !dbg !1534, !tbaa !620
  %idxprom = sext i32 %8 to i64, !dbg !1535
  %arrayidx = getelementptr [8 x i8*], [8 x i8*]* @attlist2.types, i32 0, i64 %idxprom, !dbg !1535
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !1535, !tbaa !594
  %call = call i32 %4(%struct.encoding* %5, i8* %6, i8* %7, i8* %9), !dbg !1536
  %tobool = icmp ne i32 %call, 0, !dbg !1536
  br i1 %tobool, label %if.then, label %if.end, !dbg !1537

if.then:                                          ; preds = %for.body
  %10 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1538, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %10, i32 0, i32 0, !dbg !1540
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist8, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1541, !tbaa !603
  %11 = load i32, i32* %i, align 4, !dbg !1542, !tbaa !620
  %add = add i32 23, %11, !dbg !1543
  store i32 %add, i32* %retval, !dbg !1544
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1544

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1545

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !1547, !tbaa !620
  %inc = add i32 %12, 1, !dbg !1547
  store i32 %inc, i32* %i, align 4, !dbg !1547, !tbaa !620
  br label %for.cond, !dbg !1548

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !1549
  br label %cleanup, !dbg !1549

cleanup:                                          ; preds = %for.end, %if.then
  %13 = bitcast i32* %i to i8*, !dbg !1550
  call void @llvm.lifetime.end(i64 4, i8* %13) #2, !dbg !1550
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  %14 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1552, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %14, i32 0, i32 3, !dbg !1554
  %15 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !1554, !tbaa !648
  %16 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1555, !tbaa !594
  %17 = load i8*, i8** %ptr.addr, align 8, !dbg !1556, !tbaa !594
  %18 = load i8*, i8** %end.addr, align 8, !dbg !1557, !tbaa !594
  %call3 = call i32 %15(%struct.encoding* %16, i8* %17, i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @KW_NOTATION, i32 0, i32 0)), !dbg !1558
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1558
  br i1 %tobool4, label %if.then.5, label %if.end.7, !dbg !1559

if.then.5:                                        ; preds = %cleanup.cont
  %19 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1560, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %19, i32 0, i32 0, !dbg !1562
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist5, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !1563, !tbaa !603
  store i32 33, i32* %retval, !dbg !1564
  br label %return, !dbg !1564

if.end.7:                                         ; preds = %cleanup.cont
  br label %sw.epilog, !dbg !1565

sw.bb.8:                                          ; preds = %entry
  %20 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1566, !tbaa !594
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %20, i32 0, i32 0, !dbg !1567
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8, !dbg !1568, !tbaa !603
  store i32 33, i32* %retval, !dbg !1569
  br label %return, !dbg !1569

sw.epilog:                                        ; preds = %entry, %if.end.7
  %21 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1570, !tbaa !594
  %22 = load i32, i32* %tok.addr, align 4, !dbg !1571, !tbaa !620
  %call10 = call i32 @common(%struct.prolog_state* %21, i32 %22), !dbg !1572
  store i32 %call10, i32* %retval, !dbg !1573
  br label %return, !dbg !1573

return:                                           ; preds = %sw.epilog, %sw.bb.8, %if.then.5, %cleanup, %sw.bb
  %23 = load i32, i32* %retval, !dbg !1574
  ret i32 %23, !dbg !1574

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @attlist8(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !354, metadata !598), !dbg !1575
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !355, metadata !598), !dbg !1576
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !356, metadata !598), !dbg !1577
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !357, metadata !598), !dbg !1578
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !358, metadata !598), !dbg !1579
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1580, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 20, label %sw.bb.1
    i32 27, label %sw.bb.20
  ], !dbg !1581

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval, !dbg !1582
  br label %return, !dbg !1582

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1584, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !1586
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1586, !tbaa !648
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1587, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !1588, !tbaa !594
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1589, !tbaa !594
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 13, !dbg !1590
  %6 = load i32, i32* %minBytesPerChar, align 4, !dbg !1590, !tbaa !654
  %idx.ext = sext i32 %6 to i64, !dbg !1591
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !1591
  %7 = load i8*, i8** %end.addr, align 8, !dbg !1592, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %add.ptr, i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_IMPLIED, i32 0, i32 0)), !dbg !1593
  %tobool = icmp ne i32 %call, 0, !dbg !1593
  br i1 %tobool, label %if.then, label %if.end, !dbg !1594

if.then:                                          ; preds = %sw.bb.1
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1595, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0, !dbg !1597
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1598, !tbaa !603
  store i32 35, i32* %retval, !dbg !1599
  br label %return, !dbg !1599

if.end:                                           ; preds = %sw.bb.1
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1600, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %9, i32 0, i32 3, !dbg !1602
  %10 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !1602, !tbaa !648
  %11 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1603, !tbaa !594
  %12 = load i8*, i8** %ptr.addr, align 8, !dbg !1604, !tbaa !594
  %13 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1605, !tbaa !594
  %minBytesPerChar3 = getelementptr inbounds %struct.encoding, %struct.encoding* %13, i32 0, i32 13, !dbg !1606
  %14 = load i32, i32* %minBytesPerChar3, align 4, !dbg !1606, !tbaa !654
  %idx.ext4 = sext i32 %14 to i64, !dbg !1607
  %add.ptr5 = getelementptr i8, i8* %12, i64 %idx.ext4, !dbg !1607
  %15 = load i8*, i8** %end.addr, align 8, !dbg !1608, !tbaa !594
  %call6 = call i32 %10(%struct.encoding* %11, i8* %add.ptr5, i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @KW_REQUIRED, i32 0, i32 0)), !dbg !1609
  %tobool7 = icmp ne i32 %call6, 0, !dbg !1609
  br i1 %tobool7, label %if.then.8, label %if.end.10, !dbg !1610

if.then.8:                                        ; preds = %if.end
  %16 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1611, !tbaa !594
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %16, i32 0, i32 0, !dbg !1613
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8, !dbg !1614, !tbaa !603
  store i32 36, i32* %retval, !dbg !1615
  br label %return, !dbg !1615

if.end.10:                                        ; preds = %if.end
  %17 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1616, !tbaa !594
  %nameMatchesAscii11 = getelementptr inbounds %struct.encoding, %struct.encoding* %17, i32 0, i32 3, !dbg !1618
  %18 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii11, align 8, !dbg !1618, !tbaa !648
  %19 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1619, !tbaa !594
  %20 = load i8*, i8** %ptr.addr, align 8, !dbg !1620, !tbaa !594
  %21 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1621, !tbaa !594
  %minBytesPerChar12 = getelementptr inbounds %struct.encoding, %struct.encoding* %21, i32 0, i32 13, !dbg !1622
  %22 = load i32, i32* %minBytesPerChar12, align 4, !dbg !1622, !tbaa !654
  %idx.ext13 = sext i32 %22 to i64, !dbg !1623
  %add.ptr14 = getelementptr i8, i8* %20, i64 %idx.ext13, !dbg !1623
  %23 = load i8*, i8** %end.addr, align 8, !dbg !1624, !tbaa !594
  %call15 = call i32 %18(%struct.encoding* %19, i8* %add.ptr14, i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @KW_FIXED, i32 0, i32 0)), !dbg !1625
  %tobool16 = icmp ne i32 %call15, 0, !dbg !1625
  br i1 %tobool16, label %if.then.17, label %if.end.19, !dbg !1626

if.then.17:                                       ; preds = %if.end.10
  %24 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1627, !tbaa !594
  %handler18 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %24, i32 0, i32 0, !dbg !1629
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist9, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler18, align 8, !dbg !1630, !tbaa !603
  store i32 33, i32* %retval, !dbg !1631
  br label %return, !dbg !1631

if.end.19:                                        ; preds = %if.end.10
  br label %sw.epilog, !dbg !1632

sw.bb.20:                                         ; preds = %entry
  %25 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1633, !tbaa !594
  %handler21 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %25, i32 0, i32 0, !dbg !1634
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler21, align 8, !dbg !1635, !tbaa !603
  store i32 37, i32* %retval, !dbg !1636
  br label %return, !dbg !1636

sw.epilog:                                        ; preds = %entry, %if.end.19
  %26 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1637, !tbaa !594
  %27 = load i32, i32* %tok.addr, align 4, !dbg !1638, !tbaa !620
  %call22 = call i32 @common(%struct.prolog_state* %26, i32 %27), !dbg !1639
  store i32 %call22, i32* %retval, !dbg !1640
  br label %return, !dbg !1640

return:                                           ; preds = %sw.epilog, %sw.bb.20, %if.then.17, %if.then.8, %if.then, %sw.bb
  %28 = load i32, i32* %retval, !dbg !1641
  ret i32 %28, !dbg !1641
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @attlist5(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !368, metadata !598), !dbg !1642
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !369, metadata !598), !dbg !1643
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !370, metadata !598), !dbg !1644
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !371, metadata !598), !dbg !1645
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !372, metadata !598), !dbg !1646
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1647, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 23, label %sw.bb.1
  ], !dbg !1648

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval, !dbg !1649
  br label %return, !dbg !1649

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1651, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1652
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1653, !tbaa !603
  store i32 33, i32* %retval, !dbg !1654
  br label %return, !dbg !1654

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1655, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1656, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1657
  store i32 %call, i32* %retval, !dbg !1658
  br label %return, !dbg !1658

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1659
  ret i32 %4, !dbg !1659
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !389, metadata !598), !dbg !1660
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !390, metadata !598), !dbg !1661
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !391, metadata !598), !dbg !1662
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !392, metadata !598), !dbg !1663
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !393, metadata !598), !dbg !1664
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1665, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 19, label %sw.bb.1
    i32 18, label %sw.bb.1
    i32 41, label %sw.bb.1
  ], !dbg !1666

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval, !dbg !1667
  br label %return, !dbg !1667

sw.bb.1:                                          ; preds = %entry, %entry, %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1669, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1670
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1671, !tbaa !603
  store i32 31, i32* %retval, !dbg !1672
  br label %return, !dbg !1672

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1673, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1674, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1675
  store i32 %call, i32* %retval, !dbg !1676
  br label %return, !dbg !1676

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1677
  ret i32 %4, !dbg !1677
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !361, metadata !598), !dbg !1678
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !362, metadata !598), !dbg !1679
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !363, metadata !598), !dbg !1680
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !364, metadata !598), !dbg !1681
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !365, metadata !598), !dbg !1682
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1683, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ], !dbg !1684

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval, !dbg !1685
  br label %return, !dbg !1685

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1687, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1688
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1689, !tbaa !603
  store i32 38, i32* %retval, !dbg !1690
  br label %return, !dbg !1690

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1691, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1692, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1693
  store i32 %call, i32* %retval, !dbg !1694
  br label %return, !dbg !1694

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1695
  ret i32 %4, !dbg !1695
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !375, metadata !598), !dbg !1696
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !376, metadata !598), !dbg !1697
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !377, metadata !598), !dbg !1698
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !378, metadata !598), !dbg !1699
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !379, metadata !598), !dbg !1700
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1701, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
  ], !dbg !1702

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval, !dbg !1703
  br label %return, !dbg !1703

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1705, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1706
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1707, !tbaa !603
  store i32 32, i32* %retval, !dbg !1708
  br label %return, !dbg !1708

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1709, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1710, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1711
  store i32 %call, i32* %retval, !dbg !1712
  br label %return, !dbg !1712

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1713
  ret i32 %4, !dbg !1713
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !382, metadata !598), !dbg !1714
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !383, metadata !598), !dbg !1715
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !384, metadata !598), !dbg !1716
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !385, metadata !598), !dbg !1717
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !386, metadata !598), !dbg !1718
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1719, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 24, label %sw.bb.1
    i32 21, label %sw.bb.2
  ], !dbg !1720

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval, !dbg !1721
  br label %return, !dbg !1721

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1723, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1724
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist8, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1725, !tbaa !603
  store i32 33, i32* %retval, !dbg !1726
  br label %return, !dbg !1726

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1727, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0, !dbg !1728
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !1729, !tbaa !603
  store i32 33, i32* %retval, !dbg !1730
  br label %return, !dbg !1730

sw.epilog:                                        ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1731, !tbaa !594
  %4 = load i32, i32* %tok.addr, align 4, !dbg !1732, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4), !dbg !1733
  store i32 %call, i32* %retval, !dbg !1734
  br label %return, !dbg !1734

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval, !dbg !1735
  ret i32 %5, !dbg !1735
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !396, metadata !598), !dbg !1736
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !397, metadata !598), !dbg !1737
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !398, metadata !598), !dbg !1738
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !399, metadata !598), !dbg !1739
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !400, metadata !598), !dbg !1740
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1741, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 24, label %sw.bb.1
    i32 21, label %sw.bb.2
  ], !dbg !1742

sw.bb:                                            ; preds = %entry
  store i32 33, i32* %retval, !dbg !1743
  br label %return, !dbg !1743

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1745, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1746
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist8, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1747, !tbaa !603
  store i32 33, i32* %retval, !dbg !1748
  br label %return, !dbg !1748

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1749, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0, !dbg !1750
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !1751, !tbaa !603
  store i32 33, i32* %retval, !dbg !1752
  br label %return, !dbg !1752

sw.epilog:                                        ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1753, !tbaa !594
  %4 = load i32, i32* %tok.addr, align 4, !dbg !1754, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4), !dbg !1755
  store i32 %call, i32* %retval, !dbg !1756
  br label %return, !dbg !1756

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval, !dbg !1757
  ret i32 %5, !dbg !1757
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !410, metadata !598), !dbg !1758
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !411, metadata !598), !dbg !1759
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !412, metadata !598), !dbg !1760
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !413, metadata !598), !dbg !1761
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !414, metadata !598), !dbg !1762
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1763, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 23, label %sw.bb.9
  ], !dbg !1764

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval, !dbg !1765
  br label %return, !dbg !1765

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1767, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !1769
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1769, !tbaa !648
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1770, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !1771, !tbaa !594
  %5 = load i8*, i8** %end.addr, align 8, !dbg !1772, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @KW_EMPTY, i32 0, i32 0)), !dbg !1773
  %tobool = icmp ne i32 %call, 0, !dbg !1773
  br i1 %tobool, label %if.then, label %if.end, !dbg !1774

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1775, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0, !dbg !1777
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1778, !tbaa !603
  %7 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1779, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %7, i32 0, i32 2, !dbg !1780
  store i32 39, i32* %role_none, align 4, !dbg !1781, !tbaa !1134
  store i32 42, i32* %retval, !dbg !1782
  br label %return, !dbg !1782

if.end:                                           ; preds = %sw.bb.1
  %8 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1783, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %8, i32 0, i32 3, !dbg !1785
  %9 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !1785, !tbaa !648
  %10 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1786, !tbaa !594
  %11 = load i8*, i8** %ptr.addr, align 8, !dbg !1787, !tbaa !594
  %12 = load i8*, i8** %end.addr, align 8, !dbg !1788, !tbaa !594
  %call3 = call i32 %9(%struct.encoding* %10, i8* %11, i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @KW_ANY, i32 0, i32 0)), !dbg !1789
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1789
  br i1 %tobool4, label %if.then.5, label %if.end.8, !dbg !1790

if.then.5:                                        ; preds = %if.end
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1791, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0, !dbg !1793
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !1794, !tbaa !603
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1795, !tbaa !594
  %role_none7 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 2, !dbg !1796
  store i32 39, i32* %role_none7, align 4, !dbg !1797, !tbaa !1134
  store i32 41, i32* %retval, !dbg !1798
  br label %return, !dbg !1798

if.end.8:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !1799

sw.bb.9:                                          ; preds = %entry
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1800, !tbaa !594
  %handler10 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %15, i32 0, i32 0, !dbg !1801
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler10, align 8, !dbg !1802, !tbaa !603
  %16 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1803, !tbaa !594
  %level = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %16, i32 0, i32 1, !dbg !1804
  store i32 1, i32* %level, align 4, !dbg !1805, !tbaa !1806
  store i32 44, i32* %retval, !dbg !1807
  br label %return, !dbg !1807

sw.epilog:                                        ; preds = %entry, %if.end.8
  %17 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1808, !tbaa !594
  %18 = load i32, i32* %tok.addr, align 4, !dbg !1809, !tbaa !620
  %call11 = call i32 @common(%struct.prolog_state* %17, i32 %18), !dbg !1810
  store i32 %call11, i32* %retval, !dbg !1811
  br label %return, !dbg !1811

return:                                           ; preds = %sw.epilog, %sw.bb.9, %if.then.5, %if.then, %sw.bb
  %19 = load i32, i32* %retval, !dbg !1812
  ret i32 %19, !dbg !1812
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !417, metadata !598), !dbg !1813
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !418, metadata !598), !dbg !1814
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !419, metadata !598), !dbg !1815
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !420, metadata !598), !dbg !1816
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !421, metadata !598), !dbg !1817
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1818, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 20, label %sw.bb.1
    i32 23, label %sw.bb.2
    i32 18, label %sw.bb.4
    i32 41, label %sw.bb.4
    i32 30, label %sw.bb.6
    i32 31, label %sw.bb.8
    i32 32, label %sw.bb.10
  ], !dbg !1819

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval, !dbg !1820
  br label %return, !dbg !1820

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1822, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !1824
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1824, !tbaa !648
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1825, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !1826, !tbaa !594
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1827, !tbaa !594
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 13, !dbg !1828
  %6 = load i32, i32* %minBytesPerChar, align 4, !dbg !1828, !tbaa !654
  %idx.ext = sext i32 %6 to i64, !dbg !1829
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !1829
  %7 = load i8*, i8** %end.addr, align 8, !dbg !1830, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %add.ptr, i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PCDATA, i32 0, i32 0)), !dbg !1831
  %tobool = icmp ne i32 %call, 0, !dbg !1831
  br i1 %tobool, label %if.then, label %if.end, !dbg !1832

if.then:                                          ; preds = %sw.bb.1
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1833, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0, !dbg !1835
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1836, !tbaa !603
  store i32 43, i32* %retval, !dbg !1837
  br label %return, !dbg !1837

if.end:                                           ; preds = %sw.bb.1
  br label %sw.epilog, !dbg !1838

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1839, !tbaa !594
  %level = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %9, i32 0, i32 1, !dbg !1840
  store i32 2, i32* %level, align 4, !dbg !1841, !tbaa !1806
  %10 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1842, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %10, i32 0, i32 0, !dbg !1843
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !1844, !tbaa !603
  store i32 44, i32* %retval, !dbg !1845
  br label %return, !dbg !1845

sw.bb.4:                                          ; preds = %entry, %entry
  %11 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1846, !tbaa !594
  %handler5 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %11, i32 0, i32 0, !dbg !1847
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler5, align 8, !dbg !1848, !tbaa !603
  store i32 51, i32* %retval, !dbg !1849
  br label %return, !dbg !1849

sw.bb.6:                                          ; preds = %entry
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1850, !tbaa !594
  %handler7 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0, !dbg !1851
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler7, align 8, !dbg !1852, !tbaa !603
  store i32 53, i32* %retval, !dbg !1853
  br label %return, !dbg !1853

sw.bb.8:                                          ; preds = %entry
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1854, !tbaa !594
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0, !dbg !1855
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8, !dbg !1856, !tbaa !603
  store i32 52, i32* %retval, !dbg !1857
  br label %return, !dbg !1857

sw.bb.10:                                         ; preds = %entry
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1858, !tbaa !594
  %handler11 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 0, !dbg !1859
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler11, align 8, !dbg !1860, !tbaa !603
  store i32 54, i32* %retval, !dbg !1861
  br label %return, !dbg !1861

sw.epilog:                                        ; preds = %entry, %if.end
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1862, !tbaa !594
  %16 = load i32, i32* %tok.addr, align 4, !dbg !1863, !tbaa !620
  %call12 = call i32 @common(%struct.prolog_state* %15, i32 %16), !dbg !1864
  store i32 %call12, i32* %retval, !dbg !1865
  br label %return, !dbg !1865

return:                                           ; preds = %sw.epilog, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.2, %if.then, %sw.bb
  %17 = load i32, i32* %retval, !dbg !1866
  ret i32 %17, !dbg !1866
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !424, metadata !598), !dbg !1867
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !425, metadata !598), !dbg !1868
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !426, metadata !598), !dbg !1869
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !427, metadata !598), !dbg !1870
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !428, metadata !598), !dbg !1871
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1872, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 24, label %sw.bb.1
    i32 36, label %sw.bb.2
    i32 21, label %sw.bb.5
  ], !dbg !1873

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval, !dbg !1874
  br label %return, !dbg !1874

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1876, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1877
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1878, !tbaa !603
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1879, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2, !dbg !1880
  store i32 39, i32* %role_none, align 4, !dbg !1881, !tbaa !1134
  store i32 45, i32* %retval, !dbg !1882
  br label %return, !dbg !1882

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1883, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !1884
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !1885, !tbaa !603
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1886, !tbaa !594
  %role_none4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 2, !dbg !1887
  store i32 39, i32* %role_none4, align 4, !dbg !1888, !tbaa !1134
  store i32 46, i32* %retval, !dbg !1889
  br label %return, !dbg !1889

sw.bb.5:                                          ; preds = %entry
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1890, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0, !dbg !1891
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !1892, !tbaa !603
  store i32 39, i32* %retval, !dbg !1893
  br label %return, !dbg !1893

sw.epilog:                                        ; preds = %entry
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1894, !tbaa !594
  %7 = load i32, i32* %tok.addr, align 4, !dbg !1895, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %6, i32 %7), !dbg !1896
  store i32 %call, i32* %retval, !dbg !1897
  br label %return, !dbg !1897

return:                                           ; preds = %sw.epilog, %sw.bb.5, %sw.bb.2, %sw.bb.1, %sw.bb
  %8 = load i32, i32* %retval, !dbg !1898
  ret i32 %8, !dbg !1898
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !445, metadata !598), !dbg !1899
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !446, metadata !598), !dbg !1900
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !447, metadata !598), !dbg !1901
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !448, metadata !598), !dbg !1902
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !449, metadata !598), !dbg !1903
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1904, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 23, label %sw.bb.1
    i32 18, label %sw.bb.2
    i32 41, label %sw.bb.2
    i32 30, label %sw.bb.3
    i32 31, label %sw.bb.5
    i32 32, label %sw.bb.7
  ], !dbg !1905

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval, !dbg !1906
  br label %return, !dbg !1906

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1908, !tbaa !594
  %level = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 1, !dbg !1909
  %2 = load i32, i32* %level, align 4, !dbg !1910, !tbaa !1806
  %add = add i32 %2, 1, !dbg !1910
  store i32 %add, i32* %level, align 4, !dbg !1910, !tbaa !1806
  store i32 44, i32* %retval, !dbg !1911
  br label %return, !dbg !1911

sw.bb.2:                                          ; preds = %entry, %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1912, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !1913
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1914, !tbaa !603
  store i32 51, i32* %retval, !dbg !1915
  br label %return, !dbg !1915

sw.bb.3:                                          ; preds = %entry
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1916, !tbaa !594
  %handler4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 0, !dbg !1917
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler4, align 8, !dbg !1918, !tbaa !603
  store i32 53, i32* %retval, !dbg !1919
  br label %return, !dbg !1919

sw.bb.5:                                          ; preds = %entry
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1920, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0, !dbg !1921
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !1922, !tbaa !603
  store i32 52, i32* %retval, !dbg !1923
  br label %return, !dbg !1923

sw.bb.7:                                          ; preds = %entry
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1924, !tbaa !594
  %handler8 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0, !dbg !1925
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler8, align 8, !dbg !1926, !tbaa !603
  store i32 54, i32* %retval, !dbg !1927
  br label %return, !dbg !1927

sw.epilog:                                        ; preds = %entry
  %7 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1928, !tbaa !594
  %8 = load i32, i32* %tok.addr, align 4, !dbg !1929, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %7, i32 %8), !dbg !1930
  store i32 %call, i32* %retval, !dbg !1931
  br label %return, !dbg !1931

return:                                           ; preds = %sw.epilog, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %9 = load i32, i32* %retval, !dbg !1932
  ret i32 %9, !dbg !1932
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !452, metadata !598), !dbg !1933
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !453, metadata !598), !dbg !1934
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !454, metadata !598), !dbg !1935
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !455, metadata !598), !dbg !1936
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !456, metadata !598), !dbg !1937
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1938, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 24, label %sw.bb.1
    i32 36, label %sw.bb.3
    i32 35, label %sw.bb.12
    i32 37, label %sw.bb.21
    i32 38, label %sw.bb.30
    i32 21, label %sw.bb.32
  ], !dbg !1939

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval, !dbg !1940
  br label %return, !dbg !1940

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1942, !tbaa !594
  %level = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 1, !dbg !1943
  %2 = load i32, i32* %level, align 4, !dbg !1944, !tbaa !1806
  %sub = sub i32 %2, 1, !dbg !1944
  store i32 %sub, i32* %level, align 4, !dbg !1944, !tbaa !1806
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1945, !tbaa !594
  %level2 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 1, !dbg !1947
  %4 = load i32, i32* %level2, align 4, !dbg !1947, !tbaa !1806
  %cmp = icmp eq i32 %4, 0, !dbg !1948
  br i1 %cmp, label %if.then, label %if.end, !dbg !1949

if.then:                                          ; preds = %sw.bb.1
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1950, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0, !dbg !1952
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1953, !tbaa !603
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1954, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 2, !dbg !1955
  store i32 39, i32* %role_none, align 4, !dbg !1956, !tbaa !1134
  br label %if.end, !dbg !1957

if.end:                                           ; preds = %if.then, %sw.bb.1
  store i32 45, i32* %retval, !dbg !1958
  br label %return, !dbg !1958

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1959, !tbaa !594
  %level4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %7, i32 0, i32 1, !dbg !1960
  %8 = load i32, i32* %level4, align 4, !dbg !1961, !tbaa !1806
  %sub5 = sub i32 %8, 1, !dbg !1961
  store i32 %sub5, i32* %level4, align 4, !dbg !1961, !tbaa !1806
  %9 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1962, !tbaa !594
  %level6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %9, i32 0, i32 1, !dbg !1964
  %10 = load i32, i32* %level6, align 4, !dbg !1964, !tbaa !1806
  %cmp7 = icmp eq i32 %10, 0, !dbg !1965
  br i1 %cmp7, label %if.then.8, label %if.end.11, !dbg !1966

if.then.8:                                        ; preds = %sw.bb.3
  %11 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1967, !tbaa !594
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %11, i32 0, i32 0, !dbg !1969
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8, !dbg !1970, !tbaa !603
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1971, !tbaa !594
  %role_none10 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 2, !dbg !1972
  store i32 39, i32* %role_none10, align 4, !dbg !1973, !tbaa !1134
  br label %if.end.11, !dbg !1974

if.end.11:                                        ; preds = %if.then.8, %sw.bb.3
  store i32 46, i32* %retval, !dbg !1975
  br label %return, !dbg !1975

sw.bb.12:                                         ; preds = %entry
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1976, !tbaa !594
  %level13 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 1, !dbg !1977
  %14 = load i32, i32* %level13, align 4, !dbg !1978, !tbaa !1806
  %sub14 = sub i32 %14, 1, !dbg !1978
  store i32 %sub14, i32* %level13, align 4, !dbg !1978, !tbaa !1806
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1979, !tbaa !594
  %level15 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %15, i32 0, i32 1, !dbg !1981
  %16 = load i32, i32* %level15, align 4, !dbg !1981, !tbaa !1806
  %cmp16 = icmp eq i32 %16, 0, !dbg !1982
  br i1 %cmp16, label %if.then.17, label %if.end.20, !dbg !1983

if.then.17:                                       ; preds = %sw.bb.12
  %17 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1984, !tbaa !594
  %handler18 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %17, i32 0, i32 0, !dbg !1986
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler18, align 8, !dbg !1987, !tbaa !603
  %18 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1988, !tbaa !594
  %role_none19 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %18, i32 0, i32 2, !dbg !1989
  store i32 39, i32* %role_none19, align 4, !dbg !1990, !tbaa !1134
  br label %if.end.20, !dbg !1991

if.end.20:                                        ; preds = %if.then.17, %sw.bb.12
  store i32 47, i32* %retval, !dbg !1992
  br label %return, !dbg !1992

sw.bb.21:                                         ; preds = %entry
  %19 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1993, !tbaa !594
  %level22 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %19, i32 0, i32 1, !dbg !1994
  %20 = load i32, i32* %level22, align 4, !dbg !1995, !tbaa !1806
  %sub23 = sub i32 %20, 1, !dbg !1995
  store i32 %sub23, i32* %level22, align 4, !dbg !1995, !tbaa !1806
  %21 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1996, !tbaa !594
  %level24 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %21, i32 0, i32 1, !dbg !1998
  %22 = load i32, i32* %level24, align 4, !dbg !1998, !tbaa !1806
  %cmp25 = icmp eq i32 %22, 0, !dbg !1999
  br i1 %cmp25, label %if.then.26, label %if.end.29, !dbg !2000

if.then.26:                                       ; preds = %sw.bb.21
  %23 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2001, !tbaa !594
  %handler27 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %23, i32 0, i32 0, !dbg !2003
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler27, align 8, !dbg !2004, !tbaa !603
  %24 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2005, !tbaa !594
  %role_none28 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %24, i32 0, i32 2, !dbg !2006
  store i32 39, i32* %role_none28, align 4, !dbg !2007, !tbaa !1134
  br label %if.end.29, !dbg !2008

if.end.29:                                        ; preds = %if.then.26, %sw.bb.21
  store i32 48, i32* %retval, !dbg !2009
  br label %return, !dbg !2009

sw.bb.30:                                         ; preds = %entry
  %25 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2010, !tbaa !594
  %handler31 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %25, i32 0, i32 0, !dbg !2011
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler31, align 8, !dbg !2012, !tbaa !603
  store i32 50, i32* %retval, !dbg !2013
  br label %return, !dbg !2013

sw.bb.32:                                         ; preds = %entry
  %26 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2014, !tbaa !594
  %handler33 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %26, i32 0, i32 0, !dbg !2015
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler33, align 8, !dbg !2016, !tbaa !603
  store i32 49, i32* %retval, !dbg !2017
  br label %return, !dbg !2017

sw.epilog:                                        ; preds = %entry
  %27 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2018, !tbaa !594
  %28 = load i32, i32* %tok.addr, align 4, !dbg !2019, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %27, i32 %28), !dbg !2020
  store i32 %call, i32* %retval, !dbg !2021
  br label %return, !dbg !2021

return:                                           ; preds = %sw.epilog, %sw.bb.32, %sw.bb.30, %if.end.29, %if.end.20, %if.end.11, %if.end, %sw.bb
  %29 = load i32, i32* %retval, !dbg !2022
  ret i32 %29, !dbg !2022
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !431, metadata !598), !dbg !2023
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !432, metadata !598), !dbg !2024
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !433, metadata !598), !dbg !2025
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !434, metadata !598), !dbg !2026
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !435, metadata !598), !dbg !2027
  %0 = load i32, i32* %tok.addr, align 4, !dbg !2028, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
    i32 41, label %sw.bb.1
  ], !dbg !2029

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval, !dbg !2030
  br label %return, !dbg !2030

sw.bb.1:                                          ; preds = %entry, %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2032, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !2033
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element5, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !2034, !tbaa !603
  store i32 51, i32* %retval, !dbg !2035
  br label %return, !dbg !2035

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2036, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !2037, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !2038
  store i32 %call, i32* %retval, !dbg !2039
  br label %return, !dbg !2039

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !2040
  ret i32 %4, !dbg !2040
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !438, metadata !598), !dbg !2041
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !439, metadata !598), !dbg !2042
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !440, metadata !598), !dbg !2043
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !441, metadata !598), !dbg !2044
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !442, metadata !598), !dbg !2045
  %0 = load i32, i32* %tok.addr, align 4, !dbg !2046, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 36, label %sw.bb.1
    i32 21, label %sw.bb.2
  ], !dbg !2047

sw.bb:                                            ; preds = %entry
  store i32 39, i32* %retval, !dbg !2048
  br label %return, !dbg !2048

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2050, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !2051
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !2052, !tbaa !603
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2053, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2, !dbg !2054
  store i32 39, i32* %role_none, align 4, !dbg !2055, !tbaa !1134
  store i32 46, i32* %retval, !dbg !2056
  br label %return, !dbg !2056

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2057, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !2058
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !2059, !tbaa !603
  store i32 39, i32* %retval, !dbg !2060
  br label %return, !dbg !2060

sw.epilog:                                        ; preds = %entry
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2061, !tbaa !594
  %5 = load i32, i32* %tok.addr, align 4, !dbg !2062, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %4, i32 %5), !dbg !2063
  store i32 %call, i32* %retval, !dbg !2064
  br label %return, !dbg !2064

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %6 = load i32, i32* %retval, !dbg !2065
  ret i32 %6, !dbg !2065
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !466, metadata !598), !dbg !2066
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !467, metadata !598), !dbg !2067
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !468, metadata !598), !dbg !2068
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !469, metadata !598), !dbg !2069
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !470, metadata !598), !dbg !2070
  %0 = load i32, i32* %tok.addr, align 4, !dbg !2071, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 18, label %sw.bb.1
  ], !dbg !2072

sw.bb:                                            ; preds = %entry
  store i32 17, i32* %retval, !dbg !2073
  br label %return, !dbg !2073

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !2075, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !2077
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !2077, !tbaa !648
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !2078, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !2079, !tbaa !594
  %5 = load i8*, i8** %end.addr, align 8, !dbg !2080, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_SYSTEM, i32 0, i32 0)), !dbg !2081
  %tobool = icmp ne i32 %call, 0, !dbg !2081
  br i1 %tobool, label %if.then, label %if.end, !dbg !2082

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2083, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0, !dbg !2085
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !2086, !tbaa !603
  store i32 17, i32* %retval, !dbg !2087
  br label %return, !dbg !2087

if.end:                                           ; preds = %sw.bb.1
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !2088, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 3, !dbg !2090
  %8 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !2090, !tbaa !648
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !2091, !tbaa !594
  %10 = load i8*, i8** %ptr.addr, align 8, !dbg !2092, !tbaa !594
  %11 = load i8*, i8** %end.addr, align 8, !dbg !2093, !tbaa !594
  %call3 = call i32 %8(%struct.encoding* %9, i8* %10, i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PUBLIC, i32 0, i32 0)), !dbg !2094
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2094
  br i1 %tobool4, label %if.then.5, label %if.end.7, !dbg !2095

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2096, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0, !dbg !2098
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !2099, !tbaa !603
  store i32 17, i32* %retval, !dbg !2100
  br label %return, !dbg !2100

if.end.7:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !2101

sw.epilog:                                        ; preds = %entry, %if.end.7
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2102, !tbaa !594
  %14 = load i32, i32* %tok.addr, align 4, !dbg !2103, !tbaa !620
  %call8 = call i32 @common(%struct.prolog_state* %13, i32 %14), !dbg !2104
  store i32 %call8, i32* %retval, !dbg !2105
  br label %return, !dbg !2105

return:                                           ; preds = %sw.epilog, %if.then.5, %if.then, %sw.bb
  %15 = load i32, i32* %retval, !dbg !2106
  ret i32 %15, !dbg !2106
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !473, metadata !598), !dbg !2107
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !474, metadata !598), !dbg !2108
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !475, metadata !598), !dbg !2109
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !476, metadata !598), !dbg !2110
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !477, metadata !598), !dbg !2111
  %0 = load i32, i32* %tok.addr, align 4, !dbg !2112, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ], !dbg !2113

sw.bb:                                            ; preds = %entry
  store i32 17, i32* %retval, !dbg !2114
  br label %return, !dbg !2114

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2116, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !2117
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !2118, !tbaa !603
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2119, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2, !dbg !2120
  store i32 17, i32* %role_none, align 4, !dbg !2121, !tbaa !1134
  store i32 19, i32* %retval, !dbg !2122
  br label %return, !dbg !2122

sw.epilog:                                        ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2123, !tbaa !594
  %4 = load i32, i32* %tok.addr, align 4, !dbg !2124, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4), !dbg !2125
  store i32 %call, i32* %retval, !dbg !2126
  br label %return, !dbg !2126

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval, !dbg !2127
  ret i32 %5, !dbg !2127
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !480, metadata !598), !dbg !2128
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !481, metadata !598), !dbg !2129
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !482, metadata !598), !dbg !2130
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !483, metadata !598), !dbg !2131
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !484, metadata !598), !dbg !2132
  %0 = load i32, i32* %tok.addr, align 4, !dbg !2133, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
  ], !dbg !2134

sw.bb:                                            ; preds = %entry
  store i32 17, i32* %retval, !dbg !2135
  br label %return, !dbg !2135

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2137, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !2138
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !2139, !tbaa !603
  store i32 21, i32* %retval, !dbg !2140
  br label %return, !dbg !2140

sw.epilog:                                        ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2141, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !2142, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !2143
  store i32 %call, i32* %retval, !dbg !2144
  br label %return, !dbg !2144

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !2145
  ret i32 %4, !dbg !2145
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !487, metadata !598), !dbg !2146
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !488, metadata !598), !dbg !2147
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !489, metadata !598), !dbg !2148
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !490, metadata !598), !dbg !2149
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !491, metadata !598), !dbg !2150
  %0 = load i32, i32* %tok.addr, align 4, !dbg !2151, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 27, label %sw.bb.1
    i32 17, label %sw.bb.2
  ], !dbg !2152

sw.bb:                                            ; preds = %entry
  store i32 17, i32* %retval, !dbg !2153
  br label %return, !dbg !2153

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2155, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !2156
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !2157, !tbaa !603
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2158, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2, !dbg !2159
  store i32 17, i32* %role_none, align 4, !dbg !2160, !tbaa !1134
  store i32 19, i32* %retval, !dbg !2161
  br label %return, !dbg !2161

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2162, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 4, !dbg !2163
  %4 = load i32, i32* %documentEntity, align 4, !dbg !2163, !tbaa !609
  %tobool = icmp ne i32 %4, 0, !dbg !2164
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, !dbg !2164
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2165, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0, !dbg !2166
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !2167, !tbaa !603
  store i32 20, i32* %retval, !dbg !2168
  br label %return, !dbg !2168

sw.epilog:                                        ; preds = %entry
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2169, !tbaa !594
  %7 = load i32, i32* %tok.addr, align 4, !dbg !2170, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %6, i32 %7), !dbg !2171
  store i32 %call, i32* %retval, !dbg !2172
  br label %return, !dbg !2172

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %8 = load i32, i32* %retval, !dbg !2173
  ret i32 %8, !dbg !2173
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
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !515, metadata !598), !dbg !2174
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !516, metadata !598), !dbg !2175
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !517, metadata !598), !dbg !2176
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !518, metadata !598), !dbg !2177
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !519, metadata !598), !dbg !2178
  %0 = load i32, i32* %tok.addr, align 4, !dbg !2179, !tbaa !620
  switch i32 %0, label %sw.epilog [
    i32 15, label %sw.bb
    i32 25, label %sw.bb.1
    i32 17, label %sw.bb.2
  ], !dbg !2180

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %retval, !dbg !2181
  br label %return, !dbg !2181

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2183, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !2184
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !2185, !tbaa !603
  store i32 7, i32* %retval, !dbg !2186
  br label %return, !dbg !2186

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2187, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0, !dbg !2188
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !2189, !tbaa !603
  store i32 8, i32* %retval, !dbg !2190
  br label %return, !dbg !2190

sw.epilog:                                        ; preds = %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2191, !tbaa !594
  %4 = load i32, i32* %tok.addr, align 4, !dbg !2192, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4), !dbg !2193
  store i32 %call, i32* %retval, !dbg !2194
  br label %return, !dbg !2194

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval, !dbg !2195
  ret i32 %5, !dbg !2195
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!590, !591, !592}
!llvm.ident = !{!593}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !68, subprograms: !70, globals: !547)
!1 = !DIFile(filename: "xmlrole.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 20, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/expat/xmlrole.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!6 = !DIEnumerator(name: "XML_ROLE_ERROR", value: -1)
!7 = !DIEnumerator(name: "XML_ROLE_NONE", value: 0)
!8 = !DIEnumerator(name: "XML_ROLE_XML_DECL", value: 1)
!9 = !DIEnumerator(name: "XML_ROLE_INSTANCE_START", value: 2)
!10 = !DIEnumerator(name: "XML_ROLE_DOCTYPE_NONE", value: 3)
!11 = !DIEnumerator(name: "XML_ROLE_DOCTYPE_NAME", value: 4)
!12 = !DIEnumerator(name: "XML_ROLE_DOCTYPE_SYSTEM_ID", value: 5)
!13 = !DIEnumerator(name: "XML_ROLE_DOCTYPE_PUBLIC_ID", value: 6)
!14 = !DIEnumerator(name: "XML_ROLE_DOCTYPE_INTERNAL_SUBSET", value: 7)
!15 = !DIEnumerator(name: "XML_ROLE_DOCTYPE_CLOSE", value: 8)
!16 = !DIEnumerator(name: "XML_ROLE_GENERAL_ENTITY_NAME", value: 9)
!17 = !DIEnumerator(name: "XML_ROLE_PARAM_ENTITY_NAME", value: 10)
!18 = !DIEnumerator(name: "XML_ROLE_ENTITY_NONE", value: 11)
!19 = !DIEnumerator(name: "XML_ROLE_ENTITY_VALUE", value: 12)
!20 = !DIEnumerator(name: "XML_ROLE_ENTITY_SYSTEM_ID", value: 13)
!21 = !DIEnumerator(name: "XML_ROLE_ENTITY_PUBLIC_ID", value: 14)
!22 = !DIEnumerator(name: "XML_ROLE_ENTITY_COMPLETE", value: 15)
!23 = !DIEnumerator(name: "XML_ROLE_ENTITY_NOTATION_NAME", value: 16)
!24 = !DIEnumerator(name: "XML_ROLE_NOTATION_NONE", value: 17)
!25 = !DIEnumerator(name: "XML_ROLE_NOTATION_NAME", value: 18)
!26 = !DIEnumerator(name: "XML_ROLE_NOTATION_SYSTEM_ID", value: 19)
!27 = !DIEnumerator(name: "XML_ROLE_NOTATION_NO_SYSTEM_ID", value: 20)
!28 = !DIEnumerator(name: "XML_ROLE_NOTATION_PUBLIC_ID", value: 21)
!29 = !DIEnumerator(name: "XML_ROLE_ATTRIBUTE_NAME", value: 22)
!30 = !DIEnumerator(name: "XML_ROLE_ATTRIBUTE_TYPE_CDATA", value: 23)
!31 = !DIEnumerator(name: "XML_ROLE_ATTRIBUTE_TYPE_ID", value: 24)
!32 = !DIEnumerator(name: "XML_ROLE_ATTRIBUTE_TYPE_IDREF", value: 25)
!33 = !DIEnumerator(name: "XML_ROLE_ATTRIBUTE_TYPE_IDREFS", value: 26)
!34 = !DIEnumerator(name: "XML_ROLE_ATTRIBUTE_TYPE_ENTITY", value: 27)
!35 = !DIEnumerator(name: "XML_ROLE_ATTRIBUTE_TYPE_ENTITIES", value: 28)
!36 = !DIEnumerator(name: "XML_ROLE_ATTRIBUTE_TYPE_NMTOKEN", value: 29)
!37 = !DIEnumerator(name: "XML_ROLE_ATTRIBUTE_TYPE_NMTOKENS", value: 30)
!38 = !DIEnumerator(name: "XML_ROLE_ATTRIBUTE_ENUM_VALUE", value: 31)
!39 = !DIEnumerator(name: "XML_ROLE_ATTRIBUTE_NOTATION_VALUE", value: 32)
!40 = !DIEnumerator(name: "XML_ROLE_ATTLIST_NONE", value: 33)
!41 = !DIEnumerator(name: "XML_ROLE_ATTLIST_ELEMENT_NAME", value: 34)
!42 = !DIEnumerator(name: "XML_ROLE_IMPLIED_ATTRIBUTE_VALUE", value: 35)
!43 = !DIEnumerator(name: "XML_ROLE_REQUIRED_ATTRIBUTE_VALUE", value: 36)
!44 = !DIEnumerator(name: "XML_ROLE_DEFAULT_ATTRIBUTE_VALUE", value: 37)
!45 = !DIEnumerator(name: "XML_ROLE_FIXED_ATTRIBUTE_VALUE", value: 38)
!46 = !DIEnumerator(name: "XML_ROLE_ELEMENT_NONE", value: 39)
!47 = !DIEnumerator(name: "XML_ROLE_ELEMENT_NAME", value: 40)
!48 = !DIEnumerator(name: "XML_ROLE_CONTENT_ANY", value: 41)
!49 = !DIEnumerator(name: "XML_ROLE_CONTENT_EMPTY", value: 42)
!50 = !DIEnumerator(name: "XML_ROLE_CONTENT_PCDATA", value: 43)
!51 = !DIEnumerator(name: "XML_ROLE_GROUP_OPEN", value: 44)
!52 = !DIEnumerator(name: "XML_ROLE_GROUP_CLOSE", value: 45)
!53 = !DIEnumerator(name: "XML_ROLE_GROUP_CLOSE_REP", value: 46)
!54 = !DIEnumerator(name: "XML_ROLE_GROUP_CLOSE_OPT", value: 47)
!55 = !DIEnumerator(name: "XML_ROLE_GROUP_CLOSE_PLUS", value: 48)
!56 = !DIEnumerator(name: "XML_ROLE_GROUP_CHOICE", value: 49)
!57 = !DIEnumerator(name: "XML_ROLE_GROUP_SEQUENCE", value: 50)
!58 = !DIEnumerator(name: "XML_ROLE_CONTENT_ELEMENT", value: 51)
!59 = !DIEnumerator(name: "XML_ROLE_CONTENT_ELEMENT_REP", value: 52)
!60 = !DIEnumerator(name: "XML_ROLE_CONTENT_ELEMENT_OPT", value: 53)
!61 = !DIEnumerator(name: "XML_ROLE_CONTENT_ELEMENT_PLUS", value: 54)
!62 = !DIEnumerator(name: "XML_ROLE_PI", value: 55)
!63 = !DIEnumerator(name: "XML_ROLE_COMMENT", value: 56)
!64 = !DIEnumerator(name: "XML_ROLE_TEXT_DECL", value: 57)
!65 = !DIEnumerator(name: "XML_ROLE_IGNORE_SECT", value: 58)
!66 = !DIEnumerator(name: "XML_ROLE_INNER_PARAM_ENTITY_REF", value: 59)
!67 = !DIEnumerator(name: "XML_ROLE_PARAM_ENTITY_REF", value: 60)
!68 = !{!69}
!69 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!70 = !{!71, !176, !179, !188, !195, !202, !209, !216, !223, !230, !237, !244, !251, !258, !265, !272, !279, !286, !293, !300, !307, !314, !321, !328, !335, !342, !352, !359, !366, !373, !380, !387, !394, !401, !408, !415, !422, !429, !436, !443, !450, !457, !464, !471, !478, !485, !492, !499, !506, !513, !520, !527, !534, !540}
!71 = !DISubprogram(name: "PyExpat_XmlPrologStateInit", scope: !72, file: !72, line: 1316, type: !73, isLocal: false, isDefinition: true, scopeLine: 1317, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.prolog_state*)* @PyExpat_XmlPrologStateInit, variables: !174)
!72 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/expat/xmlrole.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "PROLOG_STATE", file: !4, line: 100, baseType: !77)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "prolog_state", file: !4, line: 87, size: 256, align: 64, elements: !78)
!78 = !{!79, !168, !170, !171, !172, !173}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !77, file: !4, line: 88, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!69, !83, !69, !84, !84, !87}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENCODING", file: !90, line: 126, baseType: !91)
!90 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/expat/xmltok.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "encoding", file: !90, line: 133, size: 1152, align: 64, elements: !92)
!92 = !{!93, !102, !106, !110, !114, !118, !122, !134, !135, !136, !149, !150, !156, !165, !166, !167}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "scanners", scope: !91, file: !90, line: 134, baseType: !94, size: 256, align: 64)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 256, align: 64, elements: !100)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCANNER", file: !90, line: 128, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{!69, !87, !84, !84, !99}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "literalScanners", scope: !91, file: !90, line: 135, baseType: !103, size: 128, align: 64, offset: 256)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, align: 64, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 2)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sameName", scope: !91, file: !90, line: 136, baseType: !107, size: 64, align: 64, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!69, !87, !84, !84}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "nameMatchesAscii", scope: !91, file: !90, line: 139, baseType: !111, size: 64, align: 64, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!69, !87, !84, !84, !84}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "nameLength", scope: !91, file: !90, line: 143, baseType: !115, size: 64, align: 64, offset: 512)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!69, !87, !84}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "skipS", scope: !91, file: !90, line: 144, baseType: !119, size: 64, align: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!84, !87, !84}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "getAtts", scope: !91, file: !90, line: 145, baseType: !123, size: 64, align: 64, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!69, !87, !84, !69, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATTRIBUTE", file: !90, line: 123, baseType: !128)
!128 = !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 118, size: 256, align: 64, elements: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !90, line: 119, baseType: !84, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "valuePtr", scope: !128, file: !90, line: 120, baseType: !84, size: 64, align: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "valueEnd", scope: !128, file: !90, line: 121, baseType: !84, size: 64, align: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "normalized", scope: !128, file: !90, line: 122, baseType: !86, size: 8, align: 8, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "charRefNumber", scope: !91, file: !90, line: 149, baseType: !115, size: 64, align: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "predefinedEntityName", scope: !91, file: !90, line: 150, baseType: !107, size: 64, align: 64, offset: 768)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "updatePosition", scope: !91, file: !90, line: 153, baseType: !137, size: 64, align: 64, offset: 832)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !87, !84, !84, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "POSITION", file: !90, line: 116, baseType: !142)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "position", file: !90, line: 112, size: 128, align: 64, elements: !143)
!143 = !{!144, !148}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "lineNumber", scope: !142, file: !90, line: 114, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "XML_Size", file: !146, line: 112, baseType: !147)
!146 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/expat/expat_external.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!147 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "columnNumber", scope: !142, file: !90, line: 115, baseType: !145, size: 64, align: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "isPublicId", scope: !91, file: !90, line: 157, baseType: !96, size: 64, align: 64, offset: 896)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "utf8Convert", scope: !91, file: !90, line: 161, baseType: !151, size: 64, align: 64, offset: 960)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !87, !99, !84, !154, !84}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "utf16Convert", scope: !91, file: !90, line: 166, baseType: !157, size: 64, align: 64, offset: 1024)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !87, !99, !84, !160, !163}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "minBytesPerChar", scope: !91, file: !90, line: 171, baseType: !69, size: 32, align: 32, offset: 1088)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "isUtf8", scope: !91, file: !90, line: 172, baseType: !86, size: 8, align: 8, offset: 1120)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "isUtf16", scope: !91, file: !90, line: 173, baseType: !86, size: 8, align: 8, offset: 1128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !77, file: !4, line: 93, baseType: !169, size: 32, align: 32, offset: 64)
!169 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "role_none", scope: !77, file: !4, line: 94, baseType: !69, size: 32, align: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "includeLevel", scope: !77, file: !4, line: 96, baseType: !169, size: 32, align: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "documentEntity", scope: !77, file: !4, line: 97, baseType: !69, size: 32, align: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "inEntityValue", scope: !77, file: !4, line: 98, baseType: !69, size: 32, align: 32, offset: 192)
!174 = !{!175}
!175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !71, file: !72, line: 1316, type: !75)
!176 = !DISubprogram(name: "PyExpat_XmlPrologStateInitExternalEntity", scope: !72, file: !72, line: 1329, type: !73, isLocal: false, isDefinition: true, scopeLine: 1330, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.prolog_state*)* @PyExpat_XmlPrologStateInitExternalEntity, variables: !177)
!177 = !{!178}
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !176, file: !72, line: 1329, type: !75)
!179 = !DISubprogram(name: "prolog0", scope: !72, file: !72, line: 128, type: !180, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog0, variables: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{!69, !75, !69, !84, !84, !87}
!182 = !{!183, !184, !185, !186, !187}
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !179, file: !72, line: 128, type: !75)
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !179, file: !72, line: 129, type: !69)
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !179, file: !72, line: 130, type: !84)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !179, file: !72, line: 131, type: !84)
!187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !179, file: !72, line: 132, type: !87)
!188 = !DISubprogram(name: "prolog1", scope: !72, file: !72, line: 165, type: !180, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog1, variables: !189)
!189 = !{!190, !191, !192, !193, !194}
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !188, file: !72, line: 165, type: !75)
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !188, file: !72, line: 166, type: !69)
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !188, file: !72, line: 167, type: !84)
!193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !188, file: !72, line: 168, type: !84)
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !188, file: !72, line: 169, type: !87)
!195 = !DISubprogram(name: "doctype0", scope: !72, file: !72, line: 217, type: !180, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype0, variables: !196)
!196 = !{!197, !198, !199, !200, !201}
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !195, file: !72, line: 217, type: !75)
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !195, file: !72, line: 218, type: !69)
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !195, file: !72, line: 219, type: !84)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !195, file: !72, line: 220, type: !84)
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !195, file: !72, line: 221, type: !87)
!202 = !DISubprogram(name: "doctype1", scope: !72, file: !72, line: 235, type: !180, isLocal: true, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype1, variables: !203)
!203 = !{!204, !205, !206, !207, !208}
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !202, file: !72, line: 235, type: !75)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !202, file: !72, line: 236, type: !69)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !202, file: !72, line: 237, type: !84)
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !202, file: !72, line: 238, type: !84)
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !202, file: !72, line: 239, type: !87)
!209 = !DISubprogram(name: "internalSubset", scope: !72, file: !72, line: 336, type: !180, isLocal: true, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, variables: !210)
!210 = !{!211, !212, !213, !214, !215}
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !209, file: !72, line: 336, type: !75)
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !209, file: !72, line: 337, type: !69)
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !209, file: !72, line: 338, type: !84)
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !209, file: !72, line: 339, type: !84)
!215 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !209, file: !72, line: 340, type: !87)
!216 = !DISubprogram(name: "entity0", scope: !72, file: !72, line: 438, type: !180, isLocal: true, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity0, variables: !217)
!217 = !{!218, !219, !220, !221, !222}
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !216, file: !72, line: 438, type: !75)
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !216, file: !72, line: 439, type: !69)
!220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !216, file: !72, line: 440, type: !84)
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !216, file: !72, line: 441, type: !84)
!222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !216, file: !72, line: 442, type: !87)
!223 = !DISubprogram(name: "entity1", scope: !72, file: !72, line: 458, type: !180, isLocal: true, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity1, variables: !224)
!224 = !{!225, !226, !227, !228, !229}
!225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !223, file: !72, line: 458, type: !75)
!226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !223, file: !72, line: 459, type: !69)
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !223, file: !72, line: 460, type: !84)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !223, file: !72, line: 461, type: !84)
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !223, file: !72, line: 462, type: !87)
!230 = !DISubprogram(name: "entity7", scope: !72, file: !72, line: 578, type: !180, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity7, variables: !231)
!231 = !{!232, !233, !234, !235, !236}
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !230, file: !72, line: 578, type: !75)
!233 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !230, file: !72, line: 579, type: !69)
!234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !230, file: !72, line: 580, type: !84)
!235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !230, file: !72, line: 581, type: !84)
!236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !230, file: !72, line: 582, type: !87)
!237 = !DISubprogram(name: "entity9", scope: !72, file: !72, line: 623, type: !180, isLocal: true, isDefinition: true, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity9, variables: !238)
!238 = !{!239, !240, !241, !242, !243}
!239 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !237, file: !72, line: 623, type: !75)
!240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !237, file: !72, line: 624, type: !69)
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !237, file: !72, line: 625, type: !84)
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !237, file: !72, line: 626, type: !84)
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !237, file: !72, line: 627, type: !87)
!244 = !DISubprogram(name: "entity10", scope: !72, file: !72, line: 640, type: !180, isLocal: true, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity10, variables: !245)
!245 = !{!246, !247, !248, !249, !250}
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !244, file: !72, line: 640, type: !75)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !244, file: !72, line: 641, type: !69)
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !244, file: !72, line: 642, type: !84)
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !244, file: !72, line: 643, type: !84)
!250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !244, file: !72, line: 644, type: !87)
!251 = !DISubprogram(name: "externalSubset1", scope: !72, file: !72, line: 406, type: !180, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, variables: !252)
!252 = !{!253, !254, !255, !256, !257}
!253 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !251, file: !72, line: 406, type: !75)
!254 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !251, file: !72, line: 407, type: !69)
!255 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !251, file: !72, line: 408, type: !84)
!256 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !251, file: !72, line: 409, type: !84)
!257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !251, file: !72, line: 410, type: !87)
!258 = !DISubprogram(name: "condSect0", scope: !72, file: !72, line: 1217, type: !180, isLocal: true, isDefinition: true, scopeLine: 1222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @condSect0, variables: !259)
!259 = !{!260, !261, !262, !263, !264}
!260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !258, file: !72, line: 1217, type: !75)
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !258, file: !72, line: 1218, type: !69)
!262 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !258, file: !72, line: 1219, type: !84)
!263 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !258, file: !72, line: 1220, type: !84)
!264 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !258, file: !72, line: 1221, type: !87)
!265 = !DISubprogram(name: "condSect1", scope: !72, file: !72, line: 1241, type: !180, isLocal: true, isDefinition: true, scopeLine: 1246, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @condSect1, variables: !266)
!266 = !{!267, !268, !269, !270, !271}
!267 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !265, file: !72, line: 1241, type: !75)
!268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !265, file: !72, line: 1242, type: !69)
!269 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !265, file: !72, line: 1243, type: !84)
!270 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !265, file: !72, line: 1244, type: !84)
!271 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !265, file: !72, line: 1245, type: !87)
!272 = !DISubprogram(name: "condSect2", scope: !72, file: !72, line: 1259, type: !180, isLocal: true, isDefinition: true, scopeLine: 1264, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @condSect2, variables: !273)
!273 = !{!274, !275, !276, !277, !278}
!274 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !272, file: !72, line: 1259, type: !75)
!275 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !272, file: !72, line: 1260, type: !69)
!276 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !272, file: !72, line: 1261, type: !84)
!277 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !272, file: !72, line: 1262, type: !84)
!278 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !272, file: !72, line: 1263, type: !87)
!279 = !DISubprogram(name: "entity8", scope: !72, file: !72, line: 606, type: !180, isLocal: true, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity8, variables: !280)
!280 = !{!281, !282, !283, !284, !285}
!281 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !279, file: !72, line: 606, type: !75)
!282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !279, file: !72, line: 607, type: !69)
!283 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !279, file: !72, line: 608, type: !84)
!284 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !279, file: !72, line: 609, type: !84)
!285 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !279, file: !72, line: 610, type: !87)
!286 = !DISubprogram(name: "declClose", scope: !72, file: !72, line: 1278, type: !180, isLocal: true, isDefinition: true, scopeLine: 1283, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, variables: !287)
!287 = !{!288, !289, !290, !291, !292}
!288 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !286, file: !72, line: 1278, type: !75)
!289 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !286, file: !72, line: 1279, type: !69)
!290 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !286, file: !72, line: 1280, type: !84)
!291 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !286, file: !72, line: 1281, type: !84)
!292 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !286, file: !72, line: 1282, type: !87)
!293 = !DISubprogram(name: "entity2", scope: !72, file: !72, line: 475, type: !180, isLocal: true, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity2, variables: !294)
!294 = !{!295, !296, !297, !298, !299}
!295 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !293, file: !72, line: 475, type: !75)
!296 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !293, file: !72, line: 476, type: !69)
!297 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !293, file: !72, line: 477, type: !84)
!298 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !293, file: !72, line: 478, type: !84)
!299 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !293, file: !72, line: 479, type: !87)
!300 = !DISubprogram(name: "entity4", scope: !72, file: !72, line: 520, type: !180, isLocal: true, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity4, variables: !301)
!301 = !{!302, !303, !304, !305, !306}
!302 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !300, file: !72, line: 520, type: !75)
!303 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !300, file: !72, line: 521, type: !69)
!304 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !300, file: !72, line: 522, type: !84)
!305 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !300, file: !72, line: 523, type: !84)
!306 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !300, file: !72, line: 524, type: !87)
!307 = !DISubprogram(name: "entity5", scope: !72, file: !72, line: 537, type: !180, isLocal: true, isDefinition: true, scopeLine: 542, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity5, variables: !308)
!308 = !{!309, !310, !311, !312, !313}
!309 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !307, file: !72, line: 537, type: !75)
!310 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !307, file: !72, line: 538, type: !69)
!311 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !307, file: !72, line: 539, type: !84)
!312 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !307, file: !72, line: 540, type: !84)
!313 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !307, file: !72, line: 541, type: !87)
!314 = !DISubprogram(name: "entity6", scope: !72, file: !72, line: 560, type: !180, isLocal: true, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity6, variables: !315)
!315 = !{!316, !317, !318, !319, !320}
!316 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !314, file: !72, line: 560, type: !75)
!317 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !314, file: !72, line: 561, type: !69)
!318 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !314, file: !72, line: 562, type: !84)
!319 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !314, file: !72, line: 563, type: !84)
!320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !314, file: !72, line: 564, type: !87)
!321 = !DISubprogram(name: "entity3", scope: !72, file: !72, line: 503, type: !180, isLocal: true, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity3, variables: !322)
!322 = !{!323, !324, !325, !326, !327}
!323 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !321, file: !72, line: 503, type: !75)
!324 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !321, file: !72, line: 504, type: !69)
!325 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !321, file: !72, line: 505, type: !84)
!326 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !321, file: !72, line: 506, type: !84)
!327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !321, file: !72, line: 507, type: !87)
!328 = !DISubprogram(name: "attlist0", scope: !72, file: !72, line: 754, type: !180, isLocal: true, isDefinition: true, scopeLine: 759, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist0, variables: !329)
!329 = !{!330, !331, !332, !333, !334}
!330 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !328, file: !72, line: 754, type: !75)
!331 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !328, file: !72, line: 755, type: !69)
!332 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !328, file: !72, line: 756, type: !84)
!333 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !328, file: !72, line: 757, type: !84)
!334 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !328, file: !72, line: 758, type: !87)
!335 = !DISubprogram(name: "attlist1", scope: !72, file: !72, line: 772, type: !180, isLocal: true, isDefinition: true, scopeLine: 777, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, variables: !336)
!336 = !{!337, !338, !339, !340, !341}
!337 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !335, file: !72, line: 772, type: !75)
!338 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !335, file: !72, line: 773, type: !69)
!339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !335, file: !72, line: 774, type: !84)
!340 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !335, file: !72, line: 775, type: !84)
!341 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !335, file: !72, line: 776, type: !87)
!342 = !DISubprogram(name: "attlist2", scope: !72, file: !72, line: 793, type: !180, isLocal: true, isDefinition: true, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist2, variables: !343)
!343 = !{!344, !345, !346, !347, !348, !349}
!344 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !342, file: !72, line: 793, type: !75)
!345 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !342, file: !72, line: 794, type: !69)
!346 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !342, file: !72, line: 795, type: !84)
!347 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !342, file: !72, line: 796, type: !84)
!348 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !342, file: !72, line: 797, type: !87)
!349 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !350, file: !72, line: 814, type: !69)
!350 = distinct !DILexicalBlock(scope: !351, file: !72, line: 803, column: 5)
!351 = distinct !DILexicalBlock(scope: !342, file: !72, line: 799, column: 16)
!352 = !DISubprogram(name: "attlist8", scope: !72, file: !72, line: 928, type: !180, isLocal: true, isDefinition: true, scopeLine: 933, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist8, variables: !353)
!353 = !{!354, !355, !356, !357, !358}
!354 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !352, file: !72, line: 928, type: !75)
!355 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !352, file: !72, line: 929, type: !69)
!356 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !352, file: !72, line: 930, type: !84)
!357 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !352, file: !72, line: 931, type: !84)
!358 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !352, file: !72, line: 932, type: !87)
!359 = !DISubprogram(name: "attlist9", scope: !72, file: !72, line: 968, type: !180, isLocal: true, isDefinition: true, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist9, variables: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !359, file: !72, line: 968, type: !75)
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !359, file: !72, line: 969, type: !69)
!363 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !359, file: !72, line: 970, type: !84)
!364 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !359, file: !72, line: 971, type: !84)
!365 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !359, file: !72, line: 972, type: !87)
!366 = !DISubprogram(name: "attlist5", scope: !72, file: !72, line: 873, type: !180, isLocal: true, isDefinition: true, scopeLine: 878, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist5, variables: !367)
!367 = !{!368, !369, !370, !371, !372}
!368 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !366, file: !72, line: 873, type: !75)
!369 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !366, file: !72, line: 874, type: !69)
!370 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !366, file: !72, line: 875, type: !84)
!371 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !366, file: !72, line: 876, type: !84)
!372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !366, file: !72, line: 877, type: !87)
!373 = !DISubprogram(name: "attlist6", scope: !72, file: !72, line: 890, type: !180, isLocal: true, isDefinition: true, scopeLine: 895, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist6, variables: !374)
!374 = !{!375, !376, !377, !378, !379}
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !373, file: !72, line: 890, type: !75)
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !373, file: !72, line: 891, type: !69)
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !373, file: !72, line: 892, type: !84)
!378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !373, file: !72, line: 893, type: !84)
!379 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !373, file: !72, line: 894, type: !87)
!380 = !DISubprogram(name: "attlist7", scope: !72, file: !72, line: 907, type: !180, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist7, variables: !381)
!381 = !{!382, !383, !384, !385, !386}
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !380, file: !72, line: 907, type: !75)
!383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !380, file: !72, line: 908, type: !69)
!384 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !380, file: !72, line: 909, type: !84)
!385 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !380, file: !72, line: 910, type: !84)
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !380, file: !72, line: 911, type: !87)
!387 = !DISubprogram(name: "attlist3", scope: !72, file: !72, line: 834, type: !180, isLocal: true, isDefinition: true, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist3, variables: !388)
!388 = !{!389, !390, !391, !392, !393}
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !387, file: !72, line: 834, type: !75)
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !387, file: !72, line: 835, type: !69)
!391 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !387, file: !72, line: 836, type: !84)
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !387, file: !72, line: 837, type: !84)
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !387, file: !72, line: 838, type: !87)
!394 = !DISubprogram(name: "attlist4", scope: !72, file: !72, line: 853, type: !180, isLocal: true, isDefinition: true, scopeLine: 858, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist4, variables: !395)
!395 = !{!396, !397, !398, !399, !400}
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !394, file: !72, line: 853, type: !75)
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !394, file: !72, line: 854, type: !69)
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !394, file: !72, line: 855, type: !84)
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !394, file: !72, line: 856, type: !84)
!400 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !394, file: !72, line: 857, type: !87)
!401 = !DISubprogram(name: "element0", scope: !72, file: !72, line: 985, type: !180, isLocal: true, isDefinition: true, scopeLine: 990, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element0, variables: !402)
!402 = !{!403, !404, !405, !406, !407}
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !401, file: !72, line: 985, type: !75)
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !401, file: !72, line: 986, type: !69)
!405 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !401, file: !72, line: 987, type: !84)
!406 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !401, file: !72, line: 988, type: !84)
!407 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !401, file: !72, line: 989, type: !87)
!408 = !DISubprogram(name: "element1", scope: !72, file: !72, line: 1003, type: !180, isLocal: true, isDefinition: true, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element1, variables: !409)
!409 = !{!410, !411, !412, !413, !414}
!410 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !408, file: !72, line: 1003, type: !75)
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !408, file: !72, line: 1004, type: !69)
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !408, file: !72, line: 1005, type: !84)
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !408, file: !72, line: 1006, type: !84)
!414 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !408, file: !72, line: 1007, type: !87)
!415 = !DISubprogram(name: "element2", scope: !72, file: !72, line: 1033, type: !180, isLocal: true, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element2, variables: !416)
!416 = !{!417, !418, !419, !420, !421}
!417 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !415, file: !72, line: 1033, type: !75)
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !415, file: !72, line: 1034, type: !69)
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !415, file: !72, line: 1035, type: !84)
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !415, file: !72, line: 1036, type: !84)
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !415, file: !72, line: 1037, type: !87)
!422 = !DISubprogram(name: "element3", scope: !72, file: !72, line: 1073, type: !180, isLocal: true, isDefinition: true, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element3, variables: !423)
!423 = !{!424, !425, !426, !427, !428}
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !422, file: !72, line: 1073, type: !75)
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !422, file: !72, line: 1074, type: !69)
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !422, file: !72, line: 1075, type: !84)
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !422, file: !72, line: 1076, type: !84)
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !422, file: !72, line: 1077, type: !87)
!429 = !DISubprogram(name: "element4", scope: !72, file: !72, line: 1098, type: !180, isLocal: true, isDefinition: true, scopeLine: 1103, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element4, variables: !430)
!430 = !{!431, !432, !433, !434, !435}
!431 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !429, file: !72, line: 1098, type: !75)
!432 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !429, file: !72, line: 1099, type: !69)
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !429, file: !72, line: 1100, type: !84)
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !429, file: !72, line: 1101, type: !84)
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !429, file: !72, line: 1102, type: !87)
!436 = !DISubprogram(name: "element5", scope: !72, file: !72, line: 1116, type: !180, isLocal: true, isDefinition: true, scopeLine: 1121, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element5, variables: !437)
!437 = !{!438, !439, !440, !441, !442}
!438 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !436, file: !72, line: 1116, type: !75)
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !436, file: !72, line: 1117, type: !69)
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !436, file: !72, line: 1118, type: !84)
!441 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !436, file: !72, line: 1119, type: !84)
!442 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !436, file: !72, line: 1120, type: !87)
!443 = !DISubprogram(name: "element6", scope: !72, file: !72, line: 1137, type: !180, isLocal: true, isDefinition: true, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element6, variables: !444)
!444 = !{!445, !446, !447, !448, !449}
!445 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !443, file: !72, line: 1137, type: !75)
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !443, file: !72, line: 1138, type: !69)
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !443, file: !72, line: 1139, type: !84)
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !443, file: !72, line: 1140, type: !84)
!449 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !443, file: !72, line: 1141, type: !87)
!450 = !DISubprogram(name: "element7", scope: !72, file: !72, line: 1167, type: !180, isLocal: true, isDefinition: true, scopeLine: 1172, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, variables: !451)
!451 = !{!452, !453, !454, !455, !456}
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !450, file: !72, line: 1167, type: !75)
!453 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !450, file: !72, line: 1168, type: !69)
!454 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !450, file: !72, line: 1169, type: !84)
!455 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !450, file: !72, line: 1170, type: !84)
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !450, file: !72, line: 1171, type: !87)
!457 = !DISubprogram(name: "notation0", scope: !72, file: !72, line: 657, type: !180, isLocal: true, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation0, variables: !458)
!458 = !{!459, !460, !461, !462, !463}
!459 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !457, file: !72, line: 657, type: !75)
!460 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !457, file: !72, line: 658, type: !69)
!461 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !457, file: !72, line: 659, type: !84)
!462 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !457, file: !72, line: 660, type: !84)
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !457, file: !72, line: 661, type: !87)
!464 = !DISubprogram(name: "notation1", scope: !72, file: !72, line: 674, type: !180, isLocal: true, isDefinition: true, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation1, variables: !465)
!465 = !{!466, !467, !468, !469, !470}
!466 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !464, file: !72, line: 674, type: !75)
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !464, file: !72, line: 675, type: !69)
!468 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !464, file: !72, line: 676, type: !84)
!469 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !464, file: !72, line: 677, type: !84)
!470 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !464, file: !72, line: 678, type: !87)
!471 = !DISubprogram(name: "notation3", scope: !72, file: !72, line: 715, type: !180, isLocal: true, isDefinition: true, scopeLine: 720, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation3, variables: !472)
!472 = !{!473, !474, !475, !476, !477}
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !471, file: !72, line: 715, type: !75)
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !471, file: !72, line: 716, type: !69)
!475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !471, file: !72, line: 717, type: !84)
!476 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !471, file: !72, line: 718, type: !84)
!477 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !471, file: !72, line: 719, type: !87)
!478 = !DISubprogram(name: "notation2", scope: !72, file: !72, line: 698, type: !180, isLocal: true, isDefinition: true, scopeLine: 703, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation2, variables: !479)
!479 = !{!480, !481, !482, !483, !484}
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !478, file: !72, line: 698, type: !75)
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !478, file: !72, line: 699, type: !69)
!482 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !478, file: !72, line: 700, type: !84)
!483 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !478, file: !72, line: 701, type: !84)
!484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !478, file: !72, line: 702, type: !87)
!485 = !DISubprogram(name: "notation4", scope: !72, file: !72, line: 733, type: !180, isLocal: true, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation4, variables: !486)
!486 = !{!487, !488, !489, !490, !491}
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !485, file: !72, line: 733, type: !75)
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !485, file: !72, line: 734, type: !69)
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !485, file: !72, line: 735, type: !84)
!490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !485, file: !72, line: 736, type: !84)
!491 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !485, file: !72, line: 737, type: !87)
!492 = !DISubprogram(name: "doctype5", scope: !72, file: !72, line: 319, type: !180, isLocal: true, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype5, variables: !493)
!493 = !{!494, !495, !496, !497, !498}
!494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !492, file: !72, line: 319, type: !75)
!495 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !492, file: !72, line: 320, type: !69)
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !492, file: !72, line: 321, type: !84)
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !492, file: !72, line: 322, type: !84)
!498 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !492, file: !72, line: 323, type: !87)
!499 = !DISubprogram(name: "prolog2", scope: !72, file: !72, line: 196, type: !180, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog2, variables: !500)
!500 = !{!501, !502, !503, !504, !505}
!501 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !499, file: !72, line: 196, type: !75)
!502 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !499, file: !72, line: 197, type: !69)
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !499, file: !72, line: 198, type: !84)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !499, file: !72, line: 199, type: !84)
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !499, file: !72, line: 200, type: !87)
!506 = !DISubprogram(name: "doctype3", scope: !72, file: !72, line: 282, type: !180, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype3, variables: !507)
!507 = !{!508, !509, !510, !511, !512}
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !506, file: !72, line: 282, type: !75)
!509 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !506, file: !72, line: 283, type: !69)
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !506, file: !72, line: 284, type: !84)
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !506, file: !72, line: 285, type: !84)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !506, file: !72, line: 286, type: !87)
!513 = !DISubprogram(name: "doctype4", scope: !72, file: !72, line: 299, type: !180, isLocal: true, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype4, variables: !514)
!514 = !{!515, !516, !517, !518, !519}
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !513, file: !72, line: 299, type: !75)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !513, file: !72, line: 300, type: !69)
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !513, file: !72, line: 301, type: !84)
!518 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !513, file: !72, line: 302, type: !84)
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !513, file: !72, line: 303, type: !87)
!520 = !DISubprogram(name: "doctype2", scope: !72, file: !72, line: 265, type: !180, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype2, variables: !521)
!521 = !{!522, !523, !524, !525, !526}
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !520, file: !72, line: 265, type: !75)
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !520, file: !72, line: 266, type: !69)
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !520, file: !72, line: 267, type: !84)
!525 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !520, file: !72, line: 268, type: !84)
!526 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !520, file: !72, line: 269, type: !87)
!527 = !DISubprogram(name: "error", scope: !72, file: !72, line: 1295, type: !180, isLocal: true, isDefinition: true, scopeLine: 1300, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @error, variables: !528)
!528 = !{!529, !530, !531, !532, !533}
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !527, file: !72, line: 1295, type: !75)
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !527, file: !72, line: 1296, type: !69)
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !527, file: !72, line: 1297, type: !84)
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !527, file: !72, line: 1298, type: !84)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !527, file: !72, line: 1299, type: !87)
!534 = !DISubprogram(name: "common", scope: !72, file: !72, line: 1305, type: !535, isLocal: true, isDefinition: true, scopeLine: 1306, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32)* @common, variables: !537)
!535 = !DISubroutineType(types: !536)
!536 = !{!69, !75, !69}
!537 = !{!538, !539}
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !534, file: !72, line: 1305, type: !75)
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !534, file: !72, line: 1305, type: !69)
!540 = !DISubprogram(name: "externalSubset0", scope: !72, file: !72, line: 393, type: !180, isLocal: true, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset0, variables: !541)
!541 = !{!542, !543, !544, !545, !546}
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !540, file: !72, line: 393, type: !75)
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 2, scope: !540, file: !72, line: 394, type: !69)
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 3, scope: !540, file: !72, line: 395, type: !84)
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 4, scope: !540, file: !72, line: 396, type: !84)
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 5, scope: !540, file: !72, line: 397, type: !87)
!547 = !{!548, !552, !556, !557, !558, !562, !563, !566, !567, !571, !572, !573, !577, !578, !579, !580, !581, !582, !583, !584, !586, !587, !588, !589}
!548 = !DIGlobalVariable(name: "KW_DOCTYPE", scope: !0, file: !72, line: 39, type: !549, isLocal: true, isDefinition: true, variable: [8 x i8]* @KW_DOCTYPE)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, align: 8, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 8)
!552 = !DIGlobalVariable(name: "KW_ENTITY", scope: !0, file: !72, line: 48, type: !553, isLocal: true, isDefinition: true, variable: [7 x i8]* @KW_ENTITY)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 56, align: 8, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: 7)
!556 = !DIGlobalVariable(name: "KW_INCLUDE", scope: !0, file: !72, line: 65, type: !549, isLocal: true, isDefinition: true, variable: [8 x i8]* @KW_INCLUDE)
!557 = !DIGlobalVariable(name: "KW_IGNORE", scope: !0, file: !72, line: 59, type: !553, isLocal: true, isDefinition: true, variable: [7 x i8]* @KW_IGNORE)
!558 = !DIGlobalVariable(name: "KW_NDATA", scope: !0, file: !72, line: 68, type: !559, isLocal: true, isDefinition: true, variable: [6 x i8]* @KW_NDATA)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 48, align: 8, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 6)
!562 = !DIGlobalVariable(name: "KW_ATTLIST", scope: !0, file: !72, line: 35, type: !549, isLocal: true, isDefinition: true, variable: [8 x i8]* @KW_ATTLIST)
!563 = !DIGlobalVariable(name: "types", scope: !342, file: !72, line: 804, type: !564, isLocal: true, isDefinition: true, variable: [8 x i8*]* @attlist2.types)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 512, align: 64, elements: !550)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!566 = !DIGlobalVariable(name: "KW_CDATA", scope: !0, file: !72, line: 37, type: !559, isLocal: true, isDefinition: true, variable: [6 x i8]* @KW_CDATA)
!567 = !DIGlobalVariable(name: "KW_ID", scope: !0, file: !72, line: 52, type: !568, isLocal: true, isDefinition: true, variable: [3 x i8]* @KW_ID)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 24, align: 8, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 3)
!571 = !DIGlobalVariable(name: "KW_IDREF", scope: !0, file: !72, line: 54, type: !559, isLocal: true, isDefinition: true, variable: [6 x i8]* @KW_IDREF)
!572 = !DIGlobalVariable(name: "KW_IDREFS", scope: !0, file: !72, line: 56, type: !553, isLocal: true, isDefinition: true, variable: [7 x i8]* @KW_IDREFS)
!573 = !DIGlobalVariable(name: "KW_ENTITIES", scope: !0, file: !72, line: 45, type: !574, isLocal: true, isDefinition: true, variable: [9 x i8]* @KW_ENTITIES)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 72, align: 8, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 9)
!577 = !DIGlobalVariable(name: "KW_NMTOKEN", scope: !0, file: !72, line: 70, type: !549, isLocal: true, isDefinition: true, variable: [8 x i8]* @KW_NMTOKEN)
!578 = !DIGlobalVariable(name: "KW_NMTOKENS", scope: !0, file: !72, line: 72, type: !574, isLocal: true, isDefinition: true, variable: [9 x i8]* @KW_NMTOKENS)
!579 = !DIGlobalVariable(name: "KW_IMPLIED", scope: !0, file: !72, line: 62, type: !549, isLocal: true, isDefinition: true, variable: [8 x i8]* @KW_IMPLIED)
!580 = !DIGlobalVariable(name: "KW_REQUIRED", scope: !0, file: !72, line: 82, type: !574, isLocal: true, isDefinition: true, variable: [9 x i8]* @KW_REQUIRED)
!581 = !DIGlobalVariable(name: "KW_FIXED", scope: !0, file: !72, line: 50, type: !559, isLocal: true, isDefinition: true, variable: [6 x i8]* @KW_FIXED)
!582 = !DIGlobalVariable(name: "KW_ELEMENT", scope: !0, file: !72, line: 41, type: !549, isLocal: true, isDefinition: true, variable: [8 x i8]* @KW_ELEMENT)
!583 = !DIGlobalVariable(name: "KW_EMPTY", scope: !0, file: !72, line: 43, type: !559, isLocal: true, isDefinition: true, variable: [6 x i8]* @KW_EMPTY)
!584 = !DIGlobalVariable(name: "KW_ANY", scope: !0, file: !72, line: 33, type: !585, isLocal: true, isDefinition: true, variable: [4 x i8]* @KW_ANY)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 32, align: 8, elements: !100)
!586 = !DIGlobalVariable(name: "KW_PCDATA", scope: !0, file: !72, line: 78, type: !553, isLocal: true, isDefinition: true, variable: [7 x i8]* @KW_PCDATA)
!587 = !DIGlobalVariable(name: "KW_NOTATION", scope: !0, file: !72, line: 75, type: !574, isLocal: true, isDefinition: true, variable: [9 x i8]* @KW_NOTATION)
!588 = !DIGlobalVariable(name: "KW_SYSTEM", scope: !0, file: !72, line: 85, type: !553, isLocal: true, isDefinition: true, variable: [7 x i8]* @KW_SYSTEM)
!589 = !DIGlobalVariable(name: "KW_PUBLIC", scope: !0, file: !72, line: 80, type: !553, isLocal: true, isDefinition: true, variable: [7 x i8]* @KW_PUBLIC)
!590 = !{i32 2, !"Dwarf Version", i32 4}
!591 = !{i32 2, !"Debug Info Version", i32 3}
!592 = !{i32 1, !"PIC Level", i32 2}
!593 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!594 = !{!595, !595, i64 0}
!595 = !{!"any pointer", !596, i64 0}
!596 = !{!"omnipotent char", !597, i64 0}
!597 = !{!"Simple C/C++ TBAA"}
!598 = !DIExpression()
!599 = !DILocation(line: 1316, column: 42, scope: !71)
!600 = !DILocation(line: 1318, column: 3, scope: !71)
!601 = !DILocation(line: 1318, column: 10, scope: !71)
!602 = !DILocation(line: 1318, column: 18, scope: !71)
!603 = !{!604, !595, i64 0}
!604 = !{!"prolog_state", !595, i64 0, !605, i64 8, !605, i64 12, !605, i64 16, !605, i64 20, !605, i64 24}
!605 = !{!"int", !596, i64 0}
!606 = !DILocation(line: 1320, column: 3, scope: !71)
!607 = !DILocation(line: 1320, column: 10, scope: !71)
!608 = !DILocation(line: 1320, column: 25, scope: !71)
!609 = !{!604, !605, i64 20}
!610 = !DILocation(line: 1321, column: 3, scope: !71)
!611 = !DILocation(line: 1321, column: 10, scope: !71)
!612 = !DILocation(line: 1321, column: 23, scope: !71)
!613 = !{!604, !605, i64 16}
!614 = !DILocation(line: 1322, column: 3, scope: !71)
!615 = !DILocation(line: 1322, column: 10, scope: !71)
!616 = !DILocation(line: 1322, column: 24, scope: !71)
!617 = !{!604, !605, i64 24}
!618 = !DILocation(line: 1324, column: 1, scope: !71)
!619 = !DILocation(line: 128, column: 23, scope: !179)
!620 = !{!605, !605, i64 0}
!621 = !DILocation(line: 129, column: 13, scope: !179)
!622 = !DILocation(line: 130, column: 21, scope: !179)
!623 = !DILocation(line: 131, column: 21, scope: !179)
!624 = !DILocation(line: 132, column: 25, scope: !179)
!625 = !DILocation(line: 134, column: 11, scope: !179)
!626 = !DILocation(line: 134, column: 3, scope: !179)
!627 = !DILocation(line: 136, column: 5, scope: !628)
!628 = distinct !DILexicalBlock(scope: !179, file: !72, line: 134, column: 16)
!629 = !DILocation(line: 136, column: 12, scope: !628)
!630 = !DILocation(line: 136, column: 20, scope: !628)
!631 = !DILocation(line: 137, column: 5, scope: !628)
!632 = !DILocation(line: 139, column: 5, scope: !628)
!633 = !DILocation(line: 139, column: 12, scope: !628)
!634 = !DILocation(line: 139, column: 20, scope: !628)
!635 = !DILocation(line: 140, column: 5, scope: !628)
!636 = !DILocation(line: 142, column: 5, scope: !628)
!637 = !DILocation(line: 142, column: 12, scope: !628)
!638 = !DILocation(line: 142, column: 20, scope: !628)
!639 = !DILocation(line: 143, column: 5, scope: !628)
!640 = !DILocation(line: 145, column: 5, scope: !628)
!641 = !DILocation(line: 145, column: 12, scope: !628)
!642 = !DILocation(line: 145, column: 20, scope: !628)
!643 = !DILocation(line: 146, column: 5, scope: !628)
!644 = !DILocation(line: 148, column: 5, scope: !628)
!645 = !DILocation(line: 150, column: 13, scope: !646)
!646 = distinct !DILexicalBlock(scope: !628, file: !72, line: 150, column: 9)
!647 = !DILocation(line: 150, column: 19, scope: !646)
!648 = !{!649, !595, i64 56}
!649 = !{!"encoding", !596, i64 0, !596, i64 32, !595, i64 48, !595, i64 56, !595, i64 64, !595, i64 72, !595, i64 80, !595, i64 88, !595, i64 96, !595, i64 104, !595, i64 112, !595, i64 120, !595, i64 128, !605, i64 136, !596, i64 140, !596, i64 141}
!650 = !DILocation(line: 150, column: 37, scope: !646)
!651 = !DILocation(line: 150, column: 42, scope: !646)
!652 = !DILocation(line: 150, column: 54, scope: !646)
!653 = !DILocation(line: 150, column: 60, scope: !646)
!654 = !{!649, !605, i64 136}
!655 = !DILocation(line: 150, column: 50, scope: !646)
!656 = !DILocation(line: 150, column: 46, scope: !646)
!657 = !DILocation(line: 150, column: 78, scope: !646)
!658 = !DILocation(line: 150, column: 11, scope: !646)
!659 = !DILocation(line: 150, column: 9, scope: !628)
!660 = !DILocation(line: 154, column: 7, scope: !646)
!661 = !DILocation(line: 155, column: 5, scope: !628)
!662 = !DILocation(line: 155, column: 12, scope: !628)
!663 = !DILocation(line: 155, column: 20, scope: !628)
!664 = !DILocation(line: 156, column: 5, scope: !628)
!665 = !DILocation(line: 158, column: 5, scope: !628)
!666 = !DILocation(line: 158, column: 12, scope: !628)
!667 = !DILocation(line: 158, column: 20, scope: !628)
!668 = !DILocation(line: 159, column: 5, scope: !628)
!669 = !DILocation(line: 161, column: 17, scope: !179)
!670 = !DILocation(line: 161, column: 24, scope: !179)
!671 = !DILocation(line: 161, column: 10, scope: !179)
!672 = !DILocation(line: 161, column: 3, scope: !179)
!673 = !DILocation(line: 162, column: 1, scope: !179)
!674 = !DILocation(line: 1329, column: 56, scope: !176)
!675 = !DILocation(line: 1331, column: 3, scope: !176)
!676 = !DILocation(line: 1331, column: 10, scope: !176)
!677 = !DILocation(line: 1331, column: 18, scope: !176)
!678 = !DILocation(line: 1332, column: 3, scope: !176)
!679 = !DILocation(line: 1332, column: 10, scope: !176)
!680 = !DILocation(line: 1332, column: 25, scope: !176)
!681 = !DILocation(line: 1333, column: 3, scope: !176)
!682 = !DILocation(line: 1333, column: 10, scope: !176)
!683 = !DILocation(line: 1333, column: 23, scope: !176)
!684 = !DILocation(line: 1334, column: 1, scope: !176)
!685 = !DILocation(line: 393, column: 31, scope: !540)
!686 = !DILocation(line: 394, column: 21, scope: !540)
!687 = !DILocation(line: 395, column: 29, scope: !540)
!688 = !DILocation(line: 396, column: 29, scope: !540)
!689 = !DILocation(line: 397, column: 33, scope: !540)
!690 = !DILocation(line: 399, column: 3, scope: !540)
!691 = !DILocation(line: 399, column: 10, scope: !540)
!692 = !DILocation(line: 399, column: 18, scope: !540)
!693 = !DILocation(line: 400, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !540, file: !72, line: 400, column: 7)
!695 = !DILocation(line: 400, column: 11, scope: !694)
!696 = !DILocation(line: 400, column: 7, scope: !540)
!697 = !DILocation(line: 401, column: 5, scope: !694)
!698 = !DILocation(line: 402, column: 26, scope: !540)
!699 = !DILocation(line: 402, column: 33, scope: !540)
!700 = !DILocation(line: 402, column: 38, scope: !540)
!701 = !DILocation(line: 402, column: 43, scope: !540)
!702 = !DILocation(line: 402, column: 48, scope: !540)
!703 = !DILocation(line: 402, column: 10, scope: !540)
!704 = !DILocation(line: 402, column: 3, scope: !540)
!705 = !DILocation(line: 403, column: 1, scope: !540)
!706 = !DILocation(line: 165, column: 23, scope: !188)
!707 = !DILocation(line: 166, column: 13, scope: !188)
!708 = !DILocation(line: 167, column: 21, scope: !188)
!709 = !DILocation(line: 168, column: 21, scope: !188)
!710 = !DILocation(line: 169, column: 25, scope: !188)
!711 = !DILocation(line: 171, column: 11, scope: !188)
!712 = !DILocation(line: 171, column: 3, scope: !188)
!713 = !DILocation(line: 173, column: 5, scope: !714)
!714 = distinct !DILexicalBlock(scope: !188, file: !72, line: 171, column: 16)
!715 = !DILocation(line: 175, column: 5, scope: !714)
!716 = !DILocation(line: 177, column: 5, scope: !714)
!717 = !DILocation(line: 179, column: 5, scope: !714)
!718 = !DILocation(line: 181, column: 13, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !72, line: 181, column: 9)
!720 = !DILocation(line: 181, column: 19, scope: !719)
!721 = !DILocation(line: 181, column: 37, scope: !719)
!722 = !DILocation(line: 181, column: 42, scope: !719)
!723 = !DILocation(line: 181, column: 54, scope: !719)
!724 = !DILocation(line: 181, column: 60, scope: !719)
!725 = !DILocation(line: 181, column: 50, scope: !719)
!726 = !DILocation(line: 181, column: 46, scope: !719)
!727 = !DILocation(line: 181, column: 78, scope: !719)
!728 = !DILocation(line: 181, column: 11, scope: !719)
!729 = !DILocation(line: 181, column: 9, scope: !714)
!730 = !DILocation(line: 185, column: 7, scope: !719)
!731 = !DILocation(line: 186, column: 5, scope: !714)
!732 = !DILocation(line: 186, column: 12, scope: !714)
!733 = !DILocation(line: 186, column: 20, scope: !714)
!734 = !DILocation(line: 187, column: 5, scope: !714)
!735 = !DILocation(line: 189, column: 5, scope: !714)
!736 = !DILocation(line: 189, column: 12, scope: !714)
!737 = !DILocation(line: 189, column: 20, scope: !714)
!738 = !DILocation(line: 190, column: 5, scope: !714)
!739 = !DILocation(line: 192, column: 17, scope: !188)
!740 = !DILocation(line: 192, column: 24, scope: !188)
!741 = !DILocation(line: 192, column: 10, scope: !188)
!742 = !DILocation(line: 192, column: 3, scope: !188)
!743 = !DILocation(line: 193, column: 1, scope: !188)
!744 = !DILocation(line: 217, column: 24, scope: !195)
!745 = !DILocation(line: 218, column: 14, scope: !195)
!746 = !DILocation(line: 219, column: 22, scope: !195)
!747 = !DILocation(line: 220, column: 22, scope: !195)
!748 = !DILocation(line: 221, column: 26, scope: !195)
!749 = !DILocation(line: 223, column: 11, scope: !195)
!750 = !DILocation(line: 223, column: 3, scope: !195)
!751 = !DILocation(line: 225, column: 5, scope: !752)
!752 = distinct !DILexicalBlock(scope: !195, file: !72, line: 223, column: 16)
!753 = !DILocation(line: 228, column: 5, scope: !752)
!754 = !DILocation(line: 228, column: 12, scope: !752)
!755 = !DILocation(line: 228, column: 20, scope: !752)
!756 = !DILocation(line: 229, column: 5, scope: !752)
!757 = !DILocation(line: 231, column: 17, scope: !195)
!758 = !DILocation(line: 231, column: 24, scope: !195)
!759 = !DILocation(line: 231, column: 10, scope: !195)
!760 = !DILocation(line: 231, column: 3, scope: !195)
!761 = !DILocation(line: 232, column: 1, scope: !195)
!762 = !DILocation(line: 1295, column: 21, scope: !527)
!763 = !DILocation(line: 1296, column: 11, scope: !527)
!764 = !DILocation(line: 1297, column: 19, scope: !527)
!765 = !DILocation(line: 1298, column: 19, scope: !527)
!766 = !DILocation(line: 1299, column: 23, scope: !527)
!767 = !DILocation(line: 1301, column: 3, scope: !527)
!768 = !DILocation(line: 1305, column: 22, scope: !534)
!769 = !DILocation(line: 1305, column: 33, scope: !534)
!770 = !DILocation(line: 1308, column: 8, scope: !771)
!771 = distinct !DILexicalBlock(scope: !534, file: !72, line: 1308, column: 7)
!772 = !DILocation(line: 1308, column: 15, scope: !771)
!773 = !DILocation(line: 1308, column: 30, scope: !771)
!774 = !DILocation(line: 1308, column: 33, scope: !775)
!775 = !DILexicalBlockFile(scope: !771, file: !72, discriminator: 1)
!776 = !DILocation(line: 1308, column: 37, scope: !771)
!777 = !DILocation(line: 1308, column: 7, scope: !534)
!778 = !DILocation(line: 1309, column: 5, scope: !771)
!779 = !DILocation(line: 1311, column: 3, scope: !534)
!780 = !DILocation(line: 1311, column: 10, scope: !534)
!781 = !DILocation(line: 1311, column: 18, scope: !534)
!782 = !DILocation(line: 1312, column: 3, scope: !534)
!783 = !DILocation(line: 1313, column: 1, scope: !534)
!784 = !DILocation(line: 235, column: 24, scope: !202)
!785 = !DILocation(line: 236, column: 14, scope: !202)
!786 = !DILocation(line: 237, column: 22, scope: !202)
!787 = !DILocation(line: 238, column: 22, scope: !202)
!788 = !DILocation(line: 239, column: 26, scope: !202)
!789 = !DILocation(line: 241, column: 11, scope: !202)
!790 = !DILocation(line: 241, column: 3, scope: !202)
!791 = !DILocation(line: 243, column: 5, scope: !792)
!792 = distinct !DILexicalBlock(scope: !202, file: !72, line: 241, column: 16)
!793 = !DILocation(line: 245, column: 5, scope: !792)
!794 = !DILocation(line: 245, column: 12, scope: !792)
!795 = !DILocation(line: 245, column: 20, scope: !792)
!796 = !DILocation(line: 246, column: 5, scope: !792)
!797 = !DILocation(line: 248, column: 5, scope: !792)
!798 = !DILocation(line: 248, column: 12, scope: !792)
!799 = !DILocation(line: 248, column: 20, scope: !792)
!800 = !DILocation(line: 249, column: 5, scope: !792)
!801 = !DILocation(line: 251, column: 12, scope: !802)
!802 = distinct !DILexicalBlock(scope: !792, file: !72, line: 251, column: 9)
!803 = !DILocation(line: 251, column: 18, scope: !802)
!804 = !DILocation(line: 251, column: 36, scope: !802)
!805 = !DILocation(line: 251, column: 41, scope: !802)
!806 = !DILocation(line: 251, column: 46, scope: !802)
!807 = !DILocation(line: 251, column: 10, scope: !802)
!808 = !DILocation(line: 251, column: 9, scope: !792)
!809 = !DILocation(line: 252, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !802, file: !72, line: 251, column: 64)
!811 = !DILocation(line: 252, column: 14, scope: !810)
!812 = !DILocation(line: 252, column: 22, scope: !810)
!813 = !DILocation(line: 253, column: 7, scope: !810)
!814 = !DILocation(line: 255, column: 12, scope: !815)
!815 = distinct !DILexicalBlock(scope: !792, file: !72, line: 255, column: 9)
!816 = !DILocation(line: 255, column: 18, scope: !815)
!817 = !DILocation(line: 255, column: 36, scope: !815)
!818 = !DILocation(line: 255, column: 41, scope: !815)
!819 = !DILocation(line: 255, column: 46, scope: !815)
!820 = !DILocation(line: 255, column: 10, scope: !815)
!821 = !DILocation(line: 255, column: 9, scope: !792)
!822 = !DILocation(line: 256, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !815, file: !72, line: 255, column: 64)
!824 = !DILocation(line: 256, column: 14, scope: !823)
!825 = !DILocation(line: 256, column: 22, scope: !823)
!826 = !DILocation(line: 257, column: 7, scope: !823)
!827 = !DILocation(line: 259, column: 5, scope: !792)
!828 = !DILocation(line: 261, column: 17, scope: !202)
!829 = !DILocation(line: 261, column: 24, scope: !202)
!830 = !DILocation(line: 261, column: 10, scope: !202)
!831 = !DILocation(line: 261, column: 3, scope: !202)
!832 = !DILocation(line: 262, column: 1, scope: !202)
!833 = !DILocation(line: 336, column: 30, scope: !209)
!834 = !DILocation(line: 337, column: 20, scope: !209)
!835 = !DILocation(line: 338, column: 28, scope: !209)
!836 = !DILocation(line: 339, column: 28, scope: !209)
!837 = !DILocation(line: 340, column: 32, scope: !209)
!838 = !DILocation(line: 342, column: 11, scope: !209)
!839 = !DILocation(line: 342, column: 3, scope: !209)
!840 = !DILocation(line: 344, column: 5, scope: !841)
!841 = distinct !DILexicalBlock(scope: !209, file: !72, line: 342, column: 16)
!842 = !DILocation(line: 346, column: 12, scope: !843)
!843 = distinct !DILexicalBlock(scope: !841, file: !72, line: 346, column: 9)
!844 = !DILocation(line: 346, column: 18, scope: !843)
!845 = !DILocation(line: 346, column: 36, scope: !843)
!846 = !DILocation(line: 346, column: 41, scope: !843)
!847 = !DILocation(line: 346, column: 53, scope: !843)
!848 = !DILocation(line: 346, column: 59, scope: !843)
!849 = !DILocation(line: 346, column: 49, scope: !843)
!850 = !DILocation(line: 346, column: 45, scope: !843)
!851 = !DILocation(line: 346, column: 77, scope: !843)
!852 = !DILocation(line: 346, column: 10, scope: !843)
!853 = !DILocation(line: 346, column: 9, scope: !841)
!854 = !DILocation(line: 350, column: 7, scope: !855)
!855 = distinct !DILexicalBlock(scope: !843, file: !72, line: 346, column: 95)
!856 = !DILocation(line: 350, column: 14, scope: !855)
!857 = !DILocation(line: 350, column: 22, scope: !855)
!858 = !DILocation(line: 351, column: 7, scope: !855)
!859 = !DILocation(line: 353, column: 12, scope: !860)
!860 = distinct !DILexicalBlock(scope: !841, file: !72, line: 353, column: 9)
!861 = !DILocation(line: 353, column: 18, scope: !860)
!862 = !DILocation(line: 353, column: 36, scope: !860)
!863 = !DILocation(line: 353, column: 41, scope: !860)
!864 = !DILocation(line: 353, column: 53, scope: !860)
!865 = !DILocation(line: 353, column: 59, scope: !860)
!866 = !DILocation(line: 353, column: 49, scope: !860)
!867 = !DILocation(line: 353, column: 45, scope: !860)
!868 = !DILocation(line: 353, column: 77, scope: !860)
!869 = !DILocation(line: 353, column: 10, scope: !860)
!870 = !DILocation(line: 353, column: 9, scope: !841)
!871 = !DILocation(line: 357, column: 7, scope: !872)
!872 = distinct !DILexicalBlock(scope: !860, file: !72, line: 353, column: 96)
!873 = !DILocation(line: 357, column: 14, scope: !872)
!874 = !DILocation(line: 357, column: 22, scope: !872)
!875 = !DILocation(line: 358, column: 7, scope: !872)
!876 = !DILocation(line: 360, column: 12, scope: !877)
!877 = distinct !DILexicalBlock(scope: !841, file: !72, line: 360, column: 9)
!878 = !DILocation(line: 360, column: 18, scope: !877)
!879 = !DILocation(line: 360, column: 36, scope: !877)
!880 = !DILocation(line: 360, column: 41, scope: !877)
!881 = !DILocation(line: 360, column: 53, scope: !877)
!882 = !DILocation(line: 360, column: 59, scope: !877)
!883 = !DILocation(line: 360, column: 49, scope: !877)
!884 = !DILocation(line: 360, column: 45, scope: !877)
!885 = !DILocation(line: 360, column: 77, scope: !877)
!886 = !DILocation(line: 360, column: 10, scope: !877)
!887 = !DILocation(line: 360, column: 9, scope: !841)
!888 = !DILocation(line: 364, column: 7, scope: !889)
!889 = distinct !DILexicalBlock(scope: !877, file: !72, line: 360, column: 96)
!890 = !DILocation(line: 364, column: 14, scope: !889)
!891 = !DILocation(line: 364, column: 22, scope: !889)
!892 = !DILocation(line: 365, column: 7, scope: !889)
!893 = !DILocation(line: 367, column: 12, scope: !894)
!894 = distinct !DILexicalBlock(scope: !841, file: !72, line: 367, column: 9)
!895 = !DILocation(line: 367, column: 18, scope: !894)
!896 = !DILocation(line: 367, column: 36, scope: !894)
!897 = !DILocation(line: 367, column: 41, scope: !894)
!898 = !DILocation(line: 367, column: 53, scope: !894)
!899 = !DILocation(line: 367, column: 59, scope: !894)
!900 = !DILocation(line: 367, column: 49, scope: !894)
!901 = !DILocation(line: 367, column: 45, scope: !894)
!902 = !DILocation(line: 367, column: 77, scope: !894)
!903 = !DILocation(line: 367, column: 10, scope: !894)
!904 = !DILocation(line: 367, column: 9, scope: !841)
!905 = !DILocation(line: 371, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !894, file: !72, line: 367, column: 97)
!907 = !DILocation(line: 371, column: 14, scope: !906)
!908 = !DILocation(line: 371, column: 22, scope: !906)
!909 = !DILocation(line: 372, column: 7, scope: !906)
!910 = !DILocation(line: 374, column: 5, scope: !841)
!911 = !DILocation(line: 376, column: 5, scope: !841)
!912 = !DILocation(line: 378, column: 5, scope: !841)
!913 = !DILocation(line: 380, column: 5, scope: !841)
!914 = !DILocation(line: 382, column: 5, scope: !841)
!915 = !DILocation(line: 382, column: 12, scope: !841)
!916 = !DILocation(line: 382, column: 20, scope: !841)
!917 = !DILocation(line: 383, column: 5, scope: !841)
!918 = !DILocation(line: 385, column: 5, scope: !841)
!919 = !DILocation(line: 387, column: 17, scope: !209)
!920 = !DILocation(line: 387, column: 24, scope: !209)
!921 = !DILocation(line: 387, column: 10, scope: !209)
!922 = !DILocation(line: 387, column: 3, scope: !209)
!923 = !DILocation(line: 388, column: 1, scope: !209)
!924 = !DILocation(line: 196, column: 23, scope: !499)
!925 = !DILocation(line: 197, column: 13, scope: !499)
!926 = !DILocation(line: 198, column: 21, scope: !499)
!927 = !DILocation(line: 199, column: 21, scope: !499)
!928 = !DILocation(line: 200, column: 25, scope: !499)
!929 = !DILocation(line: 202, column: 11, scope: !499)
!930 = !DILocation(line: 202, column: 3, scope: !499)
!931 = !DILocation(line: 204, column: 5, scope: !932)
!932 = distinct !DILexicalBlock(scope: !499, file: !72, line: 202, column: 16)
!933 = !DILocation(line: 206, column: 5, scope: !932)
!934 = !DILocation(line: 208, column: 5, scope: !932)
!935 = !DILocation(line: 210, column: 5, scope: !932)
!936 = !DILocation(line: 210, column: 12, scope: !932)
!937 = !DILocation(line: 210, column: 20, scope: !932)
!938 = !DILocation(line: 211, column: 5, scope: !932)
!939 = !DILocation(line: 213, column: 17, scope: !499)
!940 = !DILocation(line: 213, column: 24, scope: !499)
!941 = !DILocation(line: 213, column: 10, scope: !499)
!942 = !DILocation(line: 213, column: 3, scope: !499)
!943 = !DILocation(line: 214, column: 1, scope: !499)
!944 = !DILocation(line: 282, column: 24, scope: !506)
!945 = !DILocation(line: 283, column: 14, scope: !506)
!946 = !DILocation(line: 284, column: 22, scope: !506)
!947 = !DILocation(line: 285, column: 22, scope: !506)
!948 = !DILocation(line: 286, column: 26, scope: !506)
!949 = !DILocation(line: 288, column: 11, scope: !506)
!950 = !DILocation(line: 288, column: 3, scope: !506)
!951 = !DILocation(line: 290, column: 5, scope: !952)
!952 = distinct !DILexicalBlock(scope: !506, file: !72, line: 288, column: 16)
!953 = !DILocation(line: 292, column: 5, scope: !952)
!954 = !DILocation(line: 292, column: 12, scope: !952)
!955 = !DILocation(line: 292, column: 20, scope: !952)
!956 = !DILocation(line: 293, column: 5, scope: !952)
!957 = !DILocation(line: 295, column: 17, scope: !506)
!958 = !DILocation(line: 295, column: 24, scope: !506)
!959 = !DILocation(line: 295, column: 10, scope: !506)
!960 = !DILocation(line: 295, column: 3, scope: !506)
!961 = !DILocation(line: 296, column: 1, scope: !506)
!962 = !DILocation(line: 265, column: 24, scope: !520)
!963 = !DILocation(line: 266, column: 14, scope: !520)
!964 = !DILocation(line: 267, column: 22, scope: !520)
!965 = !DILocation(line: 268, column: 22, scope: !520)
!966 = !DILocation(line: 269, column: 26, scope: !520)
!967 = !DILocation(line: 271, column: 11, scope: !520)
!968 = !DILocation(line: 271, column: 3, scope: !520)
!969 = !DILocation(line: 273, column: 5, scope: !970)
!970 = distinct !DILexicalBlock(scope: !520, file: !72, line: 271, column: 16)
!971 = !DILocation(line: 275, column: 5, scope: !970)
!972 = !DILocation(line: 275, column: 12, scope: !970)
!973 = !DILocation(line: 275, column: 20, scope: !970)
!974 = !DILocation(line: 276, column: 5, scope: !970)
!975 = !DILocation(line: 278, column: 17, scope: !520)
!976 = !DILocation(line: 278, column: 24, scope: !520)
!977 = !DILocation(line: 278, column: 10, scope: !520)
!978 = !DILocation(line: 278, column: 3, scope: !520)
!979 = !DILocation(line: 279, column: 1, scope: !520)
!980 = !DILocation(line: 438, column: 23, scope: !216)
!981 = !DILocation(line: 439, column: 13, scope: !216)
!982 = !DILocation(line: 440, column: 21, scope: !216)
!983 = !DILocation(line: 441, column: 21, scope: !216)
!984 = !DILocation(line: 442, column: 25, scope: !216)
!985 = !DILocation(line: 444, column: 11, scope: !216)
!986 = !DILocation(line: 444, column: 3, scope: !216)
!987 = !DILocation(line: 446, column: 5, scope: !988)
!988 = distinct !DILexicalBlock(scope: !216, file: !72, line: 444, column: 16)
!989 = !DILocation(line: 448, column: 5, scope: !988)
!990 = !DILocation(line: 448, column: 12, scope: !988)
!991 = !DILocation(line: 448, column: 20, scope: !988)
!992 = !DILocation(line: 449, column: 5, scope: !988)
!993 = !DILocation(line: 451, column: 5, scope: !988)
!994 = !DILocation(line: 451, column: 12, scope: !988)
!995 = !DILocation(line: 451, column: 20, scope: !988)
!996 = !DILocation(line: 452, column: 5, scope: !988)
!997 = !DILocation(line: 454, column: 17, scope: !216)
!998 = !DILocation(line: 454, column: 24, scope: !216)
!999 = !DILocation(line: 454, column: 10, scope: !216)
!1000 = !DILocation(line: 454, column: 3, scope: !216)
!1001 = !DILocation(line: 455, column: 1, scope: !216)
!1002 = !DILocation(line: 754, column: 24, scope: !328)
!1003 = !DILocation(line: 755, column: 14, scope: !328)
!1004 = !DILocation(line: 756, column: 22, scope: !328)
!1005 = !DILocation(line: 757, column: 22, scope: !328)
!1006 = !DILocation(line: 758, column: 26, scope: !328)
!1007 = !DILocation(line: 760, column: 11, scope: !328)
!1008 = !DILocation(line: 760, column: 3, scope: !328)
!1009 = !DILocation(line: 762, column: 5, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !328, file: !72, line: 760, column: 16)
!1011 = !DILocation(line: 765, column: 5, scope: !1010)
!1012 = !DILocation(line: 765, column: 12, scope: !1010)
!1013 = !DILocation(line: 765, column: 20, scope: !1010)
!1014 = !DILocation(line: 766, column: 5, scope: !1010)
!1015 = !DILocation(line: 768, column: 17, scope: !328)
!1016 = !DILocation(line: 768, column: 24, scope: !328)
!1017 = !DILocation(line: 768, column: 10, scope: !328)
!1018 = !DILocation(line: 768, column: 3, scope: !328)
!1019 = !DILocation(line: 769, column: 1, scope: !328)
!1020 = !DILocation(line: 985, column: 24, scope: !401)
!1021 = !DILocation(line: 986, column: 14, scope: !401)
!1022 = !DILocation(line: 987, column: 22, scope: !401)
!1023 = !DILocation(line: 988, column: 22, scope: !401)
!1024 = !DILocation(line: 989, column: 26, scope: !401)
!1025 = !DILocation(line: 991, column: 11, scope: !401)
!1026 = !DILocation(line: 991, column: 3, scope: !401)
!1027 = !DILocation(line: 993, column: 5, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !401, file: !72, line: 991, column: 16)
!1029 = !DILocation(line: 996, column: 5, scope: !1028)
!1030 = !DILocation(line: 996, column: 12, scope: !1028)
!1031 = !DILocation(line: 996, column: 20, scope: !1028)
!1032 = !DILocation(line: 997, column: 5, scope: !1028)
!1033 = !DILocation(line: 999, column: 17, scope: !401)
!1034 = !DILocation(line: 999, column: 24, scope: !401)
!1035 = !DILocation(line: 999, column: 10, scope: !401)
!1036 = !DILocation(line: 999, column: 3, scope: !401)
!1037 = !DILocation(line: 1000, column: 1, scope: !401)
!1038 = !DILocation(line: 657, column: 25, scope: !457)
!1039 = !DILocation(line: 658, column: 15, scope: !457)
!1040 = !DILocation(line: 659, column: 23, scope: !457)
!1041 = !DILocation(line: 660, column: 23, scope: !457)
!1042 = !DILocation(line: 661, column: 27, scope: !457)
!1043 = !DILocation(line: 663, column: 11, scope: !457)
!1044 = !DILocation(line: 663, column: 3, scope: !457)
!1045 = !DILocation(line: 665, column: 5, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !457, file: !72, line: 663, column: 16)
!1047 = !DILocation(line: 667, column: 5, scope: !1046)
!1048 = !DILocation(line: 667, column: 12, scope: !1046)
!1049 = !DILocation(line: 667, column: 20, scope: !1046)
!1050 = !DILocation(line: 668, column: 5, scope: !1046)
!1051 = !DILocation(line: 670, column: 17, scope: !457)
!1052 = !DILocation(line: 670, column: 24, scope: !457)
!1053 = !DILocation(line: 670, column: 10, scope: !457)
!1054 = !DILocation(line: 670, column: 3, scope: !457)
!1055 = !DILocation(line: 671, column: 1, scope: !457)
!1056 = !DILocation(line: 319, column: 24, scope: !492)
!1057 = !DILocation(line: 320, column: 14, scope: !492)
!1058 = !DILocation(line: 321, column: 22, scope: !492)
!1059 = !DILocation(line: 322, column: 22, scope: !492)
!1060 = !DILocation(line: 323, column: 26, scope: !492)
!1061 = !DILocation(line: 325, column: 11, scope: !492)
!1062 = !DILocation(line: 325, column: 3, scope: !492)
!1063 = !DILocation(line: 327, column: 5, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !492, file: !72, line: 325, column: 16)
!1065 = !DILocation(line: 329, column: 5, scope: !1064)
!1066 = !DILocation(line: 329, column: 12, scope: !1064)
!1067 = !DILocation(line: 329, column: 20, scope: !1064)
!1068 = !DILocation(line: 330, column: 5, scope: !1064)
!1069 = !DILocation(line: 332, column: 17, scope: !492)
!1070 = !DILocation(line: 332, column: 24, scope: !492)
!1071 = !DILocation(line: 332, column: 10, scope: !492)
!1072 = !DILocation(line: 332, column: 3, scope: !492)
!1073 = !DILocation(line: 333, column: 1, scope: !492)
!1074 = !DILocation(line: 458, column: 23, scope: !223)
!1075 = !DILocation(line: 459, column: 13, scope: !223)
!1076 = !DILocation(line: 460, column: 21, scope: !223)
!1077 = !DILocation(line: 461, column: 21, scope: !223)
!1078 = !DILocation(line: 462, column: 25, scope: !223)
!1079 = !DILocation(line: 464, column: 11, scope: !223)
!1080 = !DILocation(line: 464, column: 3, scope: !223)
!1081 = !DILocation(line: 466, column: 5, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !223, file: !72, line: 464, column: 16)
!1083 = !DILocation(line: 468, column: 5, scope: !1082)
!1084 = !DILocation(line: 468, column: 12, scope: !1082)
!1085 = !DILocation(line: 468, column: 20, scope: !1082)
!1086 = !DILocation(line: 469, column: 5, scope: !1082)
!1087 = !DILocation(line: 471, column: 17, scope: !223)
!1088 = !DILocation(line: 471, column: 24, scope: !223)
!1089 = !DILocation(line: 471, column: 10, scope: !223)
!1090 = !DILocation(line: 471, column: 3, scope: !223)
!1091 = !DILocation(line: 472, column: 1, scope: !223)
!1092 = !DILocation(line: 475, column: 23, scope: !293)
!1093 = !DILocation(line: 476, column: 13, scope: !293)
!1094 = !DILocation(line: 477, column: 21, scope: !293)
!1095 = !DILocation(line: 478, column: 21, scope: !293)
!1096 = !DILocation(line: 479, column: 25, scope: !293)
!1097 = !DILocation(line: 481, column: 11, scope: !293)
!1098 = !DILocation(line: 481, column: 3, scope: !293)
!1099 = !DILocation(line: 483, column: 5, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !293, file: !72, line: 481, column: 16)
!1101 = !DILocation(line: 485, column: 12, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1100, file: !72, line: 485, column: 9)
!1103 = !DILocation(line: 485, column: 18, scope: !1102)
!1104 = !DILocation(line: 485, column: 36, scope: !1102)
!1105 = !DILocation(line: 485, column: 41, scope: !1102)
!1106 = !DILocation(line: 485, column: 46, scope: !1102)
!1107 = !DILocation(line: 485, column: 10, scope: !1102)
!1108 = !DILocation(line: 485, column: 9, scope: !1100)
!1109 = !DILocation(line: 486, column: 7, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1102, file: !72, line: 485, column: 64)
!1111 = !DILocation(line: 486, column: 14, scope: !1110)
!1112 = !DILocation(line: 486, column: 22, scope: !1110)
!1113 = !DILocation(line: 487, column: 7, scope: !1110)
!1114 = !DILocation(line: 489, column: 12, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1100, file: !72, line: 489, column: 9)
!1116 = !DILocation(line: 489, column: 18, scope: !1115)
!1117 = !DILocation(line: 489, column: 36, scope: !1115)
!1118 = !DILocation(line: 489, column: 41, scope: !1115)
!1119 = !DILocation(line: 489, column: 46, scope: !1115)
!1120 = !DILocation(line: 489, column: 10, scope: !1115)
!1121 = !DILocation(line: 489, column: 9, scope: !1100)
!1122 = !DILocation(line: 490, column: 7, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1115, file: !72, line: 489, column: 64)
!1124 = !DILocation(line: 490, column: 14, scope: !1123)
!1125 = !DILocation(line: 490, column: 22, scope: !1123)
!1126 = !DILocation(line: 491, column: 7, scope: !1123)
!1127 = !DILocation(line: 493, column: 5, scope: !1100)
!1128 = !DILocation(line: 495, column: 5, scope: !1100)
!1129 = !DILocation(line: 495, column: 12, scope: !1100)
!1130 = !DILocation(line: 495, column: 20, scope: !1100)
!1131 = !DILocation(line: 496, column: 5, scope: !1100)
!1132 = !DILocation(line: 496, column: 12, scope: !1100)
!1133 = !DILocation(line: 496, column: 22, scope: !1100)
!1134 = !{!604, !605, i64 12}
!1135 = !DILocation(line: 497, column: 5, scope: !1100)
!1136 = !DILocation(line: 499, column: 17, scope: !293)
!1137 = !DILocation(line: 499, column: 24, scope: !293)
!1138 = !DILocation(line: 499, column: 10, scope: !293)
!1139 = !DILocation(line: 499, column: 3, scope: !293)
!1140 = !DILocation(line: 500, column: 1, scope: !293)
!1141 = !DILocation(line: 578, column: 23, scope: !230)
!1142 = !DILocation(line: 579, column: 13, scope: !230)
!1143 = !DILocation(line: 580, column: 21, scope: !230)
!1144 = !DILocation(line: 581, column: 21, scope: !230)
!1145 = !DILocation(line: 582, column: 25, scope: !230)
!1146 = !DILocation(line: 584, column: 11, scope: !230)
!1147 = !DILocation(line: 584, column: 3, scope: !230)
!1148 = !DILocation(line: 586, column: 5, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !230, file: !72, line: 584, column: 16)
!1150 = !DILocation(line: 588, column: 12, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1149, file: !72, line: 588, column: 9)
!1152 = !DILocation(line: 588, column: 18, scope: !1151)
!1153 = !DILocation(line: 588, column: 36, scope: !1151)
!1154 = !DILocation(line: 588, column: 41, scope: !1151)
!1155 = !DILocation(line: 588, column: 46, scope: !1151)
!1156 = !DILocation(line: 588, column: 10, scope: !1151)
!1157 = !DILocation(line: 588, column: 9, scope: !1149)
!1158 = !DILocation(line: 589, column: 7, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1151, file: !72, line: 588, column: 64)
!1160 = !DILocation(line: 589, column: 14, scope: !1159)
!1161 = !DILocation(line: 589, column: 22, scope: !1159)
!1162 = !DILocation(line: 590, column: 7, scope: !1159)
!1163 = !DILocation(line: 592, column: 12, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1149, file: !72, line: 592, column: 9)
!1165 = !DILocation(line: 592, column: 18, scope: !1164)
!1166 = !DILocation(line: 592, column: 36, scope: !1164)
!1167 = !DILocation(line: 592, column: 41, scope: !1164)
!1168 = !DILocation(line: 592, column: 46, scope: !1164)
!1169 = !DILocation(line: 592, column: 10, scope: !1164)
!1170 = !DILocation(line: 592, column: 9, scope: !1149)
!1171 = !DILocation(line: 593, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1164, file: !72, line: 592, column: 64)
!1173 = !DILocation(line: 593, column: 14, scope: !1172)
!1174 = !DILocation(line: 593, column: 22, scope: !1172)
!1175 = !DILocation(line: 594, column: 7, scope: !1172)
!1176 = !DILocation(line: 596, column: 5, scope: !1149)
!1177 = !DILocation(line: 598, column: 5, scope: !1149)
!1178 = !DILocation(line: 598, column: 12, scope: !1149)
!1179 = !DILocation(line: 598, column: 20, scope: !1149)
!1180 = !DILocation(line: 599, column: 5, scope: !1149)
!1181 = !DILocation(line: 599, column: 12, scope: !1149)
!1182 = !DILocation(line: 599, column: 22, scope: !1149)
!1183 = !DILocation(line: 600, column: 5, scope: !1149)
!1184 = !DILocation(line: 602, column: 17, scope: !230)
!1185 = !DILocation(line: 602, column: 24, scope: !230)
!1186 = !DILocation(line: 602, column: 10, scope: !230)
!1187 = !DILocation(line: 602, column: 3, scope: !230)
!1188 = !DILocation(line: 603, column: 1, scope: !230)
!1189 = !DILocation(line: 623, column: 23, scope: !237)
!1190 = !DILocation(line: 624, column: 13, scope: !237)
!1191 = !DILocation(line: 625, column: 21, scope: !237)
!1192 = !DILocation(line: 626, column: 21, scope: !237)
!1193 = !DILocation(line: 627, column: 25, scope: !237)
!1194 = !DILocation(line: 629, column: 11, scope: !237)
!1195 = !DILocation(line: 629, column: 3, scope: !237)
!1196 = !DILocation(line: 631, column: 5, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !237, file: !72, line: 629, column: 16)
!1198 = !DILocation(line: 633, column: 5, scope: !1197)
!1199 = !DILocation(line: 633, column: 12, scope: !1197)
!1200 = !DILocation(line: 633, column: 20, scope: !1197)
!1201 = !DILocation(line: 634, column: 5, scope: !1197)
!1202 = !DILocation(line: 636, column: 17, scope: !237)
!1203 = !DILocation(line: 636, column: 24, scope: !237)
!1204 = !DILocation(line: 636, column: 10, scope: !237)
!1205 = !DILocation(line: 636, column: 3, scope: !237)
!1206 = !DILocation(line: 637, column: 1, scope: !237)
!1207 = !DILocation(line: 606, column: 23, scope: !279)
!1208 = !DILocation(line: 607, column: 13, scope: !279)
!1209 = !DILocation(line: 608, column: 21, scope: !279)
!1210 = !DILocation(line: 609, column: 21, scope: !279)
!1211 = !DILocation(line: 610, column: 25, scope: !279)
!1212 = !DILocation(line: 612, column: 11, scope: !279)
!1213 = !DILocation(line: 612, column: 3, scope: !279)
!1214 = !DILocation(line: 614, column: 5, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !279, file: !72, line: 612, column: 16)
!1216 = !DILocation(line: 616, column: 5, scope: !1215)
!1217 = !DILocation(line: 616, column: 12, scope: !1215)
!1218 = !DILocation(line: 616, column: 20, scope: !1215)
!1219 = !DILocation(line: 617, column: 5, scope: !1215)
!1220 = !DILocation(line: 619, column: 17, scope: !279)
!1221 = !DILocation(line: 619, column: 24, scope: !279)
!1222 = !DILocation(line: 619, column: 10, scope: !279)
!1223 = !DILocation(line: 619, column: 3, scope: !279)
!1224 = !DILocation(line: 620, column: 1, scope: !279)
!1225 = !DILocation(line: 1278, column: 25, scope: !286)
!1226 = !DILocation(line: 1279, column: 15, scope: !286)
!1227 = !DILocation(line: 1280, column: 23, scope: !286)
!1228 = !DILocation(line: 1281, column: 23, scope: !286)
!1229 = !DILocation(line: 1282, column: 27, scope: !286)
!1230 = !DILocation(line: 1284, column: 11, scope: !286)
!1231 = !DILocation(line: 1284, column: 3, scope: !286)
!1232 = !DILocation(line: 1286, column: 12, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !286, file: !72, line: 1284, column: 16)
!1234 = !DILocation(line: 1286, column: 19, scope: !1233)
!1235 = !DILocation(line: 1286, column: 5, scope: !1233)
!1236 = !DILocation(line: 1288, column: 27, scope: !1233)
!1237 = !DILocation(line: 1288, column: 35, scope: !1233)
!1238 = !DILocation(line: 1288, column: 26, scope: !1233)
!1239 = !DILocation(line: 1288, column: 7, scope: !1233)
!1240 = !DILocation(line: 1288, column: 15, scope: !1233)
!1241 = !DILocation(line: 1288, column: 23, scope: !1233)
!1242 = !DILocation(line: 1289, column: 12, scope: !1233)
!1243 = !DILocation(line: 1289, column: 19, scope: !1233)
!1244 = !DILocation(line: 1289, column: 5, scope: !1233)
!1245 = !DILocation(line: 1291, column: 17, scope: !286)
!1246 = !DILocation(line: 1291, column: 24, scope: !286)
!1247 = !DILocation(line: 1291, column: 10, scope: !286)
!1248 = !DILocation(line: 1291, column: 3, scope: !286)
!1249 = !DILocation(line: 1292, column: 1, scope: !286)
!1250 = !DILocation(line: 640, column: 24, scope: !244)
!1251 = !DILocation(line: 641, column: 14, scope: !244)
!1252 = !DILocation(line: 642, column: 22, scope: !244)
!1253 = !DILocation(line: 643, column: 22, scope: !244)
!1254 = !DILocation(line: 644, column: 26, scope: !244)
!1255 = !DILocation(line: 646, column: 11, scope: !244)
!1256 = !DILocation(line: 646, column: 3, scope: !244)
!1257 = !DILocation(line: 648, column: 5, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !244, file: !72, line: 646, column: 16)
!1259 = !DILocation(line: 650, column: 27, scope: !1258)
!1260 = !DILocation(line: 650, column: 35, scope: !1258)
!1261 = !DILocation(line: 650, column: 26, scope: !1258)
!1262 = !DILocation(line: 650, column: 7, scope: !1258)
!1263 = !DILocation(line: 650, column: 15, scope: !1258)
!1264 = !DILocation(line: 650, column: 23, scope: !1258)
!1265 = !DILocation(line: 651, column: 5, scope: !1258)
!1266 = !DILocation(line: 653, column: 17, scope: !244)
!1267 = !DILocation(line: 653, column: 24, scope: !244)
!1268 = !DILocation(line: 653, column: 10, scope: !244)
!1269 = !DILocation(line: 653, column: 3, scope: !244)
!1270 = !DILocation(line: 654, column: 1, scope: !244)
!1271 = !DILocation(line: 406, column: 31, scope: !251)
!1272 = !DILocation(line: 407, column: 21, scope: !251)
!1273 = !DILocation(line: 408, column: 29, scope: !251)
!1274 = !DILocation(line: 409, column: 29, scope: !251)
!1275 = !DILocation(line: 410, column: 33, scope: !251)
!1276 = !DILocation(line: 412, column: 11, scope: !251)
!1277 = !DILocation(line: 412, column: 3, scope: !251)
!1278 = !DILocation(line: 414, column: 5, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !251, file: !72, line: 412, column: 16)
!1280 = !DILocation(line: 414, column: 12, scope: !1279)
!1281 = !DILocation(line: 414, column: 20, scope: !1279)
!1282 = !DILocation(line: 415, column: 5, scope: !1279)
!1283 = !DILocation(line: 417, column: 9, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1279, file: !72, line: 417, column: 9)
!1285 = !DILocation(line: 417, column: 16, scope: !1284)
!1286 = !DILocation(line: 417, column: 29, scope: !1284)
!1287 = !DILocation(line: 417, column: 9, scope: !1279)
!1288 = !DILocation(line: 418, column: 7, scope: !1284)
!1289 = !DILocation(line: 419, column: 5, scope: !1279)
!1290 = !DILocation(line: 419, column: 12, scope: !1279)
!1291 = !DILocation(line: 419, column: 25, scope: !1279)
!1292 = !DILocation(line: 420, column: 5, scope: !1279)
!1293 = !DILocation(line: 422, column: 5, scope: !1279)
!1294 = !DILocation(line: 426, column: 9, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1279, file: !72, line: 426, column: 9)
!1296 = !DILocation(line: 426, column: 16, scope: !1295)
!1297 = !DILocation(line: 426, column: 9, scope: !1279)
!1298 = !DILocation(line: 427, column: 7, scope: !1295)
!1299 = !DILocation(line: 428, column: 5, scope: !1279)
!1300 = !DILocation(line: 430, column: 27, scope: !1279)
!1301 = !DILocation(line: 430, column: 34, scope: !1279)
!1302 = !DILocation(line: 430, column: 39, scope: !1279)
!1303 = !DILocation(line: 430, column: 44, scope: !1279)
!1304 = !DILocation(line: 430, column: 49, scope: !1279)
!1305 = !DILocation(line: 430, column: 12, scope: !1279)
!1306 = !DILocation(line: 430, column: 5, scope: !1279)
!1307 = !DILocation(line: 432, column: 17, scope: !251)
!1308 = !DILocation(line: 432, column: 24, scope: !251)
!1309 = !DILocation(line: 432, column: 10, scope: !251)
!1310 = !DILocation(line: 432, column: 3, scope: !251)
!1311 = !DILocation(line: 433, column: 1, scope: !251)
!1312 = !DILocation(line: 1217, column: 25, scope: !258)
!1313 = !DILocation(line: 1218, column: 15, scope: !258)
!1314 = !DILocation(line: 1219, column: 23, scope: !258)
!1315 = !DILocation(line: 1220, column: 23, scope: !258)
!1316 = !DILocation(line: 1221, column: 27, scope: !258)
!1317 = !DILocation(line: 1223, column: 11, scope: !258)
!1318 = !DILocation(line: 1223, column: 3, scope: !258)
!1319 = !DILocation(line: 1225, column: 5, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !258, file: !72, line: 1223, column: 16)
!1321 = !DILocation(line: 1227, column: 12, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1320, file: !72, line: 1227, column: 9)
!1323 = !DILocation(line: 1227, column: 18, scope: !1322)
!1324 = !DILocation(line: 1227, column: 36, scope: !1322)
!1325 = !DILocation(line: 1227, column: 41, scope: !1322)
!1326 = !DILocation(line: 1227, column: 46, scope: !1322)
!1327 = !DILocation(line: 1227, column: 10, scope: !1322)
!1328 = !DILocation(line: 1227, column: 9, scope: !1320)
!1329 = !DILocation(line: 1228, column: 7, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1322, file: !72, line: 1227, column: 65)
!1331 = !DILocation(line: 1228, column: 14, scope: !1330)
!1332 = !DILocation(line: 1228, column: 22, scope: !1330)
!1333 = !DILocation(line: 1229, column: 7, scope: !1330)
!1334 = !DILocation(line: 1231, column: 12, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1320, file: !72, line: 1231, column: 9)
!1336 = !DILocation(line: 1231, column: 18, scope: !1335)
!1337 = !DILocation(line: 1231, column: 36, scope: !1335)
!1338 = !DILocation(line: 1231, column: 41, scope: !1335)
!1339 = !DILocation(line: 1231, column: 46, scope: !1335)
!1340 = !DILocation(line: 1231, column: 10, scope: !1335)
!1341 = !DILocation(line: 1231, column: 9, scope: !1320)
!1342 = !DILocation(line: 1232, column: 7, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1335, file: !72, line: 1231, column: 64)
!1344 = !DILocation(line: 1232, column: 14, scope: !1343)
!1345 = !DILocation(line: 1232, column: 22, scope: !1343)
!1346 = !DILocation(line: 1233, column: 7, scope: !1343)
!1347 = !DILocation(line: 1235, column: 5, scope: !1320)
!1348 = !DILocation(line: 1237, column: 17, scope: !258)
!1349 = !DILocation(line: 1237, column: 24, scope: !258)
!1350 = !DILocation(line: 1237, column: 10, scope: !258)
!1351 = !DILocation(line: 1237, column: 3, scope: !258)
!1352 = !DILocation(line: 1238, column: 1, scope: !258)
!1353 = !DILocation(line: 1241, column: 25, scope: !265)
!1354 = !DILocation(line: 1242, column: 15, scope: !265)
!1355 = !DILocation(line: 1243, column: 23, scope: !265)
!1356 = !DILocation(line: 1244, column: 23, scope: !265)
!1357 = !DILocation(line: 1245, column: 27, scope: !265)
!1358 = !DILocation(line: 1247, column: 11, scope: !265)
!1359 = !DILocation(line: 1247, column: 3, scope: !265)
!1360 = !DILocation(line: 1249, column: 5, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !265, file: !72, line: 1247, column: 16)
!1362 = !DILocation(line: 1251, column: 5, scope: !1361)
!1363 = !DILocation(line: 1251, column: 12, scope: !1361)
!1364 = !DILocation(line: 1251, column: 20, scope: !1361)
!1365 = !DILocation(line: 1252, column: 5, scope: !1361)
!1366 = !DILocation(line: 1252, column: 12, scope: !1361)
!1367 = !DILocation(line: 1252, column: 25, scope: !1361)
!1368 = !DILocation(line: 1253, column: 5, scope: !1361)
!1369 = !DILocation(line: 1255, column: 17, scope: !265)
!1370 = !DILocation(line: 1255, column: 24, scope: !265)
!1371 = !DILocation(line: 1255, column: 10, scope: !265)
!1372 = !DILocation(line: 1255, column: 3, scope: !265)
!1373 = !DILocation(line: 1256, column: 1, scope: !265)
!1374 = !DILocation(line: 1259, column: 25, scope: !272)
!1375 = !DILocation(line: 1260, column: 15, scope: !272)
!1376 = !DILocation(line: 1261, column: 23, scope: !272)
!1377 = !DILocation(line: 1262, column: 23, scope: !272)
!1378 = !DILocation(line: 1263, column: 27, scope: !272)
!1379 = !DILocation(line: 1265, column: 11, scope: !272)
!1380 = !DILocation(line: 1265, column: 3, scope: !272)
!1381 = !DILocation(line: 1267, column: 5, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !272, file: !72, line: 1265, column: 16)
!1383 = !DILocation(line: 1269, column: 5, scope: !1382)
!1384 = !DILocation(line: 1269, column: 12, scope: !1382)
!1385 = !DILocation(line: 1269, column: 20, scope: !1382)
!1386 = !DILocation(line: 1270, column: 5, scope: !1382)
!1387 = !DILocation(line: 1272, column: 17, scope: !272)
!1388 = !DILocation(line: 1272, column: 24, scope: !272)
!1389 = !DILocation(line: 1272, column: 10, scope: !272)
!1390 = !DILocation(line: 1272, column: 3, scope: !272)
!1391 = !DILocation(line: 1273, column: 1, scope: !272)
!1392 = !DILocation(line: 520, column: 23, scope: !300)
!1393 = !DILocation(line: 521, column: 13, scope: !300)
!1394 = !DILocation(line: 522, column: 21, scope: !300)
!1395 = !DILocation(line: 523, column: 21, scope: !300)
!1396 = !DILocation(line: 524, column: 25, scope: !300)
!1397 = !DILocation(line: 526, column: 11, scope: !300)
!1398 = !DILocation(line: 526, column: 3, scope: !300)
!1399 = !DILocation(line: 528, column: 5, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !300, file: !72, line: 526, column: 16)
!1401 = !DILocation(line: 530, column: 5, scope: !1400)
!1402 = !DILocation(line: 530, column: 12, scope: !1400)
!1403 = !DILocation(line: 530, column: 20, scope: !1400)
!1404 = !DILocation(line: 531, column: 5, scope: !1400)
!1405 = !DILocation(line: 533, column: 17, scope: !300)
!1406 = !DILocation(line: 533, column: 24, scope: !300)
!1407 = !DILocation(line: 533, column: 10, scope: !300)
!1408 = !DILocation(line: 533, column: 3, scope: !300)
!1409 = !DILocation(line: 534, column: 1, scope: !300)
!1410 = !DILocation(line: 503, column: 23, scope: !321)
!1411 = !DILocation(line: 504, column: 13, scope: !321)
!1412 = !DILocation(line: 505, column: 21, scope: !321)
!1413 = !DILocation(line: 506, column: 21, scope: !321)
!1414 = !DILocation(line: 507, column: 25, scope: !321)
!1415 = !DILocation(line: 509, column: 11, scope: !321)
!1416 = !DILocation(line: 509, column: 3, scope: !321)
!1417 = !DILocation(line: 511, column: 5, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !321, file: !72, line: 509, column: 16)
!1419 = !DILocation(line: 513, column: 5, scope: !1418)
!1420 = !DILocation(line: 513, column: 12, scope: !1418)
!1421 = !DILocation(line: 513, column: 20, scope: !1418)
!1422 = !DILocation(line: 514, column: 5, scope: !1418)
!1423 = !DILocation(line: 516, column: 17, scope: !321)
!1424 = !DILocation(line: 516, column: 24, scope: !321)
!1425 = !DILocation(line: 516, column: 10, scope: !321)
!1426 = !DILocation(line: 516, column: 3, scope: !321)
!1427 = !DILocation(line: 517, column: 1, scope: !321)
!1428 = !DILocation(line: 537, column: 23, scope: !307)
!1429 = !DILocation(line: 538, column: 13, scope: !307)
!1430 = !DILocation(line: 539, column: 21, scope: !307)
!1431 = !DILocation(line: 540, column: 21, scope: !307)
!1432 = !DILocation(line: 541, column: 25, scope: !307)
!1433 = !DILocation(line: 543, column: 11, scope: !307)
!1434 = !DILocation(line: 543, column: 3, scope: !307)
!1435 = !DILocation(line: 545, column: 5, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !307, file: !72, line: 543, column: 16)
!1437 = !DILocation(line: 547, column: 27, scope: !1436)
!1438 = !DILocation(line: 547, column: 35, scope: !1436)
!1439 = !DILocation(line: 547, column: 26, scope: !1436)
!1440 = !DILocation(line: 547, column: 7, scope: !1436)
!1441 = !DILocation(line: 547, column: 15, scope: !1436)
!1442 = !DILocation(line: 547, column: 23, scope: !1436)
!1443 = !DILocation(line: 548, column: 5, scope: !1436)
!1444 = !DILocation(line: 550, column: 12, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1436, file: !72, line: 550, column: 9)
!1446 = !DILocation(line: 550, column: 18, scope: !1445)
!1447 = !DILocation(line: 550, column: 36, scope: !1445)
!1448 = !DILocation(line: 550, column: 41, scope: !1445)
!1449 = !DILocation(line: 550, column: 46, scope: !1445)
!1450 = !DILocation(line: 550, column: 10, scope: !1445)
!1451 = !DILocation(line: 550, column: 9, scope: !1436)
!1452 = !DILocation(line: 551, column: 7, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1445, file: !72, line: 550, column: 63)
!1454 = !DILocation(line: 551, column: 14, scope: !1453)
!1455 = !DILocation(line: 551, column: 22, scope: !1453)
!1456 = !DILocation(line: 552, column: 7, scope: !1453)
!1457 = !DILocation(line: 554, column: 5, scope: !1436)
!1458 = !DILocation(line: 556, column: 17, scope: !307)
!1459 = !DILocation(line: 556, column: 24, scope: !307)
!1460 = !DILocation(line: 556, column: 10, scope: !307)
!1461 = !DILocation(line: 556, column: 3, scope: !307)
!1462 = !DILocation(line: 557, column: 1, scope: !307)
!1463 = !DILocation(line: 560, column: 23, scope: !314)
!1464 = !DILocation(line: 561, column: 13, scope: !314)
!1465 = !DILocation(line: 562, column: 21, scope: !314)
!1466 = !DILocation(line: 563, column: 21, scope: !314)
!1467 = !DILocation(line: 564, column: 25, scope: !314)
!1468 = !DILocation(line: 566, column: 11, scope: !314)
!1469 = !DILocation(line: 566, column: 3, scope: !314)
!1470 = !DILocation(line: 568, column: 5, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !314, file: !72, line: 566, column: 16)
!1472 = !DILocation(line: 570, column: 5, scope: !1471)
!1473 = !DILocation(line: 570, column: 12, scope: !1471)
!1474 = !DILocation(line: 570, column: 20, scope: !1471)
!1475 = !DILocation(line: 571, column: 5, scope: !1471)
!1476 = !DILocation(line: 571, column: 12, scope: !1471)
!1477 = !DILocation(line: 571, column: 22, scope: !1471)
!1478 = !DILocation(line: 572, column: 5, scope: !1471)
!1479 = !DILocation(line: 574, column: 17, scope: !314)
!1480 = !DILocation(line: 574, column: 24, scope: !314)
!1481 = !DILocation(line: 574, column: 10, scope: !314)
!1482 = !DILocation(line: 574, column: 3, scope: !314)
!1483 = !DILocation(line: 575, column: 1, scope: !314)
!1484 = !DILocation(line: 772, column: 24, scope: !335)
!1485 = !DILocation(line: 773, column: 14, scope: !335)
!1486 = !DILocation(line: 774, column: 22, scope: !335)
!1487 = !DILocation(line: 775, column: 22, scope: !335)
!1488 = !DILocation(line: 776, column: 26, scope: !335)
!1489 = !DILocation(line: 778, column: 11, scope: !335)
!1490 = !DILocation(line: 778, column: 3, scope: !335)
!1491 = !DILocation(line: 780, column: 5, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !335, file: !72, line: 778, column: 16)
!1493 = !DILocation(line: 782, column: 27, scope: !1492)
!1494 = !DILocation(line: 782, column: 35, scope: !1492)
!1495 = !DILocation(line: 782, column: 26, scope: !1492)
!1496 = !DILocation(line: 782, column: 7, scope: !1492)
!1497 = !DILocation(line: 782, column: 15, scope: !1492)
!1498 = !DILocation(line: 782, column: 23, scope: !1492)
!1499 = !DILocation(line: 783, column: 5, scope: !1492)
!1500 = !DILocation(line: 786, column: 5, scope: !1492)
!1501 = !DILocation(line: 786, column: 12, scope: !1492)
!1502 = !DILocation(line: 786, column: 20, scope: !1492)
!1503 = !DILocation(line: 787, column: 5, scope: !1492)
!1504 = !DILocation(line: 789, column: 17, scope: !335)
!1505 = !DILocation(line: 789, column: 24, scope: !335)
!1506 = !DILocation(line: 789, column: 10, scope: !335)
!1507 = !DILocation(line: 789, column: 3, scope: !335)
!1508 = !DILocation(line: 790, column: 1, scope: !335)
!1509 = !DILocation(line: 793, column: 24, scope: !342)
!1510 = !DILocation(line: 794, column: 14, scope: !342)
!1511 = !DILocation(line: 795, column: 22, scope: !342)
!1512 = !DILocation(line: 796, column: 22, scope: !342)
!1513 = !DILocation(line: 797, column: 26, scope: !342)
!1514 = !DILocation(line: 799, column: 11, scope: !342)
!1515 = !DILocation(line: 799, column: 3, scope: !342)
!1516 = !DILocation(line: 801, column: 5, scope: !351)
!1517 = !DILocation(line: 814, column: 7, scope: !350)
!1518 = !DILocation(line: 814, column: 11, scope: !350)
!1519 = !DILocation(line: 815, column: 14, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !350, file: !72, line: 815, column: 7)
!1521 = !DILocation(line: 815, column: 12, scope: !1520)
!1522 = !DILocation(line: 815, column: 19, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1524, file: !72, discriminator: 2)
!1524 = !DILexicalBlockFile(scope: !1525, file: !72, discriminator: 1)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !72, line: 815, column: 7)
!1526 = !DILocation(line: 815, column: 21, scope: !1525)
!1527 = !DILocation(line: 815, column: 7, scope: !1520)
!1528 = !DILocation(line: 816, column: 16, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !72, line: 816, column: 13)
!1530 = !DILocation(line: 816, column: 22, scope: !1529)
!1531 = !DILocation(line: 816, column: 40, scope: !1529)
!1532 = !DILocation(line: 816, column: 45, scope: !1529)
!1533 = !DILocation(line: 816, column: 50, scope: !1529)
!1534 = !DILocation(line: 816, column: 61, scope: !1529)
!1535 = !DILocation(line: 816, column: 55, scope: !1529)
!1536 = !DILocation(line: 816, column: 14, scope: !1529)
!1537 = !DILocation(line: 816, column: 13, scope: !1525)
!1538 = !DILocation(line: 817, column: 11, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1529, file: !72, line: 816, column: 67)
!1540 = !DILocation(line: 817, column: 18, scope: !1539)
!1541 = !DILocation(line: 817, column: 26, scope: !1539)
!1542 = !DILocation(line: 818, column: 50, scope: !1539)
!1543 = !DILocation(line: 818, column: 48, scope: !1539)
!1544 = !DILocation(line: 818, column: 11, scope: !1539)
!1545 = !DILocation(line: 816, column: 64, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1529, file: !72, discriminator: 1)
!1547 = !DILocation(line: 815, column: 63, scope: !1525)
!1548 = !DILocation(line: 815, column: 7, scope: !1525)
!1549 = !DILocation(line: 820, column: 5, scope: !351)
!1550 = !DILocation(line: 820, column: 5, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !351, file: !72, discriminator: 1)
!1552 = !DILocation(line: 821, column: 12, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !351, file: !72, line: 821, column: 9)
!1554 = !DILocation(line: 821, column: 18, scope: !1553)
!1555 = !DILocation(line: 821, column: 36, scope: !1553)
!1556 = !DILocation(line: 821, column: 41, scope: !1553)
!1557 = !DILocation(line: 821, column: 46, scope: !1553)
!1558 = !DILocation(line: 821, column: 10, scope: !1553)
!1559 = !DILocation(line: 821, column: 9, scope: !351)
!1560 = !DILocation(line: 822, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1553, file: !72, line: 821, column: 66)
!1562 = !DILocation(line: 822, column: 14, scope: !1561)
!1563 = !DILocation(line: 822, column: 22, scope: !1561)
!1564 = !DILocation(line: 823, column: 7, scope: !1561)
!1565 = !DILocation(line: 825, column: 5, scope: !351)
!1566 = !DILocation(line: 827, column: 5, scope: !351)
!1567 = !DILocation(line: 827, column: 12, scope: !351)
!1568 = !DILocation(line: 827, column: 20, scope: !351)
!1569 = !DILocation(line: 828, column: 5, scope: !351)
!1570 = !DILocation(line: 830, column: 17, scope: !342)
!1571 = !DILocation(line: 830, column: 24, scope: !342)
!1572 = !DILocation(line: 830, column: 10, scope: !342)
!1573 = !DILocation(line: 830, column: 3, scope: !342)
!1574 = !DILocation(line: 831, column: 1, scope: !342)
!1575 = !DILocation(line: 928, column: 24, scope: !352)
!1576 = !DILocation(line: 929, column: 14, scope: !352)
!1577 = !DILocation(line: 930, column: 22, scope: !352)
!1578 = !DILocation(line: 931, column: 22, scope: !352)
!1579 = !DILocation(line: 932, column: 26, scope: !352)
!1580 = !DILocation(line: 934, column: 11, scope: !352)
!1581 = !DILocation(line: 934, column: 3, scope: !352)
!1582 = !DILocation(line: 936, column: 5, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !352, file: !72, line: 934, column: 16)
!1584 = !DILocation(line: 938, column: 12, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1583, file: !72, line: 938, column: 9)
!1586 = !DILocation(line: 938, column: 18, scope: !1585)
!1587 = !DILocation(line: 938, column: 36, scope: !1585)
!1588 = !DILocation(line: 938, column: 41, scope: !1585)
!1589 = !DILocation(line: 938, column: 49, scope: !1585)
!1590 = !DILocation(line: 938, column: 55, scope: !1585)
!1591 = !DILocation(line: 938, column: 45, scope: !1585)
!1592 = !DILocation(line: 938, column: 73, scope: !1585)
!1593 = !DILocation(line: 938, column: 10, scope: !1585)
!1594 = !DILocation(line: 938, column: 9, scope: !1583)
!1595 = !DILocation(line: 942, column: 7, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1585, file: !72, line: 938, column: 92)
!1597 = !DILocation(line: 942, column: 14, scope: !1596)
!1598 = !DILocation(line: 942, column: 22, scope: !1596)
!1599 = !DILocation(line: 943, column: 7, scope: !1596)
!1600 = !DILocation(line: 945, column: 12, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1583, file: !72, line: 945, column: 9)
!1602 = !DILocation(line: 945, column: 18, scope: !1601)
!1603 = !DILocation(line: 945, column: 36, scope: !1601)
!1604 = !DILocation(line: 945, column: 41, scope: !1601)
!1605 = !DILocation(line: 945, column: 49, scope: !1601)
!1606 = !DILocation(line: 945, column: 55, scope: !1601)
!1607 = !DILocation(line: 945, column: 45, scope: !1601)
!1608 = !DILocation(line: 945, column: 73, scope: !1601)
!1609 = !DILocation(line: 945, column: 10, scope: !1601)
!1610 = !DILocation(line: 945, column: 9, scope: !1583)
!1611 = !DILocation(line: 949, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1601, file: !72, line: 945, column: 93)
!1613 = !DILocation(line: 949, column: 14, scope: !1612)
!1614 = !DILocation(line: 949, column: 22, scope: !1612)
!1615 = !DILocation(line: 950, column: 7, scope: !1612)
!1616 = !DILocation(line: 952, column: 12, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1583, file: !72, line: 952, column: 9)
!1618 = !DILocation(line: 952, column: 18, scope: !1617)
!1619 = !DILocation(line: 952, column: 36, scope: !1617)
!1620 = !DILocation(line: 952, column: 41, scope: !1617)
!1621 = !DILocation(line: 952, column: 49, scope: !1617)
!1622 = !DILocation(line: 952, column: 55, scope: !1617)
!1623 = !DILocation(line: 952, column: 45, scope: !1617)
!1624 = !DILocation(line: 952, column: 73, scope: !1617)
!1625 = !DILocation(line: 952, column: 10, scope: !1617)
!1626 = !DILocation(line: 952, column: 9, scope: !1583)
!1627 = !DILocation(line: 956, column: 7, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1617, file: !72, line: 952, column: 90)
!1629 = !DILocation(line: 956, column: 14, scope: !1628)
!1630 = !DILocation(line: 956, column: 22, scope: !1628)
!1631 = !DILocation(line: 957, column: 7, scope: !1628)
!1632 = !DILocation(line: 959, column: 5, scope: !1583)
!1633 = !DILocation(line: 961, column: 5, scope: !1583)
!1634 = !DILocation(line: 961, column: 12, scope: !1583)
!1635 = !DILocation(line: 961, column: 20, scope: !1583)
!1636 = !DILocation(line: 962, column: 5, scope: !1583)
!1637 = !DILocation(line: 964, column: 17, scope: !352)
!1638 = !DILocation(line: 964, column: 24, scope: !352)
!1639 = !DILocation(line: 964, column: 10, scope: !352)
!1640 = !DILocation(line: 964, column: 3, scope: !352)
!1641 = !DILocation(line: 965, column: 1, scope: !352)
!1642 = !DILocation(line: 873, column: 24, scope: !366)
!1643 = !DILocation(line: 874, column: 14, scope: !366)
!1644 = !DILocation(line: 875, column: 22, scope: !366)
!1645 = !DILocation(line: 876, column: 22, scope: !366)
!1646 = !DILocation(line: 877, column: 26, scope: !366)
!1647 = !DILocation(line: 879, column: 11, scope: !366)
!1648 = !DILocation(line: 879, column: 3, scope: !366)
!1649 = !DILocation(line: 881, column: 5, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !366, file: !72, line: 879, column: 16)
!1651 = !DILocation(line: 883, column: 5, scope: !1650)
!1652 = !DILocation(line: 883, column: 12, scope: !1650)
!1653 = !DILocation(line: 883, column: 20, scope: !1650)
!1654 = !DILocation(line: 884, column: 5, scope: !1650)
!1655 = !DILocation(line: 886, column: 17, scope: !366)
!1656 = !DILocation(line: 886, column: 24, scope: !366)
!1657 = !DILocation(line: 886, column: 10, scope: !366)
!1658 = !DILocation(line: 886, column: 3, scope: !366)
!1659 = !DILocation(line: 887, column: 1, scope: !366)
!1660 = !DILocation(line: 834, column: 24, scope: !387)
!1661 = !DILocation(line: 835, column: 14, scope: !387)
!1662 = !DILocation(line: 836, column: 22, scope: !387)
!1663 = !DILocation(line: 837, column: 22, scope: !387)
!1664 = !DILocation(line: 838, column: 26, scope: !387)
!1665 = !DILocation(line: 840, column: 11, scope: !387)
!1666 = !DILocation(line: 840, column: 3, scope: !387)
!1667 = !DILocation(line: 842, column: 5, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !387, file: !72, line: 840, column: 16)
!1669 = !DILocation(line: 846, column: 5, scope: !1668)
!1670 = !DILocation(line: 846, column: 12, scope: !1668)
!1671 = !DILocation(line: 846, column: 20, scope: !1668)
!1672 = !DILocation(line: 847, column: 5, scope: !1668)
!1673 = !DILocation(line: 849, column: 17, scope: !387)
!1674 = !DILocation(line: 849, column: 24, scope: !387)
!1675 = !DILocation(line: 849, column: 10, scope: !387)
!1676 = !DILocation(line: 849, column: 3, scope: !387)
!1677 = !DILocation(line: 850, column: 1, scope: !387)
!1678 = !DILocation(line: 968, column: 24, scope: !359)
!1679 = !DILocation(line: 969, column: 14, scope: !359)
!1680 = !DILocation(line: 970, column: 22, scope: !359)
!1681 = !DILocation(line: 971, column: 22, scope: !359)
!1682 = !DILocation(line: 972, column: 26, scope: !359)
!1683 = !DILocation(line: 974, column: 11, scope: !359)
!1684 = !DILocation(line: 974, column: 3, scope: !359)
!1685 = !DILocation(line: 976, column: 5, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !359, file: !72, line: 974, column: 16)
!1687 = !DILocation(line: 978, column: 5, scope: !1686)
!1688 = !DILocation(line: 978, column: 12, scope: !1686)
!1689 = !DILocation(line: 978, column: 20, scope: !1686)
!1690 = !DILocation(line: 979, column: 5, scope: !1686)
!1691 = !DILocation(line: 981, column: 17, scope: !359)
!1692 = !DILocation(line: 981, column: 24, scope: !359)
!1693 = !DILocation(line: 981, column: 10, scope: !359)
!1694 = !DILocation(line: 981, column: 3, scope: !359)
!1695 = !DILocation(line: 982, column: 1, scope: !359)
!1696 = !DILocation(line: 890, column: 24, scope: !373)
!1697 = !DILocation(line: 891, column: 14, scope: !373)
!1698 = !DILocation(line: 892, column: 22, scope: !373)
!1699 = !DILocation(line: 893, column: 22, scope: !373)
!1700 = !DILocation(line: 894, column: 26, scope: !373)
!1701 = !DILocation(line: 896, column: 11, scope: !373)
!1702 = !DILocation(line: 896, column: 3, scope: !373)
!1703 = !DILocation(line: 898, column: 5, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !373, file: !72, line: 896, column: 16)
!1705 = !DILocation(line: 900, column: 5, scope: !1704)
!1706 = !DILocation(line: 900, column: 12, scope: !1704)
!1707 = !DILocation(line: 900, column: 20, scope: !1704)
!1708 = !DILocation(line: 901, column: 5, scope: !1704)
!1709 = !DILocation(line: 903, column: 17, scope: !373)
!1710 = !DILocation(line: 903, column: 24, scope: !373)
!1711 = !DILocation(line: 903, column: 10, scope: !373)
!1712 = !DILocation(line: 903, column: 3, scope: !373)
!1713 = !DILocation(line: 904, column: 1, scope: !373)
!1714 = !DILocation(line: 907, column: 24, scope: !380)
!1715 = !DILocation(line: 908, column: 14, scope: !380)
!1716 = !DILocation(line: 909, column: 22, scope: !380)
!1717 = !DILocation(line: 910, column: 22, scope: !380)
!1718 = !DILocation(line: 911, column: 26, scope: !380)
!1719 = !DILocation(line: 913, column: 11, scope: !380)
!1720 = !DILocation(line: 913, column: 3, scope: !380)
!1721 = !DILocation(line: 915, column: 5, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !380, file: !72, line: 913, column: 16)
!1723 = !DILocation(line: 917, column: 5, scope: !1722)
!1724 = !DILocation(line: 917, column: 12, scope: !1722)
!1725 = !DILocation(line: 917, column: 20, scope: !1722)
!1726 = !DILocation(line: 918, column: 5, scope: !1722)
!1727 = !DILocation(line: 920, column: 5, scope: !1722)
!1728 = !DILocation(line: 920, column: 12, scope: !1722)
!1729 = !DILocation(line: 920, column: 20, scope: !1722)
!1730 = !DILocation(line: 921, column: 5, scope: !1722)
!1731 = !DILocation(line: 923, column: 17, scope: !380)
!1732 = !DILocation(line: 923, column: 24, scope: !380)
!1733 = !DILocation(line: 923, column: 10, scope: !380)
!1734 = !DILocation(line: 923, column: 3, scope: !380)
!1735 = !DILocation(line: 924, column: 1, scope: !380)
!1736 = !DILocation(line: 853, column: 24, scope: !394)
!1737 = !DILocation(line: 854, column: 14, scope: !394)
!1738 = !DILocation(line: 855, column: 22, scope: !394)
!1739 = !DILocation(line: 856, column: 22, scope: !394)
!1740 = !DILocation(line: 857, column: 26, scope: !394)
!1741 = !DILocation(line: 859, column: 11, scope: !394)
!1742 = !DILocation(line: 859, column: 3, scope: !394)
!1743 = !DILocation(line: 861, column: 5, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !394, file: !72, line: 859, column: 16)
!1745 = !DILocation(line: 863, column: 5, scope: !1744)
!1746 = !DILocation(line: 863, column: 12, scope: !1744)
!1747 = !DILocation(line: 863, column: 20, scope: !1744)
!1748 = !DILocation(line: 864, column: 5, scope: !1744)
!1749 = !DILocation(line: 866, column: 5, scope: !1744)
!1750 = !DILocation(line: 866, column: 12, scope: !1744)
!1751 = !DILocation(line: 866, column: 20, scope: !1744)
!1752 = !DILocation(line: 867, column: 5, scope: !1744)
!1753 = !DILocation(line: 869, column: 17, scope: !394)
!1754 = !DILocation(line: 869, column: 24, scope: !394)
!1755 = !DILocation(line: 869, column: 10, scope: !394)
!1756 = !DILocation(line: 869, column: 3, scope: !394)
!1757 = !DILocation(line: 870, column: 1, scope: !394)
!1758 = !DILocation(line: 1003, column: 24, scope: !408)
!1759 = !DILocation(line: 1004, column: 14, scope: !408)
!1760 = !DILocation(line: 1005, column: 22, scope: !408)
!1761 = !DILocation(line: 1006, column: 22, scope: !408)
!1762 = !DILocation(line: 1007, column: 26, scope: !408)
!1763 = !DILocation(line: 1009, column: 11, scope: !408)
!1764 = !DILocation(line: 1009, column: 3, scope: !408)
!1765 = !DILocation(line: 1011, column: 5, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !408, file: !72, line: 1009, column: 16)
!1767 = !DILocation(line: 1013, column: 12, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1766, file: !72, line: 1013, column: 9)
!1769 = !DILocation(line: 1013, column: 18, scope: !1768)
!1770 = !DILocation(line: 1013, column: 36, scope: !1768)
!1771 = !DILocation(line: 1013, column: 41, scope: !1768)
!1772 = !DILocation(line: 1013, column: 46, scope: !1768)
!1773 = !DILocation(line: 1013, column: 10, scope: !1768)
!1774 = !DILocation(line: 1013, column: 9, scope: !1766)
!1775 = !DILocation(line: 1014, column: 7, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1768, file: !72, line: 1013, column: 63)
!1777 = !DILocation(line: 1014, column: 14, scope: !1776)
!1778 = !DILocation(line: 1014, column: 22, scope: !1776)
!1779 = !DILocation(line: 1015, column: 7, scope: !1776)
!1780 = !DILocation(line: 1015, column: 14, scope: !1776)
!1781 = !DILocation(line: 1015, column: 24, scope: !1776)
!1782 = !DILocation(line: 1016, column: 7, scope: !1776)
!1783 = !DILocation(line: 1018, column: 12, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1766, file: !72, line: 1018, column: 9)
!1785 = !DILocation(line: 1018, column: 18, scope: !1784)
!1786 = !DILocation(line: 1018, column: 36, scope: !1784)
!1787 = !DILocation(line: 1018, column: 41, scope: !1784)
!1788 = !DILocation(line: 1018, column: 46, scope: !1784)
!1789 = !DILocation(line: 1018, column: 10, scope: !1784)
!1790 = !DILocation(line: 1018, column: 9, scope: !1766)
!1791 = !DILocation(line: 1019, column: 7, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1784, file: !72, line: 1018, column: 61)
!1793 = !DILocation(line: 1019, column: 14, scope: !1792)
!1794 = !DILocation(line: 1019, column: 22, scope: !1792)
!1795 = !DILocation(line: 1020, column: 7, scope: !1792)
!1796 = !DILocation(line: 1020, column: 14, scope: !1792)
!1797 = !DILocation(line: 1020, column: 24, scope: !1792)
!1798 = !DILocation(line: 1021, column: 7, scope: !1792)
!1799 = !DILocation(line: 1023, column: 5, scope: !1766)
!1800 = !DILocation(line: 1025, column: 5, scope: !1766)
!1801 = !DILocation(line: 1025, column: 12, scope: !1766)
!1802 = !DILocation(line: 1025, column: 20, scope: !1766)
!1803 = !DILocation(line: 1026, column: 5, scope: !1766)
!1804 = !DILocation(line: 1026, column: 12, scope: !1766)
!1805 = !DILocation(line: 1026, column: 18, scope: !1766)
!1806 = !{!604, !605, i64 8}
!1807 = !DILocation(line: 1027, column: 5, scope: !1766)
!1808 = !DILocation(line: 1029, column: 17, scope: !408)
!1809 = !DILocation(line: 1029, column: 24, scope: !408)
!1810 = !DILocation(line: 1029, column: 10, scope: !408)
!1811 = !DILocation(line: 1029, column: 3, scope: !408)
!1812 = !DILocation(line: 1030, column: 1, scope: !408)
!1813 = !DILocation(line: 1033, column: 24, scope: !415)
!1814 = !DILocation(line: 1034, column: 14, scope: !415)
!1815 = !DILocation(line: 1035, column: 22, scope: !415)
!1816 = !DILocation(line: 1036, column: 22, scope: !415)
!1817 = !DILocation(line: 1037, column: 26, scope: !415)
!1818 = !DILocation(line: 1039, column: 11, scope: !415)
!1819 = !DILocation(line: 1039, column: 3, scope: !415)
!1820 = !DILocation(line: 1041, column: 5, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !415, file: !72, line: 1039, column: 16)
!1822 = !DILocation(line: 1043, column: 12, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1821, file: !72, line: 1043, column: 9)
!1824 = !DILocation(line: 1043, column: 18, scope: !1823)
!1825 = !DILocation(line: 1043, column: 36, scope: !1823)
!1826 = !DILocation(line: 1043, column: 41, scope: !1823)
!1827 = !DILocation(line: 1043, column: 49, scope: !1823)
!1828 = !DILocation(line: 1043, column: 55, scope: !1823)
!1829 = !DILocation(line: 1043, column: 45, scope: !1823)
!1830 = !DILocation(line: 1043, column: 73, scope: !1823)
!1831 = !DILocation(line: 1043, column: 10, scope: !1823)
!1832 = !DILocation(line: 1043, column: 9, scope: !1821)
!1833 = !DILocation(line: 1047, column: 7, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1823, file: !72, line: 1043, column: 91)
!1835 = !DILocation(line: 1047, column: 14, scope: !1834)
!1836 = !DILocation(line: 1047, column: 22, scope: !1834)
!1837 = !DILocation(line: 1048, column: 7, scope: !1834)
!1838 = !DILocation(line: 1050, column: 5, scope: !1821)
!1839 = !DILocation(line: 1052, column: 5, scope: !1821)
!1840 = !DILocation(line: 1052, column: 12, scope: !1821)
!1841 = !DILocation(line: 1052, column: 18, scope: !1821)
!1842 = !DILocation(line: 1053, column: 5, scope: !1821)
!1843 = !DILocation(line: 1053, column: 12, scope: !1821)
!1844 = !DILocation(line: 1053, column: 20, scope: !1821)
!1845 = !DILocation(line: 1054, column: 5, scope: !1821)
!1846 = !DILocation(line: 1057, column: 5, scope: !1821)
!1847 = !DILocation(line: 1057, column: 12, scope: !1821)
!1848 = !DILocation(line: 1057, column: 20, scope: !1821)
!1849 = !DILocation(line: 1058, column: 5, scope: !1821)
!1850 = !DILocation(line: 1060, column: 5, scope: !1821)
!1851 = !DILocation(line: 1060, column: 12, scope: !1821)
!1852 = !DILocation(line: 1060, column: 20, scope: !1821)
!1853 = !DILocation(line: 1061, column: 5, scope: !1821)
!1854 = !DILocation(line: 1063, column: 5, scope: !1821)
!1855 = !DILocation(line: 1063, column: 12, scope: !1821)
!1856 = !DILocation(line: 1063, column: 20, scope: !1821)
!1857 = !DILocation(line: 1064, column: 5, scope: !1821)
!1858 = !DILocation(line: 1066, column: 5, scope: !1821)
!1859 = !DILocation(line: 1066, column: 12, scope: !1821)
!1860 = !DILocation(line: 1066, column: 20, scope: !1821)
!1861 = !DILocation(line: 1067, column: 5, scope: !1821)
!1862 = !DILocation(line: 1069, column: 17, scope: !415)
!1863 = !DILocation(line: 1069, column: 24, scope: !415)
!1864 = !DILocation(line: 1069, column: 10, scope: !415)
!1865 = !DILocation(line: 1069, column: 3, scope: !415)
!1866 = !DILocation(line: 1070, column: 1, scope: !415)
!1867 = !DILocation(line: 1073, column: 24, scope: !422)
!1868 = !DILocation(line: 1074, column: 14, scope: !422)
!1869 = !DILocation(line: 1075, column: 22, scope: !422)
!1870 = !DILocation(line: 1076, column: 22, scope: !422)
!1871 = !DILocation(line: 1077, column: 26, scope: !422)
!1872 = !DILocation(line: 1079, column: 11, scope: !422)
!1873 = !DILocation(line: 1079, column: 3, scope: !422)
!1874 = !DILocation(line: 1081, column: 5, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !422, file: !72, line: 1079, column: 16)
!1876 = !DILocation(line: 1083, column: 5, scope: !1875)
!1877 = !DILocation(line: 1083, column: 12, scope: !1875)
!1878 = !DILocation(line: 1083, column: 20, scope: !1875)
!1879 = !DILocation(line: 1084, column: 5, scope: !1875)
!1880 = !DILocation(line: 1084, column: 12, scope: !1875)
!1881 = !DILocation(line: 1084, column: 22, scope: !1875)
!1882 = !DILocation(line: 1085, column: 5, scope: !1875)
!1883 = !DILocation(line: 1087, column: 5, scope: !1875)
!1884 = !DILocation(line: 1087, column: 12, scope: !1875)
!1885 = !DILocation(line: 1087, column: 20, scope: !1875)
!1886 = !DILocation(line: 1088, column: 5, scope: !1875)
!1887 = !DILocation(line: 1088, column: 12, scope: !1875)
!1888 = !DILocation(line: 1088, column: 22, scope: !1875)
!1889 = !DILocation(line: 1089, column: 5, scope: !1875)
!1890 = !DILocation(line: 1091, column: 5, scope: !1875)
!1891 = !DILocation(line: 1091, column: 12, scope: !1875)
!1892 = !DILocation(line: 1091, column: 20, scope: !1875)
!1893 = !DILocation(line: 1092, column: 5, scope: !1875)
!1894 = !DILocation(line: 1094, column: 17, scope: !422)
!1895 = !DILocation(line: 1094, column: 24, scope: !422)
!1896 = !DILocation(line: 1094, column: 10, scope: !422)
!1897 = !DILocation(line: 1094, column: 3, scope: !422)
!1898 = !DILocation(line: 1095, column: 1, scope: !422)
!1899 = !DILocation(line: 1137, column: 24, scope: !443)
!1900 = !DILocation(line: 1138, column: 14, scope: !443)
!1901 = !DILocation(line: 1139, column: 22, scope: !443)
!1902 = !DILocation(line: 1140, column: 22, scope: !443)
!1903 = !DILocation(line: 1141, column: 26, scope: !443)
!1904 = !DILocation(line: 1143, column: 11, scope: !443)
!1905 = !DILocation(line: 1143, column: 3, scope: !443)
!1906 = !DILocation(line: 1145, column: 5, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !443, file: !72, line: 1143, column: 16)
!1908 = !DILocation(line: 1147, column: 5, scope: !1907)
!1909 = !DILocation(line: 1147, column: 12, scope: !1907)
!1910 = !DILocation(line: 1147, column: 18, scope: !1907)
!1911 = !DILocation(line: 1148, column: 5, scope: !1907)
!1912 = !DILocation(line: 1151, column: 5, scope: !1907)
!1913 = !DILocation(line: 1151, column: 12, scope: !1907)
!1914 = !DILocation(line: 1151, column: 20, scope: !1907)
!1915 = !DILocation(line: 1152, column: 5, scope: !1907)
!1916 = !DILocation(line: 1154, column: 5, scope: !1907)
!1917 = !DILocation(line: 1154, column: 12, scope: !1907)
!1918 = !DILocation(line: 1154, column: 20, scope: !1907)
!1919 = !DILocation(line: 1155, column: 5, scope: !1907)
!1920 = !DILocation(line: 1157, column: 5, scope: !1907)
!1921 = !DILocation(line: 1157, column: 12, scope: !1907)
!1922 = !DILocation(line: 1157, column: 20, scope: !1907)
!1923 = !DILocation(line: 1158, column: 5, scope: !1907)
!1924 = !DILocation(line: 1160, column: 5, scope: !1907)
!1925 = !DILocation(line: 1160, column: 12, scope: !1907)
!1926 = !DILocation(line: 1160, column: 20, scope: !1907)
!1927 = !DILocation(line: 1161, column: 5, scope: !1907)
!1928 = !DILocation(line: 1163, column: 17, scope: !443)
!1929 = !DILocation(line: 1163, column: 24, scope: !443)
!1930 = !DILocation(line: 1163, column: 10, scope: !443)
!1931 = !DILocation(line: 1163, column: 3, scope: !443)
!1932 = !DILocation(line: 1164, column: 1, scope: !443)
!1933 = !DILocation(line: 1167, column: 24, scope: !450)
!1934 = !DILocation(line: 1168, column: 14, scope: !450)
!1935 = !DILocation(line: 1169, column: 22, scope: !450)
!1936 = !DILocation(line: 1170, column: 22, scope: !450)
!1937 = !DILocation(line: 1171, column: 26, scope: !450)
!1938 = !DILocation(line: 1173, column: 11, scope: !450)
!1939 = !DILocation(line: 1173, column: 3, scope: !450)
!1940 = !DILocation(line: 1175, column: 5, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !450, file: !72, line: 1173, column: 16)
!1942 = !DILocation(line: 1177, column: 5, scope: !1941)
!1943 = !DILocation(line: 1177, column: 12, scope: !1941)
!1944 = !DILocation(line: 1177, column: 18, scope: !1941)
!1945 = !DILocation(line: 1178, column: 9, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1941, file: !72, line: 1178, column: 9)
!1947 = !DILocation(line: 1178, column: 16, scope: !1946)
!1948 = !DILocation(line: 1178, column: 22, scope: !1946)
!1949 = !DILocation(line: 1178, column: 9, scope: !1941)
!1950 = !DILocation(line: 1179, column: 7, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1946, file: !72, line: 1178, column: 28)
!1952 = !DILocation(line: 1179, column: 14, scope: !1951)
!1953 = !DILocation(line: 1179, column: 22, scope: !1951)
!1954 = !DILocation(line: 1180, column: 7, scope: !1951)
!1955 = !DILocation(line: 1180, column: 14, scope: !1951)
!1956 = !DILocation(line: 1180, column: 24, scope: !1951)
!1957 = !DILocation(line: 1181, column: 5, scope: !1951)
!1958 = !DILocation(line: 1182, column: 5, scope: !1941)
!1959 = !DILocation(line: 1184, column: 5, scope: !1941)
!1960 = !DILocation(line: 1184, column: 12, scope: !1941)
!1961 = !DILocation(line: 1184, column: 18, scope: !1941)
!1962 = !DILocation(line: 1185, column: 9, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1941, file: !72, line: 1185, column: 9)
!1964 = !DILocation(line: 1185, column: 16, scope: !1963)
!1965 = !DILocation(line: 1185, column: 22, scope: !1963)
!1966 = !DILocation(line: 1185, column: 9, scope: !1941)
!1967 = !DILocation(line: 1186, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1963, file: !72, line: 1185, column: 28)
!1969 = !DILocation(line: 1186, column: 14, scope: !1968)
!1970 = !DILocation(line: 1186, column: 22, scope: !1968)
!1971 = !DILocation(line: 1187, column: 7, scope: !1968)
!1972 = !DILocation(line: 1187, column: 14, scope: !1968)
!1973 = !DILocation(line: 1187, column: 24, scope: !1968)
!1974 = !DILocation(line: 1188, column: 5, scope: !1968)
!1975 = !DILocation(line: 1189, column: 5, scope: !1941)
!1976 = !DILocation(line: 1191, column: 5, scope: !1941)
!1977 = !DILocation(line: 1191, column: 12, scope: !1941)
!1978 = !DILocation(line: 1191, column: 18, scope: !1941)
!1979 = !DILocation(line: 1192, column: 9, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1941, file: !72, line: 1192, column: 9)
!1981 = !DILocation(line: 1192, column: 16, scope: !1980)
!1982 = !DILocation(line: 1192, column: 22, scope: !1980)
!1983 = !DILocation(line: 1192, column: 9, scope: !1941)
!1984 = !DILocation(line: 1193, column: 7, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1980, file: !72, line: 1192, column: 28)
!1986 = !DILocation(line: 1193, column: 14, scope: !1985)
!1987 = !DILocation(line: 1193, column: 22, scope: !1985)
!1988 = !DILocation(line: 1194, column: 7, scope: !1985)
!1989 = !DILocation(line: 1194, column: 14, scope: !1985)
!1990 = !DILocation(line: 1194, column: 24, scope: !1985)
!1991 = !DILocation(line: 1195, column: 5, scope: !1985)
!1992 = !DILocation(line: 1196, column: 5, scope: !1941)
!1993 = !DILocation(line: 1198, column: 5, scope: !1941)
!1994 = !DILocation(line: 1198, column: 12, scope: !1941)
!1995 = !DILocation(line: 1198, column: 18, scope: !1941)
!1996 = !DILocation(line: 1199, column: 9, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1941, file: !72, line: 1199, column: 9)
!1998 = !DILocation(line: 1199, column: 16, scope: !1997)
!1999 = !DILocation(line: 1199, column: 22, scope: !1997)
!2000 = !DILocation(line: 1199, column: 9, scope: !1941)
!2001 = !DILocation(line: 1200, column: 7, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1997, file: !72, line: 1199, column: 28)
!2003 = !DILocation(line: 1200, column: 14, scope: !2002)
!2004 = !DILocation(line: 1200, column: 22, scope: !2002)
!2005 = !DILocation(line: 1201, column: 7, scope: !2002)
!2006 = !DILocation(line: 1201, column: 14, scope: !2002)
!2007 = !DILocation(line: 1201, column: 24, scope: !2002)
!2008 = !DILocation(line: 1202, column: 5, scope: !2002)
!2009 = !DILocation(line: 1203, column: 5, scope: !1941)
!2010 = !DILocation(line: 1205, column: 5, scope: !1941)
!2011 = !DILocation(line: 1205, column: 12, scope: !1941)
!2012 = !DILocation(line: 1205, column: 20, scope: !1941)
!2013 = !DILocation(line: 1206, column: 5, scope: !1941)
!2014 = !DILocation(line: 1208, column: 5, scope: !1941)
!2015 = !DILocation(line: 1208, column: 12, scope: !1941)
!2016 = !DILocation(line: 1208, column: 20, scope: !1941)
!2017 = !DILocation(line: 1209, column: 5, scope: !1941)
!2018 = !DILocation(line: 1211, column: 17, scope: !450)
!2019 = !DILocation(line: 1211, column: 24, scope: !450)
!2020 = !DILocation(line: 1211, column: 10, scope: !450)
!2021 = !DILocation(line: 1211, column: 3, scope: !450)
!2022 = !DILocation(line: 1212, column: 1, scope: !450)
!2023 = !DILocation(line: 1098, column: 24, scope: !429)
!2024 = !DILocation(line: 1099, column: 14, scope: !429)
!2025 = !DILocation(line: 1100, column: 22, scope: !429)
!2026 = !DILocation(line: 1101, column: 22, scope: !429)
!2027 = !DILocation(line: 1102, column: 26, scope: !429)
!2028 = !DILocation(line: 1104, column: 11, scope: !429)
!2029 = !DILocation(line: 1104, column: 3, scope: !429)
!2030 = !DILocation(line: 1106, column: 5, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !429, file: !72, line: 1104, column: 16)
!2032 = !DILocation(line: 1109, column: 5, scope: !2031)
!2033 = !DILocation(line: 1109, column: 12, scope: !2031)
!2034 = !DILocation(line: 1109, column: 20, scope: !2031)
!2035 = !DILocation(line: 1110, column: 5, scope: !2031)
!2036 = !DILocation(line: 1112, column: 17, scope: !429)
!2037 = !DILocation(line: 1112, column: 24, scope: !429)
!2038 = !DILocation(line: 1112, column: 10, scope: !429)
!2039 = !DILocation(line: 1112, column: 3, scope: !429)
!2040 = !DILocation(line: 1113, column: 1, scope: !429)
!2041 = !DILocation(line: 1116, column: 24, scope: !436)
!2042 = !DILocation(line: 1117, column: 14, scope: !436)
!2043 = !DILocation(line: 1118, column: 22, scope: !436)
!2044 = !DILocation(line: 1119, column: 22, scope: !436)
!2045 = !DILocation(line: 1120, column: 26, scope: !436)
!2046 = !DILocation(line: 1122, column: 11, scope: !436)
!2047 = !DILocation(line: 1122, column: 3, scope: !436)
!2048 = !DILocation(line: 1124, column: 5, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !436, file: !72, line: 1122, column: 16)
!2050 = !DILocation(line: 1126, column: 5, scope: !2049)
!2051 = !DILocation(line: 1126, column: 12, scope: !2049)
!2052 = !DILocation(line: 1126, column: 20, scope: !2049)
!2053 = !DILocation(line: 1127, column: 5, scope: !2049)
!2054 = !DILocation(line: 1127, column: 12, scope: !2049)
!2055 = !DILocation(line: 1127, column: 22, scope: !2049)
!2056 = !DILocation(line: 1128, column: 5, scope: !2049)
!2057 = !DILocation(line: 1130, column: 5, scope: !2049)
!2058 = !DILocation(line: 1130, column: 12, scope: !2049)
!2059 = !DILocation(line: 1130, column: 20, scope: !2049)
!2060 = !DILocation(line: 1131, column: 5, scope: !2049)
!2061 = !DILocation(line: 1133, column: 17, scope: !436)
!2062 = !DILocation(line: 1133, column: 24, scope: !436)
!2063 = !DILocation(line: 1133, column: 10, scope: !436)
!2064 = !DILocation(line: 1133, column: 3, scope: !436)
!2065 = !DILocation(line: 1134, column: 1, scope: !436)
!2066 = !DILocation(line: 674, column: 25, scope: !464)
!2067 = !DILocation(line: 675, column: 15, scope: !464)
!2068 = !DILocation(line: 676, column: 23, scope: !464)
!2069 = !DILocation(line: 677, column: 23, scope: !464)
!2070 = !DILocation(line: 678, column: 27, scope: !464)
!2071 = !DILocation(line: 680, column: 11, scope: !464)
!2072 = !DILocation(line: 680, column: 3, scope: !464)
!2073 = !DILocation(line: 682, column: 5, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !464, file: !72, line: 680, column: 16)
!2075 = !DILocation(line: 684, column: 12, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2074, file: !72, line: 684, column: 9)
!2077 = !DILocation(line: 684, column: 18, scope: !2076)
!2078 = !DILocation(line: 684, column: 36, scope: !2076)
!2079 = !DILocation(line: 684, column: 41, scope: !2076)
!2080 = !DILocation(line: 684, column: 46, scope: !2076)
!2081 = !DILocation(line: 684, column: 10, scope: !2076)
!2082 = !DILocation(line: 684, column: 9, scope: !2074)
!2083 = !DILocation(line: 685, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2076, file: !72, line: 684, column: 64)
!2085 = !DILocation(line: 685, column: 14, scope: !2084)
!2086 = !DILocation(line: 685, column: 22, scope: !2084)
!2087 = !DILocation(line: 686, column: 7, scope: !2084)
!2088 = !DILocation(line: 688, column: 12, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2074, file: !72, line: 688, column: 9)
!2090 = !DILocation(line: 688, column: 18, scope: !2089)
!2091 = !DILocation(line: 688, column: 36, scope: !2089)
!2092 = !DILocation(line: 688, column: 41, scope: !2089)
!2093 = !DILocation(line: 688, column: 46, scope: !2089)
!2094 = !DILocation(line: 688, column: 10, scope: !2089)
!2095 = !DILocation(line: 688, column: 9, scope: !2074)
!2096 = !DILocation(line: 689, column: 7, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2089, file: !72, line: 688, column: 64)
!2098 = !DILocation(line: 689, column: 14, scope: !2097)
!2099 = !DILocation(line: 689, column: 22, scope: !2097)
!2100 = !DILocation(line: 690, column: 7, scope: !2097)
!2101 = !DILocation(line: 692, column: 5, scope: !2074)
!2102 = !DILocation(line: 694, column: 17, scope: !464)
!2103 = !DILocation(line: 694, column: 24, scope: !464)
!2104 = !DILocation(line: 694, column: 10, scope: !464)
!2105 = !DILocation(line: 694, column: 3, scope: !464)
!2106 = !DILocation(line: 695, column: 1, scope: !464)
!2107 = !DILocation(line: 715, column: 25, scope: !471)
!2108 = !DILocation(line: 716, column: 15, scope: !471)
!2109 = !DILocation(line: 717, column: 23, scope: !471)
!2110 = !DILocation(line: 718, column: 23, scope: !471)
!2111 = !DILocation(line: 719, column: 27, scope: !471)
!2112 = !DILocation(line: 721, column: 11, scope: !471)
!2113 = !DILocation(line: 721, column: 3, scope: !471)
!2114 = !DILocation(line: 723, column: 5, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !471, file: !72, line: 721, column: 16)
!2116 = !DILocation(line: 725, column: 5, scope: !2115)
!2117 = !DILocation(line: 725, column: 12, scope: !2115)
!2118 = !DILocation(line: 725, column: 20, scope: !2115)
!2119 = !DILocation(line: 726, column: 5, scope: !2115)
!2120 = !DILocation(line: 726, column: 12, scope: !2115)
!2121 = !DILocation(line: 726, column: 22, scope: !2115)
!2122 = !DILocation(line: 727, column: 5, scope: !2115)
!2123 = !DILocation(line: 729, column: 17, scope: !471)
!2124 = !DILocation(line: 729, column: 24, scope: !471)
!2125 = !DILocation(line: 729, column: 10, scope: !471)
!2126 = !DILocation(line: 729, column: 3, scope: !471)
!2127 = !DILocation(line: 730, column: 1, scope: !471)
!2128 = !DILocation(line: 698, column: 25, scope: !478)
!2129 = !DILocation(line: 699, column: 15, scope: !478)
!2130 = !DILocation(line: 700, column: 23, scope: !478)
!2131 = !DILocation(line: 701, column: 23, scope: !478)
!2132 = !DILocation(line: 702, column: 27, scope: !478)
!2133 = !DILocation(line: 704, column: 11, scope: !478)
!2134 = !DILocation(line: 704, column: 3, scope: !478)
!2135 = !DILocation(line: 706, column: 5, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !478, file: !72, line: 704, column: 16)
!2137 = !DILocation(line: 708, column: 5, scope: !2136)
!2138 = !DILocation(line: 708, column: 12, scope: !2136)
!2139 = !DILocation(line: 708, column: 20, scope: !2136)
!2140 = !DILocation(line: 709, column: 5, scope: !2136)
!2141 = !DILocation(line: 711, column: 17, scope: !478)
!2142 = !DILocation(line: 711, column: 24, scope: !478)
!2143 = !DILocation(line: 711, column: 10, scope: !478)
!2144 = !DILocation(line: 711, column: 3, scope: !478)
!2145 = !DILocation(line: 712, column: 1, scope: !478)
!2146 = !DILocation(line: 733, column: 25, scope: !485)
!2147 = !DILocation(line: 734, column: 15, scope: !485)
!2148 = !DILocation(line: 735, column: 23, scope: !485)
!2149 = !DILocation(line: 736, column: 23, scope: !485)
!2150 = !DILocation(line: 737, column: 27, scope: !485)
!2151 = !DILocation(line: 739, column: 11, scope: !485)
!2152 = !DILocation(line: 739, column: 3, scope: !485)
!2153 = !DILocation(line: 741, column: 5, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !485, file: !72, line: 739, column: 16)
!2155 = !DILocation(line: 743, column: 5, scope: !2154)
!2156 = !DILocation(line: 743, column: 12, scope: !2154)
!2157 = !DILocation(line: 743, column: 20, scope: !2154)
!2158 = !DILocation(line: 744, column: 5, scope: !2154)
!2159 = !DILocation(line: 744, column: 12, scope: !2154)
!2160 = !DILocation(line: 744, column: 22, scope: !2154)
!2161 = !DILocation(line: 745, column: 5, scope: !2154)
!2162 = !DILocation(line: 747, column: 27, scope: !2154)
!2163 = !DILocation(line: 747, column: 35, scope: !2154)
!2164 = !DILocation(line: 747, column: 26, scope: !2154)
!2165 = !DILocation(line: 747, column: 7, scope: !2154)
!2166 = !DILocation(line: 747, column: 15, scope: !2154)
!2167 = !DILocation(line: 747, column: 23, scope: !2154)
!2168 = !DILocation(line: 748, column: 5, scope: !2154)
!2169 = !DILocation(line: 750, column: 17, scope: !485)
!2170 = !DILocation(line: 750, column: 24, scope: !485)
!2171 = !DILocation(line: 750, column: 10, scope: !485)
!2172 = !DILocation(line: 750, column: 3, scope: !485)
!2173 = !DILocation(line: 751, column: 1, scope: !485)
!2174 = !DILocation(line: 299, column: 24, scope: !513)
!2175 = !DILocation(line: 300, column: 14, scope: !513)
!2176 = !DILocation(line: 301, column: 22, scope: !513)
!2177 = !DILocation(line: 302, column: 22, scope: !513)
!2178 = !DILocation(line: 303, column: 26, scope: !513)
!2179 = !DILocation(line: 305, column: 11, scope: !513)
!2180 = !DILocation(line: 305, column: 3, scope: !513)
!2181 = !DILocation(line: 307, column: 5, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !513, file: !72, line: 305, column: 16)
!2183 = !DILocation(line: 309, column: 5, scope: !2182)
!2184 = !DILocation(line: 309, column: 12, scope: !2182)
!2185 = !DILocation(line: 309, column: 20, scope: !2182)
!2186 = !DILocation(line: 310, column: 5, scope: !2182)
!2187 = !DILocation(line: 312, column: 5, scope: !2182)
!2188 = !DILocation(line: 312, column: 12, scope: !2182)
!2189 = !DILocation(line: 312, column: 20, scope: !2182)
!2190 = !DILocation(line: 313, column: 5, scope: !2182)
!2191 = !DILocation(line: 315, column: 17, scope: !513)
!2192 = !DILocation(line: 315, column: 24, scope: !513)
!2193 = !DILocation(line: 315, column: 10, scope: !513)
!2194 = !DILocation(line: 315, column: 3, scope: !513)
!2195 = !DILocation(line: 316, column: 1, scope: !513)
