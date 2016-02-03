; ModuleID = 'node.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._node = type { i16, i8*, i32, i32, i32, %struct._node* }

; Function Attrs: nounwind uwtable
define %struct._node* @PyNode_New(i32 %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !29, metadata !81), !dbg !82
  %call = tail call i8* @PyObject_Malloc(i64 40) #5, !dbg !83
  tail call void @llvm.dbg.value(metadata %struct._node* %0, i64 0, metadata !30, metadata !81), !dbg !84
  %cmp = icmp eq i8* %call, null, !dbg !85
  br i1 %cmp, label %cleanup, label %if.end, !dbg !87

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct._node*, !dbg !88
  %conv = trunc i32 %type to i16, !dbg !89
  %n_type = bitcast i8* %call to i16*, !dbg !90
  store i16 %conv, i16* %n_type, align 2, !dbg !91, !tbaa !92
  %n_str = getelementptr inbounds i8, i8* %call, i64 8, !dbg !99
  %1 = bitcast i8* %n_str to i8**, !dbg !99
  store i8* null, i8** %1, align 8, !dbg !100, !tbaa !101
  %n_lineno = getelementptr inbounds i8, i8* %call, i64 16, !dbg !102
  %2 = bitcast i8* %n_lineno to i32*, !dbg !102
  store i32 0, i32* %2, align 4, !dbg !103, !tbaa !104
  %n_nchildren = getelementptr inbounds i8, i8* %call, i64 24, !dbg !105
  %3 = bitcast i8* %n_nchildren to i32*, !dbg !105
  store i32 0, i32* %3, align 4, !dbg !106, !tbaa !107
  %n_child = getelementptr inbounds i8, i8* %call, i64 32, !dbg !108
  %4 = bitcast i8* %n_child to %struct._node**, !dbg !108
  store %struct._node* null, %struct._node** %4, align 8, !dbg !109, !tbaa !110
  br label %cleanup, !dbg !111

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._node* [ %0, %if.end ], [ null, %entry ]
  ret %struct._node* %retval.0, !dbg !112
}

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: nounwind uwtable
define i32 @PyNode_AddChild(%struct._node* nocapture %n1, i32 %type, i8* %str, i32 %lineno, i32 %col_offset) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._node* %n1, i64 0, metadata !35, metadata !81), !dbg !113
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !36, metadata !81), !dbg !114
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !37, metadata !81), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !38, metadata !81), !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %col_offset, i64 0, metadata !39, metadata !81), !dbg !117
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %n1, i64 0, i32 4, !dbg !118
  %0 = load i32, i32* %n_nchildren, align 4, !dbg !118, !tbaa !107
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !40, metadata !81), !dbg !119
  %cmp = icmp eq i32 %0, 2147483647, !dbg !120
  %cmp1 = icmp slt i32 %0, 0, !dbg !122
  %or.cond = or i1 %cmp, %cmp1, !dbg !123
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !123

if.end:                                           ; preds = %entry
  %cmp2 = icmp slt i32 %0, 2, !dbg !124
  br i1 %cmp2, label %cond.end.9, label %cond.false, !dbg !124

cond.false:                                       ; preds = %if.end
  %cmp3 = icmp slt i32 %0, 129, !dbg !125
  br i1 %cmp3, label %cond.true.5, label %cond.false.7, !dbg !125

cond.true.5:                                      ; preds = %cond.false
  %add = add i32 %0, 3, !dbg !127
  %and = and i32 %add, -4, !dbg !127
  br label %cond.end.9, !dbg !127

cond.false.7:                                     ; preds = %cond.false
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !67, metadata !81), !dbg !129
  tail call void @llvm.dbg.value(metadata i32 256, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.i = icmp sgt i32 %0, 256, !dbg !133
  br i1 %cmp.i, label %while.body.i, label %cond.end.9, !dbg !134

while.body.i:                                     ; preds = %cond.false.7
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.1.i = icmp sgt i32 %0, 512, !dbg !133
  br i1 %cmp.1.i, label %while.body.1.i, label %cond.end.9, !dbg !134

while.body.1.i:                                   ; preds = %while.body.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.2.i = icmp sgt i32 %0, 1024, !dbg !133
  br i1 %cmp.2.i, label %while.body.2.i, label %cond.end.9, !dbg !134

while.body.2.i:                                   ; preds = %while.body.1.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.3.i = icmp sgt i32 %0, 2048, !dbg !133
  br i1 %cmp.3.i, label %while.body.3.i, label %cond.end.9, !dbg !134

while.body.3.i:                                   ; preds = %while.body.2.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.4.i = icmp sgt i32 %0, 4096, !dbg !133
  br i1 %cmp.4.i, label %while.body.4.i, label %cond.end.9, !dbg !134

while.body.4.i:                                   ; preds = %while.body.3.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.5.i = icmp sgt i32 %0, 8192, !dbg !133
  br i1 %cmp.5.i, label %while.body.5.i, label %cond.end.9, !dbg !134

while.body.5.i:                                   ; preds = %while.body.4.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.6.i = icmp sgt i32 %0, 16384, !dbg !133
  br i1 %cmp.6.i, label %while.body.6.i, label %cond.end.9, !dbg !134

while.body.6.i:                                   ; preds = %while.body.5.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.7.i = icmp sgt i32 %0, 32768, !dbg !133
  br i1 %cmp.7.i, label %while.body.7.i, label %cond.end.9, !dbg !134

while.body.7.i:                                   ; preds = %while.body.6.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.8.i = icmp sgt i32 %0, 65536, !dbg !133
  br i1 %cmp.8.i, label %while.body.8.i, label %cond.end.9, !dbg !134

while.body.8.i:                                   ; preds = %while.body.7.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.9.i = icmp sgt i32 %0, 131072, !dbg !133
  br i1 %cmp.9.i, label %while.body.9.i, label %cond.end.9, !dbg !134

while.body.9.i:                                   ; preds = %while.body.8.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.10.i = icmp sgt i32 %0, 262144, !dbg !133
  br i1 %cmp.10.i, label %while.body.10.i, label %cond.end.9, !dbg !134

while.body.10.i:                                  ; preds = %while.body.9.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.11.i = icmp sgt i32 %0, 524288, !dbg !133
  br i1 %cmp.11.i, label %while.body.11.i, label %cond.end.9, !dbg !134

while.body.11.i:                                  ; preds = %while.body.10.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.12.i = icmp sgt i32 %0, 1048576, !dbg !133
  br i1 %cmp.12.i, label %while.body.12.i, label %cond.end.9, !dbg !134

while.body.12.i:                                  ; preds = %while.body.11.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.13.i = icmp sgt i32 %0, 2097152, !dbg !133
  br i1 %cmp.13.i, label %while.body.13.i, label %cond.end.9, !dbg !134

while.body.13.i:                                  ; preds = %while.body.12.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.14.i = icmp sgt i32 %0, 4194304, !dbg !133
  br i1 %cmp.14.i, label %while.body.14.i, label %cond.end.9, !dbg !134

while.body.14.i:                                  ; preds = %while.body.13.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.15.i = icmp sgt i32 %0, 8388608, !dbg !133
  br i1 %cmp.15.i, label %while.body.15.i, label %cond.end.9, !dbg !134

while.body.15.i:                                  ; preds = %while.body.14.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.16.i = icmp sgt i32 %0, 16777216, !dbg !133
  br i1 %cmp.16.i, label %while.body.16.i, label %cond.end.9, !dbg !134

while.body.16.i:                                  ; preds = %while.body.15.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.17.i = icmp sgt i32 %0, 33554432, !dbg !133
  br i1 %cmp.17.i, label %while.body.17.i, label %cond.end.9, !dbg !134

while.body.17.i:                                  ; preds = %while.body.16.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.18.i = icmp sgt i32 %0, 67108864, !dbg !133
  br i1 %cmp.18.i, label %while.body.18.i, label %cond.end.9, !dbg !134

while.body.18.i:                                  ; preds = %while.body.17.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.19.i = icmp sgt i32 %0, 134217728, !dbg !133
  br i1 %cmp.19.i, label %while.body.19.i, label %cond.end.9, !dbg !134

while.body.19.i:                                  ; preds = %while.body.18.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.20.i = icmp sgt i32 %0, 268435456, !dbg !133
  br i1 %cmp.20.i, label %while.body.20.i, label %cond.end.9, !dbg !134

while.body.20.i:                                  ; preds = %while.body.19.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.21.i = icmp sgt i32 %0, 536870912, !dbg !133
  br i1 %cmp.21.i, label %while.body.21.i, label %cond.end.9, !dbg !134

while.body.21.i:                                  ; preds = %while.body.20.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %cmp.22.i = icmp sgt i32 %0, 1073741824, !dbg !133
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !132
  %..i = select i1 %cmp.22.i, i32 -1, i32 1073741824, !dbg !134
  br label %cond.end.9, !dbg !134

cond.end.9:                                       ; preds = %while.body.21.i, %while.body.20.i, %while.body.19.i, %while.body.18.i, %while.body.17.i, %while.body.16.i, %while.body.15.i, %while.body.14.i, %while.body.13.i, %while.body.12.i, %while.body.11.i, %while.body.10.i, %while.body.9.i, %while.body.8.i, %while.body.7.i, %while.body.6.i, %while.body.5.i, %while.body.4.i, %while.body.3.i, %while.body.2.i, %while.body.1.i, %while.body.i, %cond.false.7, %if.end, %cond.true.5
  %cond10 = phi i32 [ %and, %cond.true.5 ], [ %0, %if.end ], [ %..i, %while.body.21.i ], [ 256, %cond.false.7 ], [ 512, %while.body.i ], [ 1024, %while.body.1.i ], [ 2048, %while.body.2.i ], [ 4096, %while.body.3.i ], [ 8192, %while.body.4.i ], [ 16384, %while.body.5.i ], [ 32768, %while.body.6.i ], [ 65536, %while.body.7.i ], [ 131072, %while.body.8.i ], [ 262144, %while.body.9.i ], [ 524288, %while.body.10.i ], [ 1048576, %while.body.11.i ], [ 2097152, %while.body.12.i ], [ 4194304, %while.body.13.i ], [ 8388608, %while.body.14.i ], [ 16777216, %while.body.15.i ], [ 33554432, %while.body.16.i ], [ 67108864, %while.body.17.i ], [ 134217728, %while.body.18.i ], [ 268435456, %while.body.19.i ], [ 536870912, %while.body.20.i ], !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %cond10, i64 0, metadata !42, metadata !81), !dbg !135
  %add12 = add i32 %0, 1, !dbg !136
  %cmp13 = icmp slt i32 %add12, 2, !dbg !136
  br i1 %cmp13, label %cond.end.33, label %cond.false.18, !dbg !136

cond.false.18:                                    ; preds = %cond.end.9
  %cmp20 = icmp slt i32 %add12, 129, !dbg !137
  br i1 %cmp20, label %cond.true.22, label %cond.false.27, !dbg !137

cond.true.22:                                     ; preds = %cond.false.18
  %add25 = add i32 %0, 4, !dbg !138
  %and26 = and i32 %add25, -4, !dbg !138
  br label %cond.end.33, !dbg !138

cond.false.27:                                    ; preds = %cond.false.18
  tail call void @llvm.dbg.value(metadata i32 %add12, i64 0, metadata !67, metadata !81), !dbg !139
  tail call void @llvm.dbg.value(metadata i32 256, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.i.97 = icmp sgt i32 %add12, 256, !dbg !142
  br i1 %cmp.i.97, label %while.body.i.99, label %cond.end.33, !dbg !143

while.body.i.99:                                  ; preds = %cond.false.27
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.1.i.98 = icmp sgt i32 %add12, 512, !dbg !142
  br i1 %cmp.1.i.98, label %while.body.1.i.103, label %cond.end.33, !dbg !143

while.body.1.i.103:                               ; preds = %while.body.i.99
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.2.i.102 = icmp sgt i32 %add12, 1024, !dbg !142
  br i1 %cmp.2.i.102, label %while.body.2.i.105, label %cond.end.33, !dbg !143

while.body.2.i.105:                               ; preds = %while.body.1.i.103
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.3.i.104 = icmp sgt i32 %add12, 2048, !dbg !142
  br i1 %cmp.3.i.104, label %while.body.3.i.107, label %cond.end.33, !dbg !143

while.body.3.i.107:                               ; preds = %while.body.2.i.105
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.4.i.106 = icmp sgt i32 %add12, 4096, !dbg !142
  br i1 %cmp.4.i.106, label %while.body.4.i.109, label %cond.end.33, !dbg !143

while.body.4.i.109:                               ; preds = %while.body.3.i.107
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.5.i.108 = icmp sgt i32 %add12, 8192, !dbg !142
  br i1 %cmp.5.i.108, label %while.body.5.i.111, label %cond.end.33, !dbg !143

while.body.5.i.111:                               ; preds = %while.body.4.i.109
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.6.i.110 = icmp sgt i32 %add12, 16384, !dbg !142
  br i1 %cmp.6.i.110, label %while.body.6.i.113, label %cond.end.33, !dbg !143

while.body.6.i.113:                               ; preds = %while.body.5.i.111
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.7.i.112 = icmp sgt i32 %add12, 32768, !dbg !142
  br i1 %cmp.7.i.112, label %while.body.7.i.115, label %cond.end.33, !dbg !143

while.body.7.i.115:                               ; preds = %while.body.6.i.113
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.8.i.114 = icmp sgt i32 %add12, 65536, !dbg !142
  br i1 %cmp.8.i.114, label %while.body.8.i.117, label %cond.end.33, !dbg !143

while.body.8.i.117:                               ; preds = %while.body.7.i.115
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.9.i.116 = icmp sgt i32 %add12, 131072, !dbg !142
  br i1 %cmp.9.i.116, label %while.body.9.i.119, label %cond.end.33, !dbg !143

while.body.9.i.119:                               ; preds = %while.body.8.i.117
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.10.i.118 = icmp sgt i32 %add12, 262144, !dbg !142
  br i1 %cmp.10.i.118, label %while.body.10.i.121, label %cond.end.33, !dbg !143

while.body.10.i.121:                              ; preds = %while.body.9.i.119
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.11.i.120 = icmp sgt i32 %add12, 524288, !dbg !142
  br i1 %cmp.11.i.120, label %while.body.11.i.123, label %cond.end.33, !dbg !143

while.body.11.i.123:                              ; preds = %while.body.10.i.121
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.12.i.122 = icmp sgt i32 %add12, 1048576, !dbg !142
  br i1 %cmp.12.i.122, label %while.body.12.i.125, label %cond.end.33, !dbg !143

while.body.12.i.125:                              ; preds = %while.body.11.i.123
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.13.i.124 = icmp sgt i32 %add12, 2097152, !dbg !142
  br i1 %cmp.13.i.124, label %while.body.13.i.127, label %cond.end.33, !dbg !143

while.body.13.i.127:                              ; preds = %while.body.12.i.125
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.14.i.126 = icmp sgt i32 %add12, 4194304, !dbg !142
  br i1 %cmp.14.i.126, label %while.body.14.i.129, label %cond.end.33, !dbg !143

while.body.14.i.129:                              ; preds = %while.body.13.i.127
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.15.i.128 = icmp sgt i32 %add12, 8388608, !dbg !142
  br i1 %cmp.15.i.128, label %while.body.15.i.131, label %cond.end.33, !dbg !143

while.body.15.i.131:                              ; preds = %while.body.14.i.129
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.16.i.130 = icmp sgt i32 %add12, 16777216, !dbg !142
  br i1 %cmp.16.i.130, label %while.body.16.i.133, label %cond.end.33, !dbg !143

while.body.16.i.133:                              ; preds = %while.body.15.i.131
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.17.i.132 = icmp sgt i32 %add12, 33554432, !dbg !142
  br i1 %cmp.17.i.132, label %while.body.17.i.135, label %cond.end.33, !dbg !143

while.body.17.i.135:                              ; preds = %while.body.16.i.133
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.18.i.134 = icmp sgt i32 %add12, 67108864, !dbg !142
  br i1 %cmp.18.i.134, label %while.body.18.i.137, label %cond.end.33, !dbg !143

while.body.18.i.137:                              ; preds = %while.body.17.i.135
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.19.i.136 = icmp sgt i32 %add12, 134217728, !dbg !142
  br i1 %cmp.19.i.136, label %while.body.19.i.139, label %cond.end.33, !dbg !143

while.body.19.i.139:                              ; preds = %while.body.18.i.137
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.20.i.138 = icmp sgt i32 %add12, 268435456, !dbg !142
  br i1 %cmp.20.i.138, label %while.body.20.i.141, label %cond.end.33, !dbg !143

while.body.20.i.141:                              ; preds = %while.body.19.i.139
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.21.i.140 = icmp sgt i32 %add12, 536870912, !dbg !142
  br i1 %cmp.21.i.140, label %while.body.21.i.144, label %cond.end.33, !dbg !143

while.body.21.i.144:                              ; preds = %while.body.20.i.141
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %cmp.22.i.142 = icmp sgt i32 %add12, 1073741824, !dbg !142
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !141
  %..i.143 = select i1 %cmp.22.i.142, i32 -1, i32 1073741824, !dbg !143
  br label %cond.end.33, !dbg !143

cond.end.33:                                      ; preds = %while.body.21.i.144, %while.body.20.i.141, %while.body.19.i.139, %while.body.18.i.137, %while.body.17.i.135, %while.body.16.i.133, %while.body.15.i.131, %while.body.14.i.129, %while.body.13.i.127, %while.body.12.i.125, %while.body.11.i.123, %while.body.10.i.121, %while.body.9.i.119, %while.body.8.i.117, %while.body.7.i.115, %while.body.6.i.113, %while.body.5.i.111, %while.body.4.i.109, %while.body.3.i.107, %while.body.2.i.105, %while.body.1.i.103, %while.body.i.99, %cond.false.27, %cond.end.9, %cond.true.22
  %cond34 = phi i32 [ %and26, %cond.true.22 ], [ %add12, %cond.end.9 ], [ %..i.143, %while.body.21.i.144 ], [ 256, %cond.false.27 ], [ 512, %while.body.i.99 ], [ 1024, %while.body.1.i.103 ], [ 2048, %while.body.2.i.105 ], [ 4096, %while.body.3.i.107 ], [ 8192, %while.body.4.i.109 ], [ 16384, %while.body.5.i.111 ], [ 32768, %while.body.6.i.113 ], [ 65536, %while.body.7.i.115 ], [ 131072, %while.body.8.i.117 ], [ 262144, %while.body.9.i.119 ], [ 524288, %while.body.10.i.121 ], [ 1048576, %while.body.11.i.123 ], [ 2097152, %while.body.12.i.125 ], [ 4194304, %while.body.13.i.127 ], [ 8388608, %while.body.14.i.129 ], [ 16777216, %while.body.15.i.131 ], [ 33554432, %while.body.16.i.133 ], [ 67108864, %while.body.17.i.135 ], [ 134217728, %while.body.18.i.137 ], [ 268435456, %while.body.19.i.139 ], [ 536870912, %while.body.20.i.141 ], !dbg !136
  tail call void @llvm.dbg.value(metadata i32 %cond34, i64 0, metadata !43, metadata !81), !dbg !144
  %1 = or i32 %cond34, %cond10, !dbg !145
  %2 = icmp slt i32 %1, 0, !dbg !145
  br i1 %2, label %cleanup, label %if.end.42, !dbg !145

if.end.42:                                        ; preds = %cond.end.33
  %cmp43 = icmp slt i32 %cond10, %cond34, !dbg !147
  br i1 %cmp43, label %if.then.45, label %if.end.42.if.end.58_crit_edge, !dbg !149

if.end.42.if.end.58_crit_edge:                    ; preds = %if.end.42
  %n_child60.phi.trans.insert = getelementptr inbounds %struct._node, %struct._node* %n1, i64 0, i32 5, !dbg !150
  %.pre147 = load %struct._node*, %struct._node** %n_child60.phi.trans.insert, align 8, !dbg !150, !tbaa !110
  br label %if.end.58, !dbg !149

if.then.45:                                       ; preds = %if.end.42
  %cmp47 = icmp slt i32 %cond34, 0, !dbg !151
  br i1 %cmp47, label %cleanup, label %if.end.50, !dbg !154

if.end.50:                                        ; preds = %if.then.45
  %conv46 = sext i32 %cond34 to i64, !dbg !155
  %n_child = getelementptr inbounds %struct._node, %struct._node* %n1, i64 0, i32 5, !dbg !156
  %3 = bitcast %struct._node** %n_child to i8**, !dbg !156
  %4 = load i8*, i8** %3, align 8, !dbg !156, !tbaa !110
  %mul = mul nsw i64 %conv46, 40, !dbg !157
  %call52 = tail call i8* @PyObject_Realloc(i8* %4, i64 %mul) #5, !dbg !158
  %cmp53 = icmp eq i8* %call52, null, !dbg !159
  br i1 %cmp53, label %cleanup, label %if.end.56, !dbg !161

if.end.56:                                        ; preds = %if.end.50
  store i8* %call52, i8** %3, align 8, !dbg !162, !tbaa !110
  %.pre = load i32, i32* %n_nchildren, align 4, !dbg !163, !tbaa !107
  %5 = bitcast i8* %call52 to %struct._node*, !dbg !164
  br label %if.end.58, !dbg !164

if.end.58:                                        ; preds = %if.end.42.if.end.58_crit_edge, %if.end.56
  %6 = phi %struct._node* [ %5, %if.end.56 ], [ %.pre147, %if.end.42.if.end.58_crit_edge ], !dbg !150
  %7 = phi i32 [ %.pre, %if.end.56 ], [ %0, %if.end.42.if.end.58_crit_edge ], !dbg !163
  %inc = add i32 %7, 1, !dbg !163
  store i32 %inc, i32* %n_nchildren, align 4, !dbg !163, !tbaa !107
  %idxprom = sext i32 %7 to i64, !dbg !165
  %conv61 = trunc i32 %type to i16, !dbg !166
  %n_type = getelementptr inbounds %struct._node, %struct._node* %6, i64 %idxprom, i32 0, !dbg !167
  store i16 %conv61, i16* %n_type, align 2, !dbg !168, !tbaa !92
  %n_str = getelementptr inbounds %struct._node, %struct._node* %6, i64 %idxprom, i32 1, !dbg !169
  store i8* %str, i8** %n_str, align 8, !dbg !170, !tbaa !101
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %6, i64 %idxprom, i32 2, !dbg !171
  store i32 %lineno, i32* %n_lineno, align 4, !dbg !172, !tbaa !104
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %6, i64 %idxprom, i32 3, !dbg !173
  store i32 %col_offset, i32* %n_col_offset, align 4, !dbg !174, !tbaa !175
  %n_nchildren62 = getelementptr inbounds %struct._node, %struct._node* %6, i64 %idxprom, i32 4, !dbg !176
  store i32 0, i32* %n_nchildren62, align 4, !dbg !177, !tbaa !107
  %n_child63 = getelementptr inbounds %struct._node, %struct._node* %6, i64 %idxprom, i32 5, !dbg !178
  store %struct._node* null, %struct._node** %n_child63, align 8, !dbg !179, !tbaa !110
  br label %cleanup, !dbg !180

cleanup:                                          ; preds = %if.end.50, %if.then.45, %cond.end.33, %entry, %if.end.58
  %retval.0 = phi i32 [ 0, %if.end.58 ], [ 19, %entry ], [ 19, %cond.end.33 ], [ 15, %if.then.45 ], [ 15, %if.end.50 ]
  ret i32 %retval.0, !dbg !181
}

declare i8* @PyObject_Realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @PyNode_Free(%struct._node* %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._node* %n, i64 0, metadata !49, metadata !81), !dbg !182
  %cmp = icmp eq %struct._node* %n, null, !dbg !183
  br i1 %cmp, label %if.end, label %if.then, !dbg !185

if.then:                                          ; preds = %entry
  tail call fastcc void @freechildren(%struct._node* %n), !dbg !186
  %0 = bitcast %struct._node* %n to i8*, !dbg !188
  tail call void @PyObject_Free(i8* %0) #5, !dbg !189
  br label %if.end, !dbg !190

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !191
}

; Function Attrs: nounwind uwtable
define internal fastcc void @freechildren(%struct._node* nocapture readonly %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._node* %n, i64 0, metadata !71, metadata !81), !dbg !192
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %n, i64 0, i32 4, !dbg !193
  %0 = load i32, i32* %n_nchildren, align 4, !dbg !193, !tbaa !107
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !72, metadata !81), !dbg !195
  %dec.15 = add i32 %0, -1, !dbg !196
  tail call void @llvm.dbg.value(metadata i32 %dec.15, i64 0, metadata !72, metadata !81), !dbg !195
  %cmp.16 = icmp sgt i32 %dec.15, -1, !dbg !200
  %n_child = getelementptr inbounds %struct._node, %struct._node* %n, i64 0, i32 5, !dbg !201
  br i1 %cmp.16, label %for.body.lr.ph, label %for.end, !dbg !202

for.body.lr.ph:                                   ; preds = %entry
  %1 = sext i32 %dec.15 to i64, !dbg !202
  br label %for.body, !dbg !202

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %dec17 = phi i32 [ %dec.15, %for.body.lr.ph ], [ %dec, %for.body ]
  %2 = load %struct._node*, %struct._node** %n_child, align 8, !dbg !201, !tbaa !110
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 %indvars.iv, !dbg !201
  tail call fastcc void @freechildren(%struct._node* %arrayidx), !dbg !203
  %dec = add i32 %dec17, -1, !dbg !196
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !72, metadata !81), !dbg !195
  %cmp = icmp sgt i32 %dec, -1, !dbg !200
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !202
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !202

for.end.loopexit:                                 ; preds = %for.body
  br label %for.end, !dbg !204

for.end:                                          ; preds = %for.end.loopexit, %entry
  %3 = load %struct._node*, %struct._node** %n_child, align 8, !dbg !204, !tbaa !110
  %cmp2 = icmp eq %struct._node* %3, null, !dbg !206
  br i1 %cmp2, label %if.end, label %if.then, !dbg !207

if.then:                                          ; preds = %for.end
  %4 = bitcast %struct._node* %3 to i8*, !dbg !208
  tail call void @PyObject_Free(i8* %4) #5, !dbg !209
  br label %if.end, !dbg !209

if.end:                                           ; preds = %for.end, %if.then
  %n_str = getelementptr inbounds %struct._node, %struct._node* %n, i64 0, i32 1, !dbg !210
  %5 = load i8*, i8** %n_str, align 8, !dbg !210, !tbaa !101
  %cmp4 = icmp eq i8* %5, null, !dbg !212
  br i1 %cmp4, label %if.end.7, label %if.then.5, !dbg !213

if.then.5:                                        ; preds = %if.end
  tail call void @PyObject_Free(i8* %5) #5, !dbg !214
  br label %if.end.7, !dbg !214

if.end.7:                                         ; preds = %if.end, %if.then.5
  ret void, !dbg !215
}

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind readonly uwtable
define i64 @_PyNode_SizeOf(%struct._node* readonly %n) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._node* %n, i64 0, metadata !61, metadata !81), !dbg !216
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !62, metadata !81), !dbg !217
  %cmp = icmp eq %struct._node* %n, null, !dbg !218
  br i1 %cmp, label %if.end, label %if.then, !dbg !220

if.then:                                          ; preds = %entry
  %call = tail call fastcc i64 @sizeofchildren(%struct._node* %n), !dbg !221
  %add = add i64 %call, 40, !dbg !222
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !62, metadata !81), !dbg !217
  br label %if.end, !dbg !223

if.end:                                           ; preds = %entry, %if.then
  %res.0 = phi i64 [ %add, %if.then ], [ 0, %entry ]
  ret i64 %res.0, !dbg !224
}

; Function Attrs: nounwind readonly uwtable
define internal fastcc i64 @sizeofchildren(%struct._node* nocapture readonly %n) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._node* %n, i64 0, metadata !75, metadata !81), !dbg !225
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !76, metadata !81), !dbg !226
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %n, i64 0, i32 4, !dbg !227
  %0 = load i32, i32* %n_nchildren, align 4, !dbg !229, !tbaa !107
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !77, metadata !81), !dbg !231
  %dec.42 = add i32 %0, -1, !dbg !232
  tail call void @llvm.dbg.value(metadata i32 %dec.42, i64 0, metadata !77, metadata !81), !dbg !231
  %cmp.43 = icmp sgt i32 %dec.42, -1, !dbg !236
  %n_child = getelementptr inbounds %struct._node, %struct._node* %n, i64 0, i32 5, !dbg !237
  %1 = load %struct._node*, %struct._node** %n_child, align 8, !dbg !237, !tbaa !110
  br i1 %cmp.43, label %for.body.lr.ph, label %for.end, !dbg !238

for.body.lr.ph:                                   ; preds = %entry
  %2 = sext i32 %dec.42 to i64, !dbg !238
  br label %for.body, !dbg !238

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %dec45 = phi i32 [ %dec.42, %for.body.lr.ph ], [ %dec, %for.body ]
  %res.044 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %arrayidx = getelementptr %struct._node, %struct._node* %1, i64 %indvars.iv, !dbg !237
  %call = tail call fastcc i64 @sizeofchildren(%struct._node* %arrayidx), !dbg !239
  %add = add i64 %call, %res.044, !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !76, metadata !81), !dbg !226
  %dec = add i32 %dec45, -1, !dbg !232
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !77, metadata !81), !dbg !231
  %cmp = icmp sgt i32 %dec, -1, !dbg !236
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !238
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !238

for.end.loopexit:                                 ; preds = %for.body
  %add.lcssa = phi i64 [ %add, %for.body ]
  br label %for.end, !dbg !241

for.end:                                          ; preds = %for.end.loopexit, %entry
  %res.0.lcssa = phi i64 [ 0, %entry ], [ %add.lcssa, %for.end.loopexit ]
  %cmp2 = icmp eq %struct._node* %1, null, !dbg !241
  br i1 %cmp2, label %if.end, label %if.then, !dbg !242

if.then:                                          ; preds = %for.end
  %cmp4 = icmp slt i32 %0, 2, !dbg !229
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !229

cond.true:                                        ; preds = %if.then
  %conv = sext i32 %0 to i64, !dbg !243
  br label %cond.end.17, !dbg !243

cond.false:                                       ; preds = %if.then
  %cmp7 = icmp slt i32 %0, 129, !dbg !245
  br i1 %cmp7, label %cond.true.9, label %cond.false.13, !dbg !245

cond.true.9:                                      ; preds = %cond.false
  %conv11 = sext i32 %0 to i64, !dbg !247
  %add12 = add nsw i64 %conv11, 3, !dbg !247
  %and = and i64 %add12, -4, !dbg !247
  br label %cond.end.17, !dbg !247

cond.false.13:                                    ; preds = %cond.false
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !67, metadata !81), !dbg !249
  tail call void @llvm.dbg.value(metadata i32 256, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.i = icmp sgt i32 %0, 256, !dbg !253
  br i1 %cmp.i, label %while.body.i, label %cond.end.17, !dbg !254

while.body.i:                                     ; preds = %cond.false.13
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.1.i = icmp sgt i32 %0, 512, !dbg !253
  br i1 %cmp.1.i, label %while.body.1.i, label %cond.end.17, !dbg !254

while.body.1.i:                                   ; preds = %while.body.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.2.i = icmp sgt i32 %0, 1024, !dbg !253
  br i1 %cmp.2.i, label %while.body.2.i, label %cond.end.17, !dbg !254

while.body.2.i:                                   ; preds = %while.body.1.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.3.i = icmp sgt i32 %0, 2048, !dbg !253
  br i1 %cmp.3.i, label %while.body.3.i, label %cond.end.17, !dbg !254

while.body.3.i:                                   ; preds = %while.body.2.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.4.i = icmp sgt i32 %0, 4096, !dbg !253
  br i1 %cmp.4.i, label %while.body.4.i, label %cond.end.17, !dbg !254

while.body.4.i:                                   ; preds = %while.body.3.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.5.i = icmp sgt i32 %0, 8192, !dbg !253
  br i1 %cmp.5.i, label %while.body.5.i, label %cond.end.17, !dbg !254

while.body.5.i:                                   ; preds = %while.body.4.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.6.i = icmp sgt i32 %0, 16384, !dbg !253
  br i1 %cmp.6.i, label %while.body.6.i, label %cond.end.17, !dbg !254

while.body.6.i:                                   ; preds = %while.body.5.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.7.i = icmp sgt i32 %0, 32768, !dbg !253
  br i1 %cmp.7.i, label %while.body.7.i, label %cond.end.17, !dbg !254

while.body.7.i:                                   ; preds = %while.body.6.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.8.i = icmp sgt i32 %0, 65536, !dbg !253
  br i1 %cmp.8.i, label %while.body.8.i, label %cond.end.17, !dbg !254

while.body.8.i:                                   ; preds = %while.body.7.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.9.i = icmp sgt i32 %0, 131072, !dbg !253
  br i1 %cmp.9.i, label %while.body.9.i, label %cond.end.17, !dbg !254

while.body.9.i:                                   ; preds = %while.body.8.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.10.i = icmp sgt i32 %0, 262144, !dbg !253
  br i1 %cmp.10.i, label %while.body.10.i, label %cond.end.17, !dbg !254

while.body.10.i:                                  ; preds = %while.body.9.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.11.i = icmp sgt i32 %0, 524288, !dbg !253
  br i1 %cmp.11.i, label %while.body.11.i, label %cond.end.17, !dbg !254

while.body.11.i:                                  ; preds = %while.body.10.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.12.i = icmp sgt i32 %0, 1048576, !dbg !253
  br i1 %cmp.12.i, label %while.body.12.i, label %cond.end.17, !dbg !254

while.body.12.i:                                  ; preds = %while.body.11.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.13.i = icmp sgt i32 %0, 2097152, !dbg !253
  br i1 %cmp.13.i, label %while.body.13.i, label %cond.end.17, !dbg !254

while.body.13.i:                                  ; preds = %while.body.12.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.14.i = icmp sgt i32 %0, 4194304, !dbg !253
  br i1 %cmp.14.i, label %while.body.14.i, label %cond.end.17, !dbg !254

while.body.14.i:                                  ; preds = %while.body.13.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.15.i = icmp sgt i32 %0, 8388608, !dbg !253
  br i1 %cmp.15.i, label %while.body.15.i, label %cond.end.17, !dbg !254

while.body.15.i:                                  ; preds = %while.body.14.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.16.i = icmp sgt i32 %0, 16777216, !dbg !253
  br i1 %cmp.16.i, label %while.body.16.i, label %cond.end.17, !dbg !254

while.body.16.i:                                  ; preds = %while.body.15.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.17.i = icmp sgt i32 %0, 33554432, !dbg !253
  br i1 %cmp.17.i, label %while.body.17.i, label %cond.end.17, !dbg !254

while.body.17.i:                                  ; preds = %while.body.16.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.18.i = icmp sgt i32 %0, 67108864, !dbg !253
  br i1 %cmp.18.i, label %while.body.18.i, label %cond.end.17, !dbg !254

while.body.18.i:                                  ; preds = %while.body.17.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.19.i = icmp sgt i32 %0, 134217728, !dbg !253
  br i1 %cmp.19.i, label %while.body.19.i, label %cond.end.17, !dbg !254

while.body.19.i:                                  ; preds = %while.body.18.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.20.i = icmp sgt i32 %0, 268435456, !dbg !253
  br i1 %cmp.20.i, label %while.body.20.i, label %cond.end.17, !dbg !254

while.body.20.i:                                  ; preds = %while.body.19.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.21.i = icmp sgt i32 %0, 536870912, !dbg !253
  br i1 %cmp.21.i, label %while.body.21.i, label %cond.end.17, !dbg !254

while.body.21.i:                                  ; preds = %while.body.20.i
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %cmp.22.i = icmp sgt i32 %0, 1073741824, !dbg !253
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !68, metadata !81), !dbg !252
  %phitmp = select i1 %cmp.22.i, i64 -1, i64 1073741824, !dbg !254
  br label %cond.end.17, !dbg !254

cond.end.17:                                      ; preds = %while.body.21.i, %while.body.20.i, %while.body.19.i, %while.body.18.i, %while.body.17.i, %while.body.16.i, %while.body.15.i, %while.body.14.i, %while.body.13.i, %while.body.12.i, %while.body.11.i, %while.body.10.i, %while.body.9.i, %while.body.8.i, %while.body.7.i, %while.body.6.i, %while.body.5.i, %while.body.4.i, %while.body.3.i, %while.body.2.i, %while.body.1.i, %while.body.i, %cond.false.13, %cond.true.9, %cond.true
  %cond18 = phi i64 [ %conv, %cond.true ], [ %and, %cond.true.9 ], [ %phitmp, %while.body.21.i ], [ 256, %cond.false.13 ], [ 512, %while.body.i ], [ 1024, %while.body.1.i ], [ 2048, %while.body.2.i ], [ 4096, %while.body.3.i ], [ 8192, %while.body.4.i ], [ 16384, %while.body.5.i ], [ 32768, %while.body.6.i ], [ 65536, %while.body.7.i ], [ 131072, %while.body.8.i ], [ 262144, %while.body.9.i ], [ 524288, %while.body.10.i ], [ 1048576, %while.body.11.i ], [ 2097152, %while.body.12.i ], [ 4194304, %while.body.13.i ], [ 8388608, %while.body.14.i ], [ 16777216, %while.body.15.i ], [ 33554432, %while.body.16.i ], [ 67108864, %while.body.17.i ], [ 134217728, %while.body.18.i ], [ 268435456, %while.body.19.i ], [ 536870912, %while.body.20.i ], !dbg !229
  %mul = mul nsw i64 %cond18, 40, !dbg !255
  %add19 = add i64 %mul, %res.0.lcssa, !dbg !258
  tail call void @llvm.dbg.value(metadata i64 %add19, i64 0, metadata !76, metadata !81), !dbg !226
  br label %if.end, !dbg !259

if.end:                                           ; preds = %for.end, %cond.end.17
  %res.1 = phi i64 [ %add19, %cond.end.17 ], [ %res.0.lcssa, %for.end ]
  %n_str = getelementptr inbounds %struct._node, %struct._node* %n, i64 0, i32 1, !dbg !260
  %3 = load i8*, i8** %n_str, align 8, !dbg !260, !tbaa !101
  %cmp20 = icmp eq i8* %3, null, !dbg !262
  br i1 %cmp20, label %if.end.27, label %if.then.22, !dbg !263

if.then.22:                                       ; preds = %if.end
  %call24 = tail call i64 @strlen(i8* %3) #6, !dbg !264
  %add25 = add i64 %res.1, 1, !dbg !265
  %add26 = add i64 %add25, %call24, !dbg !266
  tail call void @llvm.dbg.value(metadata i64 %add26, i64 0, metadata !76, metadata !81), !dbg !226
  br label %if.end.27, !dbg !267

if.end.27:                                        ; preds = %if.end, %if.then.22
  %res.2 = phi i64 [ %add26, %if.then.22 ], [ %res.1, %if.end ]
  ret i64 %res.2, !dbg !268
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!78, !79}
!llvm.ident = !{!80}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !24)
!1 = !DIFile(filename: "Parser/node.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !20, !21}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "node", file: !6, line: 17, baseType: !7)
!6 = !DIFile(filename: "Include/node.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_node", file: !6, line: 10, size: 320, align: 64, elements: !8)
!8 = !{!9, !11, !14, !16, !17, !18}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "n_type", scope: !7, file: !6, line: 11, baseType: !10, size: 16, align: 16)
!10 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "n_str", scope: !7, file: !6, line: 12, baseType: !12, size: 64, align: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "n_lineno", scope: !7, file: !6, line: 13, baseType: !15, size: 32, align: 32, offset: 128)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "n_col_offset", scope: !7, file: !6, line: 14, baseType: !15, size: 32, align: 32, offset: 160)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "n_nchildren", scope: !7, file: !6, line: 15, baseType: !15, size: 32, align: 32, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "n_child", scope: !7, file: !6, line: 16, baseType: !19, size: 64, align: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 62, baseType: !23)
!22 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!23 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!24 = !{!25, !31, !45, !50, !63, !69, !73}
!25 = !DISubprogram(name: "PyNode_New", scope: !1, file: !1, line: 8, type: !26, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (i32)* @PyNode_New, variables: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!4, !15}
!28 = !{!29, !30}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !25, file: !1, line: 8, type: !15)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !25, file: !1, line: 10, type: !4)
!31 = !DISubprogram(name: "PyNode_AddChild", scope: !1, file: !1, line: 79, type: !32, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._node*, i32, i8*, i32, i32)* @PyNode_AddChild, variables: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{!15, !4, !15, !12, !15, !15}
!34 = !{!35, !36, !37, !38, !39, !40, !42, !43, !44}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n1", arg: 1, scope: !31, file: !1, line: 79, type: !4)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !31, file: !1, line: 79, type: !15)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 3, scope: !31, file: !1, line: 79, type: !12)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 4, scope: !31, file: !1, line: 79, type: !15)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "col_offset", arg: 5, scope: !31, file: !1, line: 79, type: !15)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nch", scope: !31, file: !1, line: 81, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current_capacity", scope: !31, file: !1, line: 82, type: !15)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "required_capacity", scope: !31, file: !1, line: 83, type: !15)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !31, file: !1, line: 84, type: !4)
!45 = !DISubprogram(name: "PyNode_Free", scope: !1, file: !1, line: 121, type: !46, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._node*)* @PyNode_Free, variables: !48)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !4}
!48 = !{!49}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !45, file: !1, line: 121, type: !4)
!50 = !DISubprogram(name: "_PyNode_SizeOf", scope: !1, file: !1, line: 130, type: !51, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._node*)* @_PyNode_SizeOf, variables: !60)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !4}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !54, line: 177, baseType: !55)
!54 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !56, line: 102, baseType: !57)
!56 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !58, line: 181, baseType: !59)
!58 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!59 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!60 = !{!61, !62}
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !50, file: !1, line: 130, type: !4)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !50, file: !1, line: 132, type: !53)
!63 = !DISubprogram(name: "fancy_roundup", scope: !1, file: !1, line: 23, type: !64, isLocal: true, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, variables: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{!15, !15}
!66 = !{!67, !68}
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !63, file: !1, line: 23, type: !15)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !63, file: !1, line: 26, type: !15)
!69 = !DISubprogram(name: "freechildren", scope: !1, file: !1, line: 140, type: !46, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._node*)* @freechildren, variables: !70)
!70 = !{!71, !72}
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !69, file: !1, line: 140, type: !4)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !69, file: !1, line: 142, type: !15)
!73 = !DISubprogram(name: "sizeofchildren", scope: !1, file: !1, line: 152, type: !51, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._node*)* @sizeofchildren, variables: !74)
!74 = !{!75, !76, !77}
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !73, file: !1, line: 152, type: !4)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !73, file: !1, line: 154, type: !53)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !73, file: !1, line: 155, type: !15)
!78 = !{i32 2, !"Dwarf Version", i32 4}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!81 = !DIExpression()
!82 = !DILocation(line: 8, column: 16, scope: !25)
!83 = !DILocation(line: 10, column: 24, scope: !25)
!84 = !DILocation(line: 10, column: 11, scope: !25)
!85 = !DILocation(line: 11, column: 11, scope: !86)
!86 = distinct !DILexicalBlock(scope: !25, file: !1, line: 11, column: 9)
!87 = !DILocation(line: 11, column: 9, scope: !25)
!88 = !DILocation(line: 10, column: 15, scope: !25)
!89 = !DILocation(line: 13, column: 17, scope: !25)
!90 = !DILocation(line: 13, column: 8, scope: !25)
!91 = !DILocation(line: 13, column: 15, scope: !25)
!92 = !{!93, !94, i64 0}
!93 = !{!"_node", !94, i64 0, !97, i64 8, !98, i64 16, !98, i64 20, !98, i64 24, !97, i64 32}
!94 = !{!"short", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !{!"any pointer", !95, i64 0}
!98 = !{!"int", !95, i64 0}
!99 = !DILocation(line: 14, column: 8, scope: !25)
!100 = !DILocation(line: 14, column: 14, scope: !25)
!101 = !{!93, !97, i64 8}
!102 = !DILocation(line: 15, column: 8, scope: !25)
!103 = !DILocation(line: 15, column: 17, scope: !25)
!104 = !{!93, !98, i64 16}
!105 = !DILocation(line: 16, column: 8, scope: !25)
!106 = !DILocation(line: 16, column: 20, scope: !25)
!107 = !{!93, !98, i64 24}
!108 = !DILocation(line: 17, column: 8, scope: !25)
!109 = !DILocation(line: 17, column: 16, scope: !25)
!110 = !{!93, !97, i64 32}
!111 = !DILocation(line: 18, column: 5, scope: !25)
!112 = !DILocation(line: 19, column: 1, scope: !25)
!113 = !DILocation(line: 79, column: 23, scope: !31)
!114 = !DILocation(line: 79, column: 31, scope: !31)
!115 = !DILocation(line: 79, column: 43, scope: !31)
!116 = !DILocation(line: 79, column: 52, scope: !31)
!117 = !DILocation(line: 79, column: 64, scope: !31)
!118 = !DILocation(line: 81, column: 25, scope: !31)
!119 = !DILocation(line: 81, column: 15, scope: !31)
!120 = !DILocation(line: 86, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !31, file: !1, line: 86, column: 9)
!122 = !DILocation(line: 86, column: 31, scope: !121)
!123 = !DILocation(line: 86, column: 24, scope: !121)
!124 = !DILocation(line: 89, column: 24, scope: !31)
!125 = !DILocation(line: 89, column: 24, scope: !126)
!126 = !DILexicalBlockFile(scope: !31, file: !1, discriminator: 2)
!127 = !DILocation(line: 89, column: 24, scope: !128)
!128 = !DILexicalBlockFile(scope: !31, file: !1, discriminator: 4)
!129 = !DILocation(line: 23, column: 19, scope: !63, inlinedAt: !130)
!130 = distinct !DILocation(line: 89, column: 24, scope: !131)
!131 = !DILexicalBlockFile(scope: !31, file: !1, discriminator: 5)
!132 = !DILocation(line: 26, column: 9, scope: !63, inlinedAt: !130)
!133 = !DILocation(line: 28, column: 19, scope: !63, inlinedAt: !130)
!134 = !DILocation(line: 28, column: 5, scope: !63, inlinedAt: !130)
!135 = !DILocation(line: 82, column: 9, scope: !31)
!136 = !DILocation(line: 90, column: 25, scope: !31)
!137 = !DILocation(line: 90, column: 25, scope: !126)
!138 = !DILocation(line: 90, column: 25, scope: !128)
!139 = !DILocation(line: 23, column: 19, scope: !63, inlinedAt: !140)
!140 = distinct !DILocation(line: 90, column: 25, scope: !131)
!141 = !DILocation(line: 26, column: 9, scope: !63, inlinedAt: !140)
!142 = !DILocation(line: 28, column: 19, scope: !63, inlinedAt: !140)
!143 = !DILocation(line: 28, column: 5, scope: !63, inlinedAt: !140)
!144 = !DILocation(line: 83, column: 9, scope: !31)
!145 = !DILocation(line: 91, column: 30, scope: !146)
!146 = distinct !DILexicalBlock(scope: !31, file: !1, line: 91, column: 9)
!147 = !DILocation(line: 93, column: 26, scope: !148)
!148 = distinct !DILexicalBlock(scope: !31, file: !1, line: 93, column: 9)
!149 = !DILocation(line: 93, column: 9, scope: !31)
!150 = !DILocation(line: 105, column: 14, scope: !31)
!151 = !DILocation(line: 94, column: 39, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !1, line: 94, column: 13)
!153 = distinct !DILexicalBlock(scope: !148, file: !1, line: 93, column: 47)
!154 = !DILocation(line: 94, column: 13, scope: !153)
!155 = !DILocation(line: 94, column: 13, scope: !152)
!156 = !DILocation(line: 97, column: 17, scope: !153)
!157 = !DILocation(line: 99, column: 57, scope: !153)
!158 = !DILocation(line: 98, column: 22, scope: !153)
!159 = !DILocation(line: 100, column: 15, scope: !160)
!160 = distinct !DILexicalBlock(scope: !153, file: !1, line: 100, column: 13)
!161 = !DILocation(line: 100, column: 13, scope: !153)
!162 = !DILocation(line: 102, column: 21, scope: !153)
!163 = !DILocation(line: 105, column: 37, scope: !31)
!164 = !DILocation(line: 103, column: 5, scope: !153)
!165 = !DILocation(line: 105, column: 10, scope: !31)
!166 = !DILocation(line: 106, column: 17, scope: !31)
!167 = !DILocation(line: 106, column: 8, scope: !31)
!168 = !DILocation(line: 106, column: 15, scope: !31)
!169 = !DILocation(line: 107, column: 8, scope: !31)
!170 = !DILocation(line: 107, column: 14, scope: !31)
!171 = !DILocation(line: 108, column: 8, scope: !31)
!172 = !DILocation(line: 108, column: 17, scope: !31)
!173 = !DILocation(line: 109, column: 8, scope: !31)
!174 = !DILocation(line: 109, column: 21, scope: !31)
!175 = !{!93, !98, i64 20}
!176 = !DILocation(line: 110, column: 8, scope: !31)
!177 = !DILocation(line: 110, column: 20, scope: !31)
!178 = !DILocation(line: 111, column: 8, scope: !31)
!179 = !DILocation(line: 111, column: 16, scope: !31)
!180 = !DILocation(line: 112, column: 5, scope: !31)
!181 = !DILocation(line: 113, column: 1, scope: !31)
!182 = !DILocation(line: 121, column: 19, scope: !45)
!183 = !DILocation(line: 123, column: 11, scope: !184)
!184 = distinct !DILexicalBlock(scope: !45, file: !1, line: 123, column: 9)
!185 = !DILocation(line: 123, column: 9, scope: !45)
!186 = !DILocation(line: 124, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !1, line: 123, column: 20)
!188 = !DILocation(line: 125, column: 23, scope: !187)
!189 = !DILocation(line: 125, column: 9, scope: !187)
!190 = !DILocation(line: 126, column: 5, scope: !187)
!191 = !DILocation(line: 127, column: 1, scope: !45)
!192 = !DILocation(line: 140, column: 20, scope: !69)
!193 = !DILocation(line: 143, column: 14, scope: !194)
!194 = distinct !DILexicalBlock(scope: !69, file: !1, line: 143, column: 5)
!195 = !DILocation(line: 142, column: 9, scope: !69)
!196 = !DILocation(line: 143, column: 22, scope: !197)
!197 = !DILexicalBlockFile(scope: !198, file: !1, discriminator: 2)
!198 = !DILexicalBlockFile(scope: !199, file: !1, discriminator: 1)
!199 = distinct !DILexicalBlock(scope: !194, file: !1, line: 143, column: 5)
!200 = !DILocation(line: 143, column: 26, scope: !199)
!201 = !DILocation(line: 144, column: 22, scope: !199)
!202 = !DILocation(line: 143, column: 5, scope: !194)
!203 = !DILocation(line: 144, column: 9, scope: !199)
!204 = !DILocation(line: 145, column: 12, scope: !205)
!205 = distinct !DILexicalBlock(scope: !69, file: !1, line: 145, column: 9)
!206 = !DILocation(line: 145, column: 20, scope: !205)
!207 = !DILocation(line: 145, column: 9, scope: !69)
!208 = !DILocation(line: 146, column: 23, scope: !205)
!209 = !DILocation(line: 146, column: 9, scope: !205)
!210 = !DILocation(line: 147, column: 9, scope: !211)
!211 = distinct !DILexicalBlock(scope: !69, file: !1, line: 147, column: 9)
!212 = !DILocation(line: 147, column: 16, scope: !211)
!213 = !DILocation(line: 147, column: 9, scope: !69)
!214 = !DILocation(line: 148, column: 9, scope: !211)
!215 = !DILocation(line: 149, column: 1, scope: !69)
!216 = !DILocation(line: 130, column: 22, scope: !50)
!217 = !DILocation(line: 132, column: 16, scope: !50)
!218 = !DILocation(line: 134, column: 11, scope: !219)
!219 = distinct !DILexicalBlock(scope: !50, file: !1, line: 134, column: 9)
!220 = !DILocation(line: 134, column: 9, scope: !50)
!221 = !DILocation(line: 135, column: 30, scope: !219)
!222 = !DILocation(line: 135, column: 28, scope: !219)
!223 = !DILocation(line: 135, column: 9, scope: !219)
!224 = !DILocation(line: 136, column: 5, scope: !50)
!225 = !DILocation(line: 152, column: 22, scope: !73)
!226 = !DILocation(line: 154, column: 16, scope: !73)
!227 = !DILocation(line: 156, column: 14, scope: !228)
!228 = distinct !DILexicalBlock(scope: !73, file: !1, line: 156, column: 5)
!229 = !DILocation(line: 160, column: 16, scope: !230)
!230 = distinct !DILexicalBlock(scope: !73, file: !1, line: 158, column: 9)
!231 = !DILocation(line: 155, column: 9, scope: !73)
!232 = !DILocation(line: 156, column: 22, scope: !233)
!233 = !DILexicalBlockFile(scope: !234, file: !1, discriminator: 2)
!234 = !DILexicalBlockFile(scope: !235, file: !1, discriminator: 1)
!235 = distinct !DILexicalBlock(scope: !228, file: !1, line: 156, column: 5)
!236 = !DILocation(line: 156, column: 26, scope: !235)
!237 = !DILocation(line: 157, column: 31, scope: !235)
!238 = !DILocation(line: 156, column: 5, scope: !228)
!239 = !DILocation(line: 157, column: 16, scope: !235)
!240 = !DILocation(line: 157, column: 13, scope: !235)
!241 = !DILocation(line: 158, column: 20, scope: !230)
!242 = !DILocation(line: 158, column: 9, scope: !73)
!243 = !DILocation(line: 160, column: 16, scope: !244)
!244 = !DILexicalBlockFile(scope: !230, file: !1, discriminator: 1)
!245 = !DILocation(line: 160, column: 16, scope: !246)
!246 = !DILexicalBlockFile(scope: !230, file: !1, discriminator: 2)
!247 = !DILocation(line: 160, column: 16, scope: !248)
!248 = !DILexicalBlockFile(scope: !230, file: !1, discriminator: 4)
!249 = !DILocation(line: 23, column: 19, scope: !63, inlinedAt: !250)
!250 = distinct !DILocation(line: 160, column: 16, scope: !251)
!251 = !DILexicalBlockFile(scope: !230, file: !1, discriminator: 5)
!252 = !DILocation(line: 26, column: 9, scope: !63, inlinedAt: !250)
!253 = !DILocation(line: 28, column: 19, scope: !63, inlinedAt: !250)
!254 = !DILocation(line: 28, column: 5, scope: !63, inlinedAt: !250)
!255 = !DILocation(line: 160, column: 35, scope: !256)
!256 = !DILexicalBlockFile(scope: !257, file: !1, discriminator: 8)
!257 = !DILexicalBlockFile(scope: !230, file: !1, discriminator: 3)
!258 = !DILocation(line: 160, column: 13, scope: !230)
!259 = !DILocation(line: 160, column: 9, scope: !230)
!260 = !DILocation(line: 161, column: 9, scope: !261)
!261 = distinct !DILexicalBlock(scope: !73, file: !1, line: 161, column: 9)
!262 = !DILocation(line: 161, column: 16, scope: !261)
!263 = !DILocation(line: 161, column: 9, scope: !73)
!264 = !DILocation(line: 162, column: 16, scope: !261)
!265 = !DILocation(line: 162, column: 31, scope: !261)
!266 = !DILocation(line: 162, column: 13, scope: !261)
!267 = !DILocation(line: 162, column: 9, scope: !261)
!268 = !DILocation(line: 163, column: 5, scope: !73)
