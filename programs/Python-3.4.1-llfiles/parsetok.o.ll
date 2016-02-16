; ModuleID = 'parsetok.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._node = type { i16, i8*, i32, i32, i32, %struct._node* }
%struct.grammar = type { i32, %struct.dfa*, %struct.labellist, i32, i32 }
%struct.dfa = type { i32, i8*, i32, i32, %struct.state*, i8* }
%struct.state = type { i32, %struct.arc*, i32, i32, i32*, i32 }
%struct.arc = type { i16, i16 }
%struct.labellist = type { i32, %struct.label* }
%struct.label = type { i32, i8* }
%struct.perrdetail = type { i32, %struct._object*, i32, i32, i8*, i32, i32 }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.tok_state = type { i8*, i8*, i8*, i8*, i8*, i32, %struct._IO_FILE*, i32, i32, [100 x i32], i32, i32, i8*, i8*, i32, i32, %struct._object*, i32, i32, i32, [100 x i32], i32, i32, i32, i8*, i32, i8*, %struct._object*, %struct._object*, i8*, i8*, i8* }
%struct.parser_state = type { %struct.stack, %struct.grammar*, %struct._node*, i64 }
%struct.stack = type { %struct.stackentry*, [1500 x %struct.stackentry] }
%struct.stackentry = type { i32, %struct.dfa*, %struct._node* }

@.str.2 = private unnamed_addr constant [45 x i8] c"with Barry as BDFL, use '<>' instead of '!='\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseString(i8* %s, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret) #0 {
entry:
  %iflags.i = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !434, metadata !668), !dbg !669
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !435, metadata !668), !dbg !670
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !436, metadata !668), !dbg !671
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !437, metadata !668), !dbg !672
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !451, metadata !668) #1, !dbg !673
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !452, metadata !668) #1, !dbg !675
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !453, metadata !668) #1, !dbg !676
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !454, metadata !668) #1, !dbg !677
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !455, metadata !668) #1, !dbg !678
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !456, metadata !668) #1, !dbg !679
  %0 = bitcast i32* %iflags.i to i8*, !dbg !680
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !680
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !457, metadata !668) #1, !dbg !681
  store i32 0, i32* %iflags.i, align 4, !dbg !681, !tbaa !682
  tail call void @llvm.dbg.value(metadata i32* %iflags.i, i64 0, metadata !457, metadata !668) #1, !dbg !681
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !512, metadata !668) #1, !dbg !686
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !513, metadata !668) #1, !dbg !688
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !514, metadata !668) #1, !dbg !689
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !515, metadata !668) #1, !dbg !690
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !516, metadata !668) #1, !dbg !691
  tail call void @llvm.dbg.value(metadata i32* %iflags.i, i64 0, metadata !517, metadata !668) #1, !dbg !692
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !519, metadata !668) #1, !dbg !693
  %call4.26.i.i = call %struct._node* @PyParser_ParseStringObject(i8* %s, %struct._object* null, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* nonnull %iflags.i) #1, !dbg !694
  call void @llvm.lifetime.end(i64 4, i8* %0) #1, !dbg !695
  ret %struct._node* %call4.26.i.i, !dbg !696
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseStringFlagsFilename(i8* %s, i8* %filename, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32 %flags) #0 {
entry:
  %iflags = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !451, metadata !668), !dbg !697
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !452, metadata !668), !dbg !698
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !453, metadata !668), !dbg !699
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !454, metadata !668), !dbg !700
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !455, metadata !668), !dbg !701
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !456, metadata !668), !dbg !702
  %0 = bitcast i32* %iflags to i8*, !dbg !703
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !703
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !457, metadata !668), !dbg !704
  store i32 %flags, i32* %iflags, align 4, !dbg !704, !tbaa !682
  tail call void @llvm.dbg.value(metadata i32* %iflags, i64 0, metadata !457, metadata !668), !dbg !704
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !512, metadata !668) #1, !dbg !705
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !513, metadata !668) #1, !dbg !707
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !514, metadata !668) #1, !dbg !708
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !515, metadata !668) #1, !dbg !709
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !516, metadata !668) #1, !dbg !710
  tail call void @llvm.dbg.value(metadata i32* %iflags, i64 0, metadata !517, metadata !668) #1, !dbg !711
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !519, metadata !668) #1, !dbg !712
  %cmp.i = icmp eq i8* %filename, null, !dbg !713
  br i1 %cmp.i, label %if.end.3.thread.i, label %if.then.i, !dbg !715

if.end.3.thread.i:                                ; preds = %entry
  %call4.26.i = call %struct._node* @PyParser_ParseStringObject(i8* %s, %struct._object* null, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* nonnull %iflags) #1, !dbg !716
  br label %PyParser_ParseStringFlagsFilenameEx.exit, !dbg !717

if.then.i:                                        ; preds = %entry
  %call.i = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %filename) #1, !dbg !718
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !519, metadata !668) #1, !dbg !712
  %cmp1.i = icmp eq %struct._object* %call.i, null, !dbg !720
  br i1 %cmp1.i, label %if.then.2.i, label %do.body.7.i, !dbg !722

if.then.2.i:                                      ; preds = %if.then.i
  %error.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 0, !dbg !723
  store i32 17, i32* %error.i, align 4, !dbg !725, !tbaa !726
  br label %PyParser_ParseStringFlagsFilenameEx.exit, !dbg !729

do.body.7.i:                                      ; preds = %if.then.i
  %call4.29.i = call %struct._node* @PyParser_ParseStringObject(i8* %s, %struct._object* %call.i, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* nonnull %iflags) #1, !dbg !716
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !730
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !730, !tbaa !732
  %dec.i = add i64 %1, -1, !dbg !730
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !730, !tbaa !732
  %cmp8.i = icmp eq i64 %dec.i, 0, !dbg !730
  br i1 %cmp8.i, label %if.else.i, label %PyParser_ParseStringFlagsFilenameEx.exit, !dbg !735

if.else.i:                                        ; preds = %do.body.7.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !736
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !736, !tbaa !738
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !736
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !736, !tbaa !739
  tail call void %3(%struct._object* %call.i) #1, !dbg !736
  br label %PyParser_ParseStringFlagsFilenameEx.exit, !dbg !742

PyParser_ParseStringFlagsFilenameEx.exit:         ; preds = %if.end.3.thread.i, %if.then.2.i, %do.body.7.i, %if.else.i
  %retval.0.i = phi %struct._node* [ null, %if.then.2.i ], [ %call4.29.i, %if.else.i ], [ %call4.29.i, %do.body.7.i ], [ %call4.26.i, %if.end.3.thread.i ], !dbg !742
  call void @llvm.lifetime.end(i64 4, i8* %0) #1, !dbg !743
  ret %struct._node* %retval.0.i, !dbg !744
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseStringFlags(i8* %s, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32 %flags) #0 {
entry:
  %iflags.i = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !442, metadata !668), !dbg !745
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !443, metadata !668), !dbg !746
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !444, metadata !668), !dbg !747
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !445, metadata !668), !dbg !748
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !446, metadata !668), !dbg !749
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !451, metadata !668) #1, !dbg !750
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !452, metadata !668) #1, !dbg !752
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !453, metadata !668) #1, !dbg !753
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !454, metadata !668) #1, !dbg !754
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !455, metadata !668) #1, !dbg !755
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !456, metadata !668) #1, !dbg !756
  %0 = bitcast i32* %iflags.i to i8*, !dbg !757
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !757
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !457, metadata !668) #1, !dbg !758
  store i32 %flags, i32* %iflags.i, align 4, !dbg !758, !tbaa !682
  tail call void @llvm.dbg.value(metadata i32* %iflags.i, i64 0, metadata !457, metadata !668) #1, !dbg !758
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !512, metadata !668) #1, !dbg !759
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !513, metadata !668) #1, !dbg !761
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !514, metadata !668) #1, !dbg !762
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !515, metadata !668) #1, !dbg !763
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !516, metadata !668) #1, !dbg !764
  tail call void @llvm.dbg.value(metadata i32* %iflags.i, i64 0, metadata !517, metadata !668) #1, !dbg !765
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !519, metadata !668) #1, !dbg !766
  %call4.26.i.i = call %struct._node* @PyParser_ParseStringObject(i8* %s, %struct._object* null, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* nonnull %iflags.i) #1, !dbg !767
  call void @llvm.lifetime.end(i64 4, i8* %0) #1, !dbg !768
  ret %struct._node* %call4.26.i.i, !dbg !769
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseStringFlagsFilenameEx(i8* %s, i8* %filename_str, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* nocapture %flags) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !512, metadata !668), !dbg !770
  tail call void @llvm.dbg.value(metadata i8* %filename_str, i64 0, metadata !513, metadata !668), !dbg !771
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !514, metadata !668), !dbg !772
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !515, metadata !668), !dbg !773
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !516, metadata !668), !dbg !774
  tail call void @llvm.dbg.value(metadata i32* %flags, i64 0, metadata !517, metadata !668), !dbg !775
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !519, metadata !668), !dbg !776
  %cmp = icmp eq i8* %filename_str, null, !dbg !777
  br i1 %cmp, label %if.end.3.thread, label %if.then, !dbg !778

if.end.3.thread:                                  ; preds = %entry
  %call4.26 = tail call %struct._node* @PyParser_ParseStringObject(i8* %s, %struct._object* null, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* %flags), !dbg !779
  br label %cleanup, !dbg !780

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %filename_str) #1, !dbg !781
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !519, metadata !668), !dbg !776
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !782
  br i1 %cmp1, label %if.then.2, label %do.body.7, !dbg !783

if.then.2:                                        ; preds = %if.then
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 0, !dbg !784
  store i32 17, i32* %error, align 4, !dbg !785, !tbaa !726
  br label %cleanup, !dbg !786

do.body.7:                                        ; preds = %if.then
  %call4.29 = tail call %struct._node* @PyParser_ParseStringObject(i8* %s, %struct._object* %call, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* %flags), !dbg !779
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !787
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !787, !tbaa !732
  %dec = add i64 %0, -1, !dbg !787
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !787, !tbaa !732
  %cmp8 = icmp eq i64 %dec, 0, !dbg !787
  br i1 %cmp8, label %if.else, label %cleanup, !dbg !788

if.else:                                          ; preds = %do.body.7
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !789
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !789, !tbaa !738
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !789
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !789, !tbaa !739
  tail call void %2(%struct._object* %call) #1, !dbg !789
  br label %cleanup

cleanup:                                          ; preds = %if.end.3.thread, %do.body.7, %if.else, %if.then.2
  %retval.0 = phi %struct._node* [ null, %if.then.2 ], [ %call4.29, %if.else ], [ %call4.29, %do.body.7 ], [ %call4.26, %if.end.3.thread ]
  ret %struct._node* %retval.0, !dbg !790
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseStringObject(i8* %s, %struct._object* %filename, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* nocapture %flags) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !462, metadata !668), !dbg !791
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !463, metadata !668), !dbg !792
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !464, metadata !668), !dbg !793
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !465, metadata !668), !dbg !794
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !466, metadata !668), !dbg !795
  tail call void @llvm.dbg.value(metadata i32* %flags, i64 0, metadata !467, metadata !668), !dbg !796
  %cmp = icmp eq i32 %start, 257, !dbg !797
  %conv = zext i1 %cmp to i32, !dbg !797
  tail call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !507, metadata !668), !dbg !798
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !663, metadata !668) #1, !dbg !799
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !664, metadata !668) #1, !dbg !802
  %error.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 0, !dbg !803
  store i32 10, i32* %error.i, align 4, !dbg !804, !tbaa !726
  %lineno.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 2, !dbg !805
  %token.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 5, !dbg !806
  %0 = bitcast i32* %lineno.i to i8*, !dbg !807
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 4, i1 false) #1, !dbg !808
  store i32 -1, i32* %token.i, align 4, !dbg !807, !tbaa !809
  %expected.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 6, !dbg !810
  store i32 -1, i32* %expected.i, align 4, !dbg !811, !tbaa !812
  %tobool.i = icmp eq %struct._object* %filename, null, !dbg !813
  br i1 %tobool.i, label %if.else.i, label %if.then.i, !dbg !815

if.then.i:                                        ; preds = %entry
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %filename, i64 0, i32 0, !dbg !816
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !816, !tbaa !732
  %inc.i = add i64 %1, 1, !dbg !816
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !816, !tbaa !732
  %filename1.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 1, !dbg !818
  store %struct._object* %filename, %struct._object** %filename1.i, align 8, !dbg !819, !tbaa !820
  br label %if.end, !dbg !821

if.else.i:                                        ; preds = %entry
  %call.i = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #1, !dbg !822
  %filename2.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 1, !dbg !824
  store %struct._object* %call.i, %struct._object** %filename2.i, align 8, !dbg !825, !tbaa !820
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !826
  br i1 %cmp.i, label %initerr.exit, label %if.end, !dbg !828

initerr.exit:                                     ; preds = %if.else.i
  store i32 17, i32* %error.i, align 4, !dbg !829, !tbaa !726
  br label %cleanup, !dbg !831

if.end:                                           ; preds = %if.else.i, %if.then.i
  %2 = load i32, i32* %flags, align 4, !dbg !832, !tbaa !682
  %and = and i32 %2, 16, !dbg !834
  %tobool = icmp eq i32 %and, 0, !dbg !834
  br i1 %tobool, label %if.else, label %if.then.3, !dbg !835

if.then.3:                                        ; preds = %if.end
  %call4 = tail call %struct.tok_state* @PyTokenizer_FromUTF8(i8* %s, i32 %conv) #1, !dbg !836
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %call4, i64 0, metadata !468, metadata !668), !dbg !837
  br label %if.end.6, !dbg !838

if.else:                                          ; preds = %if.end
  %call5 = tail call %struct.tok_state* @PyTokenizer_FromString(i8* %s, i32 %conv) #1, !dbg !839
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %call5, i64 0, metadata !468, metadata !668), !dbg !837
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  %tok.0 = phi %struct.tok_state* [ %call4, %if.then.3 ], [ %call5, %if.else ]
  %cmp7 = icmp eq %struct.tok_state* %tok.0, null, !dbg !840
  br i1 %cmp7, label %if.then.9, label %if.end.12, !dbg !842

if.then.9:                                        ; preds = %if.end.6
  %call10 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !843
  %tobool11 = icmp ne %struct._object* %call10, null, !dbg !843
  %cond = select i1 %tobool11, i32 22, i32 15, !dbg !843
  store i32 %cond, i32* %error.i, align 4, !dbg !845, !tbaa !726
  br label %cleanup, !dbg !846

if.end.12:                                        ; preds = %if.end.6
  %filename13 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 1, !dbg !847
  %3 = load %struct._object*, %struct._object** %filename13, align 8, !dbg !847, !tbaa !820
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !847
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !847, !tbaa !732
  %inc = add i64 %4, 1, !dbg !847
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !847, !tbaa !732
  %5 = ptrtoint %struct._object* %3 to i64, !dbg !848
  %filename15 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok.0, i64 0, i32 16, !dbg !849
  %6 = bitcast %struct._object** %filename15 to i64*, !dbg !850
  store i64 %5, i64* %6, align 8, !dbg !850, !tbaa !851
  %call16 = tail call fastcc %struct._node* @parsetok(%struct.tok_state* %tok.0, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* %flags), !dbg !853
  br label %cleanup, !dbg !854

cleanup:                                          ; preds = %initerr.exit, %if.end.12, %if.then.9
  %retval.0 = phi %struct._node* [ null, %if.then.9 ], [ %call16, %if.end.12 ], [ null, %initerr.exit ]
  ret %struct._node* %retval.0, !dbg !855
}

declare %struct.tok_state* @PyTokenizer_FromUTF8(i8*, i32) #2

declare %struct.tok_state* @PyTokenizer_FromString(i8*, i32) #2

declare %struct._object* @PyErr_Occurred() #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct._node* @parsetok(%struct.tok_state* %tok, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* nocapture %flags) #0 {
entry:
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %tok, i64 0, metadata !588, metadata !668), !dbg !856
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !589, metadata !668), !dbg !857
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !590, metadata !668), !dbg !858
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !591, metadata !668), !dbg !859
  tail call void @llvm.dbg.value(metadata i32* %flags, i64 0, metadata !592, metadata !668), !dbg !860
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !619, metadata !668), !dbg !861
  %call = tail call %struct.parser_state* @PyParser_New(%struct.grammar* %g, i32 %start) #1, !dbg !862
  tail call void @llvm.dbg.value(metadata %struct.parser_state* %call, i64 0, metadata !593, metadata !668), !dbg !864
  %cmp = icmp eq %struct.parser_state* %call, null, !dbg !865
  br i1 %cmp, label %if.then, label %if.end, !dbg !866

if.then:                                          ; preds = %entry
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 0, !dbg !867
  store i32 15, i32* %error, align 4, !dbg !869, !tbaa !726
  tail call void @PyTokenizer_Free(%struct.tok_state* %tok) #1, !dbg !870
  br label %cleanup.300, !dbg !871

if.end:                                           ; preds = %entry
  %0 = load i32, i32* %flags, align 4, !dbg !872, !tbaa !682
  %and = and i32 %0, 32, !dbg !874
  %tobool = icmp eq i32 %and, 0, !dbg !874
  br i1 %tobool, label %for.cond.preheader, label %if.then.1, !dbg !875

if.then.1:                                        ; preds = %if.end
  %p_flags = getelementptr inbounds %struct.parser_state, %struct.parser_state* %call, i64 0, i32 3, !dbg !876
  %1 = load i64, i64* %p_flags, align 8, !dbg !877, !tbaa !878
  %or = or i64 %1, 262144, !dbg !877
  store i64 %or, i64* %p_flags, align 8, !dbg !877, !tbaa !878
  br label %for.cond.preheader, !dbg !881

for.cond.preheader:                               ; preds = %if.then.1, %if.end
  %2 = bitcast i8** %a to i8*, !dbg !882
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !882
  %3 = bitcast i8** %b to i8*, !dbg !882
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !882
  call void @llvm.dbg.value(metadata i8** %a, i64 0, metadata !620, metadata !668), !dbg !883
  call void @llvm.dbg.value(metadata i8** %b, i64 0, metadata !624, metadata !668), !dbg !884
  %call3.463 = call i32 @PyTokenizer_Get(%struct.tok_state* %tok, i8** nonnull %a, i8** nonnull %b) #1, !dbg !885
  call void @llvm.dbg.value(metadata i32 %call3.463, i64 0, metadata !625, metadata !668), !dbg !886
  %cmp4.464 = icmp eq i32 %call3.463, 53, !dbg !887
  br i1 %cmp4.464, label %for.cond.preheader.if.then.5_crit_edge, label %if.end.7.lr.ph, !dbg !889

for.cond.preheader.if.then.5_crit_edge:           ; preds = %for.cond.preheader
  %.pre479 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 0, !dbg !890
  br label %if.then.5, !dbg !889

if.end.7.lr.ph:                                   ; preds = %for.cond.preheader
  %indent = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 8, !dbg !892
  %pendin = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 11, !dbg !896
  %4 = bitcast i8** %b to i64*, !dbg !898
  %5 = bitcast i8** %a to i64*, !dbg !899
  %p_flags31 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %call, i64 0, i32 3, !dbg !900
  %line_start = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 26, !dbg !901
  %lineno = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 14, !dbg !903
  %expected = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 6, !dbg !905
  %error157 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 0, !dbg !906
  br label %if.end.7, !dbg !889

if.then.5.loopexit:                               ; preds = %cleanup
  br label %if.then.5, !dbg !907

if.then.5:                                        ; preds = %if.then.5.loopexit, %for.cond.preheader.if.then.5_crit_edge
  %error6.pre-phi = phi i32* [ %.pre479, %for.cond.preheader.if.then.5_crit_edge ], [ %error157, %if.then.5.loopexit ], !dbg !890
  %done = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !907
  %6 = load i32, i32* %done, align 4, !dbg !907, !tbaa !908
  store i32 %6, i32* %error6.pre-phi, align 4, !dbg !909, !tbaa !726
  br label %for.end, !dbg !910

if.end.7:                                         ; preds = %if.end.7.lr.ph, %cleanup
  %call3466 = phi i32 [ %call3.463, %if.end.7.lr.ph ], [ %call3, %cleanup ]
  %started.0465 = phi i32 [ 0, %if.end.7.lr.ph ], [ %started.1, %cleanup ]
  %cmp8 = icmp eq i32 %call3466, 0, !dbg !911
  %tobool9 = icmp ne i32 %started.0465, 0, !dbg !912
  %or.cond = and i1 %tobool9, %cmp8, !dbg !914
  br i1 %or.cond, label %if.then.10, label %if.end.19, !dbg !914

if.then.10:                                       ; preds = %if.end.7
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !625, metadata !668), !dbg !886
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !619, metadata !668), !dbg !861
  %7 = load i32, i32* %indent, align 4, !dbg !892, !tbaa !915
  %tobool11 = icmp eq i32 %7, 0, !dbg !916
  br i1 %tobool11, label %if.end.19, label %land.lhs.true.12, !dbg !917

land.lhs.true.12:                                 ; preds = %if.then.10
  %8 = load i32, i32* %flags, align 4, !dbg !918, !tbaa !682
  %and13 = and i32 %8, 2, !dbg !919
  %tobool14 = icmp eq i32 %and13, 0, !dbg !919
  br i1 %tobool14, label %if.then.15, label %if.end.19, !dbg !920

if.then.15:                                       ; preds = %land.lhs.true.12
  %sub = sub i32 0, %7, !dbg !921
  store i32 %sub, i32* %pendin, align 4, !dbg !922, !tbaa !923
  store i32 0, i32* %indent, align 4, !dbg !924, !tbaa !915
  br label %if.end.19, !dbg !925

if.end.19:                                        ; preds = %if.end.7, %land.lhs.true.12, %if.then.10, %if.then.15
  %type.0 = phi i32 [ 4, %land.lhs.true.12 ], [ 4, %if.then.15 ], [ 4, %if.then.10 ], [ %call3466, %if.end.7 ]
  %started.1 = phi i32 [ 0, %land.lhs.true.12 ], [ 0, %if.then.15 ], [ 0, %if.then.10 ], [ 1, %if.end.7 ]
  call void @llvm.dbg.value(metadata i8** %b, i64 0, metadata !624, metadata !668), !dbg !884
  %9 = load i64, i64* %4, align 8, !dbg !898, !tbaa !926
  call void @llvm.dbg.value(metadata i8** %a, i64 0, metadata !620, metadata !668), !dbg !883
  %10 = load i64, i64* %5, align 8, !dbg !899, !tbaa !926
  %sub.ptr.sub = sub i64 %9, %10, !dbg !927
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, i64 0, metadata !626, metadata !668), !dbg !928
  %add = add i64 %sub.ptr.sub, 1, !dbg !929
  %call20 = call i8* @PyObject_Malloc(i64 %add) #1, !dbg !930
  call void @llvm.dbg.value(metadata i8* %call20, i64 0, metadata !627, metadata !668), !dbg !931
  %cmp21 = icmp eq i8* %call20, null, !dbg !932
  br i1 %cmp21, label %if.then.22, label %if.end.24, !dbg !934

if.then.22:                                       ; preds = %if.end.19
  store i32 15, i32* %error157, align 4, !dbg !935, !tbaa !726
  br label %for.end.thread, !dbg !937

if.end.24:                                        ; preds = %if.end.19
  %cmp25 = icmp eq i64 %9, %10, !dbg !938
  br i1 %cmp25, label %if.end.28, label %if.then.26, !dbg !940

if.then.26:                                       ; preds = %if.end.24
  call void @llvm.dbg.value(metadata i8** %a, i64 0, metadata !620, metadata !668), !dbg !883
  %11 = load i8*, i8** %a, align 8, !dbg !941, !tbaa !926
  %call27 = call i8* @strncpy(i8* %call20, i8* %11, i64 %sub.ptr.sub) #1, !dbg !941
  br label %if.end.28, !dbg !941

if.end.28:                                        ; preds = %if.end.24, %if.then.26
  %arrayidx = getelementptr i8, i8* %call20, i64 %sub.ptr.sub, !dbg !942
  store i8 0, i8* %arrayidx, align 1, !dbg !943, !tbaa !944
  %cmp29 = icmp eq i32 %type.0, 28, !dbg !945
  br i1 %cmp29, label %if.then.30, label %if.end.145, !dbg !946

if.then.30:                                       ; preds = %if.end.28
  %12 = load i64, i64* %p_flags31, align 8, !dbg !947, !tbaa !878
  %and32 = and i64 %12, 262144, !dbg !948
  %tobool33 = icmp eq i64 %and32, 0, !dbg !948
  %13 = load i8, i8* %call20, align 1, !dbg !949, !tbaa !944
  br i1 %tobool33, label %cond.true, label %cond.true.93, !dbg !951

cond.true:                                        ; preds = %if.then.30
  call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !634, metadata !668), !dbg !952
  call void @llvm.dbg.value(metadata i8* %call20, i64 0, metadata !635, metadata !668), !dbg !949
  %cmp45 = icmp eq i8 %13, 33, !dbg !953
  br i1 %cmp45, label %if.then.47, label %if.then.78, !dbg !956

if.then.47:                                       ; preds = %cond.true
  %arrayidx48 = getelementptr i8, i8* %call20, i64 1, !dbg !957
  %14 = load i8, i8* %arrayidx48, align 1, !dbg !957, !tbaa !944
  %cmp55 = icmp eq i8 %14, 61, !dbg !960
  br i1 %cmp55, label %cond.end, label %if.then.78, !dbg !963

cond.end:                                         ; preds = %if.then.47
  %arrayidx58 = getelementptr i8, i8* %call20, i64 2, !dbg !964
  %15 = load i8, i8* %arrayidx58, align 1, !dbg !964, !tbaa !944
  %tobool77 = icmp eq i8 %15, 0, !dbg !967
  br i1 %tobool77, label %if.end.145, label %if.then.78, !dbg !968

if.then.78:                                       ; preds = %cond.true, %if.then.47, %cond.end
  %call20.lcssa521 = phi i8* [ %call20, %cond.true ], [ %call20, %if.then.47 ], [ %call20, %cond.end ]
  call void @PyObject_Free(i8* %call20.lcssa521) #1, !dbg !969
  store i32 14, i32* %error157, align 4, !dbg !971, !tbaa !726
  br label %for.end.thread, !dbg !972

cond.true.93:                                     ; preds = %if.then.30
  call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !641, metadata !668), !dbg !973
  call void @llvm.dbg.value(metadata i8* %call20, i64 0, metadata !642, metadata !668), !dbg !974
  %cmp105 = icmp eq i8 %13, 60, !dbg !976
  br i1 %cmp105, label %if.then.107, label %if.then.141, !dbg !979

if.then.107:                                      ; preds = %cond.true.93
  %arrayidx108 = getelementptr i8, i8* %call20, i64 1, !dbg !980
  %16 = load i8, i8* %arrayidx108, align 1, !dbg !980, !tbaa !944
  %cmp115 = icmp eq i8 %16, 62, !dbg !983
  br i1 %cmp115, label %cond.end.138, label %if.then.141, !dbg !986

cond.end.138:                                     ; preds = %if.then.107
  %arrayidx118 = getelementptr i8, i8* %call20, i64 2, !dbg !987
  %17 = load i8, i8* %arrayidx118, align 1, !dbg !987, !tbaa !944
  %tobool140 = icmp eq i8 %17, 0, !dbg !990
  br i1 %tobool140, label %if.end.145, label %if.then.141, !dbg !991

if.then.141:                                      ; preds = %cond.true.93, %if.then.107, %cond.end.138
  %call20.lcssa520 = phi i8* [ %call20, %cond.true.93 ], [ %call20, %if.then.107 ], [ %call20, %cond.end.138 ]
  call void @PyObject_Free(i8* %call20.lcssa520) #1, !dbg !992
  %text = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 4, !dbg !994
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8** %text, align 8, !dbg !995, !tbaa !996
  store i32 14, i32* %error157, align 4, !dbg !997, !tbaa !726
  br label %for.end.thread, !dbg !998

if.end.145:                                       ; preds = %cond.end, %cond.end.138, %if.end.28
  call void @llvm.dbg.value(metadata i8** %a, i64 0, metadata !620, metadata !668), !dbg !883
  %18 = load i8*, i8** %a, align 8, !dbg !999, !tbaa !926
  %19 = load i8*, i8** %line_start, align 8, !dbg !901, !tbaa !1000
  %cmp146 = icmp ult i8* %18, %19, !dbg !1001
  %sub.ptr.lhs.cast150 = ptrtoint i8* %18 to i64, !dbg !1002
  %sub.ptr.rhs.cast151 = ptrtoint i8* %19 to i64, !dbg !1002
  %sub.ptr.sub152 = sub i64 %sub.ptr.lhs.cast150, %sub.ptr.rhs.cast151, !dbg !1002
  %conv153 = trunc i64 %sub.ptr.sub152 to i32, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %conv153, i64 0, metadata !628, metadata !668), !dbg !1003
  %col_offset.0 = select i1 %cmp146, i32 -1, i32 %conv153, !dbg !1004
  %20 = load i32, i32* %lineno, align 4, !dbg !903, !tbaa !1005
  %call156 = call i32 @PyParser_AddToken(%struct.parser_state* %call, i32 %type.0, i8* %call20, i32 %20, i32 %col_offset.0, i32* %expected) #1, !dbg !1006
  store i32 %call156, i32* %error157, align 4, !dbg !1007, !tbaa !726
  switch i32 %call156, label %if.then.164 [
    i32 10, label %cleanup
    i32 16, label %for.end.thread482
  ], !dbg !1008

for.end.thread482:                                ; preds = %if.end.145
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !1009
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1009
  br label %if.then.175, !dbg !1011

if.then.164:                                      ; preds = %if.end.145
  %call20.lcssa522 = phi i8* [ %call20, %if.end.145 ]
  %type.0.lcssa517 = phi i32 [ %type.0, %if.end.145 ]
  call void @PyObject_Free(i8* %call20.lcssa522) #1, !dbg !1012
  %token = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 5, !dbg !1016
  store i32 %type.0.lcssa517, i32* %token, align 4, !dbg !1017, !tbaa !809
  %.pre = load i32, i32* %error157, align 4, !dbg !1018, !tbaa !726
  br label %for.end, !dbg !1019

cleanup:                                          ; preds = %if.end.145
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !1009
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1009
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !882
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !882
  call void @llvm.dbg.value(metadata i8** %a, i64 0, metadata !620, metadata !668), !dbg !883
  call void @llvm.dbg.value(metadata i8** %b, i64 0, metadata !624, metadata !668), !dbg !884
  %call3 = call i32 @PyTokenizer_Get(%struct.tok_state* %tok, i8** nonnull %a, i8** nonnull %b) #1, !dbg !885
  call void @llvm.dbg.value(metadata i32 %call3, i64 0, metadata !625, metadata !668), !dbg !886
  %cmp4 = icmp eq i32 %call3, 53, !dbg !887
  br i1 %cmp4, label %if.then.5.loopexit, label %if.end.7, !dbg !889

for.end.thread:                                   ; preds = %if.then.22, %if.then.141, %if.then.78
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !1009
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1009
  br label %if.end.219, !dbg !1011

for.end:                                          ; preds = %if.then.5, %if.then.164
  %error172.pre-phi = phi i32* [ %error6.pre-phi, %if.then.5 ], [ %error157, %if.then.164 ], !dbg !1018
  %21 = phi i32 [ %6, %if.then.5 ], [ %.pre, %if.then.164 ], !dbg !1018
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !1009
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1009
  %cmp173 = icmp eq i32 %21, 16, !dbg !1020
  br i1 %cmp173, label %if.then.175, label %if.end.219, !dbg !1011

if.then.175:                                      ; preds = %for.end.thread482, %for.end
  %error172.pre-phi484 = phi i32* [ %error157, %for.end.thread482 ], [ %error172.pre-phi, %for.end ]
  %p_tree = getelementptr inbounds %struct.parser_state, %struct.parser_state* %call, i64 0, i32 2, !dbg !1021
  %22 = load %struct._node*, %struct._node** %p_tree, align 8, !dbg !1021, !tbaa !1022
  call void @llvm.dbg.value(metadata %struct._node* %22, i64 0, metadata !618, metadata !668), !dbg !1023
  store %struct._node* null, %struct._node** %p_tree, align 8, !dbg !1024, !tbaa !1022
  %cmp177 = icmp eq i32 %start, 256, !dbg !1025
  br i1 %cmp177, label %if.then.179, label %if.end.219, !dbg !1026

if.then.179:                                      ; preds = %if.then.175
  %cur181 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 1, !dbg !1027
  %23 = load i8*, i8** %cur181, align 8, !dbg !1027, !tbaa !1028
  call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !645, metadata !668), !dbg !1029
  %24 = load i8, i8* %23, align 1, !dbg !1030, !tbaa !944
  call void @llvm.dbg.value(metadata i8 %24, i64 0, metadata !650, metadata !668), !dbg !1031
  br label %while.cond, !dbg !1032

while.cond.loopexit:                              ; preds = %while.cond.207, %while.cond.207
  %c.1.lcssa = phi i8 [ %c.1, %while.cond.207 ], [ %c.1, %while.cond.207 ]
  %cur.1.lcssa = phi i8* [ %cur.1, %while.cond.207 ], [ %cur.1, %while.cond.207 ]
  br label %while.cond.backedge, !dbg !1033

while.cond:                                       ; preds = %while.cond.backedge, %if.then.179
  %cur.0 = phi i8* [ %23, %if.then.179 ], [ %cur.0.be, %while.cond.backedge ]
  %c.0 = phi i8 [ %24, %if.then.179 ], [ %c.0.be, %while.cond.backedge ]
  switch i8 %c.0, label %if.then.204 [
    i8 32, label %while.body
    i8 9, label %while.body
    i8 10, label %while.body
    i8 12, label %while.body
    i8 0, label %if.end.219.loopexit
    i8 35, label %while.cond.207.preheader
  ], !dbg !1033

while.cond.207.preheader:                         ; preds = %while.cond
  br label %while.cond.207, !dbg !1037

while.body:                                       ; preds = %while.cond, %while.cond, %while.cond, %while.cond
  %incdec.ptr = getelementptr i8, i8* %cur.0, i64 1, !dbg !1038
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !645, metadata !668), !dbg !1029
  %25 = load i8, i8* %incdec.ptr, align 1, !dbg !1039, !tbaa !944
  call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !650, metadata !668), !dbg !1031
  br label %while.cond.backedge, !dbg !1040

while.cond.backedge:                              ; preds = %while.body, %while.cond.loopexit
  %cur.0.be = phi i8* [ %incdec.ptr, %while.body ], [ %cur.1.lcssa, %while.cond.loopexit ]
  %c.0.be = phi i8 [ %25, %while.body ], [ %c.1.lcssa, %while.cond.loopexit ]
  br label %while.cond, !dbg !1033

if.then.204:                                      ; preds = %while.cond
  store i32 27, i32* %error172.pre-phi484, align 4, !dbg !1041, !tbaa !726
  call void @PyNode_Free(%struct._node* %22) #1, !dbg !1044
  call void @llvm.dbg.value(metadata %struct._node* null, i64 0, metadata !618, metadata !668), !dbg !1023
  br label %if.end.219, !dbg !1045

while.cond.207:                                   ; preds = %while.cond.207.preheader, %while.body.213
  %cur.1 = phi i8* [ %incdec.ptr214, %while.body.213 ], [ %cur.0, %while.cond.207.preheader ]
  %c.1 = phi i8 [ %26, %while.body.213 ], [ 35, %while.cond.207.preheader ]
  switch i8 %c.1, label %while.body.213 [
    i8 0, label %while.cond.loopexit
    i8 10, label %while.cond.loopexit
  ], !dbg !1037

while.body.213:                                   ; preds = %while.cond.207
  %incdec.ptr214 = getelementptr i8, i8* %cur.1, i64 1, !dbg !1046
  call void @llvm.dbg.value(metadata i8* %incdec.ptr214, i64 0, metadata !645, metadata !668), !dbg !1029
  %26 = load i8, i8* %incdec.ptr214, align 1, !dbg !1047, !tbaa !944
  call void @llvm.dbg.value(metadata i8 %26, i64 0, metadata !650, metadata !668), !dbg !1031
  br label %while.cond.207, !dbg !1048

if.end.219.loopexit:                              ; preds = %while.cond
  br label %if.end.219, !dbg !1049

if.end.219:                                       ; preds = %if.end.219.loopexit, %for.end.thread, %for.end, %if.then.204, %if.then.175
  %error172.pre-phi481 = phi i32* [ %error172.pre-phi484, %if.then.175 ], [ %error172.pre-phi484, %if.then.204 ], [ %error172.pre-phi, %for.end ], [ %error157, %for.end.thread ], [ %error172.pre-phi484, %if.end.219.loopexit ]
  %n.1 = phi %struct._node* [ %22, %if.then.175 ], [ null, %if.then.204 ], [ null, %for.end ], [ null, %for.end.thread ], [ %22, %if.end.219.loopexit ]
  %p_flags220 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %call, i64 0, i32 3, !dbg !1049
  %27 = load i64, i64* %p_flags220, align 8, !dbg !1049, !tbaa !878
  %conv221 = trunc i64 %27 to i32, !dbg !1050
  store i32 %conv221, i32* %flags, align 4, !dbg !1051, !tbaa !682
  call void @PyParser_Delete(%struct.parser_state* %call) #1, !dbg !1052
  %cmp222 = icmp eq %struct._node* %n.1, null, !dbg !1053
  br i1 %cmp222, label %if.then.224, label %if.else.266, !dbg !1054

if.then.224:                                      ; preds = %if.end.219
  %done225 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 5, !dbg !1055
  %28 = load i32, i32* %done225, align 4, !dbg !1055, !tbaa !908
  %cmp226 = icmp eq i32 %28, 11, !dbg !1057
  br i1 %cmp226, label %if.then.228, label %if.end.230, !dbg !1058

if.then.228:                                      ; preds = %if.then.224
  store i32 11, i32* %error172.pre-phi481, align 4, !dbg !1059, !tbaa !726
  br label %if.end.230, !dbg !1060

if.end.230:                                       ; preds = %if.then.228, %if.then.224
  %lineno231 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 14, !dbg !1061
  %29 = load i32, i32* %lineno231, align 4, !dbg !1061, !tbaa !1005
  %lineno232 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 2, !dbg !1062
  store i32 %29, i32* %lineno232, align 4, !dbg !1063, !tbaa !1064
  %buf = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 0, !dbg !1065
  %30 = load i8*, i8** %buf, align 8, !dbg !1065, !tbaa !1066
  %cmp233 = icmp eq i8* %30, null, !dbg !1067
  %31 = ptrtoint i8* %30 to i64, !dbg !1068
  br i1 %cmp233, label %done.299, label %if.then.235, !dbg !1069

if.then.235:                                      ; preds = %if.end.230
  %cur238 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 1, !dbg !1070
  %32 = bitcast i8** %cur238 to i64*, !dbg !1070
  %33 = load i64, i64* %32, align 8, !dbg !1070, !tbaa !1028
  %sub.ptr.sub242 = sub i64 %33, %31, !dbg !1071
  %conv243 = trunc i64 %sub.ptr.sub242 to i32, !dbg !1072
  %offset = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 3, !dbg !1073
  store i32 %conv243, i32* %offset, align 4, !dbg !1074, !tbaa !1075
  %inp = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 2, !dbg !1076
  %34 = bitcast i8** %inp to i64*, !dbg !1076
  %35 = load i64, i64* %34, align 8, !dbg !1076, !tbaa !1077
  %sub.ptr.sub247 = sub i64 %35, %31, !dbg !1078
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub247, i64 0, metadata !651, metadata !668), !dbg !1079
  %add248 = add i64 %sub.ptr.sub247, 1, !dbg !1080
  %call249 = call i8* @PyObject_Malloc(i64 %add248) #1, !dbg !1081
  %text250 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 4, !dbg !1082
  store i8* %call249, i8** %text250, align 8, !dbg !1083, !tbaa !996
  %cmp252 = icmp eq i8* %call249, null, !dbg !1084
  br i1 %cmp252, label %done.299, label %if.then.254, !dbg !1086

if.then.254:                                      ; preds = %if.then.235
  %cmp255 = icmp eq i64 %35, %31, !dbg !1087
  br i1 %cmp255, label %if.end.261, label %if.then.257, !dbg !1090

if.then.257:                                      ; preds = %if.then.254
  %36 = load i8*, i8** %buf, align 8, !dbg !1091, !tbaa !1066
  %call260 = call i8* @strncpy(i8* %call249, i8* %36, i64 %sub.ptr.sub247) #1, !dbg !1091
  %.pre478 = load i8*, i8** %text250, align 8, !dbg !1092, !tbaa !996
  br label %if.end.261, !dbg !1091

if.end.261:                                       ; preds = %if.then.254, %if.then.257
  %37 = phi i8* [ %call249, %if.then.254 ], [ %.pre478, %if.then.257 ], !dbg !1092
  %arrayidx263 = getelementptr i8, i8* %37, i64 %sub.ptr.sub247, !dbg !1093
  store i8 0, i8* %arrayidx263, align 1, !dbg !1094, !tbaa !944
  br label %done.299, !dbg !1095

if.else.266:                                      ; preds = %if.end.219
  %encoding = getelementptr inbounds %struct.tok_state, %struct.tok_state* %tok, i64 0, i32 24, !dbg !1096
  %38 = load i8*, i8** %encoding, align 8, !dbg !1096, !tbaa !1097
  %cmp267 = icmp eq i8* %38, null, !dbg !1098
  br i1 %cmp267, label %done.299, label %if.then.269, !dbg !1099

if.then.269:                                      ; preds = %if.else.266
  %call271 = call %struct._node* @PyNode_New(i32 335) #1, !dbg !1100
  call void @llvm.dbg.value(metadata %struct._node* %call271, i64 0, metadata !656, metadata !668), !dbg !1101
  %tobool272 = icmp eq %struct._node* %call271, null, !dbg !1102
  br i1 %tobool272, label %if.end.287.critedge, label %if.then.273, !dbg !1104

if.then.273:                                      ; preds = %if.then.269
  %39 = load i8*, i8** %encoding, align 8, !dbg !1105, !tbaa !1097
  %call275 = call i64 @strlen(i8* %39) #6, !dbg !1106
  %add276 = add i64 %call275, 1, !dbg !1107
  %call277 = call i8* @PyObject_Malloc(i64 %add276) #1, !dbg !1108
  %n_str = getelementptr inbounds %struct._node, %struct._node* %call271, i64 0, i32 1, !dbg !1109
  store i8* %call277, i8** %n_str, align 8, !dbg !1110, !tbaa !1111
  %tobool282 = icmp eq i8* %call277, null, !dbg !1114
  br i1 %tobool282, label %if.then.286, label %if.end.288, !dbg !1116

if.then.286:                                      ; preds = %if.then.273
  store i32 15, i32* %error172.pre-phi481, align 4, !dbg !1117, !tbaa !726
  %40 = bitcast %struct._node* %call271 to i8*, !dbg !1119
  call void @PyObject_Free(i8* %40) #1, !dbg !1121
  br label %done.299, !dbg !1121

if.end.287.critedge:                              ; preds = %if.then.269
  store i32 15, i32* %error172.pre-phi481, align 4, !dbg !1117, !tbaa !726
  br label %done.299

if.end.288:                                       ; preds = %if.then.273
  %41 = load i8*, i8** %encoding, align 8, !dbg !1122, !tbaa !1097
  %call291 = call i8* @strcpy(i8* %call277, i8* %41) #1, !dbg !1123
  %42 = load i8*, i8** %encoding, align 8, !dbg !1124, !tbaa !1097
  call void @PyMem_Free(i8* %42) #1, !dbg !1124
  store i8* null, i8** %encoding, align 8, !dbg !1125, !tbaa !1097
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %call271, i64 0, i32 4, !dbg !1126
  store i32 1, i32* %n_nchildren, align 4, !dbg !1127, !tbaa !1128
  %n_child = getelementptr inbounds %struct._node, %struct._node* %call271, i64 0, i32 5, !dbg !1129
  store %struct._node* %n.1, %struct._node** %n_child, align 8, !dbg !1130, !tbaa !1131
  call void @llvm.dbg.value(metadata %struct._node* %call271, i64 0, metadata !618, metadata !668), !dbg !1023
  br label %done.299, !dbg !1132

done.299:                                         ; preds = %if.then.286, %if.end.287.critedge, %if.end.288, %if.end.261, %if.then.235, %if.end.230, %if.else.266
  %n.3 = phi %struct._node* [ null, %if.end.230 ], [ %n.1, %if.else.266 ], [ null, %if.then.235 ], [ null, %if.end.261 ], [ null, %if.then.286 ], [ null, %if.end.287.critedge ], [ %call271, %if.end.288 ]
  call void @PyTokenizer_Free(%struct.tok_state* %tok) #1, !dbg !1133
  br label %cleanup.300, !dbg !1134

cleanup.300:                                      ; preds = %done.299, %if.then
  %retval.0 = phi %struct._node* [ null, %if.then ], [ %n.3, %done.299 ]
  ret %struct._node* %retval.0, !dbg !1135
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseFile(%struct._IO_FILE* %fp, i8* %filename, %struct.grammar* %g, i32 %start, i8* %ps1, i8* %ps2, %struct.perrdetail* %err_ret) #0 {
entry:
  %iflags.i = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, i64 0, metadata !529, metadata !668), !dbg !1136
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !530, metadata !668), !dbg !1137
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !531, metadata !668), !dbg !1138
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !532, metadata !668), !dbg !1139
  tail call void @llvm.dbg.value(metadata i8* %ps1, i64 0, metadata !533, metadata !668), !dbg !1140
  tail call void @llvm.dbg.value(metadata i8* %ps2, i64 0, metadata !534, metadata !668), !dbg !1141
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !535, metadata !668), !dbg !1142
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, i64 0, metadata !540, metadata !668) #1, !dbg !1143
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !541, metadata !668) #1, !dbg !1145
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !542, metadata !668) #1, !dbg !1146
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !543, metadata !668) #1, !dbg !1147
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !544, metadata !668) #1, !dbg !1148
  tail call void @llvm.dbg.value(metadata i8* %ps1, i64 0, metadata !545, metadata !668) #1, !dbg !1149
  tail call void @llvm.dbg.value(metadata i8* %ps2, i64 0, metadata !546, metadata !668) #1, !dbg !1150
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !547, metadata !668) #1, !dbg !1151
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !548, metadata !668) #1, !dbg !1152
  %0 = bitcast i32* %iflags.i to i8*, !dbg !1153
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1153
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !549, metadata !668) #1, !dbg !1154
  store i32 0, i32* %iflags.i, align 4, !dbg !1154, !tbaa !682
  tail call void @llvm.dbg.value(metadata i32* %iflags.i, i64 0, metadata !549, metadata !668) #1, !dbg !1154
  %call.i = call %struct._node* @PyParser_ParseFileFlagsEx(%struct._IO_FILE* %fp, i8* %filename, i8* null, %struct.grammar* %g, i32 %start, i8* %ps1, i8* %ps2, %struct.perrdetail* %err_ret, i32* nonnull %iflags.i) #1, !dbg !1155
  call void @llvm.lifetime.end(i64 4, i8* %0) #1, !dbg !1156
  ret %struct._node* %call.i, !dbg !1157
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseFileFlags(%struct._IO_FILE* %fp, i8* %filename, i8* %enc, %struct.grammar* %g, i32 %start, i8* %ps1, i8* %ps2, %struct.perrdetail* %err_ret, i32 %flags) #0 {
entry:
  %iflags = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, i64 0, metadata !540, metadata !668), !dbg !1158
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !541, metadata !668), !dbg !1159
  tail call void @llvm.dbg.value(metadata i8* %enc, i64 0, metadata !542, metadata !668), !dbg !1160
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !543, metadata !668), !dbg !1161
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !544, metadata !668), !dbg !1162
  tail call void @llvm.dbg.value(metadata i8* %ps1, i64 0, metadata !545, metadata !668), !dbg !1163
  tail call void @llvm.dbg.value(metadata i8* %ps2, i64 0, metadata !546, metadata !668), !dbg !1164
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !547, metadata !668), !dbg !1165
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !548, metadata !668), !dbg !1166
  %0 = bitcast i32* %iflags to i8*, !dbg !1167
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1167
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !549, metadata !668), !dbg !1168
  store i32 %flags, i32* %iflags, align 4, !dbg !1168, !tbaa !682
  tail call void @llvm.dbg.value(metadata i32* %iflags, i64 0, metadata !549, metadata !668), !dbg !1168
  %call = call %struct._node* @PyParser_ParseFileFlagsEx(%struct._IO_FILE* %fp, i8* %filename, i8* %enc, %struct.grammar* %g, i32 %start, i8* %ps1, i8* %ps2, %struct.perrdetail* %err_ret, i32* nonnull %iflags), !dbg !1169
  call void @llvm.lifetime.end(i64 4, i8* %0) #1, !dbg !1170
  ret %struct._node* %call, !dbg !1171
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseFileFlagsEx(%struct._IO_FILE* %fp, i8* %filename, i8* %enc, %struct.grammar* %g, i32 %start, i8* %ps1, i8* %ps2, %struct.perrdetail* %err_ret, i32* nocapture %flags) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, i64 0, metadata !568, metadata !668), !dbg !1172
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !569, metadata !668), !dbg !1173
  tail call void @llvm.dbg.value(metadata i8* %enc, i64 0, metadata !570, metadata !668), !dbg !1174
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !571, metadata !668), !dbg !1175
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !572, metadata !668), !dbg !1176
  tail call void @llvm.dbg.value(metadata i8* %ps1, i64 0, metadata !573, metadata !668), !dbg !1177
  tail call void @llvm.dbg.value(metadata i8* %ps2, i64 0, metadata !574, metadata !668), !dbg !1178
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !575, metadata !668), !dbg !1179
  tail call void @llvm.dbg.value(metadata i32* %flags, i64 0, metadata !576, metadata !668), !dbg !1180
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !578, metadata !668), !dbg !1181
  %cmp = icmp eq i8* %filename, null, !dbg !1182
  br i1 %cmp, label %if.end.3, label %if.then, !dbg !1184

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %filename) #1, !dbg !1185
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !578, metadata !668), !dbg !1181
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !1187
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1189

if.then.2:                                        ; preds = %if.then
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 0, !dbg !1190
  store i32 17, i32* %error, align 4, !dbg !1192, !tbaa !726
  br label %cleanup, !dbg !1193

if.end.3:                                         ; preds = %entry, %if.then
  %fileobj.0 = phi %struct._object* [ %call, %if.then ], [ null, %entry ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, i64 0, metadata !554, metadata !668) #1, !dbg !1194
  tail call void @llvm.dbg.value(metadata %struct._object* %fileobj.0, i64 0, metadata !555, metadata !668) #1, !dbg !1196
  tail call void @llvm.dbg.value(metadata i8* %enc, i64 0, metadata !556, metadata !668) #1, !dbg !1197
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !557, metadata !668) #1, !dbg !1198
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !558, metadata !668) #1, !dbg !1199
  tail call void @llvm.dbg.value(metadata i8* %ps1, i64 0, metadata !559, metadata !668) #1, !dbg !1200
  tail call void @llvm.dbg.value(metadata i8* %ps2, i64 0, metadata !560, metadata !668) #1, !dbg !1201
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !561, metadata !668) #1, !dbg !1202
  tail call void @llvm.dbg.value(metadata i32* %flags, i64 0, metadata !562, metadata !668) #1, !dbg !1203
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !663, metadata !668) #1, !dbg !1204
  tail call void @llvm.dbg.value(metadata %struct._object* %fileobj.0, i64 0, metadata !664, metadata !668) #1, !dbg !1207
  %error.i.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 0, !dbg !1208
  store i32 10, i32* %error.i.i, align 4, !dbg !1209, !tbaa !726
  %lineno.i.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 2, !dbg !1210
  %token.i.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 5, !dbg !1211
  %0 = bitcast i32* %lineno.i.i to i8*, !dbg !1212
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 4, i1 false) #1, !dbg !1213
  store i32 -1, i32* %token.i.i, align 4, !dbg !1212, !tbaa !809
  %expected.i.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 6, !dbg !1214
  store i32 -1, i32* %expected.i.i, align 4, !dbg !1215, !tbaa !812
  %tobool.i.i = icmp eq %struct._object* %fileobj.0, null, !dbg !1216
  br i1 %tobool.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !1217

if.then.i.i:                                      ; preds = %if.end.3
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %fileobj.0, i64 0, i32 0, !dbg !1218
  %1 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !1218, !tbaa !732
  %inc.i.i = add i64 %1, 1, !dbg !1218
  store i64 %inc.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !1218, !tbaa !732
  %filename1.i.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 1, !dbg !1219
  store %struct._object* %fileobj.0, %struct._object** %filename1.i.i, align 8, !dbg !1220, !tbaa !820
  br label %if.end.i, !dbg !1221

if.else.i.i:                                      ; preds = %if.end.3
  %call.i.i = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #1, !dbg !1222
  %filename2.i.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 1, !dbg !1223
  store %struct._object* %call.i.i, %struct._object** %filename2.i.i, align 8, !dbg !1224, !tbaa !820
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !1225
  br i1 %cmp.i.i, label %PyParser_ParseFileObject.exit.thread, label %if.end.i, !dbg !1226

PyParser_ParseFileObject.exit.thread:             ; preds = %if.else.i.i
  store i32 17, i32* %error.i.i, align 4, !dbg !1227, !tbaa !726
  tail call void @llvm.dbg.value(metadata %struct._node* %retval.0.i, i64 0, metadata !577, metadata !668), !dbg !1228
  tail call void @llvm.dbg.value(metadata %struct._object* %fileobj.0, i64 0, metadata !579, metadata !668), !dbg !1229
  br label %cleanup, !dbg !1231

if.end.i:                                         ; preds = %if.else.i.i, %if.then.i.i
  %call1.i = tail call %struct.tok_state* @PyTokenizer_FromFile(%struct._IO_FILE* %fp, i8* %enc, i8* %ps1, i8* %ps2) #1, !dbg !1232
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %call1.i, i64 0, metadata !563, metadata !668) #1, !dbg !1234
  %cmp2.i = icmp eq %struct.tok_state* %call1.i, null, !dbg !1235
  br i1 %cmp2.i, label %if.then.3.i, label %if.end.4.i, !dbg !1236

if.then.3.i:                                      ; preds = %if.end.i
  store i32 15, i32* %error.i.i, align 4, !dbg !1237, !tbaa !726
  br label %PyParser_ParseFileObject.exit, !dbg !1239

if.end.4.i:                                       ; preds = %if.end.i
  %filename5.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 1, !dbg !1240
  %2 = load %struct._object*, %struct._object** %filename5.i, align 8, !dbg !1240, !tbaa !820
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !1240
  %3 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1240, !tbaa !732
  %inc.i = add i64 %3, 1, !dbg !1240
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1240, !tbaa !732
  %4 = ptrtoint %struct._object* %2 to i64, !dbg !1241
  %filename7.i = getelementptr inbounds %struct.tok_state, %struct.tok_state* %call1.i, i64 0, i32 16, !dbg !1242
  %5 = bitcast %struct._object** %filename7.i to i64*, !dbg !1243
  store i64 %4, i64* %5, align 8, !dbg !1243, !tbaa !851
  %call8.i = tail call fastcc %struct._node* @parsetok(%struct.tok_state* %call1.i, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* %flags) #1, !dbg !1244
  br label %PyParser_ParseFileObject.exit, !dbg !1245

PyParser_ParseFileObject.exit:                    ; preds = %if.then.3.i, %if.end.4.i
  %retval.0.i = phi %struct._node* [ null, %if.then.3.i ], [ %call8.i, %if.end.4.i ], !dbg !1246
  tail call void @llvm.dbg.value(metadata %struct._node* %retval.0.i, i64 0, metadata !577, metadata !668), !dbg !1228
  tail call void @llvm.dbg.value(metadata %struct._object* %fileobj.0, i64 0, metadata !579, metadata !668), !dbg !1229
  br i1 %tobool.i.i, label %cleanup, label %do.body.7, !dbg !1231

do.body.7:                                        ; preds = %PyParser_ParseFileObject.exit
  tail call void @llvm.dbg.value(metadata %struct._object* %fileobj.0, i64 0, metadata !581, metadata !668), !dbg !1247
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %fileobj.0, i64 0, i32 0, !dbg !1249
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1249, !tbaa !732
  %dec = add i64 %6, -1, !dbg !1249
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1249, !tbaa !732
  %cmp8 = icmp eq i64 %dec, 0, !dbg !1249
  br i1 %cmp8, label %if.else, label %cleanup, !dbg !1251

if.else:                                          ; preds = %do.body.7
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %fileobj.0, i64 0, i32 1, !dbg !1252
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1252, !tbaa !738
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !1252
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1252, !tbaa !739
  tail call void %8(%struct._object* %fileobj.0) #1, !dbg !1252
  br label %cleanup

cleanup:                                          ; preds = %PyParser_ParseFileObject.exit.thread, %PyParser_ParseFileObject.exit, %do.body.7, %if.else, %if.then.2
  %retval.0 = phi %struct._node* [ null, %if.then.2 ], [ %retval.0.i, %if.else ], [ %retval.0.i, %do.body.7 ], [ %retval.0.i, %PyParser_ParseFileObject.exit ], [ null, %PyParser_ParseFileObject.exit.thread ]
  ret %struct._node* %retval.0, !dbg !1254
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_ParseFileObject(%struct._IO_FILE* %fp, %struct._object* %filename, i8* %enc, %struct.grammar* %g, i32 %start, i8* %ps1, i8* %ps2, %struct.perrdetail* %err_ret, i32* nocapture %flags) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, i64 0, metadata !554, metadata !668), !dbg !1255
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !555, metadata !668), !dbg !1256
  tail call void @llvm.dbg.value(metadata i8* %enc, i64 0, metadata !556, metadata !668), !dbg !1257
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !557, metadata !668), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !558, metadata !668), !dbg !1259
  tail call void @llvm.dbg.value(metadata i8* %ps1, i64 0, metadata !559, metadata !668), !dbg !1260
  tail call void @llvm.dbg.value(metadata i8* %ps2, i64 0, metadata !560, metadata !668), !dbg !1261
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !561, metadata !668), !dbg !1262
  tail call void @llvm.dbg.value(metadata i32* %flags, i64 0, metadata !562, metadata !668), !dbg !1263
  tail call void @llvm.dbg.value(metadata %struct.perrdetail* %err_ret, i64 0, metadata !663, metadata !668) #1, !dbg !1264
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !664, metadata !668) #1, !dbg !1266
  %error.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 0, !dbg !1267
  store i32 10, i32* %error.i, align 4, !dbg !1268, !tbaa !726
  %lineno.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 2, !dbg !1269
  %token.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 5, !dbg !1270
  %0 = bitcast i32* %lineno.i to i8*, !dbg !1271
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 4, i1 false) #1, !dbg !1272
  store i32 -1, i32* %token.i, align 4, !dbg !1271, !tbaa !809
  %expected.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 6, !dbg !1273
  store i32 -1, i32* %expected.i, align 4, !dbg !1274, !tbaa !812
  %tobool.i = icmp eq %struct._object* %filename, null, !dbg !1275
  br i1 %tobool.i, label %if.else.i, label %if.then.i, !dbg !1276

if.then.i:                                        ; preds = %entry
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %filename, i64 0, i32 0, !dbg !1277
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1277, !tbaa !732
  %inc.i = add i64 %1, 1, !dbg !1277
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1277, !tbaa !732
  %filename1.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 1, !dbg !1278
  store %struct._object* %filename, %struct._object** %filename1.i, align 8, !dbg !1279, !tbaa !820
  br label %if.end, !dbg !1280

if.else.i:                                        ; preds = %entry
  %call.i = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #1, !dbg !1281
  %filename2.i = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 1, !dbg !1282
  store %struct._object* %call.i, %struct._object** %filename2.i, align 8, !dbg !1283, !tbaa !820
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1284
  br i1 %cmp.i, label %initerr.exit, label %if.end, !dbg !1285

initerr.exit:                                     ; preds = %if.else.i
  store i32 17, i32* %error.i, align 4, !dbg !1286, !tbaa !726
  br label %cleanup, !dbg !1287

if.end:                                           ; preds = %if.else.i, %if.then.i
  %call1 = tail call %struct.tok_state* @PyTokenizer_FromFile(%struct._IO_FILE* %fp, i8* %enc, i8* %ps1, i8* %ps2) #1, !dbg !1288
  tail call void @llvm.dbg.value(metadata %struct.tok_state* %call1, i64 0, metadata !563, metadata !668), !dbg !1289
  %cmp2 = icmp eq %struct.tok_state* %call1, null, !dbg !1290
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1291

if.then.3:                                        ; preds = %if.end
  store i32 15, i32* %error.i, align 4, !dbg !1292, !tbaa !726
  br label %cleanup, !dbg !1293

if.end.4:                                         ; preds = %if.end
  %filename5 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err_ret, i64 0, i32 1, !dbg !1294
  %2 = load %struct._object*, %struct._object** %filename5, align 8, !dbg !1294, !tbaa !820
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !1294
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1294, !tbaa !732
  %inc = add i64 %3, 1, !dbg !1294
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1294, !tbaa !732
  %4 = ptrtoint %struct._object* %2 to i64, !dbg !1295
  %filename7 = getelementptr inbounds %struct.tok_state, %struct.tok_state* %call1, i64 0, i32 16, !dbg !1296
  %5 = bitcast %struct._object** %filename7 to i64*, !dbg !1297
  store i64 %4, i64* %5, align 8, !dbg !1297, !tbaa !851
  %call8 = tail call fastcc %struct._node* @parsetok(%struct.tok_state* %call1, %struct.grammar* %g, i32 %start, %struct.perrdetail* %err_ret, i32* %flags), !dbg !1298
  br label %cleanup, !dbg !1299

cleanup:                                          ; preds = %initerr.exit, %if.end.4, %if.then.3
  %retval.0 = phi %struct._node* [ null, %if.then.3 ], [ %call8, %if.end.4 ], [ null, %initerr.exit ]
  ret %struct._node* %retval.0, !dbg !1300
}

declare %struct.tok_state* @PyTokenizer_FromFile(%struct._IO_FILE*, i8*, i8*, i8*) #2

declare %struct.parser_state* @PyParser_New(%struct.grammar*, i32) #2

declare void @PyTokenizer_Free(%struct.tok_state*) #2

declare i32 @PyTokenizer_Get(%struct.tok_state*, i8**, i8**) #2

declare i8* @PyObject_Malloc(i64) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #3

declare void @PyObject_Free(i8*) #2

declare i32 @PyParser_AddToken(%struct.parser_state*, i32, i8*, i32, i32, i32*) #2

declare void @PyNode_Free(%struct._node*) #2

declare void @PyParser_Delete(%struct.parser_state*) #2

declare %struct._node* @PyNode_New(i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) #3

declare void @PyMem_Free(i8*) #2

declare %struct._object* @PyUnicode_FromString(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!665, !666}
!llvm.ident = !{!667}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !354)
!1 = !DIFile(filename: "Parser/parsetok.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "decoding_state", file: !4, line: 15, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Parser/tokenizer.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "STATE_INIT", value: 0)
!7 = !DIEnumerator(name: "STATE_RAW", value: 1)
!8 = !DIEnumerator(name: "STATE_NORMAL", value: 2)
!9 = !{!10, !11, !58, !100, !349, !351, !35, !50}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !13, line: 109, baseType: !14)
!13 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !13, line: 105, size: 128, align: 64, elements: !15)
!15 = !{!16, !24}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !14, file: !13, line: 107, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !18, line: 177, baseType: !19)
!18 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !20, line: 102, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !22, line: 181, baseType: !23)
!22 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!23 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !14, file: !13, line: 108, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !13, line: 334, size: 3200, align: 64, elements: !27)
!27 = !{!28, !34, !38, !39, !40, !45, !108, !113, !118, !119, !124, !176, !207, !219, !225, !226, !227, !229, !231, !262, !263, !264, !273, !274, !279, !280, !282, !284, !294, !297, !315, !316, !317, !319, !321, !322, !324, !329, !334, !339, !340, !341, !342, !343, !344, !345, !346, !348}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !26, file: !13, line: 335, baseType: !29, size: 192, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !13, line: 114, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 111, size: 192, align: 64, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !30, file: !13, line: 112, baseType: !12, size: 128, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !30, file: !13, line: 113, baseType: !17, size: 64, align: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !26, file: !13, line: 336, baseType: !35, size: 64, align: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !26, file: !13, line: 337, baseType: !17, size: 64, align: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !26, file: !13, line: 337, baseType: !17, size: 64, align: 64, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !26, file: !13, line: 341, baseType: !41, size: 64, align: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !13, line: 308, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !11}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !26, file: !13, line: 342, baseType: !46, size: 64, align: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !13, line: 314, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !11, !51, !50}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !20, line: 48, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 246, size: 1728, align: 64, elements: !55)
!54 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!55 = !{!56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !77, !78, !79, !80, !82, !84, !86, !90, !93, !95, !96, !97, !98, !99, !103, !104}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !53, file: !54, line: 247, baseType: !50, size: 32, align: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !53, file: !54, line: 252, baseType: !58, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !53, file: !54, line: 253, baseType: !58, size: 64, align: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !53, file: !54, line: 254, baseType: !58, size: 64, align: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !53, file: !54, line: 255, baseType: !58, size: 64, align: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !53, file: !54, line: 256, baseType: !58, size: 64, align: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !53, file: !54, line: 257, baseType: !58, size: 64, align: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !53, file: !54, line: 258, baseType: !58, size: 64, align: 64, offset: 448)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !53, file: !54, line: 259, baseType: !58, size: 64, align: 64, offset: 512)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !53, file: !54, line: 261, baseType: !58, size: 64, align: 64, offset: 576)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !53, file: !54, line: 262, baseType: !58, size: 64, align: 64, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !53, file: !54, line: 263, baseType: !58, size: 64, align: 64, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !53, file: !54, line: 265, baseType: !70, size: 64, align: 64, offset: 768)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !54, line: 161, size: 192, align: 64, elements: !72)
!72 = !{!73, !74, !76}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !71, file: !54, line: 162, baseType: !70, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !71, file: !54, line: 163, baseType: !75, size: 64, align: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !71, file: !54, line: 167, baseType: !50, size: 32, align: 32, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !53, file: !54, line: 267, baseType: !75, size: 64, align: 64, offset: 832)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !53, file: !54, line: 269, baseType: !50, size: 32, align: 32, offset: 896)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !53, file: !54, line: 273, baseType: !50, size: 32, align: 32, offset: 928)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !53, file: !54, line: 275, baseType: !81, size: 64, align: 64, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !22, line: 140, baseType: !23)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !53, file: !54, line: 279, baseType: !83, size: 16, align: 16, offset: 1024)
!83 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !53, file: !54, line: 280, baseType: !85, size: 8, align: 8, offset: 1040)
!85 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !53, file: !54, line: 281, baseType: !87, size: 8, align: 8, offset: 1048)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, align: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !53, file: !54, line: 285, baseType: !91, size: 64, align: 64, offset: 1088)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !54, line: 155, baseType: null)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !53, file: !54, line: 294, baseType: !94, size: 64, align: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !22, line: 141, baseType: !23)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !53, file: !54, line: 303, baseType: !10, size: 64, align: 64, offset: 1216)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !53, file: !54, line: 304, baseType: !10, size: 64, align: 64, offset: 1280)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !53, file: !54, line: 305, baseType: !10, size: 64, align: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !53, file: !54, line: 306, baseType: !10, size: 64, align: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !53, file: !54, line: 307, baseType: !100, size: 64, align: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 62, baseType: !102)
!101 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!102 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !53, file: !54, line: 309, baseType: !50, size: 32, align: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !53, file: !54, line: 311, baseType: !105, size: 160, align: 8, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !26, file: !13, line: 343, baseType: !109, size: 64, align: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !13, line: 316, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!11, !11, !58}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !26, file: !13, line: 344, baseType: !114, size: 64, align: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !13, line: 318, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!50, !11, !58, !11}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !26, file: !13, line: 345, baseType: !10, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !26, file: !13, line: 346, baseType: !120, size: 64, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !13, line: 320, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!11, !11}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !26, file: !13, line: 350, baseType: !125, size: 64, align: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !13, line: 278, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 236, size: 2176, align: 64, elements: !128)
!128 = !{!129, !134, !135, !136, !137, !138, !143, !145, !146, !147, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !127, file: !13, line: 241, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !13, line: 166, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!11, !11, !11}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !127, file: !13, line: 242, baseType: !130, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !127, file: !13, line: 243, baseType: !130, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !127, file: !13, line: 244, baseType: !130, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !127, file: !13, line: 245, baseType: !130, size: 64, align: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !127, file: !13, line: 246, baseType: !139, size: 64, align: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !13, line: 167, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!11, !11, !11, !11}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !127, file: !13, line: 247, baseType: !144, size: 64, align: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !13, line: 165, baseType: !121)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !127, file: !13, line: 248, baseType: !144, size: 64, align: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !127, file: !13, line: 249, baseType: !144, size: 64, align: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !127, file: !13, line: 250, baseType: !148, size: 64, align: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !13, line: 168, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!50, !11}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !127, file: !13, line: 251, baseType: !144, size: 64, align: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !127, file: !13, line: 252, baseType: !130, size: 64, align: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !127, file: !13, line: 253, baseType: !130, size: 64, align: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !127, file: !13, line: 254, baseType: !130, size: 64, align: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !127, file: !13, line: 255, baseType: !130, size: 64, align: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !127, file: !13, line: 256, baseType: !130, size: 64, align: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !127, file: !13, line: 257, baseType: !144, size: 64, align: 64, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !127, file: !13, line: 258, baseType: !10, size: 64, align: 64, offset: 1088)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !127, file: !13, line: 259, baseType: !144, size: 64, align: 64, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !127, file: !13, line: 261, baseType: !130, size: 64, align: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !127, file: !13, line: 262, baseType: !130, size: 64, align: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !127, file: !13, line: 263, baseType: !130, size: 64, align: 64, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !127, file: !13, line: 264, baseType: !130, size: 64, align: 64, offset: 1408)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !127, file: !13, line: 265, baseType: !139, size: 64, align: 64, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !127, file: !13, line: 266, baseType: !130, size: 64, align: 64, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !127, file: !13, line: 267, baseType: !130, size: 64, align: 64, offset: 1600)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !127, file: !13, line: 268, baseType: !130, size: 64, align: 64, offset: 1664)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !127, file: !13, line: 269, baseType: !130, size: 64, align: 64, offset: 1728)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !127, file: !13, line: 270, baseType: !130, size: 64, align: 64, offset: 1792)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !127, file: !13, line: 272, baseType: !130, size: 64, align: 64, offset: 1856)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !127, file: !13, line: 273, baseType: !130, size: 64, align: 64, offset: 1920)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !127, file: !13, line: 274, baseType: !130, size: 64, align: 64, offset: 1984)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !127, file: !13, line: 275, baseType: !130, size: 64, align: 64, offset: 2048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !127, file: !13, line: 277, baseType: !144, size: 64, align: 64, offset: 2112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !26, file: !13, line: 351, baseType: !177, size: 64, align: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !13, line: 292, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 280, size: 640, align: 64, elements: !180)
!180 = !{!181, !186, !187, !192, !193, !194, !199, !200, !205, !206}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !179, file: !13, line: 281, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !13, line: 169, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!17, !11}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !179, file: !13, line: 282, baseType: !130, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !179, file: !13, line: 283, baseType: !188, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !13, line: 170, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!11, !11, !17}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !179, file: !13, line: 284, baseType: !188, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !179, file: !13, line: 285, baseType: !10, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !179, file: !13, line: 286, baseType: !195, size: 64, align: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !13, line: 172, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!50, !11, !17, !11}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !179, file: !13, line: 287, baseType: !10, size: 64, align: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !179, file: !13, line: 288, baseType: !201, size: 64, align: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !13, line: 231, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!50, !11, !11}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !179, file: !13, line: 290, baseType: !130, size: 64, align: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !179, file: !13, line: 291, baseType: !188, size: 64, align: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !26, file: !13, line: 352, baseType: !208, size: 64, align: 64, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !13, line: 298, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 294, size: 192, align: 64, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !210, file: !13, line: 295, baseType: !182, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !210, file: !13, line: 296, baseType: !130, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !210, file: !13, line: 297, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !13, line: 174, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!50, !11, !11, !11}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !26, file: !13, line: 356, baseType: !220, size: 64, align: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !13, line: 321, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !11}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !18, line: 186, baseType: !17)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !26, file: !13, line: 357, baseType: !139, size: 64, align: 64, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !26, file: !13, line: 358, baseType: !120, size: 64, align: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !26, file: !13, line: 359, baseType: !228, size: 64, align: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !13, line: 317, baseType: !131)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !26, file: !13, line: 360, baseType: !230, size: 64, align: 64, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !13, line: 319, baseType: !216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !26, file: !13, line: 363, baseType: !232, size: 64, align: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !13, line: 304, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 301, size: 128, align: 64, elements: !235)
!235 = !{!236, !257}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !234, file: !13, line: 302, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !13, line: 193, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!50, !11, !241, !50}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !13, line: 191, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !13, line: 178, size: 640, align: 64, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !256}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !13, line: 179, baseType: !10, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !243, file: !13, line: 180, baseType: !11, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !13, line: 181, baseType: !17, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !243, file: !13, line: 182, baseType: !17, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !243, file: !13, line: 184, baseType: !50, size: 32, align: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !243, file: !13, line: 185, baseType: !50, size: 32, align: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !243, file: !13, line: 186, baseType: !58, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !243, file: !13, line: 187, baseType: !253, size: 64, align: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !243, file: !13, line: 188, baseType: !253, size: 64, align: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !243, file: !13, line: 189, baseType: !253, size: 64, align: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !243, file: !13, line: 190, baseType: !10, size: 64, align: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !234, file: !13, line: 303, baseType: !258, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !13, line: 194, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !11, !241}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !26, file: !13, line: 366, baseType: !102, size: 64, align: 64, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !26, file: !13, line: 368, baseType: !35, size: 64, align: 64, offset: 1408)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !26, file: !13, line: 372, baseType: !265, size: 64, align: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !13, line: 233, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!50, !11, !269, !10}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !13, line: 232, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!50, !11, !10}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !26, file: !13, line: 375, baseType: !148, size: 64, align: 64, offset: 1536)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !26, file: !13, line: 379, baseType: !275, size: 64, align: 64, offset: 1600)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !13, line: 322, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!11, !11, !11, !50}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !26, file: !13, line: 382, baseType: !17, size: 64, align: 64, offset: 1664)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !26, file: !13, line: 385, baseType: !281, size: 64, align: 64, offset: 1728)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !13, line: 323, baseType: !121)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !26, file: !13, line: 386, baseType: !283, size: 64, align: 64, offset: 1792)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !13, line: 324, baseType: !121)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !26, file: !13, line: 389, baseType: !285, size: 64, align: 64, offset: 1856)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !287, line: 40, size: 256, align: 64, elements: !288)
!287 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!288 = !{!289, !290, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !286, file: !287, line: 41, baseType: !35, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !286, file: !287, line: 42, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !287, line: 18, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !286, file: !287, line: 43, baseType: !50, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !286, file: !287, line: 45, baseType: !35, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !26, file: !13, line: 390, baseType: !295, size: 64, align: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !13, line: 390, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !26, file: !13, line: 391, baseType: !298, size: 64, align: 64, offset: 1984)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !300, line: 11, size: 320, align: 64, elements: !301)
!300 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!301 = !{!302, !303, !308, !313, !314}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !300, line: 12, baseType: !58, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !299, file: !300, line: 13, baseType: !304, size: 64, align: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !300, line: 8, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!11, !11, !10}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !299, file: !300, line: 14, baseType: !309, size: 64, align: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !300, line: 9, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!50, !11, !11, !10}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !299, file: !300, line: 15, baseType: !58, size: 64, align: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !299, file: !300, line: 16, baseType: !10, size: 64, align: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !26, file: !13, line: 392, baseType: !25, size: 64, align: 64, offset: 2048)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !26, file: !13, line: 393, baseType: !11, size: 64, align: 64, offset: 2112)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !26, file: !13, line: 394, baseType: !318, size: 64, align: 64, offset: 2176)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !13, line: 325, baseType: !140)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !26, file: !13, line: 395, baseType: !320, size: 64, align: 64, offset: 2240)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !13, line: 326, baseType: !216)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !26, file: !13, line: 396, baseType: !17, size: 64, align: 64, offset: 2304)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !26, file: !13, line: 397, baseType: !323, size: 64, align: 64, offset: 2368)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !13, line: 327, baseType: !216)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !26, file: !13, line: 398, baseType: !325, size: 64, align: 64, offset: 2432)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !13, line: 329, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!11, !25, !17}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !26, file: !13, line: 399, baseType: !330, size: 64, align: 64, offset: 2496)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !13, line: 328, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!11, !25, !11, !11}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !26, file: !13, line: 400, baseType: !335, size: 64, align: 64, offset: 2560)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !13, line: 307, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !10}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !26, file: !13, line: 401, baseType: !148, size: 64, align: 64, offset: 2624)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !26, file: !13, line: 402, baseType: !11, size: 64, align: 64, offset: 2688)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !26, file: !13, line: 403, baseType: !11, size: 64, align: 64, offset: 2752)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !26, file: !13, line: 404, baseType: !11, size: 64, align: 64, offset: 2816)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !26, file: !13, line: 405, baseType: !11, size: 64, align: 64, offset: 2880)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !26, file: !13, line: 406, baseType: !11, size: 64, align: 64, offset: 2944)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !26, file: !13, line: 407, baseType: !41, size: 64, align: 64, offset: 3008)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !26, file: !13, line: 410, baseType: !347, size: 32, align: 32, offset: 3072)
!347 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !26, file: !13, line: 412, baseType: !41, size: 64, align: 64, offset: 3136)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!354 = !{!355, !438, !447, !458, !508, !525, !536, !550, !564, !584, !659}
!355 = !DISubprogram(name: "PyParser_ParseString", scope: !1, file: !1, line: 20, type: !356, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (i8*, %struct.grammar*, i32, %struct.perrdetail*)* @PyParser_ParseString, variables: !433)
!356 = !DISubroutineType(types: !357)
!357 = !{!358, !35, !371, !50, !421}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "node", file: !360, line: 17, baseType: !361)
!360 = !DIFile(filename: "Include/node.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "_node", file: !360, line: 10, size: 320, align: 64, elements: !362)
!362 = !{!363, !365, !366, !367, !368, !369}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "n_type", scope: !361, file: !360, line: 11, baseType: !364, size: 16, align: 16)
!364 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "n_str", scope: !361, file: !360, line: 12, baseType: !58, size: 64, align: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "n_lineno", scope: !361, file: !360, line: 13, baseType: !50, size: 32, align: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "n_col_offset", scope: !361, file: !360, line: 14, baseType: !50, size: 32, align: 32, offset: 160)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "n_nchildren", scope: !361, file: !360, line: 15, baseType: !50, size: 32, align: 32, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "n_child", scope: !361, file: !360, line: 16, baseType: !370, size: 64, align: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "grammar", file: !373, line: 67, baseType: !374)
!373 = !DIFile(filename: "Include/grammar.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!374 = !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 61, size: 320, align: 64, elements: !375)
!375 = !{!376, !377, !407, !419, !420}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "g_ndfas", scope: !374, file: !373, line: 62, baseType: !50, size: 32, align: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "g_dfa", scope: !374, file: !373, line: 63, baseType: !378, size: 64, align: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "dfa", file: !373, line: 57, baseType: !380)
!380 = !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 50, size: 320, align: 64, elements: !381)
!381 = !{!382, !383, !384, !385, !386, !404}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !380, file: !373, line: 51, baseType: !50, size: 32, align: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !380, file: !373, line: 52, baseType: !58, size: 64, align: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_initial", scope: !380, file: !373, line: 53, baseType: !50, size: 32, align: 32, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_nstates", scope: !380, file: !373, line: 54, baseType: !50, size: 32, align: 32, offset: 160)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_state", scope: !380, file: !373, line: 55, baseType: !387, size: 64, align: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "state", file: !373, line: 46, baseType: !389)
!389 = !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 37, size: 320, align: 64, elements: !390)
!390 = !{!391, !392, !399, !400, !401, !403}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "s_narcs", scope: !389, file: !373, line: 38, baseType: !50, size: 32, align: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "s_arc", scope: !389, file: !373, line: 39, baseType: !393, size: 64, align: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc", file: !373, line: 33, baseType: !395)
!395 = !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 30, size: 32, align: 16, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "a_lbl", scope: !395, file: !373, line: 31, baseType: !364, size: 16, align: 16)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "a_arrow", scope: !395, file: !373, line: 32, baseType: !364, size: 16, align: 16, offset: 16)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "s_lower", scope: !389, file: !373, line: 42, baseType: !50, size: 32, align: 32, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "s_upper", scope: !389, file: !373, line: 43, baseType: !50, size: 32, align: 32, offset: 160)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "s_accel", scope: !389, file: !373, line: 44, baseType: !402, size: 64, align: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "s_accept", scope: !389, file: !373, line: 45, baseType: !50, size: 32, align: 32, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_first", scope: !380, file: !373, line: 56, baseType: !405, size: 64, align: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitset", file: !406, line: 12, baseType: !58)
!406 = !DIFile(filename: "Include/bitset.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!407 = !DIDerivedType(tag: DW_TAG_member, name: "g_ll", scope: !374, file: !373, line: 64, baseType: !408, size: 128, align: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "labellist", file: !373, line: 26, baseType: !409)
!409 = !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 23, size: 128, align: 64, elements: !410)
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "ll_nlabels", scope: !409, file: !373, line: 24, baseType: !50, size: 32, align: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ll_label", scope: !409, file: !373, line: 25, baseType: !413, size: 64, align: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "label", file: !373, line: 17, baseType: !415)
!415 = !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 14, size: 128, align: 64, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !415, file: !373, line: 15, baseType: !50, size: 32, align: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "lb_str", scope: !415, file: !373, line: 16, baseType: !58, size: 64, align: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "g_start", scope: !374, file: !373, line: 65, baseType: !50, size: 32, align: 32, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "g_accel", scope: !374, file: !373, line: 66, baseType: !50, size: 32, align: 32, offset: 288)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "perrdetail", file: !423, line: 21, baseType: !424)
!423 = !DIFile(filename: "Include/parsetok.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!424 = !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 10, size: 320, align: 64, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431, !432}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !424, file: !423, line: 11, baseType: !50, size: 32, align: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !424, file: !423, line: 14, baseType: !11, size: 64, align: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !424, file: !423, line: 16, baseType: !50, size: 32, align: 32, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !424, file: !423, line: 17, baseType: !50, size: 32, align: 32, offset: 160)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !424, file: !423, line: 18, baseType: !58, size: 64, align: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !424, file: !423, line: 19, baseType: !50, size: 32, align: 32, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "expected", scope: !424, file: !423, line: 20, baseType: !50, size: 32, align: 32, offset: 288)
!433 = !{!434, !435, !436, !437}
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !355, file: !1, line: 20, type: !35)
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 2, scope: !355, file: !1, line: 20, type: !371)
!436 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 3, scope: !355, file: !1, line: 20, type: !50)
!437 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 4, scope: !355, file: !1, line: 20, type: !421)
!438 = !DISubprogram(name: "PyParser_ParseStringFlags", scope: !1, file: !1, line: 26, type: !439, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (i8*, %struct.grammar*, i32, %struct.perrdetail*, i32)* @PyParser_ParseStringFlags, variables: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!358, !35, !371, !50, !421, !50}
!441 = !{!442, !443, !444, !445, !446}
!442 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !438, file: !1, line: 26, type: !35)
!443 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 2, scope: !438, file: !1, line: 26, type: !371)
!444 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 3, scope: !438, file: !1, line: 26, type: !50)
!445 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 4, scope: !438, file: !1, line: 27, type: !421)
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 5, scope: !438, file: !1, line: 27, type: !50)
!447 = !DISubprogram(name: "PyParser_ParseStringFlagsFilename", scope: !1, file: !1, line: 34, type: !448, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (i8*, i8*, %struct.grammar*, i32, %struct.perrdetail*, i32)* @PyParser_ParseStringFlagsFilename, variables: !450)
!448 = !DISubroutineType(types: !449)
!449 = !{!358, !35, !35, !371, !50, !421, !50}
!450 = !{!451, !452, !453, !454, !455, !456, !457}
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !447, file: !1, line: 34, type: !35)
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !447, file: !1, line: 34, type: !35)
!453 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 3, scope: !447, file: !1, line: 35, type: !371)
!454 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 4, scope: !447, file: !1, line: 35, type: !50)
!455 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 5, scope: !447, file: !1, line: 36, type: !421)
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 6, scope: !447, file: !1, line: 36, type: !50)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iflags", scope: !447, file: !1, line: 38, type: !50)
!458 = !DISubprogram(name: "PyParser_ParseStringObject", scope: !1, file: !1, line: 44, type: !459, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (i8*, %struct._object*, %struct.grammar*, i32, %struct.perrdetail*, i32*)* @PyParser_ParseStringObject, variables: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!358, !35, !11, !371, !50, !421, !402}
!461 = !{!462, !463, !464, !465, !466, !467, !468, !507}
!462 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !458, file: !1, line: 44, type: !35)
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !458, file: !1, line: 44, type: !11)
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 3, scope: !458, file: !1, line: 45, type: !371)
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 4, scope: !458, file: !1, line: 45, type: !50)
!466 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 5, scope: !458, file: !1, line: 46, type: !421)
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 6, scope: !458, file: !1, line: 46, type: !402)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !458, file: !1, line: 48, type: !469)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "tok_state", file: !4, line: 22, size: 7936, align: 64, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !470, file: !4, line: 25, baseType: !58, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !470, file: !4, line: 26, baseType: !58, size: 64, align: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "inp", scope: !470, file: !4, line: 27, baseType: !58, size: 64, align: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !470, file: !4, line: 28, baseType: !58, size: 64, align: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !470, file: !4, line: 29, baseType: !58, size: 64, align: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !470, file: !4, line: 30, baseType: !50, size: 32, align: 32, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !470, file: !4, line: 32, baseType: !51, size: 64, align: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "tabsize", scope: !470, file: !4, line: 33, baseType: !50, size: 32, align: 32, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "indent", scope: !470, file: !4, line: 34, baseType: !50, size: 32, align: 32, offset: 480)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "indstack", scope: !470, file: !4, line: 35, baseType: !482, size: 3200, align: 32, offset: 512)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 3200, align: 32, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 100)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "atbol", scope: !470, file: !4, line: 36, baseType: !50, size: 32, align: 32, offset: 3712)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "pendin", scope: !470, file: !4, line: 37, baseType: !50, size: 32, align: 32, offset: 3744)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "prompt", scope: !470, file: !4, line: 38, baseType: !35, size: 64, align: 64, offset: 3776)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "nextprompt", scope: !470, file: !4, line: 38, baseType: !35, size: 64, align: 64, offset: 3840)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !470, file: !4, line: 39, baseType: !50, size: 32, align: 32, offset: 3904)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !470, file: !4, line: 40, baseType: !50, size: 32, align: 32, offset: 3936)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !470, file: !4, line: 48, baseType: !11, size: 64, align: 64, offset: 3968)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "altwarning", scope: !470, file: !4, line: 50, baseType: !50, size: 32, align: 32, offset: 4032)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "alterror", scope: !470, file: !4, line: 51, baseType: !50, size: 32, align: 32, offset: 4064)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "alttabsize", scope: !470, file: !4, line: 52, baseType: !50, size: 32, align: 32, offset: 4096)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "altindstack", scope: !470, file: !4, line: 53, baseType: !482, size: 3200, align: 32, offset: 4128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "decoding_state", scope: !470, file: !4, line: 55, baseType: !3, size: 32, align: 32, offset: 7328)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "decoding_erred", scope: !470, file: !4, line: 56, baseType: !50, size: 32, align: 32, offset: 7360)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "read_coding_spec", scope: !470, file: !4, line: 57, baseType: !50, size: 32, align: 32, offset: 7392)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !470, file: !4, line: 58, baseType: !58, size: 64, align: 64, offset: 7424)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "cont_line", scope: !470, file: !4, line: 59, baseType: !50, size: 32, align: 32, offset: 7488)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "line_start", scope: !470, file: !4, line: 60, baseType: !35, size: 64, align: 64, offset: 7552)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "decoding_readline", scope: !470, file: !4, line: 62, baseType: !11, size: 64, align: 64, offset: 7616)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "decoding_buffer", scope: !470, file: !4, line: 63, baseType: !11, size: 64, align: 64, offset: 7680)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !470, file: !4, line: 65, baseType: !35, size: 64, align: 64, offset: 7744)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !470, file: !4, line: 66, baseType: !35, size: 64, align: 64, offset: 7808)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !470, file: !4, line: 67, baseType: !35, size: 64, align: 64, offset: 7872)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exec_input", scope: !458, file: !1, line: 49, type: !50)
!508 = !DISubprogram(name: "PyParser_ParseStringFlagsFilenameEx", scope: !1, file: !1, line: 71, type: !509, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (i8*, i8*, %struct.grammar*, i32, %struct.perrdetail*, i32*)* @PyParser_ParseStringFlagsFilenameEx, variables: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!358, !35, !35, !371, !50, !421, !402}
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !520, !522}
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !508, file: !1, line: 71, type: !35)
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename_str", arg: 2, scope: !508, file: !1, line: 71, type: !35)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 3, scope: !508, file: !1, line: 72, type: !371)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 4, scope: !508, file: !1, line: 72, type: !50)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 5, scope: !508, file: !1, line: 73, type: !421)
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 6, scope: !508, file: !1, line: 73, type: !402)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !508, file: !1, line: 75, type: !358)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !508, file: !1, line: 76, type: !11)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !521, file: !1, line: 88, type: !11)
!521 = distinct !DILexicalBlock(scope: !508, file: !1, line: 88, column: 5)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !523, file: !1, line: 88, type: !11)
!523 = distinct !DILexicalBlock(scope: !524, file: !1, line: 88, column: 5)
!524 = distinct !DILexicalBlock(scope: !521, file: !1, line: 88, column: 5)
!525 = !DISubprogram(name: "PyParser_ParseFile", scope: !1, file: !1, line: 96, type: !526, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (%struct._IO_FILE*, i8*, %struct.grammar*, i32, i8*, i8*, %struct.perrdetail*)* @PyParser_ParseFile, variables: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{!358, !51, !35, !371, !50, !35, !35, !421}
!528 = !{!529, !530, !531, !532, !533, !534, !535}
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !525, file: !1, line: 96, type: !51)
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !525, file: !1, line: 96, type: !35)
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 3, scope: !525, file: !1, line: 96, type: !371)
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 4, scope: !525, file: !1, line: 96, type: !50)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps1", arg: 5, scope: !525, file: !1, line: 97, type: !35)
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps2", arg: 6, scope: !525, file: !1, line: 97, type: !35)
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 7, scope: !525, file: !1, line: 98, type: !421)
!536 = !DISubprogram(name: "PyParser_ParseFileFlags", scope: !1, file: !1, line: 105, type: !537, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (%struct._IO_FILE*, i8*, i8*, %struct.grammar*, i32, i8*, i8*, %struct.perrdetail*, i32)* @PyParser_ParseFileFlags, variables: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{!358, !51, !35, !35, !371, !50, !35, !35, !421, !50}
!539 = !{!540, !541, !542, !543, !544, !545, !546, !547, !548, !549}
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !536, file: !1, line: 105, type: !51)
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !536, file: !1, line: 105, type: !35)
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 3, scope: !536, file: !1, line: 105, type: !35)
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 4, scope: !536, file: !1, line: 106, type: !371)
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 5, scope: !536, file: !1, line: 106, type: !50)
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps1", arg: 6, scope: !536, file: !1, line: 107, type: !35)
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps2", arg: 7, scope: !536, file: !1, line: 107, type: !35)
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 8, scope: !536, file: !1, line: 108, type: !421)
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 9, scope: !536, file: !1, line: 108, type: !50)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iflags", scope: !536, file: !1, line: 110, type: !50)
!550 = !DISubprogram(name: "PyParser_ParseFileObject", scope: !1, file: !1, line: 116, type: !551, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (%struct._IO_FILE*, %struct._object*, i8*, %struct.grammar*, i32, i8*, i8*, %struct.perrdetail*, i32*)* @PyParser_ParseFileObject, variables: !553)
!551 = !DISubroutineType(types: !552)
!552 = !{!358, !51, !11, !35, !371, !50, !35, !35, !421, !402}
!553 = !{!554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !550, file: !1, line: 116, type: !51)
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !550, file: !1, line: 116, type: !11)
!556 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 3, scope: !550, file: !1, line: 117, type: !35)
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 4, scope: !550, file: !1, line: 117, type: !371)
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 5, scope: !550, file: !1, line: 117, type: !50)
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps1", arg: 6, scope: !550, file: !1, line: 118, type: !35)
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps2", arg: 7, scope: !550, file: !1, line: 118, type: !35)
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 8, scope: !550, file: !1, line: 119, type: !421)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 9, scope: !550, file: !1, line: 119, type: !402)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !550, file: !1, line: 121, type: !469)
!564 = !DISubprogram(name: "PyParser_ParseFileFlagsEx", scope: !1, file: !1, line: 138, type: !565, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (%struct._IO_FILE*, i8*, i8*, %struct.grammar*, i32, i8*, i8*, %struct.perrdetail*, i32*)* @PyParser_ParseFileFlagsEx, variables: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{!358, !51, !35, !35, !371, !50, !35, !35, !421, !402}
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !581}
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !564, file: !1, line: 138, type: !51)
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !564, file: !1, line: 138, type: !35)
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enc", arg: 3, scope: !564, file: !1, line: 139, type: !35)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 4, scope: !564, file: !1, line: 139, type: !371)
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 5, scope: !564, file: !1, line: 139, type: !50)
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps1", arg: 6, scope: !564, file: !1, line: 140, type: !35)
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps2", arg: 7, scope: !564, file: !1, line: 140, type: !35)
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 8, scope: !564, file: !1, line: 141, type: !421)
!576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 9, scope: !564, file: !1, line: 141, type: !402)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !564, file: !1, line: 143, type: !358)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fileobj", scope: !564, file: !1, line: 144, type: !11)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !580, file: !1, line: 157, type: !11)
!580 = distinct !DILexicalBlock(scope: !564, file: !1, line: 157, column: 5)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !582, file: !1, line: 157, type: !11)
!582 = distinct !DILexicalBlock(scope: !583, file: !1, line: 157, column: 5)
!583 = distinct !DILexicalBlock(scope: !580, file: !1, line: 157, column: 5)
!584 = !DISubprogram(name: "parsetok", scope: !1, file: !1, line: 184, type: !585, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (%struct.tok_state*, %struct.grammar*, i32, %struct.perrdetail*, i32*)* @parsetok, variables: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{!358, !469, !371, !50, !421, !402}
!587 = !{!588, !589, !590, !591, !592, !593, !618, !619, !620, !624, !625, !626, !627, !628, !629, !634, !635, !637, !638, !641, !642, !644, !645, !650, !651, !656}
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tok", arg: 1, scope: !584, file: !1, line: 184, type: !469)
!589 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 2, scope: !584, file: !1, line: 184, type: !371)
!590 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 3, scope: !584, file: !1, line: 184, type: !50)
!591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 4, scope: !584, file: !1, line: 184, type: !421)
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 5, scope: !584, file: !1, line: 185, type: !402)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ps", scope: !584, file: !1, line: 187, type: !594)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "parser_state", file: !596, line: 31, baseType: !597)
!596 = !DIFile(filename: "Parser/parser.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!597 = !DICompositeType(tag: DW_TAG_structure_type, file: !596, line: 24, size: 288256, align: 64, elements: !598)
!598 = !{!599, !615, !616, !617}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "p_stack", scope: !597, file: !596, line: 25, baseType: !600, size: 288064, align: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack", file: !596, line: 22, baseType: !601)
!601 = !DICompositeType(tag: DW_TAG_structure_type, file: !596, line: 18, size: 288064, align: 64, elements: !602)
!602 = !{!603, !611}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_top", scope: !601, file: !596, line: 19, baseType: !604, size: 64, align: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64, align: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "stackentry", file: !596, line: 16, baseType: !606)
!606 = !DICompositeType(tag: DW_TAG_structure_type, file: !596, line: 12, size: 192, align: 64, elements: !607)
!607 = !{!608, !609, !610}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !606, file: !596, line: 13, baseType: !50, size: 32, align: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_dfa", scope: !606, file: !596, line: 14, baseType: !378, size: 64, align: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s_parent", scope: !606, file: !596, line: 15, baseType: !370, size: 64, align: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_base", scope: !601, file: !596, line: 20, baseType: !612, size: 288000, align: 64, offset: 64)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 288000, align: 64, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 1500)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "p_grammar", scope: !597, file: !596, line: 26, baseType: !371, size: 64, align: 64, offset: 288064)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "p_tree", scope: !597, file: !596, line: 27, baseType: !358, size: 64, align: 64, offset: 288128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "p_flags", scope: !597, file: !596, line: 29, baseType: !102, size: 64, align: 64, offset: 288192)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !584, file: !1, line: 188, type: !358)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "started", scope: !584, file: !1, line: 189, type: !50)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !621, file: !1, line: 202, type: !58)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 201, column: 14)
!622 = distinct !DILexicalBlock(scope: !623, file: !1, line: 201, column: 5)
!623 = distinct !DILexicalBlock(scope: !584, file: !1, line: 201, column: 5)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !621, file: !1, line: 202, type: !58)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !621, file: !1, line: 203, type: !50)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !621, file: !1, line: 204, type: !100)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !621, file: !1, line: 205, type: !58)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "col_offset", scope: !621, file: !1, line: 206, type: !50)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !630, file: !1, line: 241, type: !100)
!630 = distinct !DILexicalBlock(scope: !631, file: !1, line: 241, column: 29)
!631 = distinct !DILexicalBlock(scope: !632, file: !1, line: 240, column: 17)
!632 = distinct !DILexicalBlock(scope: !633, file: !1, line: 239, column: 31)
!633 = distinct !DILexicalBlock(scope: !621, file: !1, line: 239, column: 13)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !630, file: !1, line: 241, type: !100)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !636, file: !1, line: 241, type: !351)
!636 = distinct !DILexicalBlock(scope: !630, file: !1, line: 241, column: 29)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !636, file: !1, line: 241, type: !50)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !639, file: !1, line: 247, type: !100)
!639 = distinct !DILexicalBlock(scope: !640, file: !1, line: 247, column: 29)
!640 = distinct !DILexicalBlock(scope: !631, file: !1, line: 246, column: 22)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !639, file: !1, line: 247, type: !100)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !643, file: !1, line: 247, type: !351)
!643 = distinct !DILexicalBlock(scope: !639, file: !1, line: 247, column: 29)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !643, file: !1, line: 247, type: !50)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cur", scope: !646, file: !1, line: 284, type: !58)
!646 = distinct !DILexicalBlock(scope: !647, file: !1, line: 283, column: 36)
!647 = distinct !DILexicalBlock(scope: !648, file: !1, line: 283, column: 13)
!648 = distinct !DILexicalBlock(scope: !649, file: !1, line: 274, column: 35)
!649 = distinct !DILexicalBlock(scope: !584, file: !1, line: 274, column: 9)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !646, file: !1, line: 285, type: !37)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !652, file: !1, line: 321, type: !100)
!652 = distinct !DILexicalBlock(scope: !653, file: !1, line: 320, column: 31)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 320, column: 13)
!654 = distinct !DILexicalBlock(scope: !655, file: !1, line: 316, column: 20)
!655 = distinct !DILexicalBlock(scope: !584, file: !1, line: 316, column: 9)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !657, file: !1, line: 336, type: !358)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 332, column: 39)
!658 = distinct !DILexicalBlock(scope: !655, file: !1, line: 332, column: 16)
!659 = !DISubprogram(name: "initerr", scope: !1, file: !1, line: 361, type: !660, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, variables: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{!50, !421, !11}
!662 = !{!663, !664}
!663 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err_ret", arg: 1, scope: !659, file: !1, line: 361, type: !421)
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !659, file: !1, line: 361, type: !11)
!665 = !{i32 2, !"Dwarf Version", i32 4}
!666 = !{i32 2, !"Debug Info Version", i32 3}
!667 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!668 = !DIExpression()
!669 = !DILocation(line: 20, column: 34, scope: !355)
!670 = !DILocation(line: 20, column: 46, scope: !355)
!671 = !DILocation(line: 20, column: 53, scope: !355)
!672 = !DILocation(line: 20, column: 72, scope: !355)
!673 = !DILocation(line: 34, column: 47, scope: !447, inlinedAt: !674)
!674 = distinct !DILocation(line: 22, column: 12, scope: !355)
!675 = !DILocation(line: 34, column: 62, scope: !447, inlinedAt: !674)
!676 = !DILocation(line: 35, column: 36, scope: !447, inlinedAt: !674)
!677 = !DILocation(line: 35, column: 43, scope: !447, inlinedAt: !674)
!678 = !DILocation(line: 36, column: 39, scope: !447, inlinedAt: !674)
!679 = !DILocation(line: 36, column: 52, scope: !447, inlinedAt: !674)
!680 = !DILocation(line: 38, column: 5, scope: !447, inlinedAt: !674)
!681 = !DILocation(line: 38, column: 9, scope: !447, inlinedAt: !674)
!682 = !{!683, !683, i64 0}
!683 = !{!"int", !684, i64 0}
!684 = !{!"omnipotent char", !685, i64 0}
!685 = !{!"Simple C/C++ TBAA"}
!686 = !DILocation(line: 71, column: 49, scope: !508, inlinedAt: !687)
!687 = distinct !DILocation(line: 39, column: 12, scope: !447, inlinedAt: !674)
!688 = !DILocation(line: 71, column: 64, scope: !508, inlinedAt: !687)
!689 = !DILocation(line: 72, column: 36, scope: !508, inlinedAt: !687)
!690 = !DILocation(line: 72, column: 43, scope: !508, inlinedAt: !687)
!691 = !DILocation(line: 73, column: 39, scope: !508, inlinedAt: !687)
!692 = !DILocation(line: 73, column: 53, scope: !508, inlinedAt: !687)
!693 = !DILocation(line: 76, column: 15, scope: !508, inlinedAt: !687)
!694 = !DILocation(line: 86, column: 9, scope: !508, inlinedAt: !687)
!695 = !DILocation(line: 41, column: 1, scope: !447, inlinedAt: !674)
!696 = !DILocation(line: 22, column: 5, scope: !355)
!697 = !DILocation(line: 34, column: 47, scope: !447)
!698 = !DILocation(line: 34, column: 62, scope: !447)
!699 = !DILocation(line: 35, column: 36, scope: !447)
!700 = !DILocation(line: 35, column: 43, scope: !447)
!701 = !DILocation(line: 36, column: 39, scope: !447)
!702 = !DILocation(line: 36, column: 52, scope: !447)
!703 = !DILocation(line: 38, column: 5, scope: !447)
!704 = !DILocation(line: 38, column: 9, scope: !447)
!705 = !DILocation(line: 71, column: 49, scope: !508, inlinedAt: !706)
!706 = distinct !DILocation(line: 39, column: 12, scope: !447)
!707 = !DILocation(line: 71, column: 64, scope: !508, inlinedAt: !706)
!708 = !DILocation(line: 72, column: 36, scope: !508, inlinedAt: !706)
!709 = !DILocation(line: 72, column: 43, scope: !508, inlinedAt: !706)
!710 = !DILocation(line: 73, column: 39, scope: !508, inlinedAt: !706)
!711 = !DILocation(line: 73, column: 53, scope: !508, inlinedAt: !706)
!712 = !DILocation(line: 76, column: 15, scope: !508, inlinedAt: !706)
!713 = !DILocation(line: 78, column: 22, scope: !714, inlinedAt: !706)
!714 = distinct !DILexicalBlock(scope: !508, file: !1, line: 78, column: 9)
!715 = !DILocation(line: 78, column: 9, scope: !508, inlinedAt: !706)
!716 = !DILocation(line: 86, column: 9, scope: !508, inlinedAt: !706)
!717 = !DILocation(line: 88, column: 5, scope: !521, inlinedAt: !706)
!718 = !DILocation(line: 79, column: 20, scope: !719, inlinedAt: !706)
!719 = distinct !DILexicalBlock(scope: !714, file: !1, line: 78, column: 31)
!720 = !DILocation(line: 80, column: 22, scope: !721, inlinedAt: !706)
!721 = distinct !DILexicalBlock(scope: !719, file: !1, line: 80, column: 13)
!722 = !DILocation(line: 80, column: 13, scope: !719, inlinedAt: !706)
!723 = !DILocation(line: 81, column: 22, scope: !724, inlinedAt: !706)
!724 = distinct !DILexicalBlock(scope: !721, file: !1, line: 80, column: 31)
!725 = !DILocation(line: 81, column: 28, scope: !724, inlinedAt: !706)
!726 = !{!727, !683, i64 0}
!727 = !{!"", !683, i64 0, !728, i64 8, !683, i64 16, !683, i64 20, !728, i64 24, !683, i64 32, !683, i64 36}
!728 = !{!"any pointer", !684, i64 0}
!729 = !DILocation(line: 82, column: 13, scope: !724, inlinedAt: !706)
!730 = !DILocation(line: 88, column: 5, scope: !731, inlinedAt: !706)
!731 = distinct !DILexicalBlock(scope: !523, file: !1, line: 88, column: 5)
!732 = !{!733, !734, i64 0}
!733 = !{!"_object", !734, i64 0, !728, i64 8}
!734 = !{!"long", !684, i64 0}
!735 = !DILocation(line: 88, column: 5, scope: !523, inlinedAt: !706)
!736 = !DILocation(line: 88, column: 5, scope: !737, inlinedAt: !706)
!737 = !DILexicalBlockFile(scope: !731, file: !1, discriminator: 6)
!738 = !{!733, !728, i64 8}
!739 = !{!740, !728, i64 48}
!740 = !{!"_typeobject", !741, i64 0, !728, i64 24, !734, i64 32, !734, i64 40, !728, i64 48, !728, i64 56, !728, i64 64, !728, i64 72, !728, i64 80, !728, i64 88, !728, i64 96, !728, i64 104, !728, i64 112, !728, i64 120, !728, i64 128, !728, i64 136, !728, i64 144, !728, i64 152, !728, i64 160, !734, i64 168, !728, i64 176, !728, i64 184, !728, i64 192, !728, i64 200, !734, i64 208, !728, i64 216, !728, i64 224, !728, i64 232, !728, i64 240, !728, i64 248, !728, i64 256, !728, i64 264, !728, i64 272, !728, i64 280, !734, i64 288, !728, i64 296, !728, i64 304, !728, i64 312, !728, i64 320, !728, i64 328, !728, i64 336, !728, i64 344, !728, i64 352, !728, i64 360, !728, i64 368, !728, i64 376, !683, i64 384, !728, i64 392}
!741 = !{!"", !733, i64 0, !734, i64 16}
!742 = !DILocation(line: 39, column: 12, scope: !447)
!743 = !DILocation(line: 41, column: 1, scope: !447)
!744 = !DILocation(line: 39, column: 5, scope: !447)
!745 = !DILocation(line: 26, column: 39, scope: !438)
!746 = !DILocation(line: 26, column: 51, scope: !438)
!747 = !DILocation(line: 26, column: 58, scope: !438)
!748 = !DILocation(line: 27, column: 39, scope: !438)
!749 = !DILocation(line: 27, column: 52, scope: !438)
!750 = !DILocation(line: 34, column: 47, scope: !447, inlinedAt: !751)
!751 = distinct !DILocation(line: 29, column: 12, scope: !438)
!752 = !DILocation(line: 34, column: 62, scope: !447, inlinedAt: !751)
!753 = !DILocation(line: 35, column: 36, scope: !447, inlinedAt: !751)
!754 = !DILocation(line: 35, column: 43, scope: !447, inlinedAt: !751)
!755 = !DILocation(line: 36, column: 39, scope: !447, inlinedAt: !751)
!756 = !DILocation(line: 36, column: 52, scope: !447, inlinedAt: !751)
!757 = !DILocation(line: 38, column: 5, scope: !447, inlinedAt: !751)
!758 = !DILocation(line: 38, column: 9, scope: !447, inlinedAt: !751)
!759 = !DILocation(line: 71, column: 49, scope: !508, inlinedAt: !760)
!760 = distinct !DILocation(line: 39, column: 12, scope: !447, inlinedAt: !751)
!761 = !DILocation(line: 71, column: 64, scope: !508, inlinedAt: !760)
!762 = !DILocation(line: 72, column: 36, scope: !508, inlinedAt: !760)
!763 = !DILocation(line: 72, column: 43, scope: !508, inlinedAt: !760)
!764 = !DILocation(line: 73, column: 39, scope: !508, inlinedAt: !760)
!765 = !DILocation(line: 73, column: 53, scope: !508, inlinedAt: !760)
!766 = !DILocation(line: 76, column: 15, scope: !508, inlinedAt: !760)
!767 = !DILocation(line: 86, column: 9, scope: !508, inlinedAt: !760)
!768 = !DILocation(line: 41, column: 1, scope: !447, inlinedAt: !751)
!769 = !DILocation(line: 29, column: 5, scope: !438)
!770 = !DILocation(line: 71, column: 49, scope: !508)
!771 = !DILocation(line: 71, column: 64, scope: !508)
!772 = !DILocation(line: 72, column: 36, scope: !508)
!773 = !DILocation(line: 72, column: 43, scope: !508)
!774 = !DILocation(line: 73, column: 39, scope: !508)
!775 = !DILocation(line: 73, column: 53, scope: !508)
!776 = !DILocation(line: 76, column: 15, scope: !508)
!777 = !DILocation(line: 78, column: 22, scope: !714)
!778 = !DILocation(line: 78, column: 9, scope: !508)
!779 = !DILocation(line: 86, column: 9, scope: !508)
!780 = !DILocation(line: 88, column: 5, scope: !521)
!781 = !DILocation(line: 79, column: 20, scope: !719)
!782 = !DILocation(line: 80, column: 22, scope: !721)
!783 = !DILocation(line: 80, column: 13, scope: !719)
!784 = !DILocation(line: 81, column: 22, scope: !724)
!785 = !DILocation(line: 81, column: 28, scope: !724)
!786 = !DILocation(line: 82, column: 13, scope: !724)
!787 = !DILocation(line: 88, column: 5, scope: !731)
!788 = !DILocation(line: 88, column: 5, scope: !523)
!789 = !DILocation(line: 88, column: 5, scope: !737)
!790 = !DILocation(line: 91, column: 1, scope: !508)
!791 = !DILocation(line: 44, column: 40, scope: !458)
!792 = !DILocation(line: 44, column: 53, scope: !458)
!793 = !DILocation(line: 45, column: 37, scope: !458)
!794 = !DILocation(line: 45, column: 44, scope: !458)
!795 = !DILocation(line: 46, column: 40, scope: !458)
!796 = !DILocation(line: 46, column: 54, scope: !458)
!797 = !DILocation(line: 49, column: 28, scope: !458)
!798 = !DILocation(line: 49, column: 9, scope: !458)
!799 = !DILocation(line: 361, column: 21, scope: !659, inlinedAt: !800)
!800 = distinct !DILocation(line: 51, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !458, file: !1, line: 51, column: 9)
!802 = !DILocation(line: 361, column: 40, scope: !659, inlinedAt: !800)
!803 = !DILocation(line: 363, column: 14, scope: !659, inlinedAt: !800)
!804 = !DILocation(line: 363, column: 20, scope: !659, inlinedAt: !800)
!805 = !DILocation(line: 364, column: 14, scope: !659, inlinedAt: !800)
!806 = !DILocation(line: 367, column: 14, scope: !659, inlinedAt: !800)
!807 = !DILocation(line: 367, column: 20, scope: !659, inlinedAt: !800)
!808 = !DILocation(line: 365, column: 21, scope: !659, inlinedAt: !800)
!809 = !{!727, !683, i64 32}
!810 = !DILocation(line: 368, column: 14, scope: !659, inlinedAt: !800)
!811 = !DILocation(line: 368, column: 23, scope: !659, inlinedAt: !800)
!812 = !{!727, !683, i64 36}
!813 = !DILocation(line: 370, column: 9, scope: !814, inlinedAt: !800)
!814 = distinct !DILexicalBlock(scope: !659, file: !1, line: 370, column: 9)
!815 = !DILocation(line: 370, column: 9, scope: !659, inlinedAt: !800)
!816 = !DILocation(line: 371, column: 9, scope: !817, inlinedAt: !800)
!817 = distinct !DILexicalBlock(scope: !814, file: !1, line: 370, column: 19)
!818 = !DILocation(line: 372, column: 18, scope: !817, inlinedAt: !800)
!819 = !DILocation(line: 372, column: 27, scope: !817, inlinedAt: !800)
!820 = !{!727, !728, i64 8}
!821 = !DILocation(line: 373, column: 5, scope: !817, inlinedAt: !800)
!822 = !DILocation(line: 375, column: 29, scope: !823, inlinedAt: !800)
!823 = distinct !DILexicalBlock(scope: !814, file: !1, line: 374, column: 10)
!824 = !DILocation(line: 375, column: 18, scope: !823, inlinedAt: !800)
!825 = !DILocation(line: 375, column: 27, scope: !823, inlinedAt: !800)
!826 = !DILocation(line: 376, column: 31, scope: !827, inlinedAt: !800)
!827 = distinct !DILexicalBlock(scope: !823, file: !1, line: 376, column: 13)
!828 = !DILocation(line: 376, column: 13, scope: !823, inlinedAt: !800)
!829 = !DILocation(line: 377, column: 28, scope: !830, inlinedAt: !800)
!830 = distinct !DILexicalBlock(scope: !827, file: !1, line: 376, column: 40)
!831 = !DILocation(line: 51, column: 9, scope: !458)
!832 = !DILocation(line: 54, column: 9, scope: !833)
!833 = distinct !DILexicalBlock(scope: !458, file: !1, line: 54, column: 9)
!834 = !DILocation(line: 54, column: 16, scope: !833)
!835 = !DILocation(line: 54, column: 9, scope: !458)
!836 = !DILocation(line: 55, column: 15, scope: !833)
!837 = !DILocation(line: 48, column: 23, scope: !458)
!838 = !DILocation(line: 55, column: 9, scope: !833)
!839 = !DILocation(line: 57, column: 15, scope: !833)
!840 = !DILocation(line: 58, column: 13, scope: !841)
!841 = distinct !DILexicalBlock(scope: !458, file: !1, line: 58, column: 9)
!842 = !DILocation(line: 58, column: 9, scope: !458)
!843 = !DILocation(line: 59, column: 26, scope: !844)
!844 = distinct !DILexicalBlock(scope: !841, file: !1, line: 58, column: 22)
!845 = !DILocation(line: 59, column: 24, scope: !844)
!846 = !DILocation(line: 60, column: 9, scope: !844)
!847 = !DILocation(line: 64, column: 5, scope: !458)
!848 = !DILocation(line: 65, column: 30, scope: !458)
!849 = !DILocation(line: 65, column: 10, scope: !458)
!850 = !DILocation(line: 65, column: 19, scope: !458)
!851 = !{!852, !728, i64 496}
!852 = !{!"tok_state", !728, i64 0, !728, i64 8, !728, i64 16, !728, i64 24, !728, i64 32, !683, i64 40, !728, i64 48, !683, i64 56, !683, i64 60, !684, i64 64, !683, i64 464, !683, i64 468, !728, i64 472, !728, i64 480, !683, i64 488, !683, i64 492, !728, i64 496, !683, i64 504, !683, i64 508, !683, i64 512, !684, i64 516, !684, i64 916, !683, i64 920, !683, i64 924, !728, i64 928, !683, i64 936, !728, i64 944, !728, i64 952, !728, i64 960, !728, i64 968, !728, i64 976, !728, i64 984}
!853 = !DILocation(line: 67, column: 12, scope: !458)
!854 = !DILocation(line: 67, column: 5, scope: !458)
!855 = !DILocation(line: 68, column: 1, scope: !458)
!856 = !DILocation(line: 184, column: 28, scope: !584)
!857 = !DILocation(line: 184, column: 42, scope: !584)
!858 = !DILocation(line: 184, column: 49, scope: !584)
!859 = !DILocation(line: 184, column: 68, scope: !584)
!860 = !DILocation(line: 185, column: 15, scope: !584)
!861 = !DILocation(line: 189, column: 9, scope: !584)
!862 = !DILocation(line: 191, column: 15, scope: !863)
!863 = distinct !DILexicalBlock(scope: !584, file: !1, line: 191, column: 9)
!864 = !DILocation(line: 187, column: 19, scope: !584)
!865 = !DILocation(line: 191, column: 39, scope: !863)
!866 = !DILocation(line: 191, column: 9, scope: !584)
!867 = !DILocation(line: 192, column: 18, scope: !868)
!868 = distinct !DILexicalBlock(scope: !863, file: !1, line: 191, column: 48)
!869 = !DILocation(line: 192, column: 24, scope: !868)
!870 = !DILocation(line: 193, column: 9, scope: !868)
!871 = !DILocation(line: 194, column: 9, scope: !868)
!872 = !DILocation(line: 197, column: 9, scope: !873)
!873 = distinct !DILexicalBlock(scope: !584, file: !1, line: 197, column: 9)
!874 = !DILocation(line: 197, column: 16, scope: !873)
!875 = !DILocation(line: 197, column: 9, scope: !584)
!876 = !DILocation(line: 198, column: 13, scope: !873)
!877 = !DILocation(line: 198, column: 21, scope: !873)
!878 = !{!879, !734, i64 36024}
!879 = !{!"", !880, i64 0, !728, i64 36008, !728, i64 36016, !734, i64 36024}
!880 = !{!"", !728, i64 0, !684, i64 8}
!881 = !DILocation(line: 198, column: 9, scope: !873)
!882 = !DILocation(line: 202, column: 9, scope: !621)
!883 = !DILocation(line: 202, column: 15, scope: !621)
!884 = !DILocation(line: 202, column: 19, scope: !621)
!885 = !DILocation(line: 208, column: 16, scope: !621)
!886 = !DILocation(line: 203, column: 13, scope: !621)
!887 = !DILocation(line: 209, column: 18, scope: !888)
!888 = distinct !DILexicalBlock(scope: !621, file: !1, line: 209, column: 13)
!889 = !DILocation(line: 209, column: 13, scope: !621)
!890 = !DILocation(line: 210, column: 22, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !1, line: 209, column: 33)
!892 = !DILocation(line: 219, column: 22, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !1, line: 219, column: 17)
!894 = distinct !DILexicalBlock(scope: !895, file: !1, line: 213, column: 43)
!895 = distinct !DILexicalBlock(scope: !621, file: !1, line: 213, column: 13)
!896 = !DILocation(line: 222, column: 22, scope: !897)
!897 = distinct !DILexicalBlock(scope: !893, file: !1, line: 221, column: 13)
!898 = !DILocation(line: 228, column: 15, scope: !621)
!899 = !DILocation(line: 228, column: 19, scope: !621)
!900 = !DILocation(line: 240, column: 23, scope: !631)
!901 = !DILocation(line: 256, column: 23, scope: !902)
!902 = distinct !DILexicalBlock(scope: !621, file: !1, line: 256, column: 13)
!903 = !DILocation(line: 264, column: 37, scope: !904)
!904 = distinct !DILexicalBlock(scope: !621, file: !1, line: 262, column: 13)
!905 = !DILocation(line: 265, column: 43, scope: !904)
!906 = !DILocation(line: 262, column: 23, scope: !904)
!907 = !DILocation(line: 210, column: 35, scope: !891)
!908 = !{!852, !683, i64 40}
!909 = !DILocation(line: 210, column: 28, scope: !891)
!910 = !DILocation(line: 211, column: 13, scope: !891)
!911 = !DILocation(line: 213, column: 18, scope: !895)
!912 = !DILocation(line: 213, column: 34, scope: !913)
!913 = !DILexicalBlockFile(scope: !895, file: !1, discriminator: 1)
!914 = !DILocation(line: 213, column: 31, scope: !895)
!915 = !{!852, !683, i64 60}
!916 = !DILocation(line: 219, column: 17, scope: !893)
!917 = !DILocation(line: 219, column: 29, scope: !893)
!918 = !DILocation(line: 220, column: 19, scope: !893)
!919 = !DILocation(line: 220, column: 26, scope: !893)
!920 = !DILocation(line: 219, column: 17, scope: !894)
!921 = !DILocation(line: 222, column: 31, scope: !897)
!922 = !DILocation(line: 222, column: 29, scope: !897)
!923 = !{!852, !683, i64 468}
!924 = !DILocation(line: 223, column: 29, scope: !897)
!925 = !DILocation(line: 224, column: 13, scope: !897)
!926 = !{!728, !728, i64 0}
!927 = !DILocation(line: 228, column: 17, scope: !621)
!928 = !DILocation(line: 204, column: 16, scope: !621)
!929 = !DILocation(line: 229, column: 44, scope: !621)
!930 = !DILocation(line: 229, column: 24, scope: !621)
!931 = !DILocation(line: 205, column: 15, scope: !621)
!932 = !DILocation(line: 230, column: 17, scope: !933)
!933 = distinct !DILexicalBlock(scope: !621, file: !1, line: 230, column: 13)
!934 = !DILocation(line: 230, column: 13, scope: !621)
!935 = !DILocation(line: 231, column: 28, scope: !936)
!936 = distinct !DILexicalBlock(scope: !933, file: !1, line: 230, column: 26)
!937 = !DILocation(line: 232, column: 13, scope: !936)
!938 = !DILocation(line: 234, column: 17, scope: !939)
!939 = distinct !DILexicalBlock(scope: !621, file: !1, line: 234, column: 13)
!940 = !DILocation(line: 234, column: 13, scope: !621)
!941 = !DILocation(line: 235, column: 13, scope: !939)
!942 = !DILocation(line: 236, column: 9, scope: !621)
!943 = !DILocation(line: 236, column: 18, scope: !621)
!944 = !{!684, !684, i64 0}
!945 = !DILocation(line: 239, column: 18, scope: !633)
!946 = !DILocation(line: 239, column: 13, scope: !621)
!947 = !DILocation(line: 246, column: 27, scope: !640)
!948 = !DILocation(line: 240, column: 31, scope: !631)
!949 = !DILocation(line: 241, column: 29, scope: !950)
!950 = !DILexicalBlockFile(scope: !636, file: !1, discriminator: 3)
!951 = !DILocation(line: 240, column: 58, scope: !631)
!952 = !DILocation(line: 241, column: 29, scope: !630)
!953 = !DILocation(line: 241, column: 29, scope: !954)
!954 = !DILexicalBlockFile(scope: !955, file: !1, discriminator: 5)
!955 = distinct !DILexicalBlock(scope: !636, file: !1, line: 241, column: 29)
!956 = !DILocation(line: 241, column: 29, scope: !955)
!957 = !DILocation(line: 241, column: 29, scope: !958)
!958 = !DILexicalBlockFile(scope: !959, file: !1, discriminator: 7)
!959 = distinct !DILexicalBlock(scope: !955, file: !1, line: 241, column: 29)
!960 = !DILocation(line: 241, column: 29, scope: !961)
!961 = !DILexicalBlockFile(scope: !962, file: !1, discriminator: 9)
!962 = distinct !DILexicalBlock(scope: !959, file: !1, line: 241, column: 29)
!963 = !DILocation(line: 241, column: 29, scope: !962)
!964 = !DILocation(line: 241, column: 29, scope: !965)
!965 = !DILexicalBlockFile(scope: !966, file: !1, discriminator: 11)
!966 = distinct !DILexicalBlock(scope: !962, file: !1, line: 241, column: 29)
!967 = !DILocation(line: 241, column: 29, scope: !631)
!968 = !DILocation(line: 240, column: 17, scope: !632)
!969 = !DILocation(line: 242, column: 17, scope: !970)
!970 = distinct !DILexicalBlock(scope: !631, file: !1, line: 241, column: 48)
!971 = !DILocation(line: 243, column: 32, scope: !970)
!972 = !DILocation(line: 244, column: 17, scope: !970)
!973 = !DILocation(line: 247, column: 29, scope: !639)
!974 = !DILocation(line: 247, column: 29, scope: !975)
!975 = !DILexicalBlockFile(scope: !643, file: !1, discriminator: 3)
!976 = !DILocation(line: 247, column: 29, scope: !977)
!977 = !DILexicalBlockFile(scope: !978, file: !1, discriminator: 5)
!978 = distinct !DILexicalBlock(scope: !643, file: !1, line: 247, column: 29)
!979 = !DILocation(line: 247, column: 29, scope: !978)
!980 = !DILocation(line: 247, column: 29, scope: !981)
!981 = !DILexicalBlockFile(scope: !982, file: !1, discriminator: 7)
!982 = distinct !DILexicalBlock(scope: !978, file: !1, line: 247, column: 29)
!983 = !DILocation(line: 247, column: 29, scope: !984)
!984 = !DILexicalBlockFile(scope: !985, file: !1, discriminator: 9)
!985 = distinct !DILexicalBlock(scope: !982, file: !1, line: 247, column: 29)
!986 = !DILocation(line: 247, column: 29, scope: !985)
!987 = !DILocation(line: 247, column: 29, scope: !988)
!988 = !DILexicalBlockFile(scope: !989, file: !1, discriminator: 11)
!989 = distinct !DILexicalBlock(scope: !985, file: !1, line: 247, column: 29)
!990 = !DILocation(line: 247, column: 29, scope: !640)
!991 = !DILocation(line: 246, column: 22, scope: !631)
!992 = !DILocation(line: 248, column: 17, scope: !993)
!993 = distinct !DILexicalBlock(scope: !640, file: !1, line: 247, column: 48)
!994 = !DILocation(line: 249, column: 26, scope: !993)
!995 = !DILocation(line: 249, column: 31, scope: !993)
!996 = !{!727, !728, i64 24}
!997 = !DILocation(line: 251, column: 32, scope: !993)
!998 = !DILocation(line: 252, column: 17, scope: !993)
!999 = !DILocation(line: 256, column: 13, scope: !902)
!1000 = !{!852, !728, i64 944}
!1001 = !DILocation(line: 256, column: 15, scope: !902)
!1002 = !DILocation(line: 257, column: 26, scope: !902)
!1003 = !DILocation(line: 206, column: 13, scope: !621)
!1004 = !DILocation(line: 256, column: 13, scope: !621)
!1005 = !{!852, !683, i64 488}
!1006 = !DILocation(line: 263, column: 14, scope: !904)
!1007 = !DILocation(line: 262, column: 29, scope: !904)
!1008 = !DILocation(line: 262, column: 13, scope: !621)
!1009 = !DILocation(line: 272, column: 5, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 1)
!1011 = !DILocation(line: 274, column: 9, scope: !584)
!1012 = !DILocation(line: 267, column: 17, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 266, column: 43)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 266, column: 17)
!1015 = distinct !DILexicalBlock(scope: !904, file: !1, line: 265, column: 64)
!1016 = !DILocation(line: 268, column: 26, scope: !1013)
!1017 = !DILocation(line: 268, column: 32, scope: !1013)
!1018 = !DILocation(line: 274, column: 18, scope: !649)
!1019 = !DILocation(line: 269, column: 13, scope: !1013)
!1020 = !DILocation(line: 274, column: 24, scope: !649)
!1021 = !DILocation(line: 275, column: 17, scope: !648)
!1022 = !{!879, !728, i64 36016}
!1023 = !DILocation(line: 188, column: 11, scope: !584)
!1024 = !DILocation(line: 276, column: 20, scope: !648)
!1025 = !DILocation(line: 283, column: 19, scope: !647)
!1026 = !DILocation(line: 283, column: 13, scope: !648)
!1027 = !DILocation(line: 284, column: 30, scope: !646)
!1028 = !{!852, !728, i64 8}
!1029 = !DILocation(line: 284, column: 19, scope: !646)
!1030 = !DILocation(line: 285, column: 22, scope: !646)
!1031 = !DILocation(line: 285, column: 18, scope: !646)
!1032 = !DILocation(line: 287, column: 13, scope: !646)
!1033 = !DILocation(line: 288, column: 33, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 287, column: 22)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 287, column: 13)
!1036 = distinct !DILexicalBlock(scope: !646, file: !1, line: 287, column: 13)
!1037 = !DILocation(line: 302, column: 26, scope: !1034)
!1038 = !DILocation(line: 289, column: 26, scope: !1034)
!1039 = !DILocation(line: 289, column: 25, scope: !1034)
!1040 = !DILocation(line: 288, column: 17, scope: !1034)
!1041 = !DILocation(line: 295, column: 36, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 294, column: 31)
!1043 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 294, column: 21)
!1044 = !DILocation(line: 296, column: 21, scope: !1042)
!1045 = !DILocation(line: 298, column: 21, scope: !1042)
!1046 = !DILocation(line: 303, column: 26, scope: !1034)
!1047 = !DILocation(line: 303, column: 25, scope: !1034)
!1048 = !DILocation(line: 302, column: 17, scope: !1034)
!1049 = !DILocation(line: 312, column: 18, scope: !584)
!1050 = !DILocation(line: 312, column: 14, scope: !584)
!1051 = !DILocation(line: 312, column: 12, scope: !584)
!1052 = !DILocation(line: 314, column: 5, scope: !584)
!1053 = !DILocation(line: 316, column: 11, scope: !655)
!1054 = !DILocation(line: 316, column: 9, scope: !584)
!1055 = !DILocation(line: 317, column: 18, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !654, file: !1, line: 317, column: 13)
!1057 = !DILocation(line: 317, column: 23, scope: !1056)
!1058 = !DILocation(line: 317, column: 13, scope: !654)
!1059 = !DILocation(line: 318, column: 28, scope: !1056)
!1060 = !DILocation(line: 318, column: 13, scope: !1056)
!1061 = !DILocation(line: 319, column: 32, scope: !654)
!1062 = !DILocation(line: 319, column: 18, scope: !654)
!1063 = !DILocation(line: 319, column: 25, scope: !654)
!1064 = !{!727, !683, i64 16}
!1065 = !DILocation(line: 320, column: 18, scope: !653)
!1066 = !{!852, !728, i64 0}
!1067 = !DILocation(line: 320, column: 22, scope: !653)
!1068 = !DILocation(line: 324, column: 35, scope: !652)
!1069 = !DILocation(line: 320, column: 13, scope: !654)
!1070 = !DILocation(line: 323, column: 42, scope: !652)
!1071 = !DILocation(line: 323, column: 46, scope: !652)
!1072 = !DILocation(line: 323, column: 31, scope: !652)
!1073 = !DILocation(line: 323, column: 22, scope: !652)
!1074 = !DILocation(line: 323, column: 29, scope: !652)
!1075 = !{!727, !683, i64 20}
!1076 = !DILocation(line: 324, column: 24, scope: !652)
!1077 = !{!852, !728, i64 16}
!1078 = !DILocation(line: 324, column: 28, scope: !652)
!1079 = !DILocation(line: 321, column: 20, scope: !652)
!1080 = !DILocation(line: 325, column: 58, scope: !652)
!1081 = !DILocation(line: 325, column: 38, scope: !652)
!1082 = !DILocation(line: 325, column: 22, scope: !652)
!1083 = !DILocation(line: 325, column: 27, scope: !652)
!1084 = !DILocation(line: 326, column: 31, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !652, file: !1, line: 326, column: 17)
!1086 = !DILocation(line: 326, column: 17, scope: !652)
!1087 = !DILocation(line: 327, column: 25, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 327, column: 21)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 326, column: 40)
!1090 = !DILocation(line: 327, column: 21, scope: !1089)
!1091 = !DILocation(line: 328, column: 21, scope: !1088)
!1092 = !DILocation(line: 329, column: 26, scope: !1089)
!1093 = !DILocation(line: 329, column: 17, scope: !1089)
!1094 = !DILocation(line: 329, column: 36, scope: !1089)
!1095 = !DILocation(line: 330, column: 13, scope: !1089)
!1096 = !DILocation(line: 332, column: 21, scope: !658)
!1097 = !{!852, !728, i64 928}
!1098 = !DILocation(line: 332, column: 30, scope: !658)
!1099 = !DILocation(line: 332, column: 16, scope: !655)
!1100 = !DILocation(line: 336, column: 19, scope: !657)
!1101 = !DILocation(line: 336, column: 15, scope: !657)
!1102 = !DILocation(line: 337, column: 13, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !657, file: !1, line: 337, column: 13)
!1104 = !DILocation(line: 337, column: 13, scope: !657)
!1105 = !DILocation(line: 338, column: 52, scope: !1103)
!1106 = !DILocation(line: 338, column: 40, scope: !1103)
!1107 = !DILocation(line: 338, column: 61, scope: !1103)
!1108 = !DILocation(line: 338, column: 24, scope: !1103)
!1109 = !DILocation(line: 338, column: 16, scope: !1103)
!1110 = !DILocation(line: 338, column: 22, scope: !1103)
!1111 = !{!1112, !728, i64 8}
!1112 = !{!"_node", !1113, i64 0, !728, i64 8, !683, i64 16, !683, i64 20, !683, i64 24, !728, i64 32}
!1113 = !{!"short", !684, i64 0}
!1114 = !DILocation(line: 339, column: 20, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !657, file: !1, line: 339, column: 13)
!1116 = !DILocation(line: 339, column: 13, scope: !657)
!1117 = !DILocation(line: 340, column: 28, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 339, column: 30)
!1119 = !DILocation(line: 342, column: 31, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1118, file: !1, line: 341, column: 17)
!1121 = !DILocation(line: 342, column: 17, scope: !1120)
!1122 = !DILocation(line: 346, column: 31, scope: !657)
!1123 = !DILocation(line: 346, column: 9, scope: !657)
!1124 = !DILocation(line: 347, column: 9, scope: !657)
!1125 = !DILocation(line: 348, column: 23, scope: !657)
!1126 = !DILocation(line: 349, column: 12, scope: !657)
!1127 = !DILocation(line: 349, column: 24, scope: !657)
!1128 = !{!1112, !683, i64 24}
!1129 = !DILocation(line: 350, column: 12, scope: !657)
!1130 = !DILocation(line: 350, column: 20, scope: !657)
!1131 = !{!1112, !728, i64 32}
!1132 = !DILocation(line: 352, column: 5, scope: !658)
!1133 = !DILocation(line: 355, column: 5, scope: !584)
!1134 = !DILocation(line: 357, column: 5, scope: !584)
!1135 = !DILocation(line: 358, column: 1, scope: !584)
!1136 = !DILocation(line: 96, column: 26, scope: !525)
!1137 = !DILocation(line: 96, column: 42, scope: !525)
!1138 = !DILocation(line: 96, column: 61, scope: !525)
!1139 = !DILocation(line: 96, column: 68, scope: !525)
!1140 = !DILocation(line: 97, column: 32, scope: !525)
!1141 = !DILocation(line: 97, column: 49, scope: !525)
!1142 = !DILocation(line: 98, column: 32, scope: !525)
!1143 = !DILocation(line: 105, column: 31, scope: !536, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 100, column: 12, scope: !525)
!1145 = !DILocation(line: 105, column: 47, scope: !536, inlinedAt: !1144)
!1146 = !DILocation(line: 105, column: 69, scope: !536, inlinedAt: !1144)
!1147 = !DILocation(line: 106, column: 34, scope: !536, inlinedAt: !1144)
!1148 = !DILocation(line: 106, column: 41, scope: !536, inlinedAt: !1144)
!1149 = !DILocation(line: 107, column: 37, scope: !536, inlinedAt: !1144)
!1150 = !DILocation(line: 107, column: 54, scope: !536, inlinedAt: !1144)
!1151 = !DILocation(line: 108, column: 37, scope: !536, inlinedAt: !1144)
!1152 = !DILocation(line: 108, column: 50, scope: !536, inlinedAt: !1144)
!1153 = !DILocation(line: 110, column: 5, scope: !536, inlinedAt: !1144)
!1154 = !DILocation(line: 110, column: 9, scope: !536, inlinedAt: !1144)
!1155 = !DILocation(line: 111, column: 12, scope: !536, inlinedAt: !1144)
!1156 = !DILocation(line: 113, column: 1, scope: !536, inlinedAt: !1144)
!1157 = !DILocation(line: 100, column: 5, scope: !525)
!1158 = !DILocation(line: 105, column: 31, scope: !536)
!1159 = !DILocation(line: 105, column: 47, scope: !536)
!1160 = !DILocation(line: 105, column: 69, scope: !536)
!1161 = !DILocation(line: 106, column: 34, scope: !536)
!1162 = !DILocation(line: 106, column: 41, scope: !536)
!1163 = !DILocation(line: 107, column: 37, scope: !536)
!1164 = !DILocation(line: 107, column: 54, scope: !536)
!1165 = !DILocation(line: 108, column: 37, scope: !536)
!1166 = !DILocation(line: 108, column: 50, scope: !536)
!1167 = !DILocation(line: 110, column: 5, scope: !536)
!1168 = !DILocation(line: 110, column: 9, scope: !536)
!1169 = !DILocation(line: 111, column: 12, scope: !536)
!1170 = !DILocation(line: 113, column: 1, scope: !536)
!1171 = !DILocation(line: 111, column: 5, scope: !536)
!1172 = !DILocation(line: 138, column: 33, scope: !564)
!1173 = !DILocation(line: 138, column: 49, scope: !564)
!1174 = !DILocation(line: 139, column: 39, scope: !564)
!1175 = !DILocation(line: 139, column: 53, scope: !564)
!1176 = !DILocation(line: 139, column: 60, scope: !564)
!1177 = !DILocation(line: 140, column: 39, scope: !564)
!1178 = !DILocation(line: 140, column: 56, scope: !564)
!1179 = !DILocation(line: 141, column: 39, scope: !564)
!1180 = !DILocation(line: 141, column: 53, scope: !564)
!1181 = !DILocation(line: 144, column: 15, scope: !564)
!1182 = !DILocation(line: 146, column: 18, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !564, file: !1, line: 146, column: 9)
!1184 = !DILocation(line: 146, column: 9, scope: !564)
!1185 = !DILocation(line: 147, column: 19, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 146, column: 27)
!1187 = !DILocation(line: 148, column: 21, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 148, column: 13)
!1189 = !DILocation(line: 148, column: 13, scope: !1186)
!1190 = !DILocation(line: 149, column: 22, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 148, column: 30)
!1192 = !DILocation(line: 149, column: 28, scope: !1191)
!1193 = !DILocation(line: 150, column: 13, scope: !1191)
!1194 = !DILocation(line: 116, column: 32, scope: !550, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 154, column: 9, scope: !564)
!1196 = !DILocation(line: 116, column: 46, scope: !550, inlinedAt: !1195)
!1197 = !DILocation(line: 117, column: 38, scope: !550, inlinedAt: !1195)
!1198 = !DILocation(line: 117, column: 52, scope: !550, inlinedAt: !1195)
!1199 = !DILocation(line: 117, column: 59, scope: !550, inlinedAt: !1195)
!1200 = !DILocation(line: 118, column: 38, scope: !550, inlinedAt: !1195)
!1201 = !DILocation(line: 118, column: 55, scope: !550, inlinedAt: !1195)
!1202 = !DILocation(line: 119, column: 38, scope: !550, inlinedAt: !1195)
!1203 = !DILocation(line: 119, column: 52, scope: !550, inlinedAt: !1195)
!1204 = !DILocation(line: 361, column: 21, scope: !659, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 123, column: 9, scope: !1206, inlinedAt: !1195)
!1206 = distinct !DILexicalBlock(scope: !550, file: !1, line: 123, column: 9)
!1207 = !DILocation(line: 361, column: 40, scope: !659, inlinedAt: !1205)
!1208 = !DILocation(line: 363, column: 14, scope: !659, inlinedAt: !1205)
!1209 = !DILocation(line: 363, column: 20, scope: !659, inlinedAt: !1205)
!1210 = !DILocation(line: 364, column: 14, scope: !659, inlinedAt: !1205)
!1211 = !DILocation(line: 367, column: 14, scope: !659, inlinedAt: !1205)
!1212 = !DILocation(line: 367, column: 20, scope: !659, inlinedAt: !1205)
!1213 = !DILocation(line: 365, column: 21, scope: !659, inlinedAt: !1205)
!1214 = !DILocation(line: 368, column: 14, scope: !659, inlinedAt: !1205)
!1215 = !DILocation(line: 368, column: 23, scope: !659, inlinedAt: !1205)
!1216 = !DILocation(line: 370, column: 9, scope: !814, inlinedAt: !1205)
!1217 = !DILocation(line: 370, column: 9, scope: !659, inlinedAt: !1205)
!1218 = !DILocation(line: 371, column: 9, scope: !817, inlinedAt: !1205)
!1219 = !DILocation(line: 372, column: 18, scope: !817, inlinedAt: !1205)
!1220 = !DILocation(line: 372, column: 27, scope: !817, inlinedAt: !1205)
!1221 = !DILocation(line: 373, column: 5, scope: !817, inlinedAt: !1205)
!1222 = !DILocation(line: 375, column: 29, scope: !823, inlinedAt: !1205)
!1223 = !DILocation(line: 375, column: 18, scope: !823, inlinedAt: !1205)
!1224 = !DILocation(line: 375, column: 27, scope: !823, inlinedAt: !1205)
!1225 = !DILocation(line: 376, column: 31, scope: !827, inlinedAt: !1205)
!1226 = !DILocation(line: 376, column: 13, scope: !823, inlinedAt: !1205)
!1227 = !DILocation(line: 377, column: 28, scope: !830, inlinedAt: !1205)
!1228 = !DILocation(line: 143, column: 11, scope: !564)
!1229 = !DILocation(line: 157, column: 5, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !580, file: !1, discriminator: 1)
!1231 = !DILocation(line: 157, column: 5, scope: !580)
!1232 = !DILocation(line: 126, column: 16, scope: !1233, inlinedAt: !1195)
!1233 = distinct !DILexicalBlock(scope: !550, file: !1, line: 126, column: 9)
!1234 = !DILocation(line: 121, column: 23, scope: !550, inlinedAt: !1195)
!1235 = !DILocation(line: 126, column: 57, scope: !1233, inlinedAt: !1195)
!1236 = !DILocation(line: 126, column: 9, scope: !550, inlinedAt: !1195)
!1237 = !DILocation(line: 127, column: 24, scope: !1238, inlinedAt: !1195)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 126, column: 66)
!1239 = !DILocation(line: 128, column: 9, scope: !1238, inlinedAt: !1195)
!1240 = !DILocation(line: 131, column: 5, scope: !550, inlinedAt: !1195)
!1241 = !DILocation(line: 132, column: 30, scope: !550, inlinedAt: !1195)
!1242 = !DILocation(line: 132, column: 10, scope: !550, inlinedAt: !1195)
!1243 = !DILocation(line: 132, column: 19, scope: !550, inlinedAt: !1195)
!1244 = !DILocation(line: 134, column: 12, scope: !550, inlinedAt: !1195)
!1245 = !DILocation(line: 134, column: 5, scope: !550, inlinedAt: !1195)
!1246 = !DILocation(line: 154, column: 9, scope: !564)
!1247 = !DILocation(line: 157, column: 5, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !582, file: !1, discriminator: 4)
!1249 = !DILocation(line: 157, column: 5, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !582, file: !1, line: 157, column: 5)
!1251 = !DILocation(line: 157, column: 5, scope: !582)
!1252 = !DILocation(line: 157, column: 5, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1250, file: !1, discriminator: 6)
!1254 = !DILocation(line: 160, column: 1, scope: !564)
!1255 = !DILocation(line: 116, column: 32, scope: !550)
!1256 = !DILocation(line: 116, column: 46, scope: !550)
!1257 = !DILocation(line: 117, column: 38, scope: !550)
!1258 = !DILocation(line: 117, column: 52, scope: !550)
!1259 = !DILocation(line: 117, column: 59, scope: !550)
!1260 = !DILocation(line: 118, column: 38, scope: !550)
!1261 = !DILocation(line: 118, column: 55, scope: !550)
!1262 = !DILocation(line: 119, column: 38, scope: !550)
!1263 = !DILocation(line: 119, column: 52, scope: !550)
!1264 = !DILocation(line: 361, column: 21, scope: !659, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 123, column: 9, scope: !1206)
!1266 = !DILocation(line: 361, column: 40, scope: !659, inlinedAt: !1265)
!1267 = !DILocation(line: 363, column: 14, scope: !659, inlinedAt: !1265)
!1268 = !DILocation(line: 363, column: 20, scope: !659, inlinedAt: !1265)
!1269 = !DILocation(line: 364, column: 14, scope: !659, inlinedAt: !1265)
!1270 = !DILocation(line: 367, column: 14, scope: !659, inlinedAt: !1265)
!1271 = !DILocation(line: 367, column: 20, scope: !659, inlinedAt: !1265)
!1272 = !DILocation(line: 365, column: 21, scope: !659, inlinedAt: !1265)
!1273 = !DILocation(line: 368, column: 14, scope: !659, inlinedAt: !1265)
!1274 = !DILocation(line: 368, column: 23, scope: !659, inlinedAt: !1265)
!1275 = !DILocation(line: 370, column: 9, scope: !814, inlinedAt: !1265)
!1276 = !DILocation(line: 370, column: 9, scope: !659, inlinedAt: !1265)
!1277 = !DILocation(line: 371, column: 9, scope: !817, inlinedAt: !1265)
!1278 = !DILocation(line: 372, column: 18, scope: !817, inlinedAt: !1265)
!1279 = !DILocation(line: 372, column: 27, scope: !817, inlinedAt: !1265)
!1280 = !DILocation(line: 373, column: 5, scope: !817, inlinedAt: !1265)
!1281 = !DILocation(line: 375, column: 29, scope: !823, inlinedAt: !1265)
!1282 = !DILocation(line: 375, column: 18, scope: !823, inlinedAt: !1265)
!1283 = !DILocation(line: 375, column: 27, scope: !823, inlinedAt: !1265)
!1284 = !DILocation(line: 376, column: 31, scope: !827, inlinedAt: !1265)
!1285 = !DILocation(line: 376, column: 13, scope: !823, inlinedAt: !1265)
!1286 = !DILocation(line: 377, column: 28, scope: !830, inlinedAt: !1265)
!1287 = !DILocation(line: 123, column: 9, scope: !550)
!1288 = !DILocation(line: 126, column: 16, scope: !1233)
!1289 = !DILocation(line: 121, column: 23, scope: !550)
!1290 = !DILocation(line: 126, column: 57, scope: !1233)
!1291 = !DILocation(line: 126, column: 9, scope: !550)
!1292 = !DILocation(line: 127, column: 24, scope: !1238)
!1293 = !DILocation(line: 128, column: 9, scope: !1238)
!1294 = !DILocation(line: 131, column: 5, scope: !550)
!1295 = !DILocation(line: 132, column: 30, scope: !550)
!1296 = !DILocation(line: 132, column: 10, scope: !550)
!1297 = !DILocation(line: 132, column: 19, scope: !550)
!1298 = !DILocation(line: 134, column: 12, scope: !550)
!1299 = !DILocation(line: 134, column: 5, scope: !550)
!1300 = !DILocation(line: 135, column: 1, scope: !550)
