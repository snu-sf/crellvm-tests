; ModuleID = './MultiSource.Benchmarks.Ptrdist/3.ft.item.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Vertices = type { i32, %struct._Edges*, %struct._Vertices*, i32, %struct._Edges* }
%struct._Edges = type { i32, %struct._Vertices*, %struct._Vertices*, %struct._Edges* }

; Function Attrs: nounwind uwtable
define i32 @LessThan(%struct._Vertices* %item1, %struct._Vertices* %item2) #0 {
entry:
  %item1.addr = alloca %struct._Vertices*, align 8
  %item2.addr = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %item1, %struct._Vertices** %item1.addr, align 8
  store %struct._Vertices* %item2, %struct._Vertices** %item2.addr, align 8
  %0 = load %struct._Vertices*, %struct._Vertices** %item1.addr, align 8
  %key = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i32 0, i32 3
  %1 = load i32, i32* %key, align 4
  %2 = load %struct._Vertices*, %struct._Vertices** %item2.addr, align 8
  %key1 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %2, i32 0, i32 3
  %3 = load i32, i32* %key1, align 4
  %cmp = icmp slt i32 %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @Equal(%struct._Vertices* %item1, %struct._Vertices* %item2) #0 {
entry:
  %item1.addr = alloca %struct._Vertices*, align 8
  %item2.addr = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %item1, %struct._Vertices** %item1.addr, align 8
  store %struct._Vertices* %item2, %struct._Vertices** %item2.addr, align 8
  %0 = load %struct._Vertices*, %struct._Vertices** %item1.addr, align 8
  %key = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i32 0, i32 3
  %1 = load i32, i32* %key, align 4
  %2 = load %struct._Vertices*, %struct._Vertices** %item2.addr, align 8
  %key1 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %2, i32 0, i32 3
  %3 = load i32, i32* %key1, align 4
  %cmp = icmp eq i32 %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define %struct._Vertices* @Subtract(%struct._Vertices* %item, i32 %delta) #0 {
entry:
  %item.addr = alloca %struct._Vertices*, align 8
  %delta.addr = alloca i32, align 4
  store %struct._Vertices* %item, %struct._Vertices** %item.addr, align 8
  store i32 %delta, i32* %delta.addr, align 4
  %0 = load %struct._Vertices*, %struct._Vertices** %item.addr, align 8
  %key = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i32 0, i32 3
  %1 = load i32, i32* %key, align 4
  %2 = load i32, i32* %delta.addr, align 4
  %sub = sub nsw i32 %1, %2
  %3 = load %struct._Vertices*, %struct._Vertices** %item.addr, align 8
  %key1 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %3, i32 0, i32 3
  store i32 %sub, i32* %key1, align 4
  %4 = load %struct._Vertices*, %struct._Vertices** %item.addr, align 8
  ret %struct._Vertices* %4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
