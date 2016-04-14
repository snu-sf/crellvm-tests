; ModuleID = 'programs_new/Python-new/xmlrole.bc.ll'
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
  br label %NodeBlock.13

NodeBlock.13:                                     ; preds = %entry
  %Pivot.14 = icmp slt i32 %0, 14
  br i1 %Pivot.14, label %NodeBlock.1, label %NodeBlock.11

NodeBlock.11:                                     ; preds = %NodeBlock.13
  %Pivot.12 = icmp slt i32 %0, 16
  br i1 %Pivot.12, label %NodeBlock.3, label %NodeBlock.9

NodeBlock.9:                                      ; preds = %NodeBlock.11
  %Pivot.10 = icmp slt i32 %0, 29
  br i1 %Pivot.10, label %LeafBlock.5, label %LeafBlock.7

LeafBlock.7:                                      ; preds = %NodeBlock.9
  %SwitchLeaf8 = icmp eq i32 %0, 29
  br i1 %SwitchLeaf8, label %sw.bb.10, label %NewDefault

LeafBlock.5:                                      ; preds = %NodeBlock.9
  %SwitchLeaf6 = icmp eq i32 %0, 16
  br i1 %SwitchLeaf6, label %sw.bb.8, label %NewDefault

NodeBlock.3:                                      ; preds = %NodeBlock.11
  %Pivot.4 = icmp slt i32 %0, 15
  br i1 %Pivot.4, label %sw.bb.7, label %sw.bb

NodeBlock.1:                                      ; preds = %NodeBlock.13
  %Pivot.2 = icmp slt i32 %0, 12
  br i1 %Pivot.2, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.1
  %Pivot = icmp slt i32 %0, 13
  br i1 %Pivot, label %sw.bb.1, label %sw.bb.5

LeafBlock:                                        ; preds = %NodeBlock.1
  %SwitchLeaf = icmp eq i32 %0, 11
  br i1 %SwitchLeaf, label %sw.bb.3, label %NewDefault

sw.bb:                                            ; preds = %NodeBlock.3
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !626, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !628
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !629, !tbaa !603
  store i32 0, i32* %retval, !dbg !630
  br label %return, !dbg !630

sw.bb.1:                                          ; preds = %NodeBlock
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !631, !tbaa !594
  %handler2 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0, !dbg !632
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler2, align 8, !dbg !633, !tbaa !603
  store i32 1, i32* %retval, !dbg !634
  br label %return, !dbg !634

sw.bb.3:                                          ; preds = %LeafBlock
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !635, !tbaa !594
  %handler4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !636
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler4, align 8, !dbg !637, !tbaa !603
  store i32 55, i32* %retval, !dbg !638
  br label %return, !dbg !638

sw.bb.5:                                          ; preds = %NodeBlock
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !639, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 0, !dbg !640
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !641, !tbaa !603
  store i32 56, i32* %retval, !dbg !642
  br label %return, !dbg !642

sw.bb.7:                                          ; preds = %NodeBlock.3
  store i32 0, i32* %retval, !dbg !643
  br label %return, !dbg !643

sw.bb.8:                                          ; preds = %LeafBlock.5
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !644, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 3, !dbg !646
  %6 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !646, !tbaa !647
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !649, !tbaa !594
  %8 = load i8*, i8** %ptr.addr, align 8, !dbg !650, !tbaa !594
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !651, !tbaa !594
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %9, i32 0, i32 13, !dbg !652
  %10 = load i32, i32* %minBytesPerChar, align 4, !dbg !652, !tbaa !653
  %mul = mul i32 2, %10, !dbg !654
  %idx.ext = sext i32 %mul to i64, !dbg !655
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !655
  %11 = load i8*, i8** %end.addr, align 8, !dbg !656, !tbaa !594
  %call = call i32 %6(%struct.encoding* %7, i8* %add.ptr, i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_DOCTYPE, i32 0, i32 0)), !dbg !657
  %tobool = icmp ne i32 %call, 0, !dbg !657
  br i1 %tobool, label %if.end, label %if.then, !dbg !658

if.then:                                          ; preds = %sw.bb.8
  br label %sw.epilog, !dbg !659

if.end:                                           ; preds = %sw.bb.8
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !660, !tbaa !594
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0, !dbg !661
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8, !dbg !662, !tbaa !603
  store i32 3, i32* %retval, !dbg !663
  br label %return, !dbg !663

sw.bb.10:                                         ; preds = %LeafBlock.7
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !664, !tbaa !594
  %handler11 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0, !dbg !665
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @error, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler11, align 8, !dbg !666, !tbaa !603
  store i32 2, i32* %retval, !dbg !667
  br label %return, !dbg !667

NewDefault:                                       ; preds = %LeafBlock.7, %LeafBlock.5, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %if.then
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !668, !tbaa !594
  %15 = load i32, i32* %tok.addr, align 4, !dbg !669, !tbaa !620
  %call12 = call i32 @common(%struct.prolog_state* %14, i32 %15), !dbg !670
  store i32 %call12, i32* %retval, !dbg !671
  br label %return, !dbg !671

return:                                           ; preds = %sw.epilog, %sw.bb.10, %if.end, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %16 = load i32, i32* %retval, !dbg !672
  ret i32 %16, !dbg !672
}

; Function Attrs: nounwind uwtable
define void @PyExpat_XmlPrologStateInitExternalEntity(%struct.prolog_state* %state) #0 {
entry:
  %state.addr = alloca %struct.prolog_state*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !178, metadata !598), !dbg !673
  %0 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !674, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %0, i32 0, i32 0, !dbg !675
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !676, !tbaa !603
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !677, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 4, !dbg !678
  store i32 0, i32* %documentEntity, align 4, !dbg !679, !tbaa !609
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !680, !tbaa !594
  %includeLevel = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 3, !dbg !681
  store i32 0, i32* %includeLevel, align 4, !dbg !682, !tbaa !613
  ret void, !dbg !683
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !542, metadata !598), !dbg !684
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !543, metadata !598), !dbg !685
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !544, metadata !598), !dbg !686
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !545, metadata !598), !dbg !687
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !546, metadata !598), !dbg !688
  %0 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !689, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %0, i32 0, i32 0, !dbg !690
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !691, !tbaa !603
  %1 = load i32, i32* %tok.addr, align 4, !dbg !692, !tbaa !620
  %cmp = icmp eq i32 %1, 12, !dbg !694
  br i1 %cmp, label %if.then, label %if.end, !dbg !695

if.then:                                          ; preds = %entry
  store i32 57, i32* %retval, !dbg !696
  br label %return, !dbg !696

if.end:                                           ; preds = %entry
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !697, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !698, !tbaa !620
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !699, !tbaa !594
  %5 = load i8*, i8** %end.addr, align 8, !dbg !700, !tbaa !594
  %6 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !701, !tbaa !594
  %call = call i32 @externalSubset1(%struct.prolog_state* %2, i32 %3, i8* %4, i8* %5, %struct.encoding* %6), !dbg !702
  store i32 %call, i32* %retval, !dbg !703
  br label %return, !dbg !703

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, !dbg !704
  ret i32 %7, !dbg !704
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !190, metadata !598), !dbg !705
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !191, metadata !598), !dbg !706
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !192, metadata !598), !dbg !707
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !193, metadata !598), !dbg !708
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !194, metadata !598), !dbg !709
  %0 = load i32, i32* %tok.addr, align 4, !dbg !710, !tbaa !620
  br label %NodeBlock.11

NodeBlock.11:                                     ; preds = %entry
  %Pivot.12 = icmp slt i32 %0, 15
  br i1 %Pivot.12, label %NodeBlock.1, label %NodeBlock.9

NodeBlock.9:                                      ; preds = %NodeBlock.11
  %Pivot.10 = icmp slt i32 %0, 16
  br i1 %Pivot.10, label %sw.bb, label %NodeBlock.7

NodeBlock.7:                                      ; preds = %NodeBlock.9
  %Pivot.8 = icmp slt i32 %0, 29
  br i1 %Pivot.8, label %LeafBlock.3, label %LeafBlock.5

LeafBlock.5:                                      ; preds = %NodeBlock.7
  %SwitchLeaf6 = icmp eq i32 %0, 29
  br i1 %SwitchLeaf6, label %sw.bb.5, label %NewDefault

LeafBlock.3:                                      ; preds = %NodeBlock.7
  %SwitchLeaf4 = icmp eq i32 %0, 16
  br i1 %SwitchLeaf4, label %sw.bb.4, label %NewDefault

NodeBlock.1:                                      ; preds = %NodeBlock.11
  %Pivot.2 = icmp slt i32 %0, 13
  br i1 %Pivot.2, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.1
  %Pivot = icmp slt i32 %0, 14
  br i1 %Pivot, label %sw.bb.2, label %sw.bb.3

LeafBlock:                                        ; preds = %NodeBlock.1
  %SwitchLeaf = icmp eq i32 %0, 11
  br i1 %SwitchLeaf, label %sw.bb.1, label %NewDefault

sw.bb:                                            ; preds = %NodeBlock.9
  store i32 0, i32* %retval, !dbg !711
  br label %return, !dbg !711

sw.bb.1:                                          ; preds = %LeafBlock
  store i32 55, i32* %retval, !dbg !713
  br label %return, !dbg !713

sw.bb.2:                                          ; preds = %NodeBlock
  store i32 56, i32* %retval, !dbg !714
  br label %return, !dbg !714

sw.bb.3:                                          ; preds = %NodeBlock
  store i32 0, i32* %retval, !dbg !715
  br label %return, !dbg !715

sw.bb.4:                                          ; preds = %LeafBlock.3
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !716, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !718
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !718, !tbaa !647
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !719, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !720, !tbaa !594
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !721, !tbaa !594
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 13, !dbg !722
  %6 = load i32, i32* %minBytesPerChar, align 4, !dbg !722, !tbaa !653
  %mul = mul i32 2, %6, !dbg !723
  %idx.ext = sext i32 %mul to i64, !dbg !724
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !724
  %7 = load i8*, i8** %end.addr, align 8, !dbg !725, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %add.ptr, i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_DOCTYPE, i32 0, i32 0)), !dbg !726
  %tobool = icmp ne i32 %call, 0, !dbg !726
  br i1 %tobool, label %if.end, label %if.then, !dbg !727

if.then:                                          ; preds = %sw.bb.4
  br label %sw.epilog, !dbg !728

if.end:                                           ; preds = %sw.bb.4
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !729, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0, !dbg !730
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !731, !tbaa !603
  store i32 3, i32* %retval, !dbg !732
  br label %return, !dbg !732

sw.bb.5:                                          ; preds = %LeafBlock.5
  %9 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !733, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %9, i32 0, i32 0, !dbg !734
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @error, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !735, !tbaa !603
  store i32 2, i32* %retval, !dbg !736
  br label %return, !dbg !736

NewDefault:                                       ; preds = %LeafBlock.5, %LeafBlock.3, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %if.then
  %10 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !737, !tbaa !594
  %11 = load i32, i32* %tok.addr, align 4, !dbg !738, !tbaa !620
  %call7 = call i32 @common(%struct.prolog_state* %10, i32 %11), !dbg !739
  store i32 %call7, i32* %retval, !dbg !740
  br label %return, !dbg !740

return:                                           ; preds = %sw.epilog, %sw.bb.5, %if.end, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %12 = load i32, i32* %retval, !dbg !741
  ret i32 %12, !dbg !741
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !197, metadata !598), !dbg !742
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !198, metadata !598), !dbg !743
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !199, metadata !598), !dbg !744
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !200, metadata !598), !dbg !745
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !201, metadata !598), !dbg !746
  %0 = load i32, i32* %tok.addr, align 4, !dbg !747, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 18
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 41
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 41
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 3, i32* %retval, !dbg !748
  br label %return, !dbg !748

sw.bb.1:                                          ; preds = %LeafBlock.3, %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !750, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !751
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !752, !tbaa !603
  store i32 4, i32* %retval, !dbg !753
  br label %return, !dbg !753

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !754, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !755, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !756
  store i32 %call, i32* %retval, !dbg !757
  br label %return, !dbg !757

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !758
  ret i32 %4, !dbg !758
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !529, metadata !598), !dbg !759
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !530, metadata !598), !dbg !760
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !531, metadata !598), !dbg !761
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !532, metadata !598), !dbg !762
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !533, metadata !598), !dbg !763
  ret i32 0, !dbg !764
}

; Function Attrs: nounwind uwtable
define internal i32 @common(%struct.prolog_state* %state, i32 %tok) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !538, metadata !598), !dbg !765
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !539, metadata !598), !dbg !766
  %0 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !767, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %0, i32 0, i32 4, !dbg !769
  %1 = load i32, i32* %documentEntity, align 4, !dbg !769, !tbaa !609
  %tobool = icmp ne i32 %1, 0, !dbg !767
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !770

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %tok.addr, align 4, !dbg !771, !tbaa !620
  %cmp = icmp eq i32 %2, 28, !dbg !773
  br i1 %cmp, label %if.then, label %if.end, !dbg !774

if.then:                                          ; preds = %land.lhs.true
  store i32 59, i32* %retval, !dbg !775
  br label %return, !dbg !775

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !776, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !777
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @error, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !778, !tbaa !603
  store i32 -1, i32* %retval, !dbg !779
  br label %return, !dbg !779

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, !dbg !780
  ret i32 %4, !dbg !780
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !204, metadata !598), !dbg !781
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !205, metadata !598), !dbg !782
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !206, metadata !598), !dbg !783
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !207, metadata !598), !dbg !784
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !208, metadata !598), !dbg !785
  %0 = load i32, i32* %tok.addr, align 4, !dbg !786, !tbaa !620
  br label %NodeBlock.7

NodeBlock.7:                                      ; preds = %entry
  %Pivot.8 = icmp slt i32 %0, 18
  br i1 %Pivot.8, label %NodeBlock, label %NodeBlock.5

NodeBlock.5:                                      ; preds = %NodeBlock.7
  %Pivot.6 = icmp slt i32 %0, 25
  br i1 %Pivot.6, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock.5
  %SwitchLeaf4 = icmp eq i32 %0, 25
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock.5
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.4, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock.7
  %Pivot = icmp slt i32 %0, 17
  br i1 %Pivot, label %LeafBlock, label %sw.bb.2

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 3, i32* %retval, !dbg !787
  br label %return, !dbg !787

sw.bb.1:                                          ; preds = %LeafBlock.3
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !789, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !790
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !791, !tbaa !603
  store i32 7, i32* %retval, !dbg !792
  br label %return, !dbg !792

sw.bb.2:                                          ; preds = %NodeBlock
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !793, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0, !dbg !794
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !795, !tbaa !603
  store i32 8, i32* %retval, !dbg !796
  br label %return, !dbg !796

sw.bb.4:                                          ; preds = %LeafBlock.1
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !797, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %3, i32 0, i32 3, !dbg !799
  %4 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !799, !tbaa !647
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !800, !tbaa !594
  %6 = load i8*, i8** %ptr.addr, align 8, !dbg !801, !tbaa !594
  %7 = load i8*, i8** %end.addr, align 8, !dbg !802, !tbaa !594
  %call = call i32 %4(%struct.encoding* %5, i8* %6, i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_SYSTEM, i32 0, i32 0)), !dbg !803
  %tobool = icmp ne i32 %call, 0, !dbg !803
  br i1 %tobool, label %if.then, label %if.end, !dbg !804

if.then:                                          ; preds = %sw.bb.4
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !805, !tbaa !594
  %handler5 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0, !dbg !807
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler5, align 8, !dbg !808, !tbaa !603
  store i32 3, i32* %retval, !dbg !809
  br label %return, !dbg !809

if.end:                                           ; preds = %sw.bb.4
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !810, !tbaa !594
  %nameMatchesAscii6 = getelementptr inbounds %struct.encoding, %struct.encoding* %9, i32 0, i32 3, !dbg !812
  %10 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii6, align 8, !dbg !812, !tbaa !647
  %11 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !813, !tbaa !594
  %12 = load i8*, i8** %ptr.addr, align 8, !dbg !814, !tbaa !594
  %13 = load i8*, i8** %end.addr, align 8, !dbg !815, !tbaa !594
  %call7 = call i32 %10(%struct.encoding* %11, i8* %12, i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PUBLIC, i32 0, i32 0)), !dbg !816
  %tobool8 = icmp ne i32 %call7, 0, !dbg !816
  br i1 %tobool8, label %if.then.9, label %if.end.11, !dbg !817

if.then.9:                                        ; preds = %if.end
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !818, !tbaa !594
  %handler10 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 0, !dbg !820
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler10, align 8, !dbg !821, !tbaa !603
  store i32 3, i32* %retval, !dbg !822
  br label %return, !dbg !822

if.end.11:                                        ; preds = %if.end
  br label %sw.epilog, !dbg !823

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %if.end.11
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !824, !tbaa !594
  %16 = load i32, i32* %tok.addr, align 4, !dbg !825, !tbaa !620
  %call12 = call i32 @common(%struct.prolog_state* %15, i32 %16), !dbg !826
  store i32 %call12, i32* %retval, !dbg !827
  br label %return, !dbg !827

return:                                           ; preds = %sw.epilog, %if.then.9, %if.then, %sw.bb.2, %sw.bb.1, %sw.bb
  %17 = load i32, i32* %retval, !dbg !828
  ret i32 %17, !dbg !828
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !211, metadata !598), !dbg !829
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !212, metadata !598), !dbg !830
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !213, metadata !598), !dbg !831
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !214, metadata !598), !dbg !832
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !215, metadata !598), !dbg !833
  %0 = load i32, i32* %tok.addr, align 4, !dbg !834, !tbaa !620
  br label %NodeBlock.19

NodeBlock.19:                                     ; preds = %entry
  %Pivot.20 = icmp slt i32 %0, 15
  br i1 %Pivot.20, label %NodeBlock.5, label %NodeBlock.17

NodeBlock.17:                                     ; preds = %NodeBlock.19
  %Pivot.18 = icmp slt i32 %0, 26
  br i1 %Pivot.18, label %NodeBlock.9, label %NodeBlock.15

NodeBlock.15:                                     ; preds = %NodeBlock.17
  %Pivot.16 = icmp slt i32 %0, 28
  br i1 %Pivot.16, label %LeafBlock.11, label %LeafBlock.13

LeafBlock.13:                                     ; preds = %NodeBlock.15
  %SwitchLeaf14 = icmp eq i32 %0, 28
  br i1 %SwitchLeaf14, label %sw.bb.34, label %NewDefault

LeafBlock.11:                                     ; preds = %NodeBlock.15
  %SwitchLeaf12 = icmp eq i32 %0, 26
  br i1 %SwitchLeaf12, label %sw.bb.35, label %NewDefault

NodeBlock.9:                                      ; preds = %NodeBlock.17
  %Pivot.10 = icmp slt i32 %0, 16
  br i1 %Pivot.10, label %sw.bb, label %LeafBlock.7

LeafBlock.7:                                      ; preds = %NodeBlock.9
  %SwitchLeaf8 = icmp eq i32 %0, 16
  br i1 %SwitchLeaf8, label %sw.bb.1, label %NewDefault

NodeBlock.5:                                      ; preds = %NodeBlock.19
  %Pivot.6 = icmp slt i32 %0, 11
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 13
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 13
  br i1 %SwitchLeaf4, label %sw.bb.33, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 11
  br i1 %SwitchLeaf2, label %sw.bb.32, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, -4
  br i1 %SwitchLeaf, label %sw.bb.37, label %NewDefault

sw.bb:                                            ; preds = %NodeBlock.9
  store i32 0, i32* %retval, !dbg !835
  br label %return, !dbg !835

sw.bb.1:                                          ; preds = %LeafBlock.7
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !837, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !839
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !839, !tbaa !647
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !840, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !841, !tbaa !594
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !842, !tbaa !594
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 13, !dbg !843
  %6 = load i32, i32* %minBytesPerChar, align 4, !dbg !843, !tbaa !653
  %mul = mul i32 2, %6, !dbg !844
  %idx.ext = sext i32 %mul to i64, !dbg !845
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !845
  %7 = load i8*, i8** %end.addr, align 8, !dbg !846, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %add.ptr, i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_ENTITY, i32 0, i32 0)), !dbg !847
  %tobool = icmp ne i32 %call, 0, !dbg !847
  br i1 %tobool, label %if.then, label %if.end, !dbg !848

if.then:                                          ; preds = %sw.bb.1
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !849, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0, !dbg !851
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !852, !tbaa !603
  store i32 11, i32* %retval, !dbg !853
  br label %return, !dbg !853

if.end:                                           ; preds = %sw.bb.1
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !854, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %9, i32 0, i32 3, !dbg !856
  %10 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !856, !tbaa !647
  %11 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !857, !tbaa !594
  %12 = load i8*, i8** %ptr.addr, align 8, !dbg !858, !tbaa !594
  %13 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !859, !tbaa !594
  %minBytesPerChar3 = getelementptr inbounds %struct.encoding, %struct.encoding* %13, i32 0, i32 13, !dbg !860
  %14 = load i32, i32* %minBytesPerChar3, align 4, !dbg !860, !tbaa !653
  %mul4 = mul i32 2, %14, !dbg !861
  %idx.ext5 = sext i32 %mul4 to i64, !dbg !862
  %add.ptr6 = getelementptr i8, i8* %12, i64 %idx.ext5, !dbg !862
  %15 = load i8*, i8** %end.addr, align 8, !dbg !863, !tbaa !594
  %call7 = call i32 %10(%struct.encoding* %11, i8* %add.ptr6, i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_ATTLIST, i32 0, i32 0)), !dbg !864
  %tobool8 = icmp ne i32 %call7, 0, !dbg !864
  br i1 %tobool8, label %if.then.9, label %if.end.11, !dbg !865

if.then.9:                                        ; preds = %if.end
  %16 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !866, !tbaa !594
  %handler10 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %16, i32 0, i32 0, !dbg !868
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler10, align 8, !dbg !869, !tbaa !603
  store i32 33, i32* %retval, !dbg !870
  br label %return, !dbg !870

if.end.11:                                        ; preds = %if.end
  %17 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !871, !tbaa !594
  %nameMatchesAscii12 = getelementptr inbounds %struct.encoding, %struct.encoding* %17, i32 0, i32 3, !dbg !873
  %18 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii12, align 8, !dbg !873, !tbaa !647
  %19 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !874, !tbaa !594
  %20 = load i8*, i8** %ptr.addr, align 8, !dbg !875, !tbaa !594
  %21 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !876, !tbaa !594
  %minBytesPerChar13 = getelementptr inbounds %struct.encoding, %struct.encoding* %21, i32 0, i32 13, !dbg !877
  %22 = load i32, i32* %minBytesPerChar13, align 4, !dbg !877, !tbaa !653
  %mul14 = mul i32 2, %22, !dbg !878
  %idx.ext15 = sext i32 %mul14 to i64, !dbg !879
  %add.ptr16 = getelementptr i8, i8* %20, i64 %idx.ext15, !dbg !879
  %23 = load i8*, i8** %end.addr, align 8, !dbg !880, !tbaa !594
  %call17 = call i32 %18(%struct.encoding* %19, i8* %add.ptr16, i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_ELEMENT, i32 0, i32 0)), !dbg !881
  %tobool18 = icmp ne i32 %call17, 0, !dbg !881
  br i1 %tobool18, label %if.then.19, label %if.end.21, !dbg !882

if.then.19:                                       ; preds = %if.end.11
  %24 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !883, !tbaa !594
  %handler20 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %24, i32 0, i32 0, !dbg !885
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler20, align 8, !dbg !886, !tbaa !603
  store i32 39, i32* %retval, !dbg !887
  br label %return, !dbg !887

if.end.21:                                        ; preds = %if.end.11
  %25 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !888, !tbaa !594
  %nameMatchesAscii22 = getelementptr inbounds %struct.encoding, %struct.encoding* %25, i32 0, i32 3, !dbg !890
  %26 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii22, align 8, !dbg !890, !tbaa !647
  %27 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !891, !tbaa !594
  %28 = load i8*, i8** %ptr.addr, align 8, !dbg !892, !tbaa !594
  %29 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !893, !tbaa !594
  %minBytesPerChar23 = getelementptr inbounds %struct.encoding, %struct.encoding* %29, i32 0, i32 13, !dbg !894
  %30 = load i32, i32* %minBytesPerChar23, align 4, !dbg !894, !tbaa !653
  %mul24 = mul i32 2, %30, !dbg !895
  %idx.ext25 = sext i32 %mul24 to i64, !dbg !896
  %add.ptr26 = getelementptr i8, i8* %28, i64 %idx.ext25, !dbg !896
  %31 = load i8*, i8** %end.addr, align 8, !dbg !897, !tbaa !594
  %call27 = call i32 %26(%struct.encoding* %27, i8* %add.ptr26, i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @KW_NOTATION, i32 0, i32 0)), !dbg !898
  %tobool28 = icmp ne i32 %call27, 0, !dbg !898
  br i1 %tobool28, label %if.then.29, label %if.end.31, !dbg !899

if.then.29:                                       ; preds = %if.end.21
  %32 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !900, !tbaa !594
  %handler30 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %32, i32 0, i32 0, !dbg !902
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler30, align 8, !dbg !903, !tbaa !603
  store i32 17, i32* %retval, !dbg !904
  br label %return, !dbg !904

if.end.31:                                        ; preds = %if.end.21
  br label %sw.epilog, !dbg !905

sw.bb.32:                                         ; preds = %LeafBlock.1
  store i32 55, i32* %retval, !dbg !906
  br label %return, !dbg !906

sw.bb.33:                                         ; preds = %LeafBlock.3
  store i32 56, i32* %retval, !dbg !907
  br label %return, !dbg !907

sw.bb.34:                                         ; preds = %LeafBlock.13
  store i32 60, i32* %retval, !dbg !908
  br label %return, !dbg !908

sw.bb.35:                                         ; preds = %LeafBlock.11
  %33 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !909, !tbaa !594
  %handler36 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %33, i32 0, i32 0, !dbg !910
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype5, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler36, align 8, !dbg !911, !tbaa !603
  store i32 3, i32* %retval, !dbg !912
  br label %return, !dbg !912

sw.bb.37:                                         ; preds = %LeafBlock
  store i32 0, i32* %retval, !dbg !913
  br label %return, !dbg !913

NewDefault:                                       ; preds = %LeafBlock.13, %LeafBlock.11, %LeafBlock.7, %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %if.end.31
  %34 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !914, !tbaa !594
  %35 = load i32, i32* %tok.addr, align 4, !dbg !915, !tbaa !620
  %call38 = call i32 @common(%struct.prolog_state* %34, i32 %35), !dbg !916
  store i32 %call38, i32* %retval, !dbg !917
  br label %return, !dbg !917

return:                                           ; preds = %sw.epilog, %sw.bb.37, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb.32, %if.then.29, %if.then.19, %if.then.9, %if.then, %sw.bb
  %36 = load i32, i32* %retval, !dbg !918
  ret i32 %36, !dbg !918
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !501, metadata !598), !dbg !919
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !502, metadata !598), !dbg !920
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !503, metadata !598), !dbg !921
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !504, metadata !598), !dbg !922
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !505, metadata !598), !dbg !923
  %0 = load i32, i32* %tok.addr, align 4, !dbg !924, !tbaa !620
  br label %NodeBlock.9

NodeBlock.9:                                      ; preds = %entry
  %Pivot.10 = icmp slt i32 %0, 15
  br i1 %Pivot.10, label %NodeBlock, label %NodeBlock.7

NodeBlock.7:                                      ; preds = %NodeBlock.9
  %Pivot.8 = icmp slt i32 %0, 29
  br i1 %Pivot.8, label %LeafBlock.3, label %LeafBlock.5

LeafBlock.5:                                      ; preds = %NodeBlock.7
  %SwitchLeaf6 = icmp eq i32 %0, 29
  br i1 %SwitchLeaf6, label %sw.bb.3, label %NewDefault

LeafBlock.3:                                      ; preds = %NodeBlock.7
  %SwitchLeaf4 = icmp eq i32 %0, 15
  br i1 %SwitchLeaf4, label %sw.bb, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock.9
  %Pivot = icmp slt i32 %0, 13
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 13
  br i1 %SwitchLeaf2, label %sw.bb.2, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 11
  br i1 %SwitchLeaf, label %sw.bb.1, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock.3
  store i32 0, i32* %retval, !dbg !925
  br label %return, !dbg !925

sw.bb.1:                                          ; preds = %LeafBlock
  store i32 55, i32* %retval, !dbg !927
  br label %return, !dbg !927

sw.bb.2:                                          ; preds = %LeafBlock.1
  store i32 56, i32* %retval, !dbg !928
  br label %return, !dbg !928

sw.bb.3:                                          ; preds = %LeafBlock.5
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !929, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !930
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @error, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !931, !tbaa !603
  store i32 2, i32* %retval, !dbg !932
  br label %return, !dbg !932

NewDefault:                                       ; preds = %LeafBlock.5, %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !933, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !934, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !935
  store i32 %call, i32* %retval, !dbg !936
  br label %return, !dbg !936

return:                                           ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !937
  ret i32 %4, !dbg !937
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !508, metadata !598), !dbg !938
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !509, metadata !598), !dbg !939
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !510, metadata !598), !dbg !940
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !511, metadata !598), !dbg !941
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !512, metadata !598), !dbg !942
  %0 = load i32, i32* %tok.addr, align 4, !dbg !943, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 27
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 27
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 3, i32* %retval, !dbg !944
  br label %return, !dbg !944

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !946, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !947
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !948, !tbaa !603
  store i32 5, i32* %retval, !dbg !949
  br label %return, !dbg !949

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !950, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !951, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !952
  store i32 %call, i32* %retval, !dbg !953
  br label %return, !dbg !953

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !954
  ret i32 %4, !dbg !954
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !522, metadata !598), !dbg !955
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !523, metadata !598), !dbg !956
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !524, metadata !598), !dbg !957
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !525, metadata !598), !dbg !958
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !526, metadata !598), !dbg !959
  %0 = load i32, i32* %tok.addr, align 4, !dbg !960, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 27
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 27
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 3, i32* %retval, !dbg !961
  br label %return, !dbg !961

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !963, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !964
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @doctype3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !965, !tbaa !603
  store i32 6, i32* %retval, !dbg !966
  br label %return, !dbg !966

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !967, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !968, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !969
  store i32 %call, i32* %retval, !dbg !970
  br label %return, !dbg !970

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !971
  ret i32 %4, !dbg !971
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !218, metadata !598), !dbg !972
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !219, metadata !598), !dbg !973
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !220, metadata !598), !dbg !974
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !221, metadata !598), !dbg !975
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !222, metadata !598), !dbg !976
  %0 = load i32, i32* %tok.addr, align 4, !dbg !977, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 18
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 22
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 22
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.2, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 11, i32* %retval, !dbg !978
  br label %return, !dbg !978

sw.bb.1:                                          ; preds = %LeafBlock.3
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !980, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !981
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !982, !tbaa !603
  store i32 11, i32* %retval, !dbg !983
  br label %return, !dbg !983

sw.bb.2:                                          ; preds = %LeafBlock.1
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !984, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0, !dbg !985
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !986, !tbaa !603
  store i32 9, i32* %retval, !dbg !987
  br label %return, !dbg !987

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !988, !tbaa !594
  %4 = load i32, i32* %tok.addr, align 4, !dbg !989, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4), !dbg !990
  store i32 %call, i32* %retval, !dbg !991
  br label %return, !dbg !991

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval, !dbg !992
  ret i32 %5, !dbg !992
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !330, metadata !598), !dbg !993
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !331, metadata !598), !dbg !994
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !332, metadata !598), !dbg !995
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !333, metadata !598), !dbg !996
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !334, metadata !598), !dbg !997
  %0 = load i32, i32* %tok.addr, align 4, !dbg !998, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 18
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 41
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 41
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 33, i32* %retval, !dbg !999
  br label %return, !dbg !999

sw.bb.1:                                          ; preds = %LeafBlock.3, %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1001, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1002
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1003, !tbaa !603
  store i32 34, i32* %retval, !dbg !1004
  br label %return, !dbg !1004

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1005, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1006, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1007
  store i32 %call, i32* %retval, !dbg !1008
  br label %return, !dbg !1008

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1009
  ret i32 %4, !dbg !1009
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !403, metadata !598), !dbg !1010
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !404, metadata !598), !dbg !1011
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !405, metadata !598), !dbg !1012
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !406, metadata !598), !dbg !1013
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !407, metadata !598), !dbg !1014
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1015, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 18
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 41
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 41
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 39, i32* %retval, !dbg !1016
  br label %return, !dbg !1016

sw.bb.1:                                          ; preds = %LeafBlock.3, %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1018, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1019
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1020, !tbaa !603
  store i32 40, i32* %retval, !dbg !1021
  br label %return, !dbg !1021

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1022, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1023, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1024
  store i32 %call, i32* %retval, !dbg !1025
  br label %return, !dbg !1025

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1026
  ret i32 %4, !dbg !1026
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !459, metadata !598), !dbg !1027
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !460, metadata !598), !dbg !1028
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !461, metadata !598), !dbg !1029
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !462, metadata !598), !dbg !1030
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !463, metadata !598), !dbg !1031
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1032, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 18
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 17, i32* %retval, !dbg !1033
  br label %return, !dbg !1033

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1035, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1036
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1037, !tbaa !603
  store i32 18, i32* %retval, !dbg !1038
  br label %return, !dbg !1038

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1039, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1040, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1041
  store i32 %call, i32* %retval, !dbg !1042
  br label %return, !dbg !1042

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1043
  ret i32 %4, !dbg !1043
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !494, metadata !598), !dbg !1044
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !495, metadata !598), !dbg !1045
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !496, metadata !598), !dbg !1046
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !497, metadata !598), !dbg !1047
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !498, metadata !598), !dbg !1048
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1049, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 17
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 17
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 3, i32* %retval, !dbg !1050
  br label %return, !dbg !1050

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1052, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1053
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1054, !tbaa !603
  store i32 8, i32* %retval, !dbg !1055
  br label %return, !dbg !1055

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1056, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1057, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1058
  store i32 %call, i32* %retval, !dbg !1059
  br label %return, !dbg !1059

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1060
  ret i32 %4, !dbg !1060
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !225, metadata !598), !dbg !1061
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !226, metadata !598), !dbg !1062
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !227, metadata !598), !dbg !1063
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !228, metadata !598), !dbg !1064
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !229, metadata !598), !dbg !1065
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1066, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 18
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 11, i32* %retval, !dbg !1067
  br label %return, !dbg !1067

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1069, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1070
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1071, !tbaa !603
  store i32 10, i32* %retval, !dbg !1072
  br label %return, !dbg !1072

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1073, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1074, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1075
  store i32 %call, i32* %retval, !dbg !1076
  br label %return, !dbg !1076

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1077
  ret i32 %4, !dbg !1077
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !295, metadata !598), !dbg !1078
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !296, metadata !598), !dbg !1079
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !297, metadata !598), !dbg !1080
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !298, metadata !598), !dbg !1081
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !299, metadata !598), !dbg !1082
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1083, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 18
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 27
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 27
  br i1 %SwitchLeaf4, label %sw.bb.8, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 11, i32* %retval, !dbg !1084
  br label %return, !dbg !1084

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1086, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !1088
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1088, !tbaa !647
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1089, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !1090, !tbaa !594
  %5 = load i8*, i8** %end.addr, align 8, !dbg !1091, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_SYSTEM, i32 0, i32 0)), !dbg !1092
  %tobool = icmp ne i32 %call, 0, !dbg !1092
  br i1 %tobool, label %if.then, label %if.end, !dbg !1093

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1094, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0, !dbg !1096
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1097, !tbaa !603
  store i32 11, i32* %retval, !dbg !1098
  br label %return, !dbg !1098

if.end:                                           ; preds = %sw.bb.1
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1099, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 3, !dbg !1101
  %8 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !1101, !tbaa !647
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1102, !tbaa !594
  %10 = load i8*, i8** %ptr.addr, align 8, !dbg !1103, !tbaa !594
  %11 = load i8*, i8** %end.addr, align 8, !dbg !1104, !tbaa !594
  %call3 = call i32 %8(%struct.encoding* %9, i8* %10, i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PUBLIC, i32 0, i32 0)), !dbg !1105
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1105
  br i1 %tobool4, label %if.then.5, label %if.end.7, !dbg !1106

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1107, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0, !dbg !1109
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !1110, !tbaa !603
  store i32 11, i32* %retval, !dbg !1111
  br label %return, !dbg !1111

if.end.7:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !1112

sw.bb.8:                                          ; preds = %LeafBlock.3
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1113, !tbaa !594
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0, !dbg !1114
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8, !dbg !1115, !tbaa !603
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1116, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 2, !dbg !1117
  store i32 11, i32* %role_none, align 4, !dbg !1118, !tbaa !1119
  store i32 12, i32* %retval, !dbg !1120
  br label %return, !dbg !1120

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %if.end.7
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1121, !tbaa !594
  %16 = load i32, i32* %tok.addr, align 4, !dbg !1122, !tbaa !620
  %call10 = call i32 @common(%struct.prolog_state* %15, i32 %16), !dbg !1123
  store i32 %call10, i32* %retval, !dbg !1124
  br label %return, !dbg !1124

return:                                           ; preds = %sw.epilog, %sw.bb.8, %if.then.5, %if.then, %sw.bb
  %17 = load i32, i32* %retval, !dbg !1125
  ret i32 %17, !dbg !1125
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !232, metadata !598), !dbg !1126
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !233, metadata !598), !dbg !1127
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !234, metadata !598), !dbg !1128
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !235, metadata !598), !dbg !1129
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !236, metadata !598), !dbg !1130
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1131, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 18
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 27
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 27
  br i1 %SwitchLeaf4, label %sw.bb.8, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 11, i32* %retval, !dbg !1132
  br label %return, !dbg !1132

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1134, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !1136
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1136, !tbaa !647
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1137, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !1138, !tbaa !594
  %5 = load i8*, i8** %end.addr, align 8, !dbg !1139, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_SYSTEM, i32 0, i32 0)), !dbg !1140
  %tobool = icmp ne i32 %call, 0, !dbg !1140
  br i1 %tobool, label %if.then, label %if.end, !dbg !1141

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1142, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0, !dbg !1144
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity9, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1145, !tbaa !603
  store i32 11, i32* %retval, !dbg !1146
  br label %return, !dbg !1146

if.end:                                           ; preds = %sw.bb.1
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1147, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 3, !dbg !1149
  %8 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !1149, !tbaa !647
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1150, !tbaa !594
  %10 = load i8*, i8** %ptr.addr, align 8, !dbg !1151, !tbaa !594
  %11 = load i8*, i8** %end.addr, align 8, !dbg !1152, !tbaa !594
  %call3 = call i32 %8(%struct.encoding* %9, i8* %10, i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PUBLIC, i32 0, i32 0)), !dbg !1153
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1153
  br i1 %tobool4, label %if.then.5, label %if.end.7, !dbg !1154

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1155, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0, !dbg !1157
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity8, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !1158, !tbaa !603
  store i32 11, i32* %retval, !dbg !1159
  br label %return, !dbg !1159

if.end.7:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !1160

sw.bb.8:                                          ; preds = %LeafBlock.3
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1161, !tbaa !594
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0, !dbg !1162
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8, !dbg !1163, !tbaa !603
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1164, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 2, !dbg !1165
  store i32 11, i32* %role_none, align 4, !dbg !1166, !tbaa !1119
  store i32 12, i32* %retval, !dbg !1167
  br label %return, !dbg !1167

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %if.end.7
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1168, !tbaa !594
  %16 = load i32, i32* %tok.addr, align 4, !dbg !1169, !tbaa !620
  %call10 = call i32 @common(%struct.prolog_state* %15, i32 %16), !dbg !1170
  store i32 %call10, i32* %retval, !dbg !1171
  br label %return, !dbg !1171

return:                                           ; preds = %sw.epilog, %sw.bb.8, %if.then.5, %if.then, %sw.bb
  %17 = load i32, i32* %retval, !dbg !1172
  ret i32 %17, !dbg !1172
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !239, metadata !598), !dbg !1173
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !240, metadata !598), !dbg !1174
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !241, metadata !598), !dbg !1175
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !242, metadata !598), !dbg !1176
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !243, metadata !598), !dbg !1177
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1178, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 27
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 27
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 11, i32* %retval, !dbg !1179
  br label %return, !dbg !1179

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1181, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1182
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity10, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1183, !tbaa !603
  store i32 13, i32* %retval, !dbg !1184
  br label %return, !dbg !1184

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1185, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1186, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1187
  store i32 %call, i32* %retval, !dbg !1188
  br label %return, !dbg !1188

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1189
  ret i32 %4, !dbg !1189
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !281, metadata !598), !dbg !1190
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !282, metadata !598), !dbg !1191
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !283, metadata !598), !dbg !1192
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !284, metadata !598), !dbg !1193
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !285, metadata !598), !dbg !1194
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1195, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 27
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 27
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 11, i32* %retval, !dbg !1196
  br label %return, !dbg !1196

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1198, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1199
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity9, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1200, !tbaa !603
  store i32 14, i32* %retval, !dbg !1201
  br label %return, !dbg !1201

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
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
define internal i32 @declClose(%struct.prolog_state* %state, i32 %tok, i8* %ptr, i8* %end, %struct.encoding* %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.prolog_state*, align 8
  %tok.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %enc.addr = alloca %struct.encoding*, align 8
  store %struct.prolog_state* %state, %struct.prolog_state** %state.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !288, metadata !598), !dbg !1207
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !289, metadata !598), !dbg !1208
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !290, metadata !598), !dbg !1209
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !291, metadata !598), !dbg !1210
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !292, metadata !598), !dbg !1211
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1212, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 17
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 17
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1213, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 2, !dbg !1215
  %2 = load i32, i32* %role_none, align 4, !dbg !1215, !tbaa !1119
  store i32 %2, i32* %retval, !dbg !1216
  br label %return, !dbg !1216

sw.bb.1:                                          ; preds = %LeafBlock.1
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1217, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 4, !dbg !1218
  %4 = load i32, i32* %documentEntity, align 4, !dbg !1218, !tbaa !609
  %tobool = icmp ne i32 %4, 0, !dbg !1219
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, !dbg !1219
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1220, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0, !dbg !1221
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1222, !tbaa !603
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1223, !tbaa !594
  %role_none2 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 2, !dbg !1224
  %7 = load i32, i32* %role_none2, align 4, !dbg !1224, !tbaa !1119
  store i32 %7, i32* %retval, !dbg !1225
  br label %return, !dbg !1225

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1226, !tbaa !594
  %9 = load i32, i32* %tok.addr, align 4, !dbg !1227, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %8, i32 %9), !dbg !1228
  store i32 %call, i32* %retval, !dbg !1229
  br label %return, !dbg !1229

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %10 = load i32, i32* %retval, !dbg !1230
  ret i32 %10, !dbg !1230
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !246, metadata !598), !dbg !1231
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !247, metadata !598), !dbg !1232
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !248, metadata !598), !dbg !1233
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !249, metadata !598), !dbg !1234
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !250, metadata !598), !dbg !1235
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1236, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 17
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 17
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 11, i32* %retval, !dbg !1237
  br label %return, !dbg !1237

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1239, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 4, !dbg !1240
  %2 = load i32, i32* %documentEntity, align 4, !dbg !1240, !tbaa !609
  %tobool = icmp ne i32 %2, 0, !dbg !1241
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, !dbg !1241
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1242, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !1243
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1244, !tbaa !603
  store i32 15, i32* %retval, !dbg !1245
  br label %return, !dbg !1245

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1246, !tbaa !594
  %5 = load i32, i32* %tok.addr, align 4, !dbg !1247, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %4, i32 %5), !dbg !1248
  store i32 %call, i32* %retval, !dbg !1249
  br label %return, !dbg !1249

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %6 = load i32, i32* %retval, !dbg !1250
  ret i32 %6, !dbg !1250
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !253, metadata !598), !dbg !1251
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !254, metadata !598), !dbg !1252
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !255, metadata !598), !dbg !1253
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !256, metadata !598), !dbg !1254
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !257, metadata !598), !dbg !1255
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1256, !tbaa !620
  br label %NodeBlock.11

NodeBlock.11:                                     ; preds = %entry
  %Pivot.12 = icmp slt i32 %0, 26
  br i1 %Pivot.12, label %NodeBlock, label %NodeBlock.9

NodeBlock.9:                                      ; preds = %NodeBlock.11
  %Pivot.10 = icmp slt i32 %0, 33
  br i1 %Pivot.10, label %LeafBlock.3, label %NodeBlock.7

NodeBlock.7:                                      ; preds = %NodeBlock.9
  %Pivot.8 = icmp slt i32 %0, 34
  br i1 %Pivot.8, label %sw.bb, label %LeafBlock.5

LeafBlock.5:                                      ; preds = %NodeBlock.7
  %SwitchLeaf6 = icmp eq i32 %0, 34
  br i1 %SwitchLeaf6, label %sw.bb.1, label %NewDefault

LeafBlock.3:                                      ; preds = %NodeBlock.9
  %SwitchLeaf4 = icmp eq i32 %0, 26
  br i1 %SwitchLeaf4, label %sw.epilog, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock.11
  %Pivot = icmp slt i32 %0, 15
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 15
  br i1 %SwitchLeaf2, label %sw.bb.3, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, -4
  br i1 %SwitchLeaf, label %sw.bb.4, label %NewDefault

sw.bb:                                            ; preds = %NodeBlock.7
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1257, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1259
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @condSect0, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1260, !tbaa !603
  store i32 0, i32* %retval, !dbg !1261
  br label %return, !dbg !1261

sw.bb.1:                                          ; preds = %LeafBlock.5
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1262, !tbaa !594
  %includeLevel = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 3, !dbg !1264
  %3 = load i32, i32* %includeLevel, align 4, !dbg !1264, !tbaa !613
  %cmp = icmp eq i32 %3, 0, !dbg !1265
  br i1 %cmp, label %if.then, label %if.end, !dbg !1266

if.then:                                          ; preds = %sw.bb.1
  br label %sw.epilog, !dbg !1267

if.end:                                           ; preds = %sw.bb.1
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1268, !tbaa !594
  %includeLevel2 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 3, !dbg !1269
  %5 = load i32, i32* %includeLevel2, align 4, !dbg !1270, !tbaa !613
  %sub = sub i32 %5, 1, !dbg !1270
  store i32 %sub, i32* %includeLevel2, align 4, !dbg !1270, !tbaa !613
  store i32 0, i32* %retval, !dbg !1271
  br label %return, !dbg !1271

sw.bb.3:                                          ; preds = %LeafBlock.1
  store i32 0, i32* %retval, !dbg !1272
  br label %return, !dbg !1272

sw.bb.4:                                          ; preds = %LeafBlock
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1273, !tbaa !594
  %includeLevel5 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 3, !dbg !1275
  %7 = load i32, i32* %includeLevel5, align 4, !dbg !1275, !tbaa !613
  %tobool = icmp ne i32 %7, 0, !dbg !1273
  br i1 %tobool, label %if.then.6, label %if.end.7, !dbg !1276

if.then.6:                                        ; preds = %sw.bb.4
  br label %sw.epilog, !dbg !1277

if.end.7:                                         ; preds = %sw.bb.4
  store i32 0, i32* %retval, !dbg !1278
  br label %return, !dbg !1278

NewDefault:                                       ; preds = %LeafBlock.5, %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1279, !tbaa !594
  %9 = load i32, i32* %tok.addr, align 4, !dbg !1280, !tbaa !620
  %10 = load i8*, i8** %ptr.addr, align 8, !dbg !1281, !tbaa !594
  %11 = load i8*, i8** %end.addr, align 8, !dbg !1282, !tbaa !594
  %12 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1283, !tbaa !594
  %call = call i32 @internalSubset(%struct.prolog_state* %8, i32 %9, i8* %10, i8* %11, %struct.encoding* %12), !dbg !1284
  store i32 %call, i32* %retval, !dbg !1285
  br label %return, !dbg !1285

sw.epilog:                                        ; preds = %LeafBlock.3, %if.then.6, %if.then
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1286, !tbaa !594
  %14 = load i32, i32* %tok.addr, align 4, !dbg !1287, !tbaa !620
  %call8 = call i32 @common(%struct.prolog_state* %13, i32 %14), !dbg !1288
  store i32 %call8, i32* %retval, !dbg !1289
  br label %return, !dbg !1289

return:                                           ; preds = %sw.epilog, %sw.default, %if.end.7, %sw.bb.3, %if.end, %sw.bb
  %15 = load i32, i32* %retval, !dbg !1290
  ret i32 %15, !dbg !1290
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !260, metadata !598), !dbg !1291
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !261, metadata !598), !dbg !1292
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !262, metadata !598), !dbg !1293
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !263, metadata !598), !dbg !1294
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !264, metadata !598), !dbg !1295
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1296, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 18
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 0, i32* %retval, !dbg !1297
  br label %return, !dbg !1297

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1299, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !1301
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1301, !tbaa !647
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1302, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !1303, !tbaa !594
  %5 = load i8*, i8** %end.addr, align 8, !dbg !1304, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_INCLUDE, i32 0, i32 0)), !dbg !1305
  %tobool = icmp ne i32 %call, 0, !dbg !1305
  br i1 %tobool, label %if.then, label %if.end, !dbg !1306

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1307, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0, !dbg !1309
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @condSect1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1310, !tbaa !603
  store i32 0, i32* %retval, !dbg !1311
  br label %return, !dbg !1311

if.end:                                           ; preds = %sw.bb.1
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1312, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 3, !dbg !1314
  %8 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !1314, !tbaa !647
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1315, !tbaa !594
  %10 = load i8*, i8** %ptr.addr, align 8, !dbg !1316, !tbaa !594
  %11 = load i8*, i8** %end.addr, align 8, !dbg !1317, !tbaa !594
  %call3 = call i32 %8(%struct.encoding* %9, i8* %10, i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_IGNORE, i32 0, i32 0)), !dbg !1318
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1318
  br i1 %tobool4, label %if.then.5, label %if.end.7, !dbg !1319

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1320, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0, !dbg !1322
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @condSect2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !1323, !tbaa !603
  store i32 0, i32* %retval, !dbg !1324
  br label %return, !dbg !1324

if.end.7:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !1325

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %if.end.7
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1326, !tbaa !594
  %14 = load i32, i32* %tok.addr, align 4, !dbg !1327, !tbaa !620
  %call8 = call i32 @common(%struct.prolog_state* %13, i32 %14), !dbg !1328
  store i32 %call8, i32* %retval, !dbg !1329
  br label %return, !dbg !1329

return:                                           ; preds = %sw.epilog, %if.then.5, %if.then, %sw.bb
  %15 = load i32, i32* %retval, !dbg !1330
  ret i32 %15, !dbg !1330
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !267, metadata !598), !dbg !1331
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !268, metadata !598), !dbg !1332
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !269, metadata !598), !dbg !1333
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !270, metadata !598), !dbg !1334
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !271, metadata !598), !dbg !1335
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1336, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 25
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 25
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 0, i32* %retval, !dbg !1337
  br label %return, !dbg !1337

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1339, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1340
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1341, !tbaa !603
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1342, !tbaa !594
  %includeLevel = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 3, !dbg !1343
  %3 = load i32, i32* %includeLevel, align 4, !dbg !1344, !tbaa !613
  %add = add i32 %3, 1, !dbg !1344
  store i32 %add, i32* %includeLevel, align 4, !dbg !1344, !tbaa !613
  store i32 0, i32* %retval, !dbg !1345
  br label %return, !dbg !1345

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1346, !tbaa !594
  %5 = load i32, i32* %tok.addr, align 4, !dbg !1347, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %4, i32 %5), !dbg !1348
  store i32 %call, i32* %retval, !dbg !1349
  br label %return, !dbg !1349

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %6 = load i32, i32* %retval, !dbg !1350
  ret i32 %6, !dbg !1350
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !274, metadata !598), !dbg !1351
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !275, metadata !598), !dbg !1352
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !276, metadata !598), !dbg !1353
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !277, metadata !598), !dbg !1354
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !278, metadata !598), !dbg !1355
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1356, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 25
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 25
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 0, i32* %retval, !dbg !1357
  br label %return, !dbg !1357

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1359, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1360
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1361, !tbaa !603
  store i32 58, i32* %retval, !dbg !1362
  br label %return, !dbg !1362

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1363, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1364, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1365
  store i32 %call, i32* %retval, !dbg !1366
  br label %return, !dbg !1366

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1367
  ret i32 %4, !dbg !1367
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !302, metadata !598), !dbg !1368
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !303, metadata !598), !dbg !1369
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !304, metadata !598), !dbg !1370
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !305, metadata !598), !dbg !1371
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !306, metadata !598), !dbg !1372
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1373, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 27
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 27
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 11, i32* %retval, !dbg !1374
  br label %return, !dbg !1374

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1376, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1377
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity5, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1378, !tbaa !603
  store i32 13, i32* %retval, !dbg !1379
  br label %return, !dbg !1379

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1380, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1381, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1382
  store i32 %call, i32* %retval, !dbg !1383
  br label %return, !dbg !1383

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1384
  ret i32 %4, !dbg !1384
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !323, metadata !598), !dbg !1385
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !324, metadata !598), !dbg !1386
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !325, metadata !598), !dbg !1387
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !326, metadata !598), !dbg !1388
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !327, metadata !598), !dbg !1389
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1390, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 27
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 27
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 11, i32* %retval, !dbg !1391
  br label %return, !dbg !1391

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1393, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1394
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1395, !tbaa !603
  store i32 14, i32* %retval, !dbg !1396
  br label %return, !dbg !1396

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1397, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1398, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1399
  store i32 %call, i32* %retval, !dbg !1400
  br label %return, !dbg !1400

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1401
  ret i32 %4, !dbg !1401
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !309, metadata !598), !dbg !1402
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !310, metadata !598), !dbg !1403
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !311, metadata !598), !dbg !1404
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !312, metadata !598), !dbg !1405
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !313, metadata !598), !dbg !1406
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1407, !tbaa !620
  br label %NodeBlock.3

NodeBlock.3:                                      ; preds = %entry
  %Pivot.4 = icmp slt i32 %0, 17
  br i1 %Pivot.4, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.3
  %Pivot = icmp slt i32 %0, 18
  br i1 %Pivot, label %sw.bb.1, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.2, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.3
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 11, i32* %retval, !dbg !1408
  br label %return, !dbg !1408

sw.bb.1:                                          ; preds = %NodeBlock
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1410, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 4, !dbg !1411
  %2 = load i32, i32* %documentEntity, align 4, !dbg !1411, !tbaa !609
  %tobool = icmp ne i32 %2, 0, !dbg !1412
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, !dbg !1412
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1413, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !1414
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1415, !tbaa !603
  store i32 15, i32* %retval, !dbg !1416
  br label %return, !dbg !1416

sw.bb.2:                                          ; preds = %LeafBlock.1
  %4 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1417, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %4, i32 0, i32 3, !dbg !1419
  %5 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1419, !tbaa !647
  %6 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1420, !tbaa !594
  %7 = load i8*, i8** %ptr.addr, align 8, !dbg !1421, !tbaa !594
  %8 = load i8*, i8** %end.addr, align 8, !dbg !1422, !tbaa !594
  %call = call i32 %5(%struct.encoding* %6, i8* %7, i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @KW_NDATA, i32 0, i32 0)), !dbg !1423
  %tobool3 = icmp ne i32 %call, 0, !dbg !1423
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1424

if.then:                                          ; preds = %sw.bb.2
  %9 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1425, !tbaa !594
  %handler4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %9, i32 0, i32 0, !dbg !1427
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @entity6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler4, align 8, !dbg !1428, !tbaa !603
  store i32 11, i32* %retval, !dbg !1429
  br label %return, !dbg !1429

if.end:                                           ; preds = %sw.bb.2
  br label %sw.epilog, !dbg !1430

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %if.end
  %10 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1431, !tbaa !594
  %11 = load i32, i32* %tok.addr, align 4, !dbg !1432, !tbaa !620
  %call5 = call i32 @common(%struct.prolog_state* %10, i32 %11), !dbg !1433
  store i32 %call5, i32* %retval, !dbg !1434
  br label %return, !dbg !1434

return:                                           ; preds = %sw.epilog, %if.then, %sw.bb.1, %sw.bb
  %12 = load i32, i32* %retval, !dbg !1435
  ret i32 %12, !dbg !1435
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !316, metadata !598), !dbg !1436
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !317, metadata !598), !dbg !1437
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !318, metadata !598), !dbg !1438
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !319, metadata !598), !dbg !1439
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !320, metadata !598), !dbg !1440
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1441, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 18
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 11, i32* %retval, !dbg !1442
  br label %return, !dbg !1442

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1444, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1445
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1446, !tbaa !603
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1447, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2, !dbg !1448
  store i32 11, i32* %role_none, align 4, !dbg !1449, !tbaa !1119
  store i32 16, i32* %retval, !dbg !1450
  br label %return, !dbg !1450

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1451, !tbaa !594
  %4 = load i32, i32* %tok.addr, align 4, !dbg !1452, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4), !dbg !1453
  store i32 %call, i32* %retval, !dbg !1454
  br label %return, !dbg !1454

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval, !dbg !1455
  ret i32 %5, !dbg !1455
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !337, metadata !598), !dbg !1456
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !338, metadata !598), !dbg !1457
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !339, metadata !598), !dbg !1458
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !340, metadata !598), !dbg !1459
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !341, metadata !598), !dbg !1460
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1461, !tbaa !620
  br label %NodeBlock.7

NodeBlock.7:                                      ; preds = %entry
  %Pivot.8 = icmp slt i32 %0, 18
  br i1 %Pivot.8, label %NodeBlock, label %NodeBlock.5

NodeBlock.5:                                      ; preds = %NodeBlock.7
  %Pivot.6 = icmp slt i32 %0, 41
  br i1 %Pivot.6, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock.5
  %SwitchLeaf4 = icmp eq i32 %0, 41
  br i1 %SwitchLeaf4, label %sw.bb.2, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock.5
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.2, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock.7
  %Pivot = icmp slt i32 %0, 17
  br i1 %Pivot, label %LeafBlock, label %sw.bb.1

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 33, i32* %retval, !dbg !1462
  br label %return, !dbg !1462

sw.bb.1:                                          ; preds = %NodeBlock
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1464, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 4, !dbg !1465
  %2 = load i32, i32* %documentEntity, align 4, !dbg !1465, !tbaa !609
  %tobool = icmp ne i32 %2, 0, !dbg !1466
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, !dbg !1466
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1467, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !1468
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1469, !tbaa !603
  store i32 33, i32* %retval, !dbg !1470
  br label %return, !dbg !1470

sw.bb.2:                                          ; preds = %LeafBlock.3, %LeafBlock.1
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1471, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 0, !dbg !1472
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !1473, !tbaa !603
  store i32 22, i32* %retval, !dbg !1474
  br label %return, !dbg !1474

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1475, !tbaa !594
  %6 = load i32, i32* %tok.addr, align 4, !dbg !1476, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %5, i32 %6), !dbg !1477
  store i32 %call, i32* %retval, !dbg !1478
  br label %return, !dbg !1478

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %7 = load i32, i32* %retval, !dbg !1479
  ret i32 %7, !dbg !1479
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !344, metadata !598), !dbg !1480
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !345, metadata !598), !dbg !1481
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !346, metadata !598), !dbg !1482
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !347, metadata !598), !dbg !1483
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !348, metadata !598), !dbg !1484
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1485, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 18
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 23
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 23
  br i1 %SwitchLeaf4, label %sw.bb.8, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 33, i32* %retval, !dbg !1486
  br label %return, !dbg !1486

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = bitcast i32* %i to i8*, !dbg !1487
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1487
  call void @llvm.dbg.declare(metadata i32* %i, metadata !349, metadata !598), !dbg !1488
  store i32 0, i32* %i, align 4, !dbg !1489, !tbaa !620
  br label %for.cond, !dbg !1491

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %2 = load i32, i32* %i, align 4, !dbg !1492, !tbaa !620
  %cmp = icmp slt i32 %2, 8, !dbg !1496
  br i1 %cmp, label %for.body, label %for.end, !dbg !1497

for.body:                                         ; preds = %for.cond
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1498, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %3, i32 0, i32 3, !dbg !1500
  %4 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1500, !tbaa !647
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1501, !tbaa !594
  %6 = load i8*, i8** %ptr.addr, align 8, !dbg !1502, !tbaa !594
  %7 = load i8*, i8** %end.addr, align 8, !dbg !1503, !tbaa !594
  %8 = load i32, i32* %i, align 4, !dbg !1504, !tbaa !620
  %idxprom = sext i32 %8 to i64, !dbg !1505
  %arrayidx = getelementptr [8 x i8*], [8 x i8*]* @attlist2.types, i32 0, i64 %idxprom, !dbg !1505
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !1505, !tbaa !594
  %call = call i32 %4(%struct.encoding* %5, i8* %6, i8* %7, i8* %9), !dbg !1506
  %tobool = icmp ne i32 %call, 0, !dbg !1506
  br i1 %tobool, label %if.then, label %if.end, !dbg !1507

if.then:                                          ; preds = %for.body
  %10 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1508, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %10, i32 0, i32 0, !dbg !1510
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist8, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1511, !tbaa !603
  %11 = load i32, i32* %i, align 4, !dbg !1512, !tbaa !620
  %add = add i32 23, %11, !dbg !1513
  store i32 %add, i32* %retval, !dbg !1514
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1514

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1515

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !1517, !tbaa !620
  %inc = add i32 %12, 1, !dbg !1517
  store i32 %inc, i32* %i, align 4, !dbg !1517, !tbaa !620
  br label %for.cond, !dbg !1518

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !1519
  br label %cleanup, !dbg !1519

cleanup:                                          ; preds = %for.end, %if.then
  %13 = bitcast i32* %i to i8*, !dbg !1520
  call void @llvm.lifetime.end(i64 4, i8* %13) #2, !dbg !1520
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.8

LeafBlock.8:                                      ; preds = %cleanup
  %SwitchLeaf9 = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf9, label %return, label %NewDefault.7

NewDefault.7:                                     ; preds = %LeafBlock.8
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault.7
  %14 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1522, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %14, i32 0, i32 3, !dbg !1524
  %15 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !1524, !tbaa !647
  %16 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1525, !tbaa !594
  %17 = load i8*, i8** %ptr.addr, align 8, !dbg !1526, !tbaa !594
  %18 = load i8*, i8** %end.addr, align 8, !dbg !1527, !tbaa !594
  %call3 = call i32 %15(%struct.encoding* %16, i8* %17, i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @KW_NOTATION, i32 0, i32 0)), !dbg !1528
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1528
  br i1 %tobool4, label %if.then.5, label %if.end.7, !dbg !1529

if.then.5:                                        ; preds = %cleanup.cont
  %19 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1530, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %19, i32 0, i32 0, !dbg !1532
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist5, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !1533, !tbaa !603
  store i32 33, i32* %retval, !dbg !1534
  br label %return, !dbg !1534

if.end.7:                                         ; preds = %cleanup.cont
  br label %sw.epilog, !dbg !1535

sw.bb.8:                                          ; preds = %LeafBlock.3
  %20 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1536, !tbaa !594
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %20, i32 0, i32 0, !dbg !1537
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8, !dbg !1538, !tbaa !603
  store i32 33, i32* %retval, !dbg !1539
  br label %return, !dbg !1539

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %if.end.7
  %21 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1540, !tbaa !594
  %22 = load i32, i32* %tok.addr, align 4, !dbg !1541, !tbaa !620
  %call10 = call i32 @common(%struct.prolog_state* %21, i32 %22), !dbg !1542
  store i32 %call10, i32* %retval, !dbg !1543
  br label %return, !dbg !1543

return:                                           ; preds = %LeafBlock.8, %sw.epilog, %sw.bb.8, %if.then.5, %sw.bb
  %23 = load i32, i32* %retval, !dbg !1544
  ret i32 %23, !dbg !1544
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !354, metadata !598), !dbg !1545
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !355, metadata !598), !dbg !1546
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !356, metadata !598), !dbg !1547
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !357, metadata !598), !dbg !1548
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !358, metadata !598), !dbg !1549
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1550, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 20
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 27
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 27
  br i1 %SwitchLeaf4, label %sw.bb.20, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 20
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 33, i32* %retval, !dbg !1551
  br label %return, !dbg !1551

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1553, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !1555
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1555, !tbaa !647
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1556, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !1557, !tbaa !594
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1558, !tbaa !594
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 13, !dbg !1559
  %6 = load i32, i32* %minBytesPerChar, align 4, !dbg !1559, !tbaa !653
  %idx.ext = sext i32 %6 to i64, !dbg !1560
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !1560
  %7 = load i8*, i8** %end.addr, align 8, !dbg !1561, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %add.ptr, i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @KW_IMPLIED, i32 0, i32 0)), !dbg !1562
  %tobool = icmp ne i32 %call, 0, !dbg !1562
  br i1 %tobool, label %if.then, label %if.end, !dbg !1563

if.then:                                          ; preds = %sw.bb.1
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1564, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0, !dbg !1566
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1567, !tbaa !603
  store i32 35, i32* %retval, !dbg !1568
  br label %return, !dbg !1568

if.end:                                           ; preds = %sw.bb.1
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1569, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %9, i32 0, i32 3, !dbg !1571
  %10 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !1571, !tbaa !647
  %11 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1572, !tbaa !594
  %12 = load i8*, i8** %ptr.addr, align 8, !dbg !1573, !tbaa !594
  %13 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1574, !tbaa !594
  %minBytesPerChar3 = getelementptr inbounds %struct.encoding, %struct.encoding* %13, i32 0, i32 13, !dbg !1575
  %14 = load i32, i32* %minBytesPerChar3, align 4, !dbg !1575, !tbaa !653
  %idx.ext4 = sext i32 %14 to i64, !dbg !1576
  %add.ptr5 = getelementptr i8, i8* %12, i64 %idx.ext4, !dbg !1576
  %15 = load i8*, i8** %end.addr, align 8, !dbg !1577, !tbaa !594
  %call6 = call i32 %10(%struct.encoding* %11, i8* %add.ptr5, i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @KW_REQUIRED, i32 0, i32 0)), !dbg !1578
  %tobool7 = icmp ne i32 %call6, 0, !dbg !1578
  br i1 %tobool7, label %if.then.8, label %if.end.10, !dbg !1579

if.then.8:                                        ; preds = %if.end
  %16 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1580, !tbaa !594
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %16, i32 0, i32 0, !dbg !1582
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8, !dbg !1583, !tbaa !603
  store i32 36, i32* %retval, !dbg !1584
  br label %return, !dbg !1584

if.end.10:                                        ; preds = %if.end
  %17 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1585, !tbaa !594
  %nameMatchesAscii11 = getelementptr inbounds %struct.encoding, %struct.encoding* %17, i32 0, i32 3, !dbg !1587
  %18 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii11, align 8, !dbg !1587, !tbaa !647
  %19 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1588, !tbaa !594
  %20 = load i8*, i8** %ptr.addr, align 8, !dbg !1589, !tbaa !594
  %21 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1590, !tbaa !594
  %minBytesPerChar12 = getelementptr inbounds %struct.encoding, %struct.encoding* %21, i32 0, i32 13, !dbg !1591
  %22 = load i32, i32* %minBytesPerChar12, align 4, !dbg !1591, !tbaa !653
  %idx.ext13 = sext i32 %22 to i64, !dbg !1592
  %add.ptr14 = getelementptr i8, i8* %20, i64 %idx.ext13, !dbg !1592
  %23 = load i8*, i8** %end.addr, align 8, !dbg !1593, !tbaa !594
  %call15 = call i32 %18(%struct.encoding* %19, i8* %add.ptr14, i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @KW_FIXED, i32 0, i32 0)), !dbg !1594
  %tobool16 = icmp ne i32 %call15, 0, !dbg !1594
  br i1 %tobool16, label %if.then.17, label %if.end.19, !dbg !1595

if.then.17:                                       ; preds = %if.end.10
  %24 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1596, !tbaa !594
  %handler18 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %24, i32 0, i32 0, !dbg !1598
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist9, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler18, align 8, !dbg !1599, !tbaa !603
  store i32 33, i32* %retval, !dbg !1600
  br label %return, !dbg !1600

if.end.19:                                        ; preds = %if.end.10
  br label %sw.epilog, !dbg !1601

sw.bb.20:                                         ; preds = %LeafBlock.3
  %25 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1602, !tbaa !594
  %handler21 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %25, i32 0, i32 0, !dbg !1603
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler21, align 8, !dbg !1604, !tbaa !603
  store i32 37, i32* %retval, !dbg !1605
  br label %return, !dbg !1605

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %if.end.19
  %26 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1606, !tbaa !594
  %27 = load i32, i32* %tok.addr, align 4, !dbg !1607, !tbaa !620
  %call22 = call i32 @common(%struct.prolog_state* %26, i32 %27), !dbg !1608
  store i32 %call22, i32* %retval, !dbg !1609
  br label %return, !dbg !1609

return:                                           ; preds = %sw.epilog, %sw.bb.20, %if.then.17, %if.then.8, %if.then, %sw.bb
  %28 = load i32, i32* %retval, !dbg !1610
  ret i32 %28, !dbg !1610
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !368, metadata !598), !dbg !1611
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !369, metadata !598), !dbg !1612
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !370, metadata !598), !dbg !1613
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !371, metadata !598), !dbg !1614
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !372, metadata !598), !dbg !1615
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1616, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 23
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 23
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 33, i32* %retval, !dbg !1617
  br label %return, !dbg !1617

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1619, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1620
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1621, !tbaa !603
  store i32 33, i32* %retval, !dbg !1622
  br label %return, !dbg !1622

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1623, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1624, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1625
  store i32 %call, i32* %retval, !dbg !1626
  br label %return, !dbg !1626

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1627
  ret i32 %4, !dbg !1627
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !389, metadata !598), !dbg !1628
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !390, metadata !598), !dbg !1629
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !391, metadata !598), !dbg !1630
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !392, metadata !598), !dbg !1631
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !393, metadata !598), !dbg !1632
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1633, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 18
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 41
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 41
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %.off = add i32 %0, -18
  %SwitchLeaf2 = icmp ule i32 %.off, 1
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 33, i32* %retval, !dbg !1634
  br label %return, !dbg !1634

sw.bb.1:                                          ; preds = %LeafBlock.3, %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1636, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1637
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1638, !tbaa !603
  store i32 31, i32* %retval, !dbg !1639
  br label %return, !dbg !1639

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1640, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1641, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1642
  store i32 %call, i32* %retval, !dbg !1643
  br label %return, !dbg !1643

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1644
  ret i32 %4, !dbg !1644
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !361, metadata !598), !dbg !1645
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !362, metadata !598), !dbg !1646
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !363, metadata !598), !dbg !1647
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !364, metadata !598), !dbg !1648
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !365, metadata !598), !dbg !1649
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1650, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 27
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 27
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 33, i32* %retval, !dbg !1651
  br label %return, !dbg !1651

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1653, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1654
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist1, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1655, !tbaa !603
  store i32 38, i32* %retval, !dbg !1656
  br label %return, !dbg !1656

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1657, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1658, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1659
  store i32 %call, i32* %retval, !dbg !1660
  br label %return, !dbg !1660

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1661
  ret i32 %4, !dbg !1661
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !375, metadata !598), !dbg !1662
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !376, metadata !598), !dbg !1663
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !377, metadata !598), !dbg !1664
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !378, metadata !598), !dbg !1665
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !379, metadata !598), !dbg !1666
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1667, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 18
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 33, i32* %retval, !dbg !1668
  br label %return, !dbg !1668

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1670, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1671
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1672, !tbaa !603
  store i32 32, i32* %retval, !dbg !1673
  br label %return, !dbg !1673

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1674, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1675, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1676
  store i32 %call, i32* %retval, !dbg !1677
  br label %return, !dbg !1677

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1678
  ret i32 %4, !dbg !1678
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !382, metadata !598), !dbg !1679
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !383, metadata !598), !dbg !1680
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !384, metadata !598), !dbg !1681
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !385, metadata !598), !dbg !1682
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !386, metadata !598), !dbg !1683
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1684, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 21
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 24
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 24
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 21
  br i1 %SwitchLeaf2, label %sw.bb.2, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 33, i32* %retval, !dbg !1685
  br label %return, !dbg !1685

sw.bb.1:                                          ; preds = %LeafBlock.3
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1687, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1688
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist8, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1689, !tbaa !603
  store i32 33, i32* %retval, !dbg !1690
  br label %return, !dbg !1690

sw.bb.2:                                          ; preds = %LeafBlock.1
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1691, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0, !dbg !1692
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !1693, !tbaa !603
  store i32 33, i32* %retval, !dbg !1694
  br label %return, !dbg !1694

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1695, !tbaa !594
  %4 = load i32, i32* %tok.addr, align 4, !dbg !1696, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4), !dbg !1697
  store i32 %call, i32* %retval, !dbg !1698
  br label %return, !dbg !1698

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval, !dbg !1699
  ret i32 %5, !dbg !1699
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !396, metadata !598), !dbg !1700
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !397, metadata !598), !dbg !1701
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !398, metadata !598), !dbg !1702
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !399, metadata !598), !dbg !1703
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !400, metadata !598), !dbg !1704
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1705, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 21
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 24
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 24
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 21
  br i1 %SwitchLeaf2, label %sw.bb.2, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 33, i32* %retval, !dbg !1706
  br label %return, !dbg !1706

sw.bb.1:                                          ; preds = %LeafBlock.3
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1708, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1709
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist8, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1710, !tbaa !603
  store i32 33, i32* %retval, !dbg !1711
  br label %return, !dbg !1711

sw.bb.2:                                          ; preds = %LeafBlock.1
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1712, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0, !dbg !1713
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @attlist3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !1714, !tbaa !603
  store i32 33, i32* %retval, !dbg !1715
  br label %return, !dbg !1715

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1716, !tbaa !594
  %4 = load i32, i32* %tok.addr, align 4, !dbg !1717, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4), !dbg !1718
  store i32 %call, i32* %retval, !dbg !1719
  br label %return, !dbg !1719

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval, !dbg !1720
  ret i32 %5, !dbg !1720
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !410, metadata !598), !dbg !1721
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !411, metadata !598), !dbg !1722
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !412, metadata !598), !dbg !1723
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !413, metadata !598), !dbg !1724
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !414, metadata !598), !dbg !1725
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1726, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 18
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 23
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 23
  br i1 %SwitchLeaf4, label %sw.bb.9, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 39, i32* %retval, !dbg !1727
  br label %return, !dbg !1727

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1729, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !1731
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1731, !tbaa !647
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1732, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !1733, !tbaa !594
  %5 = load i8*, i8** %end.addr, align 8, !dbg !1734, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @KW_EMPTY, i32 0, i32 0)), !dbg !1735
  %tobool = icmp ne i32 %call, 0, !dbg !1735
  br i1 %tobool, label %if.then, label %if.end, !dbg !1736

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1737, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0, !dbg !1739
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1740, !tbaa !603
  %7 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1741, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %7, i32 0, i32 2, !dbg !1742
  store i32 39, i32* %role_none, align 4, !dbg !1743, !tbaa !1119
  store i32 42, i32* %retval, !dbg !1744
  br label %return, !dbg !1744

if.end:                                           ; preds = %sw.bb.1
  %8 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1745, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %8, i32 0, i32 3, !dbg !1747
  %9 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !1747, !tbaa !647
  %10 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1748, !tbaa !594
  %11 = load i8*, i8** %ptr.addr, align 8, !dbg !1749, !tbaa !594
  %12 = load i8*, i8** %end.addr, align 8, !dbg !1750, !tbaa !594
  %call3 = call i32 %9(%struct.encoding* %10, i8* %11, i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @KW_ANY, i32 0, i32 0)), !dbg !1751
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1751
  br i1 %tobool4, label %if.then.5, label %if.end.8, !dbg !1752

if.then.5:                                        ; preds = %if.end
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1753, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0, !dbg !1755
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !1756, !tbaa !603
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1757, !tbaa !594
  %role_none7 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 2, !dbg !1758
  store i32 39, i32* %role_none7, align 4, !dbg !1759, !tbaa !1119
  store i32 41, i32* %retval, !dbg !1760
  br label %return, !dbg !1760

if.end.8:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !1761

sw.bb.9:                                          ; preds = %LeafBlock.3
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1762, !tbaa !594
  %handler10 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %15, i32 0, i32 0, !dbg !1763
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler10, align 8, !dbg !1764, !tbaa !603
  %16 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1765, !tbaa !594
  %level = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %16, i32 0, i32 1, !dbg !1766
  store i32 1, i32* %level, align 4, !dbg !1767, !tbaa !1768
  store i32 44, i32* %retval, !dbg !1769
  br label %return, !dbg !1769

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %if.end.8
  %17 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1770, !tbaa !594
  %18 = load i32, i32* %tok.addr, align 4, !dbg !1771, !tbaa !620
  %call11 = call i32 @common(%struct.prolog_state* %17, i32 %18), !dbg !1772
  store i32 %call11, i32* %retval, !dbg !1773
  br label %return, !dbg !1773

return:                                           ; preds = %sw.epilog, %sw.bb.9, %if.then.5, %if.then, %sw.bb
  %19 = load i32, i32* %retval, !dbg !1774
  ret i32 %19, !dbg !1774
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !417, metadata !598), !dbg !1775
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !418, metadata !598), !dbg !1776
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !419, metadata !598), !dbg !1777
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !420, metadata !598), !dbg !1778
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !421, metadata !598), !dbg !1779
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1780, !tbaa !620
  br label %NodeBlock.21

NodeBlock.21:                                     ; preds = %entry
  %Pivot.22 = icmp slt i32 %0, 30
  br i1 %Pivot.22, label %NodeBlock.9, label %NodeBlock.19

NodeBlock.19:                                     ; preds = %NodeBlock.21
  %Pivot.20 = icmp slt i32 %0, 32
  br i1 %Pivot.20, label %NodeBlock.11, label %NodeBlock.17

NodeBlock.17:                                     ; preds = %NodeBlock.19
  %Pivot.18 = icmp slt i32 %0, 41
  br i1 %Pivot.18, label %LeafBlock.13, label %LeafBlock.15

LeafBlock.15:                                     ; preds = %NodeBlock.17
  %SwitchLeaf16 = icmp eq i32 %0, 41
  br i1 %SwitchLeaf16, label %sw.bb.4, label %NewDefault

LeafBlock.13:                                     ; preds = %NodeBlock.17
  %SwitchLeaf14 = icmp eq i32 %0, 32
  br i1 %SwitchLeaf14, label %sw.bb.10, label %NewDefault

NodeBlock.11:                                     ; preds = %NodeBlock.19
  %Pivot.12 = icmp slt i32 %0, 31
  br i1 %Pivot.12, label %sw.bb.6, label %sw.bb.8

NodeBlock.9:                                      ; preds = %NodeBlock.21
  %Pivot.10 = icmp slt i32 %0, 20
  br i1 %Pivot.10, label %NodeBlock, label %NodeBlock.7

NodeBlock.7:                                      ; preds = %NodeBlock.9
  %Pivot.8 = icmp slt i32 %0, 23
  br i1 %Pivot.8, label %LeafBlock.3, label %LeafBlock.5

LeafBlock.5:                                      ; preds = %NodeBlock.7
  %SwitchLeaf6 = icmp eq i32 %0, 23
  br i1 %SwitchLeaf6, label %sw.bb.2, label %NewDefault

LeafBlock.3:                                      ; preds = %NodeBlock.7
  %SwitchLeaf4 = icmp eq i32 %0, 20
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock.9
  %Pivot = icmp slt i32 %0, 18
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.4, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 39, i32* %retval, !dbg !1781
  br label %return, !dbg !1781

sw.bb.1:                                          ; preds = %LeafBlock.3
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1783, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !1785
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !1785, !tbaa !647
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1786, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !1787, !tbaa !594
  %5 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !1788, !tbaa !594
  %minBytesPerChar = getelementptr inbounds %struct.encoding, %struct.encoding* %5, i32 0, i32 13, !dbg !1789
  %6 = load i32, i32* %minBytesPerChar, align 4, !dbg !1789, !tbaa !653
  %idx.ext = sext i32 %6 to i64, !dbg !1790
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !1790
  %7 = load i8*, i8** %end.addr, align 8, !dbg !1791, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %add.ptr, i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PCDATA, i32 0, i32 0)), !dbg !1792
  %tobool = icmp ne i32 %call, 0, !dbg !1792
  br i1 %tobool, label %if.then, label %if.end, !dbg !1793

if.then:                                          ; preds = %sw.bb.1
  %8 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1794, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %8, i32 0, i32 0, !dbg !1796
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1797, !tbaa !603
  store i32 43, i32* %retval, !dbg !1798
  br label %return, !dbg !1798

if.end:                                           ; preds = %sw.bb.1
  br label %sw.epilog, !dbg !1799

sw.bb.2:                                          ; preds = %LeafBlock.5
  %9 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1800, !tbaa !594
  %level = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %9, i32 0, i32 1, !dbg !1801
  store i32 2, i32* %level, align 4, !dbg !1802, !tbaa !1768
  %10 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1803, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %10, i32 0, i32 0, !dbg !1804
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !1805, !tbaa !603
  store i32 44, i32* %retval, !dbg !1806
  br label %return, !dbg !1806

sw.bb.4:                                          ; preds = %LeafBlock.15, %LeafBlock.1
  %11 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1807, !tbaa !594
  %handler5 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %11, i32 0, i32 0, !dbg !1808
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler5, align 8, !dbg !1809, !tbaa !603
  store i32 51, i32* %retval, !dbg !1810
  br label %return, !dbg !1810

sw.bb.6:                                          ; preds = %NodeBlock.11
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1811, !tbaa !594
  %handler7 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0, !dbg !1812
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler7, align 8, !dbg !1813, !tbaa !603
  store i32 53, i32* %retval, !dbg !1814
  br label %return, !dbg !1814

sw.bb.8:                                          ; preds = %NodeBlock.11
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1815, !tbaa !594
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 0, !dbg !1816
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8, !dbg !1817, !tbaa !603
  store i32 52, i32* %retval, !dbg !1818
  br label %return, !dbg !1818

sw.bb.10:                                         ; preds = %LeafBlock.13
  %14 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1819, !tbaa !594
  %handler11 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %14, i32 0, i32 0, !dbg !1820
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler11, align 8, !dbg !1821, !tbaa !603
  store i32 54, i32* %retval, !dbg !1822
  br label %return, !dbg !1822

NewDefault:                                       ; preds = %LeafBlock.15, %LeafBlock.13, %LeafBlock.5, %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %if.end
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1823, !tbaa !594
  %16 = load i32, i32* %tok.addr, align 4, !dbg !1824, !tbaa !620
  %call12 = call i32 @common(%struct.prolog_state* %15, i32 %16), !dbg !1825
  store i32 %call12, i32* %retval, !dbg !1826
  br label %return, !dbg !1826

return:                                           ; preds = %sw.epilog, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.2, %if.then, %sw.bb
  %17 = load i32, i32* %retval, !dbg !1827
  ret i32 %17, !dbg !1827
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !424, metadata !598), !dbg !1828
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !425, metadata !598), !dbg !1829
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !426, metadata !598), !dbg !1830
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !427, metadata !598), !dbg !1831
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !428, metadata !598), !dbg !1832
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1833, !tbaa !620
  br label %NodeBlock.9

NodeBlock.9:                                      ; preds = %entry
  %Pivot.10 = icmp slt i32 %0, 24
  br i1 %Pivot.10, label %NodeBlock, label %NodeBlock.7

NodeBlock.7:                                      ; preds = %NodeBlock.9
  %Pivot.8 = icmp slt i32 %0, 36
  br i1 %Pivot.8, label %LeafBlock.3, label %LeafBlock.5

LeafBlock.5:                                      ; preds = %NodeBlock.7
  %SwitchLeaf6 = icmp eq i32 %0, 36
  br i1 %SwitchLeaf6, label %sw.bb.2, label %NewDefault

LeafBlock.3:                                      ; preds = %NodeBlock.7
  %SwitchLeaf4 = icmp eq i32 %0, 24
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock.9
  %Pivot = icmp slt i32 %0, 21
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 21
  br i1 %SwitchLeaf2, label %sw.bb.5, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 39, i32* %retval, !dbg !1834
  br label %return, !dbg !1834

sw.bb.1:                                          ; preds = %LeafBlock.3
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1836, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1837
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1838, !tbaa !603
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1839, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2, !dbg !1840
  store i32 39, i32* %role_none, align 4, !dbg !1841, !tbaa !1119
  store i32 45, i32* %retval, !dbg !1842
  br label %return, !dbg !1842

sw.bb.2:                                          ; preds = %LeafBlock.5
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1843, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !1844
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !1845, !tbaa !603
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1846, !tbaa !594
  %role_none4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 2, !dbg !1847
  store i32 39, i32* %role_none4, align 4, !dbg !1848, !tbaa !1119
  store i32 46, i32* %retval, !dbg !1849
  br label %return, !dbg !1849

sw.bb.5:                                          ; preds = %LeafBlock.1
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1850, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0, !dbg !1851
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !1852, !tbaa !603
  store i32 39, i32* %retval, !dbg !1853
  br label %return, !dbg !1853

NewDefault:                                       ; preds = %LeafBlock.5, %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1854, !tbaa !594
  %7 = load i32, i32* %tok.addr, align 4, !dbg !1855, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %6, i32 %7), !dbg !1856
  store i32 %call, i32* %retval, !dbg !1857
  br label %return, !dbg !1857

return:                                           ; preds = %sw.epilog, %sw.bb.5, %sw.bb.2, %sw.bb.1, %sw.bb
  %8 = load i32, i32* %retval, !dbg !1858
  ret i32 %8, !dbg !1858
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !445, metadata !598), !dbg !1859
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !446, metadata !598), !dbg !1860
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !447, metadata !598), !dbg !1861
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !448, metadata !598), !dbg !1862
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !449, metadata !598), !dbg !1863
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1864, !tbaa !620
  br label %NodeBlock.17

NodeBlock.17:                                     ; preds = %entry
  %Pivot.18 = icmp slt i32 %0, 30
  br i1 %Pivot.18, label %NodeBlock.5, label %NodeBlock.15

NodeBlock.15:                                     ; preds = %NodeBlock.17
  %Pivot.16 = icmp slt i32 %0, 32
  br i1 %Pivot.16, label %NodeBlock.7, label %NodeBlock.13

NodeBlock.13:                                     ; preds = %NodeBlock.15
  %Pivot.14 = icmp slt i32 %0, 41
  br i1 %Pivot.14, label %LeafBlock.9, label %LeafBlock.11

LeafBlock.11:                                     ; preds = %NodeBlock.13
  %SwitchLeaf12 = icmp eq i32 %0, 41
  br i1 %SwitchLeaf12, label %sw.bb.2, label %NewDefault

LeafBlock.9:                                      ; preds = %NodeBlock.13
  %SwitchLeaf10 = icmp eq i32 %0, 32
  br i1 %SwitchLeaf10, label %sw.bb.7, label %NewDefault

NodeBlock.7:                                      ; preds = %NodeBlock.15
  %Pivot.8 = icmp slt i32 %0, 31
  br i1 %Pivot.8, label %sw.bb.3, label %sw.bb.5

NodeBlock.5:                                      ; preds = %NodeBlock.17
  %Pivot.6 = icmp slt i32 %0, 18
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 23
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 23
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.2, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 39, i32* %retval, !dbg !1865
  br label %return, !dbg !1865

sw.bb.1:                                          ; preds = %LeafBlock.3
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1867, !tbaa !594
  %level = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 1, !dbg !1868
  %2 = load i32, i32* %level, align 4, !dbg !1869, !tbaa !1768
  %add = add i32 %2, 1, !dbg !1869
  store i32 %add, i32* %level, align 4, !dbg !1869, !tbaa !1768
  store i32 44, i32* %retval, !dbg !1870
  br label %return, !dbg !1870

sw.bb.2:                                          ; preds = %LeafBlock.11, %LeafBlock.1
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1871, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !1872
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1873, !tbaa !603
  store i32 51, i32* %retval, !dbg !1874
  br label %return, !dbg !1874

sw.bb.3:                                          ; preds = %NodeBlock.7
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1875, !tbaa !594
  %handler4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %4, i32 0, i32 0, !dbg !1876
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler4, align 8, !dbg !1877, !tbaa !603
  store i32 53, i32* %retval, !dbg !1878
  br label %return, !dbg !1878

sw.bb.5:                                          ; preds = %NodeBlock.7
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1879, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0, !dbg !1880
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !1881, !tbaa !603
  store i32 52, i32* %retval, !dbg !1882
  br label %return, !dbg !1882

sw.bb.7:                                          ; preds = %LeafBlock.9
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1883, !tbaa !594
  %handler8 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0, !dbg !1884
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element7, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler8, align 8, !dbg !1885, !tbaa !603
  store i32 54, i32* %retval, !dbg !1886
  br label %return, !dbg !1886

NewDefault:                                       ; preds = %LeafBlock.11, %LeafBlock.9, %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %7 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1887, !tbaa !594
  %8 = load i32, i32* %tok.addr, align 4, !dbg !1888, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %7, i32 %8), !dbg !1889
  store i32 %call, i32* %retval, !dbg !1890
  br label %return, !dbg !1890

return:                                           ; preds = %sw.epilog, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %9 = load i32, i32* %retval, !dbg !1891
  ret i32 %9, !dbg !1891
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !452, metadata !598), !dbg !1892
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !453, metadata !598), !dbg !1893
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !454, metadata !598), !dbg !1894
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !455, metadata !598), !dbg !1895
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !456, metadata !598), !dbg !1896
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1897, !tbaa !620
  br label %NodeBlock.15

NodeBlock.15:                                     ; preds = %entry
  %Pivot.16 = icmp slt i32 %0, 35
  br i1 %Pivot.16, label %NodeBlock.5, label %NodeBlock.13

NodeBlock.13:                                     ; preds = %NodeBlock.15
  %Pivot.14 = icmp slt i32 %0, 37
  br i1 %Pivot.14, label %NodeBlock.7, label %NodeBlock.11

NodeBlock.11:                                     ; preds = %NodeBlock.13
  %Pivot.12 = icmp slt i32 %0, 38
  br i1 %Pivot.12, label %sw.bb.21, label %LeafBlock.9

LeafBlock.9:                                      ; preds = %NodeBlock.11
  %SwitchLeaf10 = icmp eq i32 %0, 38
  br i1 %SwitchLeaf10, label %sw.bb.30, label %NewDefault

NodeBlock.7:                                      ; preds = %NodeBlock.13
  %Pivot.8 = icmp slt i32 %0, 36
  br i1 %Pivot.8, label %sw.bb.12, label %sw.bb.3

NodeBlock.5:                                      ; preds = %NodeBlock.15
  %Pivot.6 = icmp slt i32 %0, 21
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 24
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 24
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 21
  br i1 %SwitchLeaf2, label %sw.bb.32, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 39, i32* %retval, !dbg !1898
  br label %return, !dbg !1898

sw.bb.1:                                          ; preds = %LeafBlock.3
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1900, !tbaa !594
  %level = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 1, !dbg !1901
  %2 = load i32, i32* %level, align 4, !dbg !1902, !tbaa !1768
  %sub = sub i32 %2, 1, !dbg !1902
  store i32 %sub, i32* %level, align 4, !dbg !1902, !tbaa !1768
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1903, !tbaa !594
  %level2 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 1, !dbg !1905
  %4 = load i32, i32* %level2, align 4, !dbg !1905, !tbaa !1768
  %cmp = icmp eq i32 %4, 0, !dbg !1906
  br i1 %cmp, label %if.then, label %if.end, !dbg !1907

if.then:                                          ; preds = %sw.bb.1
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1908, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0, !dbg !1910
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1911, !tbaa !603
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1912, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 2, !dbg !1913
  store i32 39, i32* %role_none, align 4, !dbg !1914, !tbaa !1119
  br label %if.end, !dbg !1915

if.end:                                           ; preds = %if.then, %sw.bb.1
  store i32 45, i32* %retval, !dbg !1916
  br label %return, !dbg !1916

sw.bb.3:                                          ; preds = %NodeBlock.7
  %7 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1917, !tbaa !594
  %level4 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %7, i32 0, i32 1, !dbg !1918
  %8 = load i32, i32* %level4, align 4, !dbg !1919, !tbaa !1768
  %sub5 = sub i32 %8, 1, !dbg !1919
  store i32 %sub5, i32* %level4, align 4, !dbg !1919, !tbaa !1768
  %9 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1920, !tbaa !594
  %level6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %9, i32 0, i32 1, !dbg !1922
  %10 = load i32, i32* %level6, align 4, !dbg !1922, !tbaa !1768
  %cmp7 = icmp eq i32 %10, 0, !dbg !1923
  br i1 %cmp7, label %if.then.8, label %if.end.11, !dbg !1924

if.then.8:                                        ; preds = %sw.bb.3
  %11 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1925, !tbaa !594
  %handler9 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %11, i32 0, i32 0, !dbg !1927
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler9, align 8, !dbg !1928, !tbaa !603
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1929, !tbaa !594
  %role_none10 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 2, !dbg !1930
  store i32 39, i32* %role_none10, align 4, !dbg !1931, !tbaa !1119
  br label %if.end.11, !dbg !1932

if.end.11:                                        ; preds = %if.then.8, %sw.bb.3
  store i32 46, i32* %retval, !dbg !1933
  br label %return, !dbg !1933

sw.bb.12:                                         ; preds = %NodeBlock.7
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1934, !tbaa !594
  %level13 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %13, i32 0, i32 1, !dbg !1935
  %14 = load i32, i32* %level13, align 4, !dbg !1936, !tbaa !1768
  %sub14 = sub i32 %14, 1, !dbg !1936
  store i32 %sub14, i32* %level13, align 4, !dbg !1936, !tbaa !1768
  %15 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1937, !tbaa !594
  %level15 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %15, i32 0, i32 1, !dbg !1939
  %16 = load i32, i32* %level15, align 4, !dbg !1939, !tbaa !1768
  %cmp16 = icmp eq i32 %16, 0, !dbg !1940
  br i1 %cmp16, label %if.then.17, label %if.end.20, !dbg !1941

if.then.17:                                       ; preds = %sw.bb.12
  %17 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1942, !tbaa !594
  %handler18 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %17, i32 0, i32 0, !dbg !1944
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler18, align 8, !dbg !1945, !tbaa !603
  %18 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1946, !tbaa !594
  %role_none19 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %18, i32 0, i32 2, !dbg !1947
  store i32 39, i32* %role_none19, align 4, !dbg !1948, !tbaa !1119
  br label %if.end.20, !dbg !1949

if.end.20:                                        ; preds = %if.then.17, %sw.bb.12
  store i32 47, i32* %retval, !dbg !1950
  br label %return, !dbg !1950

sw.bb.21:                                         ; preds = %NodeBlock.11
  %19 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1951, !tbaa !594
  %level22 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %19, i32 0, i32 1, !dbg !1952
  %20 = load i32, i32* %level22, align 4, !dbg !1953, !tbaa !1768
  %sub23 = sub i32 %20, 1, !dbg !1953
  store i32 %sub23, i32* %level22, align 4, !dbg !1953, !tbaa !1768
  %21 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1954, !tbaa !594
  %level24 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %21, i32 0, i32 1, !dbg !1956
  %22 = load i32, i32* %level24, align 4, !dbg !1956, !tbaa !1768
  %cmp25 = icmp eq i32 %22, 0, !dbg !1957
  br i1 %cmp25, label %if.then.26, label %if.end.29, !dbg !1958

if.then.26:                                       ; preds = %sw.bb.21
  %23 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1959, !tbaa !594
  %handler27 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %23, i32 0, i32 0, !dbg !1961
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler27, align 8, !dbg !1962, !tbaa !603
  %24 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1963, !tbaa !594
  %role_none28 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %24, i32 0, i32 2, !dbg !1964
  store i32 39, i32* %role_none28, align 4, !dbg !1965, !tbaa !1119
  br label %if.end.29, !dbg !1966

if.end.29:                                        ; preds = %if.then.26, %sw.bb.21
  store i32 48, i32* %retval, !dbg !1967
  br label %return, !dbg !1967

sw.bb.30:                                         ; preds = %LeafBlock.9
  %25 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1968, !tbaa !594
  %handler31 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %25, i32 0, i32 0, !dbg !1969
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler31, align 8, !dbg !1970, !tbaa !603
  store i32 50, i32* %retval, !dbg !1971
  br label %return, !dbg !1971

sw.bb.32:                                         ; preds = %LeafBlock.1
  %26 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1972, !tbaa !594
  %handler33 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %26, i32 0, i32 0, !dbg !1973
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element6, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler33, align 8, !dbg !1974, !tbaa !603
  store i32 49, i32* %retval, !dbg !1975
  br label %return, !dbg !1975

NewDefault:                                       ; preds = %LeafBlock.9, %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %27 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1976, !tbaa !594
  %28 = load i32, i32* %tok.addr, align 4, !dbg !1977, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %27, i32 %28), !dbg !1978
  store i32 %call, i32* %retval, !dbg !1979
  br label %return, !dbg !1979

return:                                           ; preds = %sw.epilog, %sw.bb.32, %sw.bb.30, %if.end.29, %if.end.20, %if.end.11, %if.end, %sw.bb
  %29 = load i32, i32* %retval, !dbg !1980
  ret i32 %29, !dbg !1980
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !431, metadata !598), !dbg !1981
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !432, metadata !598), !dbg !1982
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !433, metadata !598), !dbg !1983
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !434, metadata !598), !dbg !1984
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !435, metadata !598), !dbg !1985
  %0 = load i32, i32* %tok.addr, align 4, !dbg !1986, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 18
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 41
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 41
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 39, i32* %retval, !dbg !1987
  br label %return, !dbg !1987

sw.bb.1:                                          ; preds = %LeafBlock.3, %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1989, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !1990
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element5, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !1991, !tbaa !603
  store i32 51, i32* %retval, !dbg !1992
  br label %return, !dbg !1992

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !1993, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !1994, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !1995
  store i32 %call, i32* %retval, !dbg !1996
  br label %return, !dbg !1996

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !1997
  ret i32 %4, !dbg !1997
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !438, metadata !598), !dbg !1998
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !439, metadata !598), !dbg !1999
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !440, metadata !598), !dbg !2000
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !441, metadata !598), !dbg !2001
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !442, metadata !598), !dbg !2002
  %0 = load i32, i32* %tok.addr, align 4, !dbg !2003, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 21
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 36
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 36
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 21
  br i1 %SwitchLeaf2, label %sw.bb.2, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 39, i32* %retval, !dbg !2004
  br label %return, !dbg !2004

sw.bb.1:                                          ; preds = %LeafBlock.3
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2006, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !2007
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !2008, !tbaa !603
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2009, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2, !dbg !2010
  store i32 39, i32* %role_none, align 4, !dbg !2011, !tbaa !1119
  store i32 46, i32* %retval, !dbg !2012
  br label %return, !dbg !2012

sw.bb.2:                                          ; preds = %LeafBlock.1
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2013, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 0, !dbg !2014
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @element4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !2015, !tbaa !603
  store i32 39, i32* %retval, !dbg !2016
  br label %return, !dbg !2016

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %4 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2017, !tbaa !594
  %5 = load i32, i32* %tok.addr, align 4, !dbg !2018, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %4, i32 %5), !dbg !2019
  store i32 %call, i32* %retval, !dbg !2020
  br label %return, !dbg !2020

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %6 = load i32, i32* %retval, !dbg !2021
  ret i32 %6, !dbg !2021
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !466, metadata !598), !dbg !2022
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !467, metadata !598), !dbg !2023
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !468, metadata !598), !dbg !2024
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !469, metadata !598), !dbg !2025
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !470, metadata !598), !dbg !2026
  %0 = load i32, i32* %tok.addr, align 4, !dbg !2027, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 18
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 18
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 17, i32* %retval, !dbg !2028
  br label %return, !dbg !2028

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !2030, !tbaa !594
  %nameMatchesAscii = getelementptr inbounds %struct.encoding, %struct.encoding* %1, i32 0, i32 3, !dbg !2032
  %2 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii, align 8, !dbg !2032, !tbaa !647
  %3 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !2033, !tbaa !594
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !2034, !tbaa !594
  %5 = load i8*, i8** %end.addr, align 8, !dbg !2035, !tbaa !594
  %call = call i32 %2(%struct.encoding* %3, i8* %4, i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_SYSTEM, i32 0, i32 0)), !dbg !2036
  %tobool = icmp ne i32 %call, 0, !dbg !2036
  br i1 %tobool, label %if.then, label %if.end, !dbg !2037

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2038, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %6, i32 0, i32 0, !dbg !2040
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation3, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !2041, !tbaa !603
  store i32 17, i32* %retval, !dbg !2042
  br label %return, !dbg !2042

if.end:                                           ; preds = %sw.bb.1
  %7 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !2043, !tbaa !594
  %nameMatchesAscii2 = getelementptr inbounds %struct.encoding, %struct.encoding* %7, i32 0, i32 3, !dbg !2045
  %8 = load i32 (%struct.encoding*, i8*, i8*, i8*)*, i32 (%struct.encoding*, i8*, i8*, i8*)** %nameMatchesAscii2, align 8, !dbg !2045, !tbaa !647
  %9 = load %struct.encoding*, %struct.encoding** %enc.addr, align 8, !dbg !2046, !tbaa !594
  %10 = load i8*, i8** %ptr.addr, align 8, !dbg !2047, !tbaa !594
  %11 = load i8*, i8** %end.addr, align 8, !dbg !2048, !tbaa !594
  %call3 = call i32 %8(%struct.encoding* %9, i8* %10, i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @KW_PUBLIC, i32 0, i32 0)), !dbg !2049
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2049
  br i1 %tobool4, label %if.then.5, label %if.end.7, !dbg !2050

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2051, !tbaa !594
  %handler6 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %12, i32 0, i32 0, !dbg !2053
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler6, align 8, !dbg !2054, !tbaa !603
  store i32 17, i32* %retval, !dbg !2055
  br label %return, !dbg !2055

if.end.7:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !2056

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %if.end.7
  %13 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2057, !tbaa !594
  %14 = load i32, i32* %tok.addr, align 4, !dbg !2058, !tbaa !620
  %call8 = call i32 @common(%struct.prolog_state* %13, i32 %14), !dbg !2059
  store i32 %call8, i32* %retval, !dbg !2060
  br label %return, !dbg !2060

return:                                           ; preds = %sw.epilog, %if.then.5, %if.then, %sw.bb
  %15 = load i32, i32* %retval, !dbg !2061
  ret i32 %15, !dbg !2061
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !473, metadata !598), !dbg !2062
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !474, metadata !598), !dbg !2063
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !475, metadata !598), !dbg !2064
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !476, metadata !598), !dbg !2065
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !477, metadata !598), !dbg !2066
  %0 = load i32, i32* %tok.addr, align 4, !dbg !2067, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 27
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 27
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 17, i32* %retval, !dbg !2068
  br label %return, !dbg !2068

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2070, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !2071
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !2072, !tbaa !603
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2073, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2, !dbg !2074
  store i32 17, i32* %role_none, align 4, !dbg !2075, !tbaa !1119
  store i32 19, i32* %retval, !dbg !2076
  br label %return, !dbg !2076

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2077, !tbaa !594
  %4 = load i32, i32* %tok.addr, align 4, !dbg !2078, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4), !dbg !2079
  store i32 %call, i32* %retval, !dbg !2080
  br label %return, !dbg !2080

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval, !dbg !2081
  ret i32 %5, !dbg !2081
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !480, metadata !598), !dbg !2082
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !481, metadata !598), !dbg !2083
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !482, metadata !598), !dbg !2084
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !483, metadata !598), !dbg !2085
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !484, metadata !598), !dbg !2086
  %0 = load i32, i32* %tok.addr, align 4, !dbg !2087, !tbaa !620
  br label %NodeBlock

NodeBlock:                                        ; preds = %entry
  %Pivot = icmp slt i32 %0, 27
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 27
  br i1 %SwitchLeaf2, label %sw.bb.1, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 17, i32* %retval, !dbg !2088
  br label %return, !dbg !2088

sw.bb.1:                                          ; preds = %LeafBlock.1
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2090, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !2091
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @notation4, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !2092, !tbaa !603
  store i32 21, i32* %retval, !dbg !2093
  br label %return, !dbg !2093

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2094, !tbaa !594
  %3 = load i32, i32* %tok.addr, align 4, !dbg !2095, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %2, i32 %3), !dbg !2096
  store i32 %call, i32* %retval, !dbg !2097
  br label %return, !dbg !2097

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %4 = load i32, i32* %retval, !dbg !2098
  ret i32 %4, !dbg !2098
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !487, metadata !598), !dbg !2099
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !488, metadata !598), !dbg !2100
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !489, metadata !598), !dbg !2101
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !490, metadata !598), !dbg !2102
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !491, metadata !598), !dbg !2103
  %0 = load i32, i32* %tok.addr, align 4, !dbg !2104, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 17
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 27
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 27
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 17
  br i1 %SwitchLeaf2, label %sw.bb.2, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 17, i32* %retval, !dbg !2105
  br label %return, !dbg !2105

sw.bb.1:                                          ; preds = %LeafBlock.3
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2107, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !2108
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @declClose, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !2109, !tbaa !603
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2110, !tbaa !594
  %role_none = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 2, !dbg !2111
  store i32 17, i32* %role_none, align 4, !dbg !2112, !tbaa !1119
  store i32 19, i32* %retval, !dbg !2113
  br label %return, !dbg !2113

sw.bb.2:                                          ; preds = %LeafBlock.1
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2114, !tbaa !594
  %documentEntity = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %3, i32 0, i32 4, !dbg !2115
  %4 = load i32, i32* %documentEntity, align 4, !dbg !2115, !tbaa !609
  %tobool = icmp ne i32 %4, 0, !dbg !2116
  %cond = select i1 %tobool, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @externalSubset1, !dbg !2116
  %5 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2117, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %5, i32 0, i32 0, !dbg !2118
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* %cond, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !2119, !tbaa !603
  store i32 20, i32* %retval, !dbg !2120
  br label %return, !dbg !2120

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %6 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2121, !tbaa !594
  %7 = load i32, i32* %tok.addr, align 4, !dbg !2122, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %6, i32 %7), !dbg !2123
  store i32 %call, i32* %retval, !dbg !2124
  br label %return, !dbg !2124

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %8 = load i32, i32* %retval, !dbg !2125
  ret i32 %8, !dbg !2125
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
  call void @llvm.dbg.declare(metadata %struct.prolog_state** %state.addr, metadata !515, metadata !598), !dbg !2126
  store i32 %tok, i32* %tok.addr, align 4, !tbaa !620
  call void @llvm.dbg.declare(metadata i32* %tok.addr, metadata !516, metadata !598), !dbg !2127
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !517, metadata !598), !dbg !2128
  store i8* %end, i8** %end.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !518, metadata !598), !dbg !2129
  store %struct.encoding* %enc, %struct.encoding** %enc.addr, align 8, !tbaa !594
  call void @llvm.dbg.declare(metadata %struct.encoding** %enc.addr, metadata !519, metadata !598), !dbg !2130
  %0 = load i32, i32* %tok.addr, align 4, !dbg !2131, !tbaa !620
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %entry
  %Pivot.6 = icmp slt i32 %0, 17
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %0, 25
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %0, 25
  br i1 %SwitchLeaf4, label %sw.bb.1, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %0, 17
  br i1 %SwitchLeaf2, label %sw.bb.2, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %0, 15
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i32 3, i32* %retval, !dbg !2132
  br label %return, !dbg !2132

sw.bb.1:                                          ; preds = %LeafBlock.3
  %1 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2134, !tbaa !594
  %handler = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %1, i32 0, i32 0, !dbg !2135
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @internalSubset, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler, align 8, !dbg !2136, !tbaa !603
  store i32 7, i32* %retval, !dbg !2137
  br label %return, !dbg !2137

sw.bb.2:                                          ; preds = %LeafBlock.1
  %2 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2138, !tbaa !594
  %handler3 = getelementptr inbounds %struct.prolog_state, %struct.prolog_state* %2, i32 0, i32 0, !dbg !2139
  store i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)* @prolog2, i32 (%struct.prolog_state*, i32, i8*, i8*, %struct.encoding*)** %handler3, align 8, !dbg !2140, !tbaa !603
  store i32 8, i32* %retval, !dbg !2141
  br label %return, !dbg !2141

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault
  %3 = load %struct.prolog_state*, %struct.prolog_state** %state.addr, align 8, !dbg !2142, !tbaa !594
  %4 = load i32, i32* %tok.addr, align 4, !dbg !2143, !tbaa !620
  %call = call i32 @common(%struct.prolog_state* %3, i32 %4), !dbg !2144
  store i32 %call, i32* %retval, !dbg !2145
  br label %return, !dbg !2145

return:                                           ; preds = %sw.epilog, %sw.bb.2, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %retval, !dbg !2146
  ret i32 %5, !dbg !2146
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
!626 = !DILocation(line: 136, column: 5, scope: !627)
!627 = distinct !DILexicalBlock(scope: !179, file: !72, line: 134, column: 16)
!628 = !DILocation(line: 136, column: 12, scope: !627)
!629 = !DILocation(line: 136, column: 20, scope: !627)
!630 = !DILocation(line: 137, column: 5, scope: !627)
!631 = !DILocation(line: 139, column: 5, scope: !627)
!632 = !DILocation(line: 139, column: 12, scope: !627)
!633 = !DILocation(line: 139, column: 20, scope: !627)
!634 = !DILocation(line: 140, column: 5, scope: !627)
!635 = !DILocation(line: 142, column: 5, scope: !627)
!636 = !DILocation(line: 142, column: 12, scope: !627)
!637 = !DILocation(line: 142, column: 20, scope: !627)
!638 = !DILocation(line: 143, column: 5, scope: !627)
!639 = !DILocation(line: 145, column: 5, scope: !627)
!640 = !DILocation(line: 145, column: 12, scope: !627)
!641 = !DILocation(line: 145, column: 20, scope: !627)
!642 = !DILocation(line: 146, column: 5, scope: !627)
!643 = !DILocation(line: 148, column: 5, scope: !627)
!644 = !DILocation(line: 150, column: 13, scope: !645)
!645 = distinct !DILexicalBlock(scope: !627, file: !72, line: 150, column: 9)
!646 = !DILocation(line: 150, column: 19, scope: !645)
!647 = !{!648, !595, i64 56}
!648 = !{!"encoding", !596, i64 0, !596, i64 32, !595, i64 48, !595, i64 56, !595, i64 64, !595, i64 72, !595, i64 80, !595, i64 88, !595, i64 96, !595, i64 104, !595, i64 112, !595, i64 120, !595, i64 128, !605, i64 136, !596, i64 140, !596, i64 141}
!649 = !DILocation(line: 150, column: 37, scope: !645)
!650 = !DILocation(line: 150, column: 42, scope: !645)
!651 = !DILocation(line: 150, column: 54, scope: !645)
!652 = !DILocation(line: 150, column: 60, scope: !645)
!653 = !{!648, !605, i64 136}
!654 = !DILocation(line: 150, column: 50, scope: !645)
!655 = !DILocation(line: 150, column: 46, scope: !645)
!656 = !DILocation(line: 150, column: 78, scope: !645)
!657 = !DILocation(line: 150, column: 11, scope: !645)
!658 = !DILocation(line: 150, column: 9, scope: !627)
!659 = !DILocation(line: 154, column: 7, scope: !645)
!660 = !DILocation(line: 155, column: 5, scope: !627)
!661 = !DILocation(line: 155, column: 12, scope: !627)
!662 = !DILocation(line: 155, column: 20, scope: !627)
!663 = !DILocation(line: 156, column: 5, scope: !627)
!664 = !DILocation(line: 158, column: 5, scope: !627)
!665 = !DILocation(line: 158, column: 12, scope: !627)
!666 = !DILocation(line: 158, column: 20, scope: !627)
!667 = !DILocation(line: 159, column: 5, scope: !627)
!668 = !DILocation(line: 161, column: 17, scope: !179)
!669 = !DILocation(line: 161, column: 24, scope: !179)
!670 = !DILocation(line: 161, column: 10, scope: !179)
!671 = !DILocation(line: 161, column: 3, scope: !179)
!672 = !DILocation(line: 162, column: 1, scope: !179)
!673 = !DILocation(line: 1329, column: 56, scope: !176)
!674 = !DILocation(line: 1331, column: 3, scope: !176)
!675 = !DILocation(line: 1331, column: 10, scope: !176)
!676 = !DILocation(line: 1331, column: 18, scope: !176)
!677 = !DILocation(line: 1332, column: 3, scope: !176)
!678 = !DILocation(line: 1332, column: 10, scope: !176)
!679 = !DILocation(line: 1332, column: 25, scope: !176)
!680 = !DILocation(line: 1333, column: 3, scope: !176)
!681 = !DILocation(line: 1333, column: 10, scope: !176)
!682 = !DILocation(line: 1333, column: 23, scope: !176)
!683 = !DILocation(line: 1334, column: 1, scope: !176)
!684 = !DILocation(line: 393, column: 31, scope: !540)
!685 = !DILocation(line: 394, column: 21, scope: !540)
!686 = !DILocation(line: 395, column: 29, scope: !540)
!687 = !DILocation(line: 396, column: 29, scope: !540)
!688 = !DILocation(line: 397, column: 33, scope: !540)
!689 = !DILocation(line: 399, column: 3, scope: !540)
!690 = !DILocation(line: 399, column: 10, scope: !540)
!691 = !DILocation(line: 399, column: 18, scope: !540)
!692 = !DILocation(line: 400, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !540, file: !72, line: 400, column: 7)
!694 = !DILocation(line: 400, column: 11, scope: !693)
!695 = !DILocation(line: 400, column: 7, scope: !540)
!696 = !DILocation(line: 401, column: 5, scope: !693)
!697 = !DILocation(line: 402, column: 26, scope: !540)
!698 = !DILocation(line: 402, column: 33, scope: !540)
!699 = !DILocation(line: 402, column: 38, scope: !540)
!700 = !DILocation(line: 402, column: 43, scope: !540)
!701 = !DILocation(line: 402, column: 48, scope: !540)
!702 = !DILocation(line: 402, column: 10, scope: !540)
!703 = !DILocation(line: 402, column: 3, scope: !540)
!704 = !DILocation(line: 403, column: 1, scope: !540)
!705 = !DILocation(line: 165, column: 23, scope: !188)
!706 = !DILocation(line: 166, column: 13, scope: !188)
!707 = !DILocation(line: 167, column: 21, scope: !188)
!708 = !DILocation(line: 168, column: 21, scope: !188)
!709 = !DILocation(line: 169, column: 25, scope: !188)
!710 = !DILocation(line: 171, column: 11, scope: !188)
!711 = !DILocation(line: 173, column: 5, scope: !712)
!712 = distinct !DILexicalBlock(scope: !188, file: !72, line: 171, column: 16)
!713 = !DILocation(line: 175, column: 5, scope: !712)
!714 = !DILocation(line: 177, column: 5, scope: !712)
!715 = !DILocation(line: 179, column: 5, scope: !712)
!716 = !DILocation(line: 181, column: 13, scope: !717)
!717 = distinct !DILexicalBlock(scope: !712, file: !72, line: 181, column: 9)
!718 = !DILocation(line: 181, column: 19, scope: !717)
!719 = !DILocation(line: 181, column: 37, scope: !717)
!720 = !DILocation(line: 181, column: 42, scope: !717)
!721 = !DILocation(line: 181, column: 54, scope: !717)
!722 = !DILocation(line: 181, column: 60, scope: !717)
!723 = !DILocation(line: 181, column: 50, scope: !717)
!724 = !DILocation(line: 181, column: 46, scope: !717)
!725 = !DILocation(line: 181, column: 78, scope: !717)
!726 = !DILocation(line: 181, column: 11, scope: !717)
!727 = !DILocation(line: 181, column: 9, scope: !712)
!728 = !DILocation(line: 185, column: 7, scope: !717)
!729 = !DILocation(line: 186, column: 5, scope: !712)
!730 = !DILocation(line: 186, column: 12, scope: !712)
!731 = !DILocation(line: 186, column: 20, scope: !712)
!732 = !DILocation(line: 187, column: 5, scope: !712)
!733 = !DILocation(line: 189, column: 5, scope: !712)
!734 = !DILocation(line: 189, column: 12, scope: !712)
!735 = !DILocation(line: 189, column: 20, scope: !712)
!736 = !DILocation(line: 190, column: 5, scope: !712)
!737 = !DILocation(line: 192, column: 17, scope: !188)
!738 = !DILocation(line: 192, column: 24, scope: !188)
!739 = !DILocation(line: 192, column: 10, scope: !188)
!740 = !DILocation(line: 192, column: 3, scope: !188)
!741 = !DILocation(line: 193, column: 1, scope: !188)
!742 = !DILocation(line: 217, column: 24, scope: !195)
!743 = !DILocation(line: 218, column: 14, scope: !195)
!744 = !DILocation(line: 219, column: 22, scope: !195)
!745 = !DILocation(line: 220, column: 22, scope: !195)
!746 = !DILocation(line: 221, column: 26, scope: !195)
!747 = !DILocation(line: 223, column: 11, scope: !195)
!748 = !DILocation(line: 225, column: 5, scope: !749)
!749 = distinct !DILexicalBlock(scope: !195, file: !72, line: 223, column: 16)
!750 = !DILocation(line: 228, column: 5, scope: !749)
!751 = !DILocation(line: 228, column: 12, scope: !749)
!752 = !DILocation(line: 228, column: 20, scope: !749)
!753 = !DILocation(line: 229, column: 5, scope: !749)
!754 = !DILocation(line: 231, column: 17, scope: !195)
!755 = !DILocation(line: 231, column: 24, scope: !195)
!756 = !DILocation(line: 231, column: 10, scope: !195)
!757 = !DILocation(line: 231, column: 3, scope: !195)
!758 = !DILocation(line: 232, column: 1, scope: !195)
!759 = !DILocation(line: 1295, column: 21, scope: !527)
!760 = !DILocation(line: 1296, column: 11, scope: !527)
!761 = !DILocation(line: 1297, column: 19, scope: !527)
!762 = !DILocation(line: 1298, column: 19, scope: !527)
!763 = !DILocation(line: 1299, column: 23, scope: !527)
!764 = !DILocation(line: 1301, column: 3, scope: !527)
!765 = !DILocation(line: 1305, column: 22, scope: !534)
!766 = !DILocation(line: 1305, column: 33, scope: !534)
!767 = !DILocation(line: 1308, column: 8, scope: !768)
!768 = distinct !DILexicalBlock(scope: !534, file: !72, line: 1308, column: 7)
!769 = !DILocation(line: 1308, column: 15, scope: !768)
!770 = !DILocation(line: 1308, column: 30, scope: !768)
!771 = !DILocation(line: 1308, column: 33, scope: !772)
!772 = !DILexicalBlockFile(scope: !768, file: !72, discriminator: 1)
!773 = !DILocation(line: 1308, column: 37, scope: !768)
!774 = !DILocation(line: 1308, column: 7, scope: !534)
!775 = !DILocation(line: 1309, column: 5, scope: !768)
!776 = !DILocation(line: 1311, column: 3, scope: !534)
!777 = !DILocation(line: 1311, column: 10, scope: !534)
!778 = !DILocation(line: 1311, column: 18, scope: !534)
!779 = !DILocation(line: 1312, column: 3, scope: !534)
!780 = !DILocation(line: 1313, column: 1, scope: !534)
!781 = !DILocation(line: 235, column: 24, scope: !202)
!782 = !DILocation(line: 236, column: 14, scope: !202)
!783 = !DILocation(line: 237, column: 22, scope: !202)
!784 = !DILocation(line: 238, column: 22, scope: !202)
!785 = !DILocation(line: 239, column: 26, scope: !202)
!786 = !DILocation(line: 241, column: 11, scope: !202)
!787 = !DILocation(line: 243, column: 5, scope: !788)
!788 = distinct !DILexicalBlock(scope: !202, file: !72, line: 241, column: 16)
!789 = !DILocation(line: 245, column: 5, scope: !788)
!790 = !DILocation(line: 245, column: 12, scope: !788)
!791 = !DILocation(line: 245, column: 20, scope: !788)
!792 = !DILocation(line: 246, column: 5, scope: !788)
!793 = !DILocation(line: 248, column: 5, scope: !788)
!794 = !DILocation(line: 248, column: 12, scope: !788)
!795 = !DILocation(line: 248, column: 20, scope: !788)
!796 = !DILocation(line: 249, column: 5, scope: !788)
!797 = !DILocation(line: 251, column: 12, scope: !798)
!798 = distinct !DILexicalBlock(scope: !788, file: !72, line: 251, column: 9)
!799 = !DILocation(line: 251, column: 18, scope: !798)
!800 = !DILocation(line: 251, column: 36, scope: !798)
!801 = !DILocation(line: 251, column: 41, scope: !798)
!802 = !DILocation(line: 251, column: 46, scope: !798)
!803 = !DILocation(line: 251, column: 10, scope: !798)
!804 = !DILocation(line: 251, column: 9, scope: !788)
!805 = !DILocation(line: 252, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !798, file: !72, line: 251, column: 64)
!807 = !DILocation(line: 252, column: 14, scope: !806)
!808 = !DILocation(line: 252, column: 22, scope: !806)
!809 = !DILocation(line: 253, column: 7, scope: !806)
!810 = !DILocation(line: 255, column: 12, scope: !811)
!811 = distinct !DILexicalBlock(scope: !788, file: !72, line: 255, column: 9)
!812 = !DILocation(line: 255, column: 18, scope: !811)
!813 = !DILocation(line: 255, column: 36, scope: !811)
!814 = !DILocation(line: 255, column: 41, scope: !811)
!815 = !DILocation(line: 255, column: 46, scope: !811)
!816 = !DILocation(line: 255, column: 10, scope: !811)
!817 = !DILocation(line: 255, column: 9, scope: !788)
!818 = !DILocation(line: 256, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !811, file: !72, line: 255, column: 64)
!820 = !DILocation(line: 256, column: 14, scope: !819)
!821 = !DILocation(line: 256, column: 22, scope: !819)
!822 = !DILocation(line: 257, column: 7, scope: !819)
!823 = !DILocation(line: 259, column: 5, scope: !788)
!824 = !DILocation(line: 261, column: 17, scope: !202)
!825 = !DILocation(line: 261, column: 24, scope: !202)
!826 = !DILocation(line: 261, column: 10, scope: !202)
!827 = !DILocation(line: 261, column: 3, scope: !202)
!828 = !DILocation(line: 262, column: 1, scope: !202)
!829 = !DILocation(line: 336, column: 30, scope: !209)
!830 = !DILocation(line: 337, column: 20, scope: !209)
!831 = !DILocation(line: 338, column: 28, scope: !209)
!832 = !DILocation(line: 339, column: 28, scope: !209)
!833 = !DILocation(line: 340, column: 32, scope: !209)
!834 = !DILocation(line: 342, column: 11, scope: !209)
!835 = !DILocation(line: 344, column: 5, scope: !836)
!836 = distinct !DILexicalBlock(scope: !209, file: !72, line: 342, column: 16)
!837 = !DILocation(line: 346, column: 12, scope: !838)
!838 = distinct !DILexicalBlock(scope: !836, file: !72, line: 346, column: 9)
!839 = !DILocation(line: 346, column: 18, scope: !838)
!840 = !DILocation(line: 346, column: 36, scope: !838)
!841 = !DILocation(line: 346, column: 41, scope: !838)
!842 = !DILocation(line: 346, column: 53, scope: !838)
!843 = !DILocation(line: 346, column: 59, scope: !838)
!844 = !DILocation(line: 346, column: 49, scope: !838)
!845 = !DILocation(line: 346, column: 45, scope: !838)
!846 = !DILocation(line: 346, column: 77, scope: !838)
!847 = !DILocation(line: 346, column: 10, scope: !838)
!848 = !DILocation(line: 346, column: 9, scope: !836)
!849 = !DILocation(line: 350, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !838, file: !72, line: 346, column: 95)
!851 = !DILocation(line: 350, column: 14, scope: !850)
!852 = !DILocation(line: 350, column: 22, scope: !850)
!853 = !DILocation(line: 351, column: 7, scope: !850)
!854 = !DILocation(line: 353, column: 12, scope: !855)
!855 = distinct !DILexicalBlock(scope: !836, file: !72, line: 353, column: 9)
!856 = !DILocation(line: 353, column: 18, scope: !855)
!857 = !DILocation(line: 353, column: 36, scope: !855)
!858 = !DILocation(line: 353, column: 41, scope: !855)
!859 = !DILocation(line: 353, column: 53, scope: !855)
!860 = !DILocation(line: 353, column: 59, scope: !855)
!861 = !DILocation(line: 353, column: 49, scope: !855)
!862 = !DILocation(line: 353, column: 45, scope: !855)
!863 = !DILocation(line: 353, column: 77, scope: !855)
!864 = !DILocation(line: 353, column: 10, scope: !855)
!865 = !DILocation(line: 353, column: 9, scope: !836)
!866 = !DILocation(line: 357, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !855, file: !72, line: 353, column: 96)
!868 = !DILocation(line: 357, column: 14, scope: !867)
!869 = !DILocation(line: 357, column: 22, scope: !867)
!870 = !DILocation(line: 358, column: 7, scope: !867)
!871 = !DILocation(line: 360, column: 12, scope: !872)
!872 = distinct !DILexicalBlock(scope: !836, file: !72, line: 360, column: 9)
!873 = !DILocation(line: 360, column: 18, scope: !872)
!874 = !DILocation(line: 360, column: 36, scope: !872)
!875 = !DILocation(line: 360, column: 41, scope: !872)
!876 = !DILocation(line: 360, column: 53, scope: !872)
!877 = !DILocation(line: 360, column: 59, scope: !872)
!878 = !DILocation(line: 360, column: 49, scope: !872)
!879 = !DILocation(line: 360, column: 45, scope: !872)
!880 = !DILocation(line: 360, column: 77, scope: !872)
!881 = !DILocation(line: 360, column: 10, scope: !872)
!882 = !DILocation(line: 360, column: 9, scope: !836)
!883 = !DILocation(line: 364, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !872, file: !72, line: 360, column: 96)
!885 = !DILocation(line: 364, column: 14, scope: !884)
!886 = !DILocation(line: 364, column: 22, scope: !884)
!887 = !DILocation(line: 365, column: 7, scope: !884)
!888 = !DILocation(line: 367, column: 12, scope: !889)
!889 = distinct !DILexicalBlock(scope: !836, file: !72, line: 367, column: 9)
!890 = !DILocation(line: 367, column: 18, scope: !889)
!891 = !DILocation(line: 367, column: 36, scope: !889)
!892 = !DILocation(line: 367, column: 41, scope: !889)
!893 = !DILocation(line: 367, column: 53, scope: !889)
!894 = !DILocation(line: 367, column: 59, scope: !889)
!895 = !DILocation(line: 367, column: 49, scope: !889)
!896 = !DILocation(line: 367, column: 45, scope: !889)
!897 = !DILocation(line: 367, column: 77, scope: !889)
!898 = !DILocation(line: 367, column: 10, scope: !889)
!899 = !DILocation(line: 367, column: 9, scope: !836)
!900 = !DILocation(line: 371, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !889, file: !72, line: 367, column: 97)
!902 = !DILocation(line: 371, column: 14, scope: !901)
!903 = !DILocation(line: 371, column: 22, scope: !901)
!904 = !DILocation(line: 372, column: 7, scope: !901)
!905 = !DILocation(line: 374, column: 5, scope: !836)
!906 = !DILocation(line: 376, column: 5, scope: !836)
!907 = !DILocation(line: 378, column: 5, scope: !836)
!908 = !DILocation(line: 380, column: 5, scope: !836)
!909 = !DILocation(line: 382, column: 5, scope: !836)
!910 = !DILocation(line: 382, column: 12, scope: !836)
!911 = !DILocation(line: 382, column: 20, scope: !836)
!912 = !DILocation(line: 383, column: 5, scope: !836)
!913 = !DILocation(line: 385, column: 5, scope: !836)
!914 = !DILocation(line: 387, column: 17, scope: !209)
!915 = !DILocation(line: 387, column: 24, scope: !209)
!916 = !DILocation(line: 387, column: 10, scope: !209)
!917 = !DILocation(line: 387, column: 3, scope: !209)
!918 = !DILocation(line: 388, column: 1, scope: !209)
!919 = !DILocation(line: 196, column: 23, scope: !499)
!920 = !DILocation(line: 197, column: 13, scope: !499)
!921 = !DILocation(line: 198, column: 21, scope: !499)
!922 = !DILocation(line: 199, column: 21, scope: !499)
!923 = !DILocation(line: 200, column: 25, scope: !499)
!924 = !DILocation(line: 202, column: 11, scope: !499)
!925 = !DILocation(line: 204, column: 5, scope: !926)
!926 = distinct !DILexicalBlock(scope: !499, file: !72, line: 202, column: 16)
!927 = !DILocation(line: 206, column: 5, scope: !926)
!928 = !DILocation(line: 208, column: 5, scope: !926)
!929 = !DILocation(line: 210, column: 5, scope: !926)
!930 = !DILocation(line: 210, column: 12, scope: !926)
!931 = !DILocation(line: 210, column: 20, scope: !926)
!932 = !DILocation(line: 211, column: 5, scope: !926)
!933 = !DILocation(line: 213, column: 17, scope: !499)
!934 = !DILocation(line: 213, column: 24, scope: !499)
!935 = !DILocation(line: 213, column: 10, scope: !499)
!936 = !DILocation(line: 213, column: 3, scope: !499)
!937 = !DILocation(line: 214, column: 1, scope: !499)
!938 = !DILocation(line: 282, column: 24, scope: !506)
!939 = !DILocation(line: 283, column: 14, scope: !506)
!940 = !DILocation(line: 284, column: 22, scope: !506)
!941 = !DILocation(line: 285, column: 22, scope: !506)
!942 = !DILocation(line: 286, column: 26, scope: !506)
!943 = !DILocation(line: 288, column: 11, scope: !506)
!944 = !DILocation(line: 290, column: 5, scope: !945)
!945 = distinct !DILexicalBlock(scope: !506, file: !72, line: 288, column: 16)
!946 = !DILocation(line: 292, column: 5, scope: !945)
!947 = !DILocation(line: 292, column: 12, scope: !945)
!948 = !DILocation(line: 292, column: 20, scope: !945)
!949 = !DILocation(line: 293, column: 5, scope: !945)
!950 = !DILocation(line: 295, column: 17, scope: !506)
!951 = !DILocation(line: 295, column: 24, scope: !506)
!952 = !DILocation(line: 295, column: 10, scope: !506)
!953 = !DILocation(line: 295, column: 3, scope: !506)
!954 = !DILocation(line: 296, column: 1, scope: !506)
!955 = !DILocation(line: 265, column: 24, scope: !520)
!956 = !DILocation(line: 266, column: 14, scope: !520)
!957 = !DILocation(line: 267, column: 22, scope: !520)
!958 = !DILocation(line: 268, column: 22, scope: !520)
!959 = !DILocation(line: 269, column: 26, scope: !520)
!960 = !DILocation(line: 271, column: 11, scope: !520)
!961 = !DILocation(line: 273, column: 5, scope: !962)
!962 = distinct !DILexicalBlock(scope: !520, file: !72, line: 271, column: 16)
!963 = !DILocation(line: 275, column: 5, scope: !962)
!964 = !DILocation(line: 275, column: 12, scope: !962)
!965 = !DILocation(line: 275, column: 20, scope: !962)
!966 = !DILocation(line: 276, column: 5, scope: !962)
!967 = !DILocation(line: 278, column: 17, scope: !520)
!968 = !DILocation(line: 278, column: 24, scope: !520)
!969 = !DILocation(line: 278, column: 10, scope: !520)
!970 = !DILocation(line: 278, column: 3, scope: !520)
!971 = !DILocation(line: 279, column: 1, scope: !520)
!972 = !DILocation(line: 438, column: 23, scope: !216)
!973 = !DILocation(line: 439, column: 13, scope: !216)
!974 = !DILocation(line: 440, column: 21, scope: !216)
!975 = !DILocation(line: 441, column: 21, scope: !216)
!976 = !DILocation(line: 442, column: 25, scope: !216)
!977 = !DILocation(line: 444, column: 11, scope: !216)
!978 = !DILocation(line: 446, column: 5, scope: !979)
!979 = distinct !DILexicalBlock(scope: !216, file: !72, line: 444, column: 16)
!980 = !DILocation(line: 448, column: 5, scope: !979)
!981 = !DILocation(line: 448, column: 12, scope: !979)
!982 = !DILocation(line: 448, column: 20, scope: !979)
!983 = !DILocation(line: 449, column: 5, scope: !979)
!984 = !DILocation(line: 451, column: 5, scope: !979)
!985 = !DILocation(line: 451, column: 12, scope: !979)
!986 = !DILocation(line: 451, column: 20, scope: !979)
!987 = !DILocation(line: 452, column: 5, scope: !979)
!988 = !DILocation(line: 454, column: 17, scope: !216)
!989 = !DILocation(line: 454, column: 24, scope: !216)
!990 = !DILocation(line: 454, column: 10, scope: !216)
!991 = !DILocation(line: 454, column: 3, scope: !216)
!992 = !DILocation(line: 455, column: 1, scope: !216)
!993 = !DILocation(line: 754, column: 24, scope: !328)
!994 = !DILocation(line: 755, column: 14, scope: !328)
!995 = !DILocation(line: 756, column: 22, scope: !328)
!996 = !DILocation(line: 757, column: 22, scope: !328)
!997 = !DILocation(line: 758, column: 26, scope: !328)
!998 = !DILocation(line: 760, column: 11, scope: !328)
!999 = !DILocation(line: 762, column: 5, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !328, file: !72, line: 760, column: 16)
!1001 = !DILocation(line: 765, column: 5, scope: !1000)
!1002 = !DILocation(line: 765, column: 12, scope: !1000)
!1003 = !DILocation(line: 765, column: 20, scope: !1000)
!1004 = !DILocation(line: 766, column: 5, scope: !1000)
!1005 = !DILocation(line: 768, column: 17, scope: !328)
!1006 = !DILocation(line: 768, column: 24, scope: !328)
!1007 = !DILocation(line: 768, column: 10, scope: !328)
!1008 = !DILocation(line: 768, column: 3, scope: !328)
!1009 = !DILocation(line: 769, column: 1, scope: !328)
!1010 = !DILocation(line: 985, column: 24, scope: !401)
!1011 = !DILocation(line: 986, column: 14, scope: !401)
!1012 = !DILocation(line: 987, column: 22, scope: !401)
!1013 = !DILocation(line: 988, column: 22, scope: !401)
!1014 = !DILocation(line: 989, column: 26, scope: !401)
!1015 = !DILocation(line: 991, column: 11, scope: !401)
!1016 = !DILocation(line: 993, column: 5, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !401, file: !72, line: 991, column: 16)
!1018 = !DILocation(line: 996, column: 5, scope: !1017)
!1019 = !DILocation(line: 996, column: 12, scope: !1017)
!1020 = !DILocation(line: 996, column: 20, scope: !1017)
!1021 = !DILocation(line: 997, column: 5, scope: !1017)
!1022 = !DILocation(line: 999, column: 17, scope: !401)
!1023 = !DILocation(line: 999, column: 24, scope: !401)
!1024 = !DILocation(line: 999, column: 10, scope: !401)
!1025 = !DILocation(line: 999, column: 3, scope: !401)
!1026 = !DILocation(line: 1000, column: 1, scope: !401)
!1027 = !DILocation(line: 657, column: 25, scope: !457)
!1028 = !DILocation(line: 658, column: 15, scope: !457)
!1029 = !DILocation(line: 659, column: 23, scope: !457)
!1030 = !DILocation(line: 660, column: 23, scope: !457)
!1031 = !DILocation(line: 661, column: 27, scope: !457)
!1032 = !DILocation(line: 663, column: 11, scope: !457)
!1033 = !DILocation(line: 665, column: 5, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !457, file: !72, line: 663, column: 16)
!1035 = !DILocation(line: 667, column: 5, scope: !1034)
!1036 = !DILocation(line: 667, column: 12, scope: !1034)
!1037 = !DILocation(line: 667, column: 20, scope: !1034)
!1038 = !DILocation(line: 668, column: 5, scope: !1034)
!1039 = !DILocation(line: 670, column: 17, scope: !457)
!1040 = !DILocation(line: 670, column: 24, scope: !457)
!1041 = !DILocation(line: 670, column: 10, scope: !457)
!1042 = !DILocation(line: 670, column: 3, scope: !457)
!1043 = !DILocation(line: 671, column: 1, scope: !457)
!1044 = !DILocation(line: 319, column: 24, scope: !492)
!1045 = !DILocation(line: 320, column: 14, scope: !492)
!1046 = !DILocation(line: 321, column: 22, scope: !492)
!1047 = !DILocation(line: 322, column: 22, scope: !492)
!1048 = !DILocation(line: 323, column: 26, scope: !492)
!1049 = !DILocation(line: 325, column: 11, scope: !492)
!1050 = !DILocation(line: 327, column: 5, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !492, file: !72, line: 325, column: 16)
!1052 = !DILocation(line: 329, column: 5, scope: !1051)
!1053 = !DILocation(line: 329, column: 12, scope: !1051)
!1054 = !DILocation(line: 329, column: 20, scope: !1051)
!1055 = !DILocation(line: 330, column: 5, scope: !1051)
!1056 = !DILocation(line: 332, column: 17, scope: !492)
!1057 = !DILocation(line: 332, column: 24, scope: !492)
!1058 = !DILocation(line: 332, column: 10, scope: !492)
!1059 = !DILocation(line: 332, column: 3, scope: !492)
!1060 = !DILocation(line: 333, column: 1, scope: !492)
!1061 = !DILocation(line: 458, column: 23, scope: !223)
!1062 = !DILocation(line: 459, column: 13, scope: !223)
!1063 = !DILocation(line: 460, column: 21, scope: !223)
!1064 = !DILocation(line: 461, column: 21, scope: !223)
!1065 = !DILocation(line: 462, column: 25, scope: !223)
!1066 = !DILocation(line: 464, column: 11, scope: !223)
!1067 = !DILocation(line: 466, column: 5, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !223, file: !72, line: 464, column: 16)
!1069 = !DILocation(line: 468, column: 5, scope: !1068)
!1070 = !DILocation(line: 468, column: 12, scope: !1068)
!1071 = !DILocation(line: 468, column: 20, scope: !1068)
!1072 = !DILocation(line: 469, column: 5, scope: !1068)
!1073 = !DILocation(line: 471, column: 17, scope: !223)
!1074 = !DILocation(line: 471, column: 24, scope: !223)
!1075 = !DILocation(line: 471, column: 10, scope: !223)
!1076 = !DILocation(line: 471, column: 3, scope: !223)
!1077 = !DILocation(line: 472, column: 1, scope: !223)
!1078 = !DILocation(line: 475, column: 23, scope: !293)
!1079 = !DILocation(line: 476, column: 13, scope: !293)
!1080 = !DILocation(line: 477, column: 21, scope: !293)
!1081 = !DILocation(line: 478, column: 21, scope: !293)
!1082 = !DILocation(line: 479, column: 25, scope: !293)
!1083 = !DILocation(line: 481, column: 11, scope: !293)
!1084 = !DILocation(line: 483, column: 5, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !293, file: !72, line: 481, column: 16)
!1086 = !DILocation(line: 485, column: 12, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1085, file: !72, line: 485, column: 9)
!1088 = !DILocation(line: 485, column: 18, scope: !1087)
!1089 = !DILocation(line: 485, column: 36, scope: !1087)
!1090 = !DILocation(line: 485, column: 41, scope: !1087)
!1091 = !DILocation(line: 485, column: 46, scope: !1087)
!1092 = !DILocation(line: 485, column: 10, scope: !1087)
!1093 = !DILocation(line: 485, column: 9, scope: !1085)
!1094 = !DILocation(line: 486, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1087, file: !72, line: 485, column: 64)
!1096 = !DILocation(line: 486, column: 14, scope: !1095)
!1097 = !DILocation(line: 486, column: 22, scope: !1095)
!1098 = !DILocation(line: 487, column: 7, scope: !1095)
!1099 = !DILocation(line: 489, column: 12, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1085, file: !72, line: 489, column: 9)
!1101 = !DILocation(line: 489, column: 18, scope: !1100)
!1102 = !DILocation(line: 489, column: 36, scope: !1100)
!1103 = !DILocation(line: 489, column: 41, scope: !1100)
!1104 = !DILocation(line: 489, column: 46, scope: !1100)
!1105 = !DILocation(line: 489, column: 10, scope: !1100)
!1106 = !DILocation(line: 489, column: 9, scope: !1085)
!1107 = !DILocation(line: 490, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1100, file: !72, line: 489, column: 64)
!1109 = !DILocation(line: 490, column: 14, scope: !1108)
!1110 = !DILocation(line: 490, column: 22, scope: !1108)
!1111 = !DILocation(line: 491, column: 7, scope: !1108)
!1112 = !DILocation(line: 493, column: 5, scope: !1085)
!1113 = !DILocation(line: 495, column: 5, scope: !1085)
!1114 = !DILocation(line: 495, column: 12, scope: !1085)
!1115 = !DILocation(line: 495, column: 20, scope: !1085)
!1116 = !DILocation(line: 496, column: 5, scope: !1085)
!1117 = !DILocation(line: 496, column: 12, scope: !1085)
!1118 = !DILocation(line: 496, column: 22, scope: !1085)
!1119 = !{!604, !605, i64 12}
!1120 = !DILocation(line: 497, column: 5, scope: !1085)
!1121 = !DILocation(line: 499, column: 17, scope: !293)
!1122 = !DILocation(line: 499, column: 24, scope: !293)
!1123 = !DILocation(line: 499, column: 10, scope: !293)
!1124 = !DILocation(line: 499, column: 3, scope: !293)
!1125 = !DILocation(line: 500, column: 1, scope: !293)
!1126 = !DILocation(line: 578, column: 23, scope: !230)
!1127 = !DILocation(line: 579, column: 13, scope: !230)
!1128 = !DILocation(line: 580, column: 21, scope: !230)
!1129 = !DILocation(line: 581, column: 21, scope: !230)
!1130 = !DILocation(line: 582, column: 25, scope: !230)
!1131 = !DILocation(line: 584, column: 11, scope: !230)
!1132 = !DILocation(line: 586, column: 5, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !230, file: !72, line: 584, column: 16)
!1134 = !DILocation(line: 588, column: 12, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1133, file: !72, line: 588, column: 9)
!1136 = !DILocation(line: 588, column: 18, scope: !1135)
!1137 = !DILocation(line: 588, column: 36, scope: !1135)
!1138 = !DILocation(line: 588, column: 41, scope: !1135)
!1139 = !DILocation(line: 588, column: 46, scope: !1135)
!1140 = !DILocation(line: 588, column: 10, scope: !1135)
!1141 = !DILocation(line: 588, column: 9, scope: !1133)
!1142 = !DILocation(line: 589, column: 7, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1135, file: !72, line: 588, column: 64)
!1144 = !DILocation(line: 589, column: 14, scope: !1143)
!1145 = !DILocation(line: 589, column: 22, scope: !1143)
!1146 = !DILocation(line: 590, column: 7, scope: !1143)
!1147 = !DILocation(line: 592, column: 12, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1133, file: !72, line: 592, column: 9)
!1149 = !DILocation(line: 592, column: 18, scope: !1148)
!1150 = !DILocation(line: 592, column: 36, scope: !1148)
!1151 = !DILocation(line: 592, column: 41, scope: !1148)
!1152 = !DILocation(line: 592, column: 46, scope: !1148)
!1153 = !DILocation(line: 592, column: 10, scope: !1148)
!1154 = !DILocation(line: 592, column: 9, scope: !1133)
!1155 = !DILocation(line: 593, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1148, file: !72, line: 592, column: 64)
!1157 = !DILocation(line: 593, column: 14, scope: !1156)
!1158 = !DILocation(line: 593, column: 22, scope: !1156)
!1159 = !DILocation(line: 594, column: 7, scope: !1156)
!1160 = !DILocation(line: 596, column: 5, scope: !1133)
!1161 = !DILocation(line: 598, column: 5, scope: !1133)
!1162 = !DILocation(line: 598, column: 12, scope: !1133)
!1163 = !DILocation(line: 598, column: 20, scope: !1133)
!1164 = !DILocation(line: 599, column: 5, scope: !1133)
!1165 = !DILocation(line: 599, column: 12, scope: !1133)
!1166 = !DILocation(line: 599, column: 22, scope: !1133)
!1167 = !DILocation(line: 600, column: 5, scope: !1133)
!1168 = !DILocation(line: 602, column: 17, scope: !230)
!1169 = !DILocation(line: 602, column: 24, scope: !230)
!1170 = !DILocation(line: 602, column: 10, scope: !230)
!1171 = !DILocation(line: 602, column: 3, scope: !230)
!1172 = !DILocation(line: 603, column: 1, scope: !230)
!1173 = !DILocation(line: 623, column: 23, scope: !237)
!1174 = !DILocation(line: 624, column: 13, scope: !237)
!1175 = !DILocation(line: 625, column: 21, scope: !237)
!1176 = !DILocation(line: 626, column: 21, scope: !237)
!1177 = !DILocation(line: 627, column: 25, scope: !237)
!1178 = !DILocation(line: 629, column: 11, scope: !237)
!1179 = !DILocation(line: 631, column: 5, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !237, file: !72, line: 629, column: 16)
!1181 = !DILocation(line: 633, column: 5, scope: !1180)
!1182 = !DILocation(line: 633, column: 12, scope: !1180)
!1183 = !DILocation(line: 633, column: 20, scope: !1180)
!1184 = !DILocation(line: 634, column: 5, scope: !1180)
!1185 = !DILocation(line: 636, column: 17, scope: !237)
!1186 = !DILocation(line: 636, column: 24, scope: !237)
!1187 = !DILocation(line: 636, column: 10, scope: !237)
!1188 = !DILocation(line: 636, column: 3, scope: !237)
!1189 = !DILocation(line: 637, column: 1, scope: !237)
!1190 = !DILocation(line: 606, column: 23, scope: !279)
!1191 = !DILocation(line: 607, column: 13, scope: !279)
!1192 = !DILocation(line: 608, column: 21, scope: !279)
!1193 = !DILocation(line: 609, column: 21, scope: !279)
!1194 = !DILocation(line: 610, column: 25, scope: !279)
!1195 = !DILocation(line: 612, column: 11, scope: !279)
!1196 = !DILocation(line: 614, column: 5, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !279, file: !72, line: 612, column: 16)
!1198 = !DILocation(line: 616, column: 5, scope: !1197)
!1199 = !DILocation(line: 616, column: 12, scope: !1197)
!1200 = !DILocation(line: 616, column: 20, scope: !1197)
!1201 = !DILocation(line: 617, column: 5, scope: !1197)
!1202 = !DILocation(line: 619, column: 17, scope: !279)
!1203 = !DILocation(line: 619, column: 24, scope: !279)
!1204 = !DILocation(line: 619, column: 10, scope: !279)
!1205 = !DILocation(line: 619, column: 3, scope: !279)
!1206 = !DILocation(line: 620, column: 1, scope: !279)
!1207 = !DILocation(line: 1278, column: 25, scope: !286)
!1208 = !DILocation(line: 1279, column: 15, scope: !286)
!1209 = !DILocation(line: 1280, column: 23, scope: !286)
!1210 = !DILocation(line: 1281, column: 23, scope: !286)
!1211 = !DILocation(line: 1282, column: 27, scope: !286)
!1212 = !DILocation(line: 1284, column: 11, scope: !286)
!1213 = !DILocation(line: 1286, column: 12, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !286, file: !72, line: 1284, column: 16)
!1215 = !DILocation(line: 1286, column: 19, scope: !1214)
!1216 = !DILocation(line: 1286, column: 5, scope: !1214)
!1217 = !DILocation(line: 1288, column: 27, scope: !1214)
!1218 = !DILocation(line: 1288, column: 35, scope: !1214)
!1219 = !DILocation(line: 1288, column: 26, scope: !1214)
!1220 = !DILocation(line: 1288, column: 7, scope: !1214)
!1221 = !DILocation(line: 1288, column: 15, scope: !1214)
!1222 = !DILocation(line: 1288, column: 23, scope: !1214)
!1223 = !DILocation(line: 1289, column: 12, scope: !1214)
!1224 = !DILocation(line: 1289, column: 19, scope: !1214)
!1225 = !DILocation(line: 1289, column: 5, scope: !1214)
!1226 = !DILocation(line: 1291, column: 17, scope: !286)
!1227 = !DILocation(line: 1291, column: 24, scope: !286)
!1228 = !DILocation(line: 1291, column: 10, scope: !286)
!1229 = !DILocation(line: 1291, column: 3, scope: !286)
!1230 = !DILocation(line: 1292, column: 1, scope: !286)
!1231 = !DILocation(line: 640, column: 24, scope: !244)
!1232 = !DILocation(line: 641, column: 14, scope: !244)
!1233 = !DILocation(line: 642, column: 22, scope: !244)
!1234 = !DILocation(line: 643, column: 22, scope: !244)
!1235 = !DILocation(line: 644, column: 26, scope: !244)
!1236 = !DILocation(line: 646, column: 11, scope: !244)
!1237 = !DILocation(line: 648, column: 5, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !244, file: !72, line: 646, column: 16)
!1239 = !DILocation(line: 650, column: 27, scope: !1238)
!1240 = !DILocation(line: 650, column: 35, scope: !1238)
!1241 = !DILocation(line: 650, column: 26, scope: !1238)
!1242 = !DILocation(line: 650, column: 7, scope: !1238)
!1243 = !DILocation(line: 650, column: 15, scope: !1238)
!1244 = !DILocation(line: 650, column: 23, scope: !1238)
!1245 = !DILocation(line: 651, column: 5, scope: !1238)
!1246 = !DILocation(line: 653, column: 17, scope: !244)
!1247 = !DILocation(line: 653, column: 24, scope: !244)
!1248 = !DILocation(line: 653, column: 10, scope: !244)
!1249 = !DILocation(line: 653, column: 3, scope: !244)
!1250 = !DILocation(line: 654, column: 1, scope: !244)
!1251 = !DILocation(line: 406, column: 31, scope: !251)
!1252 = !DILocation(line: 407, column: 21, scope: !251)
!1253 = !DILocation(line: 408, column: 29, scope: !251)
!1254 = !DILocation(line: 409, column: 29, scope: !251)
!1255 = !DILocation(line: 410, column: 33, scope: !251)
!1256 = !DILocation(line: 412, column: 11, scope: !251)
!1257 = !DILocation(line: 414, column: 5, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !251, file: !72, line: 412, column: 16)
!1259 = !DILocation(line: 414, column: 12, scope: !1258)
!1260 = !DILocation(line: 414, column: 20, scope: !1258)
!1261 = !DILocation(line: 415, column: 5, scope: !1258)
!1262 = !DILocation(line: 417, column: 9, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1258, file: !72, line: 417, column: 9)
!1264 = !DILocation(line: 417, column: 16, scope: !1263)
!1265 = !DILocation(line: 417, column: 29, scope: !1263)
!1266 = !DILocation(line: 417, column: 9, scope: !1258)
!1267 = !DILocation(line: 418, column: 7, scope: !1263)
!1268 = !DILocation(line: 419, column: 5, scope: !1258)
!1269 = !DILocation(line: 419, column: 12, scope: !1258)
!1270 = !DILocation(line: 419, column: 25, scope: !1258)
!1271 = !DILocation(line: 420, column: 5, scope: !1258)
!1272 = !DILocation(line: 422, column: 5, scope: !1258)
!1273 = !DILocation(line: 426, column: 9, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1258, file: !72, line: 426, column: 9)
!1275 = !DILocation(line: 426, column: 16, scope: !1274)
!1276 = !DILocation(line: 426, column: 9, scope: !1258)
!1277 = !DILocation(line: 427, column: 7, scope: !1274)
!1278 = !DILocation(line: 428, column: 5, scope: !1258)
!1279 = !DILocation(line: 430, column: 27, scope: !1258)
!1280 = !DILocation(line: 430, column: 34, scope: !1258)
!1281 = !DILocation(line: 430, column: 39, scope: !1258)
!1282 = !DILocation(line: 430, column: 44, scope: !1258)
!1283 = !DILocation(line: 430, column: 49, scope: !1258)
!1284 = !DILocation(line: 430, column: 12, scope: !1258)
!1285 = !DILocation(line: 430, column: 5, scope: !1258)
!1286 = !DILocation(line: 432, column: 17, scope: !251)
!1287 = !DILocation(line: 432, column: 24, scope: !251)
!1288 = !DILocation(line: 432, column: 10, scope: !251)
!1289 = !DILocation(line: 432, column: 3, scope: !251)
!1290 = !DILocation(line: 433, column: 1, scope: !251)
!1291 = !DILocation(line: 1217, column: 25, scope: !258)
!1292 = !DILocation(line: 1218, column: 15, scope: !258)
!1293 = !DILocation(line: 1219, column: 23, scope: !258)
!1294 = !DILocation(line: 1220, column: 23, scope: !258)
!1295 = !DILocation(line: 1221, column: 27, scope: !258)
!1296 = !DILocation(line: 1223, column: 11, scope: !258)
!1297 = !DILocation(line: 1225, column: 5, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !258, file: !72, line: 1223, column: 16)
!1299 = !DILocation(line: 1227, column: 12, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1298, file: !72, line: 1227, column: 9)
!1301 = !DILocation(line: 1227, column: 18, scope: !1300)
!1302 = !DILocation(line: 1227, column: 36, scope: !1300)
!1303 = !DILocation(line: 1227, column: 41, scope: !1300)
!1304 = !DILocation(line: 1227, column: 46, scope: !1300)
!1305 = !DILocation(line: 1227, column: 10, scope: !1300)
!1306 = !DILocation(line: 1227, column: 9, scope: !1298)
!1307 = !DILocation(line: 1228, column: 7, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1300, file: !72, line: 1227, column: 65)
!1309 = !DILocation(line: 1228, column: 14, scope: !1308)
!1310 = !DILocation(line: 1228, column: 22, scope: !1308)
!1311 = !DILocation(line: 1229, column: 7, scope: !1308)
!1312 = !DILocation(line: 1231, column: 12, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1298, file: !72, line: 1231, column: 9)
!1314 = !DILocation(line: 1231, column: 18, scope: !1313)
!1315 = !DILocation(line: 1231, column: 36, scope: !1313)
!1316 = !DILocation(line: 1231, column: 41, scope: !1313)
!1317 = !DILocation(line: 1231, column: 46, scope: !1313)
!1318 = !DILocation(line: 1231, column: 10, scope: !1313)
!1319 = !DILocation(line: 1231, column: 9, scope: !1298)
!1320 = !DILocation(line: 1232, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1313, file: !72, line: 1231, column: 64)
!1322 = !DILocation(line: 1232, column: 14, scope: !1321)
!1323 = !DILocation(line: 1232, column: 22, scope: !1321)
!1324 = !DILocation(line: 1233, column: 7, scope: !1321)
!1325 = !DILocation(line: 1235, column: 5, scope: !1298)
!1326 = !DILocation(line: 1237, column: 17, scope: !258)
!1327 = !DILocation(line: 1237, column: 24, scope: !258)
!1328 = !DILocation(line: 1237, column: 10, scope: !258)
!1329 = !DILocation(line: 1237, column: 3, scope: !258)
!1330 = !DILocation(line: 1238, column: 1, scope: !258)
!1331 = !DILocation(line: 1241, column: 25, scope: !265)
!1332 = !DILocation(line: 1242, column: 15, scope: !265)
!1333 = !DILocation(line: 1243, column: 23, scope: !265)
!1334 = !DILocation(line: 1244, column: 23, scope: !265)
!1335 = !DILocation(line: 1245, column: 27, scope: !265)
!1336 = !DILocation(line: 1247, column: 11, scope: !265)
!1337 = !DILocation(line: 1249, column: 5, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !265, file: !72, line: 1247, column: 16)
!1339 = !DILocation(line: 1251, column: 5, scope: !1338)
!1340 = !DILocation(line: 1251, column: 12, scope: !1338)
!1341 = !DILocation(line: 1251, column: 20, scope: !1338)
!1342 = !DILocation(line: 1252, column: 5, scope: !1338)
!1343 = !DILocation(line: 1252, column: 12, scope: !1338)
!1344 = !DILocation(line: 1252, column: 25, scope: !1338)
!1345 = !DILocation(line: 1253, column: 5, scope: !1338)
!1346 = !DILocation(line: 1255, column: 17, scope: !265)
!1347 = !DILocation(line: 1255, column: 24, scope: !265)
!1348 = !DILocation(line: 1255, column: 10, scope: !265)
!1349 = !DILocation(line: 1255, column: 3, scope: !265)
!1350 = !DILocation(line: 1256, column: 1, scope: !265)
!1351 = !DILocation(line: 1259, column: 25, scope: !272)
!1352 = !DILocation(line: 1260, column: 15, scope: !272)
!1353 = !DILocation(line: 1261, column: 23, scope: !272)
!1354 = !DILocation(line: 1262, column: 23, scope: !272)
!1355 = !DILocation(line: 1263, column: 27, scope: !272)
!1356 = !DILocation(line: 1265, column: 11, scope: !272)
!1357 = !DILocation(line: 1267, column: 5, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !272, file: !72, line: 1265, column: 16)
!1359 = !DILocation(line: 1269, column: 5, scope: !1358)
!1360 = !DILocation(line: 1269, column: 12, scope: !1358)
!1361 = !DILocation(line: 1269, column: 20, scope: !1358)
!1362 = !DILocation(line: 1270, column: 5, scope: !1358)
!1363 = !DILocation(line: 1272, column: 17, scope: !272)
!1364 = !DILocation(line: 1272, column: 24, scope: !272)
!1365 = !DILocation(line: 1272, column: 10, scope: !272)
!1366 = !DILocation(line: 1272, column: 3, scope: !272)
!1367 = !DILocation(line: 1273, column: 1, scope: !272)
!1368 = !DILocation(line: 520, column: 23, scope: !300)
!1369 = !DILocation(line: 521, column: 13, scope: !300)
!1370 = !DILocation(line: 522, column: 21, scope: !300)
!1371 = !DILocation(line: 523, column: 21, scope: !300)
!1372 = !DILocation(line: 524, column: 25, scope: !300)
!1373 = !DILocation(line: 526, column: 11, scope: !300)
!1374 = !DILocation(line: 528, column: 5, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !300, file: !72, line: 526, column: 16)
!1376 = !DILocation(line: 530, column: 5, scope: !1375)
!1377 = !DILocation(line: 530, column: 12, scope: !1375)
!1378 = !DILocation(line: 530, column: 20, scope: !1375)
!1379 = !DILocation(line: 531, column: 5, scope: !1375)
!1380 = !DILocation(line: 533, column: 17, scope: !300)
!1381 = !DILocation(line: 533, column: 24, scope: !300)
!1382 = !DILocation(line: 533, column: 10, scope: !300)
!1383 = !DILocation(line: 533, column: 3, scope: !300)
!1384 = !DILocation(line: 534, column: 1, scope: !300)
!1385 = !DILocation(line: 503, column: 23, scope: !321)
!1386 = !DILocation(line: 504, column: 13, scope: !321)
!1387 = !DILocation(line: 505, column: 21, scope: !321)
!1388 = !DILocation(line: 506, column: 21, scope: !321)
!1389 = !DILocation(line: 507, column: 25, scope: !321)
!1390 = !DILocation(line: 509, column: 11, scope: !321)
!1391 = !DILocation(line: 511, column: 5, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !321, file: !72, line: 509, column: 16)
!1393 = !DILocation(line: 513, column: 5, scope: !1392)
!1394 = !DILocation(line: 513, column: 12, scope: !1392)
!1395 = !DILocation(line: 513, column: 20, scope: !1392)
!1396 = !DILocation(line: 514, column: 5, scope: !1392)
!1397 = !DILocation(line: 516, column: 17, scope: !321)
!1398 = !DILocation(line: 516, column: 24, scope: !321)
!1399 = !DILocation(line: 516, column: 10, scope: !321)
!1400 = !DILocation(line: 516, column: 3, scope: !321)
!1401 = !DILocation(line: 517, column: 1, scope: !321)
!1402 = !DILocation(line: 537, column: 23, scope: !307)
!1403 = !DILocation(line: 538, column: 13, scope: !307)
!1404 = !DILocation(line: 539, column: 21, scope: !307)
!1405 = !DILocation(line: 540, column: 21, scope: !307)
!1406 = !DILocation(line: 541, column: 25, scope: !307)
!1407 = !DILocation(line: 543, column: 11, scope: !307)
!1408 = !DILocation(line: 545, column: 5, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !307, file: !72, line: 543, column: 16)
!1410 = !DILocation(line: 547, column: 27, scope: !1409)
!1411 = !DILocation(line: 547, column: 35, scope: !1409)
!1412 = !DILocation(line: 547, column: 26, scope: !1409)
!1413 = !DILocation(line: 547, column: 7, scope: !1409)
!1414 = !DILocation(line: 547, column: 15, scope: !1409)
!1415 = !DILocation(line: 547, column: 23, scope: !1409)
!1416 = !DILocation(line: 548, column: 5, scope: !1409)
!1417 = !DILocation(line: 550, column: 12, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1409, file: !72, line: 550, column: 9)
!1419 = !DILocation(line: 550, column: 18, scope: !1418)
!1420 = !DILocation(line: 550, column: 36, scope: !1418)
!1421 = !DILocation(line: 550, column: 41, scope: !1418)
!1422 = !DILocation(line: 550, column: 46, scope: !1418)
!1423 = !DILocation(line: 550, column: 10, scope: !1418)
!1424 = !DILocation(line: 550, column: 9, scope: !1409)
!1425 = !DILocation(line: 551, column: 7, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1418, file: !72, line: 550, column: 63)
!1427 = !DILocation(line: 551, column: 14, scope: !1426)
!1428 = !DILocation(line: 551, column: 22, scope: !1426)
!1429 = !DILocation(line: 552, column: 7, scope: !1426)
!1430 = !DILocation(line: 554, column: 5, scope: !1409)
!1431 = !DILocation(line: 556, column: 17, scope: !307)
!1432 = !DILocation(line: 556, column: 24, scope: !307)
!1433 = !DILocation(line: 556, column: 10, scope: !307)
!1434 = !DILocation(line: 556, column: 3, scope: !307)
!1435 = !DILocation(line: 557, column: 1, scope: !307)
!1436 = !DILocation(line: 560, column: 23, scope: !314)
!1437 = !DILocation(line: 561, column: 13, scope: !314)
!1438 = !DILocation(line: 562, column: 21, scope: !314)
!1439 = !DILocation(line: 563, column: 21, scope: !314)
!1440 = !DILocation(line: 564, column: 25, scope: !314)
!1441 = !DILocation(line: 566, column: 11, scope: !314)
!1442 = !DILocation(line: 568, column: 5, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !314, file: !72, line: 566, column: 16)
!1444 = !DILocation(line: 570, column: 5, scope: !1443)
!1445 = !DILocation(line: 570, column: 12, scope: !1443)
!1446 = !DILocation(line: 570, column: 20, scope: !1443)
!1447 = !DILocation(line: 571, column: 5, scope: !1443)
!1448 = !DILocation(line: 571, column: 12, scope: !1443)
!1449 = !DILocation(line: 571, column: 22, scope: !1443)
!1450 = !DILocation(line: 572, column: 5, scope: !1443)
!1451 = !DILocation(line: 574, column: 17, scope: !314)
!1452 = !DILocation(line: 574, column: 24, scope: !314)
!1453 = !DILocation(line: 574, column: 10, scope: !314)
!1454 = !DILocation(line: 574, column: 3, scope: !314)
!1455 = !DILocation(line: 575, column: 1, scope: !314)
!1456 = !DILocation(line: 772, column: 24, scope: !335)
!1457 = !DILocation(line: 773, column: 14, scope: !335)
!1458 = !DILocation(line: 774, column: 22, scope: !335)
!1459 = !DILocation(line: 775, column: 22, scope: !335)
!1460 = !DILocation(line: 776, column: 26, scope: !335)
!1461 = !DILocation(line: 778, column: 11, scope: !335)
!1462 = !DILocation(line: 780, column: 5, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !335, file: !72, line: 778, column: 16)
!1464 = !DILocation(line: 782, column: 27, scope: !1463)
!1465 = !DILocation(line: 782, column: 35, scope: !1463)
!1466 = !DILocation(line: 782, column: 26, scope: !1463)
!1467 = !DILocation(line: 782, column: 7, scope: !1463)
!1468 = !DILocation(line: 782, column: 15, scope: !1463)
!1469 = !DILocation(line: 782, column: 23, scope: !1463)
!1470 = !DILocation(line: 783, column: 5, scope: !1463)
!1471 = !DILocation(line: 786, column: 5, scope: !1463)
!1472 = !DILocation(line: 786, column: 12, scope: !1463)
!1473 = !DILocation(line: 786, column: 20, scope: !1463)
!1474 = !DILocation(line: 787, column: 5, scope: !1463)
!1475 = !DILocation(line: 789, column: 17, scope: !335)
!1476 = !DILocation(line: 789, column: 24, scope: !335)
!1477 = !DILocation(line: 789, column: 10, scope: !335)
!1478 = !DILocation(line: 789, column: 3, scope: !335)
!1479 = !DILocation(line: 790, column: 1, scope: !335)
!1480 = !DILocation(line: 793, column: 24, scope: !342)
!1481 = !DILocation(line: 794, column: 14, scope: !342)
!1482 = !DILocation(line: 795, column: 22, scope: !342)
!1483 = !DILocation(line: 796, column: 22, scope: !342)
!1484 = !DILocation(line: 797, column: 26, scope: !342)
!1485 = !DILocation(line: 799, column: 11, scope: !342)
!1486 = !DILocation(line: 801, column: 5, scope: !351)
!1487 = !DILocation(line: 814, column: 7, scope: !350)
!1488 = !DILocation(line: 814, column: 11, scope: !350)
!1489 = !DILocation(line: 815, column: 14, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !350, file: !72, line: 815, column: 7)
!1491 = !DILocation(line: 815, column: 12, scope: !1490)
!1492 = !DILocation(line: 815, column: 19, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1494, file: !72, discriminator: 2)
!1494 = !DILexicalBlockFile(scope: !1495, file: !72, discriminator: 1)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !72, line: 815, column: 7)
!1496 = !DILocation(line: 815, column: 21, scope: !1495)
!1497 = !DILocation(line: 815, column: 7, scope: !1490)
!1498 = !DILocation(line: 816, column: 16, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !72, line: 816, column: 13)
!1500 = !DILocation(line: 816, column: 22, scope: !1499)
!1501 = !DILocation(line: 816, column: 40, scope: !1499)
!1502 = !DILocation(line: 816, column: 45, scope: !1499)
!1503 = !DILocation(line: 816, column: 50, scope: !1499)
!1504 = !DILocation(line: 816, column: 61, scope: !1499)
!1505 = !DILocation(line: 816, column: 55, scope: !1499)
!1506 = !DILocation(line: 816, column: 14, scope: !1499)
!1507 = !DILocation(line: 816, column: 13, scope: !1495)
!1508 = !DILocation(line: 817, column: 11, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1499, file: !72, line: 816, column: 67)
!1510 = !DILocation(line: 817, column: 18, scope: !1509)
!1511 = !DILocation(line: 817, column: 26, scope: !1509)
!1512 = !DILocation(line: 818, column: 50, scope: !1509)
!1513 = !DILocation(line: 818, column: 48, scope: !1509)
!1514 = !DILocation(line: 818, column: 11, scope: !1509)
!1515 = !DILocation(line: 816, column: 64, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1499, file: !72, discriminator: 1)
!1517 = !DILocation(line: 815, column: 63, scope: !1495)
!1518 = !DILocation(line: 815, column: 7, scope: !1495)
!1519 = !DILocation(line: 820, column: 5, scope: !351)
!1520 = !DILocation(line: 820, column: 5, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !351, file: !72, discriminator: 1)
!1522 = !DILocation(line: 821, column: 12, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !351, file: !72, line: 821, column: 9)
!1524 = !DILocation(line: 821, column: 18, scope: !1523)
!1525 = !DILocation(line: 821, column: 36, scope: !1523)
!1526 = !DILocation(line: 821, column: 41, scope: !1523)
!1527 = !DILocation(line: 821, column: 46, scope: !1523)
!1528 = !DILocation(line: 821, column: 10, scope: !1523)
!1529 = !DILocation(line: 821, column: 9, scope: !351)
!1530 = !DILocation(line: 822, column: 7, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1523, file: !72, line: 821, column: 66)
!1532 = !DILocation(line: 822, column: 14, scope: !1531)
!1533 = !DILocation(line: 822, column: 22, scope: !1531)
!1534 = !DILocation(line: 823, column: 7, scope: !1531)
!1535 = !DILocation(line: 825, column: 5, scope: !351)
!1536 = !DILocation(line: 827, column: 5, scope: !351)
!1537 = !DILocation(line: 827, column: 12, scope: !351)
!1538 = !DILocation(line: 827, column: 20, scope: !351)
!1539 = !DILocation(line: 828, column: 5, scope: !351)
!1540 = !DILocation(line: 830, column: 17, scope: !342)
!1541 = !DILocation(line: 830, column: 24, scope: !342)
!1542 = !DILocation(line: 830, column: 10, scope: !342)
!1543 = !DILocation(line: 830, column: 3, scope: !342)
!1544 = !DILocation(line: 831, column: 1, scope: !342)
!1545 = !DILocation(line: 928, column: 24, scope: !352)
!1546 = !DILocation(line: 929, column: 14, scope: !352)
!1547 = !DILocation(line: 930, column: 22, scope: !352)
!1548 = !DILocation(line: 931, column: 22, scope: !352)
!1549 = !DILocation(line: 932, column: 26, scope: !352)
!1550 = !DILocation(line: 934, column: 11, scope: !352)
!1551 = !DILocation(line: 936, column: 5, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !352, file: !72, line: 934, column: 16)
!1553 = !DILocation(line: 938, column: 12, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1552, file: !72, line: 938, column: 9)
!1555 = !DILocation(line: 938, column: 18, scope: !1554)
!1556 = !DILocation(line: 938, column: 36, scope: !1554)
!1557 = !DILocation(line: 938, column: 41, scope: !1554)
!1558 = !DILocation(line: 938, column: 49, scope: !1554)
!1559 = !DILocation(line: 938, column: 55, scope: !1554)
!1560 = !DILocation(line: 938, column: 45, scope: !1554)
!1561 = !DILocation(line: 938, column: 73, scope: !1554)
!1562 = !DILocation(line: 938, column: 10, scope: !1554)
!1563 = !DILocation(line: 938, column: 9, scope: !1552)
!1564 = !DILocation(line: 942, column: 7, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1554, file: !72, line: 938, column: 92)
!1566 = !DILocation(line: 942, column: 14, scope: !1565)
!1567 = !DILocation(line: 942, column: 22, scope: !1565)
!1568 = !DILocation(line: 943, column: 7, scope: !1565)
!1569 = !DILocation(line: 945, column: 12, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1552, file: !72, line: 945, column: 9)
!1571 = !DILocation(line: 945, column: 18, scope: !1570)
!1572 = !DILocation(line: 945, column: 36, scope: !1570)
!1573 = !DILocation(line: 945, column: 41, scope: !1570)
!1574 = !DILocation(line: 945, column: 49, scope: !1570)
!1575 = !DILocation(line: 945, column: 55, scope: !1570)
!1576 = !DILocation(line: 945, column: 45, scope: !1570)
!1577 = !DILocation(line: 945, column: 73, scope: !1570)
!1578 = !DILocation(line: 945, column: 10, scope: !1570)
!1579 = !DILocation(line: 945, column: 9, scope: !1552)
!1580 = !DILocation(line: 949, column: 7, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1570, file: !72, line: 945, column: 93)
!1582 = !DILocation(line: 949, column: 14, scope: !1581)
!1583 = !DILocation(line: 949, column: 22, scope: !1581)
!1584 = !DILocation(line: 950, column: 7, scope: !1581)
!1585 = !DILocation(line: 952, column: 12, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1552, file: !72, line: 952, column: 9)
!1587 = !DILocation(line: 952, column: 18, scope: !1586)
!1588 = !DILocation(line: 952, column: 36, scope: !1586)
!1589 = !DILocation(line: 952, column: 41, scope: !1586)
!1590 = !DILocation(line: 952, column: 49, scope: !1586)
!1591 = !DILocation(line: 952, column: 55, scope: !1586)
!1592 = !DILocation(line: 952, column: 45, scope: !1586)
!1593 = !DILocation(line: 952, column: 73, scope: !1586)
!1594 = !DILocation(line: 952, column: 10, scope: !1586)
!1595 = !DILocation(line: 952, column: 9, scope: !1552)
!1596 = !DILocation(line: 956, column: 7, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1586, file: !72, line: 952, column: 90)
!1598 = !DILocation(line: 956, column: 14, scope: !1597)
!1599 = !DILocation(line: 956, column: 22, scope: !1597)
!1600 = !DILocation(line: 957, column: 7, scope: !1597)
!1601 = !DILocation(line: 959, column: 5, scope: !1552)
!1602 = !DILocation(line: 961, column: 5, scope: !1552)
!1603 = !DILocation(line: 961, column: 12, scope: !1552)
!1604 = !DILocation(line: 961, column: 20, scope: !1552)
!1605 = !DILocation(line: 962, column: 5, scope: !1552)
!1606 = !DILocation(line: 964, column: 17, scope: !352)
!1607 = !DILocation(line: 964, column: 24, scope: !352)
!1608 = !DILocation(line: 964, column: 10, scope: !352)
!1609 = !DILocation(line: 964, column: 3, scope: !352)
!1610 = !DILocation(line: 965, column: 1, scope: !352)
!1611 = !DILocation(line: 873, column: 24, scope: !366)
!1612 = !DILocation(line: 874, column: 14, scope: !366)
!1613 = !DILocation(line: 875, column: 22, scope: !366)
!1614 = !DILocation(line: 876, column: 22, scope: !366)
!1615 = !DILocation(line: 877, column: 26, scope: !366)
!1616 = !DILocation(line: 879, column: 11, scope: !366)
!1617 = !DILocation(line: 881, column: 5, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !366, file: !72, line: 879, column: 16)
!1619 = !DILocation(line: 883, column: 5, scope: !1618)
!1620 = !DILocation(line: 883, column: 12, scope: !1618)
!1621 = !DILocation(line: 883, column: 20, scope: !1618)
!1622 = !DILocation(line: 884, column: 5, scope: !1618)
!1623 = !DILocation(line: 886, column: 17, scope: !366)
!1624 = !DILocation(line: 886, column: 24, scope: !366)
!1625 = !DILocation(line: 886, column: 10, scope: !366)
!1626 = !DILocation(line: 886, column: 3, scope: !366)
!1627 = !DILocation(line: 887, column: 1, scope: !366)
!1628 = !DILocation(line: 834, column: 24, scope: !387)
!1629 = !DILocation(line: 835, column: 14, scope: !387)
!1630 = !DILocation(line: 836, column: 22, scope: !387)
!1631 = !DILocation(line: 837, column: 22, scope: !387)
!1632 = !DILocation(line: 838, column: 26, scope: !387)
!1633 = !DILocation(line: 840, column: 11, scope: !387)
!1634 = !DILocation(line: 842, column: 5, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !387, file: !72, line: 840, column: 16)
!1636 = !DILocation(line: 846, column: 5, scope: !1635)
!1637 = !DILocation(line: 846, column: 12, scope: !1635)
!1638 = !DILocation(line: 846, column: 20, scope: !1635)
!1639 = !DILocation(line: 847, column: 5, scope: !1635)
!1640 = !DILocation(line: 849, column: 17, scope: !387)
!1641 = !DILocation(line: 849, column: 24, scope: !387)
!1642 = !DILocation(line: 849, column: 10, scope: !387)
!1643 = !DILocation(line: 849, column: 3, scope: !387)
!1644 = !DILocation(line: 850, column: 1, scope: !387)
!1645 = !DILocation(line: 968, column: 24, scope: !359)
!1646 = !DILocation(line: 969, column: 14, scope: !359)
!1647 = !DILocation(line: 970, column: 22, scope: !359)
!1648 = !DILocation(line: 971, column: 22, scope: !359)
!1649 = !DILocation(line: 972, column: 26, scope: !359)
!1650 = !DILocation(line: 974, column: 11, scope: !359)
!1651 = !DILocation(line: 976, column: 5, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !359, file: !72, line: 974, column: 16)
!1653 = !DILocation(line: 978, column: 5, scope: !1652)
!1654 = !DILocation(line: 978, column: 12, scope: !1652)
!1655 = !DILocation(line: 978, column: 20, scope: !1652)
!1656 = !DILocation(line: 979, column: 5, scope: !1652)
!1657 = !DILocation(line: 981, column: 17, scope: !359)
!1658 = !DILocation(line: 981, column: 24, scope: !359)
!1659 = !DILocation(line: 981, column: 10, scope: !359)
!1660 = !DILocation(line: 981, column: 3, scope: !359)
!1661 = !DILocation(line: 982, column: 1, scope: !359)
!1662 = !DILocation(line: 890, column: 24, scope: !373)
!1663 = !DILocation(line: 891, column: 14, scope: !373)
!1664 = !DILocation(line: 892, column: 22, scope: !373)
!1665 = !DILocation(line: 893, column: 22, scope: !373)
!1666 = !DILocation(line: 894, column: 26, scope: !373)
!1667 = !DILocation(line: 896, column: 11, scope: !373)
!1668 = !DILocation(line: 898, column: 5, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !373, file: !72, line: 896, column: 16)
!1670 = !DILocation(line: 900, column: 5, scope: !1669)
!1671 = !DILocation(line: 900, column: 12, scope: !1669)
!1672 = !DILocation(line: 900, column: 20, scope: !1669)
!1673 = !DILocation(line: 901, column: 5, scope: !1669)
!1674 = !DILocation(line: 903, column: 17, scope: !373)
!1675 = !DILocation(line: 903, column: 24, scope: !373)
!1676 = !DILocation(line: 903, column: 10, scope: !373)
!1677 = !DILocation(line: 903, column: 3, scope: !373)
!1678 = !DILocation(line: 904, column: 1, scope: !373)
!1679 = !DILocation(line: 907, column: 24, scope: !380)
!1680 = !DILocation(line: 908, column: 14, scope: !380)
!1681 = !DILocation(line: 909, column: 22, scope: !380)
!1682 = !DILocation(line: 910, column: 22, scope: !380)
!1683 = !DILocation(line: 911, column: 26, scope: !380)
!1684 = !DILocation(line: 913, column: 11, scope: !380)
!1685 = !DILocation(line: 915, column: 5, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !380, file: !72, line: 913, column: 16)
!1687 = !DILocation(line: 917, column: 5, scope: !1686)
!1688 = !DILocation(line: 917, column: 12, scope: !1686)
!1689 = !DILocation(line: 917, column: 20, scope: !1686)
!1690 = !DILocation(line: 918, column: 5, scope: !1686)
!1691 = !DILocation(line: 920, column: 5, scope: !1686)
!1692 = !DILocation(line: 920, column: 12, scope: !1686)
!1693 = !DILocation(line: 920, column: 20, scope: !1686)
!1694 = !DILocation(line: 921, column: 5, scope: !1686)
!1695 = !DILocation(line: 923, column: 17, scope: !380)
!1696 = !DILocation(line: 923, column: 24, scope: !380)
!1697 = !DILocation(line: 923, column: 10, scope: !380)
!1698 = !DILocation(line: 923, column: 3, scope: !380)
!1699 = !DILocation(line: 924, column: 1, scope: !380)
!1700 = !DILocation(line: 853, column: 24, scope: !394)
!1701 = !DILocation(line: 854, column: 14, scope: !394)
!1702 = !DILocation(line: 855, column: 22, scope: !394)
!1703 = !DILocation(line: 856, column: 22, scope: !394)
!1704 = !DILocation(line: 857, column: 26, scope: !394)
!1705 = !DILocation(line: 859, column: 11, scope: !394)
!1706 = !DILocation(line: 861, column: 5, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !394, file: !72, line: 859, column: 16)
!1708 = !DILocation(line: 863, column: 5, scope: !1707)
!1709 = !DILocation(line: 863, column: 12, scope: !1707)
!1710 = !DILocation(line: 863, column: 20, scope: !1707)
!1711 = !DILocation(line: 864, column: 5, scope: !1707)
!1712 = !DILocation(line: 866, column: 5, scope: !1707)
!1713 = !DILocation(line: 866, column: 12, scope: !1707)
!1714 = !DILocation(line: 866, column: 20, scope: !1707)
!1715 = !DILocation(line: 867, column: 5, scope: !1707)
!1716 = !DILocation(line: 869, column: 17, scope: !394)
!1717 = !DILocation(line: 869, column: 24, scope: !394)
!1718 = !DILocation(line: 869, column: 10, scope: !394)
!1719 = !DILocation(line: 869, column: 3, scope: !394)
!1720 = !DILocation(line: 870, column: 1, scope: !394)
!1721 = !DILocation(line: 1003, column: 24, scope: !408)
!1722 = !DILocation(line: 1004, column: 14, scope: !408)
!1723 = !DILocation(line: 1005, column: 22, scope: !408)
!1724 = !DILocation(line: 1006, column: 22, scope: !408)
!1725 = !DILocation(line: 1007, column: 26, scope: !408)
!1726 = !DILocation(line: 1009, column: 11, scope: !408)
!1727 = !DILocation(line: 1011, column: 5, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !408, file: !72, line: 1009, column: 16)
!1729 = !DILocation(line: 1013, column: 12, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1728, file: !72, line: 1013, column: 9)
!1731 = !DILocation(line: 1013, column: 18, scope: !1730)
!1732 = !DILocation(line: 1013, column: 36, scope: !1730)
!1733 = !DILocation(line: 1013, column: 41, scope: !1730)
!1734 = !DILocation(line: 1013, column: 46, scope: !1730)
!1735 = !DILocation(line: 1013, column: 10, scope: !1730)
!1736 = !DILocation(line: 1013, column: 9, scope: !1728)
!1737 = !DILocation(line: 1014, column: 7, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1730, file: !72, line: 1013, column: 63)
!1739 = !DILocation(line: 1014, column: 14, scope: !1738)
!1740 = !DILocation(line: 1014, column: 22, scope: !1738)
!1741 = !DILocation(line: 1015, column: 7, scope: !1738)
!1742 = !DILocation(line: 1015, column: 14, scope: !1738)
!1743 = !DILocation(line: 1015, column: 24, scope: !1738)
!1744 = !DILocation(line: 1016, column: 7, scope: !1738)
!1745 = !DILocation(line: 1018, column: 12, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1728, file: !72, line: 1018, column: 9)
!1747 = !DILocation(line: 1018, column: 18, scope: !1746)
!1748 = !DILocation(line: 1018, column: 36, scope: !1746)
!1749 = !DILocation(line: 1018, column: 41, scope: !1746)
!1750 = !DILocation(line: 1018, column: 46, scope: !1746)
!1751 = !DILocation(line: 1018, column: 10, scope: !1746)
!1752 = !DILocation(line: 1018, column: 9, scope: !1728)
!1753 = !DILocation(line: 1019, column: 7, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1746, file: !72, line: 1018, column: 61)
!1755 = !DILocation(line: 1019, column: 14, scope: !1754)
!1756 = !DILocation(line: 1019, column: 22, scope: !1754)
!1757 = !DILocation(line: 1020, column: 7, scope: !1754)
!1758 = !DILocation(line: 1020, column: 14, scope: !1754)
!1759 = !DILocation(line: 1020, column: 24, scope: !1754)
!1760 = !DILocation(line: 1021, column: 7, scope: !1754)
!1761 = !DILocation(line: 1023, column: 5, scope: !1728)
!1762 = !DILocation(line: 1025, column: 5, scope: !1728)
!1763 = !DILocation(line: 1025, column: 12, scope: !1728)
!1764 = !DILocation(line: 1025, column: 20, scope: !1728)
!1765 = !DILocation(line: 1026, column: 5, scope: !1728)
!1766 = !DILocation(line: 1026, column: 12, scope: !1728)
!1767 = !DILocation(line: 1026, column: 18, scope: !1728)
!1768 = !{!604, !605, i64 8}
!1769 = !DILocation(line: 1027, column: 5, scope: !1728)
!1770 = !DILocation(line: 1029, column: 17, scope: !408)
!1771 = !DILocation(line: 1029, column: 24, scope: !408)
!1772 = !DILocation(line: 1029, column: 10, scope: !408)
!1773 = !DILocation(line: 1029, column: 3, scope: !408)
!1774 = !DILocation(line: 1030, column: 1, scope: !408)
!1775 = !DILocation(line: 1033, column: 24, scope: !415)
!1776 = !DILocation(line: 1034, column: 14, scope: !415)
!1777 = !DILocation(line: 1035, column: 22, scope: !415)
!1778 = !DILocation(line: 1036, column: 22, scope: !415)
!1779 = !DILocation(line: 1037, column: 26, scope: !415)
!1780 = !DILocation(line: 1039, column: 11, scope: !415)
!1781 = !DILocation(line: 1041, column: 5, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !415, file: !72, line: 1039, column: 16)
!1783 = !DILocation(line: 1043, column: 12, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1782, file: !72, line: 1043, column: 9)
!1785 = !DILocation(line: 1043, column: 18, scope: !1784)
!1786 = !DILocation(line: 1043, column: 36, scope: !1784)
!1787 = !DILocation(line: 1043, column: 41, scope: !1784)
!1788 = !DILocation(line: 1043, column: 49, scope: !1784)
!1789 = !DILocation(line: 1043, column: 55, scope: !1784)
!1790 = !DILocation(line: 1043, column: 45, scope: !1784)
!1791 = !DILocation(line: 1043, column: 73, scope: !1784)
!1792 = !DILocation(line: 1043, column: 10, scope: !1784)
!1793 = !DILocation(line: 1043, column: 9, scope: !1782)
!1794 = !DILocation(line: 1047, column: 7, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1784, file: !72, line: 1043, column: 91)
!1796 = !DILocation(line: 1047, column: 14, scope: !1795)
!1797 = !DILocation(line: 1047, column: 22, scope: !1795)
!1798 = !DILocation(line: 1048, column: 7, scope: !1795)
!1799 = !DILocation(line: 1050, column: 5, scope: !1782)
!1800 = !DILocation(line: 1052, column: 5, scope: !1782)
!1801 = !DILocation(line: 1052, column: 12, scope: !1782)
!1802 = !DILocation(line: 1052, column: 18, scope: !1782)
!1803 = !DILocation(line: 1053, column: 5, scope: !1782)
!1804 = !DILocation(line: 1053, column: 12, scope: !1782)
!1805 = !DILocation(line: 1053, column: 20, scope: !1782)
!1806 = !DILocation(line: 1054, column: 5, scope: !1782)
!1807 = !DILocation(line: 1057, column: 5, scope: !1782)
!1808 = !DILocation(line: 1057, column: 12, scope: !1782)
!1809 = !DILocation(line: 1057, column: 20, scope: !1782)
!1810 = !DILocation(line: 1058, column: 5, scope: !1782)
!1811 = !DILocation(line: 1060, column: 5, scope: !1782)
!1812 = !DILocation(line: 1060, column: 12, scope: !1782)
!1813 = !DILocation(line: 1060, column: 20, scope: !1782)
!1814 = !DILocation(line: 1061, column: 5, scope: !1782)
!1815 = !DILocation(line: 1063, column: 5, scope: !1782)
!1816 = !DILocation(line: 1063, column: 12, scope: !1782)
!1817 = !DILocation(line: 1063, column: 20, scope: !1782)
!1818 = !DILocation(line: 1064, column: 5, scope: !1782)
!1819 = !DILocation(line: 1066, column: 5, scope: !1782)
!1820 = !DILocation(line: 1066, column: 12, scope: !1782)
!1821 = !DILocation(line: 1066, column: 20, scope: !1782)
!1822 = !DILocation(line: 1067, column: 5, scope: !1782)
!1823 = !DILocation(line: 1069, column: 17, scope: !415)
!1824 = !DILocation(line: 1069, column: 24, scope: !415)
!1825 = !DILocation(line: 1069, column: 10, scope: !415)
!1826 = !DILocation(line: 1069, column: 3, scope: !415)
!1827 = !DILocation(line: 1070, column: 1, scope: !415)
!1828 = !DILocation(line: 1073, column: 24, scope: !422)
!1829 = !DILocation(line: 1074, column: 14, scope: !422)
!1830 = !DILocation(line: 1075, column: 22, scope: !422)
!1831 = !DILocation(line: 1076, column: 22, scope: !422)
!1832 = !DILocation(line: 1077, column: 26, scope: !422)
!1833 = !DILocation(line: 1079, column: 11, scope: !422)
!1834 = !DILocation(line: 1081, column: 5, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !422, file: !72, line: 1079, column: 16)
!1836 = !DILocation(line: 1083, column: 5, scope: !1835)
!1837 = !DILocation(line: 1083, column: 12, scope: !1835)
!1838 = !DILocation(line: 1083, column: 20, scope: !1835)
!1839 = !DILocation(line: 1084, column: 5, scope: !1835)
!1840 = !DILocation(line: 1084, column: 12, scope: !1835)
!1841 = !DILocation(line: 1084, column: 22, scope: !1835)
!1842 = !DILocation(line: 1085, column: 5, scope: !1835)
!1843 = !DILocation(line: 1087, column: 5, scope: !1835)
!1844 = !DILocation(line: 1087, column: 12, scope: !1835)
!1845 = !DILocation(line: 1087, column: 20, scope: !1835)
!1846 = !DILocation(line: 1088, column: 5, scope: !1835)
!1847 = !DILocation(line: 1088, column: 12, scope: !1835)
!1848 = !DILocation(line: 1088, column: 22, scope: !1835)
!1849 = !DILocation(line: 1089, column: 5, scope: !1835)
!1850 = !DILocation(line: 1091, column: 5, scope: !1835)
!1851 = !DILocation(line: 1091, column: 12, scope: !1835)
!1852 = !DILocation(line: 1091, column: 20, scope: !1835)
!1853 = !DILocation(line: 1092, column: 5, scope: !1835)
!1854 = !DILocation(line: 1094, column: 17, scope: !422)
!1855 = !DILocation(line: 1094, column: 24, scope: !422)
!1856 = !DILocation(line: 1094, column: 10, scope: !422)
!1857 = !DILocation(line: 1094, column: 3, scope: !422)
!1858 = !DILocation(line: 1095, column: 1, scope: !422)
!1859 = !DILocation(line: 1137, column: 24, scope: !443)
!1860 = !DILocation(line: 1138, column: 14, scope: !443)
!1861 = !DILocation(line: 1139, column: 22, scope: !443)
!1862 = !DILocation(line: 1140, column: 22, scope: !443)
!1863 = !DILocation(line: 1141, column: 26, scope: !443)
!1864 = !DILocation(line: 1143, column: 11, scope: !443)
!1865 = !DILocation(line: 1145, column: 5, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !443, file: !72, line: 1143, column: 16)
!1867 = !DILocation(line: 1147, column: 5, scope: !1866)
!1868 = !DILocation(line: 1147, column: 12, scope: !1866)
!1869 = !DILocation(line: 1147, column: 18, scope: !1866)
!1870 = !DILocation(line: 1148, column: 5, scope: !1866)
!1871 = !DILocation(line: 1151, column: 5, scope: !1866)
!1872 = !DILocation(line: 1151, column: 12, scope: !1866)
!1873 = !DILocation(line: 1151, column: 20, scope: !1866)
!1874 = !DILocation(line: 1152, column: 5, scope: !1866)
!1875 = !DILocation(line: 1154, column: 5, scope: !1866)
!1876 = !DILocation(line: 1154, column: 12, scope: !1866)
!1877 = !DILocation(line: 1154, column: 20, scope: !1866)
!1878 = !DILocation(line: 1155, column: 5, scope: !1866)
!1879 = !DILocation(line: 1157, column: 5, scope: !1866)
!1880 = !DILocation(line: 1157, column: 12, scope: !1866)
!1881 = !DILocation(line: 1157, column: 20, scope: !1866)
!1882 = !DILocation(line: 1158, column: 5, scope: !1866)
!1883 = !DILocation(line: 1160, column: 5, scope: !1866)
!1884 = !DILocation(line: 1160, column: 12, scope: !1866)
!1885 = !DILocation(line: 1160, column: 20, scope: !1866)
!1886 = !DILocation(line: 1161, column: 5, scope: !1866)
!1887 = !DILocation(line: 1163, column: 17, scope: !443)
!1888 = !DILocation(line: 1163, column: 24, scope: !443)
!1889 = !DILocation(line: 1163, column: 10, scope: !443)
!1890 = !DILocation(line: 1163, column: 3, scope: !443)
!1891 = !DILocation(line: 1164, column: 1, scope: !443)
!1892 = !DILocation(line: 1167, column: 24, scope: !450)
!1893 = !DILocation(line: 1168, column: 14, scope: !450)
!1894 = !DILocation(line: 1169, column: 22, scope: !450)
!1895 = !DILocation(line: 1170, column: 22, scope: !450)
!1896 = !DILocation(line: 1171, column: 26, scope: !450)
!1897 = !DILocation(line: 1173, column: 11, scope: !450)
!1898 = !DILocation(line: 1175, column: 5, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !450, file: !72, line: 1173, column: 16)
!1900 = !DILocation(line: 1177, column: 5, scope: !1899)
!1901 = !DILocation(line: 1177, column: 12, scope: !1899)
!1902 = !DILocation(line: 1177, column: 18, scope: !1899)
!1903 = !DILocation(line: 1178, column: 9, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1899, file: !72, line: 1178, column: 9)
!1905 = !DILocation(line: 1178, column: 16, scope: !1904)
!1906 = !DILocation(line: 1178, column: 22, scope: !1904)
!1907 = !DILocation(line: 1178, column: 9, scope: !1899)
!1908 = !DILocation(line: 1179, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1904, file: !72, line: 1178, column: 28)
!1910 = !DILocation(line: 1179, column: 14, scope: !1909)
!1911 = !DILocation(line: 1179, column: 22, scope: !1909)
!1912 = !DILocation(line: 1180, column: 7, scope: !1909)
!1913 = !DILocation(line: 1180, column: 14, scope: !1909)
!1914 = !DILocation(line: 1180, column: 24, scope: !1909)
!1915 = !DILocation(line: 1181, column: 5, scope: !1909)
!1916 = !DILocation(line: 1182, column: 5, scope: !1899)
!1917 = !DILocation(line: 1184, column: 5, scope: !1899)
!1918 = !DILocation(line: 1184, column: 12, scope: !1899)
!1919 = !DILocation(line: 1184, column: 18, scope: !1899)
!1920 = !DILocation(line: 1185, column: 9, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1899, file: !72, line: 1185, column: 9)
!1922 = !DILocation(line: 1185, column: 16, scope: !1921)
!1923 = !DILocation(line: 1185, column: 22, scope: !1921)
!1924 = !DILocation(line: 1185, column: 9, scope: !1899)
!1925 = !DILocation(line: 1186, column: 7, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1921, file: !72, line: 1185, column: 28)
!1927 = !DILocation(line: 1186, column: 14, scope: !1926)
!1928 = !DILocation(line: 1186, column: 22, scope: !1926)
!1929 = !DILocation(line: 1187, column: 7, scope: !1926)
!1930 = !DILocation(line: 1187, column: 14, scope: !1926)
!1931 = !DILocation(line: 1187, column: 24, scope: !1926)
!1932 = !DILocation(line: 1188, column: 5, scope: !1926)
!1933 = !DILocation(line: 1189, column: 5, scope: !1899)
!1934 = !DILocation(line: 1191, column: 5, scope: !1899)
!1935 = !DILocation(line: 1191, column: 12, scope: !1899)
!1936 = !DILocation(line: 1191, column: 18, scope: !1899)
!1937 = !DILocation(line: 1192, column: 9, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1899, file: !72, line: 1192, column: 9)
!1939 = !DILocation(line: 1192, column: 16, scope: !1938)
!1940 = !DILocation(line: 1192, column: 22, scope: !1938)
!1941 = !DILocation(line: 1192, column: 9, scope: !1899)
!1942 = !DILocation(line: 1193, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1938, file: !72, line: 1192, column: 28)
!1944 = !DILocation(line: 1193, column: 14, scope: !1943)
!1945 = !DILocation(line: 1193, column: 22, scope: !1943)
!1946 = !DILocation(line: 1194, column: 7, scope: !1943)
!1947 = !DILocation(line: 1194, column: 14, scope: !1943)
!1948 = !DILocation(line: 1194, column: 24, scope: !1943)
!1949 = !DILocation(line: 1195, column: 5, scope: !1943)
!1950 = !DILocation(line: 1196, column: 5, scope: !1899)
!1951 = !DILocation(line: 1198, column: 5, scope: !1899)
!1952 = !DILocation(line: 1198, column: 12, scope: !1899)
!1953 = !DILocation(line: 1198, column: 18, scope: !1899)
!1954 = !DILocation(line: 1199, column: 9, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1899, file: !72, line: 1199, column: 9)
!1956 = !DILocation(line: 1199, column: 16, scope: !1955)
!1957 = !DILocation(line: 1199, column: 22, scope: !1955)
!1958 = !DILocation(line: 1199, column: 9, scope: !1899)
!1959 = !DILocation(line: 1200, column: 7, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1955, file: !72, line: 1199, column: 28)
!1961 = !DILocation(line: 1200, column: 14, scope: !1960)
!1962 = !DILocation(line: 1200, column: 22, scope: !1960)
!1963 = !DILocation(line: 1201, column: 7, scope: !1960)
!1964 = !DILocation(line: 1201, column: 14, scope: !1960)
!1965 = !DILocation(line: 1201, column: 24, scope: !1960)
!1966 = !DILocation(line: 1202, column: 5, scope: !1960)
!1967 = !DILocation(line: 1203, column: 5, scope: !1899)
!1968 = !DILocation(line: 1205, column: 5, scope: !1899)
!1969 = !DILocation(line: 1205, column: 12, scope: !1899)
!1970 = !DILocation(line: 1205, column: 20, scope: !1899)
!1971 = !DILocation(line: 1206, column: 5, scope: !1899)
!1972 = !DILocation(line: 1208, column: 5, scope: !1899)
!1973 = !DILocation(line: 1208, column: 12, scope: !1899)
!1974 = !DILocation(line: 1208, column: 20, scope: !1899)
!1975 = !DILocation(line: 1209, column: 5, scope: !1899)
!1976 = !DILocation(line: 1211, column: 17, scope: !450)
!1977 = !DILocation(line: 1211, column: 24, scope: !450)
!1978 = !DILocation(line: 1211, column: 10, scope: !450)
!1979 = !DILocation(line: 1211, column: 3, scope: !450)
!1980 = !DILocation(line: 1212, column: 1, scope: !450)
!1981 = !DILocation(line: 1098, column: 24, scope: !429)
!1982 = !DILocation(line: 1099, column: 14, scope: !429)
!1983 = !DILocation(line: 1100, column: 22, scope: !429)
!1984 = !DILocation(line: 1101, column: 22, scope: !429)
!1985 = !DILocation(line: 1102, column: 26, scope: !429)
!1986 = !DILocation(line: 1104, column: 11, scope: !429)
!1987 = !DILocation(line: 1106, column: 5, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !429, file: !72, line: 1104, column: 16)
!1989 = !DILocation(line: 1109, column: 5, scope: !1988)
!1990 = !DILocation(line: 1109, column: 12, scope: !1988)
!1991 = !DILocation(line: 1109, column: 20, scope: !1988)
!1992 = !DILocation(line: 1110, column: 5, scope: !1988)
!1993 = !DILocation(line: 1112, column: 17, scope: !429)
!1994 = !DILocation(line: 1112, column: 24, scope: !429)
!1995 = !DILocation(line: 1112, column: 10, scope: !429)
!1996 = !DILocation(line: 1112, column: 3, scope: !429)
!1997 = !DILocation(line: 1113, column: 1, scope: !429)
!1998 = !DILocation(line: 1116, column: 24, scope: !436)
!1999 = !DILocation(line: 1117, column: 14, scope: !436)
!2000 = !DILocation(line: 1118, column: 22, scope: !436)
!2001 = !DILocation(line: 1119, column: 22, scope: !436)
!2002 = !DILocation(line: 1120, column: 26, scope: !436)
!2003 = !DILocation(line: 1122, column: 11, scope: !436)
!2004 = !DILocation(line: 1124, column: 5, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !436, file: !72, line: 1122, column: 16)
!2006 = !DILocation(line: 1126, column: 5, scope: !2005)
!2007 = !DILocation(line: 1126, column: 12, scope: !2005)
!2008 = !DILocation(line: 1126, column: 20, scope: !2005)
!2009 = !DILocation(line: 1127, column: 5, scope: !2005)
!2010 = !DILocation(line: 1127, column: 12, scope: !2005)
!2011 = !DILocation(line: 1127, column: 22, scope: !2005)
!2012 = !DILocation(line: 1128, column: 5, scope: !2005)
!2013 = !DILocation(line: 1130, column: 5, scope: !2005)
!2014 = !DILocation(line: 1130, column: 12, scope: !2005)
!2015 = !DILocation(line: 1130, column: 20, scope: !2005)
!2016 = !DILocation(line: 1131, column: 5, scope: !2005)
!2017 = !DILocation(line: 1133, column: 17, scope: !436)
!2018 = !DILocation(line: 1133, column: 24, scope: !436)
!2019 = !DILocation(line: 1133, column: 10, scope: !436)
!2020 = !DILocation(line: 1133, column: 3, scope: !436)
!2021 = !DILocation(line: 1134, column: 1, scope: !436)
!2022 = !DILocation(line: 674, column: 25, scope: !464)
!2023 = !DILocation(line: 675, column: 15, scope: !464)
!2024 = !DILocation(line: 676, column: 23, scope: !464)
!2025 = !DILocation(line: 677, column: 23, scope: !464)
!2026 = !DILocation(line: 678, column: 27, scope: !464)
!2027 = !DILocation(line: 680, column: 11, scope: !464)
!2028 = !DILocation(line: 682, column: 5, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !464, file: !72, line: 680, column: 16)
!2030 = !DILocation(line: 684, column: 12, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2029, file: !72, line: 684, column: 9)
!2032 = !DILocation(line: 684, column: 18, scope: !2031)
!2033 = !DILocation(line: 684, column: 36, scope: !2031)
!2034 = !DILocation(line: 684, column: 41, scope: !2031)
!2035 = !DILocation(line: 684, column: 46, scope: !2031)
!2036 = !DILocation(line: 684, column: 10, scope: !2031)
!2037 = !DILocation(line: 684, column: 9, scope: !2029)
!2038 = !DILocation(line: 685, column: 7, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2031, file: !72, line: 684, column: 64)
!2040 = !DILocation(line: 685, column: 14, scope: !2039)
!2041 = !DILocation(line: 685, column: 22, scope: !2039)
!2042 = !DILocation(line: 686, column: 7, scope: !2039)
!2043 = !DILocation(line: 688, column: 12, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2029, file: !72, line: 688, column: 9)
!2045 = !DILocation(line: 688, column: 18, scope: !2044)
!2046 = !DILocation(line: 688, column: 36, scope: !2044)
!2047 = !DILocation(line: 688, column: 41, scope: !2044)
!2048 = !DILocation(line: 688, column: 46, scope: !2044)
!2049 = !DILocation(line: 688, column: 10, scope: !2044)
!2050 = !DILocation(line: 688, column: 9, scope: !2029)
!2051 = !DILocation(line: 689, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2044, file: !72, line: 688, column: 64)
!2053 = !DILocation(line: 689, column: 14, scope: !2052)
!2054 = !DILocation(line: 689, column: 22, scope: !2052)
!2055 = !DILocation(line: 690, column: 7, scope: !2052)
!2056 = !DILocation(line: 692, column: 5, scope: !2029)
!2057 = !DILocation(line: 694, column: 17, scope: !464)
!2058 = !DILocation(line: 694, column: 24, scope: !464)
!2059 = !DILocation(line: 694, column: 10, scope: !464)
!2060 = !DILocation(line: 694, column: 3, scope: !464)
!2061 = !DILocation(line: 695, column: 1, scope: !464)
!2062 = !DILocation(line: 715, column: 25, scope: !471)
!2063 = !DILocation(line: 716, column: 15, scope: !471)
!2064 = !DILocation(line: 717, column: 23, scope: !471)
!2065 = !DILocation(line: 718, column: 23, scope: !471)
!2066 = !DILocation(line: 719, column: 27, scope: !471)
!2067 = !DILocation(line: 721, column: 11, scope: !471)
!2068 = !DILocation(line: 723, column: 5, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !471, file: !72, line: 721, column: 16)
!2070 = !DILocation(line: 725, column: 5, scope: !2069)
!2071 = !DILocation(line: 725, column: 12, scope: !2069)
!2072 = !DILocation(line: 725, column: 20, scope: !2069)
!2073 = !DILocation(line: 726, column: 5, scope: !2069)
!2074 = !DILocation(line: 726, column: 12, scope: !2069)
!2075 = !DILocation(line: 726, column: 22, scope: !2069)
!2076 = !DILocation(line: 727, column: 5, scope: !2069)
!2077 = !DILocation(line: 729, column: 17, scope: !471)
!2078 = !DILocation(line: 729, column: 24, scope: !471)
!2079 = !DILocation(line: 729, column: 10, scope: !471)
!2080 = !DILocation(line: 729, column: 3, scope: !471)
!2081 = !DILocation(line: 730, column: 1, scope: !471)
!2082 = !DILocation(line: 698, column: 25, scope: !478)
!2083 = !DILocation(line: 699, column: 15, scope: !478)
!2084 = !DILocation(line: 700, column: 23, scope: !478)
!2085 = !DILocation(line: 701, column: 23, scope: !478)
!2086 = !DILocation(line: 702, column: 27, scope: !478)
!2087 = !DILocation(line: 704, column: 11, scope: !478)
!2088 = !DILocation(line: 706, column: 5, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !478, file: !72, line: 704, column: 16)
!2090 = !DILocation(line: 708, column: 5, scope: !2089)
!2091 = !DILocation(line: 708, column: 12, scope: !2089)
!2092 = !DILocation(line: 708, column: 20, scope: !2089)
!2093 = !DILocation(line: 709, column: 5, scope: !2089)
!2094 = !DILocation(line: 711, column: 17, scope: !478)
!2095 = !DILocation(line: 711, column: 24, scope: !478)
!2096 = !DILocation(line: 711, column: 10, scope: !478)
!2097 = !DILocation(line: 711, column: 3, scope: !478)
!2098 = !DILocation(line: 712, column: 1, scope: !478)
!2099 = !DILocation(line: 733, column: 25, scope: !485)
!2100 = !DILocation(line: 734, column: 15, scope: !485)
!2101 = !DILocation(line: 735, column: 23, scope: !485)
!2102 = !DILocation(line: 736, column: 23, scope: !485)
!2103 = !DILocation(line: 737, column: 27, scope: !485)
!2104 = !DILocation(line: 739, column: 11, scope: !485)
!2105 = !DILocation(line: 741, column: 5, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !485, file: !72, line: 739, column: 16)
!2107 = !DILocation(line: 743, column: 5, scope: !2106)
!2108 = !DILocation(line: 743, column: 12, scope: !2106)
!2109 = !DILocation(line: 743, column: 20, scope: !2106)
!2110 = !DILocation(line: 744, column: 5, scope: !2106)
!2111 = !DILocation(line: 744, column: 12, scope: !2106)
!2112 = !DILocation(line: 744, column: 22, scope: !2106)
!2113 = !DILocation(line: 745, column: 5, scope: !2106)
!2114 = !DILocation(line: 747, column: 27, scope: !2106)
!2115 = !DILocation(line: 747, column: 35, scope: !2106)
!2116 = !DILocation(line: 747, column: 26, scope: !2106)
!2117 = !DILocation(line: 747, column: 7, scope: !2106)
!2118 = !DILocation(line: 747, column: 15, scope: !2106)
!2119 = !DILocation(line: 747, column: 23, scope: !2106)
!2120 = !DILocation(line: 748, column: 5, scope: !2106)
!2121 = !DILocation(line: 750, column: 17, scope: !485)
!2122 = !DILocation(line: 750, column: 24, scope: !485)
!2123 = !DILocation(line: 750, column: 10, scope: !485)
!2124 = !DILocation(line: 750, column: 3, scope: !485)
!2125 = !DILocation(line: 751, column: 1, scope: !485)
!2126 = !DILocation(line: 299, column: 24, scope: !513)
!2127 = !DILocation(line: 300, column: 14, scope: !513)
!2128 = !DILocation(line: 301, column: 22, scope: !513)
!2129 = !DILocation(line: 302, column: 22, scope: !513)
!2130 = !DILocation(line: 303, column: 26, scope: !513)
!2131 = !DILocation(line: 305, column: 11, scope: !513)
!2132 = !DILocation(line: 307, column: 5, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !513, file: !72, line: 305, column: 16)
!2134 = !DILocation(line: 309, column: 5, scope: !2133)
!2135 = !DILocation(line: 309, column: 12, scope: !2133)
!2136 = !DILocation(line: 309, column: 20, scope: !2133)
!2137 = !DILocation(line: 310, column: 5, scope: !2133)
!2138 = !DILocation(line: 312, column: 5, scope: !2133)
!2139 = !DILocation(line: 312, column: 12, scope: !2133)
!2140 = !DILocation(line: 312, column: 20, scope: !2133)
!2141 = !DILocation(line: 313, column: 5, scope: !2133)
!2142 = !DILocation(line: 315, column: 17, scope: !513)
!2143 = !DILocation(line: 315, column: 24, scope: !513)
!2144 = !DILocation(line: 315, column: 10, scope: !513)
!2145 = !DILocation(line: 315, column: 3, scope: !513)
!2146 = !DILocation(line: 316, column: 1, scope: !513)
