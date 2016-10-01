; ModuleID = './MultiSource.Applications.treecc/4.literal.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }

@.str = private unnamed_addr constant [16 x i8] c"%%literal %d %s\00", align 1

; Function Attrs: nounwind uwtable
define void @TreeCCAddLiteralDefn(%struct._tagTreeCCContext* %context, i8* %code, i32 %flags) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %code.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %code, i8** %code.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %debugMode = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 8
  %bf.load = load i16, i16* %debugMode, align 8
  %bf.shl = shl i16 %bf.load, 15
  %bf.ashr = ashr i16 %bf.shl, 15
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %1, i32 0, i32 2
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input, align 8
  %linenum = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %2, i32 0, i32 5
  %3 = load i64, i64* %linenum, align 8
  %4 = load i32, i32* %flags.addr, align 4
  %5 = load i8*, i8** %code.addr, align 8
  call void (i64, i8*, ...) @TreeCCDebug(i64 %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %4, i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %flags.addr, align 4
  %and = and i32 %6, 1
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %7, 2
  %cmp2 = icmp ne i32 %and1, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %8, i32 0, i32 4
  %9 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream, align 8
  %10 = load i8*, i8** %code.addr, align 8
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input4 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %11, i32 0, i32 2
  %12 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input4, align 8
  %filename = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %12, i32 0, i32 4
  %13 = load i8*, i8** %filename, align 8
  %14 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input5 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %14, i32 0, i32 2
  %15 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input5, align 8
  %linenum6 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %15, i32 0, i32 5
  %16 = load i64, i64* %linenum6, align 8
  %17 = load i32, i32* %flags.addr, align 4
  %and7 = and i32 %17, 4
  %cmp8 = icmp ne i32 %and7, 0
  %conv = zext i1 %cmp8 to i32
  call void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* %9, i8* %10, i8* %13, i64 %16, i32 %conv, i32 0)
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %sourceStream = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %18, i32 0, i32 5
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %sourceStream, align 8
  %20 = load i8*, i8** %code.addr, align 8
  %21 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input9 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %21, i32 0, i32 2
  %22 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input9, align 8
  %filename10 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %22, i32 0, i32 4
  %23 = load i8*, i8** %filename10, align 8
  %24 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input11 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %24, i32 0, i32 2
  %25 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input11, align 8
  %linenum12 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %25, i32 0, i32 5
  %26 = load i64, i64* %linenum12, align 8
  %27 = load i32, i32* %flags.addr, align 4
  %and13 = and i32 %27, 4
  %cmp14 = icmp ne i32 %and13, 0
  %conv15 = zext i1 %cmp14 to i32
  call void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* %19, i8* %20, i8* %23, i64 %26, i32 %conv15, i32 1)
  br label %if.end.38

if.else:                                          ; preds = %land.lhs.true, %if.end
  %28 = load i32, i32* %flags.addr, align 4
  %and16 = and i32 %28, 1
  %cmp17 = icmp ne i32 %and16, 0
  br i1 %cmp17, label %if.then.19, label %if.else.28

if.then.19:                                       ; preds = %if.else
  %29 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %sourceStream20 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %29, i32 0, i32 5
  %30 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %sourceStream20, align 8
  %31 = load i8*, i8** %code.addr, align 8
  %32 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input21 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %32, i32 0, i32 2
  %33 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input21, align 8
  %filename22 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %33, i32 0, i32 4
  %34 = load i8*, i8** %filename22, align 8
  %35 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input23 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %35, i32 0, i32 2
  %36 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input23, align 8
  %linenum24 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %36, i32 0, i32 5
  %37 = load i64, i64* %linenum24, align 8
  %38 = load i32, i32* %flags.addr, align 4
  %and25 = and i32 %38, 4
  %cmp26 = icmp ne i32 %and25, 0
  %conv27 = zext i1 %cmp26 to i32
  call void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* %30, i8* %31, i8* %34, i64 %37, i32 %conv27, i32 0)
  br label %if.end.37

if.else.28:                                       ; preds = %if.else
  %39 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %headerStream29 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %39, i32 0, i32 4
  %40 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %headerStream29, align 8
  %41 = load i8*, i8** %code.addr, align 8
  %42 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input30 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %42, i32 0, i32 2
  %43 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input30, align 8
  %filename31 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %43, i32 0, i32 4
  %44 = load i8*, i8** %filename31, align 8
  %45 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %input32 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %45, i32 0, i32 2
  %46 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input32, align 8
  %linenum33 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %46, i32 0, i32 5
  %47 = load i64, i64* %linenum33, align 8
  %48 = load i32, i32* %flags.addr, align 4
  %and34 = and i32 %48, 4
  %cmp35 = icmp ne i32 %and34, 0
  %conv36 = zext i1 %cmp35 to i32
  call void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* %40, i8* %41, i8* %44, i64 %47, i32 %conv36, i32 0)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.28, %if.then.19
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.3
  ret void
}

declare void @TreeCCDebug(i64, i8*, ...) #1

declare void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream*, i8*, i8*, i64, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
