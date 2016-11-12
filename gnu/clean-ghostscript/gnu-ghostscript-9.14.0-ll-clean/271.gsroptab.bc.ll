; ModuleID = './gsroptab.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rop_proc_table = constant [256 x i64 (i64, i64, i64)*] [i64 (i64, i64, i64)* @rop0, i64 (i64, i64, i64)* @rop1, i64 (i64, i64, i64)* @rop2, i64 (i64, i64, i64)* @rop3, i64 (i64, i64, i64)* @rop4, i64 (i64, i64, i64)* @rop5, i64 (i64, i64, i64)* @rop6, i64 (i64, i64, i64)* @rop7, i64 (i64, i64, i64)* @rop8, i64 (i64, i64, i64)* @rop9, i64 (i64, i64, i64)* @rop10, i64 (i64, i64, i64)* @rop11, i64 (i64, i64, i64)* @rop12, i64 (i64, i64, i64)* @rop13, i64 (i64, i64, i64)* @rop14, i64 (i64, i64, i64)* @rop15, i64 (i64, i64, i64)* @rop16, i64 (i64, i64, i64)* @rop17, i64 (i64, i64, i64)* @rop18, i64 (i64, i64, i64)* @rop19, i64 (i64, i64, i64)* @rop20, i64 (i64, i64, i64)* @rop21, i64 (i64, i64, i64)* @rop22, i64 (i64, i64, i64)* @rop23, i64 (i64, i64, i64)* @rop24, i64 (i64, i64, i64)* @rop25, i64 (i64, i64, i64)* @rop26, i64 (i64, i64, i64)* @rop27, i64 (i64, i64, i64)* @rop28, i64 (i64, i64, i64)* @rop29, i64 (i64, i64, i64)* @rop30, i64 (i64, i64, i64)* @rop31, i64 (i64, i64, i64)* @rop32, i64 (i64, i64, i64)* @rop33, i64 (i64, i64, i64)* @rop34, i64 (i64, i64, i64)* @rop35, i64 (i64, i64, i64)* @rop36, i64 (i64, i64, i64)* @rop37, i64 (i64, i64, i64)* @rop38, i64 (i64, i64, i64)* @rop39, i64 (i64, i64, i64)* @rop40, i64 (i64, i64, i64)* @rop41, i64 (i64, i64, i64)* @rop42, i64 (i64, i64, i64)* @rop43, i64 (i64, i64, i64)* @rop44, i64 (i64, i64, i64)* @rop45, i64 (i64, i64, i64)* @rop46, i64 (i64, i64, i64)* @rop47, i64 (i64, i64, i64)* @rop48, i64 (i64, i64, i64)* @rop49, i64 (i64, i64, i64)* @rop50, i64 (i64, i64, i64)* @rop51, i64 (i64, i64, i64)* @rop52, i64 (i64, i64, i64)* @rop53, i64 (i64, i64, i64)* @rop54, i64 (i64, i64, i64)* @rop55, i64 (i64, i64, i64)* @rop56, i64 (i64, i64, i64)* @rop57, i64 (i64, i64, i64)* @rop58, i64 (i64, i64, i64)* @rop59, i64 (i64, i64, i64)* @rop60, i64 (i64, i64, i64)* @rop61, i64 (i64, i64, i64)* @rop62, i64 (i64, i64, i64)* @rop63, i64 (i64, i64, i64)* @rop64, i64 (i64, i64, i64)* @rop65, i64 (i64, i64, i64)* @rop66, i64 (i64, i64, i64)* @rop67, i64 (i64, i64, i64)* @rop68, i64 (i64, i64, i64)* @rop69, i64 (i64, i64, i64)* @rop70, i64 (i64, i64, i64)* @rop71, i64 (i64, i64, i64)* @rop72, i64 (i64, i64, i64)* @rop73, i64 (i64, i64, i64)* @rop74, i64 (i64, i64, i64)* @rop75, i64 (i64, i64, i64)* @rop76, i64 (i64, i64, i64)* @rop77, i64 (i64, i64, i64)* @rop78, i64 (i64, i64, i64)* @rop79, i64 (i64, i64, i64)* @rop80, i64 (i64, i64, i64)* @rop81, i64 (i64, i64, i64)* @rop82, i64 (i64, i64, i64)* @rop83, i64 (i64, i64, i64)* @rop84, i64 (i64, i64, i64)* @rop85, i64 (i64, i64, i64)* @rop86, i64 (i64, i64, i64)* @rop87, i64 (i64, i64, i64)* @rop88, i64 (i64, i64, i64)* @rop89, i64 (i64, i64, i64)* @rop90, i64 (i64, i64, i64)* @rop91, i64 (i64, i64, i64)* @rop92, i64 (i64, i64, i64)* @rop93, i64 (i64, i64, i64)* @rop94, i64 (i64, i64, i64)* @rop95, i64 (i64, i64, i64)* @rop96, i64 (i64, i64, i64)* @rop97, i64 (i64, i64, i64)* @rop98, i64 (i64, i64, i64)* @rop99, i64 (i64, i64, i64)* @rop100, i64 (i64, i64, i64)* @rop101, i64 (i64, i64, i64)* @rop102, i64 (i64, i64, i64)* @rop103, i64 (i64, i64, i64)* @rop104, i64 (i64, i64, i64)* @rop105, i64 (i64, i64, i64)* @rop106, i64 (i64, i64, i64)* @rop107, i64 (i64, i64, i64)* @rop108, i64 (i64, i64, i64)* @rop109, i64 (i64, i64, i64)* @rop110, i64 (i64, i64, i64)* @rop111, i64 (i64, i64, i64)* @rop112, i64 (i64, i64, i64)* @rop113, i64 (i64, i64, i64)* @rop114, i64 (i64, i64, i64)* @rop115, i64 (i64, i64, i64)* @rop116, i64 (i64, i64, i64)* @rop117, i64 (i64, i64, i64)* @rop118, i64 (i64, i64, i64)* @rop119, i64 (i64, i64, i64)* @rop120, i64 (i64, i64, i64)* @rop121, i64 (i64, i64, i64)* @rop122, i64 (i64, i64, i64)* @rop123, i64 (i64, i64, i64)* @rop124, i64 (i64, i64, i64)* @rop125, i64 (i64, i64, i64)* @rop126, i64 (i64, i64, i64)* @rop127, i64 (i64, i64, i64)* @rop128, i64 (i64, i64, i64)* @rop129, i64 (i64, i64, i64)* @rop130, i64 (i64, i64, i64)* @rop131, i64 (i64, i64, i64)* @rop132, i64 (i64, i64, i64)* @rop133, i64 (i64, i64, i64)* @rop134, i64 (i64, i64, i64)* @rop135, i64 (i64, i64, i64)* @rop136, i64 (i64, i64, i64)* @rop137, i64 (i64, i64, i64)* @rop138, i64 (i64, i64, i64)* @rop139, i64 (i64, i64, i64)* @rop140, i64 (i64, i64, i64)* @rop141, i64 (i64, i64, i64)* @rop142, i64 (i64, i64, i64)* @rop143, i64 (i64, i64, i64)* @rop144, i64 (i64, i64, i64)* @rop145, i64 (i64, i64, i64)* @rop146, i64 (i64, i64, i64)* @rop147, i64 (i64, i64, i64)* @rop148, i64 (i64, i64, i64)* @rop149, i64 (i64, i64, i64)* @rop150, i64 (i64, i64, i64)* @rop151, i64 (i64, i64, i64)* @rop152, i64 (i64, i64, i64)* @rop153, i64 (i64, i64, i64)* @rop154, i64 (i64, i64, i64)* @rop155, i64 (i64, i64, i64)* @rop156, i64 (i64, i64, i64)* @rop157, i64 (i64, i64, i64)* @rop158, i64 (i64, i64, i64)* @rop159, i64 (i64, i64, i64)* @rop160, i64 (i64, i64, i64)* @rop161, i64 (i64, i64, i64)* @rop162, i64 (i64, i64, i64)* @rop163, i64 (i64, i64, i64)* @rop164, i64 (i64, i64, i64)* @rop165, i64 (i64, i64, i64)* @rop166, i64 (i64, i64, i64)* @rop167, i64 (i64, i64, i64)* @rop168, i64 (i64, i64, i64)* @rop169, i64 (i64, i64, i64)* @rop170, i64 (i64, i64, i64)* @rop171, i64 (i64, i64, i64)* @rop172, i64 (i64, i64, i64)* @rop173, i64 (i64, i64, i64)* @rop174, i64 (i64, i64, i64)* @rop175, i64 (i64, i64, i64)* @rop176, i64 (i64, i64, i64)* @rop177, i64 (i64, i64, i64)* @rop178, i64 (i64, i64, i64)* @rop179, i64 (i64, i64, i64)* @rop180, i64 (i64, i64, i64)* @rop181, i64 (i64, i64, i64)* @rop182, i64 (i64, i64, i64)* @rop183, i64 (i64, i64, i64)* @rop184, i64 (i64, i64, i64)* @rop185, i64 (i64, i64, i64)* @rop186, i64 (i64, i64, i64)* @rop187, i64 (i64, i64, i64)* @rop188, i64 (i64, i64, i64)* @rop189, i64 (i64, i64, i64)* @rop190, i64 (i64, i64, i64)* @rop191, i64 (i64, i64, i64)* @rop192, i64 (i64, i64, i64)* @rop193, i64 (i64, i64, i64)* @rop194, i64 (i64, i64, i64)* @rop195, i64 (i64, i64, i64)* @rop196, i64 (i64, i64, i64)* @rop197, i64 (i64, i64, i64)* @rop198, i64 (i64, i64, i64)* @rop199, i64 (i64, i64, i64)* @rop200, i64 (i64, i64, i64)* @rop201, i64 (i64, i64, i64)* @rop202, i64 (i64, i64, i64)* @rop203, i64 (i64, i64, i64)* @rop204, i64 (i64, i64, i64)* @rop205, i64 (i64, i64, i64)* @rop206, i64 (i64, i64, i64)* @rop207, i64 (i64, i64, i64)* @rop208, i64 (i64, i64, i64)* @rop209, i64 (i64, i64, i64)* @rop210, i64 (i64, i64, i64)* @rop211, i64 (i64, i64, i64)* @rop212, i64 (i64, i64, i64)* @rop213, i64 (i64, i64, i64)* @rop214, i64 (i64, i64, i64)* @rop215, i64 (i64, i64, i64)* @rop216, i64 (i64, i64, i64)* @rop217, i64 (i64, i64, i64)* @rop218, i64 (i64, i64, i64)* @rop219, i64 (i64, i64, i64)* @rop220, i64 (i64, i64, i64)* @rop221, i64 (i64, i64, i64)* @rop222, i64 (i64, i64, i64)* @rop223, i64 (i64, i64, i64)* @rop224, i64 (i64, i64, i64)* @rop225, i64 (i64, i64, i64)* @rop226, i64 (i64, i64, i64)* @rop227, i64 (i64, i64, i64)* @rop228, i64 (i64, i64, i64)* @rop229, i64 (i64, i64, i64)* @rop230, i64 (i64, i64, i64)* @rop231, i64 (i64, i64, i64)* @rop232, i64 (i64, i64, i64)* @rop233, i64 (i64, i64, i64)* @rop234, i64 (i64, i64, i64)* @rop235, i64 (i64, i64, i64)* @rop236, i64 (i64, i64, i64)* @rop237, i64 (i64, i64, i64)* @rop238, i64 (i64, i64, i64)* @rop239, i64 (i64, i64, i64)* @rop240, i64 (i64, i64, i64)* @rop241, i64 (i64, i64, i64)* @rop242, i64 (i64, i64, i64)* @rop243, i64 (i64, i64, i64)* @rop244, i64 (i64, i64, i64)* @rop245, i64 (i64, i64, i64)* @rop246, i64 (i64, i64, i64)* @rop247, i64 (i64, i64, i64)* @rop248, i64 (i64, i64, i64)* @rop249, i64 (i64, i64, i64)* @rop250, i64 (i64, i64, i64)* @rop251, i64 (i64, i64, i64)* @rop252, i64 (i64, i64, i64)* @rop253, i64 (i64, i64, i64)* @rop254, i64 (i64, i64, i64)* @rop255], align 16
@rop_usage_table = constant [256 x i8] c"\00\07\07\06\07\05\07\07\07\07\05\07\06\07\07\04\07\03\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\03\07\07\07\07\07\07\07\07\07\07\07\07\07\06\07\07\02\07\07\07\07\07\07\07\07\06\07\07\06\07\07\07\07\03\07\07\07\07\07\07\07\07\07\07\07\05\07\07\07\07\01\07\07\07\07\05\07\07\07\07\05\07\07\07\07\07\07\03\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\03\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\03\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\03\07\07\07\07\07\07\05\07\07\07\07\05\07\07\07\07\01\07\07\07\07\05\07\07\07\07\07\07\07\07\07\07\07\03\07\07\07\07\06\07\07\06\07\07\07\07\07\07\07\07\02\07\07\06\07\07\07\07\07\07\07\07\07\07\07\07\07\03\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\03\07\04\07\07\06\07\05\07\07\07\07\05\07\06\07\07\00", align 16

; Function Attrs: nounwind uwtable
define internal i64 @rop0(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  ret i64 0
}

; Function Attrs: nounwind uwtable
define internal i64 @rop1(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or1 = or i64 %or, %2
  %neg = xor i64 %or1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop2(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %1, %2
  %neg = xor i64 %or, -1
  %and = and i64 %0, %neg
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop3(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %neg = xor i64 %or, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop4(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %1, %2
  %neg = xor i64 %or, -1
  %and = and i64 %0, %neg
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop5(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %neg = xor i64 %or, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop6(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %1, %2
  %neg = xor i64 %xor, -1
  %or = or i64 %0, %neg
  %neg1 = xor i64 %or, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop7(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %1, %2
  %or = or i64 %0, %and
  %neg = xor i64 %or, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop8(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %and = and i64 %1, %neg
  %and1 = and i64 %0, %and
  ret i64 %and1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop9(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %1, %2
  %or = or i64 %0, %xor
  %neg = xor i64 %or, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop10(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %1, -1
  %and = and i64 %0, %neg
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop11(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %and = and i64 %1, %neg
  %or = or i64 %0, %and
  %neg1 = xor i64 %or, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop12(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %1, -1
  %and = and i64 %0, %neg
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop13(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %and = and i64 %1, %neg
  %or = or i64 %0, %and
  %neg1 = xor i64 %or, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop14(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %1, %2
  %neg = xor i64 %or, -1
  %or1 = or i64 %0, %neg
  %neg2 = xor i64 %or1, -1
  ret i64 %neg2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop15(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop16(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %1, %2
  %neg = xor i64 %or, -1
  %and = and i64 %0, %neg
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop17(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %neg = xor i64 %or, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop18(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %1, %2
  %neg = xor i64 %xor, -1
  %or = or i64 %0, %neg
  %neg1 = xor i64 %or, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop19(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %1, %2
  %or = or i64 %0, %and
  %neg = xor i64 %or, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop20(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %1, %2
  %neg = xor i64 %xor, -1
  %or = or i64 %0, %neg
  %neg1 = xor i64 %or, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop21(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %1, %2
  %or = or i64 %0, %and
  %neg = xor i64 %or, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop22(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %4 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %3, %4
  %neg = xor i64 %and, -1
  %and1 = and i64 %2, %neg
  %xor = xor i64 %1, %and1
  %xor2 = xor i64 %0, %xor
  ret i64 %xor2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop23(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %1, %2
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %4 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %3, %4
  %and = and i64 %xor, %xor1
  %xor2 = xor i64 %0, %and
  %neg = xor i64 %xor2, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop24(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %2, %3
  %and = and i64 %xor, %xor1
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop25(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %2, %3
  %neg = xor i64 %and, -1
  %and1 = and i64 %1, %neg
  %xor = xor i64 %0, %and1
  %neg2 = xor i64 %xor, -1
  ret i64 %neg2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop26(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %2, %3
  %or = or i64 %1, %and
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop27(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %2, %3
  %and = and i64 %1, %xor
  %xor1 = xor i64 %0, %and
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop28(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %2, %3
  %or = or i64 %1, %and
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop29(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %2, %3
  %and = and i64 %1, %xor
  %xor1 = xor i64 %0, %and
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop30(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %1, %2
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop31(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %1, %2
  %and = and i64 %0, %or
  %neg = xor i64 %and, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop32(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %and = and i64 %1, %neg
  %and1 = and i64 %0, %and
  ret i64 %and1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop33(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %1, %2
  %or = or i64 %0, %xor
  %neg = xor i64 %or, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop34(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %1, -1
  %and = and i64 %0, %neg
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop35(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %and = and i64 %1, %neg
  %or = or i64 %0, %and
  %neg1 = xor i64 %or, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop36(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %2, %3
  %and = and i64 %xor, %xor1
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop37(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %2, %3
  %neg = xor i64 %and, -1
  %and1 = and i64 %1, %neg
  %xor = xor i64 %0, %and1
  %neg2 = xor i64 %xor, -1
  ret i64 %neg2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop38(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %2, %3
  %or = or i64 %1, %and
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop39(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %2, %3
  %neg = xor i64 %xor, -1
  %or = or i64 %1, %neg
  %xor1 = xor i64 %0, %or
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop40(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %1, %2
  %and = and i64 %0, %xor
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop41(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %4 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %3, %4
  %or = or i64 %2, %and
  %xor = xor i64 %1, %or
  %xor1 = xor i64 %0, %xor
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop42(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %1, %2
  %neg = xor i64 %and, -1
  %and1 = and i64 %0, %neg
  ret i64 %and1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop43(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %2, %3
  %and = and i64 %xor, %xor1
  %4 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor2 = xor i64 %and, %4
  %neg = xor i64 %xor2, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop44(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %2, %3
  %and = and i64 %1, %or
  %xor = xor i64 %0, %and
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop45(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %or = or i64 %1, %neg
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop46(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %2, %3
  %or = or i64 %1, %xor
  %xor1 = xor i64 %0, %or
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop47(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %or = or i64 %1, %neg
  %and = and i64 %0, %or
  %neg1 = xor i64 %and, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop48(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %1, -1
  %and = and i64 %0, %neg
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop49(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %and = and i64 %1, %neg
  %or = or i64 %0, %and
  %neg1 = xor i64 %or, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop50(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %2, %3
  %or1 = or i64 %1, %or
  %xor = xor i64 %0, %or1
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop51(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop52(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %2, %3
  %or = or i64 %1, %and
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop53(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %2, %3
  %neg = xor i64 %xor, -1
  %or = or i64 %1, %neg
  %xor1 = xor i64 %0, %or
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop54(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %1, %2
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop55(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %1, %2
  %and = and i64 %0, %or
  %neg = xor i64 %and, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop56(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %2, %3
  %and = and i64 %1, %or
  %xor = xor i64 %0, %and
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop57(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %or = or i64 %1, %neg
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop58(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %2, %3
  %or = or i64 %1, %xor
  %xor1 = xor i64 %0, %or
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop59(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %or = or i64 %1, %neg
  %and = and i64 %0, %or
  %neg1 = xor i64 %and, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop60(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop61(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %2, %3
  %neg = xor i64 %or, -1
  %or1 = or i64 %1, %neg
  %xor = xor i64 %0, %or1
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop62(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %3, -1
  %and = and i64 %2, %neg
  %or = or i64 %1, %and
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop63(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %neg = xor i64 %and, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop64(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %and = and i64 %1, %neg
  %and1 = and i64 %0, %and
  ret i64 %and1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop65(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %1, %2
  %or = or i64 %0, %xor
  %neg = xor i64 %or, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop66(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %2, %3
  %and = and i64 %xor, %xor1
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop67(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %2, %3
  %neg = xor i64 %and, -1
  %and1 = and i64 %1, %neg
  %xor = xor i64 %0, %and1
  %neg2 = xor i64 %xor, -1
  ret i64 %neg2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop68(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %1, -1
  %and = and i64 %0, %neg
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop69(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %and = and i64 %1, %neg
  %or = or i64 %0, %and
  %neg1 = xor i64 %or, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop70(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %2, %3
  %or = or i64 %1, %and
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop71(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %2, %3
  %and = and i64 %1, %xor
  %xor1 = xor i64 %0, %and
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop72(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %1, %2
  %and = and i64 %0, %xor
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop73(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %4 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %3, %4
  %or = or i64 %2, %and
  %xor = xor i64 %1, %or
  %xor1 = xor i64 %0, %xor
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop74(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %2, %3
  %and = and i64 %1, %or
  %xor = xor i64 %0, %and
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop75(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %or = or i64 %1, %neg
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop76(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %1, %2
  %neg = xor i64 %and, -1
  %and1 = and i64 %0, %neg
  ret i64 %and1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop77(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %1, %2
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %4 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %3, %4
  %or = or i64 %xor, %xor1
  %xor2 = xor i64 %0, %or
  %neg = xor i64 %xor2, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop78(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %2, %3
  %or = or i64 %1, %xor
  %xor1 = xor i64 %0, %or
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop79(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %or = or i64 %1, %neg
  %and = and i64 %0, %or
  %neg1 = xor i64 %and, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop80(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %1, -1
  %and = and i64 %0, %neg
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop81(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %and = and i64 %1, %neg
  %or = or i64 %0, %and
  %neg1 = xor i64 %or, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop82(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %2, %3
  %or = or i64 %1, %and
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop83(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %2, %3
  %and = and i64 %1, %xor
  %xor1 = xor i64 %0, %and
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop84(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %1, %2
  %neg = xor i64 %or, -1
  %or1 = or i64 %0, %neg
  %neg2 = xor i64 %or1, -1
  ret i64 %neg2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop85(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop86(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %1, %2
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop87(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %1, %2
  %and = and i64 %0, %or
  %neg = xor i64 %and, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop88(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %2, %3
  %and = and i64 %1, %or
  %xor = xor i64 %0, %and
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop89(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %or = or i64 %1, %neg
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop90(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop91(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %2, %3
  %neg = xor i64 %or, -1
  %or1 = or i64 %1, %neg
  %xor = xor i64 %0, %or1
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop92(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %2, %3
  %or = or i64 %1, %xor
  %xor1 = xor i64 %0, %or
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop93(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %or = or i64 %1, %neg
  %and = and i64 %0, %or
  %neg1 = xor i64 %and, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop94(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %3, -1
  %and = and i64 %2, %neg
  %or = or i64 %1, %and
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop95(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %neg = xor i64 %and, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop96(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %1, %2
  %and = and i64 %0, %xor
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop97(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %4 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %3, %4
  %or = or i64 %2, %and
  %xor = xor i64 %1, %or
  %xor1 = xor i64 %0, %xor
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop98(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %2, %3
  %and = and i64 %1, %or
  %xor = xor i64 %0, %and
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop99(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %or = or i64 %1, %neg
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop100(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %2, %3
  %and = and i64 %1, %or
  %xor = xor i64 %0, %and
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop101(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %2, -1
  %or = or i64 %1, %neg
  %xor = xor i64 %0, %or
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop102(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop103(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %2, %3
  %neg = xor i64 %or, -1
  %or1 = or i64 %1, %neg
  %xor = xor i64 %0, %or1
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop104(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %4 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %3, %4
  %neg = xor i64 %or, -1
  %or1 = or i64 %2, %neg
  %xor = xor i64 %1, %or1
  %xor2 = xor i64 %0, %xor
  %neg3 = xor i64 %xor2, -1
  ret i64 %neg3
}

; Function Attrs: nounwind uwtable
define internal i64 @rop105(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %1, %2
  %xor1 = xor i64 %0, %xor
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop106(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %1, %2
  %xor = xor i64 %0, %and
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop107(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %4 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %3, %4
  %and = and i64 %2, %or
  %xor = xor i64 %1, %and
  %xor1 = xor i64 %0, %xor
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop108(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %2
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop109(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  %4 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor1 = xor i64 %xor, %4
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop110(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop111(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %neg = xor i64 %xor, -1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %neg, %2
  %neg1 = xor i64 %and, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop112(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %neg = xor i64 %and, -1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and1 = and i64 %neg, %2
  ret i64 %and1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop113(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %2, %3
  %and = and i64 %xor, %xor1
  %4 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor2 = xor i64 %and, %4
  %neg = xor i64 %xor2, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop114(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %xor, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %or, %3
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop115(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %neg1 = xor i64 %and, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop116(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %xor, %2
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %or, %3
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop117(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %neg1 = xor i64 %and, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop118(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %3
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop119(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %neg = xor i64 %and, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop120(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %2
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop121(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  %4 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %xor, %4
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop122(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop123(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %neg = xor i64 %xor, -1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %neg, %2
  %neg1 = xor i64 %and, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop124(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop125(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %neg = xor i64 %xor, -1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %neg, %2
  %neg1 = xor i64 %and, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop126(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %2, %3
  %or = or i64 %xor, %xor1
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop127(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and1 = and i64 %and, %2
  %neg = xor i64 %and1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop128(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and1 = and i64 %and, %2
  ret i64 %and1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop129(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %2, %3
  %or = or i64 %xor, %xor1
  %neg = xor i64 %or, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop130(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %neg = xor i64 %xor, -1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %neg, %2
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop131(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  %neg1 = xor i64 %xor, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop132(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %neg = xor i64 %xor, -1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %neg, %2
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop133(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  %neg1 = xor i64 %xor, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop134(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  %4 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %xor, %4
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop135(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %2
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop136(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop137(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %3
  %neg1 = xor i64 %xor, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop138(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop139(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %xor, %2
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %or, %3
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop140(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop141(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %xor, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %or, %3
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop142(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %2, %3
  %and = and i64 %xor, %xor1
  %4 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor2 = xor i64 %and, %4
  ret i64 %xor2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop143(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %neg = xor i64 %and, -1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and1 = and i64 %neg, %2
  %neg2 = xor i64 %and1, -1
  ret i64 %neg2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop144(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %neg = xor i64 %xor, -1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %neg, %2
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop145(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  %neg1 = xor i64 %xor, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop146(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  %4 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %xor, %4
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop147(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %2
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop148(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  %4 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor1 = xor i64 %xor, %4
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop149(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %2
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop150(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %xor, %2
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop151(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %neg = xor i64 %or, -1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or1 = or i64 %neg, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %or1, %3
  %4 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor2 = xor i64 %xor, %4
  ret i64 %xor2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop152(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %neg = xor i64 %or, -1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or1 = or i64 %neg, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %or1, %3
  %neg2 = xor i64 %xor, -1
  ret i64 %neg2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop153(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop154(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %2
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop155(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop156(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %2
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop157(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop158(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %3
  %4 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %xor, %4
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop159(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %xor, %2
  %neg = xor i64 %and, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop160(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop161(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %3
  %neg1 = xor i64 %xor, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop162(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop163(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %xor, %2
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %or, %3
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop164(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %neg = xor i64 %or, -1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or1 = or i64 %neg, %2
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %or1, %3
  %neg2 = xor i64 %xor, -1
  ret i64 %neg2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop165(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop166(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %2
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop167(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop168(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop169(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %2
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop170(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal i64 @rop171(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %neg = xor i64 %or, -1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or1 = or i64 %neg, %2
  ret i64 %or1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop172(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %xor, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %and, %3
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop173(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %3
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop174(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop175(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop176(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop177(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %xor, %2
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor1 = xor i64 %or, %3
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop178(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor1 = xor i64 %2, %3
  %or = or i64 %xor, %xor1
  %4 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor2 = xor i64 %or, %4
  ret i64 %xor2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop179(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %neg = xor i64 %and, -1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and1 = and i64 %neg, %2
  %neg2 = xor i64 %and1, -1
  ret i64 %neg2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop180(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %2
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop181(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop182(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %3
  %4 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %xor, %4
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop183(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %xor, %2
  %neg = xor i64 %and, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop184(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %xor, %2
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor1 = xor i64 %and, %3
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop185(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  %neg = xor i64 %or, -1
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %neg, %3
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop186(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop187(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop188(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %neg = xor i64 %and, -1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and1 = and i64 %neg, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and1, %3
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop189(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %2, %3
  %and = and i64 %xor, %xor1
  %neg = xor i64 %and, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop190(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %xor, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop191(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %neg = xor i64 %and, -1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %neg, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop192(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop193(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %3
  %neg1 = xor i64 %xor, -1
  ret i64 %neg1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop194(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %neg = xor i64 %or, -1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or1 = or i64 %neg, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %or1, %3
  %neg2 = xor i64 %xor, -1
  ret i64 %neg2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop195(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop196(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop197(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %xor, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %or, %3
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop198(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %2
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop199(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop200(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop201(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %2
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop202(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %xor, %2
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %and, %3
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop203(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %3
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop204(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal i64 @rop205(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %neg = xor i64 %or, -1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or1 = or i64 %neg, %2
  ret i64 %or1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop206(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop207(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop208(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop209(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %xor, %2
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor1 = xor i64 %or, %3
  %neg = xor i64 %xor1, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop210(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %2
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop211(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and, %3
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop212(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %2, %3
  %and = and i64 %xor, %xor1
  %4 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor2 = xor i64 %and, %4
  ret i64 %xor2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop213(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %neg = xor i64 %and, -1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and1 = and i64 %neg, %2
  %neg2 = xor i64 %and1, -1
  ret i64 %neg2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop214(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %3
  %4 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor1 = xor i64 %xor, %4
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop215(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %xor, %2
  %neg = xor i64 %and, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop216(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %xor, %2
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor1 = xor i64 %and, %3
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop217(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %3
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop218(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %neg = xor i64 %and, -1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and1 = and i64 %neg, %2
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %and1, %3
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop219(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %2, %3
  %and = and i64 %xor, %xor1
  %neg = xor i64 %and, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop220(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop221(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop222(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %xor, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop223(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %neg = xor i64 %and, -1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %neg, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop224(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %or, %2
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @rop225(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %2
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop226(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %xor, %2
  %3 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor1 = xor i64 %and, %3
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop227(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %3
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop228(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %xor, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %and, %3
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop229(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  %3 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %or, %3
  %neg = xor i64 %xor, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop230(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %neg = xor i64 %and, -1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and1 = and i64 %neg, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and1, %3
  ret i64 %xor
}

; Function Attrs: nounwind uwtable
define internal i64 @rop231(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %2, %3
  %and = and i64 %xor, %xor1
  %neg = xor i64 %and, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define internal i64 @rop232(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor1 = xor i64 %2, %3
  %and = and i64 %xor, %xor1
  %4 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor2 = xor i64 %and, %4
  ret i64 %xor2
}

; Function Attrs: nounwind uwtable
define internal i64 @rop233(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %neg = xor i64 %and, -1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and1 = and i64 %neg, %2
  %3 = load i64, i64* %S.addr, align 8, !tbaa !1
  %xor = xor i64 %and1, %3
  %4 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor2 = xor i64 %xor, %4
  %neg3 = xor i64 %xor2, -1
  ret i64 %neg3
}

; Function Attrs: nounwind uwtable
define internal i64 @rop234(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop235(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %neg = xor i64 %xor, -1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %neg, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop236(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop237(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %neg = xor i64 %xor, -1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %neg, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop238(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop239(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or1 = or i64 %or, %2
  ret i64 %or1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop240(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %T.addr, align 8, !tbaa !1
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal i64 @rop241(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %neg = xor i64 %or, -1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or1 = or i64 %neg, %2
  ret i64 %or1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop242(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop243(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop244(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %and = and i64 %neg, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop245(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop246(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %xor, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop247(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %neg = xor i64 %and, -1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %neg, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop248(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %and = and i64 %0, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %and, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop249(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %D.addr, align 8, !tbaa !1
  %xor = xor i64 %0, %1
  %neg = xor i64 %xor, -1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %neg, %2
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop250(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop251(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or1 = or i64 %or, %2
  ret i64 %or1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop252(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  ret i64 %or
}

; Function Attrs: nounwind uwtable
define internal i64 @rop253(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %D.addr, align 8, !tbaa !1
  %neg = xor i64 %0, -1
  %1 = load i64, i64* %S.addr, align 8, !tbaa !1
  %or = or i64 %neg, %1
  %2 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or1 = or i64 %or, %2
  ret i64 %or1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop254(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  %0 = load i64, i64* %S.addr, align 8, !tbaa !1
  %1 = load i64, i64* %T.addr, align 8, !tbaa !1
  %or = or i64 %0, %1
  %2 = load i64, i64* %D.addr, align 8, !tbaa !1
  %or1 = or i64 %or, %2
  ret i64 %or1
}

; Function Attrs: nounwind uwtable
define internal i64 @rop255(i64 %D, i64 %S, i64 %T) #0 {
entry:
  %D.addr = alloca i64, align 8
  %S.addr = alloca i64, align 8
  %T.addr = alloca i64, align 8
  store i64 %D, i64* %D.addr, align 8, !tbaa !1
  store i64 %S, i64* %S.addr, align 8, !tbaa !1
  store i64 %T, i64* %T.addr, align 8, !tbaa !1
  ret i64 -1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
