; ModuleID = './metagrammar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grammar = type { i32, %struct.dfa*, %struct.labellist, i32, i32 }
%struct.dfa = type { i32, i8*, i32, i32, %struct.state*, i8* }
%struct.state = type { i32, %struct.arc*, i32, i32, i32*, i32 }
%struct.arc = type { i16, i16 }
%struct.labellist = type { i32, %struct.label* }
%struct.label = type { i32, i8* }

@_PyParser_Grammar = internal global %struct.grammar { i32 6, %struct.dfa* getelementptr inbounds ([6 x %struct.dfa], [6 x %struct.dfa]* @dfas, i32 0, i32 0), %struct.labellist { i32 19, %struct.label* getelementptr inbounds ([19 x %struct.label], [19 x %struct.label]* @labels, i32 0, i32 0) }, i32 256, i32 0 }, align 8
@dfas = internal global [6 x %struct.dfa] [%struct.dfa { i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 0, i32 2, %struct.state* getelementptr inbounds ([2 x %struct.state], [2 x %struct.state]* @states_0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0) }, %struct.dfa { i32 257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 5, %struct.state* getelementptr inbounds ([5 x %struct.state], [5 x %struct.state]* @states_1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0) }, %struct.dfa { i32 258, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 2, %struct.state* getelementptr inbounds ([2 x %struct.state], [2 x %struct.state]* @states_2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0) }, %struct.dfa { i32 259, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 2, %struct.state* getelementptr inbounds ([2 x %struct.state], [2 x %struct.state]* @states_3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0) }, %struct.dfa { i32 260, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 5, %struct.state* getelementptr inbounds ([5 x %struct.state], [5 x %struct.state]* @states_4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0) }, %struct.dfa { i32 261, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 4, %struct.state* getelementptr inbounds ([4 x %struct.state], [4 x %struct.state]* @states_5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0) }], align 16
@labels = internal global [19 x %struct.label] [%struct.label { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0) }, %struct.label { i32 256, i8* null }, %struct.label { i32 257, i8* null }, %struct.label { i32 4, i8* null }, %struct.label zeroinitializer, %struct.label { i32 1, i8* null }, %struct.label { i32 11, i8* null }, %struct.label { i32 258, i8* null }, %struct.label { i32 259, i8* null }, %struct.label { i32 18, i8* null }, %struct.label { i32 260, i8* null }, %struct.label { i32 9, i8* null }, %struct.label { i32 10, i8* null }, %struct.label { i32 261, i8* null }, %struct.label { i32 16, i8* null }, %struct.label { i32 14, i8* null }, %struct.label { i32 3, i8* null }, %struct.label { i32 7, i8* null }, %struct.label { i32 8, i8* null }], align 16
@.str = private unnamed_addr constant [7 x i8] c"MSTART\00", align 1
@states_0 = internal global [2 x %struct.state] [%struct.state { i32 3, %struct.arc* getelementptr inbounds ([3 x %struct.arc], [3 x %struct.arc]* @arcs_0_0, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }, %struct.state { i32 1, %struct.arc* getelementptr inbounds ([1 x %struct.arc], [1 x %struct.arc]* @arcs_0_1, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"8\00\00\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"RULE\00", align 1
@states_1 = internal global [5 x %struct.state] [%struct.state { i32 1, %struct.arc* getelementptr inbounds ([1 x %struct.arc], [1 x %struct.arc]* @arcs_1_0, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }, %struct.state { i32 1, %struct.arc* getelementptr inbounds ([1 x %struct.arc], [1 x %struct.arc]* @arcs_1_1, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }, %struct.state { i32 1, %struct.arc* getelementptr inbounds ([1 x %struct.arc], [1 x %struct.arc]* @arcs_1_2, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }, %struct.state { i32 1, %struct.arc* getelementptr inbounds ([1 x %struct.arc], [1 x %struct.arc]* @arcs_1_3, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }, %struct.state { i32 1, %struct.arc* getelementptr inbounds ([1 x %struct.arc], [1 x %struct.arc]* @arcs_1_4, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c" \00\00\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RHS\00", align 1
@states_2 = internal global [2 x %struct.state] [%struct.state { i32 1, %struct.arc* getelementptr inbounds ([1 x %struct.arc], [1 x %struct.arc]* @arcs_2_0, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }, %struct.state { i32 2, %struct.arc* getelementptr inbounds ([2 x %struct.arc], [2 x %struct.arc]* @arcs_2_1, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }], align 16
@.str.5 = private unnamed_addr constant [4 x i8] c" \08\03\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ALT\00", align 1
@states_3 = internal global [2 x %struct.state] [%struct.state { i32 1, %struct.arc* getelementptr inbounds ([1 x %struct.arc], [1 x %struct.arc]* @arcs_3_0, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }, %struct.state { i32 2, %struct.arc* getelementptr inbounds ([2 x %struct.arc], [2 x %struct.arc]* @arcs_3_1, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }], align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"ITEM\00", align 1
@states_4 = internal global [5 x %struct.state] [%struct.state { i32 2, %struct.arc* getelementptr inbounds ([2 x %struct.arc], [2 x %struct.arc]* @arcs_4_0, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }, %struct.state { i32 1, %struct.arc* getelementptr inbounds ([1 x %struct.arc], [1 x %struct.arc]* @arcs_4_1, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }, %struct.state { i32 3, %struct.arc* getelementptr inbounds ([3 x %struct.arc], [3 x %struct.arc]* @arcs_4_2, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }, %struct.state { i32 1, %struct.arc* getelementptr inbounds ([1 x %struct.arc], [1 x %struct.arc]* @arcs_4_3, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }, %struct.state { i32 1, %struct.arc* getelementptr inbounds ([1 x %struct.arc], [1 x %struct.arc]* @arcs_4_4, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }], align 16
@.str.8 = private unnamed_addr constant [5 x i8] c"ATOM\00", align 1
@states_5 = internal global [4 x %struct.state] [%struct.state { i32 3, %struct.arc* getelementptr inbounds ([3 x %struct.arc], [3 x %struct.arc]* @arcs_5_0, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }, %struct.state { i32 1, %struct.arc* getelementptr inbounds ([1 x %struct.arc], [1 x %struct.arc]* @arcs_5_1, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }, %struct.state { i32 1, %struct.arc* getelementptr inbounds ([1 x %struct.arc], [1 x %struct.arc]* @arcs_5_2, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }, %struct.state { i32 1, %struct.arc* getelementptr inbounds ([1 x %struct.arc], [1 x %struct.arc]* @arcs_5_3, i32 0, i32 0), i32 0, i32 0, i32* null, i32 0 }], align 16
@.str.9 = private unnamed_addr constant [4 x i8] c" \00\03\00", align 1
@arcs_0_0 = internal global [3 x %struct.arc] [%struct.arc { i16 2, i16 0 }, %struct.arc { i16 3, i16 0 }, %struct.arc { i16 4, i16 1 }], align 2
@arcs_0_1 = internal global [1 x %struct.arc] [%struct.arc { i16 0, i16 1 }], align 2
@arcs_1_0 = internal global [1 x %struct.arc] [%struct.arc { i16 5, i16 1 }], align 2
@arcs_1_1 = internal global [1 x %struct.arc] [%struct.arc { i16 6, i16 2 }], align 2
@arcs_1_2 = internal global [1 x %struct.arc] [%struct.arc { i16 7, i16 3 }], align 2
@arcs_1_3 = internal global [1 x %struct.arc] [%struct.arc { i16 3, i16 4 }], align 2
@arcs_1_4 = internal global [1 x %struct.arc] [%struct.arc { i16 0, i16 4 }], align 2
@arcs_2_0 = internal global [1 x %struct.arc] [%struct.arc { i16 8, i16 1 }], align 2
@arcs_2_1 = internal global [2 x %struct.arc] [%struct.arc { i16 9, i16 0 }, %struct.arc { i16 0, i16 1 }], align 2
@arcs_3_0 = internal global [1 x %struct.arc] [%struct.arc { i16 10, i16 1 }], align 2
@arcs_3_1 = internal global [2 x %struct.arc] [%struct.arc { i16 10, i16 1 }, %struct.arc { i16 0, i16 1 }], align 2
@arcs_4_0 = internal global [2 x %struct.arc] [%struct.arc { i16 11, i16 1 }, %struct.arc { i16 13, i16 2 }], align 2
@arcs_4_1 = internal global [1 x %struct.arc] [%struct.arc { i16 7, i16 3 }], align 2
@arcs_4_2 = internal global [3 x %struct.arc] [%struct.arc { i16 14, i16 4 }, %struct.arc { i16 15, i16 4 }, %struct.arc { i16 0, i16 2 }], align 2
@arcs_4_3 = internal global [1 x %struct.arc] [%struct.arc { i16 12, i16 4 }], align 2
@arcs_4_4 = internal global [1 x %struct.arc] [%struct.arc { i16 0, i16 4 }], align 2
@arcs_5_0 = internal global [3 x %struct.arc] [%struct.arc { i16 5, i16 1 }, %struct.arc { i16 16, i16 1 }, %struct.arc { i16 17, i16 2 }], align 2
@arcs_5_1 = internal global [1 x %struct.arc] [%struct.arc { i16 0, i16 1 }], align 2
@arcs_5_2 = internal global [1 x %struct.arc] [%struct.arc { i16 7, i16 3 }], align 2
@arcs_5_3 = internal global [1 x %struct.arc] [%struct.arc { i16 18, i16 1 }], align 2
@.str.10 = private unnamed_addr constant [6 x i8] c"EMPTY\00", align 1

; Function Attrs: nounwind uwtable
define %struct.grammar* @_Py_meta_grammar() #0 {
entry:
  ret %struct.grammar* @_PyParser_Grammar
}

; Function Attrs: nounwind uwtable
define %struct.grammar* @Py_meta_grammar() #0 {
entry:
  %call = call %struct.grammar* @_Py_meta_grammar()
  ret %struct.grammar* %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
