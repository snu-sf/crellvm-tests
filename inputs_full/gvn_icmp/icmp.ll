define i32 @foo(i32 %a, i32 %b) #0 {
entry:
 %cmp = icmp sgt i32 %a, %b
 br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
 %cmp1 = icmp sgt i32 %a, %b
 br i1 %cmp1, label %if.end, label %if.end

if.end:                                         ; preds = %if.else.3, %if.end
 %z = phi i1 [ %cmp, %entry ], [ %cmp1, %if.then ], [ %cmp1, %if.then ]
 ret i32 %a
}
