; ModuleID = './gp_unifn.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gp_file_name_list_separator = constant i8 58, align 1
@gp_fmode_binary_suffix = constant [1 x i8] zeroinitializer, align 1
@gp_fmode_rb = constant [2 x i8] c"r\00", align 1
@gp_fmode_wb = constant [2 x i8] c"w\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gp_file_name_root(i8* %fname, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 47
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @gs_file_name_check_separator(i8* %fname, i32 %len, i8* %item) #0 {
entry:
  %retval = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %item.addr = alloca i8*, align 8
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store i8* %item, i8** %item.addr, align 8, !tbaa !1
  %0 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 47
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.14

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.else
  %4 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %4, i64 -1
  %5 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %conv8 = sext i8 %5 to i32
  %cmp9 = icmp eq i32 %conv8, 47
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.6
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.11, %if.then.3
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gp_file_name_is_parent(i8* %fname, i32 %len) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 46
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @gp_file_name_is_current(i8* %fname, i32 %len) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i8* @gp_file_name_separator() #0 {
entry:
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8* @gp_file_name_directory_separator() #0 {
entry:
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8* @gp_file_name_parent() #0 {
entry:
  ret i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8* @gp_file_name_current() #0 {
entry:
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i32 @gp_file_name_is_parent_allowed() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @gp_file_name_is_empty_item_meanful() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gp_file_name_combine(i8* %prefix, i32 %plen, i8* %fname, i32 %flen, i32 %no_sibling, i8* %buffer, i32* %blen) #0 {
entry:
  %prefix.addr = alloca i8*, align 8
  %plen.addr = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %flen.addr = alloca i32, align 4
  %no_sibling.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %blen.addr = alloca i32*, align 8
  store i8* %prefix, i8** %prefix.addr, align 8, !tbaa !1
  store i32 %plen, i32* %plen.addr, align 4, !tbaa !5
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %flen, i32* %flen.addr, align 4, !tbaa !5
  store i32 %no_sibling, i32* %no_sibling.addr, align 4, !tbaa !5
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32* %blen, i32** %blen.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %prefix.addr, align 8, !tbaa !1
  %1 = load i32, i32* %plen.addr, align 4, !tbaa !5
  %2 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %3 = load i32, i32* %flen.addr, align 4, !tbaa !5
  %4 = load i32, i32* %no_sibling.addr, align 4, !tbaa !5
  %5 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %6 = load i32*, i32** %blen.addr, align 8, !tbaa !1
  %call = call i32 @gp_file_name_combine_generic(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i8* %5, i32* %6) #2
  ret i32 %call
}

declare i32 @gp_file_name_combine_generic(i8*, i32, i8*, i32, i32, i8*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @gp_file_name_good_char(i8 zeroext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1, !tbaa !7
  %0 = load i8, i8* %c.addr, align 1, !tbaa !7
  %conv = zext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1, !tbaa !7
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp ne i32 %conv2, 47
  br i1 %cmp3, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %2 = load i8, i8* %c.addr, align 1, !tbaa !7
  %conv6 = zext i8 %2 to i32
  %cmp7 = icmp ne i32 %conv6, 92
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %3 = load i8, i8* %c.addr, align 1, !tbaa !7
  %conv9 = zext i8 %3 to i32
  %cmp10 = icmp ne i32 %conv9, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.5, %land.lhs.true, %entry
  %4 = phi i1 [ false, %land.lhs.true.5 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp10, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
