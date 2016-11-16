; ModuleID = './plug-ins/selection-to-path/edge.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_type = type { %struct.dimensions_type, i8* }
%struct.dimensions_type = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"next_outline_edge: Bad edge value (%d)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"edge != no_edge\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"edge.c\00", align 1
@__PRETTY_FUNCTION__.next_unmarked_outline_edge = private unnamed_addr constant [89 x i8] c"edge_type next_unmarked_outline_edge(unsigned int, unsigned int, edge_type, bitmap_type)\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"!is_marked_edge (edge, row, col, *marked)\00", align 1
@__PRETTY_FUNCTION__.mark_edge = private unnamed_addr constant [69 x i8] c"void mark_edge(edge_type, unsigned int, unsigned int, bitmap_type *)\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"is_outline_edge: Bad edge value(%d)\00", align 1

; Function Attrs: nounwind uwtable
define void @next_outline_edge(i32* %edge, i32* %row, i32* %col) #0 {
entry:
  %edge.addr = alloca i32*, align 8
  %row.addr = alloca i32*, align 8
  %col.addr = alloca i32*, align 8
  %original_row = alloca i32, align 4
  %original_col = alloca i32, align 4
  %delta_r = alloca i32, align 4
  %delta_c = alloca i32, align 4
  %test_row = alloca i32, align 4
  %test_col = alloca i32, align 4
  %test_edge = alloca i32, align 4
  %delta_r4 = alloca i32, align 4
  %delta_c5 = alloca i32, align 4
  %test_row6 = alloca i32, align 4
  %test_col8 = alloca i32, align 4
  %test_edge10 = alloca i32, align 4
  %delta_r19 = alloca i32, align 4
  %delta_c20 = alloca i32, align 4
  %test_row21 = alloca i32, align 4
  %test_col23 = alloca i32, align 4
  %test_edge25 = alloca i32, align 4
  %delta_r33 = alloca i32, align 4
  %delta_c34 = alloca i32, align 4
  %test_row35 = alloca i32, align 4
  %test_col37 = alloca i32, align 4
  %test_edge39 = alloca i32, align 4
  %delta_r48 = alloca i32, align 4
  %delta_c49 = alloca i32, align 4
  %test_row50 = alloca i32, align 4
  %test_col52 = alloca i32, align 4
  %test_edge54 = alloca i32, align 4
  %delta_r62 = alloca i32, align 4
  %delta_c63 = alloca i32, align 4
  %test_row64 = alloca i32, align 4
  %test_col66 = alloca i32, align 4
  %test_edge68 = alloca i32, align 4
  %delta_r77 = alloca i32, align 4
  %delta_c78 = alloca i32, align 4
  %test_row79 = alloca i32, align 4
  %test_col81 = alloca i32, align 4
  %test_edge83 = alloca i32, align 4
  %delta_r91 = alloca i32, align 4
  %delta_c92 = alloca i32, align 4
  %test_row93 = alloca i32, align 4
  %test_col95 = alloca i32, align 4
  %test_edge97 = alloca i32, align 4
  store i32* %edge, i32** %edge.addr, align 8
  store i32* %row, i32** %row.addr, align 8
  store i32* %col, i32** %col.addr, align 8
  %0 = load i32*, i32** %row.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %original_row, align 4
  %2 = load i32*, i32** %col.addr, align 8
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %original_col, align 4
  %4 = load i32*, i32** %edge.addr, align 8
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.18
    i32 2, label %sw.bb.47
    i32 3, label %sw.bb.76
  ]

sw.bb:                                            ; preds = %entry
  store i32 -1, i32* %delta_r, align 4
  store i32 0, i32* %delta_c, align 4
  %6 = load i32*, i32** %row.addr, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %delta_r, align 4
  %add = add i32 %7, %8
  store i32 %add, i32* %test_row, align 4
  %9 = load i32*, i32** %col.addr, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %delta_c, align 4
  %add1 = add i32 %10, %11
  store i32 %add1, i32* %test_col, align 4
  store i32 0, i32* %test_edge, align 4
  %12 = load i32, i32* %test_row, align 4
  %13 = load i32, i32* %test_col, align 4
  %call = call i32 @sel_valid_pixel(i32 %12, i32 %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %14 = load i32, i32* %test_edge, align 4
  %15 = load i32, i32* %test_row, align 4
  %16 = load i32, i32* %test_col, align 4
  %call2 = call i32 @is_outline_edge(i32 %14, i32 %15, i32 %16)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, i32* %test_row, align 4
  %18 = load i32*, i32** %row.addr, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %test_col, align 4
  %20 = load i32*, i32** %col.addr, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %test_edge, align 4
  %22 = load i32*, i32** %edge.addr, align 8
  store i32 %21, i32* %22, align 4
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  store i32 -1, i32* %delta_r4, align 4
  store i32 1, i32* %delta_c5, align 4
  %23 = load i32*, i32** %row.addr, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %delta_r4, align 4
  %add7 = add i32 %24, %25
  store i32 %add7, i32* %test_row6, align 4
  %26 = load i32*, i32** %col.addr, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %delta_c5, align 4
  %add9 = add i32 %27, %28
  store i32 %add9, i32* %test_col8, align 4
  store i32 3, i32* %test_edge10, align 4
  %29 = load i32, i32* %test_row6, align 4
  %30 = load i32, i32* %test_col8, align 4
  %call11 = call i32 @sel_valid_pixel(i32 %29, i32 %30)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.17

land.lhs.true.13:                                 ; preds = %if.end
  %31 = load i32, i32* %test_edge10, align 4
  %32 = load i32, i32* %test_row6, align 4
  %33 = load i32, i32* %test_col8, align 4
  %call14 = call i32 @is_outline_edge(i32 %31, i32 %32, i32 %33)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.13
  %34 = load i32, i32* %test_row6, align 4
  %35 = load i32*, i32** %row.addr, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %test_col8, align 4
  %37 = load i32*, i32** %col.addr, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %test_edge10, align 4
  %39 = load i32*, i32** %edge.addr, align 8
  store i32 %38, i32* %39, align 4
  br label %sw.epilog

if.end.17:                                        ; preds = %land.lhs.true.13, %if.end
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  store i32 0, i32* %delta_r19, align 4
  store i32 -1, i32* %delta_c20, align 4
  %40 = load i32*, i32** %row.addr, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %delta_r19, align 4
  %add22 = add i32 %41, %42
  store i32 %add22, i32* %test_row21, align 4
  %43 = load i32*, i32** %col.addr, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %delta_c20, align 4
  %add24 = add i32 %44, %45
  store i32 %add24, i32* %test_col23, align 4
  store i32 1, i32* %test_edge25, align 4
  %46 = load i32, i32* %test_row21, align 4
  %47 = load i32, i32* %test_col23, align 4
  %call26 = call i32 @sel_valid_pixel(i32 %46, i32 %47)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.32

land.lhs.true.28:                                 ; preds = %sw.bb.18
  %48 = load i32, i32* %test_edge25, align 4
  %49 = load i32, i32* %test_row21, align 4
  %50 = load i32, i32* %test_col23, align 4
  %call29 = call i32 @is_outline_edge(i32 %48, i32 %49, i32 %50)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %land.lhs.true.28
  %51 = load i32, i32* %test_row21, align 4
  %52 = load i32*, i32** %row.addr, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %test_col23, align 4
  %54 = load i32*, i32** %col.addr, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %test_edge25, align 4
  %56 = load i32*, i32** %edge.addr, align 8
  store i32 %55, i32* %56, align 4
  br label %sw.epilog

if.end.32:                                        ; preds = %land.lhs.true.28, %sw.bb.18
  store i32 -1, i32* %delta_r33, align 4
  store i32 -1, i32* %delta_c34, align 4
  %57 = load i32*, i32** %row.addr, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %delta_r33, align 4
  %add36 = add i32 %58, %59
  store i32 %add36, i32* %test_row35, align 4
  %60 = load i32*, i32** %col.addr, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %delta_c34, align 4
  %add38 = add i32 %61, %62
  store i32 %add38, i32* %test_col37, align 4
  store i32 0, i32* %test_edge39, align 4
  %63 = load i32, i32* %test_row35, align 4
  %64 = load i32, i32* %test_col37, align 4
  %call40 = call i32 @sel_valid_pixel(i32 %63, i32 %64)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.46

land.lhs.true.42:                                 ; preds = %if.end.32
  %65 = load i32, i32* %test_edge39, align 4
  %66 = load i32, i32* %test_row35, align 4
  %67 = load i32, i32* %test_col37, align 4
  %call43 = call i32 @is_outline_edge(i32 %65, i32 %66, i32 %67)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true.42
  %68 = load i32, i32* %test_row35, align 4
  %69 = load i32*, i32** %row.addr, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %test_col37, align 4
  %71 = load i32*, i32** %col.addr, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %test_edge39, align 4
  %73 = load i32*, i32** %edge.addr, align 8
  store i32 %72, i32* %73, align 4
  br label %sw.epilog

if.end.46:                                        ; preds = %land.lhs.true.42, %if.end.32
  br label %sw.epilog

sw.bb.47:                                         ; preds = %entry
  store i32 1, i32* %delta_r48, align 4
  store i32 0, i32* %delta_c49, align 4
  %74 = load i32*, i32** %row.addr, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %delta_r48, align 4
  %add51 = add i32 %75, %76
  store i32 %add51, i32* %test_row50, align 4
  %77 = load i32*, i32** %col.addr, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %delta_c49, align 4
  %add53 = add i32 %78, %79
  store i32 %add53, i32* %test_col52, align 4
  store i32 2, i32* %test_edge54, align 4
  %80 = load i32, i32* %test_row50, align 4
  %81 = load i32, i32* %test_col52, align 4
  %call55 = call i32 @sel_valid_pixel(i32 %80, i32 %81)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %land.lhs.true.57, label %if.end.61

land.lhs.true.57:                                 ; preds = %sw.bb.47
  %82 = load i32, i32* %test_edge54, align 4
  %83 = load i32, i32* %test_row50, align 4
  %84 = load i32, i32* %test_col52, align 4
  %call58 = call i32 @is_outline_edge(i32 %82, i32 %83, i32 %84)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true.57
  %85 = load i32, i32* %test_row50, align 4
  %86 = load i32*, i32** %row.addr, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %test_col52, align 4
  %88 = load i32*, i32** %col.addr, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %test_edge54, align 4
  %90 = load i32*, i32** %edge.addr, align 8
  store i32 %89, i32* %90, align 4
  br label %sw.epilog

if.end.61:                                        ; preds = %land.lhs.true.57, %sw.bb.47
  store i32 1, i32* %delta_r62, align 4
  store i32 -1, i32* %delta_c63, align 4
  %91 = load i32*, i32** %row.addr, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %delta_r62, align 4
  %add65 = add i32 %92, %93
  store i32 %add65, i32* %test_row64, align 4
  %94 = load i32*, i32** %col.addr, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %delta_c63, align 4
  %add67 = add i32 %95, %96
  store i32 %add67, i32* %test_col66, align 4
  store i32 1, i32* %test_edge68, align 4
  %97 = load i32, i32* %test_row64, align 4
  %98 = load i32, i32* %test_col66, align 4
  %call69 = call i32 @sel_valid_pixel(i32 %97, i32 %98)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %land.lhs.true.71, label %if.end.75

land.lhs.true.71:                                 ; preds = %if.end.61
  %99 = load i32, i32* %test_edge68, align 4
  %100 = load i32, i32* %test_row64, align 4
  %101 = load i32, i32* %test_col66, align 4
  %call72 = call i32 @is_outline_edge(i32 %99, i32 %100, i32 %101)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %land.lhs.true.71
  %102 = load i32, i32* %test_row64, align 4
  %103 = load i32*, i32** %row.addr, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %test_col66, align 4
  %105 = load i32*, i32** %col.addr, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %test_edge68, align 4
  %107 = load i32*, i32** %edge.addr, align 8
  store i32 %106, i32* %107, align 4
  br label %sw.epilog

if.end.75:                                        ; preds = %land.lhs.true.71, %if.end.61
  br label %sw.epilog

sw.bb.76:                                         ; preds = %entry
  store i32 0, i32* %delta_r77, align 4
  store i32 1, i32* %delta_c78, align 4
  %108 = load i32*, i32** %row.addr, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %delta_r77, align 4
  %add80 = add i32 %109, %110
  store i32 %add80, i32* %test_row79, align 4
  %111 = load i32*, i32** %col.addr, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %delta_c78, align 4
  %add82 = add i32 %112, %113
  store i32 %add82, i32* %test_col81, align 4
  store i32 3, i32* %test_edge83, align 4
  %114 = load i32, i32* %test_row79, align 4
  %115 = load i32, i32* %test_col81, align 4
  %call84 = call i32 @sel_valid_pixel(i32 %114, i32 %115)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.90

land.lhs.true.86:                                 ; preds = %sw.bb.76
  %116 = load i32, i32* %test_edge83, align 4
  %117 = load i32, i32* %test_row79, align 4
  %118 = load i32, i32* %test_col81, align 4
  %call87 = call i32 @is_outline_edge(i32 %116, i32 %117, i32 %118)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %land.lhs.true.86
  %119 = load i32, i32* %test_row79, align 4
  %120 = load i32*, i32** %row.addr, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %test_col81, align 4
  %122 = load i32*, i32** %col.addr, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %test_edge83, align 4
  %124 = load i32*, i32** %edge.addr, align 8
  store i32 %123, i32* %124, align 4
  br label %sw.epilog

if.end.90:                                        ; preds = %land.lhs.true.86, %sw.bb.76
  store i32 1, i32* %delta_r91, align 4
  store i32 1, i32* %delta_c92, align 4
  %125 = load i32*, i32** %row.addr, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %delta_r91, align 4
  %add94 = add i32 %126, %127
  store i32 %add94, i32* %test_row93, align 4
  %128 = load i32*, i32** %col.addr, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %delta_c92, align 4
  %add96 = add i32 %129, %130
  store i32 %add96, i32* %test_col95, align 4
  store i32 2, i32* %test_edge97, align 4
  %131 = load i32, i32* %test_row93, align 4
  %132 = load i32, i32* %test_col95, align 4
  %call98 = call i32 @sel_valid_pixel(i32 %131, i32 %132)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %land.lhs.true.100, label %if.end.104

land.lhs.true.100:                                ; preds = %if.end.90
  %133 = load i32, i32* %test_edge97, align 4
  %134 = load i32, i32* %test_row93, align 4
  %135 = load i32, i32* %test_col95, align 4
  %call101 = call i32 @is_outline_edge(i32 %133, i32 %134, i32 %135)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %land.lhs.true.100
  %136 = load i32, i32* %test_row93, align 4
  %137 = load i32*, i32** %row.addr, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* %test_col95, align 4
  %139 = load i32*, i32** %col.addr, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* %test_edge97, align 4
  %141 = load i32*, i32** %edge.addr, align 8
  store i32 %140, i32* %141, align 4
  br label %sw.epilog

if.end.104:                                       ; preds = %land.lhs.true.100, %if.end.90
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %142 = load i32*, i32** %edge.addr, align 8
  %143 = load i32, i32* %142, align 4
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i32 %143)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.104, %if.then.103, %if.then.89, %if.end.75, %if.then.74, %if.then.60, %if.end.46, %if.then.45, %if.then.31, %if.end.17, %if.then.16, %if.then
  %144 = load i32*, i32** %row.addr, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %original_row, align 4
  %cmp = icmp eq i32 %145, %146
  br i1 %cmp, label %land.lhs.true.106, label %if.end.110

land.lhs.true.106:                                ; preds = %sw.epilog
  %147 = load i32*, i32** %col.addr, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %original_col, align 4
  %cmp107 = icmp eq i32 %148, %149
  br i1 %cmp107, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %land.lhs.true.106
  %150 = load i32*, i32** %edge.addr, align 8
  %151 = load i32, i32* %150, align 4
  %call109 = call i32 @next_edge(i32 %151)
  %152 = load i32*, i32** %edge.addr, align 8
  store i32 %call109, i32* %152, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %land.lhs.true.106, %sw.epilog
  ret void
}

declare i32 @sel_valid_pixel(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_outline_edge(i32 %edge, i32 %row, i32 %col) #0 {
entry:
  %retval = alloca i32, align 4
  %edge.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  store i32 %edge, i32* %edge.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %0 = load i32, i32* %row.addr, align 4
  %1 = load i32, i32* %col.addr, align 4
  %call = call i32 @sel_pixel_is_white(i32 %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %edge.addr, align 4
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.3
    i32 0, label %sw.bb.11
    i32 3, label %sw.bb.20
    i32 4, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load i32, i32* %col.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb
  %4 = load i32, i32* %row.addr, align 4
  %5 = load i32, i32* %col.addr, align 4
  %sub = sub i32 %5, 1
  %call1 = call i32 @sel_pixel_is_white(i32 %4, i32 %sub)
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb
  %6 = phi i1 [ true, %sw.bb ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %if.end
  %7 = load i32, i32* %row.addr, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %lor.end.9, label %lor.rhs.5

lor.rhs.5:                                        ; preds = %sw.bb.3
  %8 = load i32, i32* %row.addr, align 4
  %sub6 = sub i32 %8, 1
  %9 = load i32, i32* %col.addr, align 4
  %call7 = call i32 @sel_pixel_is_white(i32 %sub6, i32 %9)
  %tobool8 = icmp ne i32 %call7, 0
  br label %lor.end.9

lor.end.9:                                        ; preds = %lor.rhs.5, %sw.bb.3
  %10 = phi i1 [ true, %sw.bb.3 ], [ %tobool8, %lor.rhs.5 ]
  %lor.ext10 = zext i1 %10 to i32
  store i32 %lor.ext10, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %if.end
  %11 = load i32, i32* %col.addr, align 4
  %call12 = call i32 @sel_get_width()
  %sub13 = sub nsw i32 %call12, 1
  %cmp14 = icmp eq i32 %11, %sub13
  br i1 %cmp14, label %lor.end.18, label %lor.rhs.15

lor.rhs.15:                                       ; preds = %sw.bb.11
  %12 = load i32, i32* %row.addr, align 4
  %13 = load i32, i32* %col.addr, align 4
  %add = add i32 %13, 1
  %call16 = call i32 @sel_pixel_is_white(i32 %12, i32 %add)
  %tobool17 = icmp ne i32 %call16, 0
  br label %lor.end.18

lor.end.18:                                       ; preds = %lor.rhs.15, %sw.bb.11
  %14 = phi i1 [ true, %sw.bb.11 ], [ %tobool17, %lor.rhs.15 ]
  %lor.ext19 = zext i1 %14 to i32
  store i32 %lor.ext19, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %if.end
  %15 = load i32, i32* %row.addr, align 4
  %call21 = call i32 @sel_get_height()
  %sub22 = sub nsw i32 %call21, 1
  %cmp23 = icmp eq i32 %15, %sub22
  br i1 %cmp23, label %lor.end.28, label %lor.rhs.24

lor.rhs.24:                                       ; preds = %sw.bb.20
  %16 = load i32, i32* %row.addr, align 4
  %add25 = add i32 %16, 1
  %17 = load i32, i32* %col.addr, align 4
  %call26 = call i32 @sel_pixel_is_white(i32 %add25, i32 %17)
  %tobool27 = icmp ne i32 %call26, 0
  br label %lor.end.28

lor.end.28:                                       ; preds = %lor.rhs.24, %sw.bb.20
  %18 = phi i1 [ true, %sw.bb.20 ], [ %tobool27, %lor.rhs.24 ]
  %lor.ext29 = zext i1 %18 to i32
  store i32 %lor.ext29, i32* %retval
  br label %return

sw.bb.30:                                         ; preds = %if.end
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb.30
  %19 = load i32, i32* %edge.addr, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i32 %19)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %lor.end.28, %lor.end.18, %lor.end.9, %lor.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @next_edge(i32 %edge) #0 {
entry:
  %edge.addr = alloca i32, align 4
  store i32 %edge, i32* %edge.addr, align 4
  %0 = load i32, i32* %edge.addr, align 4
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %edge.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %edge.addr, align 4
  %add = add i32 %2, 1
  %rem = urem i32 %add, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %rem, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @next_unmarked_outline_edge(i32 %row, i32 %col, i32 %starting_edge, i64 %marked.coerce0, i8* %marked.coerce1) #0 {
entry:
  %retval = alloca i32, align 4
  %marked = alloca %struct.bitmap_type, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %starting_edge.addr = alloca i32, align 4
  %edge = alloca i32, align 4
  %0 = bitcast %struct.bitmap_type* %marked to { i64, i8* }*
  %1 = getelementptr { i64, i8* }, { i64, i8* }* %0, i32 0, i32 0
  store i64 %marked.coerce0, i64* %1
  %2 = getelementptr { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  store i8* %marked.coerce1, i8** %2
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  store i32 %starting_edge, i32* %starting_edge.addr, align 4
  %3 = load i32, i32* %starting_edge.addr, align 4
  store i32 %3, i32* %edge, align 4
  %4 = load i32, i32* %edge, align 4
  %cmp = icmp ne i32 %4, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 182, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__.next_unmarked_outline_edge, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end
  %6 = load i32, i32* %edge, align 4
  %7 = load i32, i32* %row.addr, align 4
  %8 = load i32, i32* %col.addr, align 4
  %9 = bitcast %struct.bitmap_type* %marked to { i64, i8* }*
  %10 = getelementptr { i64, i8* }, { i64, i8* }* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 1
  %12 = getelementptr { i64, i8* }, { i64, i8* }* %9, i32 0, i32 1
  %13 = load i8*, i8** %12, align 1
  %call = call i32 @is_marked_edge(i32 %6, i32 %7, i32 %8, i64 %11, i8* %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %14 = load i32, i32* %edge, align 4
  %15 = load i32, i32* %row.addr, align 4
  %16 = load i32, i32* %col.addr, align 4
  %call1 = call i32 @is_outline_edge(i32 %14, i32 %15, i32 %16)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %17 = phi i1 [ true, %while.cond ], [ %lnot, %lor.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %18 = load i32, i32* %edge, align 4
  %call3 = call i32 @next_edge(i32 %18)
  store i32 %call3, i32* %edge, align 4
  %19 = load i32, i32* %edge, align 4
  %20 = load i32, i32* %starting_edge.addr, align 4
  %cmp4 = icmp eq i32 %19, %20
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 4, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %21 = load i32, i32* %edge, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @is_marked_edge(i32 %edge, i32 %row, i32 %col, i64 %marked.coerce0, i8* %marked.coerce1) #0 {
entry:
  %marked = alloca %struct.bitmap_type, align 8
  %edge.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %0 = bitcast %struct.bitmap_type* %marked to { i64, i8* }*
  %1 = getelementptr { i64, i8* }, { i64, i8* }* %0, i32 0, i32 0
  store i64 %marked.coerce0, i64* %1
  %2 = getelementptr { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  store i8* %marked.coerce1, i8** %2
  store i32 %edge, i32* %edge.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %3 = load i32, i32* %edge.addr, align 4
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %bitmap = getelementptr inbounds %struct.bitmap_type, %struct.bitmap_type* %marked, i32 0, i32 1
  %4 = load i8*, i8** %bitmap, align 8
  %5 = load i32, i32* %row.addr, align 4
  %dimensions = getelementptr inbounds %struct.bitmap_type, %struct.bitmap_type* %marked, i32 0, i32 0
  %width = getelementptr inbounds %struct.dimensions_type, %struct.dimensions_type* %dimensions, i32 0, i32 1
  %6 = load i32, i32* %width, align 4
  %mul = mul i32 %5, %6
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %7 = load i32, i32* %col.addr, align 4
  %idx.ext1 = zext i32 %7 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext1
  %8 = load i8, i8* %add.ptr2, align 1
  %conv = zext i8 %8 to i32
  %9 = load i32, i32* %edge.addr, align 4
  %shl = shl i32 1, %9
  %and = and i32 %conv, %shl
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %and, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @mark_edge(i32 %edge, i32 %row, i32 %col, %struct.bitmap_type* %marked) #0 {
entry:
  %edge.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %marked.addr = alloca %struct.bitmap_type*, align 8
  store i32 %edge, i32* %edge.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  store %struct.bitmap_type* %marked, %struct.bitmap_type** %marked.addr, align 8
  %0 = load i32, i32* %edge.addr, align 4
  %1 = load i32, i32* %row.addr, align 4
  %2 = load i32, i32* %col.addr, align 4
  %3 = load %struct.bitmap_type*, %struct.bitmap_type** %marked.addr, align 8
  %4 = bitcast %struct.bitmap_type* %3 to { i64, i8* }*
  %5 = getelementptr { i64, i8* }, { i64, i8* }* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 1
  %7 = getelementptr { i64, i8* }, { i64, i8* }* %4, i32 0, i32 1
  %8 = load i8*, i8** %7, align 1
  %call = call i32 @is_marked_edge(i32 %0, i32 %1, i32 %2, i64 %6, i8* %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 241, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.mark_edge, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  %10 = load i32, i32* %edge.addr, align 4
  %cmp = icmp ne i32 %10, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %11 = load i32, i32* %edge.addr, align 4
  %shl = shl i32 1, %11
  %12 = load %struct.bitmap_type*, %struct.bitmap_type** %marked.addr, align 8
  %bitmap = getelementptr inbounds %struct.bitmap_type, %struct.bitmap_type* %12, i32 0, i32 1
  %13 = load i8*, i8** %bitmap, align 8
  %14 = load i32, i32* %row.addr, align 4
  %15 = load %struct.bitmap_type*, %struct.bitmap_type** %marked.addr, align 8
  %dimensions = getelementptr inbounds %struct.bitmap_type, %struct.bitmap_type* %15, i32 0, i32 0
  %width = getelementptr inbounds %struct.dimensions_type, %struct.dimensions_type* %dimensions, i32 0, i32 1
  %16 = load i32, i32* %width, align 4
  %mul = mul i32 %14, %16
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %17 = load i32, i32* %col.addr, align 4
  %idx.ext1 = zext i32 %17 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext1
  %18 = load i8, i8* %add.ptr2, align 1
  %conv = zext i8 %18 to i32
  %or = or i32 %conv, %shl
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %add.ptr2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  ret void
}

declare i32 @sel_pixel_is_white(i32, i32) #1

declare i32 @sel_get_width() #1

declare i32 @sel_get_height() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
