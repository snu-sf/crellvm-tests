; ModuleID = 'eval.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@std_material = global [14 x i32] [i32 0, i32 100, i32 -100, i32 310, i32 -310, i32 4000, i32 -4000, i32 500, i32 -500, i32 900, i32 -900, i32 325, i32 -325, i32 0], align 16
@zh_material = global [14 x i32] [i32 0, i32 100, i32 -100, i32 210, i32 -210, i32 4000, i32 -4000, i32 250, i32 -250, i32 450, i32 -450, i32 230, i32 -230, i32 0], align 16
@suicide_material = global [14 x i32] [i32 0, i32 15, i32 -15, i32 150, i32 -150, i32 500, i32 -500, i32 150, i32 -150, i32 50, i32 -50, i32 0, i32 0, i32 0], align 16
@losers_material = global [14 x i32] [i32 0, i32 80, i32 -80, i32 320, i32 -320, i32 1000, i32 -1000, i32 350, i32 -350, i32 400, i32 -400, i32 270, i32 -270, i32 0], align 16
@material = global [14 x i32] zeroinitializer, align 16
@Xfile = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Xrank = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Xdiagl = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 0, i32 0, i32 0, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Xdiagr = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 0, i32 0, i32 0, i32 0, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 0, i32 0, i32 0, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sqcolor = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@pcsqbishop = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 10, i32 5, i32 10, i32 10, i32 5, i32 10, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 5, i32 6, i32 15, i32 15, i32 6, i32 5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 3, i32 15, i32 10, i32 10, i32 15, i32 3, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 3, i32 15, i32 10, i32 10, i32 15, i32 3, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 5, i32 6, i32 15, i32 15, i32 6, i32 5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 10, i32 5, i32 10, i32 10, i32 5, i32 10, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_knight = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 25, i32 25, i32 25, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 35, i32 35, i32 35, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 10, i32 25, i32 20, i32 25, i32 25, i32 10, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 20, i32 20, i32 20, i32 20, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -35, i32 -10, i32 -10, i32 -10, i32 -10, i32 -35, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_knight = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -35, i32 -10, i32 -10, i32 -10, i32 -10, i32 -35, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 20, i32 20, i32 20, i32 20, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 10, i32 25, i32 20, i32 25, i32 25, i32 10, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 35, i32 35, i32 35, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 25, i32 25, i32 25, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_pawn = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 25, i32 35, i32 5, i32 5, i32 50, i32 45, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 20, i32 20, i32 10, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 12, i32 18, i32 18, i32 27, i32 27, i32 18, i32 18, i32 18, i32 0, i32 0, i32 0, i32 0, i32 25, i32 30, i32 30, i32 35, i32 35, i32 35, i32 30, i32 25, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_pawn = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 30, i32 30, i32 30, i32 35, i32 35, i32 35, i32 30, i32 25, i32 0, i32 0, i32 0, i32 0, i32 12, i32 18, i32 18, i32 27, i32 27, i32 18, i32 18, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 20, i32 20, i32 10, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 25, i32 35, i32 5, i32 5, i32 50, i32 45, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_king = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -100, i32 7, i32 4, i32 0, i32 10, i32 4, i32 7, i32 -100, i32 0, i32 0, i32 0, i32 0, i32 -250, i32 -200, i32 -150, i32 -100, i32 -100, i32 -150, i32 -200, i32 -250, i32 0, i32 0, i32 0, i32 0, i32 -350, i32 -300, i32 -300, i32 -250, i32 -250, i32 -300, i32 -300, i32 -350, i32 0, i32 0, i32 0, i32 0, i32 -400, i32 -400, i32 -400, i32 -350, i32 -350, i32 -400, i32 -400, i32 -400, i32 0, i32 0, i32 0, i32 0, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_king = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 0, i32 0, i32 0, i32 0, i32 -400, i32 -400, i32 -400, i32 -350, i32 -350, i32 -400, i32 -400, i32 -400, i32 0, i32 0, i32 0, i32 0, i32 -350, i32 -300, i32 -300, i32 -250, i32 -250, i32 -300, i32 -300, i32 -350, i32 0, i32 0, i32 0, i32 0, i32 -250, i32 -200, i32 -150, i32 -100, i32 -100, i32 -150, i32 -200, i32 -250, i32 0, i32 0, i32 0, i32 0, i32 -100, i32 7, i32 4, i32 0, i32 10, i32 4, i32 7, i32 -100, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_queen = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 10, i32 10, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 0, i32 0, i32 0, i32 0, i32 -60, i32 -40, i32 -40, i32 -60, i32 -60, i32 -40, i32 -40, i32 -60, i32 0, i32 0, i32 0, i32 0, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_queen = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 0, i32 0, i32 0, i32 0, i32 -60, i32 -40, i32 -40, i32 -60, i32 -60, i32 -40, i32 -40, i32 -60, i32 0, i32 0, i32 0, i32 0, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 10, i32 10, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_rook = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 25, i32 25, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -30, i32 -30, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_rook = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -30, i32 -30, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 25, i32 25, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@upscale = constant [64 x i32] [i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117], align 16
@pre_p_tropism = global [9 x i32] [i32 9999, i32 40, i32 20, i32 10, i32 3, i32 1, i32 1, i32 0, i32 9999], align 16
@pre_r_tropism = global [9 x i32] [i32 9999, i32 50, i32 40, i32 15, i32 5, i32 1, i32 1, i32 0, i32 9999], align 16
@pre_n_tropism = global [9 x i32] [i32 9999, i32 50, i32 70, i32 35, i32 10, i32 2, i32 1, i32 0, i32 9999], align 16
@pre_q_tropism = global [9 x i32] [i32 9999, i32 100, i32 60, i32 20, i32 5, i32 2, i32 0, i32 0, i32 9999], align 16
@pre_b_tropism = global [9 x i32] [i32 9999, i32 50, i32 25, i32 15, i32 5, i32 2, i32 2, i32 2, i32 9999], align 16
@ksafety_scaled = global [15 x [9 x i32]] [[9 x i32] [i32 -5, i32 5, i32 10, i32 15, i32 50, i32 80, i32 150, i32 150, i32 150], [9 x i32] [i32 -5, i32 15, i32 20, i32 25, i32 70, i32 150, i32 200, i32 200, i32 200], [9 x i32] [i32 -5, i32 15, i32 30, i32 30, i32 100, i32 200, i32 300, i32 300, i32 300], [9 x i32] [i32 -10, i32 20, i32 40, i32 40, i32 100, i32 200, i32 300, i32 300, i32 400], [9 x i32] [i32 -10, i32 30, i32 50, i32 80, i32 150, i32 300, i32 400, i32 400, i32 500], [9 x i32] [i32 -10, i32 35, i32 60, i32 100, i32 200, i32 250, i32 400, i32 400, i32 500], [9 x i32] [i32 -10, i32 40, i32 70, i32 110, i32 210, i32 300, i32 500, i32 500, i32 600], [9 x i32] [i32 -10, i32 45, i32 75, i32 125, i32 215, i32 300, i32 500, i32 600, i32 700], [9 x i32] [i32 -10, i32 60, i32 90, i32 130, i32 240, i32 350, i32 500, i32 600, i32 700], [9 x i32] [i32 -15, i32 60, i32 95, i32 145, i32 260, i32 350, i32 500, i32 600, i32 700], [9 x i32] [i32 -15, i32 60, i32 100, i32 150, i32 270, i32 350, i32 500, i32 600, i32 700], [9 x i32] [i32 -15, i32 60, i32 110, i32 160, i32 280, i32 400, i32 600, i32 700, i32 800], [9 x i32] [i32 -20, i32 70, i32 115, i32 165, i32 290, i32 400, i32 600, i32 700, i32 800], [9 x i32] [i32 -20, i32 80, i32 120, i32 170, i32 300, i32 450, i32 700, i32 800, i32 900], [9 x i32] [i32 -20, i32 80, i32 125, i32 175, i32 310, i32 450, i32 700, i32 800, i32 900]], align 16
@rookdistance = external global [144 x [144 x i32]], align 16
@distance = external global [144 x [144 x i32]], align 16
@p_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@b_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@n_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@r_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@q_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@Variant = external global i32, align 4
@white_to_move = external global i32, align 4
@cfg_devscale = external global i32, align 4
@comp_color = external global i32, align 4
@white_hand_eval = external global i32, align 4
@black_hand_eval = external global i32, align 4
@piece_count = external global i32, align 4
@pieces = external global [62 x i32], align 16
@board = external global [144 x i32], align 16
@bking_loc = external global i32, align 4
@wking_loc = external global i32, align 4
@white_castled = external global i32, align 4
@moved = external global [144 x i32], align 16
@black_castled = external global i32, align 4
@cfg_smarteval = external global i32, align 4
@cfg_attackeval = external global i32, align 4
@Material = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @initialize_eval() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sd = alloca i32, align 4
  %sdi = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 64
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %i, align 4
  %and = and i32 %2, 7
  %3 = load i32, i32* %j, align 4
  %and4 = and i32 %3, 7
  %sub = sub nsw i32 %and, %and4
  %call = call i32 @abs(i32 %sub) #3
  store i32 %call, i32* %sd, align 4
  %4 = load i32, i32* %i, align 4
  %shr = ashr i32 %4, 3
  %5 = load i32, i32* %j, align 4
  %shr5 = ashr i32 %5, 3
  %sub6 = sub nsw i32 %shr, %shr5
  %call7 = call i32 @abs(i32 %sub6) #3
  store i32 %call7, i32* %sdi, align 4
  %6 = load i32, i32* %sd, align 4
  %7 = load i32, i32* %sdi, align 4
  %add = add nsw i32 %6, %7
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* @upscale, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [64 x i32], [64 x i32]* @upscale, i32 0, i64 %idxprom9
  %11 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @rookdistance, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx12, i32 0, i64 %idxprom8
  store i32 %add, i32* %arrayidx13, align 4
  %12 = load i32, i32* %sd, align 4
  %13 = load i32, i32* %sdi, align 4
  %cmp14 = icmp sgt i32 %12, %13
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.3
  %14 = load i32, i32* %sd, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.3
  %15 = load i32, i32* %sdi, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  %16 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [64 x i32], [64 x i32]* @upscale, i32 0, i64 %idxprom15
  %17 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [64 x i32], [64 x i32]* @upscale, i32 0, i64 %idxprom18
  %19 = load i32, i32* %arrayidx19, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @distance, i32 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx21, i32 0, i64 %idxprom17
  store i32 %cond, i32* %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %21, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.218, %for.end.25
  %22 = load i32, i32* %i, align 4
  %cmp27 = icmp slt i32 %22, 144
  br i1 %cmp27, label %for.body.28, label %for.end.220

for.body.28:                                      ; preds = %for.cond.26
  store i32 0, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.215, %for.body.28
  %23 = load i32, i32* %j, align 4
  %cmp30 = icmp slt i32 %23, 144
  br i1 %cmp30, label %for.body.31, label %for.end.217

for.body.31:                                      ; preds = %for.cond.29
  %24 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %24 to i64
  %arrayidx33 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom32
  %25 = load i32, i32* %arrayidx33, align 4
  %26 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom34
  %27 = load i32, i32* %arrayidx35, align 4
  %sub36 = sub nsw i32 %25, %27
  %call37 = call i32 @abs(i32 %sub36) #3
  %28 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom38
  %29 = load i32, i32* %arrayidx39, align 4
  %30 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %30 to i64
  %arrayidx41 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom40
  %31 = load i32, i32* %arrayidx41, align 4
  %sub42 = sub nsw i32 %29, %31
  %call43 = call i32 @abs(i32 %sub42) #3
  %cmp44 = icmp sgt i32 %call37, %call43
  br i1 %cmp44, label %cond.true.45, label %cond.false.52

cond.true.45:                                     ; preds = %for.body.31
  %32 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %32 to i64
  %arrayidx47 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom46
  %33 = load i32, i32* %arrayidx47, align 4
  %34 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %34 to i64
  %arrayidx49 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom48
  %35 = load i32, i32* %arrayidx49, align 4
  %sub50 = sub nsw i32 %33, %35
  %call51 = call i32 @abs(i32 %sub50) #3
  br label %cond.end.59

cond.false.52:                                    ; preds = %for.body.31
  %36 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %36 to i64
  %arrayidx54 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom53
  %37 = load i32, i32* %arrayidx54, align 4
  %38 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %38 to i64
  %arrayidx56 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom55
  %39 = load i32, i32* %arrayidx56, align 4
  %sub57 = sub nsw i32 %37, %39
  %call58 = call i32 @abs(i32 %sub57) #3
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.52, %cond.true.45
  %cond60 = phi i32 [ %call51, %cond.true.45 ], [ %call58, %cond.false.52 ]
  %idxprom61 = sext i32 %cond60 to i64
  %arrayidx62 = getelementptr inbounds [9 x i32], [9 x i32]* @pre_p_tropism, i32 0, i64 %idxprom61
  %40 = load i32, i32* %arrayidx62, align 4
  %conv = trunc i32 %40 to i8
  %41 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %41 to i64
  %42 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %42 to i64
  %arrayidx65 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @p_tropism, i32 0, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx65, i32 0, i64 %idxprom63
  store i8 %conv, i8* %arrayidx66, align 1
  %43 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %43 to i64
  %arrayidx68 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom67
  %44 = load i32, i32* %arrayidx68, align 4
  %45 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %45 to i64
  %arrayidx70 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom69
  %46 = load i32, i32* %arrayidx70, align 4
  %sub71 = sub nsw i32 %44, %46
  %call72 = call i32 @abs(i32 %sub71) #3
  %47 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %47 to i64
  %arrayidx74 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom73
  %48 = load i32, i32* %arrayidx74, align 4
  %49 = load i32, i32* %j, align 4
  %idxprom75 = sext i32 %49 to i64
  %arrayidx76 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom75
  %50 = load i32, i32* %arrayidx76, align 4
  %sub77 = sub nsw i32 %48, %50
  %call78 = call i32 @abs(i32 %sub77) #3
  %cmp79 = icmp sgt i32 %call72, %call78
  br i1 %cmp79, label %cond.true.81, label %cond.false.88

cond.true.81:                                     ; preds = %cond.end.59
  %51 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %51 to i64
  %arrayidx83 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom82
  %52 = load i32, i32* %arrayidx83, align 4
  %53 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %53 to i64
  %arrayidx85 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom84
  %54 = load i32, i32* %arrayidx85, align 4
  %sub86 = sub nsw i32 %52, %54
  %call87 = call i32 @abs(i32 %sub86) #3
  br label %cond.end.95

cond.false.88:                                    ; preds = %cond.end.59
  %55 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %55 to i64
  %arrayidx90 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom89
  %56 = load i32, i32* %arrayidx90, align 4
  %57 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %57 to i64
  %arrayidx92 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom91
  %58 = load i32, i32* %arrayidx92, align 4
  %sub93 = sub nsw i32 %56, %58
  %call94 = call i32 @abs(i32 %sub93) #3
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.88, %cond.true.81
  %cond96 = phi i32 [ %call87, %cond.true.81 ], [ %call94, %cond.false.88 ]
  %idxprom97 = sext i32 %cond96 to i64
  %arrayidx98 = getelementptr inbounds [9 x i32], [9 x i32]* @pre_b_tropism, i32 0, i64 %idxprom97
  %59 = load i32, i32* %arrayidx98, align 4
  %conv99 = trunc i32 %59 to i8
  %60 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %60 to i64
  %61 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %61 to i64
  %arrayidx102 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @b_tropism, i32 0, i64 %idxprom101
  %arrayidx103 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx102, i32 0, i64 %idxprom100
  store i8 %conv99, i8* %arrayidx103, align 1
  %62 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %62 to i64
  %arrayidx105 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom104
  %63 = load i32, i32* %arrayidx105, align 4
  %64 = load i32, i32* %j, align 4
  %idxprom106 = sext i32 %64 to i64
  %arrayidx107 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom106
  %65 = load i32, i32* %arrayidx107, align 4
  %sub108 = sub nsw i32 %63, %65
  %call109 = call i32 @abs(i32 %sub108) #3
  %66 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %66 to i64
  %arrayidx111 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom110
  %67 = load i32, i32* %arrayidx111, align 4
  %68 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %68 to i64
  %arrayidx113 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom112
  %69 = load i32, i32* %arrayidx113, align 4
  %sub114 = sub nsw i32 %67, %69
  %call115 = call i32 @abs(i32 %sub114) #3
  %cmp116 = icmp sgt i32 %call109, %call115
  br i1 %cmp116, label %cond.true.118, label %cond.false.125

cond.true.118:                                    ; preds = %cond.end.95
  %70 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %70 to i64
  %arrayidx120 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom119
  %71 = load i32, i32* %arrayidx120, align 4
  %72 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %72 to i64
  %arrayidx122 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom121
  %73 = load i32, i32* %arrayidx122, align 4
  %sub123 = sub nsw i32 %71, %73
  %call124 = call i32 @abs(i32 %sub123) #3
  br label %cond.end.132

cond.false.125:                                   ; preds = %cond.end.95
  %74 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %74 to i64
  %arrayidx127 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom126
  %75 = load i32, i32* %arrayidx127, align 4
  %76 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %76 to i64
  %arrayidx129 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom128
  %77 = load i32, i32* %arrayidx129, align 4
  %sub130 = sub nsw i32 %75, %77
  %call131 = call i32 @abs(i32 %sub130) #3
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.125, %cond.true.118
  %cond133 = phi i32 [ %call124, %cond.true.118 ], [ %call131, %cond.false.125 ]
  %idxprom134 = sext i32 %cond133 to i64
  %arrayidx135 = getelementptr inbounds [9 x i32], [9 x i32]* @pre_n_tropism, i32 0, i64 %idxprom134
  %78 = load i32, i32* %arrayidx135, align 4
  %conv136 = trunc i32 %78 to i8
  %79 = load i32, i32* %j, align 4
  %idxprom137 = sext i32 %79 to i64
  %80 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %80 to i64
  %arrayidx139 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @n_tropism, i32 0, i64 %idxprom138
  %arrayidx140 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx139, i32 0, i64 %idxprom137
  store i8 %conv136, i8* %arrayidx140, align 1
  %81 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %81 to i64
  %arrayidx142 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom141
  %82 = load i32, i32* %arrayidx142, align 4
  %83 = load i32, i32* %j, align 4
  %idxprom143 = sext i32 %83 to i64
  %arrayidx144 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom143
  %84 = load i32, i32* %arrayidx144, align 4
  %sub145 = sub nsw i32 %82, %84
  %call146 = call i32 @abs(i32 %sub145) #3
  %85 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %85 to i64
  %arrayidx148 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom147
  %86 = load i32, i32* %arrayidx148, align 4
  %87 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %87 to i64
  %arrayidx150 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom149
  %88 = load i32, i32* %arrayidx150, align 4
  %sub151 = sub nsw i32 %86, %88
  %call152 = call i32 @abs(i32 %sub151) #3
  %cmp153 = icmp sgt i32 %call146, %call152
  br i1 %cmp153, label %cond.true.155, label %cond.false.162

cond.true.155:                                    ; preds = %cond.end.132
  %89 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %89 to i64
  %arrayidx157 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom156
  %90 = load i32, i32* %arrayidx157, align 4
  %91 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %91 to i64
  %arrayidx159 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom158
  %92 = load i32, i32* %arrayidx159, align 4
  %sub160 = sub nsw i32 %90, %92
  %call161 = call i32 @abs(i32 %sub160) #3
  br label %cond.end.169

cond.false.162:                                   ; preds = %cond.end.132
  %93 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %93 to i64
  %arrayidx164 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom163
  %94 = load i32, i32* %arrayidx164, align 4
  %95 = load i32, i32* %j, align 4
  %idxprom165 = sext i32 %95 to i64
  %arrayidx166 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom165
  %96 = load i32, i32* %arrayidx166, align 4
  %sub167 = sub nsw i32 %94, %96
  %call168 = call i32 @abs(i32 %sub167) #3
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.162, %cond.true.155
  %cond170 = phi i32 [ %call161, %cond.true.155 ], [ %call168, %cond.false.162 ]
  %idxprom171 = sext i32 %cond170 to i64
  %arrayidx172 = getelementptr inbounds [9 x i32], [9 x i32]* @pre_r_tropism, i32 0, i64 %idxprom171
  %97 = load i32, i32* %arrayidx172, align 4
  %conv173 = trunc i32 %97 to i8
  %98 = load i32, i32* %j, align 4
  %idxprom174 = sext i32 %98 to i64
  %99 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %99 to i64
  %arrayidx176 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @r_tropism, i32 0, i64 %idxprom175
  %arrayidx177 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx176, i32 0, i64 %idxprom174
  store i8 %conv173, i8* %arrayidx177, align 1
  %100 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %100 to i64
  %arrayidx179 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom178
  %101 = load i32, i32* %arrayidx179, align 4
  %102 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %102 to i64
  %arrayidx181 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom180
  %103 = load i32, i32* %arrayidx181, align 4
  %sub182 = sub nsw i32 %101, %103
  %call183 = call i32 @abs(i32 %sub182) #3
  %104 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %104 to i64
  %arrayidx185 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom184
  %105 = load i32, i32* %arrayidx185, align 4
  %106 = load i32, i32* %j, align 4
  %idxprom186 = sext i32 %106 to i64
  %arrayidx187 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom186
  %107 = load i32, i32* %arrayidx187, align 4
  %sub188 = sub nsw i32 %105, %107
  %call189 = call i32 @abs(i32 %sub188) #3
  %cmp190 = icmp sgt i32 %call183, %call189
  br i1 %cmp190, label %cond.true.192, label %cond.false.199

cond.true.192:                                    ; preds = %cond.end.169
  %108 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %108 to i64
  %arrayidx194 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom193
  %109 = load i32, i32* %arrayidx194, align 4
  %110 = load i32, i32* %j, align 4
  %idxprom195 = sext i32 %110 to i64
  %arrayidx196 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom195
  %111 = load i32, i32* %arrayidx196, align 4
  %sub197 = sub nsw i32 %109, %111
  %call198 = call i32 @abs(i32 %sub197) #3
  br label %cond.end.206

cond.false.199:                                   ; preds = %cond.end.169
  %112 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %112 to i64
  %arrayidx201 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom200
  %113 = load i32, i32* %arrayidx201, align 4
  %114 = load i32, i32* %j, align 4
  %idxprom202 = sext i32 %114 to i64
  %arrayidx203 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom202
  %115 = load i32, i32* %arrayidx203, align 4
  %sub204 = sub nsw i32 %113, %115
  %call205 = call i32 @abs(i32 %sub204) #3
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.199, %cond.true.192
  %cond207 = phi i32 [ %call198, %cond.true.192 ], [ %call205, %cond.false.199 ]
  %idxprom208 = sext i32 %cond207 to i64
  %arrayidx209 = getelementptr inbounds [9 x i32], [9 x i32]* @pre_q_tropism, i32 0, i64 %idxprom208
  %116 = load i32, i32* %arrayidx209, align 4
  %conv210 = trunc i32 %116 to i8
  %117 = load i32, i32* %j, align 4
  %idxprom211 = sext i32 %117 to i64
  %118 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %118 to i64
  %arrayidx213 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @q_tropism, i32 0, i64 %idxprom212
  %arrayidx214 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx213, i32 0, i64 %idxprom211
  store i8 %conv210, i8* %arrayidx214, align 1
  br label %for.inc.215

for.inc.215:                                      ; preds = %cond.end.206
  %119 = load i32, i32* %j, align 4
  %inc216 = add nsw i32 %119, 1
  store i32 %inc216, i32* %j, align 4
  br label %for.cond.29

for.end.217:                                      ; preds = %for.cond.29
  br label %for.inc.218

for.inc.218:                                      ; preds = %for.end.217
  %120 = load i32, i32* %i, align 4
  %inc219 = add nsw i32 %120, 1
  store i32 %inc219, i32* %i, align 4
  br label %for.cond.26

for.end.220:                                      ; preds = %for.cond.26
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

; Function Attrs: nounwind uwtable
define i32 @eval(i32 %alpha, i32 %beta) #0 {
entry:
  %retval = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %beta.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %j = alloca i32, align 4
  %score = alloca i32, align 4
  %in_cache = alloca i32, align 4
  %safety = alloca i32, align 4
  %badsquares = alloca i32, align 4
  %norm_white_hand_eval = alloca i32, align 4
  %norm_black_hand_eval = alloca i32, align 4
  %wdev_dscale = alloca i32, align 4
  %bdev_dscale = alloca i32, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %beta, i32* %beta.addr, align 4
  store i32 0, i32* %score, align 4
  %0 = load i32, i32* @Variant, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %alpha.addr, align 4
  %2 = load i32, i32* %beta.addr, align 4
  %call = call i32 @std_eval(i32 %1, i32 %2)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @Variant, align 4
  %cmp1 = icmp eq i32 %3, 3
  br i1 %cmp1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %call3 = call i32 @suicide_eval()
  store i32 %call3, i32* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %4 = load i32, i32* @Variant, align 4
  %cmp5 = icmp eq i32 %4, 4
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else.4
  %call7 = call i32 @losers_eval()
  store i32 %call7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8
  store i32 0, i32* %in_cache, align 4
  call void @checkECache(i32* %score, i32* %in_cache)
  %5 = load i32, i32* %in_cache, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.9
  %6 = load i32, i32* @white_to_move, align 4
  %cmp11 = icmp eq i32 %6, 1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  %7 = load i32, i32* %score, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.10
  %8 = load i32, i32* %score, align 4
  %sub = sub nsw i32 0, %8
  store i32 %sub, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %9 = load i32, i32* @cfg_devscale, align 4
  %tobool15 = icmp ne i32 %9, 0
  br i1 %tobool15, label %if.then.16, label %if.else.46

if.then.16:                                       ; preds = %if.end.14
  %10 = load i32, i32* @white_to_move, align 4
  %11 = load i32, i32* @comp_color, align 4
  %cmp17 = icmp ne i32 %10, %11
  br i1 %cmp17, label %if.then.18, label %if.else.28

if.then.18:                                       ; preds = %if.then.16
  %12 = load i32, i32* @white_hand_eval, align 4
  %cmp19 = icmp sle i32 %12, 200
  br i1 %cmp19, label %land.lhs.true, label %if.else.22

land.lhs.true:                                    ; preds = %if.then.18
  %13 = load i32, i32* @Variant, align 4
  %cmp20 = icmp ne i32 %13, 1
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %land.lhs.true
  store i32 2, i32* %wdev_dscale, align 4
  br label %if.end.27

if.else.22:                                       ; preds = %land.lhs.true, %if.then.18
  %14 = load i32, i32* @white_hand_eval, align 4
  %cmp23 = icmp sge i32 %14, 700
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.else.22
  store i32 0, i32* %wdev_dscale, align 4
  br label %if.end.26

if.else.25:                                       ; preds = %if.else.22
  store i32 1, i32* %wdev_dscale, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.21
  br label %if.end.29

if.else.28:                                       ; preds = %if.then.16
  store i32 0, i32* %wdev_dscale, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.end.27
  %15 = load i32, i32* @white_to_move, align 4
  %16 = load i32, i32* @comp_color, align 4
  %cmp30 = icmp eq i32 %15, %16
  br i1 %cmp30, label %if.then.31, label %if.else.44

if.then.31:                                       ; preds = %if.end.29
  %17 = load i32, i32* @black_hand_eval, align 4
  %sub32 = sub nsw i32 0, %17
  %cmp33 = icmp sle i32 %sub32, 200
  br i1 %cmp33, label %land.lhs.true.34, label %if.else.37

land.lhs.true.34:                                 ; preds = %if.then.31
  %18 = load i32, i32* @Variant, align 4
  %cmp35 = icmp ne i32 %18, 1
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.34
  store i32 2, i32* %bdev_dscale, align 4
  br label %if.end.43

if.else.37:                                       ; preds = %land.lhs.true.34, %if.then.31
  %19 = load i32, i32* @black_hand_eval, align 4
  %sub38 = sub nsw i32 0, %19
  %cmp39 = icmp sge i32 %sub38, 700
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.else.37
  store i32 0, i32* %bdev_dscale, align 4
  br label %if.end.42

if.else.41:                                       ; preds = %if.else.37
  store i32 1, i32* %bdev_dscale, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.40
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.36
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.29
  store i32 0, i32* %bdev_dscale, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.end.43
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.14
  store i32 0, i32* %bdev_dscale, align 4
  store i32 0, i32* %wdev_dscale, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.end.45
  store i32 1, i32* %a, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.47
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* @piece_count, align 4
  %cmp48 = icmp sle i32 %20, %21
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %j, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom
  %23 = load i32, i32* %arrayidx, align 4
  store i32 %23, i32* %i, align 4
  %24 = load i32, i32* %i, align 4
  %tobool49 = icmp ne i32 %24, 0
  br i1 %tobool49, label %if.else.51, label %if.then.50

if.then.50:                                       ; preds = %for.body
  br label %for.inc

if.else.51:                                       ; preds = %for.body
  %25 = load i32, i32* %a, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %a, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51
  %26 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %26 to i64
  %arrayidx54 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom53
  %27 = load i32, i32* %arrayidx54, align 4
  switch i32 %27, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.63
    i32 7, label %sw.bb.75
    i32 8, label %sw.bb.87
    i32 11, label %sw.bb.99
    i32 12, label %sw.bb.111
    i32 3, label %sw.bb.123
    i32 4, label %sw.bb.135
    i32 9, label %sw.bb.147
    i32 10, label %sw.bb.159
  ]

sw.bb:                                            ; preds = %if.end.52
  %28 = load i32, i32* %score, align 4
  %add = add nsw i32 %28, 100
  store i32 %add, i32* %score, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %29 to i64
  %arrayidx56 = getelementptr inbounds [144 x i32], [144 x i32]* @white_pawn, i32 0, i64 %idxprom55
  %30 = load i32, i32* %arrayidx56, align 4
  %31 = load i32, i32* %wdev_dscale, align 4
  %shr = ashr i32 %30, %31
  %32 = load i32, i32* %score, align 4
  %add57 = add nsw i32 %32, %shr
  store i32 %add57, i32* %score, align 4
  %33 = load i32, i32* @bking_loc, align 4
  %idxprom58 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %34 to i64
  %arrayidx60 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @p_tropism, i32 0, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx60, i32 0, i64 %idxprom58
  %35 = load i8, i8* %arrayidx61, align 1
  %conv = zext i8 %35 to i32
  %36 = load i32, i32* %score, align 4
  %add62 = add nsw i32 %36, %conv
  store i32 %add62, i32* %score, align 4
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.52
  %37 = load i32, i32* %score, align 4
  %sub64 = sub nsw i32 %37, 100
  store i32 %sub64, i32* %score, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %38 to i64
  %arrayidx66 = getelementptr inbounds [144 x i32], [144 x i32]* @black_pawn, i32 0, i64 %idxprom65
  %39 = load i32, i32* %arrayidx66, align 4
  %40 = load i32, i32* %bdev_dscale, align 4
  %shr67 = ashr i32 %39, %40
  %41 = load i32, i32* %score, align 4
  %sub68 = sub nsw i32 %41, %shr67
  store i32 %sub68, i32* %score, align 4
  %42 = load i32, i32* @wking_loc, align 4
  %idxprom69 = sext i32 %42 to i64
  %43 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %43 to i64
  %arrayidx71 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @p_tropism, i32 0, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx71, i32 0, i64 %idxprom69
  %44 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %44 to i32
  %45 = load i32, i32* %score, align 4
  %sub74 = sub nsw i32 %45, %conv73
  store i32 %sub74, i32* %score, align 4
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.end.52
  %46 = load i32, i32* %score, align 4
  %add76 = add nsw i32 %46, 250
  store i32 %add76, i32* %score, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %47 to i64
  %arrayidx78 = getelementptr inbounds [144 x i32], [144 x i32]* @white_rook, i32 0, i64 %idxprom77
  %48 = load i32, i32* %arrayidx78, align 4
  %49 = load i32, i32* %wdev_dscale, align 4
  %shr79 = ashr i32 %48, %49
  %50 = load i32, i32* %score, align 4
  %add80 = add nsw i32 %50, %shr79
  store i32 %add80, i32* %score, align 4
  %51 = load i32, i32* @bking_loc, align 4
  %idxprom81 = sext i32 %51 to i64
  %52 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %52 to i64
  %arrayidx83 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @r_tropism, i32 0, i64 %idxprom82
  %arrayidx84 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx83, i32 0, i64 %idxprom81
  %53 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %53 to i32
  %54 = load i32, i32* %score, align 4
  %add86 = add nsw i32 %54, %conv85
  store i32 %add86, i32* %score, align 4
  br label %sw.epilog

sw.bb.87:                                         ; preds = %if.end.52
  %55 = load i32, i32* %score, align 4
  %sub88 = sub nsw i32 %55, 250
  store i32 %sub88, i32* %score, align 4
  %56 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %56 to i64
  %arrayidx90 = getelementptr inbounds [144 x i32], [144 x i32]* @black_rook, i32 0, i64 %idxprom89
  %57 = load i32, i32* %arrayidx90, align 4
  %58 = load i32, i32* %bdev_dscale, align 4
  %shr91 = ashr i32 %57, %58
  %59 = load i32, i32* %score, align 4
  %sub92 = sub nsw i32 %59, %shr91
  store i32 %sub92, i32* %score, align 4
  %60 = load i32, i32* @wking_loc, align 4
  %idxprom93 = sext i32 %60 to i64
  %61 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %61 to i64
  %arrayidx95 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @r_tropism, i32 0, i64 %idxprom94
  %arrayidx96 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx95, i32 0, i64 %idxprom93
  %62 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %62 to i32
  %63 = load i32, i32* %score, align 4
  %sub98 = sub nsw i32 %63, %conv97
  store i32 %sub98, i32* %score, align 4
  br label %sw.epilog

sw.bb.99:                                         ; preds = %if.end.52
  %64 = load i32, i32* %score, align 4
  %add100 = add nsw i32 %64, 230
  store i32 %add100, i32* %score, align 4
  %65 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %65 to i64
  %arrayidx102 = getelementptr inbounds [144 x i32], [144 x i32]* @pcsqbishop, i32 0, i64 %idxprom101
  %66 = load i32, i32* %arrayidx102, align 4
  %67 = load i32, i32* %wdev_dscale, align 4
  %shr103 = ashr i32 %66, %67
  %68 = load i32, i32* %score, align 4
  %add104 = add nsw i32 %68, %shr103
  store i32 %add104, i32* %score, align 4
  %69 = load i32, i32* @bking_loc, align 4
  %idxprom105 = sext i32 %69 to i64
  %70 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %70 to i64
  %arrayidx107 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @b_tropism, i32 0, i64 %idxprom106
  %arrayidx108 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx107, i32 0, i64 %idxprom105
  %71 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %71 to i32
  %72 = load i32, i32* %score, align 4
  %add110 = add nsw i32 %72, %conv109
  store i32 %add110, i32* %score, align 4
  br label %sw.epilog

sw.bb.111:                                        ; preds = %if.end.52
  %73 = load i32, i32* %score, align 4
  %sub112 = sub nsw i32 %73, 230
  store i32 %sub112, i32* %score, align 4
  %74 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %74 to i64
  %arrayidx114 = getelementptr inbounds [144 x i32], [144 x i32]* @pcsqbishop, i32 0, i64 %idxprom113
  %75 = load i32, i32* %arrayidx114, align 4
  %76 = load i32, i32* %bdev_dscale, align 4
  %shr115 = ashr i32 %75, %76
  %77 = load i32, i32* %score, align 4
  %sub116 = sub nsw i32 %77, %shr115
  store i32 %sub116, i32* %score, align 4
  %78 = load i32, i32* @wking_loc, align 4
  %idxprom117 = sext i32 %78 to i64
  %79 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %79 to i64
  %arrayidx119 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @b_tropism, i32 0, i64 %idxprom118
  %arrayidx120 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx119, i32 0, i64 %idxprom117
  %80 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %80 to i32
  %81 = load i32, i32* %score, align 4
  %sub122 = sub nsw i32 %81, %conv121
  store i32 %sub122, i32* %score, align 4
  br label %sw.epilog

sw.bb.123:                                        ; preds = %if.end.52
  %82 = load i32, i32* %score, align 4
  %add124 = add nsw i32 %82, 210
  store i32 %add124, i32* %score, align 4
  %83 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %83 to i64
  %arrayidx126 = getelementptr inbounds [144 x i32], [144 x i32]* @white_knight, i32 0, i64 %idxprom125
  %84 = load i32, i32* %arrayidx126, align 4
  %85 = load i32, i32* %wdev_dscale, align 4
  %shr127 = ashr i32 %84, %85
  %86 = load i32, i32* %score, align 4
  %add128 = add nsw i32 %86, %shr127
  store i32 %add128, i32* %score, align 4
  %87 = load i32, i32* @bking_loc, align 4
  %idxprom129 = sext i32 %87 to i64
  %88 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %88 to i64
  %arrayidx131 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @n_tropism, i32 0, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx131, i32 0, i64 %idxprom129
  %89 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %89 to i32
  %90 = load i32, i32* %score, align 4
  %add134 = add nsw i32 %90, %conv133
  store i32 %add134, i32* %score, align 4
  br label %sw.epilog

sw.bb.135:                                        ; preds = %if.end.52
  %91 = load i32, i32* %score, align 4
  %sub136 = sub nsw i32 %91, 210
  store i32 %sub136, i32* %score, align 4
  %92 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %92 to i64
  %arrayidx138 = getelementptr inbounds [144 x i32], [144 x i32]* @black_knight, i32 0, i64 %idxprom137
  %93 = load i32, i32* %arrayidx138, align 4
  %94 = load i32, i32* %bdev_dscale, align 4
  %shr139 = ashr i32 %93, %94
  %95 = load i32, i32* %score, align 4
  %sub140 = sub nsw i32 %95, %shr139
  store i32 %sub140, i32* %score, align 4
  %96 = load i32, i32* @wking_loc, align 4
  %idxprom141 = sext i32 %96 to i64
  %97 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %97 to i64
  %arrayidx143 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @n_tropism, i32 0, i64 %idxprom142
  %arrayidx144 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx143, i32 0, i64 %idxprom141
  %98 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %98 to i32
  %99 = load i32, i32* %score, align 4
  %sub146 = sub nsw i32 %99, %conv145
  store i32 %sub146, i32* %score, align 4
  br label %sw.epilog

sw.bb.147:                                        ; preds = %if.end.52
  %100 = load i32, i32* %score, align 4
  %add148 = add nsw i32 %100, 450
  store i32 %add148, i32* %score, align 4
  %101 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %101 to i64
  %arrayidx150 = getelementptr inbounds [144 x i32], [144 x i32]* @white_queen, i32 0, i64 %idxprom149
  %102 = load i32, i32* %arrayidx150, align 4
  %103 = load i32, i32* %wdev_dscale, align 4
  %shr151 = ashr i32 %102, %103
  %104 = load i32, i32* %score, align 4
  %add152 = add nsw i32 %104, %shr151
  store i32 %add152, i32* %score, align 4
  %105 = load i32, i32* @bking_loc, align 4
  %idxprom153 = sext i32 %105 to i64
  %106 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %106 to i64
  %arrayidx155 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @q_tropism, i32 0, i64 %idxprom154
  %arrayidx156 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx155, i32 0, i64 %idxprom153
  %107 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %107 to i32
  %108 = load i32, i32* %score, align 4
  %add158 = add nsw i32 %108, %conv157
  store i32 %add158, i32* %score, align 4
  br label %sw.epilog

sw.bb.159:                                        ; preds = %if.end.52
  %109 = load i32, i32* %score, align 4
  %sub160 = sub nsw i32 %109, 450
  store i32 %sub160, i32* %score, align 4
  %110 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %110 to i64
  %arrayidx162 = getelementptr inbounds [144 x i32], [144 x i32]* @black_queen, i32 0, i64 %idxprom161
  %111 = load i32, i32* %arrayidx162, align 4
  %112 = load i32, i32* %bdev_dscale, align 4
  %shr163 = ashr i32 %111, %112
  %113 = load i32, i32* %score, align 4
  %sub164 = sub nsw i32 %113, %shr163
  store i32 %sub164, i32* %score, align 4
  %114 = load i32, i32* @wking_loc, align 4
  %idxprom165 = sext i32 %114 to i64
  %115 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %115 to i64
  %arrayidx167 = getelementptr inbounds [144 x [144 x i8]], [144 x [144 x i8]]* @q_tropism, i32 0, i64 %idxprom166
  %arrayidx168 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx167, i32 0, i64 %idxprom165
  %116 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %116 to i32
  %117 = load i32, i32* %score, align 4
  %sub170 = sub nsw i32 %117, %conv169
  store i32 %sub170, i32* %score, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.52, %sw.bb.159, %sw.bb.147, %sw.bb.135, %sw.bb.123, %sw.bb.111, %sw.bb.99, %sw.bb.87, %sw.bb.75, %sw.bb.63, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then.50
  %118 = load i32, i32* %j, align 4
  %inc171 = add nsw i32 %118, 1
  store i32 %inc171, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %119 = load i32, i32* @wking_loc, align 4
  %idxprom172 = sext i32 %119 to i64
  %arrayidx173 = getelementptr inbounds [144 x i32], [144 x i32]* @white_king, i32 0, i64 %idxprom172
  %120 = load i32, i32* %arrayidx173, align 4
  %121 = load i32, i32* %bdev_dscale, align 4
  %shr174 = ashr i32 %120, %121
  %122 = load i32, i32* %score, align 4
  %add175 = add nsw i32 %122, %shr174
  store i32 %add175, i32* %score, align 4
  %123 = load i32, i32* @bking_loc, align 4
  %idxprom176 = sext i32 %123 to i64
  %arrayidx177 = getelementptr inbounds [144 x i32], [144 x i32]* @black_king, i32 0, i64 %idxprom176
  %124 = load i32, i32* %arrayidx177, align 4
  %125 = load i32, i32* %wdev_dscale, align 4
  %shr178 = ashr i32 %124, %125
  %126 = load i32, i32* %score, align 4
  %sub179 = sub nsw i32 %126, %shr178
  store i32 %sub179, i32* %score, align 4
  %127 = load i32, i32* @white_castled, align 4
  %tobool180 = icmp ne i32 %127, 0
  br i1 %tobool180, label %if.end.185, label %land.lhs.true.181

land.lhs.true.181:                                ; preds = %for.end
  %128 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 30), align 4
  %tobool182 = icmp ne i32 %128, 0
  br i1 %tobool182, label %if.then.183, label %if.end.185

if.then.183:                                      ; preds = %land.lhs.true.181
  %129 = load i32, i32* %score, align 4
  %sub184 = sub nsw i32 %129, 30
  store i32 %sub184, i32* %score, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.183, %land.lhs.true.181, %for.end
  %130 = load i32, i32* @black_castled, align 4
  %tobool186 = icmp ne i32 %130, 0
  br i1 %tobool186, label %if.end.191, label %land.lhs.true.187

land.lhs.true.187:                                ; preds = %if.end.185
  %131 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 114), align 4
  %tobool188 = icmp ne i32 %131, 0
  br i1 %tobool188, label %if.then.189, label %if.end.191

if.then.189:                                      ; preds = %land.lhs.true.187
  %132 = load i32, i32* %score, align 4
  %add190 = add nsw i32 %132, 30
  store i32 %add190, i32* %score, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.189, %land.lhs.true.187, %if.end.185
  %133 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 41), align 4
  %tobool192 = icmp ne i32 %133, 0
  br i1 %tobool192, label %if.end.198, label %land.lhs.true.193

land.lhs.true.193:                                ; preds = %if.end.191
  %134 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 53), align 4
  %cmp194 = icmp ne i32 %134, 13
  br i1 %cmp194, label %if.then.196, label %if.end.198

if.then.196:                                      ; preds = %land.lhs.true.193
  %135 = load i32, i32* %score, align 4
  %sub197 = sub nsw i32 %135, 15
  store i32 %sub197, i32* %score, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.196, %land.lhs.true.193, %if.end.191
  %136 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 42), align 4
  %tobool199 = icmp ne i32 %136, 0
  br i1 %tobool199, label %if.end.205, label %land.lhs.true.200

land.lhs.true.200:                                ; preds = %if.end.198
  %137 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 54), align 4
  %cmp201 = icmp ne i32 %137, 13
  br i1 %cmp201, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %land.lhs.true.200
  %138 = load i32, i32* %score, align 4
  %sub204 = sub nsw i32 %138, 15
  store i32 %sub204, i32* %score, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %land.lhs.true.200, %if.end.198
  %139 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 101), align 4
  %tobool206 = icmp ne i32 %139, 0
  br i1 %tobool206, label %if.end.212, label %land.lhs.true.207

land.lhs.true.207:                                ; preds = %if.end.205
  %140 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 89), align 4
  %cmp208 = icmp ne i32 %140, 13
  br i1 %cmp208, label %if.then.210, label %if.end.212

if.then.210:                                      ; preds = %land.lhs.true.207
  %141 = load i32, i32* %score, align 4
  %add211 = add nsw i32 %141, 15
  store i32 %add211, i32* %score, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.210, %land.lhs.true.207, %if.end.205
  %142 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 102), align 4
  %tobool213 = icmp ne i32 %142, 0
  br i1 %tobool213, label %if.end.219, label %land.lhs.true.214

land.lhs.true.214:                                ; preds = %if.end.212
  %143 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 90), align 4
  %cmp215 = icmp ne i32 %143, 13
  br i1 %cmp215, label %if.then.217, label %if.end.219

if.then.217:                                      ; preds = %land.lhs.true.214
  %144 = load i32, i32* %score, align 4
  %add218 = add nsw i32 %144, 15
  store i32 %add218, i32* %score, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.217, %land.lhs.true.214, %if.end.212
  %145 = load i32, i32* @cfg_smarteval, align 4
  %tobool220 = icmp ne i32 %145, 0
  br i1 %tobool220, label %if.then.221, label %if.end.640

if.then.221:                                      ; preds = %if.end.219
  %146 = load i32, i32* @wking_loc, align 4
  %cmp222 = icmp ne i32 %146, 30
  br i1 %cmp222, label %land.lhs.true.224, label %if.end.279

land.lhs.true.224:                                ; preds = %if.then.221
  %147 = load i32, i32* @wking_loc, align 4
  %cmp225 = icmp ne i32 %147, 29
  br i1 %cmp225, label %if.then.227, label %if.end.279

if.then.227:                                      ; preds = %land.lhs.true.224
  %148 = load i32, i32* @wking_loc, align 4
  %add228 = add nsw i32 %148, 11
  %idxprom229 = sext i32 %add228 to i64
  %arrayidx230 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom229
  %149 = load i32, i32* %arrayidx230, align 4
  %cmp231 = icmp ne i32 %149, 1
  br i1 %cmp231, label %if.then.233, label %if.end.235

if.then.233:                                      ; preds = %if.then.227
  %150 = load i32, i32* %score, align 4
  %sub234 = sub nsw i32 %150, 24
  store i32 %sub234, i32* %score, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.233, %if.then.227
  %151 = load i32, i32* @wking_loc, align 4
  %add236 = add nsw i32 %151, 12
  %idxprom237 = sext i32 %add236 to i64
  %arrayidx238 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom237
  %152 = load i32, i32* %arrayidx238, align 4
  %cmp239 = icmp ne i32 %152, 1
  br i1 %cmp239, label %if.then.241, label %if.end.243

if.then.241:                                      ; preds = %if.end.235
  %153 = load i32, i32* %score, align 4
  %sub242 = sub nsw i32 %153, 35
  store i32 %sub242, i32* %score, align 4
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.241, %if.end.235
  %154 = load i32, i32* @wking_loc, align 4
  %add244 = add nsw i32 %154, 13
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom245
  %155 = load i32, i32* %arrayidx246, align 4
  %cmp247 = icmp ne i32 %155, 1
  br i1 %cmp247, label %if.then.249, label %if.end.251

if.then.249:                                      ; preds = %if.end.243
  %156 = load i32, i32* %score, align 4
  %sub250 = sub nsw i32 %156, 24
  store i32 %sub250, i32* %score, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.249, %if.end.243
  %157 = load i32, i32* @white_castled, align 4
  %tobool252 = icmp ne i32 %157, 0
  br i1 %tobool252, label %if.then.253, label %if.end.278

if.then.253:                                      ; preds = %if.end.251
  %158 = load i32, i32* @bking_loc, align 4
  %sub254 = sub nsw i32 %158, 25
  %idxprom255 = sext i32 %sub254 to i64
  %arrayidx256 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom255
  %159 = load i32, i32* %arrayidx256, align 4
  %cmp257 = icmp eq i32 %159, 2
  br i1 %cmp257, label %if.then.259, label %if.end.261

if.then.259:                                      ; preds = %if.then.253
  %160 = load i32, i32* %score, align 4
  %add260 = add nsw i32 %160, 11
  store i32 %add260, i32* %score, align 4
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.259, %if.then.253
  %161 = load i32, i32* @bking_loc, align 4
  %sub262 = sub nsw i32 %161, 24
  %idxprom263 = sext i32 %sub262 to i64
  %arrayidx264 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom263
  %162 = load i32, i32* %arrayidx264, align 4
  %cmp265 = icmp eq i32 %162, 2
  br i1 %cmp265, label %if.then.267, label %if.end.269

if.then.267:                                      ; preds = %if.end.261
  %163 = load i32, i32* %score, align 4
  %add268 = add nsw i32 %163, 15
  store i32 %add268, i32* %score, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.267, %if.end.261
  %164 = load i32, i32* @bking_loc, align 4
  %sub270 = sub nsw i32 %164, 23
  %idxprom271 = sext i32 %sub270 to i64
  %arrayidx272 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom271
  %165 = load i32, i32* %arrayidx272, align 4
  %cmp273 = icmp eq i32 %165, 2
  br i1 %cmp273, label %if.then.275, label %if.end.277

if.then.275:                                      ; preds = %if.end.269
  %166 = load i32, i32* %score, align 4
  %add276 = add nsw i32 %166, 11
  store i32 %add276, i32* %score, align 4
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.275, %if.end.269
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.end.251
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %land.lhs.true.224, %if.then.221
  %167 = load i32, i32* @bking_loc, align 4
  %cmp280 = icmp ne i32 %167, 114
  br i1 %cmp280, label %land.lhs.true.282, label %if.end.337

land.lhs.true.282:                                ; preds = %if.end.279
  %168 = load i32, i32* @bking_loc, align 4
  %cmp283 = icmp ne i32 %168, 113
  br i1 %cmp283, label %if.then.285, label %if.end.337

if.then.285:                                      ; preds = %land.lhs.true.282
  %169 = load i32, i32* @bking_loc, align 4
  %sub286 = sub nsw i32 %169, 13
  %idxprom287 = sext i32 %sub286 to i64
  %arrayidx288 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom287
  %170 = load i32, i32* %arrayidx288, align 4
  %cmp289 = icmp ne i32 %170, 2
  br i1 %cmp289, label %if.then.291, label %if.end.293

if.then.291:                                      ; preds = %if.then.285
  %171 = load i32, i32* %score, align 4
  %add292 = add nsw i32 %171, 24
  store i32 %add292, i32* %score, align 4
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.291, %if.then.285
  %172 = load i32, i32* @bking_loc, align 4
  %sub294 = sub nsw i32 %172, 12
  %idxprom295 = sext i32 %sub294 to i64
  %arrayidx296 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom295
  %173 = load i32, i32* %arrayidx296, align 4
  %cmp297 = icmp ne i32 %173, 2
  br i1 %cmp297, label %if.then.299, label %if.end.301

if.then.299:                                      ; preds = %if.end.293
  %174 = load i32, i32* %score, align 4
  %add300 = add nsw i32 %174, 35
  store i32 %add300, i32* %score, align 4
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.299, %if.end.293
  %175 = load i32, i32* @bking_loc, align 4
  %sub302 = sub nsw i32 %175, 11
  %idxprom303 = sext i32 %sub302 to i64
  %arrayidx304 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom303
  %176 = load i32, i32* %arrayidx304, align 4
  %cmp305 = icmp ne i32 %176, 2
  br i1 %cmp305, label %if.then.307, label %if.end.309

if.then.307:                                      ; preds = %if.end.301
  %177 = load i32, i32* %score, align 4
  %add308 = add nsw i32 %177, 24
  store i32 %add308, i32* %score, align 4
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.307, %if.end.301
  %178 = load i32, i32* @black_castled, align 4
  %tobool310 = icmp ne i32 %178, 0
  br i1 %tobool310, label %if.then.311, label %if.end.336

if.then.311:                                      ; preds = %if.end.309
  %179 = load i32, i32* @bking_loc, align 4
  %sub312 = sub nsw i32 %179, 25
  %idxprom313 = sext i32 %sub312 to i64
  %arrayidx314 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom313
  %180 = load i32, i32* %arrayidx314, align 4
  %cmp315 = icmp eq i32 %180, 2
  br i1 %cmp315, label %if.then.317, label %if.end.319

if.then.317:                                      ; preds = %if.then.311
  %181 = load i32, i32* %score, align 4
  %sub318 = sub nsw i32 %181, 11
  store i32 %sub318, i32* %score, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.317, %if.then.311
  %182 = load i32, i32* @bking_loc, align 4
  %sub320 = sub nsw i32 %182, 24
  %idxprom321 = sext i32 %sub320 to i64
  %arrayidx322 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom321
  %183 = load i32, i32* %arrayidx322, align 4
  %cmp323 = icmp eq i32 %183, 2
  br i1 %cmp323, label %if.then.325, label %if.end.327

if.then.325:                                      ; preds = %if.end.319
  %184 = load i32, i32* %score, align 4
  %sub326 = sub nsw i32 %184, 15
  store i32 %sub326, i32* %score, align 4
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.325, %if.end.319
  %185 = load i32, i32* @bking_loc, align 4
  %sub328 = sub nsw i32 %185, 23
  %idxprom329 = sext i32 %sub328 to i64
  %arrayidx330 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom329
  %186 = load i32, i32* %arrayidx330, align 4
  %cmp331 = icmp eq i32 %186, 2
  br i1 %cmp331, label %if.then.333, label %if.end.335

if.then.333:                                      ; preds = %if.end.327
  %187 = load i32, i32* %score, align 4
  %sub334 = sub nsw i32 %187, 11
  store i32 %sub334, i32* %score, align 4
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.333, %if.end.327
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %if.end.309
  br label %if.end.337

if.end.337:                                       ; preds = %if.end.336, %land.lhs.true.282, %if.end.279
  %188 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 42), align 4
  %tobool338 = icmp ne i32 %188, 0
  br i1 %tobool338, label %if.then.339, label %if.end.357

if.then.339:                                      ; preds = %if.end.337
  %189 = load i32, i32* %score, align 4
  %add340 = add nsw i32 %189, 30
  store i32 %add340, i32* %score, align 4
  %190 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 41), align 4
  %tobool341 = icmp ne i32 %190, 0
  br i1 %tobool341, label %if.then.342, label %if.end.344

if.then.342:                                      ; preds = %if.then.339
  %191 = load i32, i32* %score, align 4
  %add343 = add nsw i32 %191, 25
  store i32 %add343, i32* %score, align 4
  br label %if.end.344

if.end.344:                                       ; preds = %if.then.342, %if.then.339
  %192 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 32), align 4
  %tobool345 = icmp ne i32 %192, 0
  br i1 %tobool345, label %if.then.346, label %if.end.348

if.then.346:                                      ; preds = %if.end.344
  %193 = load i32, i32* %score, align 4
  %add347 = add nsw i32 %193, 20
  store i32 %add347, i32* %score, align 4
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.346, %if.end.344
  %194 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 27), align 4
  %tobool349 = icmp ne i32 %194, 0
  br i1 %tobool349, label %if.then.350, label %if.end.352

if.then.350:                                      ; preds = %if.end.348
  %195 = load i32, i32* %score, align 4
  %add351 = add nsw i32 %195, 15
  store i32 %add351, i32* %score, align 4
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.350, %if.end.348
  %196 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 28), align 4
  %tobool353 = icmp ne i32 %196, 0
  br i1 %tobool353, label %if.then.354, label %if.end.356

if.then.354:                                      ; preds = %if.end.352
  %197 = load i32, i32* %score, align 4
  %add355 = add nsw i32 %197, 10
  store i32 %add355, i32* %score, align 4
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.354, %if.end.352
  br label %if.end.357

if.end.357:                                       ; preds = %if.end.356, %if.end.337
  %198 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 102), align 4
  %tobool358 = icmp ne i32 %198, 0
  br i1 %tobool358, label %if.then.359, label %if.end.377

if.then.359:                                      ; preds = %if.end.357
  %199 = load i32, i32* %score, align 4
  %sub360 = sub nsw i32 %199, 30
  store i32 %sub360, i32* %score, align 4
  %200 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 101), align 4
  %tobool361 = icmp ne i32 %200, 0
  br i1 %tobool361, label %if.then.362, label %if.end.364

if.then.362:                                      ; preds = %if.then.359
  %201 = load i32, i32* %score, align 4
  %sub363 = sub nsw i32 %201, 25
  store i32 %sub363, i32* %score, align 4
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.362, %if.then.359
  %202 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 116), align 4
  %tobool365 = icmp ne i32 %202, 0
  br i1 %tobool365, label %if.then.366, label %if.end.368

if.then.366:                                      ; preds = %if.end.364
  %203 = load i32, i32* %score, align 4
  %sub367 = sub nsw i32 %203, 20
  store i32 %sub367, i32* %score, align 4
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.366, %if.end.364
  %204 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 111), align 4
  %tobool369 = icmp ne i32 %204, 0
  br i1 %tobool369, label %if.then.370, label %if.end.372

if.then.370:                                      ; preds = %if.end.368
  %205 = load i32, i32* %score, align 4
  %sub371 = sub nsw i32 %205, 15
  store i32 %sub371, i32* %score, align 4
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.370, %if.end.368
  %206 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 112), align 4
  %tobool373 = icmp ne i32 %206, 0
  br i1 %tobool373, label %if.then.374, label %if.end.376

if.then.374:                                      ; preds = %if.end.372
  %207 = load i32, i32* %score, align 4
  %sub375 = sub nsw i32 %207, 10
  store i32 %sub375, i32* %score, align 4
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.374, %if.end.372
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.376, %if.end.357
  %208 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 44), align 4
  %cmp378 = icmp ne i32 %208, 1
  br i1 %cmp378, label %land.lhs.true.380, label %if.end.387

land.lhs.true.380:                                ; preds = %if.end.377
  %209 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 55), align 4
  %cmp381 = icmp eq i32 %209, 2
  br i1 %cmp381, label %if.then.385, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.380
  %210 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 66), align 4
  %cmp383 = icmp eq i32 %210, 2
  br i1 %cmp383, label %if.then.385, label %if.end.387

if.then.385:                                      ; preds = %lor.lhs.false, %land.lhs.true.380
  %211 = load i32, i32* %score, align 4
  %sub386 = sub nsw i32 %211, 30
  store i32 %sub386, i32* %score, align 4
  br label %if.end.387

if.end.387:                                       ; preds = %if.then.385, %lor.lhs.false, %if.end.377
  %212 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 104), align 4
  %cmp388 = icmp ne i32 %212, 2
  br i1 %cmp388, label %land.lhs.true.390, label %if.end.398

land.lhs.true.390:                                ; preds = %if.end.387
  %213 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 91), align 4
  %cmp391 = icmp eq i32 %213, 1
  br i1 %cmp391, label %if.then.396, label %lor.lhs.false.393

lor.lhs.false.393:                                ; preds = %land.lhs.true.390
  %214 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 78), align 4
  %cmp394 = icmp eq i32 %214, 1
  br i1 %cmp394, label %if.then.396, label %if.end.398

if.then.396:                                      ; preds = %lor.lhs.false.393, %land.lhs.true.390
  %215 = load i32, i32* %score, align 4
  %add397 = add nsw i32 %215, 30
  store i32 %add397, i32* %score, align 4
  br label %if.end.398

if.end.398:                                       ; preds = %if.then.396, %lor.lhs.false.393, %if.end.387
  %216 = load i32, i32* @wking_loc, align 4
  %add399 = add nsw i32 %216, 12
  %idxprom400 = sext i32 %add399 to i64
  %arrayidx401 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom400
  %217 = load i32, i32* %arrayidx401, align 4
  %cmp402 = icmp eq i32 %217, 2
  br i1 %cmp402, label %if.then.410, label %lor.lhs.false.404

lor.lhs.false.404:                                ; preds = %if.end.398
  %218 = load i32, i32* @wking_loc, align 4
  %add405 = add nsw i32 %218, 12
  %idxprom406 = sext i32 %add405 to i64
  %arrayidx407 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom406
  %219 = load i32, i32* %arrayidx407, align 4
  %cmp408 = icmp eq i32 %219, 12
  br i1 %cmp408, label %if.then.410, label %if.end.424

if.then.410:                                      ; preds = %lor.lhs.false.404, %if.end.398
  %220 = load i32, i32* %score, align 4
  %sub411 = sub nsw i32 %220, 35
  store i32 %sub411, i32* %score, align 4
  %221 = load i32, i32* @wking_loc, align 4
  %add412 = add nsw i32 %221, 12
  %idxprom413 = sext i32 %add412 to i64
  %arrayidx414 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom413
  %222 = load i32, i32* %arrayidx414, align 4
  %cmp415 = icmp eq i32 %222, 0
  br i1 %cmp415, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.410
  br i1 false, label %if.then.420, label %if.end.423

cond.false:                                       ; preds = %if.then.410
  %223 = load i32, i32* @wking_loc, align 4
  %add417 = add nsw i32 %223, 12
  %call418 = call i32 @is_attacked(i32 %add417, i32 0)
  %tobool419 = icmp ne i32 %call418, 0
  br i1 %tobool419, label %if.then.420, label %if.end.423

if.then.420:                                      ; preds = %cond.false, %cond.true
  %224 = load i32, i32* %bdev_dscale, align 4
  %shr421 = ashr i32 150, %224
  %225 = load i32, i32* %score, align 4
  %sub422 = sub nsw i32 %225, %shr421
  store i32 %sub422, i32* %score, align 4
  br label %if.end.423

if.end.423:                                       ; preds = %if.then.420, %cond.false, %cond.true
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %lor.lhs.false.404
  %226 = load i32, i32* @bking_loc, align 4
  %sub425 = sub nsw i32 %226, 12
  %idxprom426 = sext i32 %sub425 to i64
  %arrayidx427 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom426
  %227 = load i32, i32* %arrayidx427, align 4
  %cmp428 = icmp eq i32 %227, 1
  br i1 %cmp428, label %if.then.436, label %lor.lhs.false.430

lor.lhs.false.430:                                ; preds = %if.end.424
  %228 = load i32, i32* @bking_loc, align 4
  %sub431 = sub nsw i32 %228, 12
  %idxprom432 = sext i32 %sub431 to i64
  %arrayidx433 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom432
  %229 = load i32, i32* %arrayidx433, align 4
  %cmp434 = icmp eq i32 %229, 11
  br i1 %cmp434, label %if.then.436, label %if.end.452

if.then.436:                                      ; preds = %lor.lhs.false.430, %if.end.424
  %230 = load i32, i32* %score, align 4
  %add437 = add nsw i32 %230, 35
  store i32 %add437, i32* %score, align 4
  %231 = load i32, i32* @bking_loc, align 4
  %sub438 = sub nsw i32 %231, 12
  %idxprom439 = sext i32 %sub438 to i64
  %arrayidx440 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom439
  %232 = load i32, i32* %arrayidx440, align 4
  %cmp441 = icmp eq i32 %232, 0
  br i1 %cmp441, label %cond.true.443, label %cond.false.444

cond.true.443:                                    ; preds = %if.then.436
  br i1 false, label %if.then.448, label %if.end.451

cond.false.444:                                   ; preds = %if.then.436
  %233 = load i32, i32* @bking_loc, align 4
  %sub445 = sub nsw i32 %233, 12
  %call446 = call i32 @is_attacked(i32 %sub445, i32 1)
  %tobool447 = icmp ne i32 %call446, 0
  br i1 %tobool447, label %if.then.448, label %if.end.451

if.then.448:                                      ; preds = %cond.false.444, %cond.true.443
  %234 = load i32, i32* %wdev_dscale, align 4
  %shr449 = ashr i32 150, %234
  %235 = load i32, i32* %score, align 4
  %add450 = add nsw i32 %235, %shr449
  store i32 %add450, i32* %score, align 4
  br label %if.end.451

if.end.451:                                       ; preds = %if.then.448, %cond.false.444, %cond.true.443
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %lor.lhs.false.430
  %236 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 43), align 4
  %cmp453 = icmp eq i32 %236, 1
  br i1 %cmp453, label %land.lhs.true.461, label %lor.lhs.false.455

lor.lhs.false.455:                                ; preds = %if.end.452
  %237 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 54), align 4
  %cmp456 = icmp eq i32 %237, 1
  br i1 %cmp456, label %land.lhs.true.461, label %lor.lhs.false.458

lor.lhs.false.458:                                ; preds = %lor.lhs.false.455
  %238 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 54), align 4
  %cmp459 = icmp eq i32 %238, 2
  br i1 %cmp459, label %land.lhs.true.461, label %if.end.485

land.lhs.true.461:                                ; preds = %lor.lhs.false.458, %lor.lhs.false.455, %if.end.452
  %239 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 54), align 4
  %cmp462 = icmp eq i32 %239, 0
  br i1 %cmp462, label %cond.true.464, label %cond.false.465

cond.true.464:                                    ; preds = %land.lhs.true.461
  br i1 false, label %if.then.468, label %if.end.485

cond.false.465:                                   ; preds = %land.lhs.true.461
  %call466 = call i32 @is_attacked(i32 54, i32 0)
  %tobool467 = icmp ne i32 %call466, 0
  br i1 %tobool467, label %if.then.468, label %if.end.485

if.then.468:                                      ; preds = %cond.false.465, %cond.true.464
  %240 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 43), align 4
  %cmp469 = icmp eq i32 %240, 1
  br i1 %cmp469, label %if.then.471, label %if.end.473

if.then.471:                                      ; preds = %if.then.468
  %241 = load i32, i32* %score, align 4
  %add472 = add nsw i32 %241, 10
  store i32 %add472, i32* %score, align 4
  br label %if.end.473

if.end.473:                                       ; preds = %if.then.471, %if.then.468
  %242 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 54), align 4
  %cmp474 = icmp eq i32 %242, 1
  br i1 %cmp474, label %if.then.476, label %if.else.478

if.then.476:                                      ; preds = %if.end.473
  %243 = load i32, i32* %score, align 4
  %add477 = add nsw i32 %243, 20
  store i32 %add477, i32* %score, align 4
  br label %if.end.484

if.else.478:                                      ; preds = %if.end.473
  %244 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 54), align 4
  %cmp479 = icmp eq i32 %244, 2
  br i1 %cmp479, label %if.then.481, label %if.end.483

if.then.481:                                      ; preds = %if.else.478
  %245 = load i32, i32* %score, align 4
  %sub482 = sub nsw i32 %245, 15
  store i32 %sub482, i32* %score, align 4
  br label %if.end.483

if.end.483:                                       ; preds = %if.then.481, %if.else.478
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %if.then.476
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %cond.false.465, %cond.true.464, %lor.lhs.false.458
  %246 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 103), align 4
  %cmp486 = icmp eq i32 %246, 2
  br i1 %cmp486, label %land.lhs.true.494, label %lor.lhs.false.488

lor.lhs.false.488:                                ; preds = %if.end.485
  %247 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 90), align 4
  %cmp489 = icmp eq i32 %247, 2
  br i1 %cmp489, label %land.lhs.true.494, label %lor.lhs.false.491

lor.lhs.false.491:                                ; preds = %lor.lhs.false.488
  %248 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 90), align 4
  %cmp492 = icmp eq i32 %248, 1
  br i1 %cmp492, label %land.lhs.true.494, label %if.end.518

land.lhs.true.494:                                ; preds = %lor.lhs.false.491, %lor.lhs.false.488, %if.end.485
  %249 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 90), align 4
  %cmp495 = icmp eq i32 %249, 0
  br i1 %cmp495, label %cond.true.497, label %cond.false.498

cond.true.497:                                    ; preds = %land.lhs.true.494
  br i1 false, label %if.then.501, label %if.end.518

cond.false.498:                                   ; preds = %land.lhs.true.494
  %call499 = call i32 @is_attacked(i32 90, i32 1)
  %tobool500 = icmp ne i32 %call499, 0
  br i1 %tobool500, label %if.then.501, label %if.end.518

if.then.501:                                      ; preds = %cond.false.498, %cond.true.497
  %250 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 103), align 4
  %cmp502 = icmp eq i32 %250, 2
  br i1 %cmp502, label %if.then.504, label %if.end.506

if.then.504:                                      ; preds = %if.then.501
  %251 = load i32, i32* %score, align 4
  %sub505 = sub nsw i32 %251, 10
  store i32 %sub505, i32* %score, align 4
  br label %if.end.506

if.end.506:                                       ; preds = %if.then.504, %if.then.501
  %252 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 90), align 4
  %cmp507 = icmp eq i32 %252, 2
  br i1 %cmp507, label %if.then.509, label %if.else.511

if.then.509:                                      ; preds = %if.end.506
  %253 = load i32, i32* %score, align 4
  %sub510 = sub nsw i32 %253, 20
  store i32 %sub510, i32* %score, align 4
  br label %if.end.517

if.else.511:                                      ; preds = %if.end.506
  %254 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 90), align 4
  %cmp512 = icmp eq i32 %254, 1
  br i1 %cmp512, label %if.then.514, label %if.end.516

if.then.514:                                      ; preds = %if.else.511
  %255 = load i32, i32* %score, align 4
  %add515 = add nsw i32 %255, 15
  store i32 %add515, i32* %score, align 4
  br label %if.end.516

if.end.516:                                       ; preds = %if.then.514, %if.else.511
  br label %if.end.517

if.end.517:                                       ; preds = %if.end.516, %if.then.509
  br label %if.end.518

if.end.518:                                       ; preds = %if.end.517, %cond.false.498, %cond.true.497, %lor.lhs.false.491
  %256 = load i32, i32* @bking_loc, align 4
  %idxprom519 = sext i32 %256 to i64
  %arrayidx520 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom519
  %257 = load i32, i32* %arrayidx520, align 4
  %cmp521 = icmp eq i32 %257, 0
  br i1 %cmp521, label %cond.true.523, label %cond.false.524

cond.true.523:                                    ; preds = %if.end.518
  br i1 false, label %if.then.527, label %if.else.530

cond.false.524:                                   ; preds = %if.end.518
  %258 = load i32, i32* @bking_loc, align 4
  %call525 = call i32 @is_attacked(i32 %258, i32 1)
  %tobool526 = icmp ne i32 %call525, 0
  br i1 %tobool526, label %if.then.527, label %if.else.530

if.then.527:                                      ; preds = %cond.false.524, %cond.true.523
  %259 = load i32, i32* %wdev_dscale, align 4
  %shr528 = ashr i32 50, %259
  %260 = load i32, i32* %score, align 4
  %add529 = add nsw i32 %260, %shr528
  store i32 %add529, i32* %score, align 4
  br label %if.end.543

if.else.530:                                      ; preds = %cond.false.524, %cond.true.523
  %261 = load i32, i32* @wking_loc, align 4
  %idxprom531 = sext i32 %261 to i64
  %arrayidx532 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom531
  %262 = load i32, i32* %arrayidx532, align 4
  %cmp533 = icmp eq i32 %262, 0
  br i1 %cmp533, label %cond.true.535, label %cond.false.536

cond.true.535:                                    ; preds = %if.else.530
  br i1 false, label %if.then.539, label %if.end.542

cond.false.536:                                   ; preds = %if.else.530
  %263 = load i32, i32* @wking_loc, align 4
  %call537 = call i32 @is_attacked(i32 %263, i32 0)
  %tobool538 = icmp ne i32 %call537, 0
  br i1 %tobool538, label %if.then.539, label %if.end.542

if.then.539:                                      ; preds = %cond.false.536, %cond.true.535
  %264 = load i32, i32* %bdev_dscale, align 4
  %shr540 = ashr i32 50, %264
  %265 = load i32, i32* %score, align 4
  %sub541 = sub nsw i32 %265, %shr540
  store i32 %sub541, i32* %score, align 4
  br label %if.end.542

if.end.542:                                       ; preds = %if.then.539, %cond.false.536, %cond.true.535
  br label %if.end.543

if.end.543:                                       ; preds = %if.end.542, %if.then.527
  %266 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 44), align 4
  %cmp544 = icmp eq i32 %266, 4
  br i1 %cmp544, label %if.then.546, label %if.end.567

if.then.546:                                      ; preds = %if.end.543
  %267 = load i32, i32* %score, align 4
  %sub547 = sub nsw i32 %267, 20
  store i32 %sub547, i32* %score, align 4
  %268 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 44), align 4
  %cmp548 = icmp eq i32 %268, 0
  br i1 %cmp548, label %cond.true.550, label %cond.false.551

cond.true.550:                                    ; preds = %if.then.546
  br i1 false, label %if.then.554, label %if.end.556

cond.false.551:                                   ; preds = %if.then.546
  %call552 = call i32 @is_attacked(i32 44, i32 0)
  %tobool553 = icmp ne i32 %call552, 0
  br i1 %tobool553, label %if.then.554, label %if.end.556

if.then.554:                                      ; preds = %cond.false.551, %cond.true.550
  %269 = load i32, i32* %score, align 4
  %sub555 = sub nsw i32 %269, 40
  store i32 %sub555, i32* %score, align 4
  br label %if.end.556

if.end.556:                                       ; preds = %if.then.554, %cond.false.551, %cond.true.550
  %270 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 32), align 4
  %cmp557 = icmp eq i32 %270, 7
  br i1 %cmp557, label %if.then.559, label %if.end.561

if.then.559:                                      ; preds = %if.end.556
  %271 = load i32, i32* %score, align 4
  %add560 = add nsw i32 %271, 10
  store i32 %add560, i32* %score, align 4
  br label %if.end.561

if.end.561:                                       ; preds = %if.then.559, %if.end.556
  %272 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 31), align 4
  %cmp562 = icmp eq i32 %272, 11
  br i1 %cmp562, label %if.then.564, label %if.end.566

if.then.564:                                      ; preds = %if.end.561
  %273 = load i32, i32* %score, align 4
  %add565 = add nsw i32 %273, 10
  store i32 %add565, i32* %score, align 4
  br label %if.end.566

if.end.566:                                       ; preds = %if.then.564, %if.end.561
  br label %if.end.567

if.end.567:                                       ; preds = %if.end.566, %if.end.543
  %274 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 104), align 4
  %cmp568 = icmp eq i32 %274, 3
  br i1 %cmp568, label %if.then.570, label %if.end.591

if.then.570:                                      ; preds = %if.end.567
  %275 = load i32, i32* %score, align 4
  %add571 = add nsw i32 %275, 20
  store i32 %add571, i32* %score, align 4
  %276 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 104), align 4
  %cmp572 = icmp eq i32 %276, 0
  br i1 %cmp572, label %cond.true.574, label %cond.false.575

cond.true.574:                                    ; preds = %if.then.570
  br i1 false, label %if.then.578, label %if.end.580

cond.false.575:                                   ; preds = %if.then.570
  %call576 = call i32 @is_attacked(i32 104, i32 1)
  %tobool577 = icmp ne i32 %call576, 0
  br i1 %tobool577, label %if.then.578, label %if.end.580

if.then.578:                                      ; preds = %cond.false.575, %cond.true.574
  %277 = load i32, i32* %score, align 4
  %add579 = add nsw i32 %277, 40
  store i32 %add579, i32* %score, align 4
  br label %if.end.580

if.end.580:                                       ; preds = %if.then.578, %cond.false.575, %cond.true.574
  %278 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 116), align 4
  %cmp581 = icmp eq i32 %278, 8
  br i1 %cmp581, label %if.then.583, label %if.end.585

if.then.583:                                      ; preds = %if.end.580
  %279 = load i32, i32* %score, align 4
  %sub584 = sub nsw i32 %279, 10
  store i32 %sub584, i32* %score, align 4
  br label %if.end.585

if.end.585:                                       ; preds = %if.then.583, %if.end.580
  %280 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 115), align 4
  %cmp586 = icmp eq i32 %280, 12
  br i1 %cmp586, label %if.then.588, label %if.end.590

if.then.588:                                      ; preds = %if.end.585
  %281 = load i32, i32* %score, align 4
  %sub589 = sub nsw i32 %281, 10
  store i32 %sub589, i32* %score, align 4
  br label %if.end.590

if.end.590:                                       ; preds = %if.then.588, %if.end.585
  br label %if.end.591

if.end.591:                                       ; preds = %if.end.590, %if.end.567
  %282 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 57), align 4
  %cmp592 = icmp eq i32 %282, 12
  br i1 %cmp592, label %land.lhs.true.594, label %if.end.615

land.lhs.true.594:                                ; preds = %if.end.591
  %283 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 44), align 4
  %cmp595 = icmp ne i32 %283, 1
  br i1 %cmp595, label %if.then.597, label %if.end.615

if.then.597:                                      ; preds = %land.lhs.true.594
  %284 = load i32, i32* %score, align 4
  %sub598 = sub nsw i32 %284, 20
  store i32 %sub598, i32* %score, align 4
  %285 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 44), align 4
  %cmp599 = icmp eq i32 %285, 4
  br i1 %cmp599, label %if.then.601, label %if.end.614

if.then.601:                                      ; preds = %if.then.597
  %286 = load i32, i32* %score, align 4
  %sub602 = sub nsw i32 %286, 40
  store i32 %sub602, i32* %score, align 4
  %287 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 31), align 4
  %cmp603 = icmp eq i32 %287, 5
  br i1 %cmp603, label %if.then.611, label %lor.lhs.false.605

lor.lhs.false.605:                                ; preds = %if.then.601
  %288 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 32), align 4
  %cmp606 = icmp eq i32 %288, 5
  br i1 %cmp606, label %if.then.611, label %lor.lhs.false.608

lor.lhs.false.608:                                ; preds = %lor.lhs.false.605
  %289 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 33), align 4
  %cmp609 = icmp eq i32 %289, 5
  br i1 %cmp609, label %if.then.611, label %if.end.613

if.then.611:                                      ; preds = %lor.lhs.false.608, %lor.lhs.false.605, %if.then.601
  %290 = load i32, i32* %score, align 4
  %sub612 = sub nsw i32 %290, 80
  store i32 %sub612, i32* %score, align 4
  br label %if.end.613

if.end.613:                                       ; preds = %if.then.611, %lor.lhs.false.608
  br label %if.end.614

if.end.614:                                       ; preds = %if.end.613, %if.then.597
  br label %if.end.615

if.end.615:                                       ; preds = %if.end.614, %land.lhs.true.594, %if.end.591
  %291 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 93), align 4
  %cmp616 = icmp eq i32 %291, 11
  br i1 %cmp616, label %land.lhs.true.618, label %if.end.639

land.lhs.true.618:                                ; preds = %if.end.615
  %292 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 104), align 4
  %cmp619 = icmp ne i32 %292, 2
  br i1 %cmp619, label %if.then.621, label %if.end.639

if.then.621:                                      ; preds = %land.lhs.true.618
  %293 = load i32, i32* %score, align 4
  %add622 = add nsw i32 %293, 20
  store i32 %add622, i32* %score, align 4
  %294 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 104), align 4
  %cmp623 = icmp eq i32 %294, 3
  br i1 %cmp623, label %if.then.625, label %if.end.638

if.then.625:                                      ; preds = %if.then.621
  %295 = load i32, i32* %score, align 4
  %add626 = add nsw i32 %295, 40
  store i32 %add626, i32* %score, align 4
  %296 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 115), align 4
  %cmp627 = icmp eq i32 %296, 6
  br i1 %cmp627, label %if.then.635, label %lor.lhs.false.629

lor.lhs.false.629:                                ; preds = %if.then.625
  %297 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 116), align 4
  %cmp630 = icmp eq i32 %297, 6
  br i1 %cmp630, label %if.then.635, label %lor.lhs.false.632

lor.lhs.false.632:                                ; preds = %lor.lhs.false.629
  %298 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 117), align 4
  %cmp633 = icmp eq i32 %298, 6
  br i1 %cmp633, label %if.then.635, label %if.end.637

if.then.635:                                      ; preds = %lor.lhs.false.632, %lor.lhs.false.629, %if.then.625
  %299 = load i32, i32* %score, align 4
  %add636 = add nsw i32 %299, 80
  store i32 %add636, i32* %score, align 4
  br label %if.end.637

if.end.637:                                       ; preds = %if.then.635, %lor.lhs.false.632
  br label %if.end.638

if.end.638:                                       ; preds = %if.end.637, %if.then.621
  br label %if.end.639

if.end.639:                                       ; preds = %if.end.638, %land.lhs.true.618, %if.end.615
  br label %if.end.640

if.end.640:                                       ; preds = %if.end.639, %if.end.219
  %300 = load i32, i32* @cfg_attackeval, align 4
  %tobool641 = icmp ne i32 %300, 0
  br i1 %tobool641, label %if.then.642, label %if.end.864

if.then.642:                                      ; preds = %if.end.640
  store i32 0, i32* %badsquares, align 4
  store i32 0, i32* %safety, align 4
  %301 = load i32, i32* @wking_loc, align 4
  %sub643 = sub nsw i32 %301, 13
  %idxprom644 = sext i32 %sub643 to i64
  %arrayidx645 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom644
  %302 = load i32, i32* %arrayidx645, align 4
  %cmp646 = icmp eq i32 %302, 0
  br i1 %cmp646, label %cond.true.648, label %cond.false.649

cond.true.648:                                    ; preds = %if.then.642
  br label %cond.end

cond.false.649:                                   ; preds = %if.then.642
  %303 = load i32, i32* @wking_loc, align 4
  %sub650 = sub nsw i32 %303, 13
  %call651 = call i32 @nk_attacked(i32 %sub650, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.649, %cond.true.648
  %cond = phi i32 [ 0, %cond.true.648 ], [ %call651, %cond.false.649 ]
  %304 = load i32, i32* %badsquares, align 4
  %add652 = add i32 %304, %cond
  store i32 %add652, i32* %badsquares, align 4
  %305 = load i32, i32* @wking_loc, align 4
  %sub653 = sub nsw i32 %305, 12
  %idxprom654 = sext i32 %sub653 to i64
  %arrayidx655 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom654
  %306 = load i32, i32* %arrayidx655, align 4
  %cmp656 = icmp eq i32 %306, 0
  br i1 %cmp656, label %cond.true.658, label %cond.false.659

cond.true.658:                                    ; preds = %cond.end
  br label %cond.end.662

cond.false.659:                                   ; preds = %cond.end
  %307 = load i32, i32* @wking_loc, align 4
  %sub660 = sub nsw i32 %307, 12
  %call661 = call i32 @nk_attacked(i32 %sub660, i32 0)
  br label %cond.end.662

cond.end.662:                                     ; preds = %cond.false.659, %cond.true.658
  %cond663 = phi i32 [ 0, %cond.true.658 ], [ %call661, %cond.false.659 ]
  %308 = load i32, i32* %badsquares, align 4
  %add664 = add i32 %308, %cond663
  store i32 %add664, i32* %badsquares, align 4
  %309 = load i32, i32* @wking_loc, align 4
  %sub665 = sub nsw i32 %309, 11
  %idxprom666 = sext i32 %sub665 to i64
  %arrayidx667 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom666
  %310 = load i32, i32* %arrayidx667, align 4
  %cmp668 = icmp eq i32 %310, 0
  br i1 %cmp668, label %cond.true.670, label %cond.false.671

cond.true.670:                                    ; preds = %cond.end.662
  br label %cond.end.674

cond.false.671:                                   ; preds = %cond.end.662
  %311 = load i32, i32* @wking_loc, align 4
  %sub672 = sub nsw i32 %311, 11
  %call673 = call i32 @nk_attacked(i32 %sub672, i32 0)
  br label %cond.end.674

cond.end.674:                                     ; preds = %cond.false.671, %cond.true.670
  %cond675 = phi i32 [ 0, %cond.true.670 ], [ %call673, %cond.false.671 ]
  %312 = load i32, i32* %badsquares, align 4
  %add676 = add i32 %312, %cond675
  store i32 %add676, i32* %badsquares, align 4
  %313 = load i32, i32* @wking_loc, align 4
  %sub677 = sub nsw i32 %313, 1
  %idxprom678 = sext i32 %sub677 to i64
  %arrayidx679 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom678
  %314 = load i32, i32* %arrayidx679, align 4
  %cmp680 = icmp eq i32 %314, 0
  br i1 %cmp680, label %cond.true.682, label %cond.false.683

cond.true.682:                                    ; preds = %cond.end.674
  br label %cond.end.686

cond.false.683:                                   ; preds = %cond.end.674
  %315 = load i32, i32* @wking_loc, align 4
  %sub684 = sub nsw i32 %315, 1
  %call685 = call i32 @nk_attacked(i32 %sub684, i32 0)
  br label %cond.end.686

cond.end.686:                                     ; preds = %cond.false.683, %cond.true.682
  %cond687 = phi i32 [ 0, %cond.true.682 ], [ %call685, %cond.false.683 ]
  %316 = load i32, i32* %badsquares, align 4
  %add688 = add i32 %316, %cond687
  store i32 %add688, i32* %badsquares, align 4
  %317 = load i32, i32* @wking_loc, align 4
  %add689 = add nsw i32 %317, 1
  %idxprom690 = sext i32 %add689 to i64
  %arrayidx691 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom690
  %318 = load i32, i32* %arrayidx691, align 4
  %cmp692 = icmp eq i32 %318, 0
  br i1 %cmp692, label %cond.true.694, label %cond.false.695

cond.true.694:                                    ; preds = %cond.end.686
  br label %cond.end.698

cond.false.695:                                   ; preds = %cond.end.686
  %319 = load i32, i32* @wking_loc, align 4
  %add696 = add nsw i32 %319, 1
  %call697 = call i32 @nk_attacked(i32 %add696, i32 0)
  br label %cond.end.698

cond.end.698:                                     ; preds = %cond.false.695, %cond.true.694
  %cond699 = phi i32 [ 0, %cond.true.694 ], [ %call697, %cond.false.695 ]
  %320 = load i32, i32* %badsquares, align 4
  %add700 = add i32 %320, %cond699
  store i32 %add700, i32* %badsquares, align 4
  %321 = load i32, i32* @wking_loc, align 4
  %add701 = add nsw i32 %321, 11
  %idxprom702 = sext i32 %add701 to i64
  %arrayidx703 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom702
  %322 = load i32, i32* %arrayidx703, align 4
  %cmp704 = icmp eq i32 %322, 0
  br i1 %cmp704, label %cond.true.706, label %cond.false.707

cond.true.706:                                    ; preds = %cond.end.698
  br label %cond.end.710

cond.false.707:                                   ; preds = %cond.end.698
  %323 = load i32, i32* @wking_loc, align 4
  %add708 = add nsw i32 %323, 11
  %call709 = call i32 @nk_attacked(i32 %add708, i32 0)
  br label %cond.end.710

cond.end.710:                                     ; preds = %cond.false.707, %cond.true.706
  %cond711 = phi i32 [ 0, %cond.true.706 ], [ %call709, %cond.false.707 ]
  %324 = load i32, i32* %badsquares, align 4
  %add712 = add i32 %324, %cond711
  store i32 %add712, i32* %badsquares, align 4
  %325 = load i32, i32* @wking_loc, align 4
  %add713 = add nsw i32 %325, 12
  %idxprom714 = sext i32 %add713 to i64
  %arrayidx715 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom714
  %326 = load i32, i32* %arrayidx715, align 4
  %cmp716 = icmp eq i32 %326, 0
  br i1 %cmp716, label %cond.true.718, label %cond.false.719

cond.true.718:                                    ; preds = %cond.end.710
  br label %cond.end.722

cond.false.719:                                   ; preds = %cond.end.710
  %327 = load i32, i32* @wking_loc, align 4
  %add720 = add nsw i32 %327, 12
  %call721 = call i32 @nk_attacked(i32 %add720, i32 0)
  br label %cond.end.722

cond.end.722:                                     ; preds = %cond.false.719, %cond.true.718
  %cond723 = phi i32 [ 0, %cond.true.718 ], [ %call721, %cond.false.719 ]
  %328 = load i32, i32* %badsquares, align 4
  %add724 = add i32 %328, %cond723
  store i32 %add724, i32* %badsquares, align 4
  %329 = load i32, i32* @wking_loc, align 4
  %add725 = add nsw i32 %329, 13
  %idxprom726 = sext i32 %add725 to i64
  %arrayidx727 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom726
  %330 = load i32, i32* %arrayidx727, align 4
  %cmp728 = icmp eq i32 %330, 0
  br i1 %cmp728, label %cond.true.730, label %cond.false.731

cond.true.730:                                    ; preds = %cond.end.722
  br label %cond.end.734

cond.false.731:                                   ; preds = %cond.end.722
  %331 = load i32, i32* @wking_loc, align 4
  %add732 = add nsw i32 %331, 13
  %call733 = call i32 @nk_attacked(i32 %add732, i32 0)
  br label %cond.end.734

cond.end.734:                                     ; preds = %cond.false.731, %cond.true.730
  %cond735 = phi i32 [ 0, %cond.true.730 ], [ %call733, %cond.false.731 ]
  %332 = load i32, i32* %badsquares, align 4
  %add736 = add i32 %332, %cond735
  store i32 %add736, i32* %badsquares, align 4
  %333 = load i32, i32* @black_hand_eval, align 4
  %sub737 = sub nsw i32 0, %333
  %div = sdiv i32 %sub737, 100
  store i32 %div, i32* %norm_black_hand_eval, align 4
  %334 = load i32, i32* %norm_black_hand_eval, align 4
  %cmp738 = icmp sgt i32 %334, 14
  br i1 %cmp738, label %if.then.740, label %if.else.741

if.then.740:                                      ; preds = %cond.end.734
  store i32 14, i32* %norm_black_hand_eval, align 4
  br label %if.end.746

if.else.741:                                      ; preds = %cond.end.734
  %335 = load i32, i32* %norm_black_hand_eval, align 4
  %cmp742 = icmp slt i32 %335, 0
  br i1 %cmp742, label %if.then.744, label %if.end.745

if.then.744:                                      ; preds = %if.else.741
  store i32 0, i32* %norm_black_hand_eval, align 4
  br label %if.end.745

if.end.745:                                       ; preds = %if.then.744, %if.else.741
  br label %if.end.746

if.end.746:                                       ; preds = %if.end.745, %if.then.740
  %336 = load i32, i32* %badsquares, align 4
  %idxprom747 = sext i32 %336 to i64
  %337 = load i32, i32* %norm_black_hand_eval, align 4
  %idxprom748 = sext i32 %337 to i64
  %arrayidx749 = getelementptr inbounds [15 x [9 x i32]], [15 x [9 x i32]]* @ksafety_scaled, i32 0, i64 %idxprom748
  %arrayidx750 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx749, i32 0, i64 %idxprom747
  %338 = load i32, i32* %arrayidx750, align 4
  %339 = load i32, i32* %safety, align 4
  %sub751 = sub nsw i32 %339, %338
  store i32 %sub751, i32* %safety, align 4
  store i32 0, i32* %badsquares, align 4
  %340 = load i32, i32* @bking_loc, align 4
  %sub752 = sub nsw i32 %340, 13
  %idxprom753 = sext i32 %sub752 to i64
  %arrayidx754 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom753
  %341 = load i32, i32* %arrayidx754, align 4
  %cmp755 = icmp eq i32 %341, 0
  br i1 %cmp755, label %cond.true.757, label %cond.false.758

cond.true.757:                                    ; preds = %if.end.746
  br label %cond.end.761

cond.false.758:                                   ; preds = %if.end.746
  %342 = load i32, i32* @bking_loc, align 4
  %sub759 = sub nsw i32 %342, 13
  %call760 = call i32 @nk_attacked(i32 %sub759, i32 1)
  br label %cond.end.761

cond.end.761:                                     ; preds = %cond.false.758, %cond.true.757
  %cond762 = phi i32 [ 0, %cond.true.757 ], [ %call760, %cond.false.758 ]
  %343 = load i32, i32* %badsquares, align 4
  %add763 = add i32 %343, %cond762
  store i32 %add763, i32* %badsquares, align 4
  %344 = load i32, i32* @bking_loc, align 4
  %sub764 = sub nsw i32 %344, 12
  %idxprom765 = sext i32 %sub764 to i64
  %arrayidx766 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom765
  %345 = load i32, i32* %arrayidx766, align 4
  %cmp767 = icmp eq i32 %345, 0
  br i1 %cmp767, label %cond.true.769, label %cond.false.770

cond.true.769:                                    ; preds = %cond.end.761
  br label %cond.end.773

cond.false.770:                                   ; preds = %cond.end.761
  %346 = load i32, i32* @bking_loc, align 4
  %sub771 = sub nsw i32 %346, 12
  %call772 = call i32 @nk_attacked(i32 %sub771, i32 1)
  br label %cond.end.773

cond.end.773:                                     ; preds = %cond.false.770, %cond.true.769
  %cond774 = phi i32 [ 0, %cond.true.769 ], [ %call772, %cond.false.770 ]
  %347 = load i32, i32* %badsquares, align 4
  %add775 = add i32 %347, %cond774
  store i32 %add775, i32* %badsquares, align 4
  %348 = load i32, i32* @bking_loc, align 4
  %sub776 = sub nsw i32 %348, 11
  %idxprom777 = sext i32 %sub776 to i64
  %arrayidx778 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom777
  %349 = load i32, i32* %arrayidx778, align 4
  %cmp779 = icmp eq i32 %349, 0
  br i1 %cmp779, label %cond.true.781, label %cond.false.782

cond.true.781:                                    ; preds = %cond.end.773
  br label %cond.end.785

cond.false.782:                                   ; preds = %cond.end.773
  %350 = load i32, i32* @bking_loc, align 4
  %sub783 = sub nsw i32 %350, 11
  %call784 = call i32 @nk_attacked(i32 %sub783, i32 1)
  br label %cond.end.785

cond.end.785:                                     ; preds = %cond.false.782, %cond.true.781
  %cond786 = phi i32 [ 0, %cond.true.781 ], [ %call784, %cond.false.782 ]
  %351 = load i32, i32* %badsquares, align 4
  %add787 = add i32 %351, %cond786
  store i32 %add787, i32* %badsquares, align 4
  %352 = load i32, i32* @bking_loc, align 4
  %sub788 = sub nsw i32 %352, 1
  %idxprom789 = sext i32 %sub788 to i64
  %arrayidx790 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom789
  %353 = load i32, i32* %arrayidx790, align 4
  %cmp791 = icmp eq i32 %353, 0
  br i1 %cmp791, label %cond.true.793, label %cond.false.794

cond.true.793:                                    ; preds = %cond.end.785
  br label %cond.end.797

cond.false.794:                                   ; preds = %cond.end.785
  %354 = load i32, i32* @bking_loc, align 4
  %sub795 = sub nsw i32 %354, 1
  %call796 = call i32 @nk_attacked(i32 %sub795, i32 1)
  br label %cond.end.797

cond.end.797:                                     ; preds = %cond.false.794, %cond.true.793
  %cond798 = phi i32 [ 0, %cond.true.793 ], [ %call796, %cond.false.794 ]
  %355 = load i32, i32* %badsquares, align 4
  %add799 = add i32 %355, %cond798
  store i32 %add799, i32* %badsquares, align 4
  %356 = load i32, i32* @bking_loc, align 4
  %add800 = add nsw i32 %356, 1
  %idxprom801 = sext i32 %add800 to i64
  %arrayidx802 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom801
  %357 = load i32, i32* %arrayidx802, align 4
  %cmp803 = icmp eq i32 %357, 0
  br i1 %cmp803, label %cond.true.805, label %cond.false.806

cond.true.805:                                    ; preds = %cond.end.797
  br label %cond.end.809

cond.false.806:                                   ; preds = %cond.end.797
  %358 = load i32, i32* @bking_loc, align 4
  %add807 = add nsw i32 %358, 1
  %call808 = call i32 @nk_attacked(i32 %add807, i32 1)
  br label %cond.end.809

cond.end.809:                                     ; preds = %cond.false.806, %cond.true.805
  %cond810 = phi i32 [ 0, %cond.true.805 ], [ %call808, %cond.false.806 ]
  %359 = load i32, i32* %badsquares, align 4
  %add811 = add i32 %359, %cond810
  store i32 %add811, i32* %badsquares, align 4
  %360 = load i32, i32* @bking_loc, align 4
  %add812 = add nsw i32 %360, 11
  %idxprom813 = sext i32 %add812 to i64
  %arrayidx814 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom813
  %361 = load i32, i32* %arrayidx814, align 4
  %cmp815 = icmp eq i32 %361, 0
  br i1 %cmp815, label %cond.true.817, label %cond.false.818

cond.true.817:                                    ; preds = %cond.end.809
  br label %cond.end.821

cond.false.818:                                   ; preds = %cond.end.809
  %362 = load i32, i32* @bking_loc, align 4
  %add819 = add nsw i32 %362, 11
  %call820 = call i32 @nk_attacked(i32 %add819, i32 1)
  br label %cond.end.821

cond.end.821:                                     ; preds = %cond.false.818, %cond.true.817
  %cond822 = phi i32 [ 0, %cond.true.817 ], [ %call820, %cond.false.818 ]
  %363 = load i32, i32* %badsquares, align 4
  %add823 = add i32 %363, %cond822
  store i32 %add823, i32* %badsquares, align 4
  %364 = load i32, i32* @bking_loc, align 4
  %add824 = add nsw i32 %364, 12
  %idxprom825 = sext i32 %add824 to i64
  %arrayidx826 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom825
  %365 = load i32, i32* %arrayidx826, align 4
  %cmp827 = icmp eq i32 %365, 0
  br i1 %cmp827, label %cond.true.829, label %cond.false.830

cond.true.829:                                    ; preds = %cond.end.821
  br label %cond.end.833

cond.false.830:                                   ; preds = %cond.end.821
  %366 = load i32, i32* @bking_loc, align 4
  %add831 = add nsw i32 %366, 12
  %call832 = call i32 @nk_attacked(i32 %add831, i32 1)
  br label %cond.end.833

cond.end.833:                                     ; preds = %cond.false.830, %cond.true.829
  %cond834 = phi i32 [ 0, %cond.true.829 ], [ %call832, %cond.false.830 ]
  %367 = load i32, i32* %badsquares, align 4
  %add835 = add i32 %367, %cond834
  store i32 %add835, i32* %badsquares, align 4
  %368 = load i32, i32* @bking_loc, align 4
  %add836 = add nsw i32 %368, 13
  %idxprom837 = sext i32 %add836 to i64
  %arrayidx838 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom837
  %369 = load i32, i32* %arrayidx838, align 4
  %cmp839 = icmp eq i32 %369, 0
  br i1 %cmp839, label %cond.true.841, label %cond.false.842

cond.true.841:                                    ; preds = %cond.end.833
  br label %cond.end.845

cond.false.842:                                   ; preds = %cond.end.833
  %370 = load i32, i32* @bking_loc, align 4
  %add843 = add nsw i32 %370, 13
  %call844 = call i32 @nk_attacked(i32 %add843, i32 1)
  br label %cond.end.845

cond.end.845:                                     ; preds = %cond.false.842, %cond.true.841
  %cond846 = phi i32 [ 0, %cond.true.841 ], [ %call844, %cond.false.842 ]
  %371 = load i32, i32* %badsquares, align 4
  %add847 = add i32 %371, %cond846
  store i32 %add847, i32* %badsquares, align 4
  %372 = load i32, i32* @white_hand_eval, align 4
  %div848 = sdiv i32 %372, 100
  store i32 %div848, i32* %norm_white_hand_eval, align 4
  %373 = load i32, i32* %norm_white_hand_eval, align 4
  %cmp849 = icmp sgt i32 %373, 14
  br i1 %cmp849, label %if.then.851, label %if.else.852

if.then.851:                                      ; preds = %cond.end.845
  store i32 14, i32* %norm_white_hand_eval, align 4
  br label %if.end.857

if.else.852:                                      ; preds = %cond.end.845
  %374 = load i32, i32* %norm_white_hand_eval, align 4
  %cmp853 = icmp slt i32 %374, 0
  br i1 %cmp853, label %if.then.855, label %if.end.856

if.then.855:                                      ; preds = %if.else.852
  store i32 0, i32* %norm_white_hand_eval, align 4
  br label %if.end.856

if.end.856:                                       ; preds = %if.then.855, %if.else.852
  br label %if.end.857

if.end.857:                                       ; preds = %if.end.856, %if.then.851
  %375 = load i32, i32* %badsquares, align 4
  %idxprom858 = sext i32 %375 to i64
  %376 = load i32, i32* %norm_white_hand_eval, align 4
  %idxprom859 = sext i32 %376 to i64
  %arrayidx860 = getelementptr inbounds [15 x [9 x i32]], [15 x [9 x i32]]* @ksafety_scaled, i32 0, i64 %idxprom859
  %arrayidx861 = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx860, i32 0, i64 %idxprom858
  %377 = load i32, i32* %arrayidx861, align 4
  %378 = load i32, i32* %safety, align 4
  %add862 = add nsw i32 %378, %377
  store i32 %add862, i32* %safety, align 4
  %379 = load i32, i32* %safety, align 4
  %380 = load i32, i32* %score, align 4
  %add863 = add nsw i32 %380, %379
  store i32 %add863, i32* %score, align 4
  br label %if.end.864

if.end.864:                                       ; preds = %if.end.857, %if.end.640
  %381 = load i32, i32* @white_hand_eval, align 4
  %382 = load i32, i32* @black_hand_eval, align 4
  %add865 = add nsw i32 %381, %382
  %383 = load i32, i32* %score, align 4
  %add866 = add nsw i32 %383, %add865
  store i32 %add866, i32* %score, align 4
  %384 = load i32, i32* %score, align 4
  call void @storeECache(i32 %384)
  %385 = load i32, i32* @white_to_move, align 4
  %cmp867 = icmp eq i32 %385, 1
  br i1 %cmp867, label %if.then.869, label %if.else.870

if.then.869:                                      ; preds = %if.end.864
  %386 = load i32, i32* %score, align 4
  store i32 %386, i32* %retval
  br label %return

if.else.870:                                      ; preds = %if.end.864
  %387 = load i32, i32* %score, align 4
  %sub871 = sub nsw i32 0, %387
  store i32 %sub871, i32* %retval
  br label %return

return:                                           ; preds = %if.else.870, %if.then.869, %if.end.13, %if.then.12, %if.then.6, %if.then.2, %if.then
  %388 = load i32, i32* %retval
  ret i32 %388
}

declare i32 @std_eval(i32, i32) #2

declare i32 @suicide_eval() #2

declare i32 @losers_eval() #2

declare void @checkECache(i32*, i32*) #2

declare i32 @is_attacked(i32, i32) #2

declare i32 @nk_attacked(i32, i32) #2

declare void @storeECache(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
