; ModuleID = './MultiSource.Applications.SPASS/39.dfgparser.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.yystype = type { i8* }
%struct.DFG_DESCRIPTIONTYPE = type { i8*, i8*, i8*, i8*, i32, i8*, i8* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%union.yyalloc = type { %union.yystype }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }
%struct.DFG_SYMENTRY = type { i32, i32, i32 }
%struct.DFG_VARENTRY = type { i8*, i32 }

@dfg_nerrs = common global i32 0, align 4
@dfg_char = common global i32 0, align 4
@yypact = internal constant [477 x i16] [i16 9, i16 -32, i16 35, i16 232, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -6, i16 13, i16 67, i16 20, i16 45, i16 53, i16 30, i16 -356, i16 110, i16 46, i16 118, i16 121, i16 -12, i16 73, i16 -356, i16 91, i16 84, i16 113, i16 112, i16 141, i16 123, i16 128, i16 132, i16 -356, i16 -356, i16 175, i16 152, i16 161, i16 155, i16 191, i16 2, i16 162, i16 180, i16 -356, i16 204, i16 232, i16 214, i16 173, i16 -356, i16 252, i16 176, i16 206, i16 209, i16 213, i16 226, i16 232, i16 47, i16 -356, i16 -356, i16 80, i16 218, i16 254, i16 224, i16 -14, i16 -356, i16 -356, i16 230, i16 233, i16 -356, i16 234, i16 241, i16 232, i16 242, i16 -356, i16 -356, i16 -356, i16 243, i16 237, i16 21, i16 244, i16 -356, i16 260, i16 -356, i16 246, i16 245, i16 250, i16 251, i16 294, i16 247, i16 248, i16 2, i16 232, i16 93, i16 -356, i16 -356, i16 232, i16 255, i16 272, i16 232, i16 253, i16 -356, i16 256, i16 -356, i16 232, i16 257, i16 232, i16 290, i16 232, i16 232, i16 -356, i16 -356, i16 -356, i16 258, i16 21, i16 261, i16 -356, i16 271, i16 -356, i16 262, i16 264, i16 14, i16 263, i16 317, i16 108, i16 -356, i16 -356, i16 265, i16 266, i16 80, i16 119, i16 -356, i16 85, i16 268, i16 312, i16 -356, i16 124, i16 -356, i16 270, i16 273, i16 269, i16 -356, i16 274, i16 -356, i16 309, i16 275, i16 -356, i16 -52, i16 276, i16 277, i16 232, i16 279, i16 -356, i16 -356, i16 281, i16 -356, i16 -356, i16 -356, i16 284, i16 287, i16 288, i16 321, i16 -356, i16 -356, i16 286, i16 108, i16 -356, i16 -356, i16 289, i16 232, i16 232, i16 138, i16 -356, i16 -356, i16 156, i16 291, i16 293, i16 232, i16 -17, i16 232, i16 232, i16 232, i16 232, i16 346, i16 232, i16 -356, i16 232, i16 -356, i16 40, i16 296, i16 -356, i16 -356, i16 297, i16 299, i16 302, i16 300, i16 -356, i16 303, i16 -356, i16 -356, i16 285, i16 301, i16 85, i16 232, i16 143, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 337, i16 16, i16 304, i16 298, i16 306, i16 -356, i16 32, i16 -356, i16 311, i16 305, i16 -356, i16 56, i16 308, i16 314, i16 310, i16 -356, i16 -356, i16 315, i16 318, i16 -356, i16 -356, i16 108, i16 -356, i16 -356, i16 313, i16 319, i16 156, i16 -2, i16 320, i16 -356, i16 -356, i16 232, i16 232, i16 316, i16 322, i16 232, i16 232, i16 323, i16 324, i16 307, i16 325, i16 326, i16 -356, i16 240, i16 -356, i16 327, i16 329, i16 108, i16 -356, i16 -356, i16 -356, i16 331, i16 332, i16 334, i16 333, i16 -356, i16 335, i16 -356, i16 336, i16 -356, i16 -356, i16 145, i16 -356, i16 -356, i16 -356, i16 96, i16 -356, i16 -356, i16 -356, i16 338, i16 340, i16 -356, i16 -356, i16 342, i16 232, i16 163, i16 339, i16 -356, i16 -356, i16 239, i16 343, i16 232, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 344, i16 -356, i16 -356, i16 341, i16 347, i16 348, i16 350, i16 -356, i16 3, i16 -356, i16 -15, i16 -356, i16 -356, i16 -356, i16 42, i16 232, i16 -356, i16 43, i16 -356, i16 349, i16 351, i16 -356, i16 -356, i16 96, i16 232, i16 352, i16 96, i16 96, i16 353, i16 355, i16 357, i16 57, i16 358, i16 361, i16 -356, i16 359, i16 -356, i16 163, i16 108, i16 360, i16 362, i16 -356, i16 363, i16 364, i16 -356, i16 44, i16 -356, i16 -13, i16 -356, i16 366, i16 365, i16 -356, i16 168, i16 372, i16 -356, i16 369, i16 -356, i16 -356, i16 -356, i16 96, i16 -356, i16 96, i16 232, i16 371, i16 373, i16 341, i16 -356, i16 -356, i16 0, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 367, i16 -356, i16 370, i16 -356, i16 375, i16 -356, i16 306, i16 374, i16 228, i16 377, i16 379, i16 380, i16 341, i16 -356, i16 -356, i16 50, i16 381, i16 376, i16 382, i16 -356, i16 383, i16 -356, i16 384, i16 66, i16 -356, i16 -356, i16 386, i16 228, i16 387, i16 385, i16 -356, i16 -356, i16 388, i16 7, i16 -356, i16 -356, i16 -356, i16 389, i16 232, i16 239, i16 -356, i16 228, i16 -356, i16 69, i16 239, i16 393, i16 232, i16 232, i16 90, i16 96, i16 306, i16 390, i16 -356, i16 -356, i16 153, i16 -356, i16 -356, i16 391, i16 179, i16 -356, i16 396, i16 395, i16 -356, i16 397, i16 239, i16 398, i16 401, i16 -356, i16 402, i16 399, i16 -356, i16 168, i16 96, i16 409, i16 408, i16 185, i16 -356, i16 410, i16 411, i16 -356, i16 405, i16 168, i16 -356, i16 -356, i16 400, i16 412, i16 -356, i16 168, i16 413, i16 198, i16 345, i16 -356, i16 -356, i16 168, i16 168, i16 394, i16 -356, i16 168, i16 -356], align 16
@yytranslate = internal constant [319 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02@A\02\02E\02B\02\02\02\02\02\02\02\02\02\02\02F\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02C\02D\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?", align 16
@yycheck = internal constant [507 x i16] [i16 3, i16 46, i16 103, i16 3, i16 19, i16 19, i16 361, i16 9, i16 20, i16 276, i16 3, i16 8, i16 164, i16 65, i16 27, i16 6, i16 18, i16 69, i16 32, i16 31, i16 18, i16 38, i16 19, i16 23, i16 364, i16 18, i16 5, i16 40, i16 21, i16 22, i16 23, i16 24, i16 64, i16 12, i16 27, i16 0, i16 48, i16 40, i16 53, i16 41, i16 33, i16 34, i16 45, i16 41, i16 37, i16 47, i16 63, i16 40, i16 41, i16 47, i16 390, i16 11, i16 55, i16 3, i16 47, i16 322, i16 59, i16 17, i16 325, i16 65, i16 46, i16 416, i16 60, i16 56, i16 62, i16 8, i16 64, i16 60, i16 71, i16 62, i16 425, i16 57, i16 58, i16 23, i16 67, i16 19, i16 19, i16 27, i16 179, i16 66, i16 232, i16 65, i16 26, i16 16, i16 185, i16 69, i16 66, i16 90, i16 91, i16 36, i16 40, i16 358, i16 95, i16 360, i16 49, i16 98, i16 66, i16 65, i16 18, i16 3, i16 103, i16 69, i16 105, i16 18, i16 107, i16 108, i16 258, i16 65, i16 65, i16 65, i16 64, i16 69, i16 69, i16 69, i16 18, i16 68, i16 69, i16 21, i16 22, i16 23, i16 24, i16 41, i16 4, i16 27, i16 14, i16 128, i16 41, i16 47, i16 131, i16 33, i16 34, i16 65, i16 47, i16 37, i16 65, i16 69, i16 40, i16 41, i16 69, i16 66, i16 60, i16 449, i16 62, i16 47, i16 64, i16 60, i16 149, i16 62, i16 64, i16 64, i16 29, i16 459, i16 56, i16 254, i16 63, i16 65, i16 60, i16 465, i16 62, i16 69, i16 427, i16 68, i16 69, i16 471, i16 472, i16 168, i16 169, i16 475, i16 60, i16 61, i16 173, i16 3, i16 59, i16 176, i16 18, i16 178, i16 179, i16 180, i16 181, i16 67, i16 183, i16 18, i16 185, i16 450, i16 43, i16 337, i16 18, i16 68, i16 69, i16 66, i16 22, i16 23, i16 68, i16 69, i16 66, i16 27, i16 64, i16 41, i16 201, i16 202, i16 25, i16 33, i16 34, i16 47, i16 41, i16 37, i16 68, i16 69, i16 40, i16 41, i16 47, i16 68, i16 69, i16 68, i16 69, i16 47, i16 60, i16 65, i16 62, i16 64, i16 64, i16 68, i16 69, i16 60, i16 63, i16 62, i16 35, i16 64, i16 60, i16 67, i16 62, i16 51, i16 18, i16 19, i16 237, i16 21, i16 32, i16 64, i16 24, i16 242, i16 243, i16 27, i16 66, i16 246, i16 247, i16 290, i16 18, i16 68, i16 69, i16 21, i16 18, i16 254, i16 24, i16 68, i16 69, i16 41, i16 42, i16 18, i16 18, i16 19, i16 21, i16 47, i16 10, i16 24, i16 50, i16 37, i16 68, i16 69, i16 54, i16 41, i16 56, i16 65, i16 63, i16 41, i16 60, i16 47, i16 62, i16 64, i16 52, i16 47, i16 41, i16 41, i16 285, i16 286, i16 56, i16 67, i16 47, i16 47, i16 60, i16 292, i16 62, i16 67, i16 60, i16 39, i16 62, i16 56, i16 66, i16 64, i16 64, i16 60, i16 60, i16 62, i16 62, i16 66, i16 44, i16 64, i16 64, i16 64, i16 64, i16 15, i16 65, i16 314, i16 66, i16 63, i16 66, i16 64, i16 69, i16 45, i16 28, i16 66, i16 323, i16 65, i16 67, i16 65, i16 67, i16 64, i16 55, i16 64, i16 66, i16 65, i16 13, i16 19, i16 66, i16 336, i16 69, i16 67, i16 66, i16 64, i16 69, i16 30, i16 19, i16 386, i16 66, i16 69, i16 69, i16 66, i16 69, i16 66, i16 351, i16 65, i16 63, i16 65, i16 64, i16 7, i16 69, i16 66, i16 19, i16 66, i16 361, i16 66, i16 405, i16 65, i16 64, i16 66, i16 65, i16 63, i16 66, i16 66, i16 65, i16 65, i16 65, i16 64, i16 417, i16 65, i16 419, i16 69, i16 66, i16 422, i16 67, i16 65, i16 113, i16 66, i16 69, i16 65, i16 68, i16 66, i16 66, i16 128, i16 66, i16 66, i16 66, i16 66, i16 66, i16 66, i16 65, i16 64, i16 64, i16 442, i16 64, i16 66, i16 65, i16 62, i16 3, i16 201, i16 66, i16 69, i16 66, i16 65, i16 64, i16 66, i16 69, i16 64, i16 64, i16 416, i16 64, i16 70, i16 65, i16 65, i16 69, i16 64, i16 67, i16 424, i16 425, i16 66, i16 66, i16 64, i16 66, i16 65, i16 69, i16 66, i16 64, i16 66, i16 60, i16 69, i16 65, i16 64, i16 69, i16 64, i16 62, i16 69, i16 65, i16 67, i16 65, i16 64, i16 64, i16 64, i16 449, i16 65, i16 64, i16 40, i16 65, i16 68, i16 66, i16 237, i16 67, i16 65, i16 459, i16 69, i16 69, i16 66, i16 69, i16 65, i16 465, i16 68, i16 70, i16 67, i16 69, i16 67, i16 471, i16 472, i16 69, i16 69, i16 475, i16 65, i16 69, i16 65, i16 65, i16 65, i16 243, i16 66, i16 393, i16 411, i16 90, i16 405, i16 451, i16 393, i16 447, i16 419, i16 63, i16 -1, i16 336, i16 -1, i16 285, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 178], align 16
@yytable = internal constant [507 x i16] [i16 10, i16 77, i16 139, i16 388, i16 331, i16 99, i16 384, i16 261, i16 30, i16 301, i16 293, i16 328, i16 196, i16 184, i16 362, i16 1, i16 262, i16 185, i16 62, i16 31, i16 5, i16 209, i16 329, i16 389, i16 387, i16 5, i16 110, i16 363, i16 67, i16 294, i16 295, i16 68, i16 3, i16 111, i16 296, i16 4, i16 32, i16 58, i16 332, i16 263, i16 297, i16 298, i16 65, i16 6, i16 299, i16 264, i16 210, i16 300, i16 6, i16 7, i16 407, i16 223, i16 88, i16 388, i16 7, i16 339, i16 94, i16 224, i16 342, i16 11, i16 154, i16 428, i16 8, i16 73, i16 9, i16 348, i16 55, i16 8, i16 106, i16 9, i16 436, i16 155, i16 156, i16 389, i16 425, i16 249, i16 349, i16 362, i16 213, i16 12, i16 257, i16 240, i16 250, i16 13, i16 221, i16 185, i16 15, i16 58, i16 126, i16 19, i16 363, i16 382, i16 130, i16 383, i16 16, i16 134, i16 21, i16 245, i16 5, i16 293, i16 138, i16 246, i16 141, i16 5, i16 144, i16 138, i16 284, i16 333, i16 335, i16 359, i16 25, i16 176, i16 336, i16 360, i16 5, i16 89, i16 90, i16 67, i16 294, i16 295, i16 68, i16 6, i16 26, i16 296, i16 23, i16 94, i16 6, i16 7, i16 172, i16 297, i16 298, i16 418, i16 7, i16 299, i16 431, i16 419, i16 300, i16 6, i16 419, i16 34, i16 8, i16 454, i16 9, i16 7, i16 91, i16 8, i16 188, i16 9, i16 37, i16 169, i16 28, i16 464, i16 73, i16 281, i16 36, i16 437, i16 8, i16 468, i16 9, i16 360, i16 438, i16 127, i16 128, i16 473, i16 474, i16 198, i16 199, i16 476, i16 161, i16 162, i16 205, i16 369, i16 38, i16 208, i16 5, i16 138, i16 138, i16 214, i16 218, i16 40, i16 220, i16 5, i16 138, i16 455, i16 41, i16 354, i16 5, i16 167, i16 168, i16 43, i16 370, i16 371, i16 175, i16 176, i16 44, i16 372, i16 45, i16 6, i16 172, i16 235, i16 47, i16 373, i16 374, i16 7, i16 6, i16 375, i16 200, i16 201, i16 376, i16 6, i16 7, i16 236, i16 237, i16 291, i16 292, i16 7, i16 8, i16 50, i16 9, i16 52, i16 202, i16 441, i16 442, i16 8, i16 51, i16 9, i16 53, i16 314, i16 8, i16 59, i16 9, i16 60, i16 5, i16 66, i16 205, i16 67, i16 62, i16 78, i16 68, i16 267, i16 214, i16 69, i16 82, i16 271, i16 273, i16 319, i16 5, i16 444, i16 243, i16 67, i16 5, i16 138, i16 68, i16 458, i16 459, i16 6, i16 70, i16 5, i16 5, i16 280, i16 67, i16 7, i16 79, i16 68, i16 71, i16 400, i16 470, i16 471, i16 72, i16 6, i16 73, i16 83, i16 84, i16 6, i16 8, i16 7, i16 9, i16 85, i16 86, i16 7, i16 6, i16 6, i16 134, i16 315, i16 73, i16 95, i16 7, i16 7, i16 8, i16 321, i16 9, i16 98, i16 8, i16 96, i16 9, i16 73, i16 102, i16 103, i16 104, i16 8, i16 8, i16 9, i16 9, i16 109, i16 114, i16 105, i16 107, i16 108, i16 113, i16 121, i16 118, i16 334, i16 117, i16 119, i16 124, i16 120, i16 123, i16 132, i16 142, i16 136, i16 340, i16 137, i16 131, i16 147, i16 140, i16 149, i16 150, i16 158, i16 152, i16 153, i16 159, i16 174, i16 165, i16 315, i16 164, i16 173, i16 177, i16 178, i16 179, i16 182, i16 194, i16 403, i16 186, i16 181, i16 183, i16 189, i16 187, i16 190, i16 377, i16 191, i16 192, i16 195, i16 193, i16 219, i16 232, i16 197, i16 239, i16 206, i16 214, i16 207, i16 403, i16 225, i16 242, i16 227, i16 228, i16 229, i16 230, i16 233, i16 231, i16 241, i16 248, i16 276, i16 429, i16 251, i16 403, i16 243, i16 253, i16 433, i16 247, i16 252, i16 148, i16 255, i16 258, i16 256, i16 269, i16 259, i16 266, i16 166, i16 270, i16 274, i16 275, i16 277, i16 278, i16 282, i16 283, i16 285, i16 286, i16 448, i16 287, i16 288, i16 289, i16 318, i16 388, i16 234, i16 310, i16 290, i16 311, i16 312, i16 322, i16 320, i16 323, i16 325, i16 326, i16 214, i16 327, i16 472, i16 338, i16 341, i16 337, i16 346, i16 345, i16 435, i16 214, i16 347, i16 350, i16 351, i16 355, i16 356, i16 352, i16 357, i16 367, i16 368, i16 380, i16 358, i16 381, i16 385, i16 393, i16 386, i16 413, i16 395, i16 397, i16 399, i16 404, i16 405, i16 406, i16 411, i16 377, i16 414, i16 417, i16 363, i16 423, i16 415, i16 420, i16 260, i16 422, i16 440, i16 377, i16 424, i16 427, i16 434, i16 443, i16 445, i16 377, i16 446, i16 475, i16 449, i16 447, i16 465, i16 377, i16 377, i16 450, i16 451, i16 377, i16 457, i16 462, i16 460, i16 461, i16 466, i16 268, i16 469, i16 408, i16 426, i16 125, i16 421, i16 456, i16 409, i16 452, i16 430, i16 100, i16 0, i16 353, i16 0, i16 313, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 212], align 16
@dfg_lval = common global %union.yystype zeroinitializer, align 8
@yydefact = internal constant [477 x i8] c"\00\00\00\00\01bca`_\00\00\00\00\12\00\00\AE2\00\00\14\00\00G\00\00\08\00\1A\00\00\00\AF4h\00\00\00\0A\00\00 \02\00\00\00\00H\8C\00\00\00\00\00\00\00\16\18\00\00$\00\00\C0\B1\00\00~\00\00\00\00}56|\00\00\00i\A8\04\00\00\00\00\00\00\00\00\00\00\1C\1E\00\00*\00\00\C1\003\00\00\00>\00\008EF\00\00\00\8D\11\05\00\00\00\00\0C\00\15\17\00\00\00\00\22\00\00\00\C3\00\B0\00\88\00:\00?\00\00\8A\00\00\00\00\00\A9\09\00\0E\10\0F\00\00\00\0010\00\00\1B\1D\00\00\00\00&(\00\00\00\00\00\00\00\00\00\00\00\80\00I\00\00\AA\0B\00\00\00\00\19\00!#\00\00\00\00\00,.\13\C2\C4\B5\B3\00\00\00f;d\00B\00\00\8B\00\00\00\00\AC\06\00\00\03\1F\00%'\00\00\00\00\00\89\7F\00\00\00\00\00\00\00\00\00\00\00\8E\00\07\00\00\00+-\B4\00\00\00\00\B2\00e\009C\00@7DTmk\90\00\00\0D)\00\00\00\00\B6g\00\00\00[X]^YZ\00\5CUK\00\00\00M\00\81\00\AB\AD/\00\00\BC\00\BA\00\00=A\00\00\00\00\00\00\00\00\00\00\00\B8\00\B7\00\00\00\00L\00\00V\00Qoj\00\00\8F\00\00\BB\00<NJ\00P\00\00\00\00Kpq\83l\9F\9C\A2\A1\9D\9E\9B\A0\9A\00\98\BE\B9\00WR\00\00\00\00\00K\84\85\00\A3\00\00O\00r\00\00vx\00\00\00\00\A6\A7\00\00\99\BF\BD\00\00\00u\00n\00\00\00\00\00\00\00s\00w\87\00z\82\00\00\A4\00\00y\00\00\00\00S\00\00{\00\00\00\00\00\92\00\00\86\94\00\A5t\00\00\93\00\00\00\00\91\95\00\00\00\96\00\97", align 16
@yyr2 = internal constant [197 x i8] c"\00\02\0A\0B\05\05\05\05\00\05\00\05\00\05\01\01\01\06\00\09\00\05\01\03\01\05\00\05\01\03\01\05\00\05\01\03\00\05\01\03\01\05\00\05\01\03\01\05\01\01\00\05\00\02\01\07\02\07\00\00\0B\09\00\01\01\03\01\03\08\01\01\00\02\00\07\00\02\01\04\06\04\00\00\0A\00\01\01\03\01\01\01\01\01\01\01\01\01\01\01\01\01\03\01\04\00\02\0A\00\0B\00\07\00\01\01\00\00\0A\04\01\03\01\04\01\03\01\01\01\06\04\00\07\00\01\01\08\04\01\04\01\03\00\02\00\09\00\0F\01\03\00\04\03\05\00\03\01\01\01\01\01\01\01\01\01\00\03\07\01\01\00\02\00\06\00\03\00\02\05\00\09\01\03\00\03\04\04\06\01\03\01\06\00\02\01\02\05\01\03", align 16
@dfg_DESC = internal global %struct.DFG_DESCRIPTIONTYPE zeroinitializer, align 8
@dfg_SORTDECLLIST = internal global %struct.LIST_HELP* null, align 8
@dfg_AXIOMLIST = internal global %struct.LIST_HELP* null, align 8
@dfg_CONJECLIST = internal global %struct.LIST_HELP* null, align 8
@dfg_IGNORE = internal global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"set_flag\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"set_DomPred\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"set_precedence\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"\0A Line %d: Symbol is not a variable.\0A\00", align 1
@dfg_LINENUMBER = common global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"\0A Line %d: Symbol is not a predicate.\0A\00", align 1
@dfg_AXCLAUSES = internal global %struct.LIST_HELP* null, align 8
@dfg_CONCLAUSES = internal global %struct.LIST_HELP* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"SPASS\00", align 1
@dfg_PROOFLIST = internal global %struct.LIST_HELP* null, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"splitlevel\00", align 1
@dfg_TERMLIST = internal global %struct.LIST_HELP* null, align 8
@dfg_IGNORETEXT = common global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"\0A Undefined symbol %s\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c" in DomPred list.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"\0A Symbol %s isn't a predicate\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"\0A Found unknown flag %s\00", align 1
@dfg_FLAGS = internal global i32* null, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"\0A Undefined symbol %s \00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c" in precedence list.\0A\00", align 1
@dfg_PRECEDENCE = internal global i32* null, align 8
@dfg_USERPRECEDENCE = internal global %struct.LIST_HELP* null, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"in precedence list.\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"\0A Invalid symbol status %s\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c" in precedence list.\00", align 1
@yyr1 = internal constant [197 x i8] c"\00GHIJKLMNNOOPPQQQRSSTTUUVVWWXXYYZZ[[\5C\5C]]^^__``aabbccddeeeefgehiijjkklmmnnooppqqqqrsqttuuvvvwwxxyyyyyzz{{||}~}\7F\7F\80\80\81\82\83\81\84\85\85\86\86\87\87\88\88\88\88\88\89\89\8A\8A\8B\8B\8C\8D\8D\8E\8E\8F\8F\91\90\92\92\93\93\94\94\95\95\97\96\98\98\98\98\98\98\98\98\98\99\99\99\9A\9A\9B\9B\9D\9C\9E\9E\9F\9F\A0\A1\A0\A2\A2\A3\A3\A4\A4\A4\A5\A5\A6\A6\A7\A7\A8\A8\A9\AA\AA", align 16
@yypgoto = internal constant [100 x i16] [i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 392, i16 -356, i16 -356, i16 259, i16 -356, i16 -356, i16 -356, i16 -356, i16 202, i16 -356, i16 -356, i16 216, i16 -152, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 267, i16 -356, i16 -356, i16 -340, i16 -267, i16 -356, i16 -356, i16 -356, i16 70, i16 -356, i16 -356, i16 -356, i16 -3, i16 -355, i16 235, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 87, i16 -356, i16 -356, i16 33, i16 78, i16 68, i16 -356, i16 -45, i16 -356, i16 -356, i16 92, i16 39, i16 -101, i16 328, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -308, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 -356, i16 154, i16 -356, i16 -356, i16 425, i16 207], align 16
@yydefgoto = internal constant [100 x i16] [i16 -1, i16 2, i16 14, i16 20, i16 27, i16 87, i16 122, i16 39, i16 54, i16 160, i16 157, i16 17, i16 18, i16 29, i16 56, i16 57, i16 42, i16 92, i16 93, i16 61, i16 129, i16 97, i16 170, i16 171, i16 133, i16 203, i16 204, i16 163, i16 24, i16 46, i16 74, i16 180, i16 244, i16 75, i16 143, i16 272, i16 217, i16 48, i16 112, i16 35, i16 222, i16 324, i16 343, i16 361, i16 398, i16 302, i16 344, i16 303, i16 304, i16 305, i16 76, i16 215, i16 216, i16 49, i16 80, i16 308, i16 307, i16 364, i16 365, i16 416, i16 439, i16 366, i16 401, i16 402, i16 432, i16 306, i16 330, i16 390, i16 391, i16 392, i16 145, i16 146, i16 81, i16 115, i16 279, i16 309, i16 453, i16 463, i16 467, i16 378, i16 394, i16 379, i16 412, i16 410, i16 116, i16 151, i16 226, i16 254, i16 22, i16 33, i16 101, i16 211, i16 238, i16 265, i16 316, i16 317, i16 396, i16 63, i16 64, i16 135], align 16
@yytname = internal constant [172 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.214, i32 0, i32 0), i8* null], align 16
@.str.16 = private unnamed_addr constant [25 x i8] c"parse error, unexpected \00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c", expecting \00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" or \00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"parse error; also virtual memory exhausted\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@yystos = internal constant [477 x i8] c"\00\06H@\00\12)/<>yAB\10IB1RS$JB\9F\0Ec@\04K\1DT\14\1F0\A0Bn?@;NC+WBB@d\19l|A?@#O@UVyC3Z \A8\A9y\13\15\18\1B*268ehy\88@\0A}\8FBA?@4LyDE@XYyC'\5CC\13\A9\A1B@@@y@@B\05\0Cm@,\90\9BBA?@\0FMEBVyDE[yC-_y\AABAy\8DCy\1Ciy\8D\8EAm@7\9CBA.9:Q@\0DP<=bEBYDE@]^yC\13DEB@EfE\1EEAEBEyBBA?@\13AbByyDE@`ayBBy&?\A2\8E\8Dyz{ky\07y\8Do\0B\11A\9DBA?BAEB^yDE\A3\13AA@EgAECA\13\1AAAB\9EBAbEBa\09\12)/\A4By{DByjyBB@BB\91\13\8DBAb@@@BAEDE\03\16\17\1B!\22%(qtvwx\88\7F~\92BBA\AA@y\A5\A6>\88By@Ep@@@\08\13\89\135AyAEEAqyAqquC@B\08\13B@E\A6bBABEAEr\1B(\80\81\84@B\03\16\17\1B!\22%(y\96\98<Aqqz@@p\03\17\8A\8B\8CE\97E\A7AsC%\85\86\88A@@p\81\8B\9A@\99>AD\82@AEB\85CAECuEz\88\86A\87\88ByzAq\83ADEEDADE\88CEE\8C\93\96q\84ADEAAE\94\96CA\95\96BDEF\96\96F\96", align 16
@.str.21 = private unnamed_addr constant [22 x i8] c"parser stack overflow\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"\0A Line %i: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"satisfiable\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"unsatisfiable\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"dfgparser.y\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"\0A In dfg_ProblemStatusString: Invalid status.\0A\00", align 1
@.str.30 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"list_of_descriptions.\0A  name(\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"{* *}\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c").\0A  author(\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c").\0A\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"  version(\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"  logic(\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"  status(\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c").\0A  description(\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"  date(\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"end_of_list.\00", align 1
@fol_ALL = external global i32, align 4
@fol_NOT = external global i32, align 4
@fol_EQUIV = external global i32, align 4
@fol_IMPLIED = external global i32, align 4
@fol_IMPLIES = external global i32, align 4
@fol_AND = external global i32, align 4
@fol_OR = external global i32, align 4
@fol_EXIST = external global i32, align 4
@symbol_TYPEMASK = external constant i32, align 4
@stack_POINTER = external global i32, align 4
@stack_STACK = external global [10000 x i8*], align 16
@fol_TRUE = external global i32, align 4
@fol_FALSE = external global i32, align 4
@fol_EQUALITY = external global i32, align 4
@.str.41 = private unnamed_addr constant [31 x i8] c"\0A Line %d: is not a function.\0A\00", align 1
@symbol_SIGNATURE = external global %struct.signature**, align 8
@symbol_TYPESTATBITS = external constant i32, align 4
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@.str.42 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too small for flag %s.\0A\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too large for flag %s.\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"$end\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"$undefined\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"DFG_AND\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"DFG_AUTHOR\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"DFG_AXIOMS\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"DFG_BEGPROB\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"DFG_BY\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"DFG_CLAUSE\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"DFG_CLOSEBRACE\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"DFG_CLSLIST\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"DFG_CNF\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"DFG_CONJECS\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"DFG_DATE\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"DFG_DECLLIST\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"DFG_DESC\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"DFG_DESCLIST\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"DFG_DNF\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"DFG_DOMPRED\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"DFG_ENDLIST\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"DFG_ENDPROB\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"DFG_EQUAL\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"DFG_EQUIV\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"DFG_EXISTS\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"DFG_FALSE\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"DFG_FORMLIST\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"DFG_FORMULA\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"DFG_FORALL\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"DFG_FREELY\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"DFG_FUNC\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"DFG_GENERATED\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"DFG_GENSET\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"DFG_HYPOTH\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"DFG_IMPLIED\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"DFG_IMPLIES\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"DFG_LOGIC\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"DFG_NAME\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"DFG_NOT\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"DFG_OPENBRACE\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"DFG_OPERAT\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"DFG_OR\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"DFG_PREC\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"DFG_PRED\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"DFG_PRDICAT\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"DFG_PRFLIST\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"DFG_QUANTIF\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"DFG_SATIS\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"DFG_SETFLAG\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"DFG_SETTINGS\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"DFG_SYMLIST\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"DFG_SORT\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"DFG_SORTS\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"DFG_STATUS\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"DFG_STEP\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"DFG_SUBSORT\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"DFG_TERMLIST\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"DFG_TRUE\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"DFG_UNKNOWN\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"DFG_UNSATIS\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"DFG_VERSION\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"DFG_NUM\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"DFG_MINUS1\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"DFG_ID\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"DFG_TEXT\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"'.'\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"'['\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"']'\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"problem\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"author\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"desctext\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"versionopt\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"logicopt\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"dateopt\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"log_state\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"logicalpart\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"symbollistopt\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"functionsopt\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"functionlist\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c"predicatesopt\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"predicatelist\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"pred\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"sortsopt\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"sortlist\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"operatorsopt\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"operatorlist\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"quantifiersopt\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"quantifierlist\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"quant\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.143 = private unnamed_addr constant [19 x i8] c"declarationlistopt\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"decllistopt\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"decl\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"@1\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"@2\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"gendecl\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"freelyopt\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"funclist\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"sortdecl\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"formulalist\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.154 = private unnamed_addr constant [16 x i8] c"formulalistsopt\00", align 1
@.str.155 = private unnamed_addr constant [15 x i8] c"formulalistopt\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"labelopt\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"formula\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"@3\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"@4\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"formulaopt\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"arglist\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c"binsymbol\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"nsymbol\00", align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"quantsymbol\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"qtermlist\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"qterm\00", align 1
@.str.168 = private unnamed_addr constant [15 x i8] c"clauselistsopt\00", align 1
@.str.169 = private unnamed_addr constant [11 x i8] c"clauselist\00", align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"@5\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"cnfclausesopt\00", align 1
@.str.172 = private unnamed_addr constant [13 x i8] c"cnfclauseopt\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"cnfclause\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"@6\00", align 1
@.str.175 = private unnamed_addr constant [3 x i8] c"@7\00", align 1
@.str.176 = private unnamed_addr constant [14 x i8] c"cnfclausebody\00", align 1
@.str.177 = private unnamed_addr constant [8 x i8] c"litlist\00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"lit\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"atomlist\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c"atom\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c"dnfclausesopt\00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"dnfclauseopt\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"dnfclause\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"dnfclausebody\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"termlist\00", align 1
@.str.187 = private unnamed_addr constant [14 x i8] c"prooflistsopt\00", align 1
@.str.188 = private unnamed_addr constant [10 x i8] c"prooflist\00", align 1
@.str.189 = private unnamed_addr constant [3 x i8] c"@8\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"prooflistopt\00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"parentlist\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"assoclistopt\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"assoclist\00", align 1
@.str.194 = private unnamed_addr constant [14 x i8] c"id_or_formula\00", align 1
@.str.195 = private unnamed_addr constant [3 x i8] c"@9\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"anysymbol\00", align 1
@.str.197 = private unnamed_addr constant [8 x i8] c"optargs\00", align 1
@.str.198 = private unnamed_addr constant [7 x i8] c"clause\00", align 1
@.str.199 = private unnamed_addr constant [15 x i8] c"listOfTermsopt\00", align 1
@.str.200 = private unnamed_addr constant [12 x i8] c"listOfTerms\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"@10\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"terms\00", align 1
@.str.203 = private unnamed_addr constant [16 x i8] c"settinglistsopt\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"settinglist\00", align 1
@.str.205 = private unnamed_addr constant [4 x i8] c"@11\00", align 1
@.str.206 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c"spassflags\00", align 1
@.str.208 = private unnamed_addr constant [10 x i8] c"spassflag\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"preclist\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"precitem\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c"statopt\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"gsettings\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"gsetting\00", align 1
@.str.214 = private unnamed_addr constant [10 x i8] c"labellist\00", align 1
@.str.215 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@dfg_in = external global %struct._IO_FILE*, align 8
@dfg_SYMBOLLIST = internal global %struct.LIST_HELP* null, align 8
@dfg_VARLIST = internal global %struct.LIST_HELP* null, align 8
@dfg_VARDECL = internal global i32 0, align 4
@.str.216 = private unnamed_addr constant [58 x i8] c"\0A Line %u: symbols with arbitrary arity are not allowed.\0A\00", align 1
@.str.217 = private unnamed_addr constant [46 x i8] c"\0A Line %u: symbol %s was already declared as \00", align 1
@.str.218 = private unnamed_addr constant [11 x i8] c"function.\0A\00", align 1
@.str.219 = private unnamed_addr constant [12 x i8] c"predicate.\0A\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"junctor.\0A\00", align 1
@.str.221 = private unnamed_addr constant [15 x i8] c"unknown type.\0A\00", align 1
@.str.222 = private unnamed_addr constant [57 x i8] c"\0A Line %u: symbol %s was already declared with arity %d\0A\00", align 1
@.str.223 = private unnamed_addr constant [33 x i8] c"\0A Line %d: Undefined symbol %s.\0A\00", align 1
@.str.224 = private unnamed_addr constant [11 x i8] c"\0A Line %u:\00", align 1
@.str.225 = private unnamed_addr constant [21 x i8] c" The actual arity %u\00", align 1
@.str.226 = private unnamed_addr constant [22 x i8] c" of symbol %s differs\00", align 1
@.str.227 = private unnamed_addr constant [30 x i8] c" from the previous arity %u.\0A\00", align 1
@.str.228 = private unnamed_addr constant [50 x i8] c"\0A Line %u: Symbol %s was declared with arity %u.\0A\00", align 1
@.str.229 = private unnamed_addr constant [30 x i8] c"\0A Line %u: Free Variable %s.\0A\00", align 1
@symbol_STANDARDVARCOUNTER = external global i32, align 4
@.str.230 = private unnamed_addr constant [44 x i8] c"\0A Line %d: Symbol is not a sort predicate.\0A\00", align 1
@.str.231 = private unnamed_addr constant [33 x i8] c"\0A Line %d: undefined symbol %s.\0A\00", align 1
@.str.232 = private unnamed_addr constant [38 x i8] c"\0A Line %d: Symbol is not a function.\0A\00", align 1
@.str.233 = private unnamed_addr constant [55 x i8] c"\0A In dfg_VarCheck: List of variables should be empty!\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dfg_parse() #0 {
entry:
  %yystate = alloca i32, align 4
  %yyn = alloca i32, align 4
  %yyresult = alloca i32, align 4
  %yyerrstatus = alloca i32, align 4
  %yychar1 = alloca i32, align 4
  %yyssa = alloca [200 x i16], align 16
  %yyss = alloca i16*, align 8
  %yyssp = alloca i16*, align 8
  %yyvsa = alloca [200 x %union.yystype], align 16
  %yyvs = alloca %union.yystype*, align 8
  %yyvsp = alloca %union.yystype*, align 8
  %yystacksize = alloca i64, align 8
  %yyval = alloca %union.yystype, align 8
  %yylen = alloca i32, align 4
  %yysize = alloca i64, align 8
  %yyss1 = alloca i16*, align 8
  %yyptr = alloca %union.yyalloc*, align 8
  %yynewbytes = alloca i64, align 8
  %yynewbytes22 = alloca i64, align 8
  %term205 = alloca %struct.term*, align 8
  %pair = alloca %struct.LIST_HELP*, align 8
  %s = alloca i32, align 4
  %p = alloca i32, align 4
  %v = alloca i32, align 4
  %pair547 = alloca %struct.LIST_HELP*, align 8
  %tupel = alloca %struct.LIST_HELP*, align 8
  %Rule = alloca i32, align 4
  %s1060 = alloca i32, align 4
  %flag = alloca i32, align 4
  %s1109 = alloca i32, align 4
  %s1125 = alloca i32, align 4
  %yysize1259 = alloca i64, align 8
  %yytype = alloca i32, align 4
  %yymsg = alloca i8*, align 8
  %yyx = alloca i32, align 4
  %yycount = alloca i32, align 4
  %yyp = alloca i8*, align 8
  %yyq = alloca i8*, align 8
  store i32 0, i32* %yychar1, align 4
  %arraydecay = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  store i16* %arraydecay, i16** %yyss, align 8
  %arraydecay1 = getelementptr inbounds [200 x %union.yystype], [200 x %union.yystype]* %yyvsa, i32 0, i32 0
  store %union.yystype* %arraydecay1, %union.yystype** %yyvs, align 8
  store i64 200, i64* %yystacksize, align 8
  store i32 0, i32* %yystate, align 4
  store i32 0, i32* %yyerrstatus, align 4
  store i32 0, i32* @dfg_nerrs, align 4
  store i32 -2, i32* @dfg_char, align 4
  %0 = load i16*, i16** %yyss, align 8
  store i16* %0, i16** %yyssp, align 8
  %1 = load %union.yystype*, %union.yystype** %yyvs, align 8
  store %union.yystype* %1, %union.yystype** %yyvsp, align 8
  br label %yysetstate

yynewstate:                                       ; preds = %if.end.1417, %if.end.1247, %if.end.105
  %2 = load i16*, i16** %yyssp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %2, i32 1
  store i16* %incdec.ptr, i16** %yyssp, align 8
  br label %yysetstate

yysetstate:                                       ; preds = %yynewstate, %entry
  %3 = load i32, i32* %yystate, align 4
  %conv = trunc i32 %3 to i16
  %4 = load i16*, i16** %yyssp, align 8
  store i16 %conv, i16* %4, align 2
  %5 = load i16*, i16** %yyssp, align 8
  %6 = load i16*, i16** %yyss, align 8
  %7 = load i64, i64* %yystacksize, align 8
  %add.ptr = getelementptr inbounds i16, i16* %6, i64 %7
  %add.ptr2 = getelementptr inbounds i16, i16* %add.ptr, i64 -1
  %cmp = icmp uge i16* %5, %add.ptr2
  br i1 %cmp, label %if.then, label %if.end.48

if.then:                                          ; preds = %yysetstate
  %8 = load i16*, i16** %yyssp, align 8
  %9 = load i16*, i16** %yyss, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add = add nsw i64 %sub.ptr.div, 1
  store i64 %add, i64* %yysize, align 8
  %10 = load i64, i64* %yystacksize, align 8
  %cmp4 = icmp uge i64 %10, 10000
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  br label %yyoverflowlab

if.end:                                           ; preds = %if.then
  %11 = load i64, i64* %yystacksize, align 8
  %mul = mul i64 %11, 2
  store i64 %mul, i64* %yystacksize, align 8
  %12 = load i64, i64* %yystacksize, align 8
  %cmp7 = icmp ugt i64 %12, 10000
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i64 10000, i64* %yystacksize, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %13 = load i16*, i16** %yyss, align 8
  store i16* %13, i16** %yyss1, align 8
  %14 = load i64, i64* %yystacksize, align 8
  %mul11 = mul i64 %14, 10
  %add12 = add i64 %mul11, 7
  %15 = alloca i8, i64 %add12
  %16 = bitcast i8* %15 to %union.yyalloc*
  store %union.yyalloc* %16, %union.yyalloc** %yyptr, align 8
  %17 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %tobool = icmp ne %union.yyalloc* %17, null
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  br label %yyoverflowlab

if.end.14:                                        ; preds = %if.end.10
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %18 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyss15 = bitcast %union.yyalloc* %18 to i16*
  %19 = bitcast i16* %yyss15 to i8*
  %20 = load i16*, i16** %yyss, align 8
  %21 = bitcast i16* %20 to i8*
  %22 = load i64, i64* %yysize, align 8
  %mul16 = mul i64 %22, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %21, i64 %mul16, i32 2, i1 false)
  %23 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyss17 = bitcast %union.yyalloc* %23 to i16*
  store i16* %yyss17, i16** %yyss, align 8
  %24 = load i64, i64* %yystacksize, align 8
  %mul18 = mul i64 %24, 2
  %add19 = add i64 %mul18, 7
  store i64 %add19, i64* %yynewbytes, align 8
  %25 = load i64, i64* %yynewbytes, align 8
  %div = udiv i64 %25, 8
  %26 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %add.ptr20 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %26, i64 %div
  store %union.yyalloc* %add.ptr20, %union.yyalloc** %yyptr, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.21

do.body.21:                                       ; preds = %do.end
  %27 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyvs23 = bitcast %union.yyalloc* %27 to %union.yystype*
  %28 = bitcast %union.yystype* %yyvs23 to i8*
  %29 = load %union.yystype*, %union.yystype** %yyvs, align 8
  %30 = bitcast %union.yystype* %29 to i8*
  %31 = load i64, i64* %yysize, align 8
  %mul24 = mul i64 %31, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %30, i64 %mul24, i32 8, i1 false)
  %32 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyvs25 = bitcast %union.yyalloc* %32 to %union.yystype*
  store %union.yystype* %yyvs25, %union.yystype** %yyvs, align 8
  %33 = load i64, i64* %yystacksize, align 8
  %mul26 = mul i64 %33, 8
  %add27 = add i64 %mul26, 7
  store i64 %add27, i64* %yynewbytes22, align 8
  %34 = load i64, i64* %yynewbytes22, align 8
  %div28 = udiv i64 %34, 8
  %35 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %add.ptr29 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %35, i64 %div28
  store %union.yyalloc* %add.ptr29, %union.yyalloc** %yyptr, align 8
  br label %do.end.30

do.end.30:                                        ; preds = %do.body.21
  %36 = load i16*, i16** %yyss1, align 8
  %arraydecay31 = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  %cmp32 = icmp ne i16* %36, %arraydecay31
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %do.end.30
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  br label %do.end.36

do.end.36:                                        ; preds = %do.body.35
  br label %if.end.37

if.end.37:                                        ; preds = %do.end.36, %do.end.30
  %37 = load i16*, i16** %yyss, align 8
  %38 = load i64, i64* %yysize, align 8
  %add.ptr38 = getelementptr inbounds i16, i16* %37, i64 %38
  %add.ptr39 = getelementptr inbounds i16, i16* %add.ptr38, i64 -1
  store i16* %add.ptr39, i16** %yyssp, align 8
  %39 = load %union.yystype*, %union.yystype** %yyvs, align 8
  %40 = load i64, i64* %yysize, align 8
  %add.ptr40 = getelementptr inbounds %union.yystype, %union.yystype* %39, i64 %40
  %add.ptr41 = getelementptr inbounds %union.yystype, %union.yystype* %add.ptr40, i64 -1
  store %union.yystype* %add.ptr41, %union.yystype** %yyvsp, align 8
  %41 = load i16*, i16** %yyssp, align 8
  %42 = load i16*, i16** %yyss, align 8
  %43 = load i64, i64* %yystacksize, align 8
  %add.ptr42 = getelementptr inbounds i16, i16* %42, i64 %43
  %add.ptr43 = getelementptr inbounds i16, i16* %add.ptr42, i64 -1
  %cmp44 = icmp uge i16* %41, %add.ptr43
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.37
  br label %yyabortlab

if.end.47:                                        ; preds = %if.end.37
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %yysetstate
  br label %yybackup

yybackup:                                         ; preds = %if.end.48
  %44 = load i32, i32* %yystate, align 4
  %idxprom = sext i32 %44 to i64
  %arrayidx = getelementptr inbounds [477 x i16], [477 x i16]* @yypact, i32 0, i64 %idxprom
  %45 = load i16, i16* %arrayidx, align 2
  %conv49 = sext i16 %45 to i32
  store i32 %conv49, i32* %yyn, align 4
  %46 = load i32, i32* %yyn, align 4
  %cmp50 = icmp eq i32 %46, -356
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %yybackup
  br label %yydefault

if.end.53:                                        ; preds = %yybackup
  %47 = load i32, i32* @dfg_char, align 4
  %cmp54 = icmp eq i32 %47, -2
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  %call = call i32 @dfg_lex()
  store i32 %call, i32* @dfg_char, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.53
  %48 = load i32, i32* @dfg_char, align 4
  %cmp58 = icmp sle i32 %48, 0
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %if.end.57
  store i32 0, i32* %yychar1, align 4
  store i32 0, i32* @dfg_char, align 4
  br label %if.end.66

if.else:                                          ; preds = %if.end.57
  %49 = load i32, i32* @dfg_char, align 4
  %cmp61 = icmp ule i32 %49, 318
  br i1 %cmp61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %50 = load i32, i32* @dfg_char, align 4
  %idxprom63 = sext i32 %50 to i64
  %arrayidx64 = getelementptr inbounds [319 x i8], [319 x i8]* @yytranslate, i32 0, i64 %idxprom63
  %51 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %51 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv65, %cond.true ], [ 2, %cond.false ]
  store i32 %cond, i32* %yychar1, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %cond.end, %if.then.60
  %52 = load i32, i32* %yychar1, align 4
  %53 = load i32, i32* %yyn, align 4
  %add67 = add nsw i32 %53, %52
  store i32 %add67, i32* %yyn, align 4
  %54 = load i32, i32* %yyn, align 4
  %cmp68 = icmp slt i32 %54, 0
  br i1 %cmp68, label %if.then.78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.66
  %55 = load i32, i32* %yyn, align 4
  %cmp70 = icmp slt i32 506, %55
  br i1 %cmp70, label %if.then.78, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false
  %56 = load i32, i32* %yyn, align 4
  %idxprom73 = sext i32 %56 to i64
  %arrayidx74 = getelementptr inbounds [507 x i16], [507 x i16]* @yycheck, i32 0, i64 %idxprom73
  %57 = load i16, i16* %arrayidx74, align 2
  %conv75 = sext i16 %57 to i32
  %58 = load i32, i32* %yychar1, align 4
  %cmp76 = icmp ne i32 %conv75, %58
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %lor.lhs.false.72, %lor.lhs.false, %if.end.66
  br label %yydefault

if.end.79:                                        ; preds = %lor.lhs.false.72
  %59 = load i32, i32* %yyn, align 4
  %idxprom80 = sext i32 %59 to i64
  %arrayidx81 = getelementptr inbounds [507 x i16], [507 x i16]* @yytable, i32 0, i64 %idxprom80
  %60 = load i16, i16* %arrayidx81, align 2
  %conv82 = zext i16 %60 to i32
  store i32 %conv82, i32* %yyn, align 4
  %61 = load i32, i32* %yyn, align 4
  %cmp83 = icmp sle i32 %61, 0
  br i1 %cmp83, label %if.then.85, label %if.end.93

if.then.85:                                       ; preds = %if.end.79
  %62 = load i32, i32* %yyn, align 4
  %cmp86 = icmp eq i32 %62, 0
  br i1 %cmp86, label %if.then.91, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %if.then.85
  %63 = load i32, i32* %yyn, align 4
  %cmp89 = icmp eq i32 %63, -1
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %lor.lhs.false.88, %if.then.85
  br label %yyerrlab

if.end.92:                                        ; preds = %lor.lhs.false.88
  %64 = load i32, i32* %yyn, align 4
  %sub = sub nsw i32 0, %64
  store i32 %sub, i32* %yyn, align 4
  br label %yyreduce

if.end.93:                                        ; preds = %if.end.79
  %65 = load i32, i32* %yyn, align 4
  %cmp94 = icmp eq i32 %65, 4
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.93
  br label %yyacceptlab

if.end.97:                                        ; preds = %if.end.93
  %66 = load i32, i32* @dfg_char, align 4
  %cmp98 = icmp ne i32 %66, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.97
  store i32 -2, i32* @dfg_char, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.97
  %67 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %incdec.ptr102 = getelementptr inbounds %union.yystype, %union.yystype* %67, i32 1
  store %union.yystype* %incdec.ptr102, %union.yystype** %yyvsp, align 8
  %68 = bitcast %union.yystype* %incdec.ptr102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* bitcast (%union.yystype* @dfg_lval to i8*), i64 8, i32 8, i1 false)
  %69 = load i32, i32* %yyerrstatus, align 4
  %tobool103 = icmp ne i32 %69, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.101
  %70 = load i32, i32* %yyerrstatus, align 4
  %dec = add nsw i32 %70, -1
  store i32 %dec, i32* %yyerrstatus, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.end.101
  %71 = load i32, i32* %yyn, align 4
  store i32 %71, i32* %yystate, align 4
  br label %yynewstate

yydefault:                                        ; preds = %if.then.78, %if.then.52
  %72 = load i32, i32* %yystate, align 4
  %idxprom106 = sext i32 %72 to i64
  %arrayidx107 = getelementptr inbounds [477 x i8], [477 x i8]* @yydefact, i32 0, i64 %idxprom106
  %73 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %73 to i32
  store i32 %conv108, i32* %yyn, align 4
  %74 = load i32, i32* %yyn, align 4
  %cmp109 = icmp eq i32 %74, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %yydefault
  br label %yyerrlab

if.end.112:                                       ; preds = %yydefault
  br label %yyreduce

yyreduce:                                         ; preds = %if.end.112, %if.end.92
  %75 = load i32, i32* %yyn, align 4
  %idxprom113 = sext i32 %75 to i64
  %arrayidx114 = getelementptr inbounds [197 x i8], [197 x i8]* @yyr2, i32 0, i64 %idxprom113
  %76 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %76 to i32
  store i32 %conv115, i32* %yylen, align 4
  %77 = load i32, i32* %yylen, align 4
  %sub116 = sub nsw i32 1, %77
  %idxprom117 = sext i32 %sub116 to i64
  %78 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx118 = getelementptr inbounds %union.yystype, %union.yystype* %78, i64 %idxprom117
  %79 = bitcast %union.yystype* %yyval to i8*
  %80 = bitcast %union.yystype* %arrayidx118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 8, i32 8, i1 false)
  %81 = load i32, i32* %yyn, align 4
  switch i32 %81, label %sw.epilog.1211 [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.120
    i32 5, label %sw.bb.123
    i32 6, label %sw.bb.126
    i32 7, label %sw.bb.128
    i32 9, label %sw.bb.131
    i32 11, label %sw.bb.134
    i32 13, label %sw.bb.137
    i32 14, label %sw.bb.140
    i32 15, label %sw.bb.142
    i32 16, label %sw.bb.144
    i32 24, label %sw.bb.146
    i32 25, label %sw.bb.149
    i32 30, label %sw.bb.153
    i32 31, label %sw.bb.156
    i32 34, label %sw.bb.161
    i32 35, label %sw.bb.164
    i32 40, label %sw.bb.167
    i32 41, label %sw.bb.170
    i32 46, label %sw.bb.175
    i32 47, label %sw.bb.178
    i32 48, label %sw.bb.183
    i32 49, label %sw.bb.185
    i32 55, label %sw.bb.189
    i32 56, label %sw.bb.194
    i32 57, label %sw.bb.199
    i32 58, label %sw.bb.202
    i32 59, label %sw.bb.203
    i32 60, label %sw.bb.204
    i32 61, label %sw.bb.214
    i32 62, label %sw.bb.221
    i32 63, label %sw.bb.223
    i32 64, label %sw.bb.225
    i32 65, label %sw.bb.230
    i32 66, label %sw.bb.237
    i32 67, label %sw.bb.240
    i32 68, label %sw.bb.243
    i32 69, label %sw.bb.259
    i32 70, label %sw.bb.261
    i32 73, label %sw.bb.263
    i32 74, label %sw.bb.266
    i32 75, label %sw.bb.294
    i32 76, label %sw.bb.296
    i32 77, label %sw.bb.300
    i32 78, label %sw.bb.304
    i32 79, label %sw.bb.316
    i32 80, label %sw.bb.331
    i32 81, label %sw.bb.343
    i32 82, label %sw.bb.344
    i32 83, label %sw.bb.345
    i32 84, label %sw.bb.359
    i32 85, label %sw.bb.361
    i32 86, label %sw.bb.365
    i32 87, label %sw.bb.376
    i32 88, label %sw.bb.391
    i32 89, label %sw.bb.394
    i32 90, label %sw.bb.397
    i32 91, label %sw.bb.400
    i32 92, label %sw.bb.403
    i32 93, label %sw.bb.406
    i32 94, label %sw.bb.409
    i32 95, label %sw.bb.412
    i32 96, label %sw.bb.423
    i32 97, label %sw.bb.433
    i32 98, label %sw.bb.441
    i32 99, label %sw.bb.449
    i32 100, label %sw.bb.457
    i32 101, label %sw.bb.468
    i32 102, label %sw.bb.483
    i32 103, label %sw.bb.498
    i32 106, label %sw.bb.523
    i32 107, label %sw.bb.539
    i32 108, label %sw.bb.541
    i32 109, label %sw.bb.543
    i32 110, label %sw.bb.546
    i32 111, label %sw.bb.575
    i32 112, label %sw.bb.577
    i32 113, label %sw.bb.581
    i32 114, label %sw.bb.585
    i32 115, label %sw.bb.586
    i32 116, label %sw.bb.587
    i32 117, label %sw.bb.600
    i32 118, label %sw.bb.611
    i32 119, label %sw.bb.622
    i32 120, label %sw.bb.637
    i32 121, label %sw.bb.641
    i32 122, label %sw.bb.655
    i32 123, label %sw.bb.660
    i32 124, label %sw.bb.668
    i32 125, label %sw.bb.679
    i32 126, label %sw.bb.689
    i32 127, label %sw.bb.699
    i32 128, label %sw.bb.714
    i32 136, label %sw.bb.726
    i32 137, label %sw.bb.737
    i32 138, label %sw.bb.749
    i32 139, label %sw.bb.760
    i32 142, label %sw.bb.775
    i32 143, label %sw.bb.783
    i32 145, label %sw.bb.793
    i32 146, label %sw.bb.859
    i32 147, label %sw.bb.875
    i32 148, label %sw.bb.895
    i32 149, label %sw.bb.897
    i32 150, label %sw.bb.901
    i32 151, label %sw.bb.942
    i32 152, label %sw.bb.985
    i32 153, label %sw.bb.987
    i32 154, label %sw.bb.1007
    i32 155, label %sw.bb.1011
    i32 156, label %sw.bb.1013
    i32 157, label %sw.bb.1015
    i32 158, label %sw.bb.1017
    i32 159, label %sw.bb.1019
    i32 160, label %sw.bb.1021
    i32 161, label %sw.bb.1023
    i32 162, label %sw.bb.1025
    i32 163, label %sw.bb.1027
    i32 164, label %sw.bb.1029
    i32 165, label %sw.bb.1031
    i32 166, label %sw.bb.1033
    i32 167, label %sw.bb.1037
    i32 170, label %sw.bb.1039
    i32 171, label %sw.bb.1040
    i32 173, label %sw.bb.1041
    i32 177, label %sw.bb.1046
    i32 178, label %sw.bb.1055
    i32 179, label %sw.bb.1056
    i32 184, label %sw.bb.1059
    i32 185, label %sw.bb.1093
    i32 188, label %sw.bb.1108
    i32 189, label %sw.bb.1124
    i32 190, label %sw.bb.1149
    i32 191, label %sw.bb.1151
    i32 194, label %sw.bb.1195
    i32 195, label %sw.bb.1198
    i32 196, label %sw.bb.1203
  ]

sw.bb:                                            ; preds = %yyreduce
  %82 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx119 = getelementptr inbounds %union.yystype, %union.yystype* %82, i64 -7
  %string = bitcast %union.yystype* %arrayidx119 to i8**
  %83 = load i8*, i8** %string, align 8
  call void @string_StringFree(i8* %83)
  br label %yyacceptlab

sw.bb.120:                                        ; preds = %yyreduce
  %84 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx121 = getelementptr inbounds %union.yystype, %union.yystype* %84, i64 -2
  %string122 = bitcast %union.yystype* %arrayidx121 to i8**
  %85 = load i8*, i8** %string122, align 8
  store i8* %85, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 0), align 8
  br label %sw.epilog.1211

sw.bb.123:                                        ; preds = %yyreduce
  %86 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx124 = getelementptr inbounds %union.yystype, %union.yystype* %86, i64 -2
  %string125 = bitcast %union.yystype* %arrayidx124 to i8**
  %87 = load i8*, i8** %string125, align 8
  store i8* %87, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 1), align 8
  br label %sw.epilog.1211

sw.bb.126:                                        ; preds = %yyreduce
  %88 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx127 = getelementptr inbounds %union.yystype, %union.yystype* %88, i64 -2
  %state = bitcast %union.yystype* %arrayidx127 to i32*
  %89 = load i32, i32* %state, align 4
  store i32 %89, i32* getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 4), align 4
  br label %sw.epilog.1211

sw.bb.128:                                        ; preds = %yyreduce
  %90 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx129 = getelementptr inbounds %union.yystype, %union.yystype* %90, i64 -2
  %string130 = bitcast %union.yystype* %arrayidx129 to i8**
  %91 = load i8*, i8** %string130, align 8
  store i8* %91, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 5), align 8
  br label %sw.epilog.1211

sw.bb.131:                                        ; preds = %yyreduce
  %92 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx132 = getelementptr inbounds %union.yystype, %union.yystype* %92, i64 -2
  %string133 = bitcast %union.yystype* %arrayidx132 to i8**
  %93 = load i8*, i8** %string133, align 8
  store i8* %93, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 2), align 8
  br label %sw.epilog.1211

sw.bb.134:                                        ; preds = %yyreduce
  %94 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx135 = getelementptr inbounds %union.yystype, %union.yystype* %94, i64 -2
  %string136 = bitcast %union.yystype* %arrayidx135 to i8**
  %95 = load i8*, i8** %string136, align 8
  store i8* %95, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 3), align 8
  br label %sw.epilog.1211

sw.bb.137:                                        ; preds = %yyreduce
  %96 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx138 = getelementptr inbounds %union.yystype, %union.yystype* %96, i64 -2
  %string139 = bitcast %union.yystype* %arrayidx138 to i8**
  %97 = load i8*, i8** %string139, align 8
  store i8* %97, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 6), align 8
  br label %sw.epilog.1211

sw.bb.140:                                        ; preds = %yyreduce
  %state141 = bitcast %union.yystype* %yyval to i32*
  store i32 0, i32* %state141, align 4
  br label %sw.epilog.1211

sw.bb.142:                                        ; preds = %yyreduce
  %state143 = bitcast %union.yystype* %yyval to i32*
  store i32 1, i32* %state143, align 4
  br label %sw.epilog.1211

sw.bb.144:                                        ; preds = %yyreduce
  %state145 = bitcast %union.yystype* %yyval to i32*
  store i32 2, i32* %state145, align 4
  br label %sw.epilog.1211

sw.bb.146:                                        ; preds = %yyreduce
  %98 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx147 = getelementptr inbounds %union.yystype, %union.yystype* %98, i64 0
  %string148 = bitcast %union.yystype* %arrayidx147 to i8**
  %99 = load i8*, i8** %string148, align 8
  call void @dfg_SymbolDecl(i32 284, i8* %99, i32 -2)
  br label %sw.epilog.1211

sw.bb.149:                                        ; preds = %yyreduce
  %100 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx150 = getelementptr inbounds %union.yystype, %union.yystype* %100, i64 -3
  %string151 = bitcast %union.yystype* %arrayidx150 to i8**
  %101 = load i8*, i8** %string151, align 8
  %102 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx152 = getelementptr inbounds %union.yystype, %union.yystype* %102, i64 -1
  %number = bitcast %union.yystype* %arrayidx152 to i32*
  %103 = load i32, i32* %number, align 4
  call void @dfg_SymbolDecl(i32 284, i8* %101, i32 %103)
  br label %sw.epilog.1211

sw.bb.153:                                        ; preds = %yyreduce
  %104 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx154 = getelementptr inbounds %union.yystype, %union.yystype* %104, i64 0
  %string155 = bitcast %union.yystype* %arrayidx154 to i8**
  %105 = load i8*, i8** %string155, align 8
  call void @dfg_SymbolDecl(i32 298, i8* %105, i32 -2)
  br label %sw.epilog.1211

sw.bb.156:                                        ; preds = %yyreduce
  %106 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx157 = getelementptr inbounds %union.yystype, %union.yystype* %106, i64 -3
  %string158 = bitcast %union.yystype* %arrayidx157 to i8**
  %107 = load i8*, i8** %string158, align 8
  %108 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx159 = getelementptr inbounds %union.yystype, %union.yystype* %108, i64 -1
  %number160 = bitcast %union.yystype* %arrayidx159 to i32*
  %109 = load i32, i32* %number160, align 4
  call void @dfg_SymbolDecl(i32 298, i8* %107, i32 %109)
  br label %sw.epilog.1211

sw.bb.161:                                        ; preds = %yyreduce
  %110 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx162 = getelementptr inbounds %union.yystype, %union.yystype* %110, i64 0
  %string163 = bitcast %union.yystype* %arrayidx162 to i8**
  %111 = load i8*, i8** %string163, align 8
  call void @dfg_SymbolDecl(i32 298, i8* %111, i32 1)
  br label %sw.epilog.1211

sw.bb.164:                                        ; preds = %yyreduce
  %112 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx165 = getelementptr inbounds %union.yystype, %union.yystype* %112, i64 0
  %string166 = bitcast %union.yystype* %arrayidx165 to i8**
  %113 = load i8*, i8** %string166, align 8
  call void @dfg_SymbolDecl(i32 298, i8* %113, i32 1)
  br label %sw.epilog.1211

sw.bb.167:                                        ; preds = %yyreduce
  %114 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx168 = getelementptr inbounds %union.yystype, %union.yystype* %114, i64 0
  %string169 = bitcast %union.yystype* %arrayidx168 to i8**
  %115 = load i8*, i8** %string169, align 8
  call void @dfg_SymbolDecl(i32 294, i8* %115, i32 -2)
  br label %sw.epilog.1211

sw.bb.170:                                        ; preds = %yyreduce
  %116 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx171 = getelementptr inbounds %union.yystype, %union.yystype* %116, i64 -3
  %string172 = bitcast %union.yystype* %arrayidx171 to i8**
  %117 = load i8*, i8** %string172, align 8
  %118 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx173 = getelementptr inbounds %union.yystype, %union.yystype* %118, i64 -1
  %number174 = bitcast %union.yystype* %arrayidx173 to i32*
  %119 = load i32, i32* %number174, align 4
  call void @dfg_SymbolDecl(i32 294, i8* %117, i32 %119)
  br label %sw.epilog.1211

sw.bb.175:                                        ; preds = %yyreduce
  %120 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx176 = getelementptr inbounds %union.yystype, %union.yystype* %120, i64 0
  %string177 = bitcast %union.yystype* %arrayidx176 to i8**
  %121 = load i8*, i8** %string177, align 8
  call void @dfg_SymbolDecl(i32 300, i8* %121, i32 -2)
  br label %sw.epilog.1211

sw.bb.178:                                        ; preds = %yyreduce
  %122 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx179 = getelementptr inbounds %union.yystype, %union.yystype* %122, i64 -3
  %string180 = bitcast %union.yystype* %arrayidx179 to i8**
  %123 = load i8*, i8** %string180, align 8
  %124 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx181 = getelementptr inbounds %union.yystype, %union.yystype* %124, i64 -1
  %number182 = bitcast %union.yystype* %arrayidx181 to i32*
  %125 = load i32, i32* %number182, align 4
  call void @dfg_SymbolDecl(i32 300, i8* %123, i32 %125)
  br label %sw.epilog.1211

sw.bb.183:                                        ; preds = %yyreduce
  %number184 = bitcast %union.yystype* %yyval to i32*
  store i32 -1, i32* %number184, align 4
  br label %sw.epilog.1211

sw.bb.185:                                        ; preds = %yyreduce
  %126 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx186 = getelementptr inbounds %union.yystype, %union.yystype* %126, i64 0
  %number187 = bitcast %union.yystype* %arrayidx186 to i32*
  %127 = load i32, i32* %number187, align 4
  %number188 = bitcast %union.yystype* %yyval to i32*
  store i32 %127, i32* %number188, align 4
  br label %sw.epilog.1211

sw.bb.189:                                        ; preds = %yyreduce
  %128 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx190 = getelementptr inbounds %union.yystype, %union.yystype* %128, i64 -4
  %string191 = bitcast %union.yystype* %arrayidx190 to i8**
  %129 = load i8*, i8** %string191, align 8
  %130 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx192 = getelementptr inbounds %union.yystype, %union.yystype* %130, i64 -2
  %string193 = bitcast %union.yystype* %arrayidx192 to i8**
  %131 = load i8*, i8** %string193, align 8
  call void @dfg_SubSort(i8* %129, i8* %131)
  br label %sw.epilog.1211

sw.bb.194:                                        ; preds = %yyreduce
  %132 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_SORTDECLLIST, align 8
  %133 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx195 = getelementptr inbounds %union.yystype, %union.yystype* %133, i64 -1
  %term = bitcast %union.yystype* %arrayidx195 to %struct.term**
  %134 = load %struct.term*, %struct.term** %term, align 8
  %135 = bitcast %struct.term* %134 to i8*
  %call196 = call %struct.LIST_HELP* @list_PairCreate(i8* null, i8* %135)
  %136 = bitcast %struct.LIST_HELP* %call196 to i8*
  %call197 = call %struct.LIST_HELP* @list_List(i8* %136)
  %call198 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %132, %struct.LIST_HELP* %call197)
  store %struct.LIST_HELP* %call198, %struct.LIST_HELP** @dfg_SORTDECLLIST, align 8
  br label %sw.epilog.1211

sw.bb.199:                                        ; preds = %yyreduce
  %137 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx200 = getelementptr inbounds %union.yystype, %union.yystype* %137, i64 -4
  %string201 = bitcast %union.yystype* %arrayidx200 to i8**
  %138 = load i8*, i8** %string201, align 8
  call void @string_StringFree(i8* %138)
  br label %sw.epilog.1211

sw.bb.202:                                        ; preds = %yyreduce
  call void @dfg_VarStart()
  br label %sw.epilog.1211

sw.bb.203:                                        ; preds = %yyreduce
  call void @dfg_VarStop()
  br label %sw.epilog.1211

sw.bb.204:                                        ; preds = %yyreduce
  call void @dfg_VarBacktrack()
  call void @dfg_VarCheck()
  %call206 = call i32 @fol_All()
  %139 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx207 = getelementptr inbounds %union.yystype, %union.yystype* %139, i64 -6
  %list = bitcast %union.yystype* %arrayidx207 to %struct.LIST_HELP**
  %140 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list, align 8
  %141 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx208 = getelementptr inbounds %union.yystype, %union.yystype* %141, i64 -2
  %term209 = bitcast %union.yystype* %arrayidx208 to %struct.term**
  %142 = load %struct.term*, %struct.term** %term209, align 8
  %call210 = call %struct.term* @dfg_CreateQuantifier(i32 %call206, %struct.LIST_HELP* %140, %struct.term* %142)
  store %struct.term* %call210, %struct.term** %term205, align 8
  %143 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_SORTDECLLIST, align 8
  %144 = load %struct.term*, %struct.term** %term205, align 8
  %145 = bitcast %struct.term* %144 to i8*
  %call211 = call %struct.LIST_HELP* @list_PairCreate(i8* null, i8* %145)
  %146 = bitcast %struct.LIST_HELP* %call211 to i8*
  %call212 = call %struct.LIST_HELP* @list_List(i8* %146)
  %call213 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %143, %struct.LIST_HELP* %call212)
  store %struct.LIST_HELP* %call213, %struct.LIST_HELP** @dfg_SORTDECLLIST, align 8
  br label %sw.epilog.1211

sw.bb.214:                                        ; preds = %yyreduce
  %147 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx215 = getelementptr inbounds %union.yystype, %union.yystype* %147, i64 -7
  %string216 = bitcast %union.yystype* %arrayidx215 to i8**
  %148 = load i8*, i8** %string216, align 8
  %call217 = call i32 @dfg_Symbol(i8* %148, i32 1)
  %149 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx218 = getelementptr inbounds %union.yystype, %union.yystype* %149, i64 -6
  %bool = bitcast %union.yystype* %arrayidx218 to i32*
  %150 = load i32, i32* %bool, align 4
  %151 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx219 = getelementptr inbounds %union.yystype, %union.yystype* %151, i64 -2
  %list220 = bitcast %union.yystype* %arrayidx219 to %struct.LIST_HELP**
  %152 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list220, align 8
  call void @dfg_SymbolGenerated(i32 %call217, i32 %150, %struct.LIST_HELP* %152)
  br label %sw.epilog.1211

sw.bb.221:                                        ; preds = %yyreduce
  %bool222 = bitcast %union.yystype* %yyval to i32*
  store i32 0, i32* %bool222, align 4
  br label %sw.epilog.1211

sw.bb.223:                                        ; preds = %yyreduce
  %bool224 = bitcast %union.yystype* %yyval to i32*
  store i32 1, i32* %bool224, align 4
  br label %sw.epilog.1211

sw.bb.225:                                        ; preds = %yyreduce
  %153 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx226 = getelementptr inbounds %union.yystype, %union.yystype* %153, i64 0
  %string227 = bitcast %union.yystype* %arrayidx226 to i8**
  %154 = load i8*, i8** %string227, align 8
  %call228 = call %struct.LIST_HELP* @list_List(i8* %154)
  %list229 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call228, %struct.LIST_HELP** %list229, align 8
  br label %sw.epilog.1211

sw.bb.230:                                        ; preds = %yyreduce
  %155 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx231 = getelementptr inbounds %union.yystype, %union.yystype* %155, i64 0
  %string232 = bitcast %union.yystype* %arrayidx231 to i8**
  %156 = load i8*, i8** %string232, align 8
  %157 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx233 = getelementptr inbounds %union.yystype, %union.yystype* %157, i64 -2
  %list234 = bitcast %union.yystype* %arrayidx233 to %struct.LIST_HELP**
  %158 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list234, align 8
  %call235 = call %struct.LIST_HELP* @list_Cons(i8* %156, %struct.LIST_HELP* %158)
  %list236 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call235, %struct.LIST_HELP** %list236, align 8
  br label %sw.epilog.1211

sw.bb.237:                                        ; preds = %yyreduce
  %159 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx238 = getelementptr inbounds %union.yystype, %union.yystype* %159, i64 0
  %string239 = bitcast %union.yystype* %arrayidx238 to i8**
  %160 = load i8*, i8** %string239, align 8
  call void @string_StringFree(i8* %160)
  br label %sw.epilog.1211

sw.bb.240:                                        ; preds = %yyreduce
  %161 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx241 = getelementptr inbounds %union.yystype, %union.yystype* %161, i64 0
  %string242 = bitcast %union.yystype* %arrayidx241 to i8**
  %162 = load i8*, i8** %string242, align 8
  call void @string_StringFree(i8* %162)
  br label %sw.epilog.1211

sw.bb.243:                                        ; preds = %yyreduce
  %163 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx244 = getelementptr inbounds %union.yystype, %union.yystype* %163, i64 -2
  %list245 = bitcast %union.yystype* %arrayidx244 to %struct.LIST_HELP**
  %164 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list245, align 8
  %call246 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %164)
  %165 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx247 = getelementptr inbounds %union.yystype, %union.yystype* %165, i64 -5
  %bool248 = bitcast %union.yystype* %arrayidx247 to i32*
  %166 = load i32, i32* %bool248, align 4
  %tobool249 = icmp ne i32 %166, 0
  br i1 %tobool249, label %if.then.250, label %if.else.254

if.then.250:                                      ; preds = %sw.bb.243
  %167 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_AXIOMLIST, align 8
  %168 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx251 = getelementptr inbounds %union.yystype, %union.yystype* %168, i64 -2
  %list252 = bitcast %union.yystype* %arrayidx251 to %struct.LIST_HELP**
  %169 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list252, align 8
  %call253 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %167, %struct.LIST_HELP* %169)
  store %struct.LIST_HELP* %call253, %struct.LIST_HELP** @dfg_AXIOMLIST, align 8
  br label %if.end.258

if.else.254:                                      ; preds = %sw.bb.243
  %170 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_CONJECLIST, align 8
  %171 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx255 = getelementptr inbounds %union.yystype, %union.yystype* %171, i64 -2
  %list256 = bitcast %union.yystype* %arrayidx255 to %struct.LIST_HELP**
  %172 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list256, align 8
  %call257 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %170, %struct.LIST_HELP* %172)
  store %struct.LIST_HELP* %call257, %struct.LIST_HELP** @dfg_CONJECLIST, align 8
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.254, %if.then.250
  br label %sw.epilog.1211

sw.bb.259:                                        ; preds = %yyreduce
  %bool260 = bitcast %union.yystype* %yyval to i32*
  store i32 1, i32* %bool260, align 4
  br label %sw.epilog.1211

sw.bb.261:                                        ; preds = %yyreduce
  %bool262 = bitcast %union.yystype* %yyval to i32*
  store i32 0, i32* %bool262, align 4
  br label %sw.epilog.1211

sw.bb.263:                                        ; preds = %yyreduce
  %call264 = call %struct.LIST_HELP* @list_Nil()
  %list265 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call264, %struct.LIST_HELP** %list265, align 8
  br label %sw.epilog.1211

sw.bb.266:                                        ; preds = %yyreduce
  %173 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx267 = getelementptr inbounds %union.yystype, %union.yystype* %173, i64 -3
  %term268 = bitcast %union.yystype* %arrayidx267 to %struct.term**
  %174 = load %struct.term*, %struct.term** %term268, align 8
  %cmp269 = icmp eq %struct.term* %174, null
  br i1 %cmp269, label %if.then.271, label %if.else.283

if.then.271:                                      ; preds = %sw.bb.266
  %175 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx272 = getelementptr inbounds %union.yystype, %union.yystype* %175, i64 -2
  %string273 = bitcast %union.yystype* %arrayidx272 to i8**
  %176 = load i8*, i8** %string273, align 8
  %cmp274 = icmp ne i8* %176, null
  br i1 %cmp274, label %if.then.276, label %if.end.279

if.then.276:                                      ; preds = %if.then.271
  %177 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx277 = getelementptr inbounds %union.yystype, %union.yystype* %177, i64 -2
  %string278 = bitcast %union.yystype* %arrayidx277 to i8**
  %178 = load i8*, i8** %string278, align 8
  call void @string_StringFree(i8* %178)
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.276, %if.then.271
  %179 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx280 = getelementptr inbounds %union.yystype, %union.yystype* %179, i64 -6
  %list281 = bitcast %union.yystype* %arrayidx280 to %struct.LIST_HELP**
  %180 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list281, align 8
  %list282 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %180, %struct.LIST_HELP** %list282, align 8
  br label %if.end.293

if.else.283:                                      ; preds = %sw.bb.266
  %181 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx284 = getelementptr inbounds %union.yystype, %union.yystype* %181, i64 -2
  %string285 = bitcast %union.yystype* %arrayidx284 to i8**
  %182 = load i8*, i8** %string285, align 8
  %183 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx286 = getelementptr inbounds %union.yystype, %union.yystype* %183, i64 -3
  %term287 = bitcast %union.yystype* %arrayidx286 to %struct.term**
  %184 = load %struct.term*, %struct.term** %term287, align 8
  %185 = bitcast %struct.term* %184 to i8*
  %call288 = call %struct.LIST_HELP* @list_PairCreate(i8* %182, i8* %185)
  store %struct.LIST_HELP* %call288, %struct.LIST_HELP** %pair, align 8
  %186 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %187 = bitcast %struct.LIST_HELP* %186 to i8*
  %188 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx289 = getelementptr inbounds %union.yystype, %union.yystype* %188, i64 -6
  %list290 = bitcast %union.yystype* %arrayidx289 to %struct.LIST_HELP**
  %189 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list290, align 8
  %call291 = call %struct.LIST_HELP* @list_Cons(i8* %187, %struct.LIST_HELP* %189)
  %list292 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call291, %struct.LIST_HELP** %list292, align 8
  br label %if.end.293

if.end.293:                                       ; preds = %if.else.283, %if.end.279
  call void @dfg_VarCheck()
  br label %sw.epilog.1211

sw.bb.294:                                        ; preds = %yyreduce
  %string295 = bitcast %union.yystype* %yyval to i8**
  store i8* null, i8** %string295, align 8
  br label %sw.epilog.1211

sw.bb.296:                                        ; preds = %yyreduce
  %190 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx297 = getelementptr inbounds %union.yystype, %union.yystype* %190, i64 0
  %string298 = bitcast %union.yystype* %arrayidx297 to i8**
  %191 = load i8*, i8** %string298, align 8
  %string299 = bitcast %union.yystype* %yyval to i8**
  store i8* %191, i8** %string299, align 8
  br label %sw.epilog.1211

sw.bb.300:                                        ; preds = %yyreduce
  %192 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx301 = getelementptr inbounds %union.yystype, %union.yystype* %192, i64 0
  %term302 = bitcast %union.yystype* %arrayidx301 to %struct.term**
  %193 = load %struct.term*, %struct.term** %term302, align 8
  %term303 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %193, %struct.term** %term303, align 8
  br label %sw.epilog.1211

sw.bb.304:                                        ; preds = %yyreduce
  %194 = load i32, i32* @dfg_IGNORE, align 4
  %tobool305 = icmp ne i32 %194, 0
  br i1 %tobool305, label %cond.true.306, label %cond.false.307

cond.true.306:                                    ; preds = %sw.bb.304
  br label %cond.end.313

cond.false.307:                                   ; preds = %sw.bb.304
  %call308 = call i32 @fol_Not()
  %195 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx309 = getelementptr inbounds %union.yystype, %union.yystype* %195, i64 -1
  %term310 = bitcast %union.yystype* %arrayidx309 to %struct.term**
  %196 = load %struct.term*, %struct.term** %term310, align 8
  %197 = bitcast %struct.term* %196 to i8*
  %call311 = call %struct.LIST_HELP* @list_List(i8* %197)
  %call312 = call %struct.term* @term_Create(i32 %call308, %struct.LIST_HELP* %call311)
  br label %cond.end.313

cond.end.313:                                     ; preds = %cond.false.307, %cond.true.306
  %cond314 = phi %struct.term* [ null, %cond.true.306 ], [ %call312, %cond.false.307 ]
  %term315 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %cond314, %struct.term** %term315, align 8
  br label %sw.epilog.1211

sw.bb.316:                                        ; preds = %yyreduce
  %198 = load i32, i32* @dfg_IGNORE, align 4
  %tobool317 = icmp ne i32 %198, 0
  br i1 %tobool317, label %cond.true.318, label %cond.false.319

cond.true.318:                                    ; preds = %sw.bb.316
  br label %cond.end.328

cond.false.319:                                   ; preds = %sw.bb.316
  %199 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx320 = getelementptr inbounds %union.yystype, %union.yystype* %199, i64 -5
  %symbol = bitcast %union.yystype* %arrayidx320 to i32*
  %200 = load i32, i32* %symbol, align 4
  %201 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx321 = getelementptr inbounds %union.yystype, %union.yystype* %201, i64 -3
  %term322 = bitcast %union.yystype* %arrayidx321 to %struct.term**
  %202 = load %struct.term*, %struct.term** %term322, align 8
  %203 = bitcast %struct.term* %202 to i8*
  %204 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx323 = getelementptr inbounds %union.yystype, %union.yystype* %204, i64 -1
  %term324 = bitcast %union.yystype* %arrayidx323 to %struct.term**
  %205 = load %struct.term*, %struct.term** %term324, align 8
  %206 = bitcast %struct.term* %205 to i8*
  %call325 = call %struct.LIST_HELP* @list_List(i8* %206)
  %call326 = call %struct.LIST_HELP* @list_Cons(i8* %203, %struct.LIST_HELP* %call325)
  %call327 = call %struct.term* @term_Create(i32 %200, %struct.LIST_HELP* %call326)
  br label %cond.end.328

cond.end.328:                                     ; preds = %cond.false.319, %cond.true.318
  %cond329 = phi %struct.term* [ null, %cond.true.318 ], [ %call327, %cond.false.319 ]
  %term330 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %cond329, %struct.term** %term330, align 8
  br label %sw.epilog.1211

sw.bb.331:                                        ; preds = %yyreduce
  %207 = load i32, i32* @dfg_IGNORE, align 4
  %tobool332 = icmp ne i32 %207, 0
  br i1 %tobool332, label %cond.true.333, label %cond.false.334

cond.true.333:                                    ; preds = %sw.bb.331
  br label %cond.end.340

cond.false.334:                                   ; preds = %sw.bb.331
  %208 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx335 = getelementptr inbounds %union.yystype, %union.yystype* %208, i64 -3
  %symbol336 = bitcast %union.yystype* %arrayidx335 to i32*
  %209 = load i32, i32* %symbol336, align 4
  %210 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx337 = getelementptr inbounds %union.yystype, %union.yystype* %210, i64 -1
  %list338 = bitcast %union.yystype* %arrayidx337 to %struct.LIST_HELP**
  %211 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list338, align 8
  %call339 = call %struct.term* @term_Create(i32 %209, %struct.LIST_HELP* %211)
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.false.334, %cond.true.333
  %cond341 = phi %struct.term* [ null, %cond.true.333 ], [ %call339, %cond.false.334 ]
  %term342 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %cond341, %struct.term** %term342, align 8
  br label %sw.epilog.1211

sw.bb.343:                                        ; preds = %yyreduce
  call void @dfg_VarStart()
  br label %sw.epilog.1211

sw.bb.344:                                        ; preds = %yyreduce
  call void @dfg_VarStop()
  br label %sw.epilog.1211

sw.bb.345:                                        ; preds = %yyreduce
  call void @dfg_VarBacktrack()
  %212 = load i32, i32* @dfg_IGNORE, align 4
  %tobool346 = icmp ne i32 %212, 0
  br i1 %tobool346, label %cond.true.347, label %cond.false.348

cond.true.347:                                    ; preds = %sw.bb.345
  br label %cond.end.356

cond.false.348:                                   ; preds = %sw.bb.345
  %213 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx349 = getelementptr inbounds %union.yystype, %union.yystype* %213, i64 -9
  %symbol350 = bitcast %union.yystype* %arrayidx349 to i32*
  %214 = load i32, i32* %symbol350, align 4
  %215 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx351 = getelementptr inbounds %union.yystype, %union.yystype* %215, i64 -5
  %list352 = bitcast %union.yystype* %arrayidx351 to %struct.LIST_HELP**
  %216 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list352, align 8
  %217 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx353 = getelementptr inbounds %union.yystype, %union.yystype* %217, i64 -1
  %term354 = bitcast %union.yystype* %arrayidx353 to %struct.term**
  %218 = load %struct.term*, %struct.term** %term354, align 8
  %call355 = call %struct.term* @dfg_CreateQuantifier(i32 %214, %struct.LIST_HELP* %216, %struct.term* %218)
  br label %cond.end.356

cond.end.356:                                     ; preds = %cond.false.348, %cond.true.347
  %cond357 = phi %struct.term* [ null, %cond.true.347 ], [ %call355, %cond.false.348 ]
  %term358 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %cond357, %struct.term** %term358, align 8
  br label %sw.epilog.1211

sw.bb.359:                                        ; preds = %yyreduce
  %term360 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* null, %struct.term** %term360, align 8
  br label %sw.epilog.1211

sw.bb.361:                                        ; preds = %yyreduce
  %219 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx362 = getelementptr inbounds %union.yystype, %union.yystype* %219, i64 0
  %term363 = bitcast %union.yystype* %arrayidx362 to %struct.term**
  %220 = load %struct.term*, %struct.term** %term363, align 8
  %term364 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %220, %struct.term** %term364, align 8
  br label %sw.epilog.1211

sw.bb.365:                                        ; preds = %yyreduce
  %221 = load i32, i32* @dfg_IGNORE, align 4
  %tobool366 = icmp ne i32 %221, 0
  br i1 %tobool366, label %cond.true.367, label %cond.false.369

cond.true.367:                                    ; preds = %sw.bb.365
  %call368 = call %struct.LIST_HELP* @list_Nil()
  br label %cond.end.373

cond.false.369:                                   ; preds = %sw.bb.365
  %222 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx370 = getelementptr inbounds %union.yystype, %union.yystype* %222, i64 0
  %term371 = bitcast %union.yystype* %arrayidx370 to %struct.term**
  %223 = load %struct.term*, %struct.term** %term371, align 8
  %224 = bitcast %struct.term* %223 to i8*
  %call372 = call %struct.LIST_HELP* @list_List(i8* %224)
  br label %cond.end.373

cond.end.373:                                     ; preds = %cond.false.369, %cond.true.367
  %cond374 = phi %struct.LIST_HELP* [ %call368, %cond.true.367 ], [ %call372, %cond.false.369 ]
  %list375 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %cond374, %struct.LIST_HELP** %list375, align 8
  br label %sw.epilog.1211

sw.bb.376:                                        ; preds = %yyreduce
  %225 = load i32, i32* @dfg_IGNORE, align 4
  %tobool377 = icmp ne i32 %225, 0
  br i1 %tobool377, label %cond.true.378, label %cond.false.381

cond.true.378:                                    ; preds = %sw.bb.376
  %226 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx379 = getelementptr inbounds %union.yystype, %union.yystype* %226, i64 -2
  %list380 = bitcast %union.yystype* %arrayidx379 to %struct.LIST_HELP**
  %227 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list380, align 8
  br label %cond.end.388

cond.false.381:                                   ; preds = %sw.bb.376
  %228 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx382 = getelementptr inbounds %union.yystype, %union.yystype* %228, i64 -2
  %list383 = bitcast %union.yystype* %arrayidx382 to %struct.LIST_HELP**
  %229 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list383, align 8
  %230 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx384 = getelementptr inbounds %union.yystype, %union.yystype* %230, i64 0
  %term385 = bitcast %union.yystype* %arrayidx384 to %struct.term**
  %231 = load %struct.term*, %struct.term** %term385, align 8
  %232 = bitcast %struct.term* %231 to i8*
  %call386 = call %struct.LIST_HELP* @list_List(i8* %232)
  %call387 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %229, %struct.LIST_HELP* %call386)
  br label %cond.end.388

cond.end.388:                                     ; preds = %cond.false.381, %cond.true.378
  %cond389 = phi %struct.LIST_HELP* [ %227, %cond.true.378 ], [ %call387, %cond.false.381 ]
  %list390 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %cond389, %struct.LIST_HELP** %list390, align 8
  br label %sw.epilog.1211

sw.bb.391:                                        ; preds = %yyreduce
  %call392 = call i32 @fol_Equiv()
  %symbol393 = bitcast %union.yystype* %yyval to i32*
  store i32 %call392, i32* %symbol393, align 4
  br label %sw.epilog.1211

sw.bb.394:                                        ; preds = %yyreduce
  %call395 = call i32 @fol_Implied()
  %symbol396 = bitcast %union.yystype* %yyval to i32*
  store i32 %call395, i32* %symbol396, align 4
  br label %sw.epilog.1211

sw.bb.397:                                        ; preds = %yyreduce
  %call398 = call i32 @fol_Implies()
  %symbol399 = bitcast %union.yystype* %yyval to i32*
  store i32 %call398, i32* %symbol399, align 4
  br label %sw.epilog.1211

sw.bb.400:                                        ; preds = %yyreduce
  %call401 = call i32 @fol_And()
  %symbol402 = bitcast %union.yystype* %yyval to i32*
  store i32 %call401, i32* %symbol402, align 4
  br label %sw.epilog.1211

sw.bb.403:                                        ; preds = %yyreduce
  %call404 = call i32 @fol_Or()
  %symbol405 = bitcast %union.yystype* %yyval to i32*
  store i32 %call404, i32* %symbol405, align 4
  br label %sw.epilog.1211

sw.bb.406:                                        ; preds = %yyreduce
  %call407 = call i32 @fol_Exist()
  %symbol408 = bitcast %union.yystype* %yyval to i32*
  store i32 %call407, i32* %symbol408, align 4
  br label %sw.epilog.1211

sw.bb.409:                                        ; preds = %yyreduce
  %call410 = call i32 @fol_All()
  %symbol411 = bitcast %union.yystype* %yyval to i32*
  store i32 %call410, i32* %symbol411, align 4
  br label %sw.epilog.1211

sw.bb.412:                                        ; preds = %yyreduce
  %233 = load i32, i32* @dfg_IGNORE, align 4
  %tobool413 = icmp ne i32 %233, 0
  br i1 %tobool413, label %if.then.414, label %if.else.418

if.then.414:                                      ; preds = %sw.bb.412
  %234 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx415 = getelementptr inbounds %union.yystype, %union.yystype* %234, i64 0
  %string416 = bitcast %union.yystype* %arrayidx415 to i8**
  %235 = load i8*, i8** %string416, align 8
  call void @string_StringFree(i8* %235)
  %string417 = bitcast %union.yystype* %yyval to i8**
  store i8* null, i8** %string417, align 8
  br label %if.end.422

if.else.418:                                      ; preds = %sw.bb.412
  %236 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx419 = getelementptr inbounds %union.yystype, %union.yystype* %236, i64 0
  %string420 = bitcast %union.yystype* %arrayidx419 to i8**
  %237 = load i8*, i8** %string420, align 8
  %string421 = bitcast %union.yystype* %yyval to i8**
  store i8* %237, i8** %string421, align 8
  br label %if.end.422

if.end.422:                                       ; preds = %if.else.418, %if.then.414
  br label %sw.epilog.1211

sw.bb.423:                                        ; preds = %yyreduce
  %238 = load i32, i32* @dfg_IGNORE, align 4
  %tobool424 = icmp ne i32 %238, 0
  br i1 %tobool424, label %cond.true.425, label %cond.false.426

cond.true.425:                                    ; preds = %sw.bb.423
  br label %cond.end.430

cond.false.426:                                   ; preds = %sw.bb.423
  %239 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx427 = getelementptr inbounds %union.yystype, %union.yystype* %239, i64 0
  %number428 = bitcast %union.yystype* %arrayidx427 to i32*
  %240 = load i32, i32* %number428, align 4
  %call429 = call i8* @string_IntToString(i32 %240)
  br label %cond.end.430

cond.end.430:                                     ; preds = %cond.false.426, %cond.true.425
  %cond431 = phi i8* [ null, %cond.true.425 ], [ %call429, %cond.false.426 ]
  %string432 = bitcast %union.yystype* %yyval to i8**
  store i8* %cond431, i8** %string432, align 8
  br label %sw.epilog.1211

sw.bb.433:                                        ; preds = %yyreduce
  %241 = load i32, i32* @dfg_IGNORE, align 4
  %tobool434 = icmp ne i32 %241, 0
  br i1 %tobool434, label %cond.true.435, label %cond.false.436

cond.true.435:                                    ; preds = %sw.bb.433
  br label %cond.end.438

cond.false.436:                                   ; preds = %sw.bb.433
  %call437 = call i8* @string_StringCopy(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  br label %cond.end.438

cond.end.438:                                     ; preds = %cond.false.436, %cond.true.435
  %cond439 = phi i8* [ null, %cond.true.435 ], [ %call437, %cond.false.436 ]
  %string440 = bitcast %union.yystype* %yyval to i8**
  store i8* %cond439, i8** %string440, align 8
  br label %sw.epilog.1211

sw.bb.441:                                        ; preds = %yyreduce
  %242 = load i32, i32* @dfg_IGNORE, align 4
  %tobool442 = icmp ne i32 %242, 0
  br i1 %tobool442, label %cond.true.443, label %cond.false.444

cond.true.443:                                    ; preds = %sw.bb.441
  br label %cond.end.446

cond.false.444:                                   ; preds = %sw.bb.441
  %call445 = call i8* @string_StringCopy(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %cond.end.446

cond.end.446:                                     ; preds = %cond.false.444, %cond.true.443
  %cond447 = phi i8* [ null, %cond.true.443 ], [ %call445, %cond.false.444 ]
  %string448 = bitcast %union.yystype* %yyval to i8**
  store i8* %cond447, i8** %string448, align 8
  br label %sw.epilog.1211

sw.bb.449:                                        ; preds = %yyreduce
  %243 = load i32, i32* @dfg_IGNORE, align 4
  %tobool450 = icmp ne i32 %243, 0
  br i1 %tobool450, label %cond.true.451, label %cond.false.452

cond.true.451:                                    ; preds = %sw.bb.449
  br label %cond.end.454

cond.false.452:                                   ; preds = %sw.bb.449
  %call453 = call i8* @string_StringCopy(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  br label %cond.end.454

cond.end.454:                                     ; preds = %cond.false.452, %cond.true.451
  %cond455 = phi i8* [ null, %cond.true.451 ], [ %call453, %cond.false.452 ]
  %string456 = bitcast %union.yystype* %yyval to i8**
  store i8* %cond455, i8** %string456, align 8
  br label %sw.epilog.1211

sw.bb.457:                                        ; preds = %yyreduce
  %244 = load i32, i32* @dfg_IGNORE, align 4
  %tobool458 = icmp ne i32 %244, 0
  br i1 %tobool458, label %cond.true.459, label %cond.false.461

cond.true.459:                                    ; preds = %sw.bb.457
  %call460 = call %struct.LIST_HELP* @list_Nil()
  br label %cond.end.465

cond.false.461:                                   ; preds = %sw.bb.457
  %245 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx462 = getelementptr inbounds %union.yystype, %union.yystype* %245, i64 0
  %term463 = bitcast %union.yystype* %arrayidx462 to %struct.term**
  %246 = load %struct.term*, %struct.term** %term463, align 8
  %247 = bitcast %struct.term* %246 to i8*
  %call464 = call %struct.LIST_HELP* @list_List(i8* %247)
  br label %cond.end.465

cond.end.465:                                     ; preds = %cond.false.461, %cond.true.459
  %cond466 = phi %struct.LIST_HELP* [ %call460, %cond.true.459 ], [ %call464, %cond.false.461 ]
  %list467 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %cond466, %struct.LIST_HELP** %list467, align 8
  br label %sw.epilog.1211

sw.bb.468:                                        ; preds = %yyreduce
  %248 = load i32, i32* @dfg_IGNORE, align 4
  %tobool469 = icmp ne i32 %248, 0
  br i1 %tobool469, label %cond.true.470, label %cond.false.473

cond.true.470:                                    ; preds = %sw.bb.468
  %249 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx471 = getelementptr inbounds %union.yystype, %union.yystype* %249, i64 -2
  %list472 = bitcast %union.yystype* %arrayidx471 to %struct.LIST_HELP**
  %250 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list472, align 8
  br label %cond.end.480

cond.false.473:                                   ; preds = %sw.bb.468
  %251 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx474 = getelementptr inbounds %union.yystype, %union.yystype* %251, i64 -2
  %list475 = bitcast %union.yystype* %arrayidx474 to %struct.LIST_HELP**
  %252 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list475, align 8
  %253 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx476 = getelementptr inbounds %union.yystype, %union.yystype* %253, i64 0
  %term477 = bitcast %union.yystype* %arrayidx476 to %struct.term**
  %254 = load %struct.term*, %struct.term** %term477, align 8
  %255 = bitcast %struct.term* %254 to i8*
  %call478 = call %struct.LIST_HELP* @list_List(i8* %255)
  %call479 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %252, %struct.LIST_HELP* %call478)
  br label %cond.end.480

cond.end.480:                                     ; preds = %cond.false.473, %cond.true.470
  %cond481 = phi %struct.LIST_HELP* [ %250, %cond.true.470 ], [ %call479, %cond.false.473 ]
  %list482 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %cond481, %struct.LIST_HELP** %list482, align 8
  br label %sw.epilog.1211

sw.bb.483:                                        ; preds = %yyreduce
  %256 = load i32, i32* @dfg_IGNORE, align 4
  %tobool484 = icmp ne i32 %256, 0
  br i1 %tobool484, label %if.end.497, label %if.then.485

if.then.485:                                      ; preds = %sw.bb.483
  %257 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx486 = getelementptr inbounds %union.yystype, %union.yystype* %257, i64 0
  %string487 = bitcast %union.yystype* %arrayidx486 to i8**
  %258 = load i8*, i8** %string487, align 8
  %call488 = call i32 @dfg_Symbol(i8* %258, i32 0)
  store i32 %call488, i32* %s, align 4
  %259 = load i32, i32* %s, align 4
  %call489 = call i32 @symbol_IsVariable(i32 %259)
  %tobool490 = icmp ne i32 %call489, 0
  br i1 %tobool490, label %if.end.493, label %if.then.491

if.then.491:                                      ; preds = %if.then.485
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call492 = call i32 @fflush(%struct._IO_FILE* %260)
  %261 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i32 %261)
  call void @misc_Error()
  br label %if.end.493

if.end.493:                                       ; preds = %if.then.491, %if.then.485
  %262 = load i32, i32* %s, align 4
  %call494 = call %struct.LIST_HELP* @list_Nil()
  %call495 = call %struct.term* @term_Create(i32 %262, %struct.LIST_HELP* %call494)
  %term496 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %call495, %struct.term** %term496, align 8
  br label %if.end.497

if.end.497:                                       ; preds = %if.end.493, %sw.bb.483
  br label %sw.epilog.1211

sw.bb.498:                                        ; preds = %yyreduce
  %263 = load i32, i32* @dfg_IGNORE, align 4
  %tobool499 = icmp ne i32 %263, 0
  br i1 %tobool499, label %if.end.522, label %if.then.500

if.then.500:                                      ; preds = %sw.bb.498
  %264 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx501 = getelementptr inbounds %union.yystype, %union.yystype* %264, i64 -3
  %string502 = bitcast %union.yystype* %arrayidx501 to i8**
  %265 = load i8*, i8** %string502, align 8
  %call503 = call i32 @dfg_Symbol(i8* %265, i32 1)
  store i32 %call503, i32* %p, align 4
  %266 = load i32, i32* %p, align 4
  %call504 = call i32 @symbol_IsPredicate(i32 %266)
  %tobool505 = icmp ne i32 %call504, 0
  br i1 %tobool505, label %if.end.508, label %if.then.506

if.then.506:                                      ; preds = %if.then.500
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call507 = call i32 @fflush(%struct._IO_FILE* %267)
  %268 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i32 %268)
  call void @misc_Error()
  br label %if.end.508

if.end.508:                                       ; preds = %if.then.506, %if.then.500
  %269 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx509 = getelementptr inbounds %union.yystype, %union.yystype* %269, i64 -1
  %string510 = bitcast %union.yystype* %arrayidx509 to i8**
  %270 = load i8*, i8** %string510, align 8
  %call511 = call i32 @dfg_Symbol(i8* %270, i32 0)
  store i32 %call511, i32* %v, align 4
  %271 = load i32, i32* %v, align 4
  %call512 = call i32 @symbol_IsVariable(i32 %271)
  %tobool513 = icmp ne i32 %call512, 0
  br i1 %tobool513, label %if.end.516, label %if.then.514

if.then.514:                                      ; preds = %if.end.508
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call515 = call i32 @fflush(%struct._IO_FILE* %272)
  %273 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i32 %273)
  call void @misc_Error()
  br label %if.end.516

if.end.516:                                       ; preds = %if.then.514, %if.end.508
  %274 = load i32, i32* %p, align 4
  %275 = load i32, i32* %v, align 4
  %call517 = call %struct.LIST_HELP* @list_Nil()
  %call518 = call %struct.term* @term_Create(i32 %275, %struct.LIST_HELP* %call517)
  %276 = bitcast %struct.term* %call518 to i8*
  %call519 = call %struct.LIST_HELP* @list_List(i8* %276)
  %call520 = call %struct.term* @term_Create(i32 %274, %struct.LIST_HELP* %call519)
  %term521 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %call520, %struct.term** %term521, align 8
  br label %if.end.522

if.end.522:                                       ; preds = %if.end.516, %sw.bb.498
  br label %sw.epilog.1211

sw.bb.523:                                        ; preds = %yyreduce
  %277 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx524 = getelementptr inbounds %union.yystype, %union.yystype* %277, i64 -2
  %list525 = bitcast %union.yystype* %arrayidx524 to %struct.LIST_HELP**
  %278 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list525, align 8
  %call526 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %278)
  %279 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx527 = getelementptr inbounds %union.yystype, %union.yystype* %279, i64 -7
  %bool528 = bitcast %union.yystype* %arrayidx527 to i32*
  %280 = load i32, i32* %bool528, align 4
  %tobool529 = icmp ne i32 %280, 0
  br i1 %tobool529, label %if.then.530, label %if.else.534

if.then.530:                                      ; preds = %sw.bb.523
  %281 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  %282 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx531 = getelementptr inbounds %union.yystype, %union.yystype* %282, i64 -2
  %list532 = bitcast %union.yystype* %arrayidx531 to %struct.LIST_HELP**
  %283 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list532, align 8
  %call533 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %281, %struct.LIST_HELP* %283)
  store %struct.LIST_HELP* %call533, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  br label %if.end.538

if.else.534:                                      ; preds = %sw.bb.523
  %284 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_CONCLAUSES, align 8
  %285 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx535 = getelementptr inbounds %union.yystype, %union.yystype* %285, i64 -2
  %list536 = bitcast %union.yystype* %arrayidx535 to %struct.LIST_HELP**
  %286 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list536, align 8
  %call537 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %284, %struct.LIST_HELP* %286)
  store %struct.LIST_HELP* %call537, %struct.LIST_HELP** @dfg_CONCLAUSES, align 8
  br label %if.end.538

if.end.538:                                       ; preds = %if.else.534, %if.then.530
  br label %sw.epilog.1211

sw.bb.539:                                        ; preds = %yyreduce
  %287 = load i32, i32* @dfg_IGNORE, align 4
  %conv540 = zext i32 %287 to i64
  %288 = inttoptr i64 %conv540 to i8*
  call void @stack_Push(i8* %288)
  store i32 1, i32* @dfg_IGNORE, align 4
  br label %sw.epilog.1211

sw.bb.541:                                        ; preds = %yyreduce
  %call542 = call i8* @stack_PopResult()
  %289 = ptrtoint i8* %call542 to i32
  store i32 %289, i32* @dfg_IGNORE, align 4
  br label %sw.epilog.1211

sw.bb.543:                                        ; preds = %yyreduce
  %call544 = call %struct.LIST_HELP* @list_Nil()
  %list545 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call544, %struct.LIST_HELP** %list545, align 8
  br label %sw.epilog.1211

sw.bb.546:                                        ; preds = %yyreduce
  %290 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx548 = getelementptr inbounds %union.yystype, %union.yystype* %290, i64 -3
  %term549 = bitcast %union.yystype* %arrayidx548 to %struct.term**
  %291 = load %struct.term*, %struct.term** %term549, align 8
  %cmp550 = icmp eq %struct.term* %291, null
  br i1 %cmp550, label %if.then.552, label %if.else.564

if.then.552:                                      ; preds = %sw.bb.546
  %292 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx553 = getelementptr inbounds %union.yystype, %union.yystype* %292, i64 -2
  %string554 = bitcast %union.yystype* %arrayidx553 to i8**
  %293 = load i8*, i8** %string554, align 8
  %cmp555 = icmp ne i8* %293, null
  br i1 %cmp555, label %if.then.557, label %if.end.560

if.then.557:                                      ; preds = %if.then.552
  %294 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx558 = getelementptr inbounds %union.yystype, %union.yystype* %294, i64 -2
  %string559 = bitcast %union.yystype* %arrayidx558 to i8**
  %295 = load i8*, i8** %string559, align 8
  call void @string_StringFree(i8* %295)
  br label %if.end.560

if.end.560:                                       ; preds = %if.then.557, %if.then.552
  %296 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx561 = getelementptr inbounds %union.yystype, %union.yystype* %296, i64 -6
  %list562 = bitcast %union.yystype* %arrayidx561 to %struct.LIST_HELP**
  %297 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list562, align 8
  %list563 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %297, %struct.LIST_HELP** %list563, align 8
  br label %if.end.574

if.else.564:                                      ; preds = %sw.bb.546
  %298 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx565 = getelementptr inbounds %union.yystype, %union.yystype* %298, i64 -2
  %string566 = bitcast %union.yystype* %arrayidx565 to i8**
  %299 = load i8*, i8** %string566, align 8
  %300 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx567 = getelementptr inbounds %union.yystype, %union.yystype* %300, i64 -3
  %term568 = bitcast %union.yystype* %arrayidx567 to %struct.term**
  %301 = load %struct.term*, %struct.term** %term568, align 8
  %302 = bitcast %struct.term* %301 to i8*
  %call569 = call %struct.LIST_HELP* @list_PairCreate(i8* %299, i8* %302)
  store %struct.LIST_HELP* %call569, %struct.LIST_HELP** %pair547, align 8
  %303 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair547, align 8
  %304 = bitcast %struct.LIST_HELP* %303 to i8*
  %305 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx570 = getelementptr inbounds %union.yystype, %union.yystype* %305, i64 -6
  %list571 = bitcast %union.yystype* %arrayidx570 to %struct.LIST_HELP**
  %306 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list571, align 8
  %call572 = call %struct.LIST_HELP* @list_Cons(i8* %304, %struct.LIST_HELP* %306)
  %list573 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call572, %struct.LIST_HELP** %list573, align 8
  br label %if.end.574

if.end.574:                                       ; preds = %if.else.564, %if.end.560
  call void @dfg_VarCheck()
  br label %sw.epilog.1211

sw.bb.575:                                        ; preds = %yyreduce
  %term576 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* null, %struct.term** %term576, align 8
  br label %sw.epilog.1211

sw.bb.577:                                        ; preds = %yyreduce
  %307 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx578 = getelementptr inbounds %union.yystype, %union.yystype* %307, i64 0
  %term579 = bitcast %union.yystype* %arrayidx578 to %struct.term**
  %308 = load %struct.term*, %struct.term** %term579, align 8
  %term580 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %308, %struct.term** %term580, align 8
  br label %sw.epilog.1211

sw.bb.581:                                        ; preds = %yyreduce
  %309 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx582 = getelementptr inbounds %union.yystype, %union.yystype* %309, i64 0
  %term583 = bitcast %union.yystype* %arrayidx582 to %struct.term**
  %310 = load %struct.term*, %struct.term** %term583, align 8
  %term584 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %310, %struct.term** %term584, align 8
  br label %sw.epilog.1211

sw.bb.585:                                        ; preds = %yyreduce
  call void @dfg_VarStart()
  br label %sw.epilog.1211

sw.bb.586:                                        ; preds = %yyreduce
  call void @dfg_VarStop()
  br label %sw.epilog.1211

sw.bb.587:                                        ; preds = %yyreduce
  call void @dfg_VarBacktrack()
  %311 = load i32, i32* @dfg_IGNORE, align 4
  %tobool588 = icmp ne i32 %311, 0
  br i1 %tobool588, label %cond.true.589, label %cond.false.590

cond.true.589:                                    ; preds = %sw.bb.587
  br label %cond.end.597

cond.false.590:                                   ; preds = %sw.bb.587
  %call591 = call i32 @fol_All()
  %312 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx592 = getelementptr inbounds %union.yystype, %union.yystype* %312, i64 -5
  %list593 = bitcast %union.yystype* %arrayidx592 to %struct.LIST_HELP**
  %313 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list593, align 8
  %314 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx594 = getelementptr inbounds %union.yystype, %union.yystype* %314, i64 -1
  %term595 = bitcast %union.yystype* %arrayidx594 to %struct.term**
  %315 = load %struct.term*, %struct.term** %term595, align 8
  %call596 = call %struct.term* @dfg_CreateQuantifier(i32 %call591, %struct.LIST_HELP* %313, %struct.term* %315)
  br label %cond.end.597

cond.end.597:                                     ; preds = %cond.false.590, %cond.true.589
  %cond598 = phi %struct.term* [ null, %cond.true.589 ], [ %call596, %cond.false.590 ]
  %term599 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %cond598, %struct.term** %term599, align 8
  br label %sw.epilog.1211

sw.bb.600:                                        ; preds = %yyreduce
  %316 = load i32, i32* @dfg_IGNORE, align 4
  %tobool601 = icmp ne i32 %316, 0
  br i1 %tobool601, label %cond.true.602, label %cond.false.603

cond.true.602:                                    ; preds = %sw.bb.600
  br label %cond.end.608

cond.false.603:                                   ; preds = %sw.bb.600
  %call604 = call i32 @fol_Or()
  %317 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx605 = getelementptr inbounds %union.yystype, %union.yystype* %317, i64 -1
  %list606 = bitcast %union.yystype* %arrayidx605 to %struct.LIST_HELP**
  %318 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list606, align 8
  %call607 = call %struct.term* @term_Create(i32 %call604, %struct.LIST_HELP* %318)
  br label %cond.end.608

cond.end.608:                                     ; preds = %cond.false.603, %cond.true.602
  %cond609 = phi %struct.term* [ null, %cond.true.602 ], [ %call607, %cond.false.603 ]
  %term610 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %cond609, %struct.term** %term610, align 8
  br label %sw.epilog.1211

sw.bb.611:                                        ; preds = %yyreduce
  %319 = load i32, i32* @dfg_IGNORE, align 4
  %tobool612 = icmp ne i32 %319, 0
  br i1 %tobool612, label %cond.true.613, label %cond.false.615

cond.true.613:                                    ; preds = %sw.bb.611
  %call614 = call %struct.LIST_HELP* @list_Nil()
  br label %cond.end.619

cond.false.615:                                   ; preds = %sw.bb.611
  %320 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx616 = getelementptr inbounds %union.yystype, %union.yystype* %320, i64 0
  %term617 = bitcast %union.yystype* %arrayidx616 to %struct.term**
  %321 = load %struct.term*, %struct.term** %term617, align 8
  %322 = bitcast %struct.term* %321 to i8*
  %call618 = call %struct.LIST_HELP* @list_List(i8* %322)
  br label %cond.end.619

cond.end.619:                                     ; preds = %cond.false.615, %cond.true.613
  %cond620 = phi %struct.LIST_HELP* [ %call614, %cond.true.613 ], [ %call618, %cond.false.615 ]
  %list621 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %cond620, %struct.LIST_HELP** %list621, align 8
  br label %sw.epilog.1211

sw.bb.622:                                        ; preds = %yyreduce
  %323 = load i32, i32* @dfg_IGNORE, align 4
  %tobool623 = icmp ne i32 %323, 0
  br i1 %tobool623, label %cond.true.624, label %cond.false.627

cond.true.624:                                    ; preds = %sw.bb.622
  %324 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx625 = getelementptr inbounds %union.yystype, %union.yystype* %324, i64 -2
  %list626 = bitcast %union.yystype* %arrayidx625 to %struct.LIST_HELP**
  %325 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list626, align 8
  br label %cond.end.634

cond.false.627:                                   ; preds = %sw.bb.622
  %326 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx628 = getelementptr inbounds %union.yystype, %union.yystype* %326, i64 -2
  %list629 = bitcast %union.yystype* %arrayidx628 to %struct.LIST_HELP**
  %327 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list629, align 8
  %328 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx630 = getelementptr inbounds %union.yystype, %union.yystype* %328, i64 0
  %term631 = bitcast %union.yystype* %arrayidx630 to %struct.term**
  %329 = load %struct.term*, %struct.term** %term631, align 8
  %330 = bitcast %struct.term* %329 to i8*
  %call632 = call %struct.LIST_HELP* @list_List(i8* %330)
  %call633 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %327, %struct.LIST_HELP* %call632)
  br label %cond.end.634

cond.end.634:                                     ; preds = %cond.false.627, %cond.true.624
  %cond635 = phi %struct.LIST_HELP* [ %325, %cond.true.624 ], [ %call633, %cond.false.627 ]
  %list636 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %cond635, %struct.LIST_HELP** %list636, align 8
  br label %sw.epilog.1211

sw.bb.637:                                        ; preds = %yyreduce
  %331 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx638 = getelementptr inbounds %union.yystype, %union.yystype* %331, i64 0
  %term639 = bitcast %union.yystype* %arrayidx638 to %struct.term**
  %332 = load %struct.term*, %struct.term** %term639, align 8
  %term640 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %332, %struct.term** %term640, align 8
  br label %sw.epilog.1211

sw.bb.641:                                        ; preds = %yyreduce
  %333 = load i32, i32* @dfg_IGNORE, align 4
  %tobool642 = icmp ne i32 %333, 0
  br i1 %tobool642, label %cond.true.643, label %cond.false.646

cond.true.643:                                    ; preds = %sw.bb.641
  %334 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx644 = getelementptr inbounds %union.yystype, %union.yystype* %334, i64 -1
  %term645 = bitcast %union.yystype* %arrayidx644 to %struct.term**
  %335 = load %struct.term*, %struct.term** %term645, align 8
  br label %cond.end.652

cond.false.646:                                   ; preds = %sw.bb.641
  %call647 = call i32 @fol_Not()
  %336 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx648 = getelementptr inbounds %union.yystype, %union.yystype* %336, i64 -1
  %term649 = bitcast %union.yystype* %arrayidx648 to %struct.term**
  %337 = load %struct.term*, %struct.term** %term649, align 8
  %338 = bitcast %struct.term* %337 to i8*
  %call650 = call %struct.LIST_HELP* @list_List(i8* %338)
  %call651 = call %struct.term* @term_Create(i32 %call647, %struct.LIST_HELP* %call650)
  br label %cond.end.652

cond.end.652:                                     ; preds = %cond.false.646, %cond.true.643
  %cond653 = phi %struct.term* [ %335, %cond.true.643 ], [ %call651, %cond.false.646 ]
  %term654 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %cond653, %struct.term** %term654, align 8
  br label %sw.epilog.1211

sw.bb.655:                                        ; preds = %yyreduce
  %339 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx656 = getelementptr inbounds %union.yystype, %union.yystype* %339, i64 0
  %term657 = bitcast %union.yystype* %arrayidx656 to %struct.term**
  %340 = load %struct.term*, %struct.term** %term657, align 8
  %341 = bitcast %struct.term* %340 to i8*
  %call658 = call %struct.LIST_HELP* @list_List(i8* %341)
  %list659 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call658, %struct.LIST_HELP** %list659, align 8
  br label %sw.epilog.1211

sw.bb.660:                                        ; preds = %yyreduce
  %342 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx661 = getelementptr inbounds %union.yystype, %union.yystype* %342, i64 -2
  %list662 = bitcast %union.yystype* %arrayidx661 to %struct.LIST_HELP**
  %343 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list662, align 8
  %344 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx663 = getelementptr inbounds %union.yystype, %union.yystype* %344, i64 0
  %term664 = bitcast %union.yystype* %arrayidx663 to %struct.term**
  %345 = load %struct.term*, %struct.term** %term664, align 8
  %346 = bitcast %struct.term* %345 to i8*
  %call665 = call %struct.LIST_HELP* @list_List(i8* %346)
  %call666 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %343, %struct.LIST_HELP* %call665)
  %list667 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call666, %struct.LIST_HELP** %list667, align 8
  br label %sw.epilog.1211

sw.bb.668:                                        ; preds = %yyreduce
  %347 = load i32, i32* @dfg_IGNORE, align 4
  %tobool669 = icmp ne i32 %347, 0
  br i1 %tobool669, label %cond.true.670, label %cond.false.671

cond.true.670:                                    ; preds = %sw.bb.668
  br label %cond.end.676

cond.false.671:                                   ; preds = %sw.bb.668
  %348 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx672 = getelementptr inbounds %union.yystype, %union.yystype* %348, i64 0
  %string673 = bitcast %union.yystype* %arrayidx672 to i8**
  %349 = load i8*, i8** %string673, align 8
  %call674 = call %struct.LIST_HELP* @list_Nil()
  %call675 = call %struct.term* @dfg_AtomCreate(i8* %349, %struct.LIST_HELP* %call674)
  br label %cond.end.676

cond.end.676:                                     ; preds = %cond.false.671, %cond.true.670
  %cond677 = phi %struct.term* [ null, %cond.true.670 ], [ %call675, %cond.false.671 ]
  %term678 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %cond677, %struct.term** %term678, align 8
  br label %sw.epilog.1211

sw.bb.679:                                        ; preds = %yyreduce
  %350 = load i32, i32* @dfg_IGNORE, align 4
  %tobool680 = icmp ne i32 %350, 0
  br i1 %tobool680, label %cond.true.681, label %cond.false.682

cond.true.681:                                    ; preds = %sw.bb.679
  br label %cond.end.686

cond.false.682:                                   ; preds = %sw.bb.679
  %call683 = call i32 @fol_True()
  %call684 = call %struct.LIST_HELP* @list_Nil()
  %call685 = call %struct.term* @term_Create(i32 %call683, %struct.LIST_HELP* %call684)
  br label %cond.end.686

cond.end.686:                                     ; preds = %cond.false.682, %cond.true.681
  %cond687 = phi %struct.term* [ null, %cond.true.681 ], [ %call685, %cond.false.682 ]
  %term688 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %cond687, %struct.term** %term688, align 8
  br label %sw.epilog.1211

sw.bb.689:                                        ; preds = %yyreduce
  %351 = load i32, i32* @dfg_IGNORE, align 4
  %tobool690 = icmp ne i32 %351, 0
  br i1 %tobool690, label %cond.true.691, label %cond.false.692

cond.true.691:                                    ; preds = %sw.bb.689
  br label %cond.end.696

cond.false.692:                                   ; preds = %sw.bb.689
  %call693 = call i32 @fol_False()
  %call694 = call %struct.LIST_HELP* @list_Nil()
  %call695 = call %struct.term* @term_Create(i32 %call693, %struct.LIST_HELP* %call694)
  br label %cond.end.696

cond.end.696:                                     ; preds = %cond.false.692, %cond.true.691
  %cond697 = phi %struct.term* [ null, %cond.true.691 ], [ %call695, %cond.false.692 ]
  %term698 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %cond697, %struct.term** %term698, align 8
  br label %sw.epilog.1211

sw.bb.699:                                        ; preds = %yyreduce
  %352 = load i32, i32* @dfg_IGNORE, align 4
  %tobool700 = icmp ne i32 %352, 0
  br i1 %tobool700, label %cond.true.701, label %cond.false.702

cond.true.701:                                    ; preds = %sw.bb.699
  br label %cond.end.711

cond.false.702:                                   ; preds = %sw.bb.699
  %call703 = call i32 @fol_Equality()
  %353 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx704 = getelementptr inbounds %union.yystype, %union.yystype* %353, i64 -3
  %term705 = bitcast %union.yystype* %arrayidx704 to %struct.term**
  %354 = load %struct.term*, %struct.term** %term705, align 8
  %355 = bitcast %struct.term* %354 to i8*
  %356 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx706 = getelementptr inbounds %union.yystype, %union.yystype* %356, i64 -1
  %term707 = bitcast %union.yystype* %arrayidx706 to %struct.term**
  %357 = load %struct.term*, %struct.term** %term707, align 8
  %358 = bitcast %struct.term* %357 to i8*
  %call708 = call %struct.LIST_HELP* @list_List(i8* %358)
  %call709 = call %struct.LIST_HELP* @list_Cons(i8* %355, %struct.LIST_HELP* %call708)
  %call710 = call %struct.term* @term_Create(i32 %call703, %struct.LIST_HELP* %call709)
  br label %cond.end.711

cond.end.711:                                     ; preds = %cond.false.702, %cond.true.701
  %cond712 = phi %struct.term* [ null, %cond.true.701 ], [ %call710, %cond.false.702 ]
  %term713 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %cond712, %struct.term** %term713, align 8
  br label %sw.epilog.1211

sw.bb.714:                                        ; preds = %yyreduce
  %359 = load i32, i32* @dfg_IGNORE, align 4
  %tobool715 = icmp ne i32 %359, 0
  br i1 %tobool715, label %cond.true.716, label %cond.false.717

cond.true.716:                                    ; preds = %sw.bb.714
  br label %cond.end.723

cond.false.717:                                   ; preds = %sw.bb.714
  %360 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx718 = getelementptr inbounds %union.yystype, %union.yystype* %360, i64 -3
  %string719 = bitcast %union.yystype* %arrayidx718 to i8**
  %361 = load i8*, i8** %string719, align 8
  %362 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx720 = getelementptr inbounds %union.yystype, %union.yystype* %362, i64 -1
  %list721 = bitcast %union.yystype* %arrayidx720 to %struct.LIST_HELP**
  %363 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list721, align 8
  %call722 = call %struct.term* @dfg_AtomCreate(i8* %361, %struct.LIST_HELP* %363)
  br label %cond.end.723

cond.end.723:                                     ; preds = %cond.false.717, %cond.true.716
  %cond724 = phi %struct.term* [ null, %cond.true.716 ], [ %call722, %cond.false.717 ]
  %term725 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %cond724, %struct.term** %term725, align 8
  br label %sw.epilog.1211

sw.bb.726:                                        ; preds = %yyreduce
  %364 = load i32, i32* @dfg_IGNORE, align 4
  %tobool727 = icmp ne i32 %364, 0
  br i1 %tobool727, label %cond.true.728, label %cond.false.729

cond.true.728:                                    ; preds = %sw.bb.726
  br label %cond.end.734

cond.false.729:                                   ; preds = %sw.bb.726
  %365 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx730 = getelementptr inbounds %union.yystype, %union.yystype* %365, i64 0
  %string731 = bitcast %union.yystype* %arrayidx730 to i8**
  %366 = load i8*, i8** %string731, align 8
  %call732 = call %struct.LIST_HELP* @list_Nil()
  %call733 = call %struct.term* @dfg_TermCreate(i8* %366, %struct.LIST_HELP* %call732)
  br label %cond.end.734

cond.end.734:                                     ; preds = %cond.false.729, %cond.true.728
  %cond735 = phi %struct.term* [ null, %cond.true.728 ], [ %call733, %cond.false.729 ]
  %term736 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %cond735, %struct.term** %term736, align 8
  br label %sw.epilog.1211

sw.bb.737:                                        ; preds = %yyreduce
  %367 = load i32, i32* @dfg_IGNORE, align 4
  %tobool738 = icmp ne i32 %367, 0
  br i1 %tobool738, label %cond.true.739, label %cond.false.740

cond.true.739:                                    ; preds = %sw.bb.737
  br label %cond.end.746

cond.false.740:                                   ; preds = %sw.bb.737
  %368 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx741 = getelementptr inbounds %union.yystype, %union.yystype* %368, i64 -3
  %string742 = bitcast %union.yystype* %arrayidx741 to i8**
  %369 = load i8*, i8** %string742, align 8
  %370 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx743 = getelementptr inbounds %union.yystype, %union.yystype* %370, i64 -1
  %list744 = bitcast %union.yystype* %arrayidx743 to %struct.LIST_HELP**
  %371 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list744, align 8
  %call745 = call %struct.term* @dfg_TermCreate(i8* %369, %struct.LIST_HELP* %371)
  br label %cond.end.746

cond.end.746:                                     ; preds = %cond.false.740, %cond.true.739
  %cond747 = phi %struct.term* [ null, %cond.true.739 ], [ %call745, %cond.false.740 ]
  %term748 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %cond747, %struct.term** %term748, align 8
  br label %sw.epilog.1211

sw.bb.749:                                        ; preds = %yyreduce
  %372 = load i32, i32* @dfg_IGNORE, align 4
  %tobool750 = icmp ne i32 %372, 0
  br i1 %tobool750, label %cond.true.751, label %cond.false.753

cond.true.751:                                    ; preds = %sw.bb.749
  %call752 = call %struct.LIST_HELP* @list_Nil()
  br label %cond.end.757

cond.false.753:                                   ; preds = %sw.bb.749
  %373 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx754 = getelementptr inbounds %union.yystype, %union.yystype* %373, i64 0
  %term755 = bitcast %union.yystype* %arrayidx754 to %struct.term**
  %374 = load %struct.term*, %struct.term** %term755, align 8
  %375 = bitcast %struct.term* %374 to i8*
  %call756 = call %struct.LIST_HELP* @list_List(i8* %375)
  br label %cond.end.757

cond.end.757:                                     ; preds = %cond.false.753, %cond.true.751
  %cond758 = phi %struct.LIST_HELP* [ %call752, %cond.true.751 ], [ %call756, %cond.false.753 ]
  %list759 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %cond758, %struct.LIST_HELP** %list759, align 8
  br label %sw.epilog.1211

sw.bb.760:                                        ; preds = %yyreduce
  %376 = load i32, i32* @dfg_IGNORE, align 4
  %tobool761 = icmp ne i32 %376, 0
  br i1 %tobool761, label %cond.true.762, label %cond.false.765

cond.true.762:                                    ; preds = %sw.bb.760
  %377 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx763 = getelementptr inbounds %union.yystype, %union.yystype* %377, i64 -2
  %list764 = bitcast %union.yystype* %arrayidx763 to %struct.LIST_HELP**
  %378 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list764, align 8
  br label %cond.end.772

cond.false.765:                                   ; preds = %sw.bb.760
  %379 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx766 = getelementptr inbounds %union.yystype, %union.yystype* %379, i64 -2
  %list767 = bitcast %union.yystype* %arrayidx766 to %struct.LIST_HELP**
  %380 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list767, align 8
  %381 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx768 = getelementptr inbounds %union.yystype, %union.yystype* %381, i64 0
  %term769 = bitcast %union.yystype* %arrayidx768 to %struct.term**
  %382 = load %struct.term*, %struct.term** %term769, align 8
  %383 = bitcast %struct.term* %382 to i8*
  %call770 = call %struct.LIST_HELP* @list_List(i8* %383)
  %call771 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %380, %struct.LIST_HELP* %call770)
  br label %cond.end.772

cond.end.772:                                     ; preds = %cond.false.765, %cond.true.762
  %cond773 = phi %struct.LIST_HELP* [ %378, %cond.true.762 ], [ %call771, %cond.false.765 ]
  %list774 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %cond773, %struct.LIST_HELP** %list774, align 8
  br label %sw.epilog.1211

sw.bb.775:                                        ; preds = %yyreduce
  %384 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx776 = getelementptr inbounds %union.yystype, %union.yystype* %384, i64 -2
  %string777 = bitcast %union.yystype* %arrayidx776 to i8**
  %385 = load i8*, i8** %string777, align 8
  %call778 = call i32 @string_Equal(i8* %385, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %tobool779 = icmp ne i32 %call778, 0
  br i1 %tobool779, label %if.end.782, label %if.then.780

if.then.780:                                      ; preds = %sw.bb.775
  %386 = load i32, i32* @dfg_IGNORE, align 4
  %conv781 = zext i32 %386 to i64
  %387 = inttoptr i64 %conv781 to i8*
  call void @stack_Push(i8* %387)
  store i32 1, i32* @dfg_IGNORE, align 4
  br label %if.end.782

if.end.782:                                       ; preds = %if.then.780, %sw.bb.775
  br label %sw.epilog.1211

sw.bb.783:                                        ; preds = %yyreduce
  %388 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx784 = getelementptr inbounds %union.yystype, %union.yystype* %388, i64 -6
  %string785 = bitcast %union.yystype* %arrayidx784 to i8**
  %389 = load i8*, i8** %string785, align 8
  %call786 = call i32 @string_Equal(i8* %389, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %tobool787 = icmp ne i32 %call786, 0
  br i1 %tobool787, label %if.end.790, label %if.then.788

if.then.788:                                      ; preds = %sw.bb.783
  %call789 = call i8* @stack_PopResult()
  %390 = ptrtoint i8* %call789 to i32
  store i32 %390, i32* @dfg_IGNORE, align 4
  br label %if.end.790

if.end.790:                                       ; preds = %if.then.788, %sw.bb.783
  %391 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx791 = getelementptr inbounds %union.yystype, %union.yystype* %391, i64 -6
  %string792 = bitcast %union.yystype* %arrayidx791 to i8**
  %392 = load i8*, i8** %string792, align 8
  call void @string_StringFree(i8* %392)
  br label %sw.epilog.1211

sw.bb.793:                                        ; preds = %yyreduce
  %393 = load i32, i32* @dfg_IGNORE, align 4
  %tobool794 = icmp ne i32 %393, 0
  br i1 %tobool794, label %if.else.831, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb.793
  %394 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx795 = getelementptr inbounds %union.yystype, %union.yystype* %394, i64 -11
  %string796 = bitcast %union.yystype* %arrayidx795 to i8**
  %395 = load i8*, i8** %string796, align 8
  %cmp797 = icmp ne i8* %395, null
  br i1 %cmp797, label %land.lhs.true.799, label %if.else.831

land.lhs.true.799:                                ; preds = %land.lhs.true
  %396 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx800 = getelementptr inbounds %union.yystype, %union.yystype* %396, i64 -9
  %term801 = bitcast %union.yystype* %arrayidx800 to %struct.term**
  %397 = load %struct.term*, %struct.term** %term801, align 8
  %cmp802 = icmp ne %struct.term* %397, null
  br i1 %cmp802, label %land.lhs.true.804, label %if.else.831

land.lhs.true.804:                                ; preds = %land.lhs.true.799
  %398 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx805 = getelementptr inbounds %union.yystype, %union.yystype* %398, i64 -4
  %list806 = bitcast %union.yystype* %arrayidx805 to %struct.LIST_HELP**
  %399 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list806, align 8
  %call807 = call i32 @list_Empty(%struct.LIST_HELP* %399)
  %tobool808 = icmp ne i32 %call807, 0
  br i1 %tobool808, label %if.else.831, label %if.then.809

if.then.809:                                      ; preds = %land.lhs.true.804
  %400 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx810 = getelementptr inbounds %union.yystype, %union.yystype* %400, i64 -7
  %string811 = bitcast %union.yystype* %arrayidx810 to i8**
  %401 = load i8*, i8** %string811, align 8
  %call812 = call i32 @clause_GetOriginFromString(i8* %401)
  store i32 %call812, i32* %Rule, align 4
  %402 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx813 = getelementptr inbounds %union.yystype, %union.yystype* %402, i64 -7
  %string814 = bitcast %union.yystype* %arrayidx813 to i8**
  %403 = load i8*, i8** %string814, align 8
  call void @string_StringFree(i8* %403)
  %404 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx815 = getelementptr inbounds %union.yystype, %union.yystype* %404, i64 -2
  %number816 = bitcast %union.yystype* %arrayidx815 to i32*
  %405 = load i32, i32* %number816, align 4
  %conv817 = sext i32 %405 to i64
  %406 = inttoptr i64 %conv817 to i8*
  %407 = load i32, i32* %Rule, align 4
  %conv818 = zext i32 %407 to i64
  %408 = inttoptr i64 %conv818 to i8*
  %call819 = call %struct.LIST_HELP* @list_List(i8* %408)
  %call820 = call %struct.LIST_HELP* @list_Cons(i8* %406, %struct.LIST_HELP* %call819)
  store %struct.LIST_HELP* %call820, %struct.LIST_HELP** %tupel, align 8
  %409 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx821 = getelementptr inbounds %union.yystype, %union.yystype* %409, i64 -11
  %string822 = bitcast %union.yystype* %arrayidx821 to i8**
  %410 = load i8*, i8** %string822, align 8
  %411 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx823 = getelementptr inbounds %union.yystype, %union.yystype* %411, i64 -9
  %term824 = bitcast %union.yystype* %arrayidx823 to %struct.term**
  %412 = load %struct.term*, %struct.term** %term824, align 8
  %413 = bitcast %struct.term* %412 to i8*
  %414 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx825 = getelementptr inbounds %union.yystype, %union.yystype* %414, i64 -4
  %list826 = bitcast %union.yystype* %arrayidx825 to %struct.LIST_HELP**
  %415 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list826, align 8
  %416 = bitcast %struct.LIST_HELP* %415 to i8*
  %417 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  %call827 = call %struct.LIST_HELP* @list_Cons(i8* %416, %struct.LIST_HELP* %417)
  %call828 = call %struct.LIST_HELP* @list_Cons(i8* %413, %struct.LIST_HELP* %call827)
  %call829 = call %struct.LIST_HELP* @list_Cons(i8* %410, %struct.LIST_HELP* %call828)
  store %struct.LIST_HELP* %call829, %struct.LIST_HELP** %tupel, align 8
  %418 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  %419 = bitcast %struct.LIST_HELP* %418 to i8*
  %420 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_PROOFLIST, align 8
  %call830 = call %struct.LIST_HELP* @list_Cons(i8* %419, %struct.LIST_HELP* %420)
  store %struct.LIST_HELP* %call830, %struct.LIST_HELP** @dfg_PROOFLIST, align 8
  br label %if.end.858

if.else.831:                                      ; preds = %land.lhs.true.804, %land.lhs.true.799, %land.lhs.true, %sw.bb.793
  %421 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx832 = getelementptr inbounds %union.yystype, %union.yystype* %421, i64 -11
  %string833 = bitcast %union.yystype* %arrayidx832 to i8**
  %422 = load i8*, i8** %string833, align 8
  %cmp834 = icmp ne i8* %422, null
  br i1 %cmp834, label %if.then.836, label %if.end.839

if.then.836:                                      ; preds = %if.else.831
  %423 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx837 = getelementptr inbounds %union.yystype, %union.yystype* %423, i64 -11
  %string838 = bitcast %union.yystype* %arrayidx837 to i8**
  %424 = load i8*, i8** %string838, align 8
  call void @string_StringFree(i8* %424)
  br label %if.end.839

if.end.839:                                       ; preds = %if.then.836, %if.else.831
  %425 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx840 = getelementptr inbounds %union.yystype, %union.yystype* %425, i64 -9
  %term841 = bitcast %union.yystype* %arrayidx840 to %struct.term**
  %426 = load %struct.term*, %struct.term** %term841, align 8
  %cmp842 = icmp ne %struct.term* %426, null
  br i1 %cmp842, label %if.then.844, label %if.end.847

if.then.844:                                      ; preds = %if.end.839
  %427 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx845 = getelementptr inbounds %union.yystype, %union.yystype* %427, i64 -9
  %term846 = bitcast %union.yystype* %arrayidx845 to %struct.term**
  %428 = load %struct.term*, %struct.term** %term846, align 8
  call void @term_Delete(%struct.term* %428)
  br label %if.end.847

if.end.847:                                       ; preds = %if.then.844, %if.end.839
  %429 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx848 = getelementptr inbounds %union.yystype, %union.yystype* %429, i64 -7
  %string849 = bitcast %union.yystype* %arrayidx848 to i8**
  %430 = load i8*, i8** %string849, align 8
  %cmp850 = icmp ne i8* %430, null
  br i1 %cmp850, label %if.then.852, label %if.end.855

if.then.852:                                      ; preds = %if.end.847
  %431 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx853 = getelementptr inbounds %union.yystype, %union.yystype* %431, i64 -7
  %string854 = bitcast %union.yystype* %arrayidx853 to i8**
  %432 = load i8*, i8** %string854, align 8
  call void @string_StringFree(i8* %432)
  br label %if.end.855

if.end.855:                                       ; preds = %if.then.852, %if.end.847
  %433 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx856 = getelementptr inbounds %union.yystype, %union.yystype* %433, i64 -4
  %list857 = bitcast %union.yystype* %arrayidx856 to %struct.LIST_HELP**
  %434 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list857, align 8
  call void @dfg_DeleteStringList(%struct.LIST_HELP* %434)
  br label %if.end.858

if.end.858:                                       ; preds = %if.end.855, %if.then.809
  call void @dfg_VarCheck()
  br label %sw.epilog.1211

sw.bb.859:                                        ; preds = %yyreduce
  %435 = load i32, i32* @dfg_IGNORE, align 4
  %tobool860 = icmp ne i32 %435, 0
  br i1 %tobool860, label %cond.true.866, label %lor.lhs.false.861

lor.lhs.false.861:                                ; preds = %sw.bb.859
  %436 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx862 = getelementptr inbounds %union.yystype, %union.yystype* %436, i64 0
  %string863 = bitcast %union.yystype* %arrayidx862 to i8**
  %437 = load i8*, i8** %string863, align 8
  %cmp864 = icmp eq i8* %437, null
  br i1 %cmp864, label %cond.true.866, label %cond.false.868

cond.true.866:                                    ; preds = %lor.lhs.false.861, %sw.bb.859
  %call867 = call %struct.LIST_HELP* @list_Nil()
  br label %cond.end.872

cond.false.868:                                   ; preds = %lor.lhs.false.861
  %438 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx869 = getelementptr inbounds %union.yystype, %union.yystype* %438, i64 0
  %string870 = bitcast %union.yystype* %arrayidx869 to i8**
  %439 = load i8*, i8** %string870, align 8
  %call871 = call %struct.LIST_HELP* @list_List(i8* %439)
  br label %cond.end.872

cond.end.872:                                     ; preds = %cond.false.868, %cond.true.866
  %cond873 = phi %struct.LIST_HELP* [ %call867, %cond.true.866 ], [ %call871, %cond.false.868 ]
  %list874 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %cond873, %struct.LIST_HELP** %list874, align 8
  br label %sw.epilog.1211

sw.bb.875:                                        ; preds = %yyreduce
  %440 = load i32, i32* @dfg_IGNORE, align 4
  %tobool876 = icmp ne i32 %440, 0
  br i1 %tobool876, label %cond.true.882, label %lor.lhs.false.877

lor.lhs.false.877:                                ; preds = %sw.bb.875
  %441 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx878 = getelementptr inbounds %union.yystype, %union.yystype* %441, i64 0
  %string879 = bitcast %union.yystype* %arrayidx878 to i8**
  %442 = load i8*, i8** %string879, align 8
  %cmp880 = icmp eq i8* %442, null
  br i1 %cmp880, label %cond.true.882, label %cond.false.885

cond.true.882:                                    ; preds = %lor.lhs.false.877, %sw.bb.875
  %443 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx883 = getelementptr inbounds %union.yystype, %union.yystype* %443, i64 -2
  %list884 = bitcast %union.yystype* %arrayidx883 to %struct.LIST_HELP**
  %444 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list884, align 8
  br label %cond.end.892

cond.false.885:                                   ; preds = %lor.lhs.false.877
  %445 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx886 = getelementptr inbounds %union.yystype, %union.yystype* %445, i64 -2
  %list887 = bitcast %union.yystype* %arrayidx886 to %struct.LIST_HELP**
  %446 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list887, align 8
  %447 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx888 = getelementptr inbounds %union.yystype, %union.yystype* %447, i64 0
  %string889 = bitcast %union.yystype* %arrayidx888 to i8**
  %448 = load i8*, i8** %string889, align 8
  %call890 = call %struct.LIST_HELP* @list_List(i8* %448)
  %call891 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %446, %struct.LIST_HELP* %call890)
  br label %cond.end.892

cond.end.892:                                     ; preds = %cond.false.885, %cond.true.882
  %cond893 = phi %struct.LIST_HELP* [ %444, %cond.true.882 ], [ %call891, %cond.false.885 ]
  %list894 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %cond893, %struct.LIST_HELP** %list894, align 8
  br label %sw.epilog.1211

sw.bb.895:                                        ; preds = %yyreduce
  %number896 = bitcast %union.yystype* %yyval to i32*
  store i32 0, i32* %number896, align 4
  br label %sw.epilog.1211

sw.bb.897:                                        ; preds = %yyreduce
  %449 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx898 = getelementptr inbounds %union.yystype, %union.yystype* %449, i64 -1
  %number899 = bitcast %union.yystype* %arrayidx898 to i32*
  %450 = load i32, i32* %number899, align 4
  %number900 = bitcast %union.yystype* %yyval to i32*
  store i32 %450, i32* %number900, align 4
  br label %sw.epilog.1211

sw.bb.901:                                        ; preds = %yyreduce
  %451 = load i32, i32* @dfg_IGNORE, align 4
  %tobool902 = icmp ne i32 %451, 0
  br i1 %tobool902, label %if.else.923, label %land.lhs.true.903

land.lhs.true.903:                                ; preds = %sw.bb.901
  %452 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx904 = getelementptr inbounds %union.yystype, %union.yystype* %452, i64 -2
  %string905 = bitcast %union.yystype* %arrayidx904 to i8**
  %453 = load i8*, i8** %string905, align 8
  %cmp906 = icmp ne i8* %453, null
  br i1 %cmp906, label %land.lhs.true.908, label %if.else.923

land.lhs.true.908:                                ; preds = %land.lhs.true.903
  %454 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx909 = getelementptr inbounds %union.yystype, %union.yystype* %454, i64 0
  %string910 = bitcast %union.yystype* %arrayidx909 to i8**
  %455 = load i8*, i8** %string910, align 8
  %cmp911 = icmp ne i8* %455, null
  br i1 %cmp911, label %land.lhs.true.913, label %if.else.923

land.lhs.true.913:                                ; preds = %land.lhs.true.908
  %456 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx914 = getelementptr inbounds %union.yystype, %union.yystype* %456, i64 -2
  %string915 = bitcast %union.yystype* %arrayidx914 to i8**
  %457 = load i8*, i8** %string915, align 8
  %call916 = call i32 @string_Equal(i8* %457, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %tobool917 = icmp ne i32 %call916, 0
  br i1 %tobool917, label %if.then.918, label %if.else.923

if.then.918:                                      ; preds = %land.lhs.true.913
  %458 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx919 = getelementptr inbounds %union.yystype, %union.yystype* %458, i64 0
  %string920 = bitcast %union.yystype* %arrayidx919 to i8**
  %459 = load i8*, i8** %string920, align 8
  %number921 = bitcast %union.yystype* %yyval to i32*
  %call922 = call i32 @string_StringToInt(i8* %459, i32 1, i32* %number921)
  br label %if.end.925

if.else.923:                                      ; preds = %land.lhs.true.913, %land.lhs.true.908, %land.lhs.true.903, %sw.bb.901
  %number924 = bitcast %union.yystype* %yyval to i32*
  store i32 0, i32* %number924, align 4
  br label %if.end.925

if.end.925:                                       ; preds = %if.else.923, %if.then.918
  %460 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx926 = getelementptr inbounds %union.yystype, %union.yystype* %460, i64 -2
  %string927 = bitcast %union.yystype* %arrayidx926 to i8**
  %461 = load i8*, i8** %string927, align 8
  %cmp928 = icmp ne i8* %461, null
  br i1 %cmp928, label %if.then.930, label %if.end.933

if.then.930:                                      ; preds = %if.end.925
  %462 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx931 = getelementptr inbounds %union.yystype, %union.yystype* %462, i64 -2
  %string932 = bitcast %union.yystype* %arrayidx931 to i8**
  %463 = load i8*, i8** %string932, align 8
  call void @string_StringFree(i8* %463)
  br label %if.end.933

if.end.933:                                       ; preds = %if.then.930, %if.end.925
  %464 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx934 = getelementptr inbounds %union.yystype, %union.yystype* %464, i64 0
  %string935 = bitcast %union.yystype* %arrayidx934 to i8**
  %465 = load i8*, i8** %string935, align 8
  %cmp936 = icmp ne i8* %465, null
  br i1 %cmp936, label %if.then.938, label %if.end.941

if.then.938:                                      ; preds = %if.end.933
  %466 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx939 = getelementptr inbounds %union.yystype, %union.yystype* %466, i64 0
  %string940 = bitcast %union.yystype* %arrayidx939 to i8**
  %467 = load i8*, i8** %string940, align 8
  call void @string_StringFree(i8* %467)
  br label %if.end.941

if.end.941:                                       ; preds = %if.then.938, %if.end.933
  br label %sw.epilog.1211

sw.bb.942:                                        ; preds = %yyreduce
  %468 = load i32, i32* @dfg_IGNORE, align 4
  %tobool943 = icmp ne i32 %468, 0
  br i1 %tobool943, label %if.else.964, label %land.lhs.true.944

land.lhs.true.944:                                ; preds = %sw.bb.942
  %469 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx945 = getelementptr inbounds %union.yystype, %union.yystype* %469, i64 -2
  %string946 = bitcast %union.yystype* %arrayidx945 to i8**
  %470 = load i8*, i8** %string946, align 8
  %cmp947 = icmp ne i8* %470, null
  br i1 %cmp947, label %land.lhs.true.949, label %if.else.964

land.lhs.true.949:                                ; preds = %land.lhs.true.944
  %471 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx950 = getelementptr inbounds %union.yystype, %union.yystype* %471, i64 0
  %string951 = bitcast %union.yystype* %arrayidx950 to i8**
  %472 = load i8*, i8** %string951, align 8
  %cmp952 = icmp ne i8* %472, null
  br i1 %cmp952, label %land.lhs.true.954, label %if.else.964

land.lhs.true.954:                                ; preds = %land.lhs.true.949
  %473 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx955 = getelementptr inbounds %union.yystype, %union.yystype* %473, i64 -2
  %string956 = bitcast %union.yystype* %arrayidx955 to i8**
  %474 = load i8*, i8** %string956, align 8
  %call957 = call i32 @string_Equal(i8* %474, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %tobool958 = icmp ne i32 %call957, 0
  br i1 %tobool958, label %if.then.959, label %if.else.964

if.then.959:                                      ; preds = %land.lhs.true.954
  %475 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx960 = getelementptr inbounds %union.yystype, %union.yystype* %475, i64 0
  %string961 = bitcast %union.yystype* %arrayidx960 to i8**
  %476 = load i8*, i8** %string961, align 8
  %number962 = bitcast %union.yystype* %yyval to i32*
  %call963 = call i32 @string_StringToInt(i8* %476, i32 1, i32* %number962)
  br label %if.end.968

if.else.964:                                      ; preds = %land.lhs.true.954, %land.lhs.true.949, %land.lhs.true.944, %sw.bb.942
  %477 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx965 = getelementptr inbounds %union.yystype, %union.yystype* %477, i64 -4
  %number966 = bitcast %union.yystype* %arrayidx965 to i32*
  %478 = load i32, i32* %number966, align 4
  %number967 = bitcast %union.yystype* %yyval to i32*
  store i32 %478, i32* %number967, align 4
  br label %if.end.968

if.end.968:                                       ; preds = %if.else.964, %if.then.959
  %479 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx969 = getelementptr inbounds %union.yystype, %union.yystype* %479, i64 -2
  %string970 = bitcast %union.yystype* %arrayidx969 to i8**
  %480 = load i8*, i8** %string970, align 8
  %cmp971 = icmp ne i8* %480, null
  br i1 %cmp971, label %if.then.973, label %if.end.976

if.then.973:                                      ; preds = %if.end.968
  %481 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx974 = getelementptr inbounds %union.yystype, %union.yystype* %481, i64 -2
  %string975 = bitcast %union.yystype* %arrayidx974 to i8**
  %482 = load i8*, i8** %string975, align 8
  call void @string_StringFree(i8* %482)
  br label %if.end.976

if.end.976:                                       ; preds = %if.then.973, %if.end.968
  %483 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx977 = getelementptr inbounds %union.yystype, %union.yystype* %483, i64 0
  %string978 = bitcast %union.yystype* %arrayidx977 to i8**
  %484 = load i8*, i8** %string978, align 8
  %cmp979 = icmp ne i8* %484, null
  br i1 %cmp979, label %if.then.981, label %if.end.984

if.then.981:                                      ; preds = %if.end.976
  %485 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx982 = getelementptr inbounds %union.yystype, %union.yystype* %485, i64 0
  %string983 = bitcast %union.yystype* %arrayidx982 to i8**
  %486 = load i8*, i8** %string983, align 8
  call void @string_StringFree(i8* %486)
  br label %if.end.984

if.end.984:                                       ; preds = %if.then.981, %if.end.976
  br label %sw.epilog.1211

sw.bb.985:                                        ; preds = %yyreduce
  %487 = load i32, i32* @dfg_IGNORE, align 4
  %conv986 = zext i32 %487 to i64
  %488 = inttoptr i64 %conv986 to i8*
  call void @stack_Push(i8* %488)
  store i32 1, i32* @dfg_IGNORE, align 4
  br label %sw.epilog.1211

sw.bb.987:                                        ; preds = %yyreduce
  %call988 = call i8* @stack_PopResult()
  %489 = ptrtoint i8* %call988 to i32
  store i32 %489, i32* @dfg_IGNORE, align 4
  %490 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx989 = getelementptr inbounds %union.yystype, %union.yystype* %490, i64 0
  %bool990 = bitcast %union.yystype* %arrayidx989 to i32*
  %491 = load i32, i32* %bool990, align 4
  %tobool991 = icmp ne i32 %491, 0
  br i1 %tobool991, label %if.then.992, label %if.else.1002

if.then.992:                                      ; preds = %sw.bb.987
  %492 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx993 = getelementptr inbounds %union.yystype, %union.yystype* %492, i64 -2
  %string994 = bitcast %union.yystype* %arrayidx993 to i8**
  %493 = load i8*, i8** %string994, align 8
  %cmp995 = icmp ne i8* %493, null
  br i1 %cmp995, label %if.then.997, label %if.end.1000

if.then.997:                                      ; preds = %if.then.992
  %494 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx998 = getelementptr inbounds %union.yystype, %union.yystype* %494, i64 -2
  %string999 = bitcast %union.yystype* %arrayidx998 to i8**
  %495 = load i8*, i8** %string999, align 8
  call void @string_StringFree(i8* %495)
  br label %if.end.1000

if.end.1000:                                      ; preds = %if.then.997, %if.then.992
  %string1001 = bitcast %union.yystype* %yyval to i8**
  store i8* null, i8** %string1001, align 8
  br label %if.end.1006

if.else.1002:                                     ; preds = %sw.bb.987
  %496 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1003 = getelementptr inbounds %union.yystype, %union.yystype* %496, i64 -2
  %string1004 = bitcast %union.yystype* %arrayidx1003 to i8**
  %497 = load i8*, i8** %string1004, align 8
  %string1005 = bitcast %union.yystype* %yyval to i8**
  store i8* %497, i8** %string1005, align 8
  br label %if.end.1006

if.end.1006:                                      ; preds = %if.else.1002, %if.end.1000
  br label %sw.epilog.1211

sw.bb.1007:                                       ; preds = %yyreduce
  %498 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1008 = getelementptr inbounds %union.yystype, %union.yystype* %498, i64 0
  %string1009 = bitcast %union.yystype* %arrayidx1008 to i8**
  %499 = load i8*, i8** %string1009, align 8
  %string1010 = bitcast %union.yystype* %yyval to i8**
  store i8* %499, i8** %string1010, align 8
  br label %sw.epilog.1211

sw.bb.1011:                                       ; preds = %yyreduce
  %string1012 = bitcast %union.yystype* %yyval to i8**
  store i8* null, i8** %string1012, align 8
  br label %sw.epilog.1211

sw.bb.1013:                                       ; preds = %yyreduce
  %string1014 = bitcast %union.yystype* %yyval to i8**
  store i8* null, i8** %string1014, align 8
  br label %sw.epilog.1211

sw.bb.1015:                                       ; preds = %yyreduce
  %string1016 = bitcast %union.yystype* %yyval to i8**
  store i8* null, i8** %string1016, align 8
  br label %sw.epilog.1211

sw.bb.1017:                                       ; preds = %yyreduce
  %string1018 = bitcast %union.yystype* %yyval to i8**
  store i8* null, i8** %string1018, align 8
  br label %sw.epilog.1211

sw.bb.1019:                                       ; preds = %yyreduce
  %string1020 = bitcast %union.yystype* %yyval to i8**
  store i8* null, i8** %string1020, align 8
  br label %sw.epilog.1211

sw.bb.1021:                                       ; preds = %yyreduce
  %string1022 = bitcast %union.yystype* %yyval to i8**
  store i8* null, i8** %string1022, align 8
  br label %sw.epilog.1211

sw.bb.1023:                                       ; preds = %yyreduce
  %string1024 = bitcast %union.yystype* %yyval to i8**
  store i8* null, i8** %string1024, align 8
  br label %sw.epilog.1211

sw.bb.1025:                                       ; preds = %yyreduce
  %string1026 = bitcast %union.yystype* %yyval to i8**
  store i8* null, i8** %string1026, align 8
  br label %sw.epilog.1211

sw.bb.1027:                                       ; preds = %yyreduce
  %bool1028 = bitcast %union.yystype* %yyval to i32*
  store i32 0, i32* %bool1028, align 4
  br label %sw.epilog.1211

sw.bb.1029:                                       ; preds = %yyreduce
  %bool1030 = bitcast %union.yystype* %yyval to i32*
  store i32 1, i32* %bool1030, align 4
  br label %sw.epilog.1211

sw.bb.1031:                                       ; preds = %yyreduce
  %bool1032 = bitcast %union.yystype* %yyval to i32*
  store i32 1, i32* %bool1032, align 4
  br label %sw.epilog.1211

sw.bb.1033:                                       ; preds = %yyreduce
  %500 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1034 = getelementptr inbounds %union.yystype, %union.yystype* %500, i64 0
  %term1035 = bitcast %union.yystype* %arrayidx1034 to %struct.term**
  %501 = load %struct.term*, %struct.term** %term1035, align 8
  %term1036 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %501, %struct.term** %term1036, align 8
  br label %sw.epilog.1211

sw.bb.1037:                                       ; preds = %yyreduce
  %term1038 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* null, %struct.term** %term1038, align 8
  br label %sw.epilog.1211

sw.bb.1039:                                       ; preds = %yyreduce
  call void @dfg_VarStart()
  br label %sw.epilog.1211

sw.bb.1040:                                       ; preds = %yyreduce
  call void @dfg_VarStop()
  call void @dfg_VarBacktrack()
  call void @dfg_VarCheck()
  br label %sw.epilog.1211

sw.bb.1041:                                       ; preds = %yyreduce
  %502 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_TERMLIST, align 8
  %503 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1042 = getelementptr inbounds %union.yystype, %union.yystype* %503, i64 -1
  %term1043 = bitcast %union.yystype* %arrayidx1042 to %struct.term**
  %504 = load %struct.term*, %struct.term** %term1043, align 8
  %505 = bitcast %struct.term* %504 to i8*
  %call1044 = call %struct.LIST_HELP* @list_List(i8* %505)
  %call1045 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %502, %struct.LIST_HELP* %call1044)
  store %struct.LIST_HELP* %call1045, %struct.LIST_HELP** @dfg_TERMLIST, align 8
  br label %sw.epilog.1211

sw.bb.1046:                                       ; preds = %yyreduce
  %506 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1047 = getelementptr inbounds %union.yystype, %union.yystype* %506, i64 0
  %string1048 = bitcast %union.yystype* %arrayidx1047 to i8**
  %507 = load i8*, i8** %string1048, align 8
  %call1049 = call i32 @string_Equal(i8* %507, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %tobool1050 = icmp ne i32 %call1049, 0
  br i1 %tobool1050, label %if.then.1051, label %if.end.1052

if.then.1051:                                     ; preds = %sw.bb.1046
  store i32 0, i32* @dfg_IGNORETEXT, align 4
  br label %if.end.1052

if.end.1052:                                      ; preds = %if.then.1051, %sw.bb.1046
  %508 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1053 = getelementptr inbounds %union.yystype, %union.yystype* %508, i64 0
  %string1054 = bitcast %union.yystype* %arrayidx1053 to i8**
  %509 = load i8*, i8** %string1054, align 8
  call void @string_StringFree(i8* %509)
  br label %sw.epilog.1211

sw.bb.1055:                                       ; preds = %yyreduce
  store i32 1, i32* @dfg_IGNORETEXT, align 4
  br label %sw.epilog.1211

sw.bb.1056:                                       ; preds = %yyreduce
  %510 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1057 = getelementptr inbounds %union.yystype, %union.yystype* %510, i64 0
  %string1058 = bitcast %union.yystype* %arrayidx1057 to i8**
  %511 = load i8*, i8** %string1058, align 8
  call void @string_StringFree(i8* %511)
  br label %sw.epilog.1211

sw.bb.1059:                                       ; preds = %yyreduce
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1059
  %512 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1061 = getelementptr inbounds %union.yystype, %union.yystype* %512, i64 -1
  %list1062 = bitcast %union.yystype* %arrayidx1061 to %struct.LIST_HELP**
  %513 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list1062, align 8
  %call1063 = call i32 @list_Empty(%struct.LIST_HELP* %513)
  %tobool1064 = icmp ne i32 %call1063, 0
  %lnot = xor i1 %tobool1064, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %514 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1065 = getelementptr inbounds %union.yystype, %union.yystype* %514, i64 -1
  %list1066 = bitcast %union.yystype* %arrayidx1065 to %struct.LIST_HELP**
  %515 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list1066, align 8
  %call1067 = call i8* @list_Car(%struct.LIST_HELP* %515)
  %call1068 = call i32 @symbol_Lookup(i8* %call1067)
  store i32 %call1068, i32* %s1060, align 4
  %516 = load i32, i32* %s1060, align 4
  %cmp1069 = icmp eq i32 %516, 0
  br i1 %cmp1069, label %if.then.1071, label %if.end.1076

if.then.1071:                                     ; preds = %for.body
  %517 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1072 = call i32 @fflush(%struct._IO_FILE* %517)
  %518 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1073 = getelementptr inbounds %union.yystype, %union.yystype* %518, i64 -1
  %list1074 = bitcast %union.yystype* %arrayidx1073 to %struct.LIST_HELP**
  %519 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list1074, align 8
  %call1075 = call i8* @list_Car(%struct.LIST_HELP* %519)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* %call1075)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end.1076

if.end.1076:                                      ; preds = %if.then.1071, %for.body
  %520 = load i32, i32* %s1060, align 4
  %call1077 = call i32 @symbol_IsPredicate(i32 %520)
  %tobool1078 = icmp ne i32 %call1077, 0
  br i1 %tobool1078, label %if.end.1084, label %if.then.1079

if.then.1079:                                     ; preds = %if.end.1076
  %521 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1080 = call i32 @fflush(%struct._IO_FILE* %521)
  %522 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1081 = getelementptr inbounds %union.yystype, %union.yystype* %522, i64 -1
  %list1082 = bitcast %union.yystype* %arrayidx1081 to %struct.LIST_HELP**
  %523 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list1082, align 8
  %call1083 = call i8* @list_Car(%struct.LIST_HELP* %523)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i8* %call1083)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end.1084

if.end.1084:                                      ; preds = %if.then.1079, %if.end.1076
  %524 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1085 = getelementptr inbounds %union.yystype, %union.yystype* %524, i64 -1
  %list1086 = bitcast %union.yystype* %arrayidx1085 to %struct.LIST_HELP**
  %525 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list1086, align 8
  %call1087 = call i8* @list_Car(%struct.LIST_HELP* %525)
  call void @string_StringFree(i8* %call1087)
  %526 = load i32, i32* %s1060, align 4
  call void @symbol_AddProperty(i32 %526, i32 64)
  br label %for.inc

for.inc:                                          ; preds = %if.end.1084
  %527 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1088 = getelementptr inbounds %union.yystype, %union.yystype* %527, i64 -1
  %list1089 = bitcast %union.yystype* %arrayidx1088 to %struct.LIST_HELP**
  %528 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list1089, align 8
  %call1090 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %528)
  %529 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1091 = getelementptr inbounds %union.yystype, %union.yystype* %529, i64 -1
  %list1092 = bitcast %union.yystype* %arrayidx1091 to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call1090, %struct.LIST_HELP** %list1092, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog.1211

sw.bb.1093:                                       ; preds = %yyreduce
  %530 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1094 = getelementptr inbounds %union.yystype, %union.yystype* %530, i64 -3
  %string1095 = bitcast %union.yystype* %arrayidx1094 to i8**
  %531 = load i8*, i8** %string1095, align 8
  %call1096 = call i32 @flag_Id(i8* %531)
  store i32 %call1096, i32* %flag, align 4
  %532 = load i32, i32* %flag, align 4
  %cmp1097 = icmp eq i32 %532, -1
  br i1 %cmp1097, label %if.then.1099, label %if.end.1103

if.then.1099:                                     ; preds = %sw.bb.1093
  %533 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1100 = call i32 @fflush(%struct._IO_FILE* %533)
  %534 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1101 = getelementptr inbounds %union.yystype, %union.yystype* %534, i64 -3
  %string1102 = bitcast %union.yystype* %arrayidx1101 to i8**
  %535 = load i8*, i8** %string1102, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i8* %535)
  call void @misc_Error()
  br label %if.end.1103

if.end.1103:                                      ; preds = %if.then.1099, %sw.bb.1093
  %536 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1104 = getelementptr inbounds %union.yystype, %union.yystype* %536, i64 -3
  %string1105 = bitcast %union.yystype* %arrayidx1104 to i8**
  %537 = load i8*, i8** %string1105, align 8
  call void @string_StringFree(i8* %537)
  %538 = load i32*, i32** @dfg_FLAGS, align 8
  %539 = load i32, i32* %flag, align 4
  %540 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1106 = getelementptr inbounds %union.yystype, %union.yystype* %540, i64 -1
  %number1107 = bitcast %union.yystype* %arrayidx1106 to i32*
  %541 = load i32, i32* %number1107, align 4
  call void @flag_SetFlagValue(i32* %538, i32 %539, i32 %541)
  br label %sw.epilog.1211

sw.bb.1108:                                       ; preds = %yyreduce
  %542 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1110 = getelementptr inbounds %union.yystype, %union.yystype* %542, i64 0
  %string1111 = bitcast %union.yystype* %arrayidx1110 to i8**
  %543 = load i8*, i8** %string1111, align 8
  %call1112 = call i32 @symbol_Lookup(i8* %543)
  store i32 %call1112, i32* %s1109, align 4
  %544 = load i32, i32* %s1109, align 4
  %cmp1113 = icmp eq i32 %544, 0
  br i1 %cmp1113, label %if.then.1115, label %if.end.1119

if.then.1115:                                     ; preds = %sw.bb.1108
  %545 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1116 = call i32 @fflush(%struct._IO_FILE* %545)
  %546 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1117 = getelementptr inbounds %union.yystype, %union.yystype* %546, i64 0
  %string1118 = bitcast %union.yystype* %arrayidx1117 to i8**
  %547 = load i8*, i8** %string1118, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* %547)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end.1119

if.end.1119:                                      ; preds = %if.then.1115, %sw.bb.1108
  %548 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1120 = getelementptr inbounds %union.yystype, %union.yystype* %548, i64 0
  %string1121 = bitcast %union.yystype* %arrayidx1120 to i8**
  %549 = load i8*, i8** %string1121, align 8
  call void @string_StringFree(i8* %549)
  %550 = load i32*, i32** @dfg_PRECEDENCE, align 8
  %551 = load i32, i32* %s1109, align 4
  call void @symbol_SetIncreasedOrdering(i32* %550, i32 %551)
  %552 = load i32, i32* %s1109, align 4
  %conv1122 = sext i32 %552 to i64
  %553 = inttoptr i64 %conv1122 to i8*
  %554 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_USERPRECEDENCE, align 8
  %call1123 = call %struct.LIST_HELP* @list_Cons(i8* %553, %struct.LIST_HELP* %554)
  store %struct.LIST_HELP* %call1123, %struct.LIST_HELP** @dfg_USERPRECEDENCE, align 8
  br label %sw.epilog.1211

sw.bb.1124:                                       ; preds = %yyreduce
  %555 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1126 = getelementptr inbounds %union.yystype, %union.yystype* %555, i64 -4
  %string1127 = bitcast %union.yystype* %arrayidx1126 to i8**
  %556 = load i8*, i8** %string1127, align 8
  %call1128 = call i32 @symbol_Lookup(i8* %556)
  store i32 %call1128, i32* %s1125, align 4
  %557 = load i32, i32* %s1125, align 4
  %cmp1129 = icmp eq i32 %557, 0
  br i1 %cmp1129, label %if.then.1131, label %if.end.1135

if.then.1131:                                     ; preds = %sw.bb.1124
  %558 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1132 = call i32 @fflush(%struct._IO_FILE* %558)
  %559 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1133 = getelementptr inbounds %union.yystype, %union.yystype* %559, i64 -4
  %string1134 = bitcast %union.yystype* %arrayidx1133 to i8**
  %560 = load i8*, i8** %string1134, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* %560)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end.1135

if.end.1135:                                      ; preds = %if.then.1131, %sw.bb.1124
  %561 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1136 = getelementptr inbounds %union.yystype, %union.yystype* %561, i64 -4
  %string1137 = bitcast %union.yystype* %arrayidx1136 to i8**
  %562 = load i8*, i8** %string1137, align 8
  call void @string_StringFree(i8* %562)
  %563 = load i32*, i32** @dfg_PRECEDENCE, align 8
  %564 = load i32, i32* %s1125, align 4
  call void @symbol_SetIncreasedOrdering(i32* %563, i32 %564)
  %565 = load i32, i32* %s1125, align 4
  %conv1138 = sext i32 %565 to i64
  %566 = inttoptr i64 %conv1138 to i8*
  %567 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_USERPRECEDENCE, align 8
  %call1139 = call %struct.LIST_HELP* @list_Cons(i8* %566, %struct.LIST_HELP* %567)
  store %struct.LIST_HELP* %call1139, %struct.LIST_HELP** @dfg_USERPRECEDENCE, align 8
  %568 = load i32, i32* %s1125, align 4
  %569 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1140 = getelementptr inbounds %union.yystype, %union.yystype* %569, i64 -2
  %number1141 = bitcast %union.yystype* %arrayidx1140 to i32*
  %570 = load i32, i32* %number1141, align 4
  call void @symbol_SetWeight(i32 %568, i32 %570)
  %571 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1142 = getelementptr inbounds %union.yystype, %union.yystype* %571, i64 -1
  %property = bitcast %union.yystype* %arrayidx1142 to i32*
  %572 = load i32, i32* %property, align 4
  %cmp1143 = icmp ne i32 %572, 0
  br i1 %cmp1143, label %if.then.1145, label %if.end.1148

if.then.1145:                                     ; preds = %if.end.1135
  %573 = load i32, i32* %s1125, align 4
  %574 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1146 = getelementptr inbounds %union.yystype, %union.yystype* %574, i64 -1
  %property1147 = bitcast %union.yystype* %arrayidx1146 to i32*
  %575 = load i32, i32* %property1147, align 4
  call void @symbol_AddProperty(i32 %573, i32 %575)
  br label %if.end.1148

if.end.1148:                                      ; preds = %if.then.1145, %if.end.1135
  br label %sw.epilog.1211

sw.bb.1149:                                       ; preds = %yyreduce
  %property1150 = bitcast %union.yystype* %yyval to i32*
  store i32 0, i32* %property1150, align 4
  br label %sw.epilog.1211

sw.bb.1151:                                       ; preds = %yyreduce
  %576 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1152 = getelementptr inbounds %union.yystype, %union.yystype* %576, i64 0
  %string1153 = bitcast %union.yystype* %arrayidx1152 to i8**
  %577 = load i8*, i8** %string1153, align 8
  %arrayidx1154 = getelementptr inbounds i8, i8* %577, i64 1
  %578 = load i8, i8* %arrayidx1154, align 1
  %conv1155 = sext i8 %578 to i32
  %cmp1156 = icmp ne i32 %conv1155, 0
  br i1 %cmp1156, label %if.then.1179, label %lor.lhs.false.1158

lor.lhs.false.1158:                               ; preds = %sw.bb.1151
  %579 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1159 = getelementptr inbounds %union.yystype, %union.yystype* %579, i64 0
  %string1160 = bitcast %union.yystype* %arrayidx1159 to i8**
  %580 = load i8*, i8** %string1160, align 8
  %arrayidx1161 = getelementptr inbounds i8, i8* %580, i64 0
  %581 = load i8, i8* %arrayidx1161, align 1
  %conv1162 = sext i8 %581 to i32
  %cmp1163 = icmp ne i32 %conv1162, 108
  br i1 %cmp1163, label %land.lhs.true.1165, label %if.end.1183

land.lhs.true.1165:                               ; preds = %lor.lhs.false.1158
  %582 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1166 = getelementptr inbounds %union.yystype, %union.yystype* %582, i64 0
  %string1167 = bitcast %union.yystype* %arrayidx1166 to i8**
  %583 = load i8*, i8** %string1167, align 8
  %arrayidx1168 = getelementptr inbounds i8, i8* %583, i64 0
  %584 = load i8, i8* %arrayidx1168, align 1
  %conv1169 = sext i8 %584 to i32
  %cmp1170 = icmp ne i32 %conv1169, 109
  br i1 %cmp1170, label %land.lhs.true.1172, label %if.end.1183

land.lhs.true.1172:                               ; preds = %land.lhs.true.1165
  %585 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1173 = getelementptr inbounds %union.yystype, %union.yystype* %585, i64 0
  %string1174 = bitcast %union.yystype* %arrayidx1173 to i8**
  %586 = load i8*, i8** %string1174, align 8
  %arrayidx1175 = getelementptr inbounds i8, i8* %586, i64 0
  %587 = load i8, i8* %arrayidx1175, align 1
  %conv1176 = sext i8 %587 to i32
  %cmp1177 = icmp ne i32 %conv1176, 114
  br i1 %cmp1177, label %if.then.1179, label %if.end.1183

if.then.1179:                                     ; preds = %land.lhs.true.1172, %sw.bb.1151
  %588 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1180 = call i32 @fflush(%struct._IO_FILE* %588)
  %589 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1181 = getelementptr inbounds %union.yystype, %union.yystype* %589, i64 0
  %string1182 = bitcast %union.yystype* %arrayidx1181 to i8**
  %590 = load i8*, i8** %string1182, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* %590)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end.1183

if.end.1183:                                      ; preds = %if.then.1179, %land.lhs.true.1172, %land.lhs.true.1165, %lor.lhs.false.1158
  %591 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1184 = getelementptr inbounds %union.yystype, %union.yystype* %591, i64 0
  %string1185 = bitcast %union.yystype* %arrayidx1184 to i8**
  %592 = load i8*, i8** %string1185, align 8
  %arrayidx1186 = getelementptr inbounds i8, i8* %592, i64 0
  %593 = load i8, i8* %arrayidx1186, align 1
  %conv1187 = sext i8 %593 to i32
  switch i32 %conv1187, label %sw.default [
    i32 109, label %sw.bb.1188
    i32 114, label %sw.bb.1190
  ]

sw.bb.1188:                                       ; preds = %if.end.1183
  %property1189 = bitcast %union.yystype* %yyval to i32*
  store i32 16, i32* %property1189, align 4
  br label %sw.epilog

sw.bb.1190:                                       ; preds = %if.end.1183
  %property1191 = bitcast %union.yystype* %yyval to i32*
  store i32 8, i32* %property1191, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.1183
  %property1192 = bitcast %union.yystype* %yyval to i32*
  store i32 0, i32* %property1192, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1190, %sw.bb.1188
  %594 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1193 = getelementptr inbounds %union.yystype, %union.yystype* %594, i64 0
  %string1194 = bitcast %union.yystype* %arrayidx1193 to i8**
  %595 = load i8*, i8** %string1194, align 8
  call void @string_StringFree(i8* %595)
  br label %sw.epilog.1211

sw.bb.1195:                                       ; preds = %yyreduce
  %596 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1196 = getelementptr inbounds %union.yystype, %union.yystype* %596, i64 -2
  %list1197 = bitcast %union.yystype* %arrayidx1196 to %struct.LIST_HELP**
  %597 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list1197, align 8
  call void @dfg_DeleteStringList(%struct.LIST_HELP* %597)
  br label %sw.epilog.1211

sw.bb.1198:                                       ; preds = %yyreduce
  %598 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1199 = getelementptr inbounds %union.yystype, %union.yystype* %598, i64 0
  %string1200 = bitcast %union.yystype* %arrayidx1199 to i8**
  %599 = load i8*, i8** %string1200, align 8
  %call1201 = call %struct.LIST_HELP* @list_List(i8* %599)
  %list1202 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call1201, %struct.LIST_HELP** %list1202, align 8
  br label %sw.epilog.1211

sw.bb.1203:                                       ; preds = %yyreduce
  %600 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1204 = getelementptr inbounds %union.yystype, %union.yystype* %600, i64 -2
  %list1205 = bitcast %union.yystype* %arrayidx1204 to %struct.LIST_HELP**
  %601 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list1205, align 8
  %602 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx1206 = getelementptr inbounds %union.yystype, %union.yystype* %602, i64 0
  %string1207 = bitcast %union.yystype* %arrayidx1206 to i8**
  %603 = load i8*, i8** %string1207, align 8
  %call1208 = call %struct.LIST_HELP* @list_List(i8* %603)
  %call1209 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %601, %struct.LIST_HELP* %call1208)
  %list1210 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call1209, %struct.LIST_HELP** %list1210, align 8
  br label %sw.epilog.1211

sw.epilog.1211:                                   ; preds = %yyreduce, %sw.bb.1203, %sw.bb.1198, %sw.bb.1195, %sw.epilog, %sw.bb.1149, %if.end.1148, %if.end.1119, %if.end.1103, %for.end, %sw.bb.1056, %sw.bb.1055, %if.end.1052, %sw.bb.1041, %sw.bb.1040, %sw.bb.1039, %sw.bb.1037, %sw.bb.1033, %sw.bb.1031, %sw.bb.1029, %sw.bb.1027, %sw.bb.1025, %sw.bb.1023, %sw.bb.1021, %sw.bb.1019, %sw.bb.1017, %sw.bb.1015, %sw.bb.1013, %sw.bb.1011, %sw.bb.1007, %if.end.1006, %sw.bb.985, %if.end.984, %if.end.941, %sw.bb.897, %sw.bb.895, %cond.end.892, %cond.end.872, %if.end.858, %if.end.790, %if.end.782, %cond.end.772, %cond.end.757, %cond.end.746, %cond.end.734, %cond.end.723, %cond.end.711, %cond.end.696, %cond.end.686, %cond.end.676, %sw.bb.660, %sw.bb.655, %cond.end.652, %sw.bb.637, %cond.end.634, %cond.end.619, %cond.end.608, %cond.end.597, %sw.bb.586, %sw.bb.585, %sw.bb.581, %sw.bb.577, %sw.bb.575, %if.end.574, %sw.bb.543, %sw.bb.541, %sw.bb.539, %if.end.538, %if.end.522, %if.end.497, %cond.end.480, %cond.end.465, %cond.end.454, %cond.end.446, %cond.end.438, %cond.end.430, %if.end.422, %sw.bb.409, %sw.bb.406, %sw.bb.403, %sw.bb.400, %sw.bb.397, %sw.bb.394, %sw.bb.391, %cond.end.388, %cond.end.373, %sw.bb.361, %sw.bb.359, %cond.end.356, %sw.bb.344, %sw.bb.343, %cond.end.340, %cond.end.328, %cond.end.313, %sw.bb.300, %sw.bb.296, %sw.bb.294, %if.end.293, %sw.bb.263, %sw.bb.261, %sw.bb.259, %if.end.258, %sw.bb.240, %sw.bb.237, %sw.bb.230, %sw.bb.225, %sw.bb.223, %sw.bb.221, %sw.bb.214, %sw.bb.204, %sw.bb.203, %sw.bb.202, %sw.bb.199, %sw.bb.194, %sw.bb.189, %sw.bb.185, %sw.bb.183, %sw.bb.178, %sw.bb.175, %sw.bb.170, %sw.bb.167, %sw.bb.164, %sw.bb.161, %sw.bb.156, %sw.bb.153, %sw.bb.149, %sw.bb.146, %sw.bb.144, %sw.bb.142, %sw.bb.140, %sw.bb.137, %sw.bb.134, %sw.bb.131, %sw.bb.128, %sw.bb.126, %sw.bb.123, %sw.bb.120
  %604 = load i32, i32* %yylen, align 4
  %605 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %idx.ext = sext i32 %604 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr1212 = getelementptr inbounds %union.yystype, %union.yystype* %605, i64 %idx.neg
  store %union.yystype* %add.ptr1212, %union.yystype** %yyvsp, align 8
  %606 = load i32, i32* %yylen, align 4
  %607 = load i16*, i16** %yyssp, align 8
  %idx.ext1213 = sext i32 %606 to i64
  %idx.neg1214 = sub i64 0, %idx.ext1213
  %add.ptr1215 = getelementptr inbounds i16, i16* %607, i64 %idx.neg1214
  store i16* %add.ptr1215, i16** %yyssp, align 8
  %608 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %incdec.ptr1216 = getelementptr inbounds %union.yystype, %union.yystype* %608, i32 1
  store %union.yystype* %incdec.ptr1216, %union.yystype** %yyvsp, align 8
  %609 = bitcast %union.yystype* %incdec.ptr1216 to i8*
  %610 = bitcast %union.yystype* %yyval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %609, i8* %610, i64 8, i32 8, i1 false)
  %611 = load i32, i32* %yyn, align 4
  %idxprom1217 = sext i32 %611 to i64
  %arrayidx1218 = getelementptr inbounds [197 x i8], [197 x i8]* @yyr1, i32 0, i64 %idxprom1217
  %612 = load i8, i8* %arrayidx1218, align 1
  %conv1219 = zext i8 %612 to i32
  store i32 %conv1219, i32* %yyn, align 4
  %613 = load i32, i32* %yyn, align 4
  %sub1220 = sub nsw i32 %613, 71
  %idxprom1221 = sext i32 %sub1220 to i64
  %arrayidx1222 = getelementptr inbounds [100 x i16], [100 x i16]* @yypgoto, i32 0, i64 %idxprom1221
  %614 = load i16, i16* %arrayidx1222, align 2
  %conv1223 = sext i16 %614 to i32
  %615 = load i16*, i16** %yyssp, align 8
  %616 = load i16, i16* %615, align 2
  %conv1224 = sext i16 %616 to i32
  %add1225 = add nsw i32 %conv1223, %conv1224
  store i32 %add1225, i32* %yystate, align 4
  %617 = load i32, i32* %yystate, align 4
  %cmp1226 = icmp sle i32 0, %617
  br i1 %cmp1226, label %land.lhs.true.1228, label %if.else.1242

land.lhs.true.1228:                               ; preds = %sw.epilog.1211
  %618 = load i32, i32* %yystate, align 4
  %cmp1229 = icmp sle i32 %618, 506
  br i1 %cmp1229, label %land.lhs.true.1231, label %if.else.1242

land.lhs.true.1231:                               ; preds = %land.lhs.true.1228
  %619 = load i32, i32* %yystate, align 4
  %idxprom1232 = sext i32 %619 to i64
  %arrayidx1233 = getelementptr inbounds [507 x i16], [507 x i16]* @yycheck, i32 0, i64 %idxprom1232
  %620 = load i16, i16* %arrayidx1233, align 2
  %conv1234 = sext i16 %620 to i32
  %621 = load i16*, i16** %yyssp, align 8
  %622 = load i16, i16* %621, align 2
  %conv1235 = sext i16 %622 to i32
  %cmp1236 = icmp eq i32 %conv1234, %conv1235
  br i1 %cmp1236, label %if.then.1238, label %if.else.1242

if.then.1238:                                     ; preds = %land.lhs.true.1231
  %623 = load i32, i32* %yystate, align 4
  %idxprom1239 = sext i32 %623 to i64
  %arrayidx1240 = getelementptr inbounds [507 x i16], [507 x i16]* @yytable, i32 0, i64 %idxprom1239
  %624 = load i16, i16* %arrayidx1240, align 2
  %conv1241 = zext i16 %624 to i32
  store i32 %conv1241, i32* %yystate, align 4
  br label %if.end.1247

if.else.1242:                                     ; preds = %land.lhs.true.1231, %land.lhs.true.1228, %sw.epilog.1211
  %625 = load i32, i32* %yyn, align 4
  %sub1243 = sub nsw i32 %625, 71
  %idxprom1244 = sext i32 %sub1243 to i64
  %arrayidx1245 = getelementptr inbounds [100 x i16], [100 x i16]* @yydefgoto, i32 0, i64 %idxprom1244
  %626 = load i16, i16* %arrayidx1245, align 2
  %conv1246 = sext i16 %626 to i32
  store i32 %conv1246, i32* %yystate, align 4
  br label %if.end.1247

if.end.1247:                                      ; preds = %if.else.1242, %if.then.1238
  br label %yynewstate

yyerrlab:                                         ; preds = %if.then.111, %if.then.91
  %627 = load i32, i32* %yyerrstatus, align 4
  %tobool1248 = icmp ne i32 %627, 0
  br i1 %tobool1248, label %if.end.1355, label %if.then.1249

if.then.1249:                                     ; preds = %yyerrlab
  %628 = load i32, i32* @dfg_nerrs, align 4
  %inc = add nsw i32 %628, 1
  store i32 %inc, i32* @dfg_nerrs, align 4
  %629 = load i32, i32* %yystate, align 4
  %idxprom1250 = sext i32 %629 to i64
  %arrayidx1251 = getelementptr inbounds [477 x i16], [477 x i16]* @yypact, i32 0, i64 %idxprom1250
  %630 = load i16, i16* %arrayidx1251, align 2
  %conv1252 = sext i16 %630 to i32
  store i32 %conv1252, i32* %yyn, align 4
  %631 = load i32, i32* %yyn, align 4
  %cmp1253 = icmp slt i32 -356, %631
  br i1 %cmp1253, label %land.lhs.true.1255, label %if.else.1353

land.lhs.true.1255:                               ; preds = %if.then.1249
  %632 = load i32, i32* %yyn, align 4
  %cmp1256 = icmp slt i32 %632, 506
  br i1 %cmp1256, label %if.then.1258, label %if.else.1353

if.then.1258:                                     ; preds = %land.lhs.true.1255
  store i64 0, i64* %yysize1259, align 8
  %633 = load i32, i32* @dfg_char, align 4
  %cmp1260 = icmp ule i32 %633, 318
  br i1 %cmp1260, label %cond.true.1262, label %cond.false.1266

cond.true.1262:                                   ; preds = %if.then.1258
  %634 = load i32, i32* @dfg_char, align 4
  %idxprom1263 = sext i32 %634 to i64
  %arrayidx1264 = getelementptr inbounds [319 x i8], [319 x i8]* @yytranslate, i32 0, i64 %idxprom1263
  %635 = load i8, i8* %arrayidx1264, align 1
  %conv1265 = zext i8 %635 to i32
  br label %cond.end.1267

cond.false.1266:                                  ; preds = %if.then.1258
  br label %cond.end.1267

cond.end.1267:                                    ; preds = %cond.false.1266, %cond.true.1262
  %cond1268 = phi i32 [ %conv1265, %cond.true.1262 ], [ 2, %cond.false.1266 ]
  store i32 %cond1268, i32* %yytype, align 4
  store i32 0, i32* %yycount, align 4
  %636 = load i32, i32* %yyn, align 4
  %cmp1269 = icmp slt i32 %636, 0
  br i1 %cmp1269, label %cond.true.1271, label %cond.false.1273

cond.true.1271:                                   ; preds = %cond.end.1267
  %637 = load i32, i32* %yyn, align 4
  %sub1272 = sub nsw i32 0, %637
  br label %cond.end.1274

cond.false.1273:                                  ; preds = %cond.end.1267
  br label %cond.end.1274

cond.end.1274:                                    ; preds = %cond.false.1273, %cond.true.1271
  %cond1275 = phi i32 [ %sub1272, %cond.true.1271 ], [ 0, %cond.false.1273 ]
  store i32 %cond1275, i32* %yyx, align 4
  br label %for.cond.1276

for.cond.1276:                                    ; preds = %for.inc.1297, %cond.end.1274
  %638 = load i32, i32* %yyx, align 4
  %cmp1277 = icmp slt i32 %638, 172
  br i1 %cmp1277, label %for.body.1279, label %for.end.1299

for.body.1279:                                    ; preds = %for.cond.1276
  %639 = load i32, i32* %yyx, align 4
  %640 = load i32, i32* %yyn, align 4
  %add1280 = add nsw i32 %639, %640
  %idxprom1281 = sext i32 %add1280 to i64
  %arrayidx1282 = getelementptr inbounds [507 x i16], [507 x i16]* @yycheck, i32 0, i64 %idxprom1281
  %641 = load i16, i16* %arrayidx1282, align 2
  %conv1283 = sext i16 %641 to i32
  %642 = load i32, i32* %yyx, align 4
  %cmp1284 = icmp eq i32 %conv1283, %642
  br i1 %cmp1284, label %land.lhs.true.1286, label %if.end.1296

land.lhs.true.1286:                               ; preds = %for.body.1279
  %643 = load i32, i32* %yyx, align 4
  %cmp1287 = icmp ne i32 %643, 1
  br i1 %cmp1287, label %if.then.1289, label %if.end.1296

if.then.1289:                                     ; preds = %land.lhs.true.1286
  %644 = load i32, i32* %yyx, align 4
  %idxprom1290 = sext i32 %644 to i64
  %arrayidx1291 = getelementptr inbounds [172 x i8*], [172 x i8*]* @yytname, i32 0, i64 %idxprom1290
  %645 = load i8*, i8** %arrayidx1291, align 8
  %call1292 = call i64 @strlen(i8* %645) #7
  %add1293 = add i64 %call1292, 15
  %646 = load i64, i64* %yysize1259, align 8
  %add1294 = add i64 %646, %add1293
  store i64 %add1294, i64* %yysize1259, align 8
  %647 = load i32, i32* %yycount, align 4
  %inc1295 = add nsw i32 %647, 1
  store i32 %inc1295, i32* %yycount, align 4
  br label %if.end.1296

if.end.1296:                                      ; preds = %if.then.1289, %land.lhs.true.1286, %for.body.1279
  br label %for.inc.1297

for.inc.1297:                                     ; preds = %if.end.1296
  %648 = load i32, i32* %yyx, align 4
  %inc1298 = add nsw i32 %648, 1
  store i32 %inc1298, i32* %yyx, align 4
  br label %for.cond.1276

for.end.1299:                                     ; preds = %for.cond.1276
  %649 = load i64, i64* %yysize1259, align 8
  %add1300 = add i64 %649, 25
  store i64 %add1300, i64* %yysize1259, align 8
  %650 = load i32, i32* %yytype, align 4
  %idxprom1301 = sext i32 %650 to i64
  %arrayidx1302 = getelementptr inbounds [172 x i8*], [172 x i8*]* @yytname, i32 0, i64 %idxprom1301
  %651 = load i8*, i8** %arrayidx1302, align 8
  %call1303 = call i64 @strlen(i8* %651) #7
  %652 = load i64, i64* %yysize1259, align 8
  %add1304 = add i64 %652, %call1303
  store i64 %add1304, i64* %yysize1259, align 8
  %653 = load i64, i64* %yysize1259, align 8
  %654 = alloca i8, i64 %653
  store i8* %654, i8** %yymsg, align 8
  %655 = load i8*, i8** %yymsg, align 8
  %cmp1305 = icmp ne i8* %655, null
  br i1 %cmp1305, label %if.then.1307, label %if.else.1351

if.then.1307:                                     ; preds = %for.end.1299
  %656 = load i8*, i8** %yymsg, align 8
  %call1308 = call i8* @yystpcpy(i8* %656, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0))
  store i8* %call1308, i8** %yyp, align 8
  %657 = load i8*, i8** %yyp, align 8
  %658 = load i32, i32* %yytype, align 4
  %idxprom1309 = sext i32 %658 to i64
  %arrayidx1310 = getelementptr inbounds [172 x i8*], [172 x i8*]* @yytname, i32 0, i64 %idxprom1309
  %659 = load i8*, i8** %arrayidx1310, align 8
  %call1311 = call i8* @yystpcpy(i8* %657, i8* %659)
  store i8* %call1311, i8** %yyp, align 8
  %660 = load i32, i32* %yycount, align 4
  %cmp1312 = icmp slt i32 %660, 5
  br i1 %cmp1312, label %if.then.1314, label %if.end.1348

if.then.1314:                                     ; preds = %if.then.1307
  store i32 0, i32* %yycount, align 4
  %661 = load i32, i32* %yyn, align 4
  %cmp1315 = icmp slt i32 %661, 0
  br i1 %cmp1315, label %cond.true.1317, label %cond.false.1319

cond.true.1317:                                   ; preds = %if.then.1314
  %662 = load i32, i32* %yyn, align 4
  %sub1318 = sub nsw i32 0, %662
  br label %cond.end.1320

cond.false.1319:                                  ; preds = %if.then.1314
  br label %cond.end.1320

cond.end.1320:                                    ; preds = %cond.false.1319, %cond.true.1317
  %cond1321 = phi i32 [ %sub1318, %cond.true.1317 ], [ 0, %cond.false.1319 ]
  store i32 %cond1321, i32* %yyx, align 4
  br label %for.cond.1322

for.cond.1322:                                    ; preds = %for.inc.1345, %cond.end.1320
  %663 = load i32, i32* %yyx, align 4
  %cmp1323 = icmp slt i32 %663, 172
  br i1 %cmp1323, label %for.body.1325, label %for.end.1347

for.body.1325:                                    ; preds = %for.cond.1322
  %664 = load i32, i32* %yyx, align 4
  %665 = load i32, i32* %yyn, align 4
  %add1326 = add nsw i32 %664, %665
  %idxprom1327 = sext i32 %add1326 to i64
  %arrayidx1328 = getelementptr inbounds [507 x i16], [507 x i16]* @yycheck, i32 0, i64 %idxprom1327
  %666 = load i16, i16* %arrayidx1328, align 2
  %conv1329 = sext i16 %666 to i32
  %667 = load i32, i32* %yyx, align 4
  %cmp1330 = icmp eq i32 %conv1329, %667
  br i1 %cmp1330, label %land.lhs.true.1332, label %if.end.1344

land.lhs.true.1332:                               ; preds = %for.body.1325
  %668 = load i32, i32* %yyx, align 4
  %cmp1333 = icmp ne i32 %668, 1
  br i1 %cmp1333, label %if.then.1335, label %if.end.1344

if.then.1335:                                     ; preds = %land.lhs.true.1332
  %669 = load i32, i32* %yycount, align 4
  %tobool1336 = icmp ne i32 %669, 0
  %lnot1337 = xor i1 %tobool1336, true
  %cond1338 = select i1 %lnot1337, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)
  store i8* %cond1338, i8** %yyq, align 8
  %670 = load i8*, i8** %yyp, align 8
  %671 = load i8*, i8** %yyq, align 8
  %call1339 = call i8* @yystpcpy(i8* %670, i8* %671)
  store i8* %call1339, i8** %yyp, align 8
  %672 = load i8*, i8** %yyp, align 8
  %673 = load i32, i32* %yyx, align 4
  %idxprom1340 = sext i32 %673 to i64
  %arrayidx1341 = getelementptr inbounds [172 x i8*], [172 x i8*]* @yytname, i32 0, i64 %idxprom1340
  %674 = load i8*, i8** %arrayidx1341, align 8
  %call1342 = call i8* @yystpcpy(i8* %672, i8* %674)
  store i8* %call1342, i8** %yyp, align 8
  %675 = load i32, i32* %yycount, align 4
  %inc1343 = add nsw i32 %675, 1
  store i32 %inc1343, i32* %yycount, align 4
  br label %if.end.1344

if.end.1344:                                      ; preds = %if.then.1335, %land.lhs.true.1332, %for.body.1325
  br label %for.inc.1345

for.inc.1345:                                     ; preds = %if.end.1344
  %676 = load i32, i32* %yyx, align 4
  %inc1346 = add nsw i32 %676, 1
  store i32 %inc1346, i32* %yyx, align 4
  br label %for.cond.1322

for.end.1347:                                     ; preds = %for.cond.1322
  br label %if.end.1348

if.end.1348:                                      ; preds = %for.end.1347, %if.then.1307
  %677 = load i8*, i8** %yymsg, align 8
  call void @dfg_error(i8* %677)
  br label %do.body.1349

do.body.1349:                                     ; preds = %if.end.1348
  br label %do.end.1350

do.end.1350:                                      ; preds = %do.body.1349
  br label %if.end.1352

if.else.1351:                                     ; preds = %for.end.1299
  call void @dfg_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.1352

if.end.1352:                                      ; preds = %if.else.1351, %do.end.1350
  br label %if.end.1354

if.else.1353:                                     ; preds = %land.lhs.true.1255, %if.then.1249
  call void @dfg_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.1354

if.end.1354:                                      ; preds = %if.else.1353, %if.end.1352
  br label %if.end.1355

if.end.1355:                                      ; preds = %if.end.1354, %yyerrlab
  br label %yyerrlab1

yyerrlab1:                                        ; preds = %if.end.1355
  %678 = load i32, i32* %yyerrstatus, align 4
  %cmp1356 = icmp eq i32 %678, 3
  br i1 %cmp1356, label %if.then.1358, label %if.end.1372

if.then.1358:                                     ; preds = %yyerrlab1
  %679 = load i32, i32* @dfg_char, align 4
  %cmp1359 = icmp eq i32 %679, 0
  br i1 %cmp1359, label %if.then.1361, label %if.end.1371

if.then.1361:                                     ; preds = %if.then.1358
  %680 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %incdec.ptr1362 = getelementptr inbounds %union.yystype, %union.yystype* %680, i32 -1
  store %union.yystype* %incdec.ptr1362, %union.yystype** %yyvsp, align 8
  %681 = load i16*, i16** %yyssp, align 8
  %incdec.ptr1363 = getelementptr inbounds i16, i16* %681, i32 -1
  store i16* %incdec.ptr1363, i16** %yyssp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.1361
  %682 = load i16*, i16** %yyssp, align 8
  %683 = load i16*, i16** %yyss, align 8
  %cmp1364 = icmp ugt i16* %682, %683
  br i1 %cmp1364, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %684 = load i16*, i16** %yyssp, align 8
  %685 = load i16, i16* %684, align 2
  %idxprom1366 = sext i16 %685 to i64
  %arrayidx1367 = getelementptr inbounds [477 x i8], [477 x i8]* @yystos, i32 0, i64 %idxprom1366
  %686 = load i8, i8* %arrayidx1367, align 1
  %conv1368 = zext i8 %686 to i32
  %687 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %coerce.dive = getelementptr %union.yystype, %union.yystype* %687, i32 0, i32 0
  %688 = load i8*, i8** %coerce.dive, align 8
  call void @yydestruct(i32 %conv1368, i8* %688)
  %689 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %incdec.ptr1369 = getelementptr inbounds %union.yystype, %union.yystype* %689, i32 -1
  store %union.yystype* %incdec.ptr1369, %union.yystype** %yyvsp, align 8
  %690 = load i16*, i16** %yyssp, align 8
  %incdec.ptr1370 = getelementptr inbounds i16, i16* %690, i32 -1
  store i16* %incdec.ptr1370, i16** %yyssp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %yyabortlab

if.end.1371:                                      ; preds = %if.then.1358
  %691 = load i32, i32* %yychar1, align 4
  %692 = load i8*, i8** getelementptr inbounds (%union.yystype, %union.yystype* @dfg_lval, i32 0, i32 0), align 8
  call void @yydestruct(i32 %691, i8* %692)
  store i32 -2, i32* @dfg_char, align 4
  br label %if.end.1372

if.end.1372:                                      ; preds = %if.end.1371, %yyerrlab1
  store i32 3, i32* %yyerrstatus, align 4
  br label %for.cond.1373

for.cond.1373:                                    ; preds = %if.end.1405, %if.end.1372
  %693 = load i32, i32* %yystate, align 4
  %idxprom1374 = sext i32 %693 to i64
  %arrayidx1375 = getelementptr inbounds [477 x i16], [477 x i16]* @yypact, i32 0, i64 %idxprom1374
  %694 = load i16, i16* %arrayidx1375, align 2
  %conv1376 = sext i16 %694 to i32
  store i32 %conv1376, i32* %yyn, align 4
  %695 = load i32, i32* %yyn, align 4
  %cmp1377 = icmp ne i32 %695, -356
  br i1 %cmp1377, label %if.then.1379, label %if.end.1401

if.then.1379:                                     ; preds = %for.cond.1373
  %696 = load i32, i32* %yyn, align 4
  %add1380 = add nsw i32 %696, 1
  store i32 %add1380, i32* %yyn, align 4
  %697 = load i32, i32* %yyn, align 4
  %cmp1381 = icmp sle i32 0, %697
  br i1 %cmp1381, label %land.lhs.true.1383, label %if.end.1400

land.lhs.true.1383:                               ; preds = %if.then.1379
  %698 = load i32, i32* %yyn, align 4
  %cmp1384 = icmp sle i32 %698, 506
  br i1 %cmp1384, label %land.lhs.true.1386, label %if.end.1400

land.lhs.true.1386:                               ; preds = %land.lhs.true.1383
  %699 = load i32, i32* %yyn, align 4
  %idxprom1387 = sext i32 %699 to i64
  %arrayidx1388 = getelementptr inbounds [507 x i16], [507 x i16]* @yycheck, i32 0, i64 %idxprom1387
  %700 = load i16, i16* %arrayidx1388, align 2
  %conv1389 = sext i16 %700 to i32
  %cmp1390 = icmp eq i32 %conv1389, 1
  br i1 %cmp1390, label %if.then.1392, label %if.end.1400

if.then.1392:                                     ; preds = %land.lhs.true.1386
  %701 = load i32, i32* %yyn, align 4
  %idxprom1393 = sext i32 %701 to i64
  %arrayidx1394 = getelementptr inbounds [507 x i16], [507 x i16]* @yytable, i32 0, i64 %idxprom1393
  %702 = load i16, i16* %arrayidx1394, align 2
  %conv1395 = zext i16 %702 to i32
  store i32 %conv1395, i32* %yyn, align 4
  %703 = load i32, i32* %yyn, align 4
  %cmp1396 = icmp slt i32 0, %703
  br i1 %cmp1396, label %if.then.1398, label %if.end.1399

if.then.1398:                                     ; preds = %if.then.1392
  br label %for.end.1413

if.end.1399:                                      ; preds = %if.then.1392
  br label %if.end.1400

if.end.1400:                                      ; preds = %if.end.1399, %land.lhs.true.1386, %land.lhs.true.1383, %if.then.1379
  br label %if.end.1401

if.end.1401:                                      ; preds = %if.end.1400, %for.cond.1373
  %704 = load i16*, i16** %yyssp, align 8
  %705 = load i16*, i16** %yyss, align 8
  %cmp1402 = icmp eq i16* %704, %705
  br i1 %cmp1402, label %if.then.1404, label %if.end.1405

if.then.1404:                                     ; preds = %if.end.1401
  br label %yyabortlab

if.end.1405:                                      ; preds = %if.end.1401
  %706 = load i32, i32* %yystate, align 4
  %idxprom1406 = sext i32 %706 to i64
  %arrayidx1407 = getelementptr inbounds [477 x i8], [477 x i8]* @yystos, i32 0, i64 %idxprom1406
  %707 = load i8, i8* %arrayidx1407, align 1
  %conv1408 = zext i8 %707 to i32
  %708 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %coerce.dive1409 = getelementptr %union.yystype, %union.yystype* %708, i32 0, i32 0
  %709 = load i8*, i8** %coerce.dive1409, align 8
  call void @yydestruct(i32 %conv1408, i8* %709)
  %710 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %incdec.ptr1410 = getelementptr inbounds %union.yystype, %union.yystype* %710, i32 -1
  store %union.yystype* %incdec.ptr1410, %union.yystype** %yyvsp, align 8
  %711 = load i16*, i16** %yyssp, align 8
  %incdec.ptr1411 = getelementptr inbounds i16, i16* %711, i32 -1
  store i16* %incdec.ptr1411, i16** %yyssp, align 8
  %712 = load i16, i16* %incdec.ptr1411, align 2
  %conv1412 = sext i16 %712 to i32
  store i32 %conv1412, i32* %yystate, align 4
  br label %for.cond.1373

for.end.1413:                                     ; preds = %if.then.1398
  %713 = load i32, i32* %yyn, align 4
  %cmp1414 = icmp eq i32 %713, 4
  br i1 %cmp1414, label %if.then.1416, label %if.end.1417

if.then.1416:                                     ; preds = %for.end.1413
  br label %yyacceptlab

if.end.1417:                                      ; preds = %for.end.1413
  %714 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %incdec.ptr1418 = getelementptr inbounds %union.yystype, %union.yystype* %714, i32 1
  store %union.yystype* %incdec.ptr1418, %union.yystype** %yyvsp, align 8
  %715 = bitcast %union.yystype* %incdec.ptr1418 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %715, i8* bitcast (%union.yystype* @dfg_lval to i8*), i64 8, i32 8, i1 false)
  %716 = load i32, i32* %yyn, align 4
  store i32 %716, i32* %yystate, align 4
  br label %yynewstate

yyacceptlab:                                      ; preds = %if.then.1416, %sw.bb, %if.then.96
  store i32 0, i32* %yyresult, align 4
  br label %yyreturn

yyabortlab:                                       ; preds = %if.then.1404, %while.end, %if.then.46
  store i32 1, i32* %yyresult, align 4
  br label %yyreturn

yyoverflowlab:                                    ; preds = %if.then.13, %if.then.6
  call void @dfg_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0))
  store i32 2, i32* %yyresult, align 4
  br label %yyreturn

yyreturn:                                         ; preds = %yyoverflowlab, %yyabortlab, %yyacceptlab
  %717 = load i16*, i16** %yyss, align 8
  %arraydecay1419 = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  %cmp1420 = icmp ne i16* %717, %arraydecay1419
  br i1 %cmp1420, label %if.then.1422, label %if.end.1425

if.then.1422:                                     ; preds = %yyreturn
  br label %do.body.1423

do.body.1423:                                     ; preds = %if.then.1422
  br label %do.end.1424

do.end.1424:                                      ; preds = %do.body.1423
  br label %if.end.1425

if.end.1425:                                      ; preds = %do.end.1424, %yyreturn
  %718 = load i32, i32* %yyresult, align 4
  ret i32 %718
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @dfg_lex() #2

declare void @string_StringFree(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @dfg_SymbolDecl(i32 %SymbolType, i8* %Name, i32 %Arity) #0 {
entry:
  %SymbolType.addr = alloca i32, align 4
  %Name.addr = alloca i8*, align 8
  %Arity.addr = alloca i32, align 4
  %arity = alloca i32, align 4
  %length = alloca i32, align 4
  %symbol = alloca i32, align 4
  store i32 %SymbolType, i32* %SymbolType.addr, align 4
  store i8* %Name, i8** %Name.addr, align 8
  store i32 %Arity, i32* %Arity.addr, align 4
  %0 = load i32, i32* %Arity.addr, align 4
  switch i32 %0, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %arity, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.216, i32 0, i32 0), i32 %2)
  call void @misc_Error()
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.1
  %3 = load i32, i32* %Arity.addr, align 4
  store i32 %3, i32* %arity, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %4 = load i8*, i8** %Name.addr, align 8
  %call2 = call i64 @strlen(i8* %4) #7
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %length, align 4
  %5 = load i32, i32* %length, align 4
  %cmp = icmp uge i32 %5, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %6 = load i8*, i8** %Name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 63
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %7 = load i8*, i8** %Name.addr, align 8
  %call4 = call i32 @symbol_Lookup(i8* %7)
  store i32 %call4, i32* %symbol, align 4
  %8 = load i32, i32* %symbol, align 4
  %cmp5 = icmp ne i32 %8, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %9 = load i32, i32* %SymbolType.addr, align 4
  %cmp8 = icmp eq i32 %9, 284
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.7
  %10 = load i32, i32* %symbol, align 4
  %call10 = call i32 @symbol_IsFunction(i32 %10)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.25

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.7
  %11 = load i32, i32* %SymbolType.addr, align 4
  %cmp11 = icmp eq i32 %11, 298
  br i1 %cmp11, label %land.lhs.true.13, label %lor.lhs.false.16

land.lhs.true.13:                                 ; preds = %lor.lhs.false
  %12 = load i32, i32* %symbol, align 4
  %call14 = call i32 @symbol_IsPredicate(i32 %12)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %lor.lhs.false.16, label %if.then.25

lor.lhs.false.16:                                 ; preds = %land.lhs.true.13, %lor.lhs.false
  %13 = load i32, i32* %SymbolType.addr, align 4
  %cmp17 = icmp eq i32 %13, 294
  br i1 %cmp17, label %land.lhs.true.22, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %14 = load i32, i32* %SymbolType.addr, align 4
  %cmp20 = icmp eq i32 %14, 300
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.33

land.lhs.true.22:                                 ; preds = %lor.lhs.false.19, %lor.lhs.false.16
  %15 = load i32, i32* %symbol, align 4
  %call23 = call i32 @symbol_IsJunctor(i32 %15)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.33, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.22, %land.lhs.true.13, %land.lhs.true
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call26 = call i32 @fflush(%struct._IO_FILE* %16)
  %17 = load i32, i32* @dfg_LINENUMBER, align 4
  %18 = load i8*, i8** %Name.addr, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.217, i32 0, i32 0), i32 %17, i8* %18)
  %19 = load i32, i32* %symbol, align 4
  %call27 = call i32 @symbol_Type(i32 %19)
  switch i32 %call27, label %sw.default.31 [
    i32 0, label %sw.bb.28
    i32 1, label %sw.bb.28
    i32 2, label %sw.bb.29
    i32 3, label %sw.bb.30
  ]

sw.bb.28:                                         ; preds = %if.then.25, %if.then.25
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.218, i32 0, i32 0))
  br label %sw.epilog.32

sw.bb.29:                                         ; preds = %if.then.25
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.219, i32 0, i32 0))
  br label %sw.epilog.32

sw.bb.30:                                         ; preds = %if.then.25
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.220, i32 0, i32 0))
  br label %sw.epilog.32

sw.default.31:                                    ; preds = %if.then.25
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.221, i32 0, i32 0))
  br label %sw.epilog.32

sw.epilog.32:                                     ; preds = %sw.default.31, %sw.bb.30, %sw.bb.29, %sw.bb.28
  call void @misc_Error()
  br label %if.end.33

if.end.33:                                        ; preds = %sw.epilog.32, %land.lhs.true.22, %lor.lhs.false.19
  %20 = load i32, i32* %Arity.addr, align 4
  %cmp34 = icmp ne i32 %20, -2
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.43

land.lhs.true.36:                                 ; preds = %if.end.33
  %21 = load i32, i32* %Arity.addr, align 4
  %22 = load i32, i32* %symbol, align 4
  %call37 = call i32 @symbol_Arity(i32 %22)
  %cmp38 = icmp ne i32 %21, %call37
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %land.lhs.true.36
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call41 = call i32 @fflush(%struct._IO_FILE* %23)
  %24 = load i32, i32* @dfg_LINENUMBER, align 4
  %25 = load i8*, i8** %Name.addr, align 8
  %26 = load i32, i32* %symbol, align 4
  %call42 = call i32 @symbol_Arity(i32 %26)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.222, i32 0, i32 0), i32 %24, i8* %25, i32 %call42)
  call void @misc_Error()
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %land.lhs.true.36, %if.end.33
  br label %if.end.55

if.else:                                          ; preds = %if.end
  %27 = load i32, i32* %SymbolType.addr, align 4
  switch i32 %27, label %sw.default.48 [
    i32 284, label %sw.bb.44
    i32 298, label %sw.bb.46
  ]

sw.bb.44:                                         ; preds = %if.else
  %28 = load i8*, i8** %Name.addr, align 8
  %29 = load i32, i32* %arity, align 4
  %30 = load i32*, i32** @dfg_PRECEDENCE, align 8
  %call45 = call i32 @symbol_CreateFunction(i8* %28, i32 %29, i32 0, i32* %30)
  store i32 %call45, i32* %symbol, align 4
  br label %sw.epilog.50

sw.bb.46:                                         ; preds = %if.else
  %31 = load i8*, i8** %Name.addr, align 8
  %32 = load i32, i32* %arity, align 4
  %33 = load i32*, i32** @dfg_PRECEDENCE, align 8
  %call47 = call i32 @symbol_CreatePredicate(i8* %31, i32 %32, i32 0, i32* %33)
  store i32 %call47, i32* %symbol, align 4
  br label %sw.epilog.50

sw.default.48:                                    ; preds = %if.else
  %34 = load i8*, i8** %Name.addr, align 8
  %35 = load i32, i32* %arity, align 4
  %36 = load i32*, i32** @dfg_PRECEDENCE, align 8
  %call49 = call i32 @symbol_CreateJunctor(i8* %34, i32 %35, i32 0, i32* %36)
  store i32 %call49, i32* %symbol, align 4
  br label %sw.epilog.50

sw.epilog.50:                                     ; preds = %sw.default.48, %sw.bb.46, %sw.bb.44
  %37 = load i32, i32* %Arity.addr, align 4
  %cmp51 = icmp eq i32 %37, -2
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %sw.epilog.50
  %38 = load i32, i32* %symbol, align 4
  call void @dfg_SymAdd(i32 %38)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %sw.epilog.50
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.43
  %39 = load i32, i32* %length, align 4
  %cmp56 = icmp uge i32 %39, 64
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.end.55
  %40 = load i8*, i8** %Name.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %40, i64 63
  store i8 32, i8* %arrayidx59, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.55
  %41 = load i8*, i8** %Name.addr, align 8
  call void @string_StringFree(i8* %41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dfg_SubSort(i8* %Name1, i8* %Name2) #0 {
entry:
  %Name1.addr = alloca i8*, align 8
  %Name2.addr = alloca i8*, align 8
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %varterm = alloca %struct.term*, align 8
  %t1 = alloca %struct.term*, align 8
  %t2 = alloca %struct.term*, align 8
  %term = alloca %struct.term*, align 8
  store i8* %Name1, i8** %Name1.addr, align 8
  store i8* %Name2, i8** %Name2.addr, align 8
  %0 = load i8*, i8** %Name1.addr, align 8
  %call = call i32 @dfg_Symbol(i8* %0, i32 1)
  store i32 %call, i32* %s1, align 4
  %1 = load i8*, i8** %Name2.addr, align 8
  %call1 = call i32 @dfg_Symbol(i8* %1, i32 1)
  store i32 %call1, i32* %s2, align 4
  %2 = load i32, i32* %s1, align 4
  %call2 = call i32 @symbol_IsPredicate(i32 %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %3)
  %4 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.230, i32 0, i32 0), i32 %4)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %s2, align 4
  %call4 = call i32 @symbol_IsPredicate(i32 %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* %6)
  %7 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.230, i32 0, i32 0), i32 %7)
  call void @misc_Error()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %call9 = call i32 @symbol_CreateStandardVariable()
  %call10 = call %struct.LIST_HELP* @list_Nil()
  %call11 = call %struct.term* @term_Create(i32 %call9, %struct.LIST_HELP* %call10)
  store %struct.term* %call11, %struct.term** %varterm, align 8
  call void @symbol_ResetStandardVarCounter()
  %8 = load i32, i32* %s1, align 4
  %9 = load %struct.term*, %struct.term** %varterm, align 8
  %10 = bitcast %struct.term* %9 to i8*
  %call12 = call %struct.LIST_HELP* @list_List(i8* %10)
  %call13 = call %struct.term* @term_Create(i32 %8, %struct.LIST_HELP* %call12)
  store %struct.term* %call13, %struct.term** %t1, align 8
  %11 = load i32, i32* %s2, align 4
  %12 = load %struct.term*, %struct.term** %varterm, align 8
  %call14 = call %struct.term* @term_Copy(%struct.term* %12)
  %13 = bitcast %struct.term* %call14 to i8*
  %call15 = call %struct.LIST_HELP* @list_List(i8* %13)
  %call16 = call %struct.term* @term_Create(i32 %11, %struct.LIST_HELP* %call15)
  store %struct.term* %call16, %struct.term** %t2, align 8
  %call17 = call i32 @fol_Implies()
  %14 = load %struct.term*, %struct.term** %t1, align 8
  %15 = bitcast %struct.term* %14 to i8*
  %16 = load %struct.term*, %struct.term** %t2, align 8
  %17 = bitcast %struct.term* %16 to i8*
  %call18 = call %struct.LIST_HELP* @list_List(i8* %17)
  %call19 = call %struct.LIST_HELP* @list_Cons(i8* %15, %struct.LIST_HELP* %call18)
  %call20 = call %struct.term* @term_Create(i32 %call17, %struct.LIST_HELP* %call19)
  store %struct.term* %call20, %struct.term** %term, align 8
  %call21 = call i32 @fol_All()
  %18 = load %struct.term*, %struct.term** %varterm, align 8
  %call22 = call %struct.term* @term_Copy(%struct.term* %18)
  %19 = bitcast %struct.term* %call22 to i8*
  %call23 = call %struct.LIST_HELP* @list_List(i8* %19)
  %20 = load %struct.term*, %struct.term** %term, align 8
  %21 = bitcast %struct.term* %20 to i8*
  %call24 = call %struct.LIST_HELP* @list_List(i8* %21)
  %call25 = call %struct.term* @fol_CreateQuantifier(i32 %call21, %struct.LIST_HELP* %call23, %struct.LIST_HELP* %call24)
  store %struct.term* %call25, %struct.term** %term, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_SORTDECLLIST, align 8
  %23 = load %struct.term*, %struct.term** %term, align 8
  %24 = bitcast %struct.term* %23 to i8*
  %call26 = call %struct.LIST_HELP* @list_PairCreate(i8* null, i8* %24)
  %25 = bitcast %struct.LIST_HELP* %call26 to i8*
  %call27 = call %struct.LIST_HELP* @list_List(i8* %25)
  %call28 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %22, %struct.LIST_HELP* %call27)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** @dfg_SORTDECLLIST, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #3 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Result, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %List1.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %List1.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %9, i32 0, i32 0
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %cdr, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %11
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_List(i8* %P) #3 {
entry:
  %P.addr = alloca i8*, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load i8*, i8** %P.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %call)
  ret %struct.LIST_HELP* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_PairCreate(i8* %P1, i8* %P2) #3 {
entry:
  %P1.addr = alloca i8*, align 8
  %P2.addr = alloca i8*, align 8
  store i8* %P1, i8** %P1.addr, align 8
  store i8* %P2, i8** %P2.addr, align 8
  %0 = load i8*, i8** %P1.addr, align 8
  %1 = load i8*, i8** %P2.addr, align 8
  %2 = bitcast i8* %1 to %struct.LIST_HELP*
  %call = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %2)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: nounwind uwtable
define internal void @dfg_VarStart() #0 {
entry:
  %call = call %struct.LIST_HELP* @list_Nil()
  %0 = bitcast %struct.LIST_HELP* %call to i8*
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_VARLIST, align 8
  %call1 = call %struct.LIST_HELP* @list_Push(i8* %0, %struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** @dfg_VARLIST, align 8
  store i32 1, i32* @dfg_VARDECL, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dfg_VarStop() #0 {
entry:
  store i32 0, i32* @dfg_VARDECL, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dfg_VarBacktrack() #0 {
entry:
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_VARLIST, align 8
  %call = call i8* @list_Top(%struct.LIST_HELP* %0)
  %1 = bitcast i8* %call to %struct.LIST_HELP*
  call void @list_DeleteWithElement(%struct.LIST_HELP* %1, void (i8*)* bitcast (void (%struct.DFG_VARENTRY*)* @dfg_VarFree to void (i8*)*))
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_VARLIST, align 8
  %call1 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** @dfg_VARLIST, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dfg_VarCheck() #0 {
entry:
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_VARLIST, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 1881)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.233, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %3)
  call void @misc_DumpCore()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @symbol_ResetStandardVarCounter()
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.term* @dfg_CreateQuantifier(i32 %Symbol, %struct.LIST_HELP* %VarTermList, %struct.term* %Term) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  %VarTermList.addr = alloca %struct.LIST_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %varlist = alloca %struct.LIST_HELP*, align 8
  %sortlist = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %helpterm = alloca %struct.term*, align 8
  %var = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store %struct.LIST_HELP* %VarTermList, %struct.LIST_HELP** %VarTermList.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %sortlist, align 8
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %varlist, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarTermList.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarTermList.addr, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %2, %struct.term** %helpterm, align 8
  %3 = load %struct.term*, %struct.term** %helpterm, align 8
  %call3 = call i32 @term_IsVariable(%struct.term* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  %5 = load %struct.term*, %struct.term** %helpterm, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %5)
  %conv = sext i32 %call5 to i64
  %6 = inttoptr i64 %conv to i8*
  %call6 = call %struct.LIST_HELP* @list_List(i8* %6)
  %call7 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %4, %struct.LIST_HELP* %call6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %varlist, align 8
  %7 = load %struct.term*, %struct.term** %helpterm, align 8
  call void @term_Delete(%struct.term* %7)
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load %struct.term*, %struct.term** %helpterm, align 8
  %call8 = call %struct.term* @term_FirstArgument(%struct.term* %8)
  %call9 = call i32 @term_TopSymbol(%struct.term* %call8)
  store i32 %call9, i32* %var, align 4
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  %10 = load i32, i32* %var, align 4
  %conv10 = sext i32 %10 to i64
  %11 = inttoptr i64 %conv10 to i8*
  %call11 = call %struct.LIST_HELP* @list_List(i8* %11)
  %call12 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %9, %struct.LIST_HELP* %call11)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %varlist, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %13 = load %struct.term*, %struct.term** %helpterm, align 8
  %14 = bitcast %struct.term* %13 to i8*
  %call13 = call %struct.LIST_HELP* @list_List(i8* %14)
  %call14 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %12, %struct.LIST_HELP* %call13)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %sortlist, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarTermList.addr, align 8
  %call15 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %VarTermList.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  %call16 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %varlist, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  store %struct.LIST_HELP* %17, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.25, %for.end
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot20 = xor i1 %tobool19, true
  br i1 %lnot20, label %for.body.21, label %for.end.27

for.body.21:                                      ; preds = %for.cond.17
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = ptrtoint i8* %call22 to i32
  %call23 = call %struct.LIST_HELP* @list_Nil()
  %call24 = call %struct.term* @term_Create(i32 %21, %struct.LIST_HELP* %call23)
  %22 = bitcast %struct.term* %call24 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %19, i8* %22)
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.21
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.17

for.end.27:                                       ; preds = %for.cond.17
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %call28 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.91, label %if.then.30

if.then.30:                                       ; preds = %for.end.27
  %call31 = call i32 @fol_All()
  %25 = load i32, i32* %Symbol.addr, align 4
  %call32 = call i32 @symbol_Equal(i32 %call31, i32 %25)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.71

if.then.34:                                       ; preds = %if.then.30
  %call35 = call i32 @fol_Or()
  %26 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call36 = call i32 @term_TopSymbol(%struct.term* %26)
  %call37 = call i32 @symbol_Equal(i32 %call35, i32 %call36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.54

if.then.39:                                       ; preds = %if.then.34
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  store %struct.LIST_HELP* %27, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.49, %if.then.39
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call41 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool42 = icmp ne i32 %call41, 0
  %lnot43 = xor i1 %tobool42, true
  br i1 %lnot43, label %for.body.44, label %for.end.51

for.body.44:                                      ; preds = %for.cond.40
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call45 = call i32 @fol_Not()
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call46 = call i8* @list_Car(%struct.LIST_HELP* %30)
  %call47 = call %struct.LIST_HELP* @list_List(i8* %call46)
  %call48 = call %struct.term* @term_Create(i32 %call45, %struct.LIST_HELP* %call47)
  %31 = bitcast %struct.term* %call48 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %29, i8* %31)
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.44
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call50 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %32)
  store %struct.LIST_HELP* %call50, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.40

for.end.51:                                       ; preds = %for.cond.40
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %34 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call52 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %34)
  %call53 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %33, %struct.LIST_HELP* %call52)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %sortlist, align 8
  %35 = load %struct.term*, %struct.term** %Term.addr, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  call void @term_RplacArgumentList(%struct.term* %35, %struct.LIST_HELP* %36)
  br label %if.end.70

if.else.54:                                       ; preds = %if.then.34
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %call55 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %37)
  %call56 = call i32 @list_Empty(%struct.LIST_HELP* %call55)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.else.62

if.then.58:                                       ; preds = %if.else.54
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %39 = load %struct.term*, %struct.term** %Term.addr, align 8
  %40 = bitcast %struct.term* %39 to i8*
  %call59 = call %struct.LIST_HELP* @list_List(i8* %40)
  call void @list_Rplacd(%struct.LIST_HELP* %38, %struct.LIST_HELP* %call59)
  %call60 = call i32 @fol_Implies()
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %call61 = call %struct.term* @term_Create(i32 %call60, %struct.LIST_HELP* %41)
  store %struct.term* %call61, %struct.term** %Term.addr, align 8
  br label %if.end.69

if.else.62:                                       ; preds = %if.else.54
  %call63 = call i32 @fol_And()
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %call64 = call %struct.term* @term_Create(i32 %call63, %struct.LIST_HELP* %42)
  store %struct.term* %call64, %struct.term** %helpterm, align 8
  %call65 = call i32 @fol_Implies()
  %43 = load %struct.term*, %struct.term** %helpterm, align 8
  %44 = bitcast %struct.term* %43 to i8*
  %45 = load %struct.term*, %struct.term** %Term.addr, align 8
  %46 = bitcast %struct.term* %45 to i8*
  %call66 = call %struct.LIST_HELP* @list_List(i8* %46)
  %call67 = call %struct.LIST_HELP* @list_Cons(i8* %44, %struct.LIST_HELP* %call66)
  %call68 = call %struct.term* @term_Create(i32 %call65, %struct.LIST_HELP* %call67)
  store %struct.term* %call68, %struct.term** %Term.addr, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.62, %if.then.58
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %for.end.51
  br label %if.end.90

if.else.71:                                       ; preds = %if.then.30
  %call72 = call i32 @fol_Exist()
  %47 = load i32, i32* %Symbol.addr, align 4
  %call73 = call i32 @symbol_Equal(i32 %call72, i32 %47)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.89

if.then.75:                                       ; preds = %if.else.71
  %call76 = call i32 @fol_And()
  %48 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call77 = call i32 @term_TopSymbol(%struct.term* %48)
  %call78 = call i32 @symbol_Equal(i32 %call76, i32 %call77)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.else.83

if.then.80:                                       ; preds = %if.then.75
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %50 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call81 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %50)
  %call82 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %49, %struct.LIST_HELP* %call81)
  store %struct.LIST_HELP* %call82, %struct.LIST_HELP** %sortlist, align 8
  %51 = load %struct.term*, %struct.term** %Term.addr, align 8
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  call void @term_RplacArgumentList(%struct.term* %51, %struct.LIST_HELP* %52)
  br label %if.end.88

if.else.83:                                       ; preds = %if.then.75
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %54 = load %struct.term*, %struct.term** %Term.addr, align 8
  %55 = bitcast %struct.term* %54 to i8*
  %call84 = call %struct.LIST_HELP* @list_List(i8* %55)
  %call85 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %53, %struct.LIST_HELP* %call84)
  store %struct.LIST_HELP* %call85, %struct.LIST_HELP** %sortlist, align 8
  %call86 = call i32 @fol_And()
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %call87 = call %struct.term* @term_Create(i32 %call86, %struct.LIST_HELP* %56)
  store %struct.term* %call87, %struct.term** %Term.addr, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.83, %if.then.80
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.else.71
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.70
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %for.end.27
  %57 = load i32, i32* %Symbol.addr, align 4
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  %59 = load %struct.term*, %struct.term** %Term.addr, align 8
  %60 = bitcast %struct.term* %59 to i8*
  %call92 = call %struct.LIST_HELP* @list_List(i8* %60)
  %call93 = call %struct.term* @fol_CreateQuantifier(i32 %57, %struct.LIST_HELP* %58, %struct.LIST_HELP* %call92)
  store %struct.term* %call93, %struct.term** %helpterm, align 8
  %61 = load %struct.term*, %struct.term** %helpterm, align 8
  ret %struct.term* %61
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_All() #3 {
entry:
  %0 = load i32, i32* @fol_ALL, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define internal void @dfg_SymbolGenerated(i32 %SortPredicate, i32 %FreelyGenerated, %struct.LIST_HELP* %GeneratedBy) #0 {
entry:
  %SortPredicate.addr = alloca i32, align 4
  %FreelyGenerated.addr = alloca i32, align 4
  %GeneratedBy.addr = alloca %struct.LIST_HELP*, align 8
  %symbol = alloca i32, align 4
  %scan = alloca %struct.LIST_HELP*, align 8
  store i32 %SortPredicate, i32* %SortPredicate.addr, align 4
  store i32 %FreelyGenerated, i32* %FreelyGenerated.addr, align 4
  store %struct.LIST_HELP* %GeneratedBy, %struct.LIST_HELP** %GeneratedBy.addr, align 8
  %0 = load i32, i32* %SortPredicate.addr, align 4
  %call = call i32 @symbol_IsPredicate(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.230, i32 0, i32 0), i32 %2)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %SortPredicate.addr, align 4
  call void @symbol_RemoveProperty(i32 %3, i32 512)
  %4 = load i32, i32* %SortPredicate.addr, align 4
  call void @symbol_RemoveProperty(i32 %4, i32 256)
  %5 = load i32, i32* %SortPredicate.addr, align 4
  %call2 = call %struct.LIST_HELP* @symbol_GeneratedBy(i32 %5)
  call void @list_Delete(%struct.LIST_HELP* %call2)
  %6 = load i32, i32* %SortPredicate.addr, align 4
  call void @symbol_AddProperty(i32 %6, i32 512)
  %7 = load i32, i32* %FreelyGenerated.addr, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %8 = load i32, i32* %SortPredicate.addr, align 4
  call void @symbol_AddProperty(i32 %8, i32 256)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %GeneratedBy.addr, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %call9 = call i32 @symbol_Lookup(i8* %call8)
  store i32 %call9, i32* %symbol, align 4
  %12 = load i32, i32* %symbol, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %for.body
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @fflush(%struct._IO_FILE* %13)
  %14 = load i32, i32* @dfg_LINENUMBER, align 4
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %15)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.231, i32 0, i32 0), i32 %14, i8* %call12)
  call void @misc_Error()
  br label %if.end.18

if.else:                                          ; preds = %for.body
  %16 = load i32, i32* %symbol, align 4
  %call13 = call i32 @symbol_IsFunction(i32 %16)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %if.else
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call16 = call i32 @fflush(%struct._IO_FILE* %17)
  %18 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.232, i32 0, i32 0), i32 %18)
  call void @misc_Error()
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %19)
  call void @string_StringFree(i8* %call19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %21 = load i32, i32* %symbol, align 4
  %conv = sext i32 %21 to i64
  %22 = inttoptr i64 %conv to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %20, i8* %22)
  %23 = load i32, i32* %symbol, align 4
  call void @symbol_AddProperty(i32 %23, i32 512)
  %24 = load i32, i32* %FreelyGenerated.addr, align 4
  %tobool20 = icmp ne i32 %24, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %25 = load i32, i32* %symbol, align 4
  call void @symbol_AddProperty(i32 %25, i32 256)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call23 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %SortPredicate.addr, align 4
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %GeneratedBy.addr, align 8
  call void @symbol_SetGeneratedBy(i32 %27, %struct.LIST_HELP* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dfg_Symbol(i8* %Name, i32 %Arity) #0 {
entry:
  %Name.addr = alloca i8*, align 8
  %Arity.addr = alloca i32, align 4
  %symbol = alloca i32, align 4
  %old = alloca i8, align 1
  %length = alloca i32, align 4
  store i8* %Name, i8** %Name.addr, align 8
  store i32 %Arity, i32* %Arity.addr, align 4
  store i8 32, i8* %old, align 1
  %0 = load i8*, i8** %Name.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  %1 = load i32, i32* %length, align 4
  %cmp = icmp uge i32 %1, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %Name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 63
  %3 = load i8, i8* %arrayidx, align 1
  store i8 %3, i8* %old, align 1
  %4 = load i8*, i8** %Name.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 63
  store i8 0, i8* %arrayidx2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %Name.addr, align 8
  %call3 = call i32 @symbol_Lookup(i8* %5)
  store i32 %call3, i32* %symbol, align 4
  %6 = load i32, i32* %length, align 4
  %cmp4 = icmp uge i32 %6, 64
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %7 = load i8, i8* %old, align 1
  %8 = load i8*, i8** %Name.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 63
  store i8 %7, i8* %arrayidx7, align 1
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %9 = load i32, i32* %symbol, align 4
  %cmp9 = icmp ne i32 %9, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.8
  %10 = load i8*, i8** %Name.addr, align 8
  call void @string_StringFree(i8* %10)
  %11 = load i32, i32* %symbol, align 4
  %12 = load i32, i32* %Arity.addr, align 4
  call void @dfg_SymCheck(i32 %11, i32 %12)
  br label %if.end.18

if.else:                                          ; preds = %if.end.8
  %13 = load i32, i32* %Arity.addr, align 4
  %cmp12 = icmp ugt i32 %13, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.else
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call15 = call i32 @fflush(%struct._IO_FILE* %14)
  %15 = load i32, i32* @dfg_LINENUMBER, align 4
  %16 = load i8*, i8** %Name.addr, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.223, i32 0, i32 0), i32 %15, i8* %16)
  call void @misc_Error()
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.else
  %17 = load i8*, i8** %Name.addr, align 8
  %call17 = call i32 @dfg_VarLookup(i8* %17)
  store i32 %call17, i32* %symbol, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.16, %if.then.11
  %18 = load i32, i32* %symbol, align 4
  ret i32 %18
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cons(i8* %Ptr, %struct.LIST_HELP* %List) #3 {
entry:
  %Ptr.addr = alloca i8*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Cell = alloca %struct.LIST_HELP*, align 8
  store i8* %Ptr, i8** %Ptr.addr, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %call = call i8* @memory_Malloc(i32 16)
  %0 = bitcast i8* %call to %struct.LIST_HELP*
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Cell, align 8
  %1 = load i8*, i8** %Ptr.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %2, i32 0, i32 1
  store i8* %1, i8** %car, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %4, i32 0, i32 0
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %cdr, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  ret %struct.LIST_HELP* %5
}

declare %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #3 {
entry:
  ret %struct.LIST_HELP* null
}

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Not() #3 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Equiv() #3 {
entry:
  %0 = load i32, i32* @fol_EQUIV, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Implied() #3 {
entry:
  %0 = load i32, i32* @fol_IMPLIED, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Implies() #3 {
entry:
  %0 = load i32, i32* @fol_IMPLIES, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_And() #3 {
entry:
  %0 = load i32, i32* @fol_AND, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Or() #3 {
entry:
  %0 = load i32, i32* @fol_OR, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Exist() #3 {
entry:
  %0 = load i32, i32* @fol_EXIST, align 4
  ret i32 %0
}

declare i8* @string_IntToString(i32) #2

declare i8* @string_StringCopy(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsVariable(i32 %S) #3 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @fflush(%struct._IO_FILE*) #2

declare void @misc_UserErrorReport(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_Error() #3 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  call void @exit(i32 1) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsPredicate(i32 %S) #3 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_IsSignature(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %S.addr, align 4
  %call1 = call i32 @symbol_Type(i32 %1)
  %cmp = icmp eq i32 %call1, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @stack_Push(i8* %Entry) #3 {
entry:
  %Entry.addr = alloca i8*, align 8
  store i8* %Entry, i8** %Entry.addr, align 8
  %0 = load i8*, i8** %Entry.addr, align 8
  %1 = load i32, i32* @stack_POINTER, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* @stack_POINTER, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  store i8* %0, i8** %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @stack_PopResult() #3 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* @stack_POINTER, align 4
  %idxprom = zext i32 %dec to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @dfg_AtomCreate(i8* %Name, %struct.LIST_HELP* %Arguments) #3 {
entry:
  %Name.addr = alloca i8*, align 8
  %Arguments.addr = alloca %struct.LIST_HELP*, align 8
  %s = alloca i32, align 4
  store i8* %Name, i8** %Name.addr, align 8
  store %struct.LIST_HELP* %Arguments, %struct.LIST_HELP** %Arguments.addr, align 8
  %0 = load i8*, i8** %Name.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arguments.addr, align 8
  %call = call i32 @list_Length(%struct.LIST_HELP* %1)
  %call1 = call i32 @dfg_Symbol(i8* %0, i32 %call)
  store i32 %call1, i32* %s, align 4
  %2 = load i32, i32* %s, align 4
  %call2 = call i32 @symbol_IsVariable(i32 %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %s, align 4
  %call3 = call i32 @symbol_IsPredicate(i32 %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %4)
  %5 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i32 %5)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load i32, i32* %s, align 4
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arguments.addr, align 8
  %call6 = call %struct.term* @term_Create(i32 %6, %struct.LIST_HELP* %7)
  ret %struct.term* %call6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_True() #3 {
entry:
  %0 = load i32, i32* @fol_TRUE, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_False() #3 {
entry:
  %0 = load i32, i32* @fol_FALSE, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Equality() #3 {
entry:
  %0 = load i32, i32* @fol_EQUALITY, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @dfg_TermCreate(i8* %Name, %struct.LIST_HELP* %Arguments) #3 {
entry:
  %Name.addr = alloca i8*, align 8
  %Arguments.addr = alloca %struct.LIST_HELP*, align 8
  %s = alloca i32, align 4
  %arity = alloca i32, align 4
  store i8* %Name, i8** %Name.addr, align 8
  store %struct.LIST_HELP* %Arguments, %struct.LIST_HELP** %Arguments.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arguments.addr, align 8
  %call = call i32 @list_Length(%struct.LIST_HELP* %0)
  store i32 %call, i32* %arity, align 4
  %1 = load i8*, i8** %Name.addr, align 8
  %2 = load i32, i32* %arity, align 4
  %call1 = call i32 @dfg_Symbol(i8* %1, i32 %2)
  store i32 %call1, i32* %s, align 4
  %3 = load i32, i32* %s, align 4
  %call2 = call i32 @symbol_IsVariable(i32 %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %s, align 4
  %call3 = call i32 @symbol_IsFunction(i32 %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %5)
  %6 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i32 %6)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* %s, align 4
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arguments.addr, align 8
  %call6 = call %struct.term* @term_Create(i32 %7, %struct.LIST_HELP* %8)
  ret %struct.term* %call6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @string_Equal(i8* %S1, i8* %S2) #3 {
entry:
  %S1.addr = alloca i8*, align 8
  %S2.addr = alloca i8*, align 8
  store i8* %S1, i8** %S1.addr, align 8
  store i8* %S2, i8** %S2.addr, align 8
  %0 = load i8*, i8** %S1.addr, align 8
  %1 = load i8*, i8** %S2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #7
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_Empty(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cmp = icmp eq %struct.LIST_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @clause_GetOriginFromString(i8*) #2

declare void @term_Delete(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @dfg_DeleteStringList(%struct.LIST_HELP* %List) #3 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %0, void (i8*)* @string_StringFree)
  ret void
}

declare i32 @string_StringToInt(i8*, i32, i32*) #2

declare i32 @symbol_Lookup(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Car(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 1
  %1 = load i8*, i8** %car, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_AddProperty(i32 %ActSymbol, i32 %Property) #3 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  %Property.addr = alloca i32, align 4
  %S = alloca %struct.signature*, align 8
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  store i32 %Property, i32* %Property.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  store %struct.signature* %call1, %struct.signature** %S, align 8
  %1 = load %struct.signature*, %struct.signature** %S, align 8
  %props = getelementptr inbounds %struct.signature, %struct.signature* %1, i32 0, i32 4
  %2 = load i32, i32* %props, align 4
  %3 = load i32, i32* %Property.addr, align 4
  %or = or i32 %2, %3
  %4 = load %struct.signature*, %struct.signature** %S, align 8
  %props2 = getelementptr inbounds %struct.signature, %struct.signature* %4, i32 0, i32 4
  store i32 %or, i32* %props2, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Aux = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Aux, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %L.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Aux, align 8
  call void @list_Free(%struct.LIST_HELP* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  ret %struct.LIST_HELP* %3
}

declare i32 @flag_Id(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_SetFlagValue(i32* %Store, i32 %FlagId, i32 %Value) #3 {
entry:
  %Store.addr = alloca i32*, align 8
  %FlagId.addr = alloca i32, align 4
  %Value.addr = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 %FlagId, i32* %FlagId.addr, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %FlagId.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %FlagId.addr, align 4
  %2 = load i32, i32* %Value.addr, align 4
  call void @flag_CheckFlagValueInRange(i32 %1, i32 %2)
  %3 = load i32, i32* %Value.addr, align 4
  %4 = load i32, i32* %FlagId.addr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load i32*, i32** %Store.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_SetIncreasedOrdering(i32* %P, i32 %S) #3 {
entry:
  %P.addr = alloca i32*, align 8
  %S.addr = alloca i32, align 4
  store i32* %P, i32** %P.addr, align 8
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32*, i32** %P.addr, align 8
  %1 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_GetIncreasedOrderingCounter()
  call void @symbol_SetOrdering(i32* %0, i32 %1, i32 %call)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_SetWeight(i32 %ActSymbol, i32 %Weight) #3 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  %Weight.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  store i32 %Weight, i32* %Weight.addr, align 4
  %0 = load i32, i32* %Weight.addr, align 4
  %1 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %1)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  %weight = getelementptr inbounds %struct.signature, %struct.signature* %call1, i32 0, i32 2
  store i32 %0, i32* %weight, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal i8* @yystpcpy(i8* %yydest, i8* %yysrc) #0 {
entry:
  %yydest.addr = alloca i8*, align 8
  %yysrc.addr = alloca i8*, align 8
  %yyd = alloca i8*, align 8
  %yys = alloca i8*, align 8
  store i8* %yydest, i8** %yydest.addr, align 8
  store i8* %yysrc, i8** %yysrc.addr, align 8
  %0 = load i8*, i8** %yydest.addr, align 8
  store i8* %0, i8** %yyd, align 8
  %1 = load i8*, i8** %yysrc.addr, align 8
  store i8* %1, i8** %yys, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %yys, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %yys, align 8
  %3 = load i8, i8* %2, align 1
  %4 = load i8*, i8** %yyd, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr1, i8** %yyd, align 8
  store i8 %3, i8* %4, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %yyd, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 -1
  ret i8* %add.ptr
}

; Function Attrs: nounwind uwtable
define void @dfg_error(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %0)
  %1 = load i32, i32* @dfg_LINENUMBER, align 4
  %2 = load i8*, i8** %s.addr, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 %1, i8* %2)
  call void @misc_Error()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yydestruct(i32 %yytype, i8* %yyvalue.coerce) #0 {
entry:
  %yyvalue = alloca %union.yystype, align 8
  %yytype.addr = alloca i32, align 4
  %coerce.dive = getelementptr %union.yystype, %union.yystype* %yyvalue, i32 0, i32 0
  store i8* %yyvalue.coerce, i8** %coerce.dive, align 8
  store i32 %yytype, i32* %yytype.addr, align 4
  %0 = load i32, i32* %yytype.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define void @dfg_Free() #0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 0), align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 0), align 8
  call void @string_StringFree(i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 1), align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 1), align 8
  call void @string_StringFree(i8* %3)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 2), align 8
  %cmp4 = icmp ne i8* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %5 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 2), align 8
  call void @string_StringFree(i8* %5)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %6 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 3), align 8
  %cmp7 = icmp ne i8* %6, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %7 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 3), align 8
  call void @string_StringFree(i8* %7)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %8 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 5), align 8
  %cmp10 = icmp ne i8* %8, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %9 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 5), align 8
  call void @string_StringFree(i8* %9)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %10 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 6), align 8
  %cmp13 = icmp ne i8* %10, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %11 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 6), align 8
  call void @string_StringFree(i8* %11)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @dfg_ProblemName() #0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 0), align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define i8* @dfg_ProblemAuthor() #0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 1), align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define i8* @dfg_ProblemVersion() #0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 2), align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define i8* @dfg_ProblemLogic() #0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 3), align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define i32 @dfg_ProblemStatus() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 4), align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i8* @dfg_ProblemStatusString() #0 {
entry:
  %result = alloca i8*, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i8** %result, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 4), align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8** %result, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8** %result, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8** %result, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 1025)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %3)
  call void @misc_DumpCore()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %4 = load i8*, i8** %result, align 8
  ret i8* %4
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @misc_ErrorReport(i8*, ...) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_DumpCore() #3 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.215, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %3)
  call void @abort() #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @dfg_ProblemDescription() #0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 5), align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define i8* @dfg_ProblemDate() #0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 6), align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define void @dfg_FPrintDescription(%struct._IO_FILE* %File) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 0), align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 0), align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* %2, %struct._IO_FILE* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), %struct._IO_FILE* %5)
  %6 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 1), align 8
  %cmp4 = icmp ne i8* %6, null
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.end
  %7 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 1), align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call6 = call i32 @fputs(i8* %7, %struct._IO_FILE* %8)
  br label %if.end.9

if.else.7:                                        ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.then.5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %10)
  %11 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 2), align 8
  %cmp11 = icmp ne i8* %11, null
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call13 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %12)
  %13 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 2), align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call14 = call i32 @fputs(i8* %13, %struct._IO_FILE* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call15 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end.9
  %16 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 3), align 8
  %cmp17 = icmp ne i8* %16, null
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.16
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call19 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), %struct._IO_FILE* %17)
  %18 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 3), align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call20 = call i32 @fputs(i8* %18, %struct._IO_FILE* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call21 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.end.16
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call23 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %21)
  %call24 = call i8* @dfg_ProblemStatusString()
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call25 = call i32 @fputs(i8* %call24, %struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call26 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %23)
  %24 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 5), align 8
  %cmp27 = icmp ne i8* %24, null
  br i1 %cmp27, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.end.22
  %25 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 5), align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call29 = call i32 @fputs(i8* %25, %struct._IO_FILE* %26)
  br label %if.end.32

if.else.30:                                       ; preds = %if.end.22
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call31 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %27)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.28
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call33 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %28)
  %29 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 6), align 8
  %cmp34 = icmp ne i8* %29, null
  br i1 %cmp34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.end.32
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call36 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %30)
  %31 = load i8*, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 6), align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call37 = call i32 @fputs(i8* %31, %struct._IO_FILE* %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call38 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %33)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %if.end.32
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call40 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %34)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @dfg_DFGParser(%struct._IO_FILE* %File, i32* %Flags, i32* %Precedence, %struct.LIST_HELP** %Axioms, %struct.LIST_HELP** %Conjectures, %struct.LIST_HELP** %SortDecl, %struct.LIST_HELP** %UserDefinedPrecedence) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Axioms.addr = alloca %struct.LIST_HELP**, align 8
  %Conjectures.addr = alloca %struct.LIST_HELP**, align 8
  %SortDecl.addr = alloca %struct.LIST_HELP**, align 8
  %UserDefinedPrecedence.addr = alloca %struct.LIST_HELP**, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %tupel = alloca %struct.LIST_HELP*, align 8
  %clauseTerm = alloca %struct.term*, align 8
  %bottom = alloca i32, align 4
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.LIST_HELP** %Axioms, %struct.LIST_HELP*** %Axioms.addr, align 8
  store %struct.LIST_HELP** %Conjectures, %struct.LIST_HELP*** %Conjectures.addr, align 8
  store %struct.LIST_HELP** %SortDecl, %struct.LIST_HELP*** %SortDecl.addr, align 8
  store %struct.LIST_HELP** %UserDefinedPrecedence, %struct.LIST_HELP*** %UserDefinedPrecedence.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %1 = load i32*, i32** %Flags.addr, align 8
  %2 = load i32*, i32** %Precedence.addr, align 8
  call void @dfg_Init(%struct._IO_FILE* %0, i32* %1, i32* %2)
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %bottom, align 4
  %call1 = call i32 @dfg_parse()
  call void @dfg_SymCleanUp()
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call3 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %tupel, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  %call4 = call i8* @list_PairSecond(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call4 to %struct.term*
  store %struct.term* %8, %struct.term** %clauseTerm, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %10 = load %struct.term*, %struct.term** %clauseTerm, align 8
  %11 = load i32*, i32** %Flags.addr, align 8
  %12 = load i32*, i32** %Precedence.addr, align 8
  %call5 = call %struct.CLAUSE_HELP* @dfg_CreateClauseFromTerm(%struct.term* %10, i32 1, i32* %11, i32* %12)
  %13 = bitcast %struct.CLAUSE_HELP* %call5 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %9, i8* %13)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  %call6 = call i8* @list_PairFirst(%struct.LIST_HELP* %14)
  %cmp = icmp ne i8* %call6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  %call7 = call i8* @list_PairFirst(%struct.LIST_HELP* %15)
  call void @string_StringFree(i8* %call7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  call void @list_PairFree(%struct.LIST_HELP* %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  %call9 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %18, i8* null)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_CONCLAUSES, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.23, %for.end
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot13 = xor i1 %tobool12, true
  br i1 %lnot13, label %for.body.14, label %for.end.25

for.body.14:                                      ; preds = %for.cond.10
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call15 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %22, %struct.LIST_HELP** %tupel, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  %call16 = call i8* @list_PairSecond(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call16 to %struct.term*
  store %struct.term* %24, %struct.term** %clauseTerm, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %26 = load %struct.term*, %struct.term** %clauseTerm, align 8
  %27 = load i32*, i32** %Flags.addr, align 8
  %28 = load i32*, i32** %Precedence.addr, align 8
  %call17 = call %struct.CLAUSE_HELP* @dfg_CreateClauseFromTerm(%struct.term* %26, i32 0, i32* %27, i32* %28)
  %29 = bitcast %struct.CLAUSE_HELP* %call17 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %25, i8* %29)
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  %call18 = call i8* @list_PairFirst(%struct.LIST_HELP* %30)
  %cmp19 = icmp ne i8* %call18, null
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %for.body.14
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  %call21 = call i8* @list_PairFirst(%struct.LIST_HELP* %31)
  call void @string_StringFree(i8* %call21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %for.body.14
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  call void @list_PairFree(%struct.LIST_HELP* %32)
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.10

for.end.25:                                       ; preds = %for.cond.10
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_CONCLAUSES, align 8
  %call26 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %34, i8* null)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** @dfg_CONCLAUSES, align 8
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_PROOFLIST, align 8
  call void @dfg_DeleteProofList(%struct.LIST_HELP* %35)
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_TERMLIST, align 8
  call void @term_DeleteTermList(%struct.LIST_HELP* %36)
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_CONCLAUSES, align 8
  %call27 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %37, %struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %scan, align 8
  %39 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Axioms.addr, align 8
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %39, align 8
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_AXIOMLIST, align 8
  %call28 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %40, %struct.LIST_HELP* %41)
  %42 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Axioms.addr, align 8
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %42, align 8
  %43 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Conjectures.addr, align 8
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %43, align 8
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_CONJECLIST, align 8
  %call29 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %44, %struct.LIST_HELP* %45)
  %46 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Conjectures.addr, align 8
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %46, align 8
  %47 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %SortDecl.addr, align 8
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %47, align 8
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_SORTDECLLIST, align 8
  %call30 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %48, %struct.LIST_HELP* %49)
  %50 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %SortDecl.addr, align 8
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %50, align 8
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_USERPRECEDENCE, align 8
  %call31 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %51)
  %52 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %UserDefinedPrecedence.addr, align 8
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %52, align 8
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_USERPRECEDENCE, align 8
  %call32 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %53, %struct.LIST_HELP* %54)
  %55 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %UserDefinedPrecedence.addr, align 8
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %55, align 8
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  ret %struct.LIST_HELP* %56
}

; Function Attrs: nounwind uwtable
define internal void @dfg_Init(%struct._IO_FILE* %Input, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Input.addr = alloca %struct._IO_FILE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct._IO_FILE* %Input, %struct._IO_FILE** %Input.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %Input.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @dfg_in, align 8
  store i32 1, i32* @dfg_LINENUMBER, align 4
  store i32 1, i32* @dfg_IGNORETEXT, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** @dfg_AXIOMLIST, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** @dfg_CONJECLIST, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** @dfg_SORTDECLLIST, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** @dfg_USERPRECEDENCE, align 8
  %call4 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  %call5 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** @dfg_CONCLAUSES, align 8
  %call6 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** @dfg_PROOFLIST, align 8
  %call7 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** @dfg_TERMLIST, align 8
  %call8 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** @dfg_SYMBOLLIST, align 8
  %call9 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** @dfg_VARLIST, align 8
  store i32 0, i32* @dfg_VARDECL, align 4
  store i32 0, i32* @dfg_IGNORE, align 4
  %1 = load i32*, i32** %Flags.addr, align 8
  store i32* %1, i32** @dfg_FLAGS, align 8
  %2 = load i32*, i32** %Precedence.addr, align 8
  store i32* %2, i32** @dfg_PRECEDENCE, align 8
  store i8* null, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 0), align 8
  store i8* null, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 1), align 8
  store i8* null, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 2), align 8
  store i8* null, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 3), align 8
  store i32 2, i32* getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 4), align 4
  store i8* null, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 5), align 8
  store i8* null, i8** getelementptr inbounds (%struct.DFG_DESCRIPTIONTYPE, %struct.DFG_DESCRIPTIONTYPE* @dfg_DESC, i32 0, i32 6), align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Bottom() #3 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define internal void @dfg_SymCleanUp() #0 {
entry:
  %actEntry = alloca %struct.DFG_SYMENTRY*, align 8
  %actSymbol = alloca i32, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_SYMBOLLIST, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_SYMBOLLIST, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.DFG_SYMENTRY*
  store %struct.DFG_SYMENTRY* %2, %struct.DFG_SYMENTRY** %actEntry, align 8
  %3 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %actEntry, align 8
  %symbol = getelementptr inbounds %struct.DFG_SYMENTRY, %struct.DFG_SYMENTRY* %3, i32 0, i32 0
  %4 = load i32, i32* %symbol, align 4
  store i32 %4, i32* %actSymbol, align 4
  %5 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %actEntry, align 8
  %arity = getelementptr inbounds %struct.DFG_SYMENTRY, %struct.DFG_SYMENTRY* %5, i32 0, i32 2
  %6 = load i32, i32* %arity, align 4
  %7 = load i32, i32* %actSymbol, align 4
  %call2 = call i32 @symbol_Arity(i32 %7)
  %cmp = icmp ne i32 %6, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load i32, i32* %actSymbol, align 4
  %9 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %actEntry, align 8
  %arity3 = getelementptr inbounds %struct.DFG_SYMENTRY, %struct.DFG_SYMENTRY* %9, i32 0, i32 2
  %10 = load i32, i32* %arity3, align 4
  call void @symbol_SetArity(i32 %8, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %11 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %actEntry, align 8
  call void @dfg_SymFree(%struct.DFG_SYMENTRY* %11)
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_SYMBOLLIST, align 8
  %call4 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** @dfg_SYMBOLLIST, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_PairSecond(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %1 = bitcast %struct.LIST_HELP* %call to i8*
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Rplaca(%struct.LIST_HELP* %L, i8* %P) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %P.addr = alloca i8*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load i8*, i8** %P.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %1, i32 0, i32 1
  store i8* %0, i8** %car, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.CLAUSE_HELP* @dfg_CreateClauseFromTerm(%struct.term* %Clause, i32 %IsAxiom, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.CLAUSE_HELP*, align 8
  %Clause.addr = alloca %struct.term*, align 8
  %IsAxiom.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %literals = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %literal = alloca %struct.term*, align 8
  %result = alloca %struct.CLAUSE_HELP*, align 8
  %atom = alloca %struct.term*, align 8
  store %struct.term* %Clause, %struct.term** %Clause.addr, align 8
  store i32 %IsAxiom, i32* %IsAxiom.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.term*, %struct.term** %Clause.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_All()
  %cmp = icmp eq i32 %call, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Clause.addr, align 8
  %call2 = call %struct.term* @term_SecondArgument(%struct.term* %1)
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %literals, align 8
  %2 = load %struct.term*, %struct.term** %Clause.addr, align 8
  %call4 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  %call5 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %call4, %struct.LIST_HELP* %call5)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %Clause.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %literals, align 8
  %4 = load %struct.term*, %struct.term** %Clause.addr, align 8
  %call7 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %4, %struct.LIST_HELP* %call7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.term*, %struct.term** %Clause.addr, align 8
  call void @term_Delete(%struct.term* %5)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call9 to %struct.term*
  store %struct.term* %9, %struct.term** %literal, align 8
  %10 = load %struct.term*, %struct.term** %literal, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %10)
  %call11 = call i32 @symbol_IsPredicate(i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else.24

if.then.13:                                       ; preds = %for.body
  %11 = load %struct.term*, %struct.term** %literal, align 8
  %call14 = call i32 @fol_IsTrue(%struct.term* %11)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.then.13
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  %call17 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %12, i8* null)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  call void @term_DeleteTermList(%struct.LIST_HELP* %13)
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %retval
  br label %return

if.else.18:                                       ; preds = %if.then.13
  %14 = load %struct.term*, %struct.term** %literal, align 8
  %call19 = call i32 @fol_IsFalse(%struct.term* %14)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.18
  %15 = load %struct.term*, %struct.term** %literal, align 8
  call void @term_Delete(%struct.term* %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %16, i8* null)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.else.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22
  br label %if.end.36

if.else.24:                                       ; preds = %for.body
  %17 = load %struct.term*, %struct.term** %literal, align 8
  %call25 = call %struct.term* @term_FirstArgument(%struct.term* %17)
  store %struct.term* %call25, %struct.term** %atom, align 8
  %18 = load %struct.term*, %struct.term** %atom, align 8
  %call26 = call i32 @fol_IsFalse(%struct.term* %18)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.else.24
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  %call29 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %19, i8* null)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  call void @term_DeleteTermList(%struct.LIST_HELP* %20)
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %retval
  br label %return

if.else.30:                                       ; preds = %if.else.24
  %21 = load %struct.term*, %struct.term** %atom, align 8
  %call31 = call i32 @fol_IsTrue(%struct.term* %21)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.else.30
  %22 = load %struct.term*, %struct.term** %literal, align 8
  call void @term_Delete(%struct.term* %22)
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %23, i8* null)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.else.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call37 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  %call38 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %25, i8* null)
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %literals, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  %27 = load i32, i32* %IsAxiom.addr, align 4
  %tobool39 = icmp ne i32 %27, 0
  %lnot40 = xor i1 %tobool39, true
  %lnot.ext = zext i1 %lnot40 to i32
  %28 = load i32*, i32** %Flags.addr, align 8
  %29 = load i32*, i32** %Precedence.addr, align 8
  %call41 = call %struct.CLAUSE_HELP* @clause_CreateFromLiterals(%struct.LIST_HELP* %26, i32 0, i32 %lnot.ext, i32 0, i32* %28, i32* %29)
  store %struct.CLAUSE_HELP* %call41, %struct.CLAUSE_HELP** %result, align 8
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  call void @list_Delete(%struct.LIST_HELP* %30)
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %result, align 8
  store %struct.CLAUSE_HELP* %31, %struct.CLAUSE_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.28, %if.then.16
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %retval
  ret %struct.CLAUSE_HELP* %32
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_PairFirst(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_PairFree(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %cdr, align 8
  ret %struct.LIST_HELP* %1
}

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #2

; Function Attrs: nounwind uwtable
define void @dfg_DeleteProofList(%struct.LIST_HELP* %Proof) #0 {
entry:
  %Proof.addr = alloca %struct.LIST_HELP*, align 8
  %tupel = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Proof, %struct.LIST_HELP** %Proof.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %tupel, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  %call2 = call i8* @list_First(%struct.LIST_HELP* %3)
  call void @string_StringFree(i8* %call2)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  %call3 = call i8* @list_Second(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.term*
  call void @term_Delete(%struct.term* %5)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  %call4 = call i8* @list_Third(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call4 to %struct.LIST_HELP*
  call void @dfg_DeleteStringList(%struct.LIST_HELP* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  call void @list_Delete(%struct.LIST_HELP* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Proof.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_DeleteTermList(%struct.LIST_HELP* %List) #3 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %0, void (i8*)* bitcast (void (%struct.term*)* @term_Delete to void (i8*)*))
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @dfg_ProofParser(%struct._IO_FILE* %File, i32* %Flags, i32* %Precedence) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %tupel = alloca %struct.LIST_HELP*, align 8
  %term = alloca %struct.term*, align 8
  %bottom = alloca i32, align 4
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %1 = load i32*, i32** %Flags.addr, align 8
  %2 = load i32*, i32** %Precedence.addr, align 8
  call void @dfg_Init(%struct._IO_FILE* %0, i32* %1, i32* %2)
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %bottom, align 4
  %call1 = call i32 @dfg_parse()
  call void @dfg_SymCleanUp()
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_CONCLAUSES, align 8
  %call2 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %3, %struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** @dfg_CONCLAUSES, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call5 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %tupel, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  %call6 = call i8* @list_PairSecond(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call6 to %struct.term*
  store %struct.term* %10, %struct.term** %term, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  %call7 = call i8* @list_PairFirst(%struct.LIST_HELP* %11)
  %cmp = icmp eq i8* %call7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %12 = load %struct.term*, %struct.term** %term, align 8
  call void @term_Delete(%struct.term* %12)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  call void @list_PairFree(%struct.LIST_HELP* %13)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %14, i8* null)
  br label %if.end

if.else:                                          ; preds = %for.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tupel, align 8
  %16 = load %struct.term*, %struct.term** %term, align 8
  %17 = bitcast %struct.term* %16 to i8*
  %call8 = call %struct.LIST_HELP* @list_Nil()
  %18 = bitcast %struct.LIST_HELP* %call8 to i8*
  %call9 = call %struct.LIST_HELP* @list_List(i8* inttoptr (i64 16 to i8*))
  %call10 = call %struct.LIST_HELP* @list_Cons(i8* null, %struct.LIST_HELP* %call9)
  %call11 = call %struct.LIST_HELP* @list_Cons(i8* %18, %struct.LIST_HELP* %call10)
  %call12 = call %struct.LIST_HELP* @list_Cons(i8* %17, %struct.LIST_HELP* %call11)
  call void @list_Rplacd(%struct.LIST_HELP* %15, %struct.LIST_HELP* %call12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  %call14 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %20, i8* null)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_AXIOMLIST, align 8
  call void @dfg_DeleteFormulaPairList(%struct.LIST_HELP* %21)
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_CONJECLIST, align 8
  call void @dfg_DeleteFormulaPairList(%struct.LIST_HELP* %22)
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_SORTDECLLIST, align 8
  call void @dfg_DeleteFormulaPairList(%struct.LIST_HELP* %23)
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_TERMLIST, align 8
  call void @term_DeleteTermList(%struct.LIST_HELP* %24)
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_PROOFLIST, align 8
  %call15 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** @dfg_PROOFLIST, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_PROOFLIST, align 8
  %call16 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %26, %struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  ret %struct.LIST_HELP* %28
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Rplacd(%struct.LIST_HELP* %L1, %struct.LIST_HELP* %L2) #3 {
entry:
  %L1.addr = alloca %struct.LIST_HELP*, align 8
  %L2.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L1, %struct.LIST_HELP** %L1.addr, align 8
  store %struct.LIST_HELP* %L2, %struct.LIST_HELP** %L2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L2.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L1.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %1, i32 0, i32 0
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %cdr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @dfg_DeleteFormulaPairList(%struct.LIST_HELP* %FormulaPairs) #0 {
entry:
  %FormulaPairs.addr = alloca %struct.LIST_HELP*, align 8
  %pair = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %FormulaPairs, %struct.LIST_HELP** %FormulaPairs.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FormulaPairs.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FormulaPairs.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %pair, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call2 = call i8* @list_PairSecond(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call2 to %struct.term*
  call void @term_Delete(%struct.term* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call3 = call i8* @list_PairFirst(%struct.LIST_HELP* %5)
  %cmp = icmp ne i8* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call4 = call i8* @list_PairFirst(%struct.LIST_HELP* %6)
  call void @string_StringFree(i8* %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  call void @list_PairFree(%struct.LIST_HELP* %7)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FormulaPairs.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %FormulaPairs.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @dfg_TermParser(%struct._IO_FILE* %File, i32* %Flags, i32* %Precedence) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %bottom = alloca i32, align 4
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %1 = load i32*, i32** %Flags.addr, align 8
  %2 = load i32*, i32** %Precedence.addr, align 8
  call void @dfg_Init(%struct._IO_FILE* %0, i32* %1, i32* %2)
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %bottom, align 4
  %call1 = call i32 @dfg_parse()
  call void @dfg_SymCleanUp()
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_AXCLAUSES, align 8
  call void @dfg_DeleteFormulaPairList(%struct.LIST_HELP* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_CONCLAUSES, align 8
  call void @dfg_DeleteFormulaPairList(%struct.LIST_HELP* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_AXIOMLIST, align 8
  call void @dfg_DeleteFormulaPairList(%struct.LIST_HELP* %5)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_CONJECLIST, align 8
  call void @dfg_DeleteFormulaPairList(%struct.LIST_HELP* %6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_PROOFLIST, align 8
  call void @dfg_DeleteProofList(%struct.LIST_HELP* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_SORTDECLLIST, align 8
  call void @dfg_DeleteFormulaPairList(%struct.LIST_HELP* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_TERMLIST, align 8
  ret %struct.LIST_HELP* %9
}

; Function Attrs: nounwind uwtable
define void @dfg_StripLabelsFromList(%struct.LIST_HELP* %FormulaPairs) #0 {
entry:
  %FormulaPairs.addr = alloca %struct.LIST_HELP*, align 8
  %pair = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %FormulaPairs, %struct.LIST_HELP** %FormulaPairs.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FormulaPairs.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %pair, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call2 = call i8* @list_PairSecond(%struct.LIST_HELP* %5)
  call void @list_Rplaca(%struct.LIST_HELP* %4, i8* %call2)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call3 = call i8* @list_PairFirst(%struct.LIST_HELP* %6)
  %cmp = icmp ne i8* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call4 = call i8* @list_PairFirst(%struct.LIST_HELP* %7)
  call void @string_StringFree(i8* %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  call void @list_PairFree(%struct.LIST_HELP* %8)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_First(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Second(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %call)
  ret i8* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Third(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call)
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %call1)
  ret i8* %call2
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Delete(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Current = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Current, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %L.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Current, align 8
  call void @list_Free(%struct.LIST_HELP* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Current, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsVariable(%struct.term* %T) #3 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsVariable(i32 %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_TopSymbol(%struct.term* %T) #3 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %symbol = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 0
  %1 = load i32, i32* %symbol, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_FirstArgument(%struct.term* %T) #3 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  %call = call i8* @list_First(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call to %struct.term*
  ret %struct.term* %2
}

declare %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Equal(i32 %A, i32 %B) #3 {
entry:
  %A.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  store i32 %A, i32* %A.addr, align 4
  store i32 %B, i32* %B.addr, align 4
  %0 = load i32, i32* %A.addr, align 4
  %1 = load i32, i32* %B.addr, align 4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @term_ArgumentList(%struct.term* %T) #3 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_RplacArgumentList(%struct.term* %T, %struct.LIST_HELP* %A) #3 {
entry:
  %T.addr = alloca %struct.term*, align 8
  %A.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  store %struct.LIST_HELP* %A, %struct.LIST_HELP** %A.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %A.addr, align 8
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %1, i32 0, i32 2
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %args, align 8
  ret void
}

declare %struct.term* @fol_CreateQuantifier(i32, %struct.LIST_HELP*, %struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_SecondArgument(%struct.term* %T) #3 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  %call = call i8* @list_Second(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call to %struct.term*
  ret %struct.term* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_IsTrue(%struct.term* %S) #3 {
entry:
  %S.addr = alloca %struct.term*, align 8
  store %struct.term* %S, %struct.term** %S.addr, align 8
  %0 = load i32, i32* @fol_TRUE, align 4
  %1 = load %struct.term*, %struct.term** %S.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %1)
  %call1 = call i32 @symbol_Equal(i32 %0, i32 %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_IsFalse(%struct.term* %S) #3 {
entry:
  %S.addr = alloca %struct.term*, align 8
  store %struct.term* %S, %struct.term** %S.addr, align 8
  %0 = load i32, i32* @fol_FALSE, align 4
  %1 = load %struct.term*, %struct.term** %S.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %1)
  %call1 = call i32 @symbol_Equal(i32 %0, i32 %call)
  ret i32 %call1
}

declare %struct.CLAUSE_HELP* @clause_CreateFromLiterals(%struct.LIST_HELP*, i32, i32, i32, i32*, i32*) #2

declare i8* @memory_Malloc(i32) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsSignature(i32 %S) #3 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp slt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Type(i32 %ActSymbol) #3 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  call void @symbol_CheckNoVariable(i32 %0)
  %1 = load i32, i32* %ActSymbol.addr, align 4
  %sub = sub nsw i32 0, %1
  %2 = load i32, i32* @symbol_TYPEMASK, align 4
  %and = and i32 %sub, %2
  ret i32 %and
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckNoVariable(i32 %S) #3 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  ret void
}

declare i32 @list_Length(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsFunction(i32 %S) #3 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_IsSignature(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %S.addr, align 4
  %call1 = call i32 @symbol_Type(i32 %1)
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %2 = load i32, i32* %S.addr, align 4
  %call2 = call i32 @symbol_Type(i32 %2)
  %cmp3 = icmp eq i32 %call2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %3 = phi i1 [ true, %land.rhs ], [ %cmp3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %4 = phi i1 [ false, %entry ], [ %3, %lor.end ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.signature* @symbol_Signature(i32 %Index) #3 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  call void @symbol_CheckIndexInRange(i32 %0)
  %1 = load i32, i32* %Index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.signature**, %struct.signature*** @symbol_SIGNATURE, align 8
  %arrayidx = getelementptr inbounds %struct.signature*, %struct.signature** %2, i64 %idxprom
  %3 = load %struct.signature*, %struct.signature** %arrayidx, align 8
  ret %struct.signature* %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Index(i32 %ActSymbol) #3 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  call void @symbol_CheckNoVariable(i32 %0)
  %1 = load i32, i32* %ActSymbol.addr, align 4
  %sub = sub nsw i32 0, %1
  %2 = load i32, i32* @symbol_TYPESTATBITS, align 4
  %shr = ashr i32 %sub, %2
  ret i32 %shr
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckIndexInRange(i32 %Index) #3 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Free(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = bitcast %struct.LIST_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 16)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @memory_Free(i8* %Freepointer, i32 %Size) #3 {
entry:
  %Freepointer.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %RealBlockSize = alloca i32, align 4
  %BigBlockHeader = alloca %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
  store i8* %Freepointer, i8** %Freepointer.addr, align 8
  store i32 %Size, i32* %Size.addr, align 4
  %0 = load i32, i32* %Size.addr, align 4
  %call = call i32 @memory_LookupRealBlockSize(i32 %0)
  store i32 %call, i32* %RealBlockSize, align 4
  %1 = load i32, i32* %Size.addr, align 4
  %cmp = icmp uge i32 %1, 1024
  br i1 %cmp, label %if.then, label %if.else.25

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %Freepointer.addr, align 8
  %3 = load i32, i32* @memory_OFFSET, align 4
  %idx.ext = zext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.neg
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -16
  %4 = bitcast i8* %add.ptr1 to %struct.MEMORY_BIGBLOCKHEADERHELP*
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %4, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %5 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %5, i32 0, i32 0
  %6 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous, align 8
  %cmp2 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %6, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %7, i32 0, i32 1
  %8 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next, align 8
  %9 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous4 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %9, i32 0, i32 0
  %10 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous4, align 8
  %next5 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %10, i32 0, i32 1
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %8, %struct.MEMORY_BIGBLOCKHEADERHELP** %next5, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next6 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %11, i32 0, i32 1
  %12 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next6, align 8
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %12, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %13 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next7 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %13, i32 0, i32 1
  %14 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next7, align 8
  %cmp8 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %15 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous10 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %15, i32 0, i32 0
  %16 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous10, align 8
  %17 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next11 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %17, i32 0, i32 1
  %18 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next11, align 8
  %previous12 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %18, i32 0, i32 0
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %16, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %19 = load i32, i32* %RealBlockSize, align 4
  %20 = load i32, i32* @memory_MARKSIZE, align 4
  %add = add i32 %19, %20
  %conv = zext i32 %add to i64
  %add14 = add i64 %conv, 16
  %21 = load i64, i64* @memory_FREEDBYTES, align 8
  %add15 = add i64 %21, %add14
  store i64 %add15, i64* @memory_FREEDBYTES, align 8
  %22 = load i64, i64* @memory_MAXMEM, align 8
  %cmp16 = icmp sge i64 %22, 0
  br i1 %cmp16, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.13
  %23 = load i32, i32* %RealBlockSize, align 4
  %24 = load i32, i32* @memory_MARKSIZE, align 4
  %add19 = add i32 %23, %24
  %conv20 = zext i32 %add19 to i64
  %add21 = add i64 %conv20, 16
  %25 = load i64, i64* @memory_MAXMEM, align 8
  %add22 = add i64 %25, %add21
  store i64 %add22, i64* @memory_MAXMEM, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %if.end.13
  %26 = load i8*, i8** %Freepointer.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %26, i64 -16
  call void @free(i8* %add.ptr24) #1
  br label %if.end.33

if.else.25:                                       ; preds = %entry
  %27 = load i32, i32* %Size.addr, align 4
  %idxprom = zext i32 %27 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %28 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  %total_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %28, i32 0, i32 4
  %29 = load i32, i32* %total_size, align 4
  %conv26 = sext i32 %29 to i64
  %30 = load i64, i64* @memory_FREEDBYTES, align 8
  %add27 = add i64 %30, %conv26
  store i64 %add27, i64* @memory_FREEDBYTES, align 8
  %31 = load i32, i32* %Size.addr, align 4
  %idxprom28 = zext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom28
  %32 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx29, align 8
  %free = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %32, i32 0, i32 0
  %33 = load i8*, i8** %free, align 8
  %34 = load i8*, i8** %Freepointer.addr, align 8
  %35 = bitcast i8* %34 to i8**
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %Freepointer.addr, align 8
  %37 = load i32, i32* %Size.addr, align 4
  %idxprom30 = zext i32 %37 to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom30
  %38 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx31, align 8
  %free32 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %38, i32 0, i32 0
  store i8* %36, i8** %free32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.25, %if.end.23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_LookupRealBlockSize(i32 %BlockSize) #3 {
entry:
  %BlockSize.addr = alloca i32, align 4
  %RealSize = alloca i32, align 4
  store i32 %BlockSize, i32* %BlockSize.addr, align 4
  %0 = load i32, i32* %BlockSize.addr, align 4
  %cmp = icmp ult i32 %0, 1024
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %BlockSize.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %2 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  %aligned_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %2, i32 0, i32 5
  %3 = load i32, i32* %aligned_size, align 4
  store i32 %3, i32* %RealSize, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %BlockSize.addr, align 4
  %call = call i32 @memory_CalculateRealBlockSize(i32 %4)
  store i32 %call, i32* %RealSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %RealSize, align 4
  ret i32 %5
}

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_CalculateRealBlockSize(i32 %BlockSize) #3 {
entry:
  %BlockSize.addr = alloca i32, align 4
  %RealSize = alloca i32, align 4
  store i32 %BlockSize, i32* %BlockSize.addr, align 4
  %0 = load i32, i32* %BlockSize.addr, align 4
  store i32 %0, i32* %RealSize, align 4
  %1 = load i32, i32* %RealSize, align 4
  %rem = urem i32 %1, 1
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %RealSize, align 4
  %rem1 = urem i32 %2, 1
  %sub = sub i32 1, %rem1
  %3 = load i32, i32* %RealSize, align 4
  %add = add i32 %3, %sub
  store i32 %add, i32* %RealSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %RealSize, align 4
  %5 = load i32, i32* @memory_ALIGN, align 4
  %rem2 = urem i32 %4, %5
  %tobool3 = icmp ne i32 %rem2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* @memory_ALIGN, align 4
  %7 = load i32, i32* %RealSize, align 4
  %8 = load i32, i32* @memory_ALIGN, align 4
  %rem5 = urem i32 %7, %8
  %sub6 = sub i32 %6, %rem5
  %9 = load i32, i32* %RealSize, align 4
  %add7 = add i32 %9, %sub6
  store i32 %add7, i32* %RealSize, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %10 = load i32, i32* %RealSize, align 4
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagIdInRange(i32 %FlagId) #3 {
entry:
  %FlagId.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagValueInRange(i32 %FlagId, i32 %Value) #3 {
entry:
  %FlagId.addr = alloca i32, align 4
  %Value.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %FlagId.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Value.addr, align 4
  %2 = load i32, i32* %FlagId.addr, align 4
  %call = call i32 @flag_Minimum(i32 %2)
  %cmp = icmp sle i32 %1, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %3)
  %4 = load i32, i32* %Value.addr, align 4
  %5 = load i32, i32* %FlagId.addr, align 4
  %call2 = call i8* @flag_Name(i32 %5)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.42, i32 0, i32 0), i32 %4, i8* %call2)
  call void @misc_Error()
  br label %if.end.8

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %Value.addr, align 4
  %7 = load i32, i32* %FlagId.addr, align 4
  %call3 = call i32 @flag_Maximum(i32 %7)
  %cmp4 = icmp sge i32 %6, %call3
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %8)
  %9 = load i32, i32* %Value.addr, align 4
  %10 = load i32, i32* %FlagId.addr, align 4
  %call7 = call i8* @flag_Name(i32 %10)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i32 0, i32 0), i32 %9, i8* %call7)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  ret void
}

declare i32 @flag_Minimum(i32) #2

declare i8* @flag_Name(i32) #2

declare i32 @flag_Maximum(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_SetOrdering(i32* %P, i32 %ActSymbol, i32 %Ordering) #3 {
entry:
  %P.addr = alloca i32*, align 8
  %ActSymbol.addr = alloca i32, align 4
  %Ordering.addr = alloca i32, align 4
  %Index = alloca i32, align 4
  store i32* %P, i32** %P.addr, align 8
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  store i32 %Ordering, i32* %Ordering.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  store i32 %call, i32* %Index, align 4
  %1 = load i32, i32* %Index, align 4
  call void @symbol_CheckIndexInRange(i32 %1)
  %2 = load i32, i32* %Ordering.addr, align 4
  %3 = load i32, i32* %Index, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %P.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  ret void
}

declare i32 @symbol_GetIncreasedOrderingCounter() #2

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsJunctor(i32 %S) #3 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_IsSignature(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %S.addr, align 4
  %call1 = call i32 @symbol_Type(i32 %1)
  %cmp = icmp eq i32 %call1, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Arity(i32 %ActSymbol) #3 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  %arity = getelementptr inbounds %struct.signature, %struct.signature* %call1, i32 0, i32 3
  %1 = load i32, i32* %arity, align 4
  ret i32 %1
}

declare i32 @symbol_CreateFunction(i8*, i32, i32, i32*) #2

declare i32 @symbol_CreatePredicate(i8*, i32, i32, i32*) #2

declare i32 @symbol_CreateJunctor(i8*, i32, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @dfg_SymAdd(i32 %Symbol) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  %newEntry = alloca %struct.DFG_SYMENTRY*, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %call = call %struct.DFG_SYMENTRY* @dfg_SymCreate()
  store %struct.DFG_SYMENTRY* %call, %struct.DFG_SYMENTRY** %newEntry, align 8
  %0 = load i32, i32* %Symbol.addr, align 4
  %1 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %newEntry, align 8
  %symbol = getelementptr inbounds %struct.DFG_SYMENTRY, %struct.DFG_SYMENTRY* %1, i32 0, i32 0
  store i32 %0, i32* %symbol, align 4
  %2 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %newEntry, align 8
  %valid = getelementptr inbounds %struct.DFG_SYMENTRY, %struct.DFG_SYMENTRY* %2, i32 0, i32 1
  store i32 0, i32* %valid, align 4
  %3 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %newEntry, align 8
  %arity = getelementptr inbounds %struct.DFG_SYMENTRY, %struct.DFG_SYMENTRY* %3, i32 0, i32 2
  store i32 0, i32* %arity, align 4
  %4 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %newEntry, align 8
  %5 = bitcast %struct.DFG_SYMENTRY* %4 to i8*
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_SYMBOLLIST, align 8
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %5, %struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** @dfg_SYMBOLLIST, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.DFG_SYMENTRY* @dfg_SymCreate() #3 {
entry:
  %call = call i8* @memory_Malloc(i32 12)
  %0 = bitcast i8* %call to %struct.DFG_SYMENTRY*
  ret %struct.DFG_SYMENTRY* %0
}

; Function Attrs: nounwind uwtable
define internal void @dfg_SymCheck(i32 %Symbol, i32 %Arity) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  %Arity.addr = alloca i32, align 4
  %scan = alloca %struct.LIST_HELP*, align 8
  %actEntry = alloca %struct.DFG_SYMENTRY*, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store i32 %Arity, i32* %Arity.addr, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_SYMBOLLIST, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.DFG_SYMENTRY*
  store %struct.DFG_SYMENTRY* %3, %struct.DFG_SYMENTRY** %actEntry, align 8
  %4 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %actEntry, align 8
  %symbol = getelementptr inbounds %struct.DFG_SYMENTRY, %struct.DFG_SYMENTRY* %4, i32 0, i32 0
  %5 = load i32, i32* %symbol, align 4
  %6 = load i32, i32* %Symbol.addr, align 4
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %while.body
  %7 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %actEntry, align 8
  %valid = getelementptr inbounds %struct.DFG_SYMENTRY, %struct.DFG_SYMENTRY* %7, i32 0, i32 1
  %8 = load i32, i32* %valid, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %9 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %actEntry, align 8
  %arity = getelementptr inbounds %struct.DFG_SYMENTRY, %struct.DFG_SYMENTRY* %9, i32 0, i32 2
  %10 = load i32, i32* %arity, align 4
  %11 = load i32, i32* %Arity.addr, align 4
  %cmp4 = icmp ne i32 %10, %11
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %12)
  %13 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.224, i32 0, i32 0), i32 %13)
  %14 = load i32, i32* %Arity.addr, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.225, i32 0, i32 0), i32 %14)
  %15 = load i32, i32* %Symbol.addr, align 4
  %call7 = call i8* @symbol_Name(i32 %15)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.226, i32 0, i32 0), i8* %call7)
  %16 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %actEntry, align 8
  %arity8 = getelementptr inbounds %struct.DFG_SYMENTRY, %struct.DFG_SYMENTRY* %16, i32 0, i32 2
  %17 = load i32, i32* %arity8, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.227, i32 0, i32 0), i32 %17)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  br label %if.end.11

if.else:                                          ; preds = %if.then
  %18 = load i32, i32* %Arity.addr, align 4
  %19 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %actEntry, align 8
  %arity9 = getelementptr inbounds %struct.DFG_SYMENTRY, %struct.DFG_SYMENTRY* %19, i32 0, i32 2
  store i32 %18, i32* %arity9, align 4
  %20 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %actEntry, align 8
  %valid10 = getelementptr inbounds %struct.DFG_SYMENTRY, %struct.DFG_SYMENTRY* %20, i32 0, i32 1
  store i32 1, i32* %valid10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end
  br label %if.end.20

if.end.12:                                        ; preds = %while.body
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %scan, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load i32, i32* %Symbol.addr, align 4
  %call14 = call i32 @symbol_Arity(i32 %22)
  %23 = load i32, i32* %Arity.addr, align 4
  %cmp15 = icmp ne i32 %call14, %23
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %while.end
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call17 = call i32 @fflush(%struct._IO_FILE* %24)
  %25 = load i32, i32* @dfg_LINENUMBER, align 4
  %26 = load i32, i32* %Symbol.addr, align 4
  %call18 = call i8* @symbol_Name(i32 %26)
  %27 = load i32, i32* %Symbol.addr, align 4
  %call19 = call i32 @symbol_Arity(i32 %27)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.228, i32 0, i32 0), i32 %25, i8* %call18, i32 %call19)
  call void @misc_Error()
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.11, %if.then.16, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dfg_VarLookup(i8* %Name) #0 {
entry:
  %Name.addr = alloca i8*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %scan2 = alloca %struct.LIST_HELP*, align 8
  %symbol = alloca i32, align 4
  %newEntry = alloca %struct.DFG_VARENTRY*, align 8
  store i8* %Name, i8** %Name.addr, align 8
  %call = call i32 @symbol_Null()
  store i32 %call, i32* %symbol, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_VARLIST, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %scan, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %scan2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool4, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.18

while.body:                                       ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call5 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %scan2, align 8
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.15, %while.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.end.14, label %land.rhs.9

land.rhs.9:                                       ; preds = %while.cond.6
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call10 to %struct.DFG_VARENTRY*
  %call11 = call i8* @dfg_VarName(%struct.DFG_VARENTRY* %8)
  %9 = load i8*, i8** %Name.addr, align 8
  %call12 = call i32 @string_Equal(i8* %call11, i8* %9)
  %tobool13 = icmp ne i32 %call12, 0
  %lnot = xor i1 %tobool13, true
  br label %land.end.14

land.end.14:                                      ; preds = %land.rhs.9, %while.cond.6
  %10 = phi i1 [ false, %while.cond.6 ], [ %lnot, %land.rhs.9 ]
  br i1 %10, label %while.body.15, label %while.end

while.body.15:                                    ; preds = %land.end.14
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %scan2, align 8
  br label %while.cond.6

while.end:                                        ; preds = %land.end.14
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %scan, align 8
  br label %while.cond

while.end.18:                                     ; preds = %land.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else, label %if.then

if.then:                                          ; preds = %while.end.18
  %14 = load i8*, i8** %Name.addr, align 8
  call void @string_StringFree(i8* %14)
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call21 to %struct.DFG_VARENTRY*
  %call22 = call i32 @dfg_VarSymbol(%struct.DFG_VARENTRY* %16)
  store i32 %call22, i32* %symbol, align 4
  br label %if.end.33

if.else:                                          ; preds = %while.end.18
  %17 = load i32, i32* @dfg_VARDECL, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then.24, label %if.else.31

if.then.24:                                       ; preds = %if.else
  %call25 = call %struct.DFG_VARENTRY* @dfg_VarCreate()
  store %struct.DFG_VARENTRY* %call25, %struct.DFG_VARENTRY** %newEntry, align 8
  %18 = load i8*, i8** %Name.addr, align 8
  %19 = load %struct.DFG_VARENTRY*, %struct.DFG_VARENTRY** %newEntry, align 8
  %name = getelementptr inbounds %struct.DFG_VARENTRY, %struct.DFG_VARENTRY* %19, i32 0, i32 0
  store i8* %18, i8** %name, align 8
  %call26 = call i32 @symbol_CreateStandardVariable()
  %20 = load %struct.DFG_VARENTRY*, %struct.DFG_VARENTRY** %newEntry, align 8
  %symbol27 = getelementptr inbounds %struct.DFG_VARENTRY, %struct.DFG_VARENTRY* %20, i32 0, i32 1
  store i32 %call26, i32* %symbol27, align 4
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_VARLIST, align 8
  %22 = load %struct.DFG_VARENTRY*, %struct.DFG_VARENTRY** %newEntry, align 8
  %23 = bitcast %struct.DFG_VARENTRY* %22 to i8*
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** @dfg_VARLIST, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call28 to %struct.LIST_HELP*
  %call29 = call %struct.LIST_HELP* @list_Cons(i8* %23, %struct.LIST_HELP* %25)
  %26 = bitcast %struct.LIST_HELP* %call29 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %21, i8* %26)
  %27 = load %struct.DFG_VARENTRY*, %struct.DFG_VARENTRY** %newEntry, align 8
  %call30 = call i32 @dfg_VarSymbol(%struct.DFG_VARENTRY* %27)
  store i32 %call30, i32* %symbol, align 4
  br label %if.end

if.else.31:                                       ; preds = %if.else
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call32 = call i32 @fflush(%struct._IO_FILE* %28)
  %29 = load i32, i32* @dfg_LINENUMBER, align 4
  %30 = load i8*, i8** %Name.addr, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.229, i32 0, i32 0), i32 %29, i8* %30)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.else.31, %if.then.24
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %if.then
  %31 = load i32, i32* %symbol, align 4
  ret i32 %31
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @symbol_Name(i32 %ActSymbol) #3 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  %name = getelementptr inbounds %struct.signature, %struct.signature* %call1, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Null() #3 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @dfg_VarName(%struct.DFG_VARENTRY* %Entry) #3 {
entry:
  %Entry.addr = alloca %struct.DFG_VARENTRY*, align 8
  store %struct.DFG_VARENTRY* %Entry, %struct.DFG_VARENTRY** %Entry.addr, align 8
  %0 = load %struct.DFG_VARENTRY*, %struct.DFG_VARENTRY** %Entry.addr, align 8
  %name = getelementptr inbounds %struct.DFG_VARENTRY, %struct.DFG_VARENTRY* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @dfg_VarSymbol(%struct.DFG_VARENTRY* %Entry) #3 {
entry:
  %Entry.addr = alloca %struct.DFG_VARENTRY*, align 8
  store %struct.DFG_VARENTRY* %Entry, %struct.DFG_VARENTRY** %Entry.addr, align 8
  %0 = load %struct.DFG_VARENTRY*, %struct.DFG_VARENTRY** %Entry.addr, align 8
  %symbol = getelementptr inbounds %struct.DFG_VARENTRY, %struct.DFG_VARENTRY* %0, i32 0, i32 1
  %1 = load i32, i32* %symbol, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.DFG_VARENTRY* @dfg_VarCreate() #3 {
entry:
  %call = call i8* @memory_Malloc(i32 16)
  %0 = bitcast i8* %call to %struct.DFG_VARENTRY*
  ret %struct.DFG_VARENTRY* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_CreateStandardVariable() #3 {
entry:
  %0 = load i32, i32* @symbol_STANDARDVARCOUNTER, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @symbol_STANDARDVARCOUNTER, align 4
  ret i32 %inc
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_ResetStandardVarCounter() #3 {
entry:
  %call = call i32 @symbol_GetInitialStandardVarCounter()
  store i32 %call, i32* @symbol_STANDARDVARCOUNTER, align 4
  ret void
}

declare %struct.term* @term_Copy(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_GetInitialStandardVarCounter() #3 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_RemoveProperty(i32 %ActSymbol, i32 %Property) #3 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  %Property.addr = alloca i32, align 4
  %S = alloca %struct.signature*, align 8
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  store i32 %Property, i32* %Property.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  store %struct.signature* %call1, %struct.signature** %S, align 8
  %1 = load %struct.signature*, %struct.signature** %S, align 8
  %props = getelementptr inbounds %struct.signature, %struct.signature* %1, i32 0, i32 4
  %2 = load i32, i32* %props, align 4
  %3 = load i32, i32* %Property.addr, align 4
  %and = and i32 %2, %3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.signature*, %struct.signature** %S, align 8
  %props2 = getelementptr inbounds %struct.signature, %struct.signature* %4, i32 0, i32 4
  %5 = load i32, i32* %props2, align 4
  %6 = load i32, i32* %Property.addr, align 4
  %sub = sub i32 %5, %6
  %7 = load %struct.signature*, %struct.signature** %S, align 8
  %props3 = getelementptr inbounds %struct.signature, %struct.signature* %7, i32 0, i32 4
  store i32 %sub, i32* %props3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @symbol_GeneratedBy(i32 %S) #3 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  %generatedBy = getelementptr inbounds %struct.signature, %struct.signature* %call1, i32 0, i32 6
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %generatedBy, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_SetGeneratedBy(i32 %S, %struct.LIST_HELP* %SymbolList) #3 {
entry:
  %S.addr = alloca i32, align 4
  %SymbolList.addr = alloca %struct.LIST_HELP*, align 8
  store i32 %S, i32* %S.addr, align 4
  store %struct.LIST_HELP* %SymbolList, %struct.LIST_HELP** %SymbolList.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SymbolList.addr, align 8
  %1 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_Index(i32 %1)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  %generatedBy = getelementptr inbounds %struct.signature, %struct.signature* %call1, i32 0, i32 6
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %generatedBy, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_SetArity(i32 %ActSymbol, i32 %Arity) #3 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  %Arity.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  store i32 %Arity, i32* %Arity.addr, align 4
  %0 = load i32, i32* %Arity.addr, align 4
  %1 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %1)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  %arity = getelementptr inbounds %struct.signature, %struct.signature* %call1, i32 0, i32 3
  store i32 %0, i32* %arity, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @dfg_SymFree(%struct.DFG_SYMENTRY* %Entry) #3 {
entry:
  %Entry.addr = alloca %struct.DFG_SYMENTRY*, align 8
  store %struct.DFG_SYMENTRY* %Entry, %struct.DFG_SYMENTRY** %Entry.addr, align 8
  %0 = load %struct.DFG_SYMENTRY*, %struct.DFG_SYMENTRY** %Entry.addr, align 8
  %1 = bitcast %struct.DFG_SYMENTRY* %0 to i8*
  call void @memory_Free(i8* %1, i32 12)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Push(i8* %I, %struct.LIST_HELP* %L) #3 {
entry:
  %I.addr = alloca i8*, align 8
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store i8* %I, i8** %I.addr, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load i8*, i8** %I.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %1)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Top(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @dfg_VarFree(%struct.DFG_VARENTRY* %Entry) #0 {
entry:
  %Entry.addr = alloca %struct.DFG_VARENTRY*, align 8
  store %struct.DFG_VARENTRY* %Entry, %struct.DFG_VARENTRY** %Entry.addr, align 8
  %0 = load %struct.DFG_VARENTRY*, %struct.DFG_VARENTRY** %Entry.addr, align 8
  %name = getelementptr inbounds %struct.DFG_VARENTRY, %struct.DFG_VARENTRY* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call void @string_StringFree(i8* %1)
  %2 = load %struct.DFG_VARENTRY*, %struct.DFG_VARENTRY** %Entry.addr, align 8
  %3 = bitcast %struct.DFG_VARENTRY* %2 to i8*
  call void @memory_Free(i8* %3, i32 16)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
