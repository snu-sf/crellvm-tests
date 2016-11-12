; ModuleID = './mqc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opj_mqc_state = type { i32, i32, %struct.opj_mqc_state*, %struct.opj_mqc_state* }
%struct.opj_mqc = type { i32, i32, i32, i8*, i8*, i8*, [19 x %struct.opj_mqc_state*], %struct.opj_mqc_state** }

@mqc_states = internal global [94 x %struct.opj_mqc_state] [%struct.opj_mqc_state { i32 22017, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 48) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 72) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 22017, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 72) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 48) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 13313, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 96) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 288) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 13313, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 120) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 312) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 6145, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 144) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 432) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 6145, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 168) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 456) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 2753, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 192) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 576) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 2753, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 216) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 600) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 1313, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 240) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1392) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 1313, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 264) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1416) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 545, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1824) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1584) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 545, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1848) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1608) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 22017, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 336) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 312) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 22017, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 360) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 288) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 21505, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 384) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 672) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 21505, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 408) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 696) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 18433, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 432) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 672) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 18433, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 456) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 696) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 14337, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 480) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 672) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 14337, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 504) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 696) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 12289, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 528) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 816) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 12289, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 552) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 840) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 9217, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 576) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 864) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 9217, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 600) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 888) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 7169, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 624) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 960) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 7169, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 648) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 984) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 5633, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1392) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1008) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 5633, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1416) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1032) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 22017, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 720) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 696) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 22017, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 744) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 672) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 21505, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 768) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 672) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 21505, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 792) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 696) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 20737, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 816) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 720) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 20737, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 840) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 744) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 18433, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 864) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 768) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 18433, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 888) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 792) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 14337, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 912) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 816) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 14337, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 936) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 840) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 13313, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 960) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 864) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 13313, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 984) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 888) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 12289, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1008) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 912) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 12289, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1032) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 936) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 10241, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1056) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 912) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 10241, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1080) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 936) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 9217, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1104) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 960) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 9217, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1128) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 984) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 8705, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1152) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1008) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 8705, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1176) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1032) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 7169, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1200) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1056) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 7169, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1224) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1080) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 6145, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1248) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1104) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 6145, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1272) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1128) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 5633, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1296) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1152) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 5633, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1320) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1176) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 5121, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1344) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1200) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 5121, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1368) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1224) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 4609, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1392) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1248) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 4609, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1416) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1272) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 4353, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1440) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1296) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 4353, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1464) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1320) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 2753, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1488) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1344) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 2753, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1512) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1368) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 2497, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1536) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1392) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 2497, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1560) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1416) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 2209, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1584) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1440) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 2209, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1608) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1464) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 1313, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1632) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1488) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 1313, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1656) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1512) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 1089, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1680) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1536) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 1089, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1704) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1560) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 673, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1728) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1584) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 673, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1752) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1608) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 545, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1776) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1632) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 545, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1800) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1656) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 321, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1824) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1680) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 321, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1848) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1704) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 273, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1872) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1728) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 273, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1896) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1752) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 133, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1920) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1776) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 133, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1944) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1800) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 73, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1968) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1824) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 73, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1992) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1848) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 37, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2016) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1872) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 37, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2040) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1896) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 21, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2064) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1920) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 21, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2088) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1944) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 9, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2112) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1968) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 9, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2136) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 1992) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 5, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2160) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2016) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 5, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2184) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2040) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 1, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2160) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2064) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 1, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2184) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2088) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 22017, i32 0, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2208) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2208) to %struct.opj_mqc_state*) }, %struct.opj_mqc_state { i32 22017, i32 1, %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2232) to %struct.opj_mqc_state*), %struct.opj_mqc_state* bitcast (i8* getelementptr (i8, i8* bitcast ([94 x %struct.opj_mqc_state]* @mqc_states to i8*), i64 2232) to %struct.opj_mqc_state*) }], align 16

; Function Attrs: nounwind uwtable
define %struct.opj_mqc* @opj_mqc_create() #0 {
entry:
  %mqc = alloca %struct.opj_mqc*, align 8
  %0 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 200) #4
  %1 = bitcast i8* %call to %struct.opj_mqc*
  store %struct.opj_mqc* %1, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %2 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc, align 8, !tbaa !1
  %3 = bitcast %struct.opj_mqc** %mqc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3) #1
  ret %struct.opj_mqc* %2
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @opj_mqc_destroy(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_mqc* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %2 = bitcast %struct.opj_mqc* %1 to i8*
  call void @free(i8* %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @opj_mqc_numbytes(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %0, i32 0, i32 3
  %1 = load i8*, i8** %bp, align 8, !tbaa !5
  %2 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %2, i32 0, i32 4
  %3 = load i8*, i8** %start, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @opj_mqc_init_enc(%struct.opj_mqc* %mqc, i8* %bp) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %bp.addr = alloca i8*, align 8
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  store i8* %bp, i8** %bp.addr, align 8, !tbaa !1
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %0, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 0
  %1 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %1, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !9
  %2 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %2, i32 0, i32 1
  store i32 32768, i32* %a, align 4, !tbaa !10
  %3 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %3, i32 0, i32 0
  store i32 0, i32* %c, align 4, !tbaa !11
  %4 = load i8*, i8** %bp.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -1
  %5 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %5, i32 0, i32 3
  store i8* %add.ptr, i8** %bp1, align 8, !tbaa !5
  %6 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %6, i32 0, i32 2
  store i32 12, i32* %ct, align 4, !tbaa !12
  %7 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp2 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %7, i32 0, i32 3
  %8 = load i8*, i8** %bp2, align 8, !tbaa !5
  %9 = load i8, i8* %8, align 1, !tbaa !13
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct4 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %10, i32 0, i32 2
  store i32 13, i32* %ct4, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i8*, i8** %bp.addr, align 8, !tbaa !1
  %12 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %12, i32 0, i32 4
  store i8* %11, i8** %start, align 8, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_mqc_encode(%struct.opj_mqc* %mqc, i32 %d) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %d.addr = alloca i32, align 4
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  store i32 %d, i32* %d.addr, align 4, !tbaa !14
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %0, i32 0, i32 7
  %1 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !9
  %2 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %1, align 8, !tbaa !1
  %mps = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %2, i32 0, i32 1
  %3 = load i32, i32* %mps, align 4, !tbaa !15
  %4 = load i32, i32* %d.addr, align 4, !tbaa !14
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_codemps(%struct.opj_mqc* %5) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_codelps(%struct.opj_mqc* %6) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_mqc_codemps(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %0, i32 0, i32 7
  %1 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !9
  %2 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %1, align 8, !tbaa !1
  %qeval = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %2, i32 0, i32 0
  %3 = load i32, i32* %qeval, align 4, !tbaa !17
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %4, i32 0, i32 1
  %5 = load i32, i32* %a, align 4, !tbaa !10
  %sub = sub i32 %5, %3
  store i32 %sub, i32* %a, align 4, !tbaa !10
  %6 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %6, i32 0, i32 1
  %7 = load i32, i32* %a1, align 4, !tbaa !10
  %and = and i32 %7, 32768
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else.14

if.then:                                          ; preds = %entry
  %8 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a2 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %8, i32 0, i32 1
  %9 = load i32, i32* %a2, align 4, !tbaa !10
  %10 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx3 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %10, i32 0, i32 7
  %11 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx3, align 8, !tbaa !9
  %12 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %11, align 8, !tbaa !1
  %qeval4 = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %12, i32 0, i32 0
  %13 = load i32, i32* %qeval4, align 4, !tbaa !17
  %cmp5 = icmp ult i32 %9, %13
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %14 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx7 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %14, i32 0, i32 7
  %15 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx7, align 8, !tbaa !9
  %16 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %15, align 8, !tbaa !1
  %qeval8 = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %16, i32 0, i32 0
  %17 = load i32, i32* %qeval8, align 4, !tbaa !17
  %18 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a9 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %18, i32 0, i32 1
  store i32 %17, i32* %a9, align 4, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %if.then
  %19 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx10 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %19, i32 0, i32 7
  %20 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx10, align 8, !tbaa !9
  %21 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %20, align 8, !tbaa !1
  %qeval11 = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %21, i32 0, i32 0
  %22 = load i32, i32* %qeval11, align 4, !tbaa !17
  %23 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %23, i32 0, i32 0
  %24 = load i32, i32* %c, align 4, !tbaa !11
  %add = add i32 %24, %22
  store i32 %add, i32* %c, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %25 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx12 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %25, i32 0, i32 7
  %26 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx12, align 8, !tbaa !9
  %27 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %26, align 8, !tbaa !1
  %nmps = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %27, i32 0, i32 2
  %28 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %nmps, align 8, !tbaa !18
  %29 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx13 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %29, i32 0, i32 7
  %30 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx13, align 8, !tbaa !9
  store %struct.opj_mqc_state* %28, %struct.opj_mqc_state** %30, align 8, !tbaa !1
  %31 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_renorme(%struct.opj_mqc* %31) #5
  br label %if.end.19

if.else.14:                                       ; preds = %entry
  %32 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx15 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %32, i32 0, i32 7
  %33 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx15, align 8, !tbaa !9
  %34 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %33, align 8, !tbaa !1
  %qeval16 = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %34, i32 0, i32 0
  %35 = load i32, i32* %qeval16, align 4, !tbaa !17
  %36 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c17 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %36, i32 0, i32 0
  %37 = load i32, i32* %c17, align 4, !tbaa !11
  %add18 = add i32 %37, %35
  store i32 %add18, i32* %c17, align 4, !tbaa !11
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.14, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_mqc_codelps(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %0, i32 0, i32 7
  %1 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !9
  %2 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %1, align 8, !tbaa !1
  %qeval = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %2, i32 0, i32 0
  %3 = load i32, i32* %qeval, align 4, !tbaa !17
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %4, i32 0, i32 1
  %5 = load i32, i32* %a, align 4, !tbaa !10
  %sub = sub i32 %5, %3
  store i32 %sub, i32* %a, align 4, !tbaa !10
  %6 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %6, i32 0, i32 1
  %7 = load i32, i32* %a1, align 4, !tbaa !10
  %8 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx2 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %8, i32 0, i32 7
  %9 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx2, align 8, !tbaa !9
  %10 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %9, align 8, !tbaa !1
  %qeval3 = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %10, i32 0, i32 0
  %11 = load i32, i32* %qeval3, align 4, !tbaa !17
  %cmp = icmp ult i32 %7, %11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx4 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %12, i32 0, i32 7
  %13 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx4, align 8, !tbaa !9
  %14 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %13, align 8, !tbaa !1
  %qeval5 = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %14, i32 0, i32 0
  %15 = load i32, i32* %qeval5, align 4, !tbaa !17
  %16 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %16, i32 0, i32 0
  %17 = load i32, i32* %c, align 4, !tbaa !11
  %add = add i32 %17, %15
  store i32 %add, i32* %c, align 4, !tbaa !11
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx6 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %18, i32 0, i32 7
  %19 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx6, align 8, !tbaa !9
  %20 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %19, align 8, !tbaa !1
  %qeval7 = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %20, i32 0, i32 0
  %21 = load i32, i32* %qeval7, align 4, !tbaa !17
  %22 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a8 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %22, i32 0, i32 1
  store i32 %21, i32* %a8, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx9 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %23, i32 0, i32 7
  %24 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx9, align 8, !tbaa !9
  %25 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %24, align 8, !tbaa !1
  %nlps = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %25, i32 0, i32 3
  %26 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %nlps, align 8, !tbaa !19
  %27 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx10 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %27, i32 0, i32 7
  %28 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx10, align 8, !tbaa !9
  store %struct.opj_mqc_state* %26, %struct.opj_mqc_state** %28, align 8, !tbaa !1
  %29 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_renorme(%struct.opj_mqc* %29) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_mqc_flush(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_setbits(%struct.opj_mqc* %0) #5
  %1 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %1, i32 0, i32 2
  %2 = load i32, i32* %ct, align 4, !tbaa !12
  %3 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %3, i32 0, i32 0
  %4 = load i32, i32* %c, align 4, !tbaa !11
  %shl = shl i32 %4, %2
  store i32 %shl, i32* %c, align 4, !tbaa !11
  %5 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_byteout(%struct.opj_mqc* %5) #5
  %6 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %6, i32 0, i32 2
  %7 = load i32, i32* %ct1, align 4, !tbaa !12
  %8 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c2 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %8, i32 0, i32 0
  %9 = load i32, i32* %c2, align 4, !tbaa !11
  %shl3 = shl i32 %9, %7
  store i32 %shl3, i32* %c2, align 4, !tbaa !11
  %10 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_byteout(%struct.opj_mqc* %10) #5
  %11 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %11, i32 0, i32 3
  %12 = load i8*, i8** %bp, align 8, !tbaa !5
  %13 = load i8, i8* %12, align 1, !tbaa !13
  %conv = zext i8 %13 to i32
  %cmp = icmp ne i32 %conv, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp5 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %14, i32 0, i32 3
  %15 = load i8*, i8** %bp5, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %bp5, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_mqc_setbits(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %tempc = alloca i32, align 4
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %tempc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %1, i32 0, i32 0
  %2 = load i32, i32* %c, align 4, !tbaa !11
  %3 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %3, i32 0, i32 1
  %4 = load i32, i32* %a, align 4, !tbaa !10
  %add = add i32 %2, %4
  store i32 %add, i32* %tempc, align 4, !tbaa !14
  %5 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %5, i32 0, i32 0
  %6 = load i32, i32* %c1, align 4, !tbaa !11
  %or = or i32 %6, 65535
  store i32 %or, i32* %c1, align 4, !tbaa !11
  %7 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c2 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %7, i32 0, i32 0
  %8 = load i32, i32* %c2, align 4, !tbaa !11
  %9 = load i32, i32* %tempc, align 4, !tbaa !14
  %cmp = icmp uge i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c3 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %10, i32 0, i32 0
  %11 = load i32, i32* %c3, align 4, !tbaa !11
  %sub = sub i32 %11, 32768
  store i32 %sub, i32* %c3, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = bitcast i32* %tempc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_mqc_byteout(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %0, i32 0, i32 3
  %1 = load i8*, i8** %bp, align 8, !tbaa !5
  %2 = load i8, i8* %1, align 1, !tbaa !13
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp2 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %3, i32 0, i32 3
  %4 = load i8*, i8** %bp2, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %bp2, align 8, !tbaa !5
  %5 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %5, i32 0, i32 0
  %6 = load i32, i32* %c, align 4, !tbaa !11
  %shr = lshr i32 %6, 20
  %conv3 = trunc i32 %shr to i8
  %7 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp4 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %7, i32 0, i32 3
  %8 = load i8*, i8** %bp4, align 8, !tbaa !5
  store i8 %conv3, i8* %8, align 1, !tbaa !13
  %9 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c5 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %9, i32 0, i32 0
  %10 = load i32, i32* %c5, align 4, !tbaa !11
  %and = and i32 %10, 1048575
  store i32 %and, i32* %c5, align 4, !tbaa !11
  %11 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %11, i32 0, i32 2
  store i32 7, i32* %ct, align 4, !tbaa !12
  br label %if.end.49

if.else:                                          ; preds = %entry
  %12 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c6 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %12, i32 0, i32 0
  %13 = load i32, i32* %c6, align 4, !tbaa !11
  %and7 = and i32 %13, 134217728
  %cmp8 = icmp eq i32 %and7, 0
  br i1 %cmp8, label %if.then.10, label %if.else.20

if.then.10:                                       ; preds = %if.else
  %14 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp11 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %14, i32 0, i32 3
  %15 = load i8*, i8** %bp11, align 8, !tbaa !5
  %incdec.ptr12 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr12, i8** %bp11, align 8, !tbaa !5
  %16 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c13 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %16, i32 0, i32 0
  %17 = load i32, i32* %c13, align 4, !tbaa !11
  %shr14 = lshr i32 %17, 19
  %conv15 = trunc i32 %shr14 to i8
  %18 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp16 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %18, i32 0, i32 3
  %19 = load i8*, i8** %bp16, align 8, !tbaa !5
  store i8 %conv15, i8* %19, align 1, !tbaa !13
  %20 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c17 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %20, i32 0, i32 0
  %21 = load i32, i32* %c17, align 4, !tbaa !11
  %and18 = and i32 %21, 524287
  store i32 %and18, i32* %c17, align 4, !tbaa !11
  %22 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct19 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %22, i32 0, i32 2
  store i32 8, i32* %ct19, align 4, !tbaa !12
  br label %if.end.48

if.else.20:                                       ; preds = %if.else
  %23 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp21 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %23, i32 0, i32 3
  %24 = load i8*, i8** %bp21, align 8, !tbaa !5
  %25 = load i8, i8* %24, align 1, !tbaa !13
  %inc = add i8 %25, 1
  store i8 %inc, i8* %24, align 1, !tbaa !13
  %26 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp22 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %26, i32 0, i32 3
  %27 = load i8*, i8** %bp22, align 8, !tbaa !5
  %28 = load i8, i8* %27, align 1, !tbaa !13
  %conv23 = zext i8 %28 to i32
  %cmp24 = icmp eq i32 %conv23, 255
  br i1 %cmp24, label %if.then.26, label %if.else.38

if.then.26:                                       ; preds = %if.else.20
  %29 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c27 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %29, i32 0, i32 0
  %30 = load i32, i32* %c27, align 4, !tbaa !11
  %and28 = and i32 %30, 134217727
  store i32 %and28, i32* %c27, align 4, !tbaa !11
  %31 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp29 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %31, i32 0, i32 3
  %32 = load i8*, i8** %bp29, align 8, !tbaa !5
  %incdec.ptr30 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr30, i8** %bp29, align 8, !tbaa !5
  %33 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c31 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %33, i32 0, i32 0
  %34 = load i32, i32* %c31, align 4, !tbaa !11
  %shr32 = lshr i32 %34, 20
  %conv33 = trunc i32 %shr32 to i8
  %35 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp34 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %35, i32 0, i32 3
  %36 = load i8*, i8** %bp34, align 8, !tbaa !5
  store i8 %conv33, i8* %36, align 1, !tbaa !13
  %37 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c35 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %37, i32 0, i32 0
  %38 = load i32, i32* %c35, align 4, !tbaa !11
  %and36 = and i32 %38, 1048575
  store i32 %and36, i32* %c35, align 4, !tbaa !11
  %39 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct37 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %39, i32 0, i32 2
  store i32 7, i32* %ct37, align 4, !tbaa !12
  br label %if.end

if.else.38:                                       ; preds = %if.else.20
  %40 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp39 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %40, i32 0, i32 3
  %41 = load i8*, i8** %bp39, align 8, !tbaa !5
  %incdec.ptr40 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr40, i8** %bp39, align 8, !tbaa !5
  %42 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c41 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %42, i32 0, i32 0
  %43 = load i32, i32* %c41, align 4, !tbaa !11
  %shr42 = lshr i32 %43, 19
  %conv43 = trunc i32 %shr42 to i8
  %44 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp44 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %44, i32 0, i32 3
  %45 = load i8*, i8** %bp44, align 8, !tbaa !5
  store i8 %conv43, i8* %45, align 1, !tbaa !13
  %46 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c45 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %46, i32 0, i32 0
  %47 = load i32, i32* %c45, align 4, !tbaa !11
  %and46 = and i32 %47, 524287
  store i32 %and46, i32* %c45, align 4, !tbaa !11
  %48 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct47 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %48, i32 0, i32 2
  store i32 8, i32* %ct47, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else.38, %if.then.26
  br label %if.end.48

if.end.48:                                        ; preds = %if.end, %if.then.10
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_mqc_bypass_init_enc(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %0, i32 0, i32 0
  store i32 0, i32* %c, align 4, !tbaa !11
  %1 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %1, i32 0, i32 2
  store i32 8, i32* %ct, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_mqc_bypass_enc(%struct.opj_mqc* %mqc, i32 %d) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %d.addr = alloca i32, align 4
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  store i32 %d, i32* %d.addr, align 4, !tbaa !14
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %0, i32 0, i32 2
  %1 = load i32, i32* %ct, align 4, !tbaa !12
  %dec = add i32 %1, -1
  store i32 %dec, i32* %ct, align 4, !tbaa !12
  %2 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %2, i32 0, i32 0
  %3 = load i32, i32* %c, align 4, !tbaa !11
  %4 = load i32, i32* %d.addr, align 4, !tbaa !14
  %5 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %5, i32 0, i32 2
  %6 = load i32, i32* %ct1, align 4, !tbaa !12
  %shl = shl i32 %4, %6
  %add = add i32 %3, %shl
  %7 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c2 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %7, i32 0, i32 0
  store i32 %add, i32* %c2, align 4, !tbaa !11
  %8 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct3 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %8, i32 0, i32 2
  %9 = load i32, i32* %ct3, align 4, !tbaa !12
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %10 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %10, i32 0, i32 3
  %11 = load i8*, i8** %bp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !5
  %12 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c4 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %12, i32 0, i32 0
  %13 = load i32, i32* %c4, align 4, !tbaa !11
  %conv = trunc i32 %13 to i8
  %14 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp5 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %14, i32 0, i32 3
  %15 = load i8*, i8** %bp5, align 8, !tbaa !5
  store i8 %conv, i8* %15, align 1, !tbaa !13
  %16 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct6 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %16, i32 0, i32 2
  store i32 8, i32* %ct6, align 4, !tbaa !12
  %17 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp7 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %17, i32 0, i32 3
  %18 = load i8*, i8** %bp7, align 8, !tbaa !5
  %19 = load i8, i8* %18, align 1, !tbaa !13
  %conv8 = zext i8 %19 to i32
  %cmp9 = icmp eq i32 %conv8, 255
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %20 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct12 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %20, i32 0, i32 2
  store i32 7, i32* %ct12, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %21 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c13 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %21, i32 0, i32 0
  store i32 0, i32* %c13, align 4, !tbaa !11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_mqc_bypass_flush_enc(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %bit_padding = alloca i8, align 1
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %bit_padding) #1
  store i8 0, i8* %bit_padding, align 1, !tbaa !13
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %0, i32 0, i32 2
  %1 = load i32, i32* %ct, align 4, !tbaa !12
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %2, i32 0, i32 2
  %3 = load i32, i32* %ct1, align 4, !tbaa !12
  %cmp2 = icmp ugt i32 %3, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct3 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %4, i32 0, i32 2
  %5 = load i32, i32* %ct3, align 4, !tbaa !12
  %dec = add i32 %5, -1
  store i32 %dec, i32* %ct3, align 4, !tbaa !12
  %6 = load i8, i8* %bit_padding, align 1, !tbaa !13
  %conv = zext i8 %6 to i32
  %7 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct4 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %7, i32 0, i32 2
  %8 = load i32, i32* %ct4, align 4, !tbaa !12
  %shl = shl i32 %conv, %8
  %9 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %9, i32 0, i32 0
  %10 = load i32, i32* %c, align 4, !tbaa !11
  %add = add i32 %10, %shl
  store i32 %add, i32* %c, align 4, !tbaa !11
  %11 = load i8, i8* %bit_padding, align 1, !tbaa !13
  %conv5 = zext i8 %11 to i32
  %add6 = add nsw i32 %conv5, 1
  %and = and i32 %add6, 1
  %conv7 = trunc i32 %and to i8
  store i8 %conv7, i8* %bit_padding, align 1, !tbaa !13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %12, i32 0, i32 3
  %13 = load i8*, i8** %bp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !5
  %14 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c8 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %14, i32 0, i32 0
  %15 = load i32, i32* %c8, align 4, !tbaa !11
  %conv9 = trunc i32 %15 to i8
  %16 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp10 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %16, i32 0, i32 3
  %17 = load i8*, i8** %bp10, align 8, !tbaa !5
  store i8 %conv9, i8* %17, align 1, !tbaa !13
  %18 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct11 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %18, i32 0, i32 2
  store i32 8, i32* %ct11, align 4, !tbaa !12
  %19 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c12 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %19, i32 0, i32 0
  store i32 0, i32* %c12, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  call void @llvm.lifetime.end(i64 1, i8* %bit_padding) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @opj_mqc_reset_enc(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_resetstates(%struct.opj_mqc* %0) #5
  %1 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_setstate(%struct.opj_mqc* %1, i32 18, i32 0, i32 46) #5
  %2 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_setstate(%struct.opj_mqc* %2, i32 17, i32 0, i32 3) #5
  %3 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_setstate(%struct.opj_mqc* %3, i32 0, i32 0, i32 4) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_mqc_resetstates(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %i = alloca i32, align 4
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !14
  %cmp = icmp ult i32 %1, 19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %3, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 %idxprom
  store %struct.opj_mqc_state* getelementptr inbounds ([94 x %struct.opj_mqc_state], [94 x %struct.opj_mqc_state]* @mqc_states, i32 0, i32 0), %struct.opj_mqc_state** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_mqc_setstate(%struct.opj_mqc* %mqc, i32 %ctxno, i32 %msb, i32 %prob) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %ctxno.addr = alloca i32, align 4
  %msb.addr = alloca i32, align 4
  %prob.addr = alloca i32, align 4
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  store i32 %ctxno, i32* %ctxno.addr, align 4, !tbaa !14
  store i32 %msb, i32* %msb.addr, align 4, !tbaa !14
  store i32 %prob, i32* %prob.addr, align 4, !tbaa !14
  %0 = load i32, i32* %msb.addr, align 4, !tbaa !14
  %1 = load i32, i32* %prob.addr, align 4, !tbaa !14
  %shl = shl i32 %1, 1
  %add = add i32 %0, %shl
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds [94 x %struct.opj_mqc_state], [94 x %struct.opj_mqc_state]* @mqc_states, i32 0, i64 %idxprom
  %2 = load i32, i32* %ctxno.addr, align 4, !tbaa !14
  %idxprom1 = zext i32 %2 to i64
  %3 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %3, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 %idxprom1
  store %struct.opj_mqc_state* %arrayidx, %struct.opj_mqc_state** %arrayidx2, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_mqc_restart_enc(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %correction = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %correction, align 4, !tbaa !14
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %2, i32 0, i32 2
  %3 = load i32, i32* %ct, align 4, !tbaa !12
  %sub = sub i32 12, %3
  store i32 %sub, i32* %n, align 4, !tbaa !14
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %4, i32 0, i32 2
  %5 = load i32, i32* %ct1, align 4, !tbaa !12
  %6 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %6, i32 0, i32 0
  %7 = load i32, i32* %c, align 4, !tbaa !11
  %shl = shl i32 %7, %5
  store i32 %shl, i32* %c, align 4, !tbaa !11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load i32, i32* %n, align 4, !tbaa !14
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_byteout(%struct.opj_mqc* %9) #5
  %10 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct2 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %10, i32 0, i32 2
  %11 = load i32, i32* %ct2, align 4, !tbaa !12
  %12 = load i32, i32* %n, align 4, !tbaa !14
  %sub3 = sub i32 %12, %11
  store i32 %sub3, i32* %n, align 4, !tbaa !14
  %13 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct4 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %13, i32 0, i32 2
  %14 = load i32, i32* %ct4, align 4, !tbaa !12
  %15 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c5 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %15, i32 0, i32 0
  %16 = load i32, i32* %c5, align 4, !tbaa !11
  %shl6 = shl i32 %16, %14
  store i32 %shl6, i32* %c5, align 4, !tbaa !11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_byteout(%struct.opj_mqc* %17) #5
  %18 = load i32, i32* %correction, align 4, !tbaa !14
  %19 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @opj_mqc_restart_init_enc(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %0, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 0
  %1 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %1, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !9
  %2 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %2, i32 0, i32 1
  store i32 32768, i32* %a, align 4, !tbaa !10
  %3 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %3, i32 0, i32 0
  store i32 0, i32* %c, align 4, !tbaa !11
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %4, i32 0, i32 2
  store i32 12, i32* %ct, align 4, !tbaa !12
  %5 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %5, i32 0, i32 3
  %6 = load i8*, i8** %bp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !5
  %7 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %7, i32 0, i32 3
  %8 = load i8*, i8** %bp1, align 8, !tbaa !5
  %9 = load i8, i8* %8, align 1, !tbaa !13
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct3 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %10, i32 0, i32 2
  store i32 13, i32* %ct3, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_mqc_erterm_enc(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %k = alloca i32, align 4
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %1, i32 0, i32 2
  %2 = load i32, i32* %ct, align 4, !tbaa !12
  %sub = sub i32 11, %2
  %add = add i32 %sub, 1
  store i32 %add, i32* %k, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %k, align 4, !tbaa !14
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %4, i32 0, i32 2
  %5 = load i32, i32* %ct1, align 4, !tbaa !12
  %6 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %6, i32 0, i32 0
  %7 = load i32, i32* %c, align 4, !tbaa !11
  %shl = shl i32 %7, %5
  store i32 %shl, i32* %c, align 4, !tbaa !11
  %8 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct2 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %8, i32 0, i32 2
  store i32 0, i32* %ct2, align 4, !tbaa !12
  %9 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_byteout(%struct.opj_mqc* %9) #5
  %10 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct3 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %10, i32 0, i32 2
  %11 = load i32, i32* %ct3, align 4, !tbaa !12
  %12 = load i32, i32* %k, align 4, !tbaa !14
  %sub4 = sub i32 %12, %11
  store i32 %sub4, i32* %k, align 4, !tbaa !14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %13, i32 0, i32 3
  %14 = load i8*, i8** %bp, align 8, !tbaa !5
  %15 = load i8, i8* %14, align 1, !tbaa !13
  %conv = zext i8 %15 to i32
  %cmp5 = icmp ne i32 %conv, 255
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %16 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_byteout(%struct.opj_mqc* %16) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %17 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_mqc_segmark_enc(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %i = alloca i32, align 4
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %1, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 18
  %2 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %2, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !9
  store i32 1, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !14
  %cmp = icmp ult i32 %3, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %5 = load i32, i32* %i, align 4, !tbaa !14
  %rem = urem i32 %5, 2
  call void @opj_mqc_encode(%struct.opj_mqc* %4, i32 %rem) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_mqc_init_dec(%struct.opj_mqc* %mqc, i8* %bp, i32 %len) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %bp.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  store i8* %bp, i8** %bp.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !14
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ctxs = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %0, i32 0, i32 6
  %arrayidx = getelementptr inbounds [19 x %struct.opj_mqc_state*], [19 x %struct.opj_mqc_state*]* %ctxs, i32 0, i64 0
  %1 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %1, i32 0, i32 7
  store %struct.opj_mqc_state** %arrayidx, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !9
  %2 = load i8*, i8** %bp.addr, align 8, !tbaa !1
  %3 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %3, i32 0, i32 4
  store i8* %2, i8** %start, align 8, !tbaa !8
  %4 = load i8*, i8** %bp.addr, align 8, !tbaa !1
  %5 = load i32, i32* %len.addr, align 4, !tbaa !14
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %6, i32 0, i32 5
  store i8* %add.ptr, i8** %end, align 8, !tbaa !20
  %7 = load i8*, i8** %bp.addr, align 8, !tbaa !1
  %8 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %8, i32 0, i32 3
  store i8* %7, i8** %bp1, align 8, !tbaa !5
  %9 = load i32, i32* %len.addr, align 4, !tbaa !14
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %10, i32 0, i32 0
  store i32 16711680, i32* %c, align 4, !tbaa !11
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp2 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %11, i32 0, i32 3
  %12 = load i8*, i8** %bp2, align 8, !tbaa !5
  %13 = load i8, i8* %12, align 1, !tbaa !13
  %conv = zext i8 %13 to i32
  %shl = shl i32 %conv, 16
  %14 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c3 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %14, i32 0, i32 0
  store i32 %shl, i32* %c3, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_bytein(%struct.opj_mqc* %15) #5
  %16 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c4 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %16, i32 0, i32 0
  %17 = load i32, i32* %c4, align 4, !tbaa !11
  %shl5 = shl i32 %17, 7
  store i32 %shl5, i32* %c4, align 4, !tbaa !11
  %18 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %18, i32 0, i32 2
  %19 = load i32, i32* %ct, align 4, !tbaa !12
  %sub = sub i32 %19, 7
  store i32 %sub, i32* %ct, align 4, !tbaa !12
  %20 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %20, i32 0, i32 1
  store i32 32768, i32* %a, align 4, !tbaa !10
  ret i32 1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @opj_mqc_bytein(%struct.opj_mqc* %mqc) #3 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %c = alloca i32, align 4
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %0, i32 0, i32 3
  %1 = load i8*, i8** %bp, align 8, !tbaa !5
  %2 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %2, i32 0, i32 5
  %3 = load i8*, i8** %end, align 8, !tbaa !20
  %cmp = icmp ne i8* %1, %3
  br i1 %cmp, label %if.then, label %if.else.30

if.then:                                          ; preds = %entry
  %4 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %5, i32 0, i32 3
  %6 = load i8*, i8** %bp1, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %end2 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %7, i32 0, i32 5
  %8 = load i8*, i8** %end2, align 8, !tbaa !20
  %cmp3 = icmp ne i8* %add.ptr, %8
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %9 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp5 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %9, i32 0, i32 3
  %10 = load i8*, i8** %bp5, align 8, !tbaa !5
  %add.ptr6 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %add.ptr6, align 1, !tbaa !13
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 255, i32* %c, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %12 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp7 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %12, i32 0, i32 3
  %13 = load i8*, i8** %bp7, align 8, !tbaa !5
  %14 = load i8, i8* %13, align 1, !tbaa !13
  %conv8 = zext i8 %14 to i32
  %cmp9 = icmp eq i32 %conv8, 255
  br i1 %cmp9, label %if.then.11, label %if.else.22

if.then.11:                                       ; preds = %if.end
  %15 = load i32, i32* %c, align 4, !tbaa !14
  %cmp12 = icmp ugt i32 %15, 143
  br i1 %cmp12, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.then.11
  %16 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c15 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %16, i32 0, i32 0
  %17 = load i32, i32* %c15, align 4, !tbaa !11
  %add = add i32 %17, 65280
  store i32 %add, i32* %c15, align 4, !tbaa !11
  %18 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %18, i32 0, i32 2
  store i32 8, i32* %ct, align 4, !tbaa !12
  br label %if.end.21

if.else.16:                                       ; preds = %if.then.11
  %19 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp17 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %19, i32 0, i32 3
  %20 = load i8*, i8** %bp17, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %bp17, align 8, !tbaa !5
  %21 = load i32, i32* %c, align 4, !tbaa !14
  %shl = shl i32 %21, 9
  %22 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c18 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %22, i32 0, i32 0
  %23 = load i32, i32* %c18, align 4, !tbaa !11
  %add19 = add i32 %23, %shl
  store i32 %add19, i32* %c18, align 4, !tbaa !11
  %24 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct20 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %24, i32 0, i32 2
  store i32 7, i32* %ct20, align 4, !tbaa !12
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.16, %if.then.14
  br label %if.end.29

if.else.22:                                       ; preds = %if.end
  %25 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %bp23 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %25, i32 0, i32 3
  %26 = load i8*, i8** %bp23, align 8, !tbaa !5
  %incdec.ptr24 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr24, i8** %bp23, align 8, !tbaa !5
  %27 = load i32, i32* %c, align 4, !tbaa !14
  %shl25 = shl i32 %27, 8
  %28 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c26 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %28, i32 0, i32 0
  %29 = load i32, i32* %c26, align 4, !tbaa !11
  %add27 = add i32 %29, %shl25
  store i32 %add27, i32* %c26, align 4, !tbaa !11
  %30 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct28 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %30, i32 0, i32 2
  store i32 8, i32* %ct28, align 4, !tbaa !12
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.22, %if.end.21
  %31 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  br label %if.end.34

if.else.30:                                       ; preds = %entry
  %32 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c31 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %32, i32 0, i32 0
  %33 = load i32, i32* %c31, align 4, !tbaa !11
  %add32 = add i32 %33, 65280
  store i32 %add32, i32* %c31, align 4, !tbaa !11
  %34 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct33 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %34, i32 0, i32 2
  store i32 8, i32* %ct33, align 4, !tbaa !12
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.30, %if.end.29
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_mqc_decode(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %d = alloca i32, align 4
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %1, i32 0, i32 7
  %2 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !9
  %3 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %2, align 8, !tbaa !1
  %qeval = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %3, i32 0, i32 0
  %4 = load i32, i32* %qeval, align 4, !tbaa !17
  %5 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %5, i32 0, i32 1
  %6 = load i32, i32* %a, align 4, !tbaa !10
  %sub = sub i32 %6, %4
  store i32 %sub, i32* %a, align 4, !tbaa !10
  %7 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %7, i32 0, i32 0
  %8 = load i32, i32* %c, align 4, !tbaa !11
  %shr = lshr i32 %8, 16
  %9 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %9, i32 0, i32 7
  %10 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx1, align 8, !tbaa !9
  %11 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %10, align 8, !tbaa !1
  %qeval2 = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %11, i32 0, i32 0
  %12 = load i32, i32* %qeval2, align 4, !tbaa !17
  %cmp = icmp ult i32 %shr, %12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %call = call i32 @opj_mqc_lpsexchange(%struct.opj_mqc* %13) #5
  store i32 %call, i32* %d, align 4, !tbaa !14
  %14 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_renormd(%struct.opj_mqc* %14) #5
  br label %if.end.13

if.else:                                          ; preds = %entry
  %15 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx3 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %15, i32 0, i32 7
  %16 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx3, align 8, !tbaa !9
  %17 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %16, align 8, !tbaa !1
  %qeval4 = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %17, i32 0, i32 0
  %18 = load i32, i32* %qeval4, align 4, !tbaa !17
  %shl = shl i32 %18, 16
  %19 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c5 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %19, i32 0, i32 0
  %20 = load i32, i32* %c5, align 4, !tbaa !11
  %sub6 = sub i32 %20, %shl
  store i32 %sub6, i32* %c5, align 4, !tbaa !11
  %21 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a7 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %21, i32 0, i32 1
  %22 = load i32, i32* %a7, align 4, !tbaa !10
  %and = and i32 %22, 32768
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else
  %23 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %call10 = call i32 @opj_mqc_mpsexchange(%struct.opj_mqc* %23) #5
  store i32 %call10, i32* %d, align 4, !tbaa !14
  %24 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_renormd(%struct.opj_mqc* %24) #5
  br label %if.end

if.else.11:                                       ; preds = %if.else
  %25 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx12 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %25, i32 0, i32 7
  %26 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx12, align 8, !tbaa !9
  %27 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %26, align 8, !tbaa !1
  %mps = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %27, i32 0, i32 1
  %28 = load i32, i32* %mps, align 4, !tbaa !15
  store i32 %28, i32* %d, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %29 = load i32, i32* %d, align 4, !tbaa !14
  %30 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  ret i32 %29
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_mqc_lpsexchange(%struct.opj_mqc* %mqc) #3 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %d = alloca i32, align 4
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %1, i32 0, i32 1
  %2 = load i32, i32* %a, align 4, !tbaa !10
  %3 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %3, i32 0, i32 7
  %4 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !9
  %5 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %4, align 8, !tbaa !1
  %qeval = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %5, i32 0, i32 0
  %6 = load i32, i32* %qeval, align 4, !tbaa !17
  %cmp = icmp ult i32 %2, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %7, i32 0, i32 7
  %8 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx1, align 8, !tbaa !9
  %9 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %8, align 8, !tbaa !1
  %qeval2 = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %9, i32 0, i32 0
  %10 = load i32, i32* %qeval2, align 4, !tbaa !17
  %11 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a3 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %11, i32 0, i32 1
  store i32 %10, i32* %a3, align 4, !tbaa !10
  %12 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx4 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %12, i32 0, i32 7
  %13 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx4, align 8, !tbaa !9
  %14 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %13, align 8, !tbaa !1
  %mps = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %14, i32 0, i32 1
  %15 = load i32, i32* %mps, align 4, !tbaa !15
  store i32 %15, i32* %d, align 4, !tbaa !14
  %16 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx5 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %16, i32 0, i32 7
  %17 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx5, align 8, !tbaa !9
  %18 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %17, align 8, !tbaa !1
  %nmps = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %18, i32 0, i32 2
  %19 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %nmps, align 8, !tbaa !18
  %20 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx6 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %20, i32 0, i32 7
  %21 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx6, align 8, !tbaa !9
  store %struct.opj_mqc_state* %19, %struct.opj_mqc_state** %21, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx7 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %22, i32 0, i32 7
  %23 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx7, align 8, !tbaa !9
  %24 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %23, align 8, !tbaa !1
  %qeval8 = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %24, i32 0, i32 0
  %25 = load i32, i32* %qeval8, align 4, !tbaa !17
  %26 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a9 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %26, i32 0, i32 1
  store i32 %25, i32* %a9, align 4, !tbaa !10
  %27 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx10 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %27, i32 0, i32 7
  %28 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx10, align 8, !tbaa !9
  %29 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %28, align 8, !tbaa !1
  %mps11 = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %29, i32 0, i32 1
  %30 = load i32, i32* %mps11, align 4, !tbaa !15
  %sub = sub i32 1, %30
  store i32 %sub, i32* %d, align 4, !tbaa !14
  %31 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx12 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %31, i32 0, i32 7
  %32 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx12, align 8, !tbaa !9
  %33 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %32, align 8, !tbaa !1
  %nlps = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %33, i32 0, i32 3
  %34 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %nlps, align 8, !tbaa !19
  %35 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx13 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %35, i32 0, i32 7
  %36 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx13, align 8, !tbaa !9
  store %struct.opj_mqc_state* %34, %struct.opj_mqc_state** %36, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %37 = load i32, i32* %d, align 4, !tbaa !14
  %38 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  ret i32 %37
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @opj_mqc_renormd(%struct.opj_mqc* %mqc) #3 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %0, i32 0, i32 2
  %1 = load i32, i32* %ct, align 4, !tbaa !12
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_bytein(%struct.opj_mqc* %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %3 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %3, i32 0, i32 1
  %4 = load i32, i32* %a, align 4, !tbaa !10
  %shl = shl i32 %4, 1
  store i32 %shl, i32* %a, align 4, !tbaa !10
  %5 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %5, i32 0, i32 0
  %6 = load i32, i32* %c, align 4, !tbaa !11
  %shl1 = shl i32 %6, 1
  store i32 %shl1, i32* %c, align 4, !tbaa !11
  %7 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct2 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %7, i32 0, i32 2
  %8 = load i32, i32* %ct2, align 4, !tbaa !12
  %dec = add i32 %8, -1
  store i32 %dec, i32* %ct2, align 4, !tbaa !12
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %9 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a3 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %9, i32 0, i32 1
  %10 = load i32, i32* %a3, align 4, !tbaa !10
  %cmp4 = icmp ult i32 %10, 32768
  br i1 %cmp4, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_mqc_mpsexchange(%struct.opj_mqc* %mqc) #3 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  %d = alloca i32, align 4
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %1, i32 0, i32 1
  %2 = load i32, i32* %a, align 4, !tbaa !10
  %3 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %3, i32 0, i32 7
  %4 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx, align 8, !tbaa !9
  %5 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %4, align 8, !tbaa !1
  %qeval = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %5, i32 0, i32 0
  %6 = load i32, i32* %qeval, align 4, !tbaa !17
  %cmp = icmp ult i32 %2, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx1 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %7, i32 0, i32 7
  %8 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx1, align 8, !tbaa !9
  %9 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %8, align 8, !tbaa !1
  %mps = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %9, i32 0, i32 1
  %10 = load i32, i32* %mps, align 4, !tbaa !15
  %sub = sub i32 1, %10
  store i32 %sub, i32* %d, align 4, !tbaa !14
  %11 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx2 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %11, i32 0, i32 7
  %12 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx2, align 8, !tbaa !9
  %13 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %12, align 8, !tbaa !1
  %nlps = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %13, i32 0, i32 3
  %14 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %nlps, align 8, !tbaa !19
  %15 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx3 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %15, i32 0, i32 7
  %16 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx3, align 8, !tbaa !9
  store %struct.opj_mqc_state* %14, %struct.opj_mqc_state** %16, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx4 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %17, i32 0, i32 7
  %18 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx4, align 8, !tbaa !9
  %19 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %18, align 8, !tbaa !1
  %mps5 = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %19, i32 0, i32 1
  %20 = load i32, i32* %mps5, align 4, !tbaa !15
  store i32 %20, i32* %d, align 4, !tbaa !14
  %21 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx6 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %21, i32 0, i32 7
  %22 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx6, align 8, !tbaa !9
  %23 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %22, align 8, !tbaa !1
  %nmps = getelementptr inbounds %struct.opj_mqc_state, %struct.opj_mqc_state* %23, i32 0, i32 2
  %24 = load %struct.opj_mqc_state*, %struct.opj_mqc_state** %nmps, align 8, !tbaa !18
  %25 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %curctx7 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %25, i32 0, i32 7
  %26 = load %struct.opj_mqc_state**, %struct.opj_mqc_state*** %curctx7, align 8, !tbaa !9
  store %struct.opj_mqc_state* %24, %struct.opj_mqc_state** %26, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %27 = load i32, i32* %d, align 4, !tbaa !14
  %28 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal void @opj_mqc_renorme(%struct.opj_mqc* %mqc) #0 {
entry:
  %mqc.addr = alloca %struct.opj_mqc*, align 8
  store %struct.opj_mqc* %mqc, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %0, i32 0, i32 1
  %1 = load i32, i32* %a, align 4, !tbaa !10
  %shl = shl i32 %1, 1
  store i32 %shl, i32* %a, align 4, !tbaa !10
  %2 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %2, i32 0, i32 0
  %3 = load i32, i32* %c, align 4, !tbaa !11
  %shl1 = shl i32 %3, 1
  store i32 %shl1, i32* %c, align 4, !tbaa !11
  %4 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %4, i32 0, i32 2
  %5 = load i32, i32* %ct, align 4, !tbaa !12
  %dec = add i32 %5, -1
  store i32 %dec, i32* %ct, align 4, !tbaa !12
  %6 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %ct2 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %6, i32 0, i32 2
  %7 = load i32, i32* %ct2, align 4, !tbaa !12
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %8 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  call void @opj_mqc_byteout(%struct.opj_mqc* %8) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %9 = load %struct.opj_mqc*, %struct.opj_mqc** %mqc.addr, align 8, !tbaa !1
  %a3 = getelementptr inbounds %struct.opj_mqc, %struct.opj_mqc* %9, i32 0, i32 1
  %10 = load i32, i32* %a3, align 4, !tbaa !10
  %and = and i32 %10, 32768
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 16}
!6 = !{!"opj_mqc", !7, i64 0, !7, i64 4, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !3, i64 40, !2, i64 192}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !2, i64 24}
!9 = !{!6, !2, i64 192}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 0}
!12 = !{!6, !7, i64 8}
!13 = !{!3, !3, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !7, i64 4}
!16 = !{!"opj_mqc_state", !7, i64 0, !7, i64 4, !2, i64 8, !2, i64 16}
!17 = !{!16, !7, i64 0}
!18 = !{!16, !2, i64 8}
!19 = !{!16, !2, i64 16}
!20 = !{!6, !2, i64 32}
