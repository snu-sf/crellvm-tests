; ModuleID = 'ggc-page.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.globals = type { [66 x %struct.page_entry*], [66 x %struct.page_entry*], %struct.page_table_chain*, i64, i64, i64, i64, i64, i16, %struct.page_entry*, %struct.page_group*, %struct._IO_FILE* }
%struct.page_table_chain = type { %struct.page_table_chain*, i64, [256 x %struct.page_entry**] }
%struct.page_entry = type { %struct.page_entry*, i64, i8*, %struct.page_group*, i64*, i16, i16, i16, i8, [1 x i64] }
%struct.page_group = type { %struct.page_group*, i8*, i64, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ggc_statistics = type { [256 x i32], [256 x i64], [256 x i32], [256 x i64], i64, i64, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Head=%p, Tail=%p:\0A\00", align 1
@G = internal global %struct.globals zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%p(%1d|%3d) -> \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@size_lookup = internal global [257 x i8] c"\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08", align 16
@object_size_table = internal global [66 x i64] zeroinitializer, align 16
@extra_order_size_table = internal constant [2 x i64] [i64 208, i64 40], align 16
@objects_per_page_table = internal global [66 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"ggc-page.c\00", align 1
@__FUNCTION__.ggc_push_context = private unnamed_addr constant [17 x i8] c"ggc_push_context\00", align 1
@quiet_flag = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c" {GC %luk -> \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%luk}\00", align 1
@__FUNCTION__.alloc_page = private unnamed_addr constant [11 x i8] c"alloc_page\00", align 1
@__FUNCTION__.ggc_recalculate_in_use_p = private unnamed_addr constant [25 x i8] c"ggc_recalculate_in_use_p\00", align 1

; Function Attrs: nounwind uwtable
define void @debug_print_page_list(i32 %order) #0 {
entry:
  %order.addr = alloca i32, align 4
  %p = alloca %struct.page_entry*, align 8
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 0), i32 0, i64 %idxprom
  %1 = load %struct.page_entry*, %struct.page_entry** %arrayidx, align 8
  %2 = bitcast %struct.page_entry* %1 to i8*
  %3 = load i32, i32* %order.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 1), i32 0, i64 %idxprom1
  %4 = load %struct.page_entry*, %struct.page_entry** %arrayidx2, align 8
  %5 = bitcast %struct.page_entry* %4 to i8*
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* %2, i8* %5)
  %6 = load i32, i32* %order.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 0), i32 0, i64 %idxprom3
  %7 = load %struct.page_entry*, %struct.page_entry** %arrayidx4, align 8
  store %struct.page_entry* %7, %struct.page_entry** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %cmp = icmp ne %struct.page_entry* %8, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %10 = bitcast %struct.page_entry* %9 to i8*
  %11 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %context_depth = getelementptr inbounds %struct.page_entry, %struct.page_entry* %11, i32 0, i32 5
  %12 = load i16, i16* %context_depth, align 2
  %conv = zext i16 %12 to i32
  %13 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %13, i32 0, i32 6
  %14 = load i16, i16* %num_free_objects, align 2
  %conv5 = zext i16 %14 to i32
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %10, i32 %conv, i32 %conv5)
  %15 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %15, i32 0, i32 0
  %16 = load %struct.page_entry*, %struct.page_entry** %next, align 8
  store %struct.page_entry* %16, %struct.page_entry** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fflush(%struct._IO_FILE* %17)
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i8* @ggc_alloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %order = alloca i32, align 4
  %word = alloca i32, align 4
  %bit = alloca i32, align 4
  %object_offset = alloca i32, align 4
  %entry1 = alloca %struct.page_entry*, align 8
  %result = alloca i8*, align 8
  %new_entry = alloca %struct.page_entry*, align 8
  %hint = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ule i64 %0, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %arrayidx = getelementptr inbounds [257 x i8], [257 x i8]* @size_lookup, i32 0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %order, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 9, i32* %order, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %3 = load i64, i64* %size.addr, align 8
  %4 = load i32, i32* %order, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [66 x i64], [66 x i64]* @object_size_table, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx2, align 8
  %cmp3 = icmp ugt i64 %3, %5
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %order, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %order, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %7 = load i32, i32* %order, align 4
  %idxprom5 = zext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 0), i32 0, i64 %idxprom5
  %8 = load %struct.page_entry*, %struct.page_entry** %arrayidx6, align 8
  store %struct.page_entry* %8, %struct.page_entry** %entry1, align 8
  %9 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %cmp7 = icmp eq %struct.page_entry* %9, null
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %10, i32 0, i32 6
  %11 = load i16, i16* %num_free_objects, align 2
  %conv9 = zext i16 %11 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then.12, label %if.else.21

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %12 = load i32, i32* %order, align 4
  %call = call %struct.page_entry* @alloc_page(i32 %12)
  store %struct.page_entry* %call, %struct.page_entry** %new_entry, align 8
  %13 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %cmp13 = icmp eq %struct.page_entry* %13, null
  br i1 %cmp13, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.then.12
  %14 = load %struct.page_entry*, %struct.page_entry** %new_entry, align 8
  %15 = load i32, i32* %order, align 4
  %idxprom16 = zext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 1), i32 0, i64 %idxprom16
  store %struct.page_entry* %14, %struct.page_entry** %arrayidx17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.then.12
  %16 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %17 = load %struct.page_entry*, %struct.page_entry** %new_entry, align 8
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %17, i32 0, i32 0
  store %struct.page_entry* %16, %struct.page_entry** %next, align 8
  %18 = load %struct.page_entry*, %struct.page_entry** %new_entry, align 8
  store %struct.page_entry* %18, %struct.page_entry** %entry1, align 8
  %19 = load %struct.page_entry*, %struct.page_entry** %new_entry, align 8
  %20 = load i32, i32* %order, align 4
  %idxprom19 = zext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 0), i32 0, i64 %idxprom19
  store %struct.page_entry* %19, %struct.page_entry** %arrayidx20, align 8
  %21 = load %struct.page_entry*, %struct.page_entry** %new_entry, align 8
  %next_bit_hint = getelementptr inbounds %struct.page_entry, %struct.page_entry* %21, i32 0, i32 7
  store i16 1, i16* %next_bit_hint, align 2
  store i32 0, i32* %word, align 4
  store i32 0, i32* %bit, align 4
  store i32 0, i32* %object_offset, align 4
  br label %if.end.56

if.else.21:                                       ; preds = %lor.lhs.false
  %22 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %next_bit_hint22 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %22, i32 0, i32 7
  %23 = load i16, i16* %next_bit_hint22, align 2
  %conv23 = zext i16 %23 to i32
  store i32 %conv23, i32* %hint, align 4
  %24 = load i32, i32* %hint, align 4
  %div = udiv i32 %24, 64
  store i32 %div, i32* %word, align 4
  %25 = load i32, i32* %hint, align 4
  %rem = urem i32 %25, 64
  store i32 %rem, i32* %bit, align 4
  %26 = load i32, i32* %word, align 4
  %idxprom24 = zext i32 %26 to i64
  %27 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %in_use_p = getelementptr inbounds %struct.page_entry, %struct.page_entry* %27, i32 0, i32 9
  %arrayidx25 = getelementptr inbounds [1 x i64], [1 x i64]* %in_use_p, i32 0, i64 %idxprom24
  %28 = load i64, i64* %arrayidx25, align 8
  %29 = load i32, i32* %bit, align 4
  %sh_prom = zext i32 %29 to i64
  %shr = lshr i64 %28, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.26, label %if.end.47

if.then.26:                                       ; preds = %if.else.21
  store i32 0, i32* %bit, align 4
  store i32 0, i32* %word, align 4
  br label %while.cond.27

while.cond.27:                                    ; preds = %while.body.33, %if.then.26
  %30 = load i32, i32* %word, align 4
  %idxprom28 = zext i32 %30 to i64
  %31 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %in_use_p29 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %31, i32 0, i32 9
  %arrayidx30 = getelementptr inbounds [1 x i64], [1 x i64]* %in_use_p29, i32 0, i64 %idxprom28
  %32 = load i64, i64* %arrayidx30, align 8
  %neg = xor i64 %32, -1
  %cmp31 = icmp eq i64 %neg, 0
  br i1 %cmp31, label %while.body.33, label %while.end.35

while.body.33:                                    ; preds = %while.cond.27
  %33 = load i32, i32* %word, align 4
  %inc34 = add i32 %33, 1
  store i32 %inc34, i32* %word, align 4
  br label %while.cond.27

while.end.35:                                     ; preds = %while.cond.27
  br label %while.cond.36

while.cond.36:                                    ; preds = %while.body.44, %while.end.35
  %34 = load i32, i32* %word, align 4
  %idxprom37 = zext i32 %34 to i64
  %35 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %in_use_p38 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %35, i32 0, i32 9
  %arrayidx39 = getelementptr inbounds [1 x i64], [1 x i64]* %in_use_p38, i32 0, i64 %idxprom37
  %36 = load i64, i64* %arrayidx39, align 8
  %37 = load i32, i32* %bit, align 4
  %sh_prom40 = zext i32 %37 to i64
  %shr41 = lshr i64 %36, %sh_prom40
  %and42 = and i64 %shr41, 1
  %tobool43 = icmp ne i64 %and42, 0
  br i1 %tobool43, label %while.body.44, label %while.end.46

while.body.44:                                    ; preds = %while.cond.36
  %38 = load i32, i32* %bit, align 4
  %inc45 = add i32 %38, 1
  store i32 %inc45, i32* %bit, align 4
  br label %while.cond.36

while.end.46:                                     ; preds = %while.cond.36
  %39 = load i32, i32* %word, align 4
  %mul = mul i32 %39, 64
  %40 = load i32, i32* %bit, align 4
  %add = add i32 %mul, %40
  store i32 %add, i32* %hint, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %while.end.46, %if.else.21
  %41 = load i32, i32* %hint, align 4
  %add48 = add i32 %41, 1
  %conv49 = trunc i32 %add48 to i16
  %42 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %next_bit_hint50 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %42, i32 0, i32 7
  store i16 %conv49, i16* %next_bit_hint50, align 2
  %43 = load i32, i32* %hint, align 4
  %conv51 = zext i32 %43 to i64
  %44 = load i32, i32* %order, align 4
  %idxprom52 = zext i32 %44 to i64
  %arrayidx53 = getelementptr inbounds [66 x i64], [66 x i64]* @object_size_table, i32 0, i64 %idxprom52
  %45 = load i64, i64* %arrayidx53, align 8
  %mul54 = mul i64 %conv51, %45
  %conv55 = trunc i64 %mul54 to i32
  store i32 %conv55, i32* %object_offset, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.47, %if.end.18
  %46 = load i32, i32* %bit, align 4
  %sh_prom57 = zext i32 %46 to i64
  %shl = shl i64 1, %sh_prom57
  %47 = load i32, i32* %word, align 4
  %idxprom58 = zext i32 %47 to i64
  %48 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %in_use_p59 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %48, i32 0, i32 9
  %arrayidx60 = getelementptr inbounds [1 x i64], [1 x i64]* %in_use_p59, i32 0, i64 %idxprom58
  %49 = load i64, i64* %arrayidx60, align 8
  %or = or i64 %49, %shl
  store i64 %or, i64* %arrayidx60, align 8
  %50 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %num_free_objects61 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %50, i32 0, i32 6
  %51 = load i16, i16* %num_free_objects61, align 2
  %dec = add i16 %51, -1
  store i16 %dec, i16* %num_free_objects61, align 2
  %conv62 = zext i16 %dec to i32
  %cmp63 = icmp eq i32 %conv62, 0
  br i1 %cmp63, label %land.lhs.true, label %if.end.84

land.lhs.true:                                    ; preds = %if.end.56
  %52 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %next65 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %52, i32 0, i32 0
  %53 = load %struct.page_entry*, %struct.page_entry** %next65, align 8
  %cmp66 = icmp ne %struct.page_entry* %53, null
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.84

land.lhs.true.68:                                 ; preds = %land.lhs.true
  %54 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %next69 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %54, i32 0, i32 0
  %55 = load %struct.page_entry*, %struct.page_entry** %next69, align 8
  %num_free_objects70 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %55, i32 0, i32 6
  %56 = load i16, i16* %num_free_objects70, align 2
  %conv71 = zext i16 %56 to i32
  %cmp72 = icmp sgt i32 %conv71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.84

if.then.74:                                       ; preds = %land.lhs.true.68
  %57 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %next75 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %57, i32 0, i32 0
  %58 = load %struct.page_entry*, %struct.page_entry** %next75, align 8
  %59 = load i32, i32* %order, align 4
  %idxprom76 = zext i32 %59 to i64
  %arrayidx77 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 0), i32 0, i64 %idxprom76
  store %struct.page_entry* %58, %struct.page_entry** %arrayidx77, align 8
  %60 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %next78 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %60, i32 0, i32 0
  store %struct.page_entry* null, %struct.page_entry** %next78, align 8
  %61 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %62 = load i32, i32* %order, align 4
  %idxprom79 = zext i32 %62 to i64
  %arrayidx80 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 1), i32 0, i64 %idxprom79
  %63 = load %struct.page_entry*, %struct.page_entry** %arrayidx80, align 8
  %next81 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %63, i32 0, i32 0
  store %struct.page_entry* %61, %struct.page_entry** %next81, align 8
  %64 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %65 = load i32, i32* %order, align 4
  %idxprom82 = zext i32 %65 to i64
  %arrayidx83 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 1), i32 0, i64 %idxprom82
  store %struct.page_entry* %64, %struct.page_entry** %arrayidx83, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.74, %land.lhs.true.68, %land.lhs.true, %if.end.56
  %66 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %page = getelementptr inbounds %struct.page_entry, %struct.page_entry* %66, i32 0, i32 2
  %67 = load i8*, i8** %page, align 8
  %68 = load i32, i32* %object_offset, align 4
  %idx.ext = zext i32 %68 to i64
  %add.ptr = getelementptr inbounds i8, i8* %67, i64 %idx.ext
  store i8* %add.ptr, i8** %result, align 8
  %69 = load i32, i32* %order, align 4
  %idxprom85 = zext i32 %69 to i64
  %arrayidx86 = getelementptr inbounds [66 x i64], [66 x i64]* @object_size_table, i32 0, i64 %idxprom85
  %70 = load i64, i64* %arrayidx86, align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 5), align 8
  %add87 = add i64 %71, %70
  store i64 %add87, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 5), align 8
  %72 = load i8*, i8** %result, align 8
  ret i8* %72
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.page_entry* @alloc_page(i32 %order) #2 {
entry:
  %order.addr = alloca i32, align 4
  %entry1 = alloca %struct.page_entry*, align 8
  %p = alloca %struct.page_entry*, align 8
  %pp = alloca %struct.page_entry**, align 8
  %page = alloca i8*, align 8
  %num_objects = alloca i64, align 8
  %bitmap_size = alloca i64, align 8
  %page_entry_size = alloca i64, align 8
  %entry_size = alloca i64, align 8
  %group = alloca %struct.page_group*, align 8
  %allocation = alloca i8*, align 8
  %a = alloca i8*, align 8
  %enda = alloca i8*, align 8
  %alloc_size = alloca i64, align 8
  %head_slop = alloca i64, align 8
  %tail_slop = alloca i64, align 8
  %multiple_pages = alloca i32, align 4
  %e = alloca %struct.page_entry*, align 8
  %f = alloca %struct.page_entry*, align 8
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [66 x i32], [66 x i32]* @objects_per_page_table, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %conv = zext i32 %1 to i64
  store i64 %conv, i64* %num_objects, align 8
  %2 = load i64, i64* %num_objects, align 8
  %add = add i64 %2, 1
  %add2 = add i64 %add, 64
  %sub = sub i64 %add2, 1
  %div = udiv i64 %sub, 64
  %mul = mul i64 %div, 8
  store i64 %mul, i64* %bitmap_size, align 8
  %3 = load i64, i64* %bitmap_size, align 8
  %add3 = add i64 48, %3
  store i64 %add3, i64* %page_entry_size, align 8
  %4 = load i64, i64* %num_objects, align 8
  %5 = load i32, i32* %order.addr, align 4
  %idxprom4 = zext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [66 x i64], [66 x i64]* @object_size_table, i32 0, i64 %idxprom4
  %6 = load i64, i64* %arrayidx5, align 8
  %mul6 = mul i64 %4, %6
  store i64 %mul6, i64* %entry_size, align 8
  %7 = load i64, i64* %entry_size, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %cmp = icmp ult i64 %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  store i64 %9, i64* %entry_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.page_entry* null, %struct.page_entry** %entry1, align 8
  store i8* null, i8** %page, align 8
  store %struct.page_entry** getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 9), %struct.page_entry*** %pp, align 8
  %10 = load %struct.page_entry**, %struct.page_entry*** %pp, align 8
  %11 = load %struct.page_entry*, %struct.page_entry** %10, align 8
  store %struct.page_entry* %11, %struct.page_entry** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %tobool = icmp ne %struct.page_entry* %12, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %bytes = getelementptr inbounds %struct.page_entry, %struct.page_entry* %13, i32 0, i32 1
  %14 = load i64, i64* %bytes, align 8
  %15 = load i64, i64* %entry_size, align 8
  %cmp8 = icmp eq i64 %14, %15
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  br label %for.end

if.end.11:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %16 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %16, i32 0, i32 0
  store %struct.page_entry** %next, %struct.page_entry*** %pp, align 8
  %17 = load %struct.page_entry**, %struct.page_entry*** %pp, align 8
  %18 = load %struct.page_entry*, %struct.page_entry** %17, align 8
  store %struct.page_entry* %18, %struct.page_entry** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  %19 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %cmp12 = icmp ne %struct.page_entry* %19, null
  br i1 %cmp12, label %if.then.14, label %if.else.24

if.then.14:                                       ; preds = %for.end
  %20 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %next15 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %20, i32 0, i32 0
  %21 = load %struct.page_entry*, %struct.page_entry** %next15, align 8
  %22 = load %struct.page_entry**, %struct.page_entry*** %pp, align 8
  store %struct.page_entry* %21, %struct.page_entry** %22, align 8
  %23 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %page16 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %23, i32 0, i32 2
  %24 = load i8*, i8** %page16, align 8
  store i8* %24, i8** %page, align 8
  %25 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %group17 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %25, i32 0, i32 3
  %26 = load %struct.page_group*, %struct.page_group** %group17, align 8
  store %struct.page_group* %26, %struct.page_group** %group, align 8
  %27 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %order18 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %27, i32 0, i32 8
  %28 = load i8, i8* %order18, align 1
  %conv19 = zext i8 %28 to i32
  %29 = load i32, i32* %order.addr, align 4
  %cmp20 = icmp eq i32 %conv19, %29
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.14
  %30 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  store %struct.page_entry* %30, %struct.page_entry** %entry1, align 8
  %31 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %32 = bitcast %struct.page_entry* %31 to i8*
  %33 = load i64, i64* %page_entry_size, align 8
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 %33, i32 8, i1 false)
  br label %if.end.23

if.else:                                          ; preds = %if.then.14
  %34 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %35 = bitcast %struct.page_entry* %34 to i8*
  call void @free(i8* %35) #6
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  br label %if.end.89

if.else.24:                                       ; preds = %for.end
  %36 = load i64, i64* %entry_size, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %cmp25 = icmp eq i64 %36, %37
  %conv26 = zext i1 %cmp25 to i32
  store i32 %conv26, i32* %multiple_pages, align 4
  %38 = load i32, i32* %multiple_pages, align 4
  %tobool27 = icmp ne i32 %38, 0
  br i1 %tobool27, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.else.24
  %39 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %mul29 = mul i64 16, %39
  store i64 %mul29, i64* %alloc_size, align 8
  br label %if.end.33

if.else.30:                                       ; preds = %if.else.24
  %40 = load i64, i64* %entry_size, align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %add31 = add i64 %40, %41
  %sub32 = sub i64 %add31, 1
  store i64 %sub32, i64* %alloc_size, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.28
  %42 = load i64, i64* %alloc_size, align 8
  %call = call noalias i8* @xmalloc(i64 %42)
  store i8* %call, i8** %allocation, align 8
  %43 = load i8*, i8** %allocation, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %add34 = add i64 %44, %45
  %sub35 = sub i64 %add34, 1
  %46 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %sub36 = sub i64 0, %46
  %and = and i64 %sub35, %sub36
  %47 = inttoptr i64 %and to i8*
  store i8* %47, i8** %page, align 8
  %48 = load i8*, i8** %page, align 8
  %49 = load i8*, i8** %allocation, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %49 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %head_slop, align 8
  %50 = load i32, i32* %multiple_pages, align 4
  %tobool37 = icmp ne i32 %50, 0
  br i1 %tobool37, label %if.then.38, label %if.else.42

if.then.38:                                       ; preds = %if.end.33
  %51 = load i8*, i8** %allocation, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load i64, i64* %alloc_size, align 8
  %add39 = add i64 %52, %53
  %54 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %sub40 = sub i64 %54, 1
  %and41 = and i64 %add39, %sub40
  store i64 %and41, i64* %tail_slop, align 8
  br label %if.end.45

if.else.42:                                       ; preds = %if.end.33
  %55 = load i64, i64* %alloc_size, align 8
  %56 = load i64, i64* %entry_size, align 8
  %sub43 = sub i64 %55, %56
  %57 = load i64, i64* %head_slop, align 8
  %sub44 = sub i64 %sub43, %57
  store i64 %sub44, i64* %tail_slop, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.38
  %58 = load i8*, i8** %allocation, align 8
  %59 = load i64, i64* %alloc_size, align 8
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 %59
  %60 = load i64, i64* %tail_slop, align 8
  %idx.neg = sub i64 0, %60
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  store i8* %add.ptr46, i8** %enda, align 8
  %61 = load i64, i64* %head_slop, align 8
  %cmp47 = icmp uge i64 %61, 32
  br i1 %cmp47, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.end.45
  %62 = load i8*, i8** %page, align 8
  %63 = bitcast i8* %62 to %struct.page_group*
  %add.ptr50 = getelementptr inbounds %struct.page_group, %struct.page_group* %63, i64 -1
  store %struct.page_group* %add.ptr50, %struct.page_group** %group, align 8
  br label %if.end.64

if.else.51:                                       ; preds = %if.end.45
  %64 = load i64, i64* %tail_slop, align 8
  %cmp52 = icmp eq i64 %64, 0
  br i1 %cmp52, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %if.else.51
  %65 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %66 = load i8*, i8** %enda, align 8
  %idx.neg55 = sub i64 0, %65
  %add.ptr56 = getelementptr inbounds i8, i8* %66, i64 %idx.neg55
  store i8* %add.ptr56, i8** %enda, align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %68 = load i64, i64* %tail_slop, align 8
  %add57 = add i64 %68, %67
  store i64 %add57, i64* %tail_slop, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.54, %if.else.51
  %69 = load i64, i64* %tail_slop, align 8
  %cmp59 = icmp ult i64 %69, 32
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.58
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 680, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.alloc_page, i32 0, i32 0)) #7
  unreachable

if.end.62:                                        ; preds = %if.end.58
  %70 = load i8*, i8** %enda, align 8
  %71 = bitcast i8* %70 to %struct.page_group*
  store %struct.page_group* %71, %struct.page_group** %group, align 8
  %72 = load i64, i64* %tail_slop, align 8
  %sub63 = sub i64 %72, 32
  store i64 %sub63, i64* %tail_slop, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.62, %if.then.49
  %73 = load %struct.page_group*, %struct.page_group** getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 10), align 8
  %74 = load %struct.page_group*, %struct.page_group** %group, align 8
  %next65 = getelementptr inbounds %struct.page_group, %struct.page_group* %74, i32 0, i32 0
  store %struct.page_group* %73, %struct.page_group** %next65, align 8
  %75 = load i8*, i8** %allocation, align 8
  %76 = load %struct.page_group*, %struct.page_group** %group, align 8
  %allocation66 = getelementptr inbounds %struct.page_group, %struct.page_group* %76, i32 0, i32 1
  store i8* %75, i8** %allocation66, align 8
  %77 = load i64, i64* %alloc_size, align 8
  %78 = load %struct.page_group*, %struct.page_group** %group, align 8
  %alloc_size67 = getelementptr inbounds %struct.page_group, %struct.page_group* %78, i32 0, i32 2
  store i64 %77, i64* %alloc_size67, align 8
  %79 = load %struct.page_group*, %struct.page_group** %group, align 8
  %in_use = getelementptr inbounds %struct.page_group, %struct.page_group* %79, i32 0, i32 3
  store i32 0, i32* %in_use, align 4
  %80 = load %struct.page_group*, %struct.page_group** %group, align 8
  store %struct.page_group* %80, %struct.page_group** getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 10), align 8
  %81 = load i64, i64* %alloc_size, align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 7), align 8
  %add68 = add i64 %82, %81
  store i64 %add68, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 7), align 8
  %83 = load i32, i32* %multiple_pages, align 4
  %tobool69 = icmp ne i32 %83, 0
  br i1 %tobool69, label %if.then.70, label %if.end.88

if.then.70:                                       ; preds = %if.end.64
  %84 = load %struct.page_entry*, %struct.page_entry** getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 9), align 8
  store %struct.page_entry* %84, %struct.page_entry** %f, align 8
  %85 = load i8*, i8** %enda, align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %idx.neg71 = sub i64 0, %86
  %add.ptr72 = getelementptr inbounds i8, i8* %85, i64 %idx.neg71
  store i8* %add.ptr72, i8** %a, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.84, %if.then.70
  %87 = load i8*, i8** %a, align 8
  %88 = load i8*, i8** %page, align 8
  %cmp74 = icmp ne i8* %87, %88
  br i1 %cmp74, label %for.body.76, label %for.end.87

for.body.76:                                      ; preds = %for.cond.73
  %89 = load i64, i64* %page_entry_size, align 8
  %call77 = call noalias i8* @xcalloc(i64 1, i64 %89)
  %90 = bitcast i8* %call77 to %struct.page_entry*
  store %struct.page_entry* %90, %struct.page_entry** %e, align 8
  %91 = load i32, i32* %order.addr, align 4
  %conv78 = trunc i32 %91 to i8
  %92 = load %struct.page_entry*, %struct.page_entry** %e, align 8
  %order79 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %92, i32 0, i32 8
  store i8 %conv78, i8* %order79, align 1
  %93 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %94 = load %struct.page_entry*, %struct.page_entry** %e, align 8
  %bytes80 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %94, i32 0, i32 1
  store i64 %93, i64* %bytes80, align 8
  %95 = load i8*, i8** %a, align 8
  %96 = load %struct.page_entry*, %struct.page_entry** %e, align 8
  %page81 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %96, i32 0, i32 2
  store i8* %95, i8** %page81, align 8
  %97 = load %struct.page_group*, %struct.page_group** %group, align 8
  %98 = load %struct.page_entry*, %struct.page_entry** %e, align 8
  %group82 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %98, i32 0, i32 3
  store %struct.page_group* %97, %struct.page_group** %group82, align 8
  %99 = load %struct.page_entry*, %struct.page_entry** %f, align 8
  %100 = load %struct.page_entry*, %struct.page_entry** %e, align 8
  %next83 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %100, i32 0, i32 0
  store %struct.page_entry* %99, %struct.page_entry** %next83, align 8
  %101 = load %struct.page_entry*, %struct.page_entry** %e, align 8
  store %struct.page_entry* %101, %struct.page_entry** %f, align 8
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.76
  %102 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %103 = load i8*, i8** %a, align 8
  %idx.neg85 = sub i64 0, %102
  %add.ptr86 = getelementptr inbounds i8, i8* %103, i64 %idx.neg85
  store i8* %add.ptr86, i8** %a, align 8
  br label %for.cond.73

for.end.87:                                       ; preds = %for.cond.73
  %104 = load %struct.page_entry*, %struct.page_entry** %f, align 8
  store %struct.page_entry* %104, %struct.page_entry** getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 9), align 8
  br label %if.end.88

if.end.88:                                        ; preds = %for.end.87, %if.end.64
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.23
  %105 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %cmp90 = icmp eq %struct.page_entry* %105, null
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.end.89
  %106 = load i64, i64* %page_entry_size, align 8
  %call93 = call noalias i8* @xcalloc(i64 1, i64 %106)
  %107 = bitcast i8* %call93 to %struct.page_entry*
  store %struct.page_entry* %107, %struct.page_entry** %entry1, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.end.89
  %108 = load i64, i64* %entry_size, align 8
  %109 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %bytes95 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %109, i32 0, i32 1
  store i64 %108, i64* %bytes95, align 8
  %110 = load i8*, i8** %page, align 8
  %111 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %page96 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %111, i32 0, i32 2
  store i8* %110, i8** %page96, align 8
  %112 = load i16, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 8), align 2
  %113 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %context_depth = getelementptr inbounds %struct.page_entry, %struct.page_entry* %113, i32 0, i32 5
  store i16 %112, i16* %context_depth, align 2
  %114 = load i32, i32* %order.addr, align 4
  %conv97 = trunc i32 %114 to i8
  %115 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %order98 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %115, i32 0, i32 8
  store i8 %conv97, i8* %order98, align 1
  %116 = load i64, i64* %num_objects, align 8
  %conv99 = trunc i64 %116 to i16
  %117 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %117, i32 0, i32 6
  store i16 %conv99, i16* %num_free_objects, align 2
  %118 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %next_bit_hint = getelementptr inbounds %struct.page_entry, %struct.page_entry* %118, i32 0, i32 7
  store i16 1, i16* %next_bit_hint, align 2
  %119 = load %struct.page_group*, %struct.page_group** %group, align 8
  %120 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %group100 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %120, i32 0, i32 3
  store %struct.page_group* %119, %struct.page_group** %group100, align 8
  %121 = load %struct.page_group*, %struct.page_group** %group, align 8
  %122 = load i8*, i8** %page, align 8
  call void @set_page_group_in_use(%struct.page_group* %121, i8* %122)
  %123 = load i64, i64* %num_objects, align 8
  %rem = urem i64 %123, 64
  %shl = shl i64 1, %rem
  %124 = load i64, i64* %num_objects, align 8
  %div101 = udiv i64 %124, 64
  %125 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %in_use_p = getelementptr inbounds %struct.page_entry, %struct.page_entry* %125, i32 0, i32 9
  %arrayidx102 = getelementptr inbounds [1 x i64], [1 x i64]* %in_use_p, i32 0, i64 %div101
  store i64 %shl, i64* %arrayidx102, align 8
  %126 = load i8*, i8** %page, align 8
  %127 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  call void @set_page_table_entry(i8* %126, %struct.page_entry* %127)
  %128 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  ret %struct.page_entry* %128
}

; Function Attrs: nounwind uwtable
define i32 @ggc_set_mark(i8* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %entry1 = alloca %struct.page_entry*, align 8
  %bit = alloca i32, align 4
  %word = alloca i32, align 4
  %mask = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call %struct.page_entry* @lookup_page_table_entry(i8* %0)
  store %struct.page_entry* %call, %struct.page_entry** %entry1, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %page = getelementptr inbounds %struct.page_entry, %struct.page_entry* %2, i32 0, i32 2
  %3 = load i8*, i8** %page, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %order = getelementptr inbounds %struct.page_entry, %struct.page_entry* %4, i32 0, i32 8
  %5 = load i8, i8* %order, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds [66 x i64], [66 x i64]* @object_size_table, i32 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %div = udiv i64 %sub.ptr.sub, %6
  %conv = trunc i64 %div to i32
  store i32 %conv, i32* %bit, align 4
  %7 = load i32, i32* %bit, align 4
  %div2 = udiv i32 %7, 64
  store i32 %div2, i32* %word, align 4
  %8 = load i32, i32* %bit, align 4
  %rem = urem i32 %8, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask, align 8
  %9 = load i32, i32* %word, align 4
  %idxprom3 = zext i32 %9 to i64
  %10 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %in_use_p = getelementptr inbounds %struct.page_entry, %struct.page_entry* %10, i32 0, i32 9
  %arrayidx4 = getelementptr inbounds [1 x i64], [1 x i64]* %in_use_p, i32 0, i64 %idxprom3
  %11 = load i64, i64* %arrayidx4, align 8
  %12 = load i64, i64* %mask, align 8
  %and = and i64 %11, %12
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i64, i64* %mask, align 8
  %14 = load i32, i32* %word, align 4
  %idxprom5 = zext i32 %14 to i64
  %15 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %in_use_p6 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %15, i32 0, i32 9
  %arrayidx7 = getelementptr inbounds [1 x i64], [1 x i64]* %in_use_p6, i32 0, i64 %idxprom5
  %16 = load i64, i64* %arrayidx7, align 8
  %or = or i64 %16, %13
  store i64 %or, i64* %arrayidx7, align 8
  %17 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %17, i32 0, i32 6
  %18 = load i16, i16* %num_free_objects, align 2
  %conv8 = zext i16 %18 to i32
  %sub = sub nsw i32 %conv8, 1
  %conv9 = trunc i32 %sub to i16
  store i16 %conv9, i16* %num_free_objects, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.page_entry* @lookup_page_table_entry(i8* %p) #2 {
entry:
  %p.addr = alloca i8*, align 8
  %base = alloca %struct.page_entry***, align 8
  %L1 = alloca i64, align 8
  %L2 = alloca i64, align 8
  %table = alloca %struct.page_table_chain*, align 8
  %high_bits = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load %struct.page_table_chain*, %struct.page_table_chain** getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 2), align 8
  store %struct.page_table_chain* %0, %struct.page_table_chain** %table, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4294967296
  store i64 %and, i64* %high_bits, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.page_table_chain*, %struct.page_table_chain** %table, align 8
  %high_bits1 = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %3, i32 0, i32 1
  %4 = load i64, i64* %high_bits1, align 8
  %5 = load i64, i64* %high_bits, align 8
  %cmp = icmp ne i64 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.page_table_chain*, %struct.page_table_chain** %table, align 8
  %next = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %6, i32 0, i32 0
  %7 = load %struct.page_table_chain*, %struct.page_table_chain** %next, align 8
  store %struct.page_table_chain* %7, %struct.page_table_chain** %table, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct.page_table_chain*, %struct.page_table_chain** %table, align 8
  %table2 = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [256 x %struct.page_entry**], [256 x %struct.page_entry**]* %table2, i32 0, i64 0
  store %struct.page_entry*** %arrayidx, %struct.page_entry**** %base, align 8
  %9 = load i8*, i8** %p.addr, align 8
  %10 = ptrtoint i8* %9 to i64
  %shr = lshr i64 %10, 24
  %and3 = and i64 %shr, 255
  store i64 %and3, i64* %L1, align 8
  %11 = load i8*, i8** %p.addr, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 4), align 8
  %shr4 = lshr i64 %12, %13
  %14 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 4), align 8
  %sub = sub i64 24, %14
  %sh_prom = trunc i64 %sub to i32
  %shl = shl i32 1, %sh_prom
  %sub5 = sub nsw i32 %shl, 1
  %conv = sext i32 %sub5 to i64
  %and6 = and i64 %shr4, %conv
  store i64 %and6, i64* %L2, align 8
  %15 = load i64, i64* %L2, align 8
  %16 = load i64, i64* %L1, align 8
  %17 = load %struct.page_entry***, %struct.page_entry**** %base, align 8
  %arrayidx7 = getelementptr inbounds %struct.page_entry**, %struct.page_entry*** %17, i64 %16
  %18 = load %struct.page_entry**, %struct.page_entry*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds %struct.page_entry*, %struct.page_entry** %18, i64 %15
  %19 = load %struct.page_entry*, %struct.page_entry** %arrayidx8, align 8
  ret %struct.page_entry* %19
}

; Function Attrs: nounwind uwtable
define i32 @ggc_marked_p(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %entry1 = alloca %struct.page_entry*, align 8
  %bit = alloca i32, align 4
  %word = alloca i32, align 4
  %mask = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call %struct.page_entry* @lookup_page_table_entry(i8* %0)
  store %struct.page_entry* %call, %struct.page_entry** %entry1, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %page = getelementptr inbounds %struct.page_entry, %struct.page_entry* %2, i32 0, i32 2
  %3 = load i8*, i8** %page, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %order = getelementptr inbounds %struct.page_entry, %struct.page_entry* %4, i32 0, i32 8
  %5 = load i8, i8* %order, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds [66 x i64], [66 x i64]* @object_size_table, i32 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %div = udiv i64 %sub.ptr.sub, %6
  %conv = trunc i64 %div to i32
  store i32 %conv, i32* %bit, align 4
  %7 = load i32, i32* %bit, align 4
  %div2 = udiv i32 %7, 64
  store i32 %div2, i32* %word, align 4
  %8 = load i32, i32* %bit, align 4
  %rem = urem i32 %8, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask, align 8
  %9 = load i32, i32* %word, align 4
  %idxprom3 = zext i32 %9 to i64
  %10 = load %struct.page_entry*, %struct.page_entry** %entry1, align 8
  %in_use_p = getelementptr inbounds %struct.page_entry, %struct.page_entry* %10, i32 0, i32 9
  %arrayidx4 = getelementptr inbounds [1 x i64], [1 x i64]* %in_use_p, i32 0, i64 %idxprom3
  %11 = load i64, i64* %arrayidx4, align 8
  %12 = load i64, i64* %mask, align 8
  %and = and i64 %11, %12
  %cmp = icmp ne i64 %and, 0
  %conv5 = zext i1 %cmp to i32
  ret i32 %conv5
}

; Function Attrs: nounwind uwtable
define i64 @ggc_get_size(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pe = alloca %struct.page_entry*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %call = call %struct.page_entry* @lookup_page_table_entry(i8* %0)
  store %struct.page_entry* %call, %struct.page_entry** %pe, align 8
  %1 = load %struct.page_entry*, %struct.page_entry** %pe, align 8
  %order = getelementptr inbounds %struct.page_entry, %struct.page_entry* %1, i32 0, i32 8
  %2 = load i8, i8* %order, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [66 x i64], [66 x i64]* @object_size_table, i32 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define void @init_ggc() #0 {
entry:
  %order = alloca i32, align 4
  %s = alloca i64, align 8
  %o = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 @getpagesize() #8
  %conv = sext i32 %call to i64
  store i64 %conv, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %call1 = call i32 @exact_log2_wide(i64 %0)
  %conv2 = sext i32 %call1 to i64
  store i64 %conv2, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 4), align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 11), align 8
  store i64 4194304, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 6), align 8
  store i32 0, i32* %order, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %order, align 4
  %cmp = icmp ult i32 %2, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %order, align 4
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 1, %sh_prom
  %4 = load i32, i32* %order, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [66 x i64], [66 x i64]* @object_size_table, i32 0, i64 %idxprom
  store i64 %shl, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %order, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %order, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 64, i32* %order, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.14, %for.end
  %6 = load i32, i32* %order, align 4
  %conv5 = zext i32 %6 to i64
  %cmp6 = icmp ult i64 %conv5, 66
  br i1 %cmp6, label %for.body.8, label %for.end.16

for.body.8:                                       ; preds = %for.cond.4
  %7 = load i32, i32* %order, align 4
  %sub = sub i32 %7, 64
  %idxprom9 = zext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds [2 x i64], [2 x i64]* @extra_order_size_table, i32 0, i64 %idxprom9
  %8 = load i64, i64* %arrayidx10, align 8
  store i64 %8, i64* %s, align 8
  %9 = load i64, i64* %s, align 8
  %add = add i64 %9, 16
  %sub11 = sub i64 %add, 1
  %div = udiv i64 %sub11, 16
  %mul = mul i64 %div, 16
  store i64 %mul, i64* %s, align 8
  %10 = load i64, i64* %s, align 8
  %11 = load i32, i32* %order, align 4
  %idxprom12 = zext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [66 x i64], [66 x i64]* @object_size_table, i32 0, i64 %idxprom12
  store i64 %10, i64* %arrayidx13, align 8
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.8
  %12 = load i32, i32* %order, align 4
  %inc15 = add i32 %12, 1
  store i32 %inc15, i32* %order, align 4
  br label %for.cond.4

for.end.16:                                       ; preds = %for.cond.4
  store i32 0, i32* %order, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.34, %for.end.16
  %13 = load i32, i32* %order, align 4
  %conv18 = zext i32 %13 to i64
  %cmp19 = icmp ult i64 %conv18, 66
  br i1 %cmp19, label %for.body.21, label %for.end.36

for.body.21:                                      ; preds = %for.cond.17
  %14 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 3), align 8
  %15 = load i32, i32* %order, align 4
  %idxprom22 = zext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [66 x i64], [66 x i64]* @object_size_table, i32 0, i64 %idxprom22
  %16 = load i64, i64* %arrayidx23, align 8
  %div24 = udiv i64 %14, %16
  %conv25 = trunc i64 %div24 to i32
  %17 = load i32, i32* %order, align 4
  %idxprom26 = zext i32 %17 to i64
  %arrayidx27 = getelementptr inbounds [66 x i32], [66 x i32]* @objects_per_page_table, i32 0, i64 %idxprom26
  store i32 %conv25, i32* %arrayidx27, align 4
  %18 = load i32, i32* %order, align 4
  %idxprom28 = zext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [66 x i32], [66 x i32]* @objects_per_page_table, i32 0, i64 %idxprom28
  %19 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp eq i32 %19, 0
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.21
  %20 = load i32, i32* %order, align 4
  %idxprom32 = zext i32 %20 to i64
  %arrayidx33 = getelementptr inbounds [66 x i32], [66 x i32]* @objects_per_page_table, i32 0, i64 %idxprom32
  store i32 1, i32* %arrayidx33, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.21
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end
  %21 = load i32, i32* %order, align 4
  %inc35 = add i32 %21, 1
  store i32 %inc35, i32* %order, align 4
  br label %for.cond.17

for.end.36:                                       ; preds = %for.cond.17
  store i32 64, i32* %order, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.61, %for.end.36
  %22 = load i32, i32* %order, align 4
  %conv38 = zext i32 %22 to i64
  %cmp39 = icmp ult i64 %conv38, 66
  br i1 %cmp39, label %for.body.41, label %for.end.63

for.body.41:                                      ; preds = %for.cond.37
  %23 = load i32, i32* %order, align 4
  %idxprom42 = zext i32 %23 to i64
  %arrayidx43 = getelementptr inbounds [66 x i64], [66 x i64]* @object_size_table, i32 0, i64 %idxprom42
  %24 = load i64, i64* %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds [257 x i8], [257 x i8]* @size_lookup, i32 0, i64 %24
  %25 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %25 to i32
  store i32 %conv45, i32* %o, align 4
  %26 = load i32, i32* %order, align 4
  %idxprom46 = zext i32 %26 to i64
  %arrayidx47 = getelementptr inbounds [66 x i64], [66 x i64]* @object_size_table, i32 0, i64 %idxprom46
  %27 = load i64, i64* %arrayidx47, align 8
  %conv48 = trunc i64 %27 to i32
  store i32 %conv48, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.59, %for.body.41
  %28 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %28 to i64
  %arrayidx51 = getelementptr inbounds [257 x i8], [257 x i8]* @size_lookup, i32 0, i64 %idxprom50
  %29 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %29 to i32
  %30 = load i32, i32* %o, align 4
  %cmp53 = icmp eq i32 %conv52, %30
  br i1 %cmp53, label %for.body.55, label %for.end.60

for.body.55:                                      ; preds = %for.cond.49
  %31 = load i32, i32* %order, align 4
  %conv56 = trunc i32 %31 to i8
  %32 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %32 to i64
  %arrayidx58 = getelementptr inbounds [257 x i8], [257 x i8]* @size_lookup, i32 0, i64 %idxprom57
  store i8 %conv56, i8* %arrayidx58, align 1
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.55
  %33 = load i32, i32* %i, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.49

for.end.60:                                       ; preds = %for.cond.49
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.end.60
  %34 = load i32, i32* %order, align 4
  %inc62 = add i32 %34, 1
  store i32 %inc62, i32* %order, align 4
  br label %for.cond.37

for.end.63:                                       ; preds = %for.cond.37
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @getpagesize() #3

declare i32 @exact_log2_wide(i64) #1

; Function Attrs: nounwind uwtable
define void @ggc_push_context() #0 {
entry:
  %0 = load i16, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 8), align 2
  %inc = add i16 %0, 1
  store i16 %inc, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 8), align 2
  %1 = load i16, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 8), align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 1156, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.ggc_push_context, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define void @ggc_pop_context() #0 {
entry:
  %order = alloca i32, align 4
  %depth = alloca i32, align 4
  %p = alloca %struct.page_entry*, align 8
  %0 = load i16, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 8), align 2
  %dec = add i16 %0, -1
  store i16 %dec, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 8), align 2
  %conv = zext i16 %dec to i32
  store i32 %conv, i32* %depth, align 4
  store i32 2, i32* %order, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %1 = load i32, i32* %order, align 4
  %conv1 = zext i32 %1 to i64
  %cmp = icmp ult i64 %conv1, 66
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %order, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 0), i32 0, i64 %idxprom
  %3 = load %struct.page_entry*, %struct.page_entry** %arrayidx, align 8
  store %struct.page_entry* %3, %struct.page_entry** %p, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %4 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %cmp4 = icmp ne %struct.page_entry* %4, null
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %5 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %context_depth = getelementptr inbounds %struct.page_entry, %struct.page_entry* %5, i32 0, i32 5
  %6 = load i16, i16* %context_depth, align 2
  %conv7 = zext i16 %6 to i32
  %7 = load i32, i32* %depth, align 4
  %cmp8 = icmp ugt i32 %conv7, %7
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.6
  %8 = load i32, i32* %depth, align 4
  %conv10 = trunc i32 %8 to i16
  %9 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %context_depth11 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %9, i32 0, i32 5
  store i16 %conv10, i16* %context_depth11, align 2
  br label %if.end.19

if.else:                                          ; preds = %for.body.6
  %10 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %context_depth12 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %10, i32 0, i32 5
  %11 = load i16, i16* %context_depth12, align 2
  %conv13 = zext i16 %11 to i32
  %12 = load i32, i32* %depth, align 4
  %cmp14 = icmp eq i32 %conv13, %12
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %13 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %save_in_use_p = getelementptr inbounds %struct.page_entry, %struct.page_entry* %13, i32 0, i32 4
  %14 = load i64*, i64** %save_in_use_p, align 8
  %tobool = icmp ne i64* %14, null
  br i1 %tobool, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %land.lhs.true
  %15 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  call void @ggc_recalculate_in_use_p(%struct.page_entry* %15)
  %16 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %save_in_use_p17 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %16, i32 0, i32 4
  %17 = load i64*, i64** %save_in_use_p17, align 8
  %18 = bitcast i64* %17 to i8*
  call void @free(i8* %18) #6
  %19 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %save_in_use_p18 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %19, i32 0, i32 4
  store i64* null, i64** %save_in_use_p18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.16, %land.lhs.true, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %20 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %20, i32 0, i32 0
  %21 = load %struct.page_entry*, %struct.page_entry** %next, align 8
  store %struct.page_entry* %21, %struct.page_entry** %p, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %22 = load i32, i32* %order, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %order, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ggc_recalculate_in_use_p(%struct.page_entry* %p) #0 {
entry:
  %p.addr = alloca %struct.page_entry*, align 8
  %i = alloca i32, align 4
  %num_objects = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.page_entry* %p, %struct.page_entry** %p.addr, align 8
  %0 = load %struct.page_entry*, %struct.page_entry** %p.addr, align 8
  %order = getelementptr inbounds %struct.page_entry, %struct.page_entry* %0, i32 0, i32 8
  %1 = load i8, i8* %order, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds [66 x i32], [66 x i32]* @objects_per_page_table, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %add = add i32 %2, 1
  %conv = zext i32 %add to i64
  store i64 %conv, i64* %num_objects, align 8
  %3 = load i64, i64* %num_objects, align 8
  %conv1 = trunc i64 %3 to i16
  %4 = load %struct.page_entry*, %struct.page_entry** %p.addr, align 8
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %4, i32 0, i32 6
  store i16 %conv1, i16* %num_free_objects, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %5 = load i32, i32* %i, align 4
  %conv2 = zext i32 %5 to i64
  %6 = load i64, i64* %num_objects, align 8
  %add3 = add i64 %6, 64
  %sub = sub i64 %add3, 1
  %div = udiv i64 %sub, 64
  %mul = mul i64 %div, 8
  %add4 = add i64 %mul, 8
  %sub5 = sub i64 %add4, 1
  %div6 = udiv i64 %sub5, 8
  %cmp = icmp ult i64 %conv2, %div6
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %7 to i64
  %8 = load %struct.page_entry*, %struct.page_entry** %p.addr, align 8
  %save_in_use_p = getelementptr inbounds %struct.page_entry, %struct.page_entry* %8, i32 0, i32 4
  %9 = load i64*, i64** %save_in_use_p, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %9, i64 %idxprom8
  %10 = load i64, i64* %arrayidx9, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %11 to i64
  %12 = load %struct.page_entry*, %struct.page_entry** %p.addr, align 8
  %in_use_p = getelementptr inbounds %struct.page_entry, %struct.page_entry* %12, i32 0, i32 9
  %arrayidx11 = getelementptr inbounds [1 x i64], [1 x i64]* %in_use_p, i32 0, i64 %idxprom10
  %13 = load i64, i64* %arrayidx11, align 8
  %or = or i64 %13, %10
  store i64 %or, i64* %arrayidx11, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %14 to i64
  %15 = load %struct.page_entry*, %struct.page_entry** %p.addr, align 8
  %in_use_p13 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %15, i32 0, i32 9
  %arrayidx14 = getelementptr inbounds [1 x i64], [1 x i64]* %in_use_p13, i32 0, i64 %idxprom12
  %16 = load i64, i64* %arrayidx14, align 8
  store i64 %16, i64* %j, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body
  %17 = load i64, i64* %j, align 8
  %tobool = icmp ne i64 %17, 0
  br i1 %tobool, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.15
  %18 = load i64, i64* %j, align 8
  %and = and i64 %18, 1
  %19 = load %struct.page_entry*, %struct.page_entry** %p.addr, align 8
  %num_free_objects17 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %19, i32 0, i32 6
  %20 = load i16, i16* %num_free_objects17, align 2
  %conv18 = zext i16 %20 to i64
  %sub19 = sub i64 %conv18, %and
  %conv20 = trunc i64 %sub19 to i16
  store i16 %conv20, i16* %num_free_objects17, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %21 = load i64, i64* %j, align 8
  %shr = lshr i64 %21, 1
  store i64 %shr, i64* %j, align 8
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %23 = load %struct.page_entry*, %struct.page_entry** %p.addr, align 8
  %num_free_objects23 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %23, i32 0, i32 6
  %24 = load i16, i16* %num_free_objects23, align 2
  %conv24 = zext i16 %24 to i64
  %25 = load i64, i64* %num_objects, align 8
  %cmp25 = icmp uge i64 %conv24, %25
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.22
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 1194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.ggc_recalculate_in_use_p, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %for.end.22
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define void @ggc_collect() #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 5), align 8
  %conv = uitofp i64 %0 to double
  %1 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 6), align 8
  %conv1 = uitofp i64 %1 to double
  %mul = fmul double 1.300000e+00, %conv1
  %cmp = fcmp olt double %conv, %mul
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.13

if.end:                                           ; preds = %entry
  call void @timevar_push(i32 1)
  %2 = load i32, i32* @quiet_flag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 5), align 8
  %div = udiv i64 %4, 1024
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64 %div)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  store i64 0, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 5), align 8
  call void @release_pages()
  call void @clear_marks()
  call void @ggc_mark_roots()
  call void @sweep_pages()
  %5 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 5), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 6), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 6), align 8
  %cmp5 = icmp ult i64 %6, 4194304
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i64 4194304, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 6), align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  call void @timevar_pop(i32 1)
  %7 = load i32, i32* @quiet_flag, align 4
  %tobool9 = icmp ne i32 %7, 0
  br i1 %tobool9, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 5), align 8
  %div11 = udiv i64 %9, 1024
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i64 %div11)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then, %if.then.10, %if.end.8
  ret void
}

declare void @timevar_push(i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @release_pages() #0 {
entry:
  %pp = alloca %struct.page_entry**, align 8
  %p = alloca %struct.page_entry*, align 8
  %gp = alloca %struct.page_group**, align 8
  %g = alloca %struct.page_group*, align 8
  store %struct.page_entry** getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 9), %struct.page_entry*** %pp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.page_entry**, %struct.page_entry*** %pp, align 8
  %1 = load %struct.page_entry*, %struct.page_entry** %0, align 8
  store %struct.page_entry* %1, %struct.page_entry** %p, align 8
  %cmp = icmp ne %struct.page_entry* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %group = getelementptr inbounds %struct.page_entry, %struct.page_entry* %2, i32 0, i32 3
  %3 = load %struct.page_group*, %struct.page_group** %group, align 8
  %in_use = getelementptr inbounds %struct.page_group, %struct.page_group* %3, i32 0, i32 3
  %4 = load i32, i32* %in_use, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %5, i32 0, i32 0
  %6 = load %struct.page_entry*, %struct.page_entry** %next, align 8
  %7 = load %struct.page_entry**, %struct.page_entry*** %pp, align 8
  store %struct.page_entry* %6, %struct.page_entry** %7, align 8
  %8 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %9 = bitcast %struct.page_entry* %8 to i8*
  call void @free(i8* %9) #6
  br label %if.end

if.else:                                          ; preds = %while.body
  %10 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %next2 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %10, i32 0, i32 0
  store %struct.page_entry** %next2, %struct.page_entry*** %pp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.page_group** getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 10), %struct.page_group*** %gp, align 8
  br label %while.cond.3

while.cond.3:                                     ; preds = %if.end.12, %while.end
  %11 = load %struct.page_group**, %struct.page_group*** %gp, align 8
  %12 = load %struct.page_group*, %struct.page_group** %11, align 8
  store %struct.page_group* %12, %struct.page_group** %g, align 8
  %cmp4 = icmp ne %struct.page_group* %12, null
  br i1 %cmp4, label %while.body.5, label %while.end.13

while.body.5:                                     ; preds = %while.cond.3
  %13 = load %struct.page_group*, %struct.page_group** %g, align 8
  %in_use6 = getelementptr inbounds %struct.page_group, %struct.page_group* %13, i32 0, i32 3
  %14 = load i32, i32* %in_use6, align 4
  %cmp7 = icmp eq i32 %14, 0
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %while.body.5
  %15 = load %struct.page_group*, %struct.page_group** %g, align 8
  %next9 = getelementptr inbounds %struct.page_group, %struct.page_group* %15, i32 0, i32 0
  %16 = load %struct.page_group*, %struct.page_group** %next9, align 8
  %17 = load %struct.page_group**, %struct.page_group*** %gp, align 8
  store %struct.page_group* %16, %struct.page_group** %17, align 8
  %18 = load %struct.page_group*, %struct.page_group** %g, align 8
  %alloc_size = getelementptr inbounds %struct.page_group, %struct.page_group* %18, i32 0, i32 2
  %19 = load i64, i64* %alloc_size, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 7), align 8
  %sub = sub i64 %20, %19
  store i64 %sub, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 7), align 8
  %21 = load %struct.page_group*, %struct.page_group** %g, align 8
  %allocation = getelementptr inbounds %struct.page_group, %struct.page_group* %21, i32 0, i32 1
  %22 = load i8*, i8** %allocation, align 8
  call void @free(i8* %22) #6
  br label %if.end.12

if.else.10:                                       ; preds = %while.body.5
  %23 = load %struct.page_group*, %struct.page_group** %g, align 8
  %next11 = getelementptr inbounds %struct.page_group, %struct.page_group* %23, i32 0, i32 0
  store %struct.page_group** %next11, %struct.page_group*** %gp, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.8
  br label %while.cond.3

while.end.13:                                     ; preds = %while.cond.3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clear_marks() #2 {
entry:
  %order = alloca i32, align 4
  %num_objects = alloca i64, align 8
  %bitmap_size = alloca i64, align 8
  %p = alloca %struct.page_entry*, align 8
  store i32 2, i32* %order, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %0 = load i32, i32* %order, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 66
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %order, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [66 x i32], [66 x i32]* @objects_per_page_table, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %conv2 = zext i32 %2 to i64
  store i64 %conv2, i64* %num_objects, align 8
  %3 = load i64, i64* %num_objects, align 8
  %add = add i64 %3, 1
  %add3 = add i64 %add, 64
  %sub = sub i64 %add3, 1
  %div = udiv i64 %sub, 64
  %mul = mul i64 %div, 8
  store i64 %mul, i64* %bitmap_size, align 8
  %4 = load i32, i32* %order, align 4
  %idxprom4 = zext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 0), i32 0, i64 %idxprom4
  %5 = load %struct.page_entry*, %struct.page_entry** %arrayidx5, align 8
  store %struct.page_entry* %5, %struct.page_entry** %p, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %6 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %cmp7 = icmp ne %struct.page_entry* %6, null
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %7 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %context_depth = getelementptr inbounds %struct.page_entry, %struct.page_entry* %7, i32 0, i32 5
  %8 = load i16, i16* %context_depth, align 2
  %conv10 = zext i16 %8 to i32
  %9 = load i16, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 8), align 2
  %conv11 = zext i16 %9 to i32
  %cmp12 = icmp slt i32 %conv10, %conv11
  br i1 %cmp12, label %if.then, label %if.end.17

if.then:                                          ; preds = %for.body.9
  %10 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %save_in_use_p = getelementptr inbounds %struct.page_entry, %struct.page_entry* %10, i32 0, i32 4
  %11 = load i64*, i64** %save_in_use_p, align 8
  %tobool = icmp ne i64* %11, null
  br i1 %tobool, label %if.end, label %if.then.14

if.then.14:                                       ; preds = %if.then
  %12 = load i64, i64* %bitmap_size, align 8
  %call = call noalias i8* @xmalloc(i64 %12)
  %13 = bitcast i8* %call to i64*
  %14 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %save_in_use_p15 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %14, i32 0, i32 4
  store i64* %13, i64** %save_in_use_p15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then
  %15 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %save_in_use_p16 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %15, i32 0, i32 4
  %16 = load i64*, i64** %save_in_use_p16, align 8
  %17 = bitcast i64* %16 to i8*
  %18 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %in_use_p = getelementptr inbounds %struct.page_entry, %struct.page_entry* %18, i32 0, i32 9
  %19 = bitcast [1 x i64]* %in_use_p to i8*
  %20 = load i64, i64* %bitmap_size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %19, i64 %20, i32 8, i1 false)
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %for.body.9
  %21 = load i64, i64* %num_objects, align 8
  %conv18 = trunc i64 %21 to i16
  %22 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %22, i32 0, i32 6
  store i16 %conv18, i16* %num_free_objects, align 2
  %23 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %in_use_p19 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %23, i32 0, i32 9
  %24 = bitcast [1 x i64]* %in_use_p19 to i8*
  %25 = load i64, i64* %bitmap_size, align 8
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 %25, i32 8, i1 false)
  %26 = load i64, i64* %num_objects, align 8
  %rem = urem i64 %26, 64
  %shl = shl i64 1, %rem
  %27 = load i64, i64* %num_objects, align 8
  %div20 = udiv i64 %27, 64
  %28 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %in_use_p21 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %28, i32 0, i32 9
  %arrayidx22 = getelementptr inbounds [1 x i64], [1 x i64]* %in_use_p21, i32 0, i64 %div20
  store i64 %shl, i64* %arrayidx22, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %29 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %29, i32 0, i32 0
  %30 = load %struct.page_entry*, %struct.page_entry** %next, align 8
  store %struct.page_entry* %30, %struct.page_entry** %p, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %31 = load i32, i32* %order, align 4
  %inc = add i32 %31, 1
  store i32 %inc, i32* %order, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  ret void
}

declare void @ggc_mark_roots() #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @sweep_pages() #2 {
entry:
  %order = alloca i32, align 4
  %last = alloca %struct.page_entry*, align 8
  %num_objects = alloca i64, align 8
  %live_objects = alloca i64, align 8
  %p = alloca %struct.page_entry*, align 8
  %previous = alloca %struct.page_entry*, align 8
  %done = alloca i32, align 4
  %next = alloca %struct.page_entry*, align 8
  store i32 2, i32* %order, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.101, %entry
  %0 = load i32, i32* %order, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 66
  br i1 %cmp, label %for.body, label %for.end.102

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %order, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 1), i32 0, i64 %idxprom
  %2 = load %struct.page_entry*, %struct.page_entry** %arrayidx, align 8
  store %struct.page_entry* %2, %struct.page_entry** %last, align 8
  %3 = load i32, i32* %order, align 4
  %idxprom2 = zext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [66 x i32], [66 x i32]* @objects_per_page_table, i32 0, i64 %idxprom2
  %4 = load i32, i32* %arrayidx3, align 4
  %conv4 = zext i32 %4 to i64
  store i64 %conv4, i64* %num_objects, align 8
  %5 = load i32, i32* %order, align 4
  %idxprom5 = zext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 0), i32 0, i64 %idxprom5
  %6 = load %struct.page_entry*, %struct.page_entry** %arrayidx6, align 8
  store %struct.page_entry* %6, %struct.page_entry** %p, align 8
  %7 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %cmp7 = icmp eq %struct.page_entry* %7, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.101

if.end:                                           ; preds = %for.body
  store %struct.page_entry* null, %struct.page_entry** %previous, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %8 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %next9 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %8, i32 0, i32 0
  %9 = load %struct.page_entry*, %struct.page_entry** %next9, align 8
  store %struct.page_entry* %9, %struct.page_entry** %next, align 8
  %10 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %11 = load %struct.page_entry*, %struct.page_entry** %last, align 8
  %cmp10 = icmp eq %struct.page_entry* %10, %11
  %conv11 = zext i1 %cmp10 to i32
  store i32 %conv11, i32* %done, align 4
  %12 = load i64, i64* %num_objects, align 8
  %13 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %num_free_objects = getelementptr inbounds %struct.page_entry, %struct.page_entry* %13, i32 0, i32 6
  %14 = load i16, i16* %num_free_objects, align 2
  %conv12 = zext i16 %14 to i64
  %sub = sub i64 %12, %conv12
  store i64 %sub, i64* %live_objects, align 8
  %15 = load i32, i32* %order, align 4
  %idxprom13 = zext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [66 x i64], [66 x i64]* @object_size_table, i32 0, i64 %idxprom13
  %16 = load i64, i64* %arrayidx14, align 8
  %17 = load i64, i64* %live_objects, align 8
  %mul = mul i64 %16, %17
  %18 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 5), align 8
  %add = add i64 %18, %mul
  store i64 %add, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 5), align 8
  %19 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %context_depth = getelementptr inbounds %struct.page_entry, %struct.page_entry* %19, i32 0, i32 5
  %20 = load i16, i16* %context_depth, align 2
  %conv15 = zext i16 %20 to i32
  %21 = load i16, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 8), align 2
  %conv16 = zext i16 %21 to i32
  %cmp17 = icmp slt i32 %conv15, %conv16
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body
  br label %if.end.86

if.else:                                          ; preds = %do.body
  %22 = load i64, i64* %live_objects, align 8
  %cmp20 = icmp eq i64 %22, 0
  br i1 %cmp20, label %if.then.22, label %if.else.37

if.then.22:                                       ; preds = %if.else
  %23 = load %struct.page_entry*, %struct.page_entry** %previous, align 8
  %tobool = icmp ne %struct.page_entry* %23, null
  br i1 %tobool, label %if.else.26, label %if.then.23

if.then.23:                                       ; preds = %if.then.22
  %24 = load %struct.page_entry*, %struct.page_entry** %next, align 8
  %25 = load i32, i32* %order, align 4
  %idxprom24 = zext i32 %25 to i64
  %arrayidx25 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 0), i32 0, i64 %idxprom24
  store %struct.page_entry* %24, %struct.page_entry** %arrayidx25, align 8
  br label %if.end.28

if.else.26:                                       ; preds = %if.then.22
  %26 = load %struct.page_entry*, %struct.page_entry** %next, align 8
  %27 = load %struct.page_entry*, %struct.page_entry** %previous, align 8
  %next27 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %27, i32 0, i32 0
  store %struct.page_entry* %26, %struct.page_entry** %next27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.23
  %28 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %29 = load i32, i32* %order, align 4
  %idxprom29 = zext i32 %29 to i64
  %arrayidx30 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 1), i32 0, i64 %idxprom29
  %30 = load %struct.page_entry*, %struct.page_entry** %arrayidx30, align 8
  %cmp31 = icmp eq %struct.page_entry* %28, %30
  br i1 %cmp31, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.28
  %31 = load %struct.page_entry*, %struct.page_entry** %previous, align 8
  %32 = load i32, i32* %order, align 4
  %idxprom34 = zext i32 %32 to i64
  %arrayidx35 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 1), i32 0, i64 %idxprom34
  store %struct.page_entry* %31, %struct.page_entry** %arrayidx35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.28
  %33 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  call void @free_page(%struct.page_entry* %33)
  %34 = load %struct.page_entry*, %struct.page_entry** %previous, align 8
  store %struct.page_entry* %34, %struct.page_entry** %p, align 8
  br label %if.end.85

if.else.37:                                       ; preds = %if.else
  %35 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %num_free_objects38 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %35, i32 0, i32 6
  %36 = load i16, i16* %num_free_objects38, align 2
  %conv39 = zext i16 %36 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %if.then.42, label %if.else.62

if.then.42:                                       ; preds = %if.else.37
  %37 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %38 = load i32, i32* %order, align 4
  %idxprom43 = zext i32 %38 to i64
  %arrayidx44 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 1), i32 0, i64 %idxprom43
  %39 = load %struct.page_entry*, %struct.page_entry** %arrayidx44, align 8
  %cmp45 = icmp ne %struct.page_entry* %37, %39
  br i1 %cmp45, label %if.then.47, label %if.end.61

if.then.47:                                       ; preds = %if.then.42
  %40 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %next48 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %40, i32 0, i32 0
  store %struct.page_entry* null, %struct.page_entry** %next48, align 8
  %41 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %42 = load i32, i32* %order, align 4
  %idxprom49 = zext i32 %42 to i64
  %arrayidx50 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 1), i32 0, i64 %idxprom49
  %43 = load %struct.page_entry*, %struct.page_entry** %arrayidx50, align 8
  %next51 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %43, i32 0, i32 0
  store %struct.page_entry* %41, %struct.page_entry** %next51, align 8
  %44 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %45 = load i32, i32* %order, align 4
  %idxprom52 = zext i32 %45 to i64
  %arrayidx53 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 1), i32 0, i64 %idxprom52
  store %struct.page_entry* %44, %struct.page_entry** %arrayidx53, align 8
  %46 = load %struct.page_entry*, %struct.page_entry** %previous, align 8
  %tobool54 = icmp ne %struct.page_entry* %46, null
  br i1 %tobool54, label %if.else.58, label %if.then.55

if.then.55:                                       ; preds = %if.then.47
  %47 = load %struct.page_entry*, %struct.page_entry** %next, align 8
  %48 = load i32, i32* %order, align 4
  %idxprom56 = zext i32 %48 to i64
  %arrayidx57 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 0), i32 0, i64 %idxprom56
  store %struct.page_entry* %47, %struct.page_entry** %arrayidx57, align 8
  br label %if.end.60

if.else.58:                                       ; preds = %if.then.47
  %49 = load %struct.page_entry*, %struct.page_entry** %next, align 8
  %50 = load %struct.page_entry*, %struct.page_entry** %previous, align 8
  %next59 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %50, i32 0, i32 0
  store %struct.page_entry* %49, %struct.page_entry** %next59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.55
  %51 = load %struct.page_entry*, %struct.page_entry** %previous, align 8
  store %struct.page_entry* %51, %struct.page_entry** %p, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.42
  br label %if.end.84

if.else.62:                                       ; preds = %if.else.37
  %52 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %53 = load i32, i32* %order, align 4
  %idxprom63 = zext i32 %53 to i64
  %arrayidx64 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 0), i32 0, i64 %idxprom63
  %54 = load %struct.page_entry*, %struct.page_entry** %arrayidx64, align 8
  %cmp65 = icmp ne %struct.page_entry* %52, %54
  br i1 %cmp65, label %if.then.67, label %if.end.83

if.then.67:                                       ; preds = %if.else.62
  %55 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %next68 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %55, i32 0, i32 0
  %56 = load %struct.page_entry*, %struct.page_entry** %next68, align 8
  %57 = load %struct.page_entry*, %struct.page_entry** %previous, align 8
  %next69 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %57, i32 0, i32 0
  store %struct.page_entry* %56, %struct.page_entry** %next69, align 8
  %58 = load i32, i32* %order, align 4
  %idxprom70 = zext i32 %58 to i64
  %arrayidx71 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 0), i32 0, i64 %idxprom70
  %59 = load %struct.page_entry*, %struct.page_entry** %arrayidx71, align 8
  %60 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %next72 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %60, i32 0, i32 0
  store %struct.page_entry* %59, %struct.page_entry** %next72, align 8
  %61 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %62 = load i32, i32* %order, align 4
  %idxprom73 = zext i32 %62 to i64
  %arrayidx74 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 0), i32 0, i64 %idxprom73
  store %struct.page_entry* %61, %struct.page_entry** %arrayidx74, align 8
  %63 = load i32, i32* %order, align 4
  %idxprom75 = zext i32 %63 to i64
  %arrayidx76 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 1), i32 0, i64 %idxprom75
  %64 = load %struct.page_entry*, %struct.page_entry** %arrayidx76, align 8
  %65 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %cmp77 = icmp eq %struct.page_entry* %64, %65
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %if.then.67
  %66 = load %struct.page_entry*, %struct.page_entry** %previous, align 8
  %67 = load i32, i32* %order, align 4
  %idxprom80 = zext i32 %67 to i64
  %arrayidx81 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 1), i32 0, i64 %idxprom80
  store %struct.page_entry* %66, %struct.page_entry** %arrayidx81, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %if.then.67
  %68 = load %struct.page_entry*, %struct.page_entry** %previous, align 8
  store %struct.page_entry* %68, %struct.page_entry** %p, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.else.62
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.61
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.36
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.19
  %69 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  store %struct.page_entry* %69, %struct.page_entry** %previous, align 8
  %70 = load %struct.page_entry*, %struct.page_entry** %next, align 8
  store %struct.page_entry* %70, %struct.page_entry** %p, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.86
  %71 = load i32, i32* %done, align 4
  %tobool87 = icmp ne i32 %71, 0
  %lnot = xor i1 %tobool87, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %72 = load i32, i32* %order, align 4
  %idxprom88 = zext i32 %72 to i64
  %arrayidx89 = getelementptr inbounds [66 x %struct.page_entry*], [66 x %struct.page_entry*]* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 0), i32 0, i64 %idxprom88
  %73 = load %struct.page_entry*, %struct.page_entry** %arrayidx89, align 8
  store %struct.page_entry* %73, %struct.page_entry** %p, align 8
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc, %do.end
  %74 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %tobool91 = icmp ne %struct.page_entry* %74, null
  br i1 %tobool91, label %for.body.92, label %for.end

for.body.92:                                      ; preds = %for.cond.90
  %75 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %context_depth93 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %75, i32 0, i32 5
  %76 = load i16, i16* %context_depth93, align 2
  %conv94 = zext i16 %76 to i32
  %77 = load i16, i16* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 8), align 2
  %conv95 = zext i16 %77 to i32
  %cmp96 = icmp ne i32 %conv94, %conv95
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %for.body.92
  %78 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  call void @ggc_recalculate_in_use_p(%struct.page_entry* %78)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %for.body.92
  br label %for.inc

for.inc:                                          ; preds = %if.end.99
  %79 = load %struct.page_entry*, %struct.page_entry** %p, align 8
  %next100 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %79, i32 0, i32 0
  %80 = load %struct.page_entry*, %struct.page_entry** %next100, align 8
  store %struct.page_entry* %80, %struct.page_entry** %p, align 8
  br label %for.cond.90

for.end:                                          ; preds = %for.cond.90
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.end, %if.then
  %81 = load i32, i32* %order, align 4
  %inc = add i32 %81, 1
  store i32 %inc, i32* %order, align 4
  br label %for.cond

for.end.102:                                      ; preds = %for.cond
  ret void
}

declare void @timevar_pop(i32) #1

; Function Attrs: nounwind uwtable
define void @ggc_print_statistics() #0 {
entry:
  %stats = alloca %struct.ggc_statistics, align 8
  %i = alloca i32, align 4
  %total_overhead = alloca i64, align 8
  store i64 0, i64* %total_overhead, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare noalias i8* @xmalloc(i64) #1

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @set_page_group_in_use(%struct.page_group* %group, i8* %page) #2 {
entry:
  %group.addr = alloca %struct.page_group*, align 8
  %page.addr = alloca i8*, align 8
  store %struct.page_group* %group, %struct.page_group** %group.addr, align 8
  store i8* %page, i8** %page.addr, align 8
  %0 = load %struct.page_group*, %struct.page_group** %group.addr, align 8
  %allocation = getelementptr inbounds %struct.page_group, %struct.page_group* %0, i32 0, i32 1
  %1 = load i8*, i8** %allocation, align 8
  %2 = load i8*, i8** %page.addr, align 8
  %call = call i64 @page_group_index(i8* %1, i8* %2)
  %sh_prom = trunc i64 %call to i32
  %shl = shl i32 1, %sh_prom
  %3 = load %struct.page_group*, %struct.page_group** %group.addr, align 8
  %in_use = getelementptr inbounds %struct.page_group, %struct.page_group* %3, i32 0, i32 3
  %4 = load i32, i32* %in_use, align 4
  %or = or i32 %4, %shl
  store i32 %or, i32* %in_use, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_page_table_entry(i8* %p, %struct.page_entry* %entry1) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %entry.addr = alloca %struct.page_entry*, align 8
  %base = alloca %struct.page_entry***, align 8
  %L1 = alloca i64, align 8
  %L2 = alloca i64, align 8
  %table = alloca %struct.page_table_chain*, align 8
  %high_bits = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store %struct.page_entry* %entry1, %struct.page_entry** %entry.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, -4294967296
  store i64 %and, i64* %high_bits, align 8
  %2 = load %struct.page_table_chain*, %struct.page_table_chain** getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 2), align 8
  store %struct.page_table_chain* %2, %struct.page_table_chain** %table, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.page_table_chain*, %struct.page_table_chain** %table, align 8
  %tobool = icmp ne %struct.page_table_chain* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.page_table_chain*, %struct.page_table_chain** %table, align 8
  %high_bits2 = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %4, i32 0, i32 1
  %5 = load i64, i64* %high_bits2, align 8
  %6 = load i64, i64* %high_bits, align 8
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %found

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.page_table_chain*, %struct.page_table_chain** %table, align 8
  %next = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %7, i32 0, i32 0
  %8 = load %struct.page_table_chain*, %struct.page_table_chain** %next, align 8
  store %struct.page_table_chain* %8, %struct.page_table_chain** %table, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call noalias i8* @xcalloc(i64 1, i64 2064)
  %9 = bitcast i8* %call to %struct.page_table_chain*
  store %struct.page_table_chain* %9, %struct.page_table_chain** %table, align 8
  %10 = load %struct.page_table_chain*, %struct.page_table_chain** getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 2), align 8
  %11 = load %struct.page_table_chain*, %struct.page_table_chain** %table, align 8
  %next3 = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %11, i32 0, i32 0
  store %struct.page_table_chain* %10, %struct.page_table_chain** %next3, align 8
  %12 = load i64, i64* %high_bits, align 8
  %13 = load %struct.page_table_chain*, %struct.page_table_chain** %table, align 8
  %high_bits4 = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %13, i32 0, i32 1
  store i64 %12, i64* %high_bits4, align 8
  %14 = load %struct.page_table_chain*, %struct.page_table_chain** %table, align 8
  store %struct.page_table_chain* %14, %struct.page_table_chain** getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 2), align 8
  br label %found

found:                                            ; preds = %for.end, %if.then
  %15 = load %struct.page_table_chain*, %struct.page_table_chain** %table, align 8
  %table5 = getelementptr inbounds %struct.page_table_chain, %struct.page_table_chain* %15, i32 0, i32 2
  %arrayidx = getelementptr inbounds [256 x %struct.page_entry**], [256 x %struct.page_entry**]* %table5, i32 0, i64 0
  store %struct.page_entry*** %arrayidx, %struct.page_entry**** %base, align 8
  %16 = load i8*, i8** %p.addr, align 8
  %17 = ptrtoint i8* %16 to i64
  %shr = lshr i64 %17, 24
  %and6 = and i64 %shr, 255
  store i64 %and6, i64* %L1, align 8
  %18 = load i8*, i8** %p.addr, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 4), align 8
  %shr7 = lshr i64 %19, %20
  %21 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 4), align 8
  %sub = sub i64 24, %21
  %sh_prom = trunc i64 %sub to i32
  %shl = shl i32 1, %sh_prom
  %sub8 = sub nsw i32 %shl, 1
  %conv = sext i32 %sub8 to i64
  %and9 = and i64 %shr7, %conv
  store i64 %and9, i64* %L2, align 8
  %22 = load i64, i64* %L1, align 8
  %23 = load %struct.page_entry***, %struct.page_entry**** %base, align 8
  %arrayidx10 = getelementptr inbounds %struct.page_entry**, %struct.page_entry*** %23, i64 %22
  %24 = load %struct.page_entry**, %struct.page_entry*** %arrayidx10, align 8
  %cmp11 = icmp eq %struct.page_entry** %24, null
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %found
  %25 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 4), align 8
  %sub14 = sub i64 24, %25
  %shl15 = shl i64 1, %sub14
  %call16 = call noalias i8* @xcalloc(i64 %shl15, i64 8)
  %26 = bitcast i8* %call16 to %struct.page_entry**
  %27 = load i64, i64* %L1, align 8
  %28 = load %struct.page_entry***, %struct.page_entry**** %base, align 8
  %arrayidx17 = getelementptr inbounds %struct.page_entry**, %struct.page_entry*** %28, i64 %27
  store %struct.page_entry** %26, %struct.page_entry*** %arrayidx17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %found
  %29 = load %struct.page_entry*, %struct.page_entry** %entry.addr, align 8
  %30 = load i64, i64* %L2, align 8
  %31 = load i64, i64* %L1, align 8
  %32 = load %struct.page_entry***, %struct.page_entry**** %base, align 8
  %arrayidx19 = getelementptr inbounds %struct.page_entry**, %struct.page_entry*** %32, i64 %31
  %33 = load %struct.page_entry**, %struct.page_entry*** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds %struct.page_entry*, %struct.page_entry** %33, i64 %30
  store %struct.page_entry* %29, %struct.page_entry** %arrayidx20, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @page_group_index(i8* %allocation, i8* %page) #2 {
entry:
  %allocation.addr = alloca i8*, align 8
  %page.addr = alloca i8*, align 8
  store i8* %allocation, i8** %allocation.addr, align 8
  store i8* %page, i8** %page.addr, align 8
  %0 = load i8*, i8** %page.addr, align 8
  %1 = load i8*, i8** %allocation.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %2 = load i64, i64* getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 4), align 8
  %shr = lshr i64 %sub.ptr.sub, %2
  ret i64 %shr
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @free_page(%struct.page_entry* %entry1) #2 {
entry:
  %entry.addr = alloca %struct.page_entry*, align 8
  store %struct.page_entry* %entry1, %struct.page_entry** %entry.addr, align 8
  %0 = load %struct.page_entry*, %struct.page_entry** %entry.addr, align 8
  %page = getelementptr inbounds %struct.page_entry, %struct.page_entry* %0, i32 0, i32 2
  %1 = load i8*, i8** %page, align 8
  call void @set_page_table_entry(i8* %1, %struct.page_entry* null)
  %2 = load %struct.page_entry*, %struct.page_entry** %entry.addr, align 8
  %group = getelementptr inbounds %struct.page_entry, %struct.page_entry* %2, i32 0, i32 3
  %3 = load %struct.page_group*, %struct.page_group** %group, align 8
  %4 = load %struct.page_entry*, %struct.page_entry** %entry.addr, align 8
  %page2 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %4, i32 0, i32 2
  %5 = load i8*, i8** %page2, align 8
  call void @clear_page_group_in_use(%struct.page_group* %3, i8* %5)
  %6 = load %struct.page_entry*, %struct.page_entry** getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 9), align 8
  %7 = load %struct.page_entry*, %struct.page_entry** %entry.addr, align 8
  %next = getelementptr inbounds %struct.page_entry, %struct.page_entry* %7, i32 0, i32 0
  store %struct.page_entry* %6, %struct.page_entry** %next, align 8
  %8 = load %struct.page_entry*, %struct.page_entry** %entry.addr, align 8
  store %struct.page_entry* %8, %struct.page_entry** getelementptr inbounds (%struct.globals, %struct.globals* @G, i32 0, i32 9), align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clear_page_group_in_use(%struct.page_group* %group, i8* %page) #2 {
entry:
  %group.addr = alloca %struct.page_group*, align 8
  %page.addr = alloca i8*, align 8
  store %struct.page_group* %group, %struct.page_group** %group.addr, align 8
  store i8* %page, i8** %page.addr, align 8
  %0 = load %struct.page_group*, %struct.page_group** %group.addr, align 8
  %allocation = getelementptr inbounds %struct.page_group, %struct.page_group* %0, i32 0, i32 1
  %1 = load i8*, i8** %allocation, align 8
  %2 = load i8*, i8** %page.addr, align 8
  %call = call i64 @page_group_index(i8* %1, i8* %2)
  %sh_prom = trunc i64 %call to i32
  %shl = shl i32 1, %sh_prom
  %neg = xor i32 %shl, -1
  %3 = load %struct.page_group*, %struct.page_group** %group.addr, align 8
  %in_use = getelementptr inbounds %struct.page_group, %struct.page_group* %3, i32 0, i32 3
  %4 = load i32, i32* %in_use, align 4
  %and = and i32 %4, %neg
  store i32 %and, i32* %in_use, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
